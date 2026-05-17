import os
import pickle

import coremltools as ct
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
from mpl_toolkits.mplot3d import Axes3D

# --- Configuration ---
CSV_PATH = "/usr/local/smcSystemDemandNow/telemetry.csv"
MODEL_PATH = "ThermalForecaster.mlpackage"
SCALER_PATH = "scaler.pkl"
SEQ_LENGTH = 30  # 5 minutes at 10s intervals
STEP_SIZE = 6  # Predict every 1 minute (6 * 10s) to speed up testing


def run_3d_inference_test():
    print("Loading Scaler and Data...")
    if not os.path.exists(SCALER_PATH):
        raise FileNotFoundError("scaler.pkl missing! Train the model first.")

    with open(SCALER_PATH, "rb") as f:
        scaler = pickle.load(f)

    df = pd.read_csv(CSV_PATH)

    # Feature Engineering (Must match training exactly)
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
    features_scaled = scaler.transform(features_raw)

    print("Loading CoreML Model (Targeting ANE + CPU Fallback)...")
    model = ct.models.MLModel(MODEL_PATH, compute_units=ct.ComputeUnit.CPU_AND_NE)

    # Prepare lists for 3D plotting
    plot_days = []
    plot_times = []
    plot_probs = []

    print(f"Running Inference across {len(df)} rows (Stepping by {STEP_SIZE})...")

    # Track days to stack them on the Z axis
    current_day_number = 0
    last_day_idx = df["DayIdx"].iloc[SEQ_LENGTH]

    for i in range(SEQ_LENGTH, len(df), STEP_SIZE):
        # Extract the sliding window
        window = features_scaled[i - SEQ_LENGTH : i]
        features_tensor = np.expand_dims(window, axis=0).astype(np.float32)

        # Predict
        prediction = model.predict({"sequence_input": features_tensor})
        spike_prob = list(prediction.values())[0][0][0]

        # Track Day transitions for the Z-axis (so 2 weeks = Day 1 to 14)
        current_day_idx = df["DayIdx"].iloc[i]
        if current_day_idx != last_day_idx:
            current_day_number += 1
            last_day_idx = current_day_idx

        # Time in hours for the X-axis
        time_hours = df["Minutes"].iloc[i] / 60.0

        plot_days.append(current_day_number)
        plot_times.append(time_hours)
        plot_probs.append(spike_prob)

        if i % 10000 < STEP_SIZE:
            print(f"Processed {i}/{len(df)} rows...")

    print("Inference complete. Generating 3D Plot...")

    # --- 3D Plotting Logic ---
    fig = plt.figure(figsize=(12, 8))
    ax = fig.add_subplot(111, projection="3d")

    # Convert to numpy arrays for easier masking
    plot_days = np.array(plot_days)
    plot_times = np.array(plot_times)
    plot_probs = np.array(plot_probs)

    # Plot each day as a separate line on the Z-axis (Waterfall style)
    unique_days = np.unique(plot_days)
    for d in unique_days:
        mask = plot_days == d
        ax.plot(
            plot_times[mask], plot_days[mask], plot_probs[mask], label=f"Day {d + 1}"
        )

    # Highlight the 27% threshold
    ax.plot_surface(
        np.array([[0, 24], [0, 24]]),
        np.array([[0, 0], [max(unique_days), max(unique_days)]]),
        np.array([[0.27, 0.27], [0.27, 0.27]]),
        color="red",
        alpha=0.2,
    )

    ax.set_xlabel("Time of Day (Hours)")
    ax.set_ylabel("Sequential Day (Z-Axis)")
    ax.set_zlabel("Forecast Probability (Spike = 1.0)")
    ax.set_title(
        "ANE Thermal Forecasting Inference Across 14 Days\n(Red Plane = 27% Pre-Cool Trigger)"
    )

    ax.set_xlim(0, 24)
    ax.set_xticks(np.arange(0, 25, 2))
    ax.set_zlim(0, 1.05)

    plt.tight_layout()
    plt.show()


if __name__ == "__main__":
    run_3d_inference_test()
