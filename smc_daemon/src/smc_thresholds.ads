package SMC_Thresholds with SPARK_Mode is

   -- ========================================================================
   -- TURBO ACTIVATION THRESHOLDS (from smc_daemon.adb lines 1044-1054)
   -- ========================================================================
   -- These are the thermal/power thresholds that trigger Turbo Mode.
   -- Extracted here as pure functions for SPARK provability.

   TURBO_TEMP_CPU_THRESHOLD  : constant Float := 93.0;  -- TCMz >= 93°C
   TURBO_TEMP_GPU_THRESHOLD  : constant Float := 86.0;  -- GPU >= 86°C
   TURBO_POWER_THRESHOLD     : constant Float := 40.0;  -- Power >= 40W

   -- =========================================================================
   -- WHY THE BATTERY TEMPERATURE IS THE DOMINANT TURBO TRIGGER
   -- =========================================================================
   -- OPERATOR DECISION 2026-10-04: keep this at 40C. Deliberate, and this
   -- threshold firing during normal work is the EXPECTED behaviour.
   --
   -- On paper 40C looks far too low for a "turbo" trigger -- it is an ordinary
   -- indoor battery temperature. It is kept precisely because this machine
   -- (Bekasi, West Java) is normally used in an ambient environment of
   -- 38-42C, where the battery effectively has NO passive heat sink: heat can
   -- only escape by conduction into the chassis and then out through the fans.
   --
   -- Consequence: at these ambient temperatures, ordinary internal dissipation
   -- alone (SoC load + charge current) is enough to push TB0T/TB1T/TB2T past
   -- 40C with nothing actually wrong. That is normal field usage for this
   -- machine, not a fault, and it is the EARLIEST available signal that it is
   -- operating in a thermally hostile environment. Acting on it early is the
   -- entire point: it buys cooling headroom before the cell reaches its
   -- IEC 62133 ceiling and stops the SoC thermally throttling mid-workload.
   --
   -- MEASURED at time of writing (EARU_data.dat, Bekasi / METAR stn EARU):
   --     "smc"."ambient_temp_k" = 313.15  ->  313.15 - 273.15 = 40.0 C ambient
   --     "ecosystem_weather"."metar_taf"."metar" =
   --        "METAR AUTO EARU 040128Z 00000KT 10SM SCT025 FEW 075 40/34"
   --        -> 40C dry-bulb / 34C dew point
   -- Ambient is therefore already sitting at the top of that 38-42C band.
   --
   -- EMPIRICAL: in /var/log/smcSystemDemandNow.log, 10 of the 11 turbo
   -- activations ever logged came from this condition; CPU temp fired once,
   -- GPU/Power/Spike never. In this climate this condition IS turbo.
   --
   -- DO NOT "clean this up" by raising it to 45C+ on the reasoning that 40C
   -- sounds hot. That would silently disable turbo for the whole hot season.
   -- CITATION: IEC 62133 maximum operating temperature 40C.
   -- CITATION: EARU_data.dat keys "smc"."ambient_temp_k" and
   --   "ecosystem_weather"."metar_taf"."metar".
   -- =========================================================================
   TURBO_BATT_TEMP_THRESHOLD : constant Float := 40.0;  -- Battery > 40°C
   TURBO_SPIKE_COUNT_MIN     : constant Natural := 3;    -- Latency spikes >= 3

   -- ========================================================================
   -- TURBO DEACTIVATION THRESHOLDS
--
-- CALLED FROM: smc_daemon.adb:1562 (Should_Deactivate_Turbo), which is
--   reached from the main loop's Deactivate_Turbo_Mode call at
--   smc_daemon.adb:1593. The previous citation "smc_daemon.adb line 1040"
--   was stale (stale-reference audit 2026-10-05) and has been corrected.
--   Line numbers refreshed again 2026-10-06 when the minimum-dwell gate was
--   added above that call.
--
-- AXIOM H1 (HYSTERESIS — deliberate and non-zero):
--   Deactivation thresholds are STRICTLY LOWER than activation thresholds.
--   Consequence: a band exists in which turbo is STILL ACTIVE but the
--   thermal demand that pins the fan at maximum has ALREADY lapsed.
--   That band is the gap through which fan deceleration is NOT smoothed;
--   see smc_daemon.adb:1375 (max-fan selection) for the full write-up and
--   smc_daemon.adb:1250 (cooldown scope) for what IS smoothed.
--
--   WHY THE BAND MUST NOT BE CLOSED BY LOWERING THE ACTIVATION THRESHOLDS:
--   Activation is a SAFETY trigger. Narrowing the band narrows safety
--   margin; widening it widens the unsmoothed deceleration step. The band
--   is the deliberate trade between those two, not an oversight.
--
-- BAND WIDTHS (activation -> deactivation):
--   Condition | Activation        | Deactivation       | Band
--   ----------+--------------------+--------------------+---------
--   CPU TCMz  | :9   93.0 C        | :102 80.0 C        | 13.0 C
--   GPU       | :10  86.0 C        | :103 74.0 C        | 12.0 C
--   Power     | :11  40.0 W        | :105 28.0 W        | 12.0 W
--   Battery   | :50  40.0 C        | :104 38.0 C        |  2.0 C
--
-- OPERATOR DECISION (2026-10-05): the 2.0 C battery band is INTENTIONAL.
--   Do NOT widen it to match the thermal bands, and do NOT gate the max-fan
--   write on Should_Deactivate_Turbo. Two candidate fixes were considered
--   (gating the max-fan hex on full deactivation; adding a downward slew
--   limiter) and both were DECLINED as behaviour changes. The known
--   consequence — a 10100 <-> 3000 RPM step at the 10 Hz loop rate when
--   Max_Battery_Temp sits in the band — is accepted, not a defect.
--   Basis: Max_Battery_Temp is routinely 38-42 C in this deployment
--   (Bekasi, West Java; ambient routinely 38-42 C), and battery temp
--   accounted for 10 of 11 logged turbo activations. Widening the band
--   would hold a narrow thermal margin against the dominant trigger.
--
-- CITATIONS:
--   [1] smc_daemon.adb:1375 -- max-fan selection and the unsmoothed leg.
--   [2] smc_daemon.adb:1250 -- cooldown transition scope and limits.
--   [3] smc_math.adb:324-336 -- Compute_Log_Transition_RPM curve.
--   [4] /var/log/smcSystemDemandNow.log -- activation tally by cause.
   -- ========================================================================
   -- All four conditions must be met simultaneously to deactivate turbo.

   DEACTIVATE_TEMP_CPU_THRESHOLD : constant Float := 80.0;  -- TCMz < 80°C
   DEACTIVATE_TEMP_GPU_THRESHOLD : constant Float := 74.0;  -- GPU < 74°C
   DEACTIVATE_BATT_TEMP_THRESHOLD : constant Float := 38.0; -- Battery < 38°C
   DEACTIVATE_POWER_THRESHOLD    : constant Float := 28.0;  -- Power < 28W

   -- =========================================================================
   -- MINIMUM TURBO DWELL -- TIME-DOMAIN GATE ON DEACTIVATION
   -- =========================================================================
   -- OPERATOR DECISION 2026-10-06: once turbo engages it must run for at
   -- least this long. Add 60 s -- deliberate.
   --
   -- AXIOM M1 (MINIMUM DWELL): Turbo Mode cannot exit before
   --   TURBO_MIN_DWELL seconds have elapsed since Set_Turbo(True). Should_
   --   Deactivate_Turbo may return True during the dwell; the exit is vetoed
   --   regardless. The dwell expires on wall-clock time alone -- no sensor
   --   reading can shorten it.
   --
   -- AXIOM M2 (SECOND GATE, NOT A REPLACEMENT): This is a TIME-domain gate
   --   sitting ON TOP OF the thermal-domain hysteresis band at :53-107. The
   --   band still exists and still has its documented widths; M1 does not
   --   narrow or widen it. Deactivation after the dwell still requires all
   --   four thermal conditions to be satisfied simultaneously.
   --
   -- THEOREM M3 (WHAT THIS ACTUALLY FIXES): the thermal band alone lets turbo
   --   flap. With Max_Battery_Temp oscillating across the 2.0 C battery band
   --   (40 C -> 38 C) at or near ambient temperature, Should_Deactivate_Turbo
   --   and Should_Activate_Turbo can both return True on successive 100 ms
   --   iterations, producing a ~1 Hz engage/disengage cycle with a full
   --   notification and pmset fork on every edge. A minimum dwell bounds the
   --   engage rate to at most one engagement per TURBO_MIN_DWELL seconds,
   --   which is what stops the flapping. Proof of the bound: activation has
   --   exactly one call site (smc_daemon.adb:519) and deactivation exactly one
   --   (smc_daemon.adb:1593); M1 vetoes the only deactivation site for
   --   TURBO_MIN_DWELL after the only activation site.
   --
   -- CITATIONS:
   --   [1] smc_daemon.adb:1561 -- the deactivation gate this constant
   --       constrains.
   --   [2] smc_thresholds.adb:87 -- Should_Deactivate_Turbo, all four
   --       conditions ANDed.
   --   [3] /var/log/smcSystemDemandNow.log -- battery temp drove 10 of 11
   --       logged activations, so the band flapping is the observed path.
   -- =========================================================================
   TURBO_MIN_DWELL : constant Float := 60.0;  -- seconds; minimum turbo runtime

   -- ========================================================================
   -- MINIMUM MAXIMUM-FAN HOLD -- TIME-DOMAIN GATE ON THE MAX-FAN WRITE
   -- ========================================================================
   --
   -- OPERATOR DECISION (2026-10-06): 60.0 s. Chosen after the measured
   --   oscillation below proved that TURBO_MIN_DWELL alone did not fix it.
   --
   -- WHY THIS EXISTS (measured, not hypothesised):
   --   The max-fan write is gated on Is_Thermal_Demand (smc_daemon.adb,
   --   the declare block that builds F0Tg_Hex), which is an OR across the
   --   four ACTIVATION thresholds. Under this machine's real workload the
   --   CPU temperature straddles its own activation threshold:
   --
   --     telemetry.csv  7:4:48  TCMz = 91.33 C   -> gate FALSE
   --     telemetry.csv  7:4:58  TCMz = 94.83 C   -> gate TRUE
   --     telemetry.csv  7:5:08  TCMz = 91.33 C   -> gate FALSE
   --     telemetry.csv  7:5:18  TCMz = 94.58 C   -> gate TRUE
   --
   --   TURBO_TEMP_CPU_THRESHOLD is 93.0, so every dip below it collapses
   --   the whole OR to False (Power was 23-34 W, also under its own 40 W
   --   activation threshold) and the fans fall from the max hex to the PID
   --   target at smc_math's MIN_MANUAL_FAN_RPM floor. That is a visible
   --   10100 <-> 4000 RPM square wave at the temperature oscillation rate.
   --
   -- AXIOM H3 (No Short Max-Fan Pulses): once the max-fan write engages, it
   --   stays engaged for at least MAX_FAN_MIN_HOLD seconds regardless of
   --   instantaneous Is_Thermal_Demand.
   --
   -- THEOREM H4 (Bounded, Not Permanent): the hold RELEASES MAX_FAN_MIN_HOLD
   --   seconds after the LAST sample that requested it. Because the release
   --   is driven by the request signal going quiet rather than by a latched
   --   flag alone, this cannot pin the fans at maximum indefinitely -- the
   --   opposite failure mode of gating the write on Should_Deactivate_Turbo,
   --   which in a 40 C ambient would hold maximum fan for as long as the CPU
   --   stayed above its 80.0 C deactivation threshold.
   --
   -- DISTINCTION FROM TURBO_MIN_DWELL: that constant is anchored to the
   --   turbo ENGAGEMENT event and gates turbo MODE EXIT. This constant is
   --   anchored to the max-fan REQUEST signal and gates the FAN WRITE. They
   --   are independent latches and can overlap without conflict.
   --
   -- CITATIONS:
   --   [1] telemetry.csv -- the four TCMz samples quoted above.
   --   [2] smc_daemon.adb -- Is_Thermal_Demand (four-way OR of activation
   --       thresholds) and the `elsif` it gates.
   --   [3] /var/log/smcSystemDemandNow.log -- fan hex write timeline showing
   --       the max hex interleaved with PID targets on a ~10 s period.
   -- ========================================================================
   MAX_FAN_MIN_HOLD : constant Float := 60.0;  -- seconds; minimum max-fan hold

   -- ========================================================================
   -- MAXIMUM-FAN RELEASE DESCENT -- DURATION OF THE NATURAL-LOG CURVE
   -- ========================================================================
   --
   -- OPERATOR DECISION (2026-10-06): 120 s, from the operator's stated
   --   "60s-120s smoothing before going into PID target" range. The longer
   --   end was chosen because the step being removed is 10100 -> ~3000 RPM,
   --   the largest discontinuity in the controller.
   --
   -- WHY A SEPARATE CONSTANT FROM Cooldown_Duration:
   --   The existing curve duration (60 s) belongs to turbo MODE EXIT, where
   --   the fan is already near PID speed by the time the curve arms
   --   (documented as THEOREM C3). This curve arms on the max-fan RELEASE
   --   edge, where the fan is still at ~10100 RPM, so the curve has real
   --   amplitude to spend and benefits from more time.
   --
   -- CITATIONS:
   --   [1] smc_daemon.adb -- the max-fan RELEASE edge that arms this curve
   --       and the Max_Fan_Release_Pending latch that selects it.
   --   [2] smc_daemon.adb -- THEOREM C3, which predicted that the release
   --       leg had no smoothing and therefore blended from ~3000 RPM.
   -- ========================================================================
   MAX_FAN_RELEASE_SMOOTH : constant Float := 120.0;  -- seconds; release descent

   -- ========================================================================
   -- THRESHOLD CHECK FUNCTIONS
   -- ========================================================================

   -- Determine if Turbo Mode should be activated based on sensor readings.
   -- Returns True if any activation threshold is crossed.
   function Should_Activate_Turbo (
      CPU_Temp       : Float;
      GPU_Temp       : Float;
      Power          : Float;
      Battery_Temp   : Float;
      Spike_Count    : Natural
   ) return Boolean
     with
       Post => (if Should_Activate_Turbo'Result then
                  (CPU_Temp >= TURBO_TEMP_CPU_THRESHOLD or
                   GPU_Temp >= TURBO_TEMP_GPU_THRESHOLD or
                   Power >= TURBO_POWER_THRESHOLD or
                   Battery_Temp > TURBO_BATT_TEMP_THRESHOLD or
                   Spike_Count >= TURBO_SPIKE_COUNT_MIN));

   -- Determine if Turbo Mode should be deactivated (all conditions must hold).
   -- Returns True only when ALL deactivation thresholds are satisfied.
   function Should_Deactivate_Turbo (
      CPU_Temp      : Float;
      GPU_Temp      : Float;
      Battery_Temp  : Float;
      Power         : Float
   ) return Boolean
     with
       Post => (if Should_Deactivate_Turbo'Result then
                  (CPU_Temp < DEACTIVATE_TEMP_CPU_THRESHOLD and
                   GPU_Temp < DEACTIVATE_TEMP_GPU_THRESHOLD and
                   Battery_Temp < DEACTIVATE_BATT_TEMP_THRESHOLD and
                   Power < DEACTIVATE_POWER_THRESHOLD));

   -- Determine if Overdrive Mode should be engaged based on system load.
   -- Load_Status = 2 means emergency load detected.
   function Should_Engage_Overdrive (Load_Status : Integer) return Boolean
     with Post => Should_Engage_Overdrive'Result = (Load_Status = 2);

   -- Clamp an arbitrary SMC fan reading into a loose sanity envelope [0, 100000].
   --
   -- BOUND = 100000.0 (operator decision 2026-10-04, previously 101000.0).
   -- This is a CORRUPTION GUARD for nonsensical SMC readings, NOT a fan-speed
   -- ceiling. It is deliberately loose and is expected never to fire on real
   -- sensor data -- which is the correct behaviour for a sanity check.
   --
   -- WHY NOT A PHYSICAL BOUND: neglecting bearing friction (as the derivation
   -- does), the affinity-law model N proportional to P^(-2/3) DIVERGES as inlet
   -- pressure approaches 0 -- there is no finite 0 hPa speed to justify a cap
   -- with. And 100,000 RPM is unreachable regardless: it needs ~36 hPa inlet
   -- (~21 km altitude) and would put a 37 mm blower tip at ~194 m/s. Bearing
   -- friction, which the model excludes, is exactly what bounds it in reality.
   --
   -- DO NOT pass this function's result to an RPM_Value-typed parameter without
   -- saturating first -- that conversion raises Constraint_Error and unwinds the
   -- daemon main loop. See Saturate in SMC_Math.Compute_Log_Transition_RPM.
   --
   -- Full derivation, altitude tables, Knudsen/Reynolds regime analysis, and the
   -- retraction of an earlier incorrect 500 hPa claim:
   --   smc_daemon/docs/FAN_RPM_PRESSURE_ANALYSIS.md
   function Clamp_RPM (Val : Float) return Float
     with Post => Clamp_RPM'Result >= 0.0 and Clamp_RPM'Result <= 100000.0;

end SMC_Thresholds;
