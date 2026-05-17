import os
import sys

# --- Self-Bootstrapping to use ml_venv if run from outside the venv ---
VENV_PYTHON = "/usr/local/smcSystemDemandNow/smc_daemon/ml_venv/bin/python3"
if sys.executable != VENV_PYTHON and os.path.exists(VENV_PYTHON):
    os.execv(VENV_PYTHON, [VENV_PYTHON] + sys.argv)

import numpy as np
import pandas as pd

CSV_PATH = "/usr/local/smcSystemDemandNow/telemetry.csv"


def generate_dummy_telemetry(days=30):
    print(
        f"Generating {days} days of dummy telemetry data with realistic noise and Battery Temps..."
    )

    # Generate timestamps (6 data points per minute * 60 * 24 * days)
    # Using a fixed start date just for sequential time generation
    dates = pd.date_range(
        start="2026-03-01 00:00:00", periods=days * 24 * 60 * 6, freq="10s"
    )
    df = pd.DataFrame(index=dates)

    # 1. Baseline "Idle" State with continuous baseline drift
    # Adding a slow sine wave + random noise to simulate natural room temp/usage drift
    time_drift = np.sin(np.linspace(0, days * 2 * np.pi, len(dates))) * 3.0
    df["TCMZ_Temp"] = np.random.normal(45.0, 2.5, size=len(dates)) + time_drift
    df["GPU_Temp"] = df["TCMZ_Temp"] - 4.0 + np.random.normal(0, 1.5, size=len(dates))
    df["Battery_Temp"] = np.random.normal(32.0, 1.5, size=len(dates)) + (
        time_drift * 0.5
    )
    df["Power"] = np.random.normal(15.0, 2.5, size=len(dates))
    df["Current_RPM"] = 3000.0

    # 2. General Random Short Noise (Browsing, opening heavy apps)
    # Random 1-2 minute spikes scattered everywhere
    random_events = np.random.choice([0, 1], size=len(dates), p=[0.995, 0.005])
    smoothed_events = (
        pd.Series(random_events).rolling(window=12, min_periods=1).max().values
    )

    df["TCMZ_Temp"] += smoothed_events * np.random.normal(15.0, 5.0, size=len(dates))
    df["Battery_Temp"] += smoothed_events * np.random.normal(3.0, 1.0, size=len(dates))
    df["Power"] += smoothed_events * np.random.normal(10.0, 3.0, size=len(dates))

    # 3. Mid-day Unpredictable Grind (The "Long Noise")
    # Randomly select 50% of the days for unpredictable hard work between 10:00 and 13:00
    unique_dates = np.unique(df.index.date)
    grind_days = np.random.choice(unique_dates, size=int(days * 0.5), replace=False)
    # FIXED: using np.isin instead of .isin() on the numpy array
    grind_mask = (
        np.isin(df.index.date, grind_days)
        & (df.index.hour >= 10)
        & (df.index.hour <= 12)
    )

    df.loc[grind_mask, "TCMZ_Temp"] = np.random.normal(84.0, 4.0, size=grind_mask.sum())
    df.loc[grind_mask, "GPU_Temp"] = df.loc[grind_mask, "TCMZ_Temp"] - 2.0
    df.loc[grind_mask, "Battery_Temp"] = np.random.normal(
        37.0, 1.0, size=grind_mask.sum()
    )
    df.loc[grind_mask, "Power"] = np.random.normal(38.0, 4.0, size=grind_mask.sum())

    # 4. Pattern A: Consistent 7-days-a-week Overdrive (01:00 - 02:59)
    night_mask = (df.index.hour == 1) | (df.index.hour == 2)
    df.loc[night_mask, "TCMZ_Temp"] = np.random.normal(97.0, 1.0, size=night_mask.sum())
    df.loc[night_mask, "GPU_Temp"] = df.loc[night_mask, "TCMZ_Temp"] - 2.0
    df.loc[night_mask, "Battery_Temp"] = np.random.normal(
        41.0, 0.5, size=night_mask.sum()
    )
    df.loc[night_mask, "Power"] = np.random.normal(55.0, 3.0, size=night_mask.sum())

    # 5. Pattern B: Occasional Heavy Load (14:00 - 15:59 on Mon, Wed, Fri, Sat)
    afternoon_mask = ((df.index.hour == 14) | (df.index.hour == 15)) & (
        df.index.dayofweek.isin([0, 2, 4, 5])
    )
    df.loc[afternoon_mask, "TCMZ_Temp"] = np.random.normal(
        89.0, 1.5, size=afternoon_mask.sum()
    )
    df.loc[afternoon_mask, "GPU_Temp"] = df.loc[
        afternoon_mask, "TCMZ_Temp"
    ] + np.random.normal(1.0, 1.0, size=afternoon_mask.sum())
    df.loc[afternoon_mask, "Battery_Temp"] = np.random.normal(
        38.0, 1.0, size=afternoon_mask.sum()
    )
    df.loc[afternoon_mask, "Power"] = np.random.normal(
        42.0, 2.0, size=afternoon_mask.sum()
    )

    # --- 6. Resolve Takeover / Overdrive States Organically ---
    # Derive flags exactly how the C code logic does it (adding battery threshold to takeover logic)
    df["Manual_Takeover"] = (
        (df["TCMZ_Temp"] >= 86.0) | (df["Power"] >= 40.0) | (df["Battery_Temp"] >= 40.0)
    ).astype(int)
    df["Overdrive"] = (df["TCMZ_Temp"] >= 95.0).astype(int)

    # Dynamically map RPM based on state
    df.loc[df["Manual_Takeover"] == 1, "Current_RPM"] = 6800.0
    df.loc[df["Overdrive"] == 1, "Current_RPM"] = 10100.0

    # 7. Calculate Gradients
    control_temp = df[["TCMZ_Temp", "GPU_Temp"]].max(axis=1)
    df["Temp_Gradient"] = control_temp.diff().fillna(0.0)
    df["RPM_Gradient"] = df["Current_RPM"].diff().fillna(0.0)
    df["Temp_Gradient"] = df["Temp_Gradient"].clip(lower=-5.0, upper=5.0)

    # 8. Format Columns
    df["Day"] = df.index.day_name()
    df["Time"] = df.index.strftime("%H:%M:%S")

    df["TCMZ_Temp"] = df["TCMZ_Temp"].round(1)
    df["GPU_Temp"] = df["GPU_Temp"].round(1)
    df["Battery_Temp"] = df["Battery_Temp"].round(1)
    df["Power"] = df["Power"].round(1)
    df["Temp_Gradient"] = df["Temp_Gradient"].round(2)
    df["RPM_Gradient"] = df["RPM_Gradient"].round(2)

    # Note the addition of Battery_Temp here to match the new C engine output exactly
    final_cols = [
        "Day",
        "Time",
        "TCMZ_Temp",
        "GPU_Temp",
        "Battery_Temp",
        "Power",
        "Manual_Takeover",
        "Overdrive",
        "Temp_Gradient",
        "RPM_Gradient",
    ]
    final_df = df[final_cols]

    os.makedirs(os.path.dirname(CSV_PATH), exist_ok=True)
    final_df.to_csv(CSV_PATH, index=False)
    print(f"Success! {len(final_df)} rows written to {CSV_PATH}")


if __name__ == "__main__":
    generate_dummy_telemetry()
