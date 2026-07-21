# smcSystemDemandNow

> [!WARNING]
> **This daemon is designed specifically for the T6020 APL1113 A2779 laptop running macOS with Apple Silicon.** SMC keys and IOKit interfaces are Apple-proprietary and may not work on other hardware. Use at your own risk — it's just a humble attempt to talk to your Mac's SMC, not a magic bullet.

**Created by:** Albert Starfield Wahyu Suryo Samudra

---

## What Is This?

This is a small, ordinary macOS daemon that tries its best to communicate with your Mac's System Management Controller (SMC). It reads temperature sensors, monitors power telemetry, and adjusts fan speeds — all written in **Ada/SPARK** with some help from GNATprove for static analysis.

Think of it as a well-meaning little butler who lives inside your Mac, gently nudging the thermostat and occasionally whispering to the fans. It's not perfect, but it tries.

## Features

- **Fan Control** — Reads and writes fan target speeds, modes, and feedback loops via SMC keys (`F0Tg`, `F1Tg`, `F0Md`, `F1Md`, etc.)
- **Turbo Mode** — Toggles high-performance mode by setting `aPMX` and adjusting power limits via `mTPL`
- **Power Telemetry** — Monitors SoC power draw (`PHPC`, `PMVC`, `PPSC`), battery discharge rate (`PDBR`), and package power budget (`PHPB`)
- **Thermal Monitoring** — Reads CPU/GPU temperatures and adjusts fan curves accordingly
- **ML Thermal Prediction** — Python-based CoreML model that tries to forecast thermal behavior for pre-cooling activation
- **Realtime Scheduling** — Uses macOS audio workgroup joining and realtime thread configuration for timing
- **Self-Healing** — Automatically restarts on crash via `launchd` KeepAlive

## Why Does This Exist?

We live in an era of instant gratification — slowdowns aren't allowed. This daemon exists to push your machine to run as fast as it can, then throttle down when it's applicable. No waiting, no lag, just maximum performance when you need it and sensible cooling when you don't.

## Architecture

```
smcSystemDemandNow/
├── smc_daemon/              # The Ada/SPARK daemon
│   ├── src/
│   │   ├── smc_daemon.adb   # Main entry point & event loop
│   │   ├── smc_io.ads       # SMC IOKit bindings (C import)
│   │   ├── smc_math.adb     # Thermal math & fan curve calculations
│   │   ├── smc_files.adb    # Data persistence
│   │   ├── smc_realtime.ads # Audio workgroup & realtime scheduling
│   │   ├── smc_thresholds   # Safety thresholds & limits
│   │   └── smc_helper.c     # Low-level SMC access via IOKit
│   ├── python/              # ML training & inference
│   └── start.sh             # Bootstrap script (build + run)
├── restart_service.sh       # Launchd service manager
└── com.TwilightMigratory.smcSystemDemandNow.plist
```

## Getting Started

### Prerequisites

- macOS with Apple Silicon (specifically tested on T6020 APL1113 A2779)
- Alire (Ada package manager): `brew install alire`
- GNAT compiler (via Alire toolchain)
- Xcode Command Line Tools

### Build & Run

```bash
# Clone and enter
cd /usr/local/smcSystemDemandNow

# Start the daemon (builds automatically if source changed)
sudo smc_daemon/start.sh
```

### As a LaunchD Service

```bash
# Install and start as a system daemon
sudo restart_service.sh
```

### Test Suite

```bash
# Run the full quality approval suite
cd smc_daemon
./TestSuite.sh --level=4
```

## SMC Keys Reference

| Key | Type | Purpose |
|-----|------|---------|
| `F0Tg`/`F1Tg` | ui16 | Fan target speed (RPM) |
| `F0Md`/`F1Md` | ui8 | Fan mode (0=auto, 1=forced) |
| `aPMX` | ui32 | Active Performance Mode Extension (1= turbo ON) |
| `mTPL` | si32 | Max Turbo Power Limit (0xffffffff=unlimited) |
| `PHPC` | flt | Package High Power Current (amps) |
| `PDBR` | flt | Power Device Battery Rate (watts) |

## Development

### Building

```bash
cd smc_daemon
alr build
```

### Formal Verification

```bash
alr exec -- gnatprove -P smc_daemon.gpr --level=4 --report=fail
```

### Running Tests

```bash
alr test
```

---

## License

Licensed under the [Hippocratic License 3.0](LICENSE.md) — use this software, but don't be evil with it.
