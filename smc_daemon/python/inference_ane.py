import os
import sys

# --- Self-Bootstrapping to use ml_venv if run from outside the venv ---
VENV_PYTHON = "/usr/local/smcSystemDemandNow/smc_daemon/ml_venv/bin/python3"
if sys.executable != VENV_PYTHON and os.path.exists(VENV_PYTHON):
    os.execv(VENV_PYTHON, [VENV_PYTHON] + sys.argv)

import pickle
import time

import coremltools as ct
import numpy as np
import pandas as pd

# --- Configuration ---
script_dir = os.path.dirname(os.path.abspath(__file__))
CSV_PATH = "/usr/local/smcSystemDemandNow/telemetry.csv"
MODEL_PATH = os.path.join(script_dir, "ThermalForecaster.mlpackage")
SCALER_PATH = os.path.join(script_dir, "scaler.pkl")
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

    prob_history = []
    default_threshold = 0.27

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
                
                def parse_day(val):
                    val_str = str(val).strip()
                    if val_str in days:
                        return days[val_str]
                    try:
                        dt = pd.to_datetime(val_str)
                        return (dt.dayofweek + 1) % 7
                    except Exception:
                        return 0

                df["DayIdx"] = df["Day"].apply(parse_day)

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

                # Track predicted probability in history
                prob_history.append(spike_prob)
                if len(prob_history) > 1000:
                    prob_history.pop(0)

                # Dynamically calculate threshold using the running median
                if len(prob_history) >= 10:
                    threshold = np.median(prob_history)
                else:
                    threshold = default_threshold

                # 5. Act on Prediction (Using dynamic median threshold)
                if spike_prob > threshold:
                    if not os.path.exists(FLAG_PATH):
                        print(
                            f"[{time.strftime('%H:%M:%S')}] ANE Forecast: Thermal spike imminent ({spike_prob:.0%} probability, threshold: {threshold:.0%}). Dropping Precool flag."
                        )
                        with open(FLAG_PATH, "w") as f:
                            f.write(f"PROB:{spike_prob:.2f}")
                else:
                    if os.path.exists(FLAG_PATH):
                        print(
                            f"[{time.strftime('%H:%M:%S')}] ANE Forecast: System stable ({spike_prob:.0%} probability, threshold: {threshold:.0%}). Removing Precool flag."
                        )
                        os.remove(FLAG_PATH)

        except Exception as e:
            # Catch file lock collisions or empty CSV issues silently to keep the daemon alive
            pass

        # Check every 10 seconds to align with the C engine's telemetry cadence
        time.sleep(10)


if __name__ == "__main__":
    run_inference_daemon()
