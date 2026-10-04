# Fan RPM vs. Inlet Pressure — Derivation and the 100,000 RPM Decision Cap

**Date:** 2026-10-04
**Status:** Decision record. No code change to `Clamp_RPM`'s bound resulted from this
analysis other than confirming it.
**Applies to:** `SMC_Thresholds.Clamp_RPM` (bound `100000.0`), `SMC_Math.RPM_Value`
(ceiling `10100.0`).

---

## 1. The question

Fan maximum speed is not fixed — it varies with inlet (ambient) pressure. Given one
calibration datum, what speed should the daemon assume is achievable, and is there a
physically defensible upper bound to hard-code?

**Calibration datum (operator-supplied, 2026-10-04):**

> The fan reaches **11,000 RPM at 990 hPa** inlet.

## 2. Derivation

Under the assumption that **bearing friction and windage are neglected** — i.e. all
shaft power is delivered to the air — the standard fan affinity laws apply:

```
Q   ∝  N·D³                     (flow)
Δp  ∝  ρ·N²·D²                  (pressure rise)
```

Shaft power delivered to the air:

```
P_shaft = ρ · Q · Δp
        = ρ · (φ·N·D³) · (ψ·ρ·N²·D²)
        = φ·ψ · ρ² · N³ · D⁵
```

Holding `P_shaft` constant (the motor delivers fixed power):

```
N³ ∝ 1/ρ²        →        N ∝ ρ^(-2/3)
```

With density proportional to absolute pressure at constant temperature (`ρ ∝ P_abs`):

```
        N ∝ P_abs^(-2/3)
```

Calibrated form:

```
        N(P) = 11000 · (990 / P)^(2/3)          [P in hPa, N in RPM]
```

### Corollary: the 0 hPa question has no finite answer

Because the exponent is negative, `N → ∞` as `P → 0`. The extrapolation to 0 hPa is
**mathematically divergent**, not merely large. There is no 0 hPa value to compute, and
therefore no finite bound can be *derived* from this model.

This divergence is a direct consequence of the friction-free assumption. Bearing and
windage torque do **not** scale with density; as `ρ → 0` the aerodynamic torque vanishes
while bearing torque persists, so a real fan approaches a **friction-limited asymptote**
rather than infinity. The very term excluded from the derivation is the term that would
bound the answer.

## 3. Projected speeds vs. altitude

| Altitude | Pressure | Projected RPM |
|---|---|---|
| 0 m | 1013.25 hPa | 10,831 |
| 195 m | 990 hPa | 11,000 *(datum)* |
| 988 m | 900 hPa | 11,722 |
| 1,999 m | 795 hPa | 12,732 |
| 3,012 m | 700 hPa | 13,860 |
| 4,206 m | 600 hPa | 15,360 |
| 5,574 m | 500 hPa | 17,345 |
| 7,185 m | 400 hPa | 20,127 |
| 9,164 m | 300 hPa | 24,382 |
| 15,681 m | 102 hPa | 50,717 |

Inverting, the pressure each round number would require:

| RPM | Requires | Equivalent altitude |
|---|---|---|
| 12,000 | 869 hPa | 1,278 m |
| 15,000 | 622 hPa | 3,934 m |
| 20,000 | 404 hPa | 7,118 m |
| 30,000 | 220 hPa | 11,184 m |
| **100,000** | **36 hPa** | **20,823 m** |

**Practical span is modest:** roughly **+18 % from sea level to 2,000 m**, about **+24 %
by 4,200 m**. Beyond a few kilometres the projection is not trustworthy (see §5).

## 4. Tip-speed check — is 100,000 RPM physically possible?

| Impeller | @11,000 RPM | @30,000 RPM | @100,000 RPM |
|---|---|---|---|
| 30 mm | 17.3 m/s | 47.1 m/s | 157 m/s |
| 37 mm | 21.3 m/s | 58.1 m/s | 194 m/s |
| 45 mm | 25.9 m/s | 70.7 m/s | 236 m/s |

At 100,000 RPM a 37 mm blower tip moves at ~194 m/s. There is **no altitude or operating
condition at which this fan reaches 100,000 RPM** — it requires 36 hPa (~21 km, above the
bulk of the atmosphere) and would shed blades or destroy its bearings long beforehand.

## 5. Where the model actually fails — and what it is *not*

### 5.1 Rarefaction is NOT the limiting mechanism

Rarefaction is characterised by the Knudsen number `Kn = λ/L` (mean free path over blade
characteristic length, ~1 mm):

| Altitude | Mean free path | Kn | Regime |
|---|---|---|---|
| 0 m | 73 nm | 7.3e-05 | continuum |
| 5.6 km | 149 nm | 1.5e-04 | continuum |
| 15.3 km | 735 nm | 6.8e-04 | continuum |
| **26.9 km** | **10 µm** | **1.0e-02** | **transition onset** |

Rarefaction requires `Kn ≈ 0.01`, i.e. a 10 µm mean free path — reached at **~27 km**. At
sea level `Kn` is 7e-05, five orders of magnitude inside the continuum regime. **A
laptop fan is destroyed long before rarefaction is physically relevant.**

### 5.2 Viscous (Reynolds) breakdown comes first, but much later

| Failure mode | Criterion | Pressure | Altitude |
|---|---|---|---|
| Viscous / Reynolds | `Re = 1e4` | 110 hPa | **15.3 km** |
| Rarefaction | `Kn = 0.01` | 7.4 hPa | 26.9 km |

Viscous breakdown bites **1.8× lower** than rarefaction. Since `Re ∝ ρ^⅓` given the
model's `V ∝ ρ^(-2/3)`, Reynolds number declines only gently with altitude.

> **CORRECTION (2026-10-04).** An earlier revision of this analysis claimed the model
> "starts lying" at ~500 hPa / 5,500 m. **That was incorrect** and is retracted here. At
> 500 hPa the flow is solidly continuum (`Kn = 1.5e-04`) with `Re ≈ 16,555` — entirely
> healthy. Fan affinity laws are well validated across that range.

### 5.3 The genuine uncertainties are continuous, not threshold effects

Two modelling weaknesses degrade accuracy across the *entire* pressure range rather than
switching on at an altitude:

1. **The constant-power assumption (dominant).** The derivation freezes shaft power. In
   reality, as density falls the aerodynamic torque falls with it, and a brushless motor
   trends toward constant *speed* rather than constant power. Under a constant-torque
   model the scaling would be `N ∝ ρ^(-1)`, diverging twice as fast. The true exponent
   lies between −2/3 and −1 and cannot be pinned down without the motor's speed–torque
   curve.
2. **Operating-point shift.** The derivation freezes the pressure coefficient `ψ`. But both
   the fan curve and the duct system curve scale with density (`Δp ∝ ρV²`), so their
   intersection migrates with ambient pressure. `ψ` is a function of flow coefficient and
   is therefore not constant. This is a systematic bias present at every pressure.

## 6. Decision

**`SMC_Thresholds.Clamp_RPM` upper bound = `100000.0`.** (Operator decision, 2026-10-04;
previously `101000.0`.)

**Rationale.** The function is a **corruption guard for nonsensical SMC readings**, not a
fan-speed ceiling. Because §2 shows the friction-free model diverges and cannot justify
any finite bound, and §4 shows 100,000 RPM is physically unreachable, the value is chosen
as a deliberately loose envelope that catches corrupt data while never clamping a genuine
reading. It is expected never to fire on real sensor data — which is the correct behaviour
for a sanity check.

**This bound is deliberately NOT interchangeable with `SMC_Math.RPM_Value'Last` (10100.0).**
The two coexist to prevent a class of crash:

- `Clamp_RPM` may return up to `100000.0`.
- `RPM_Value` is `Float range 0.0 .. 10100.0`.
- Feeding `Clamp_RPM`'s output into an `RPM_Value`-typed parameter raises
  `Constraint_Error`, which unwinds the entire daemon main loop to the `[FATAL ERROR]`
  handler (`smc_daemon.adb`).

Therefore: **saturate before converting.** `Compute_Log_Transition_RPM` applies a local
`Saturate` helper on all three exit paths for exactly this reason.

## 7. Open issue — `RPM_Value'Last` is below the fan's actual speed

Independent of the `Clamp_RPM` decision, §3 exposes a genuine defect:

```
RPM_Value'Last = 10100.0        (the type's ceiling)
```

but the fan's free-running speed at the calibration point is **11,000 RPM**, and the model
projects **10,831 RPM at sea level**. The ceiling therefore **cannot represent the fan's
real speed**.

This is confirmed empirically: `F0Ac` was observed reading **10,891.6 RPM** in
`/var/log/smcSystemDemandNow.log`, above `RPM_Value'Last`, which is why `Saturate` had to
be introduced on 2026-10-04.

It also means the max-fan sentinel `Target_RPM >= 10100.0` (used to select the maximum-fan
SMC value) is **below what the fan actually reaches at maximum**. It functions as a
threshold only incidentally.

**Status: NOT resolved.** Raising `RPM_Value'Last` touches every fan clamp in the project
and is left pending an operator-chosen value. A value around 15,000 RPM would cover sea
level through ~4,000 m altitude with margin; an altitude-aware sentinel is a possible
follow-up so the "at maximum" test tracks achievable speed rather than a fixed guess.

Note that density-driven RPM variation is a **disturbance to reject**, not a limit to
feedforward. Fan control is closed on temperature; if ambient pressure rises, achievable
speed rises with it and the loop reaches its thermal target sooner. No runtime model is
required.

## 8. References

- Fan affinity laws: `Q ∝ N`, `Δp ∝ N²`, `P ∝ N³` — standard turbomachinery theory
- Knudsen number criterion for rarefied flow: `Kn = λ/L`, onset at `Kn ≈ 0.01`
- ISA standard atmosphere: `h = 44,330 · (1 − (P/P₀)^0.190263)` metres
- Air constants used: `μ = 1.81e-5 Pa·s`, `R = 287.05 J/(kg·K)`, `T = 293 K`,
  collision diameter `d = 3.5e-10 m`
- Empirical confirmation: `/var/log/smcSystemDemandNow.log` (`F0Ac` max 10,891.6 RPM)