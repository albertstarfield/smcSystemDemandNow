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
   -- TURBO DEACTIVATION THRESHOLDS (from smc_daemon.adb line 1040)
   -- ========================================================================
   -- All four conditions must be met simultaneously to deactivate turbo.

   DEACTIVATE_TEMP_CPU_THRESHOLD : constant Float := 80.0;  -- TCMz < 80°C
   DEACTIVATE_TEMP_GPU_THRESHOLD : constant Float := 74.0;  -- GPU < 74°C
   DEACTIVATE_BATT_TEMP_THRESHOLD : constant Float := 38.0; -- Battery < 38°C
   DEACTIVATE_POWER_THRESHOLD    : constant Float := 28.0;  -- Power < 28W

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

   -- Clamp an RPM value to the valid fan speed range.
   function Clamp_RPM (Val : Float) return Float
     with Post => Clamp_RPM'Result >= 0.0 and Clamp_RPM'Result <= 101000.0;

end SMC_Thresholds;
