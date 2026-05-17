#!/bin/bash

# --- self-bootstrapping machine learning python virtual environment ---

VENV_DIR="/usr/local/smcSystemDemandNow/smc_daemon/ml_venv"

# Detect robust base python executable
if [ -f "/opt/homebrew/anaconda3/bin/python3" ]; then
    BASE_PYTHON="/opt/homebrew/anaconda3/bin/python3"
elif [ -f "/opt/homebrew/bin/python3" ]; then
    BASE_PYTHON="/opt/homebrew/bin/python3"
else
    BASE_PYTHON="python3"
fi

echo "[BOOTSTRAP] Utilizing base python: $BASE_PYTHON"

# Create venv if missing
if [ ! -d "$VENV_DIR" ]; then
    echo "[BOOTSTRAP] Python virtual environment missing. Initiating self-bootstrap at $VENV_DIR..."
    $BASE_PYTHON -m venv "$VENV_DIR"
    
    echo "[BOOTSTRAP] Upgrading pip..."
    "$VENV_DIR/bin/pip" install --upgrade pip
    
    echo "[BOOTSTRAP] Installing core machine learning libraries (coremltools, pandas, torch, scikit-learn, matplotlib)..."
    "$VENV_DIR/bin/pip" install coremltools numpy pandas torch scikit-learn matplotlib
fi

# Verify packages and auto-repair if any are missing/corrupted
if [ ! -f "$VENV_DIR/.verified" ]; then
    echo "[BOOTSTRAP] Verifying Python library integrity..."
    if ! "$VENV_DIR/bin/python3" -c "import coremltools, torch, pandas, numpy, sklearn" 2>/dev/null; then
        echo "[BOOTSTRAP] Dependency verification failed. Performing auto-repair of virtual environment..."
        "$VENV_DIR/bin/pip" install --upgrade pip
        "$VENV_DIR/bin/pip" install coremltools numpy pandas torch scikit-learn matplotlib
    fi
    touch "$VENV_DIR/.verified"
    echo "[BOOTSTRAP] All machine learning dependencies verified and cached."
else
    echo "[BOOTSTRAP] Python library integrity verified from cache."
fi

# --- execute the Ada/SPARK systems daemon ---
echo "[BOOTSTRAP] Launching Apple Silicon Ada/SPARK SMC Daemon..."

# 'exec' replaces the shell process directly, preserving PID and signal mapping for launchd
exec "/usr/local/smcSystemDemandNow/smc_daemon/bin/smc_daemon"
