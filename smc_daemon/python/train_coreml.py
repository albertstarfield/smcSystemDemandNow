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
import torch
import torch.nn as nn
import torch.optim as optim
from sklearn.preprocessing import StandardScaler
from torch.utils.data import DataLoader, TensorDataset

# --- Configuration ---
script_dir = os.path.dirname(os.path.abspath(__file__))
CSV_PATH = "/usr/local/smcSystemDemandNow/telemetry.csv"
MODEL_SAVE_PATH = os.path.join(script_dir, "ThermalForecaster.mlpackage")
SCALER_SAVE_PATH = os.path.join(script_dir, "scaler.pkl")
SEQ_LENGTH = 30  # 5 minutes of history (at 10s intervals)
FORECAST_HORIZON = 90  # Predict spikes in the next 15 minutes
BATCH_SIZE = 4096
EPOCHS = 50
TARGET_LOSS = 0.02  # Early stopping threshold


# --- Callback Class for Progress Monitoring ---
class TrainingMonitor:
    def __init__(self, total_epochs, bar_length=40):
        self.total_epochs = total_epochs
        self.bar_length = bar_length
        self.start_time = time.time()

    def on_epoch_end(self, epoch, loss, stopped_early=False):
        elapsed_time = time.time() - self.start_time
        avg_time_per_epoch = elapsed_time / (epoch + 1)
        eta = avg_time_per_epoch * (self.total_epochs - epoch - 1)

        # Calculate progress bar
        progress = float(epoch + 1) / self.total_epochs
        filled_len = int(self.bar_length * progress)
        bar = "█" * filled_len + "-" * (self.bar_length - filled_len)

        # Format times
        elapsed_str = time.strftime("%M:%S", time.gmtime(elapsed_time))
        eta_str = time.strftime("%M:%S", time.gmtime(eta))

        # Print dynamically updating line
        print(
            f"\rEpoch [{epoch + 1:03d}/{self.total_epochs:03d}] |{bar}| "
            f"Loss: {loss:.4f} | Elapsed: {elapsed_str} | ETA: {eta_str}",
            end="\r",
        )

        # Print a newline at the very end or if stopped early so it doesn't get overwritten
        if epoch + 1 == self.total_epochs or stopped_early:
            print()


# 1. DATA PREPARATION
def load_and_preprocess_data():
    import sys
    script_path = os.path.dirname(os.path.abspath(__file__))
    if script_path not in sys.path:
        sys.path.append(script_path)

    need_generation = False
    existing_df = None
    if not os.path.exists(CSV_PATH):
        need_generation = True
    else:
        try:
            existing_df = pd.read_csv(CSV_PATH)
            if len(existing_df) < 120960:  # 14 days of 10-second intervals
                need_generation = True
        except Exception:
            need_generation = True

    if need_generation:
        print("Telemetry dataset missing or too small to train. Generating 14-day baseline dummy data...")
        from dummy_data_for_testing import generate_dummy_telemetry
        generate_dummy_telemetry(days=14)
        
        if existing_df is not None and len(existing_df) > 0:
            print("Padding dataset: Merging existing real telemetry with generated dummy data...")
            try:
                dummy_df = pd.read_csv(CSV_PATH)
                combined_df = pd.concat([dummy_df, existing_df], ignore_index=True)
                combined_df.to_csv(CSV_PATH, index=False)
                print(f"Successfully preserved {len(existing_df)} existing real rows. Total padded dataset size: {len(combined_df)} rows.")
            except Exception as merge_err:
                print(f"Warning: Could not merge existing dataset: {merge_err}. Using generated dummy baseline.")

    df = pd.read_csv(CSV_PATH)

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

    df["Target"] = (
        df["Manual_Takeover"]
        .rolling(window=FORECAST_HORIZON, min_periods=1)
        .max()
        .shift(-FORECAST_HORIZON)
    )
    df = df.dropna()

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
    targets_raw = df["Target"].values

    # Scale and Save the Scaler!
    scaler = StandardScaler()
    features_scaled = scaler.fit_transform(features_raw)

    with open(SCALER_SAVE_PATH, "wb") as f:
        pickle.dump(scaler, f)
    print(f"Saved feature scaler to {SCALER_SAVE_PATH}")

    X, y = [], []
    for i in range(len(features_scaled) - SEQ_LENGTH):
        X.append(features_scaled[i : i + SEQ_LENGTH])
        y.append(targets_raw[i + SEQ_LENGTH])

    return (
        np.array(X, dtype=np.float32),
        np.array(y, dtype=np.float32),
        len(feature_cols),
    )


# 2. PYTORCH MODEL DEFINITION
class PT_ThermalForecaster(nn.Module):
    def __init__(self, input_dim, hidden_dim=32):
        super(PT_ThermalForecaster, self).__init__()
        self.lstm = nn.LSTM(
            input_dim, hidden_dim, num_layers=2, batch_first=True, dropout=0.2
        )
        self.fc1 = nn.Linear(hidden_dim, 16)
        self.relu = nn.ReLU()
        self.fc2 = nn.Linear(16, 1)
        self.sigmoid = nn.Sigmoid()

    def forward(self, x):
        lstm_out, _ = self.lstm(x)
        last_step_out = lstm_out[:, -1, :]
        out = self.relu(self.fc1(last_step_out))
        out = self.sigmoid(self.fc2(out))
        return out


# 3. TRAINING LOOP USING APPLE SILICON (MPS)
def train_model():
    print("Loading and prepping data...")
    X, y, input_dim = load_and_preprocess_data()

    device = torch.device("mps" if torch.backends.mps.is_available() else "cpu")
    print(f"Training on device: {device.type.upper()}")

    dataset = TensorDataset(torch.tensor(X), torch.tensor(y).unsqueeze(1))
    dataloader = DataLoader(dataset, batch_size=BATCH_SIZE, shuffle=True)

    model = PT_ThermalForecaster(input_dim=input_dim).to(device)
    criterion = nn.BCELoss()
    optimizer = optim.Adam(model.parameters(), lr=0.001)

    print(
        f"Starting training for up to {EPOCHS} epochs (Target Loss: <{TARGET_LOSS})...\n"
    )
    monitor = TrainingMonitor(total_epochs=EPOCHS)

    model.train()
    for epoch in range(EPOCHS):
        epoch_loss = 0.0
        for batch_X, batch_y in dataloader:
            batch_X, batch_y = batch_X.to(device), batch_y.to(device)

            optimizer.zero_grad()
            outputs = model(batch_X)
            loss = criterion(outputs, batch_y)
            loss.backward()
            optimizer.step()

            epoch_loss += loss.item()

        avg_loss = epoch_loss / len(dataloader)

        # Check Early Stopping Condition
        if avg_loss < TARGET_LOSS:
            monitor.on_epoch_end(epoch, avg_loss, stopped_early=True)
            print(
                f"\n[Early Stopping] Target loss achieved ({avg_loss:.4f} < {TARGET_LOSS}). Halting training."
            )
            break
        else:
            monitor.on_epoch_end(epoch, avg_loss)

    return model, input_dim


# 4. EXPORT TO COREML (TARGETING ANE)
def export_to_coreml(model, input_dim):
    print("\nPreparing model for CoreML Export...")

    model.to("cpu")
    model.eval()

    dummy_input = torch.rand(1, SEQ_LENGTH, input_dim)
    traced_model = torch.jit.trace(model, dummy_input)

    print("Converting to CoreML (Optimizing for Apple Neural Engine)...")
    mlmodel = ct.convert(
        traced_model,
        inputs=[ct.TensorType(shape=dummy_input.shape, name="sequence_input")],
        compute_units=ct.ComputeUnit.ALL,
    )

    mlmodel.save(MODEL_SAVE_PATH)
    print(f"Success! ANE-ready model saved to: {MODEL_SAVE_PATH}")


if __name__ == "__main__":
    trained_model, num_features = train_model()
    export_to_coreml(trained_model, num_features)
