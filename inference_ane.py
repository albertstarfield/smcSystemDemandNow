import os
import pickle
import time

import coremltools as ct
import numpy as np
import pandas as pd

# --- Configuration ---
CSV_PATH = "/usr/local/smcSystemDemandNow/telemetry.csv"
MODEL_PATH = "ThermalForecaster.mlpackage"
SCALER_PATH = "scaler.pkl"
FLAG_PATH = "/usr/local/smcSystemDemandNow/PrecoolMode"
SEQ_LENGTH = 30  # 5 minutes at 10s intervals


def tail_csv(filepath, lines=30):
    """Efficiently read the last N lines of a growing CSV."""
    with open(filepath, "rb") as f:
        f.seek(0, os.SEEK_END)
        filesize = f.tell()
        block_size = 1024
        dat = b""
        while len(dat.split(b"\n")) <= lines:
            if filesize < block_size:
                f.seek(0)
                dat = f.read()
                break
            filesize -= block_size
            f.seek(filesize)
            dat = f.read(block_size) + dat

    # Decode and wrap in a stringio for pandas
    import io

    text = dat.decode("utf-8")
    # Get the header from the top of the file separately
    with open(filepath, "r") as f:
        header = f.readline()

    # Only keep the actual last 'lines' data rows
    data_lines = text.strip().split("\n")[-lines:]
    csv_string = header + "\n".join(data_lines)
    return pd.read_csv(io.StringIO(csv_string))


def run_inference_daemon():
    print("Loading StandardScaler...")
    if not os.path.exists(SCALER_PATH):
        raise FileNotFoundError(
            "scaler.pkl missing! You must save the scaler during training."
        )
    with open(SCALER_PATH, "rb") as f:
        scaler = pickle.load(f)

    print("Loading CoreML Model (Targeting ANE + CPU Fallback)...")
    # CPU_AND_NE locks out the GPU and forces CoreML to use the ANE wherever the
    # hardware supports the op, falling back to CPU only when strictly necessary.
    model = ct.models.MLModel(MODEL_PATH, compute_units=ct.ComputeUnit.CPU_AND_NE)

    print("ANE Inference Daemon Active. Monitoring telemetry...")

    while True:
        try:
            if not os.path.exists(CSV_PATH):
                time.sleep(10)
                continue

            df = tail_csv(CSV_PATH, lines=SEQ_LENGTH)

            if len(df) == SEQ_LENGTH:
                # 1. Feature Engineering (Must match training exactly)
                df["Minutes"] = pd.to_timedelta(df["Time"]).dt.total_seconds() / 60
                df["Time_Sin"] = np.sin(2 * np.pi * df["Minutes"] / 1440)
                df["Time_Cos"] = np.cos(2 * np.pi * df["Minutes"] / 1440)

                days = {
                    "Sunday": 0,
                    "Monday": 1,
                    "Tuesday": 2,
                    "Wednesday": 3,
                    "Thursday": 4,
                    "Friday": 5,
                    "Saturday": 6,
                }
                df["DayIdx"] = df["Day"].map(days)

                feature_cols = [
                    "DayIdx",
                    "Time_Sin",
                    "Time_Cos",
                    "TCMZ_Temp",
                    "GPU_Temp",
                    "Battery_Temp",
                    "Power",
                    "Temp_Gradient",
                    "RPM_Gradient",
                ]

                features_raw = df[feature_cols].values

                # 2. Scale the features
                features_scaled = scaler.transform(features_raw)

                # 3. Reshape for CoreML [Batch=1, SeqLen=30, Features=8]
                features_tensor = np.expand_dims(features_scaled, axis=0).astype(
                    np.float32
                )

                # 4. Predict
                prediction = model.predict({"sequence_input": features_tensor})
                # CoreML returns a dict, extract the raw float probability
                spike_prob = list(prediction.values())[0][0][0]

                # 5. Act on Prediction (Threshold: 27% confidence of a spike)
                if spike_prob > 0.27:
                    if not os.path.exists(FLAG_PATH):
                        print(
                            f"[{time.strftime('%H:%M:%S')}] ANE Forecast: Thermal spike imminent ({spike_prob:.0%} probability). Dropping Precool flag."
                        )
                        with open(FLAG_PATH, "w") as f:
                            f.write(f"PROB:{spike_prob:.2f}")
                else:
                    if os.path.exists(FLAG_PATH):
                        print(
                            f"[{time.strftime('%H:%M:%S')}] ANE Forecast: System stable ({spike_prob:.0%} probability). Removing Precool flag."
                        )
                        os.remove(FLAG_PATH)

        except Exception as e:
            # Catch file lock collisions or empty CSV issues silently to keep the daemon alive
            pass

        # Check every 10 seconds to align with the C engine's telemetry cadence
        time.sleep(10)


if __name__ == "__main__":
    run_inference_daemon()
