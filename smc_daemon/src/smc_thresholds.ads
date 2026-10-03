package SMC_Thresholds with SPARK_Mode is

   -- ========================================================================
   -- TURBO ACTIVATION THRESHOLDS (from smc_daemon.adb lines 1044-1054)
   -- ========================================================================
   -- These are the thermal/power thresholds that trigger Turbo Mode.
   -- Extracted here as pure functions for SPARK provability.

   TURBO_TEMP_CPU_THRESHOLD  : constant Float := 93.0;  -- TCMz >= 93°C
   TURBO_TEMP_GPU_THRESHOLD  : constant Float := 86.0;  -- GPU >= 86°C
   TURBO_POWER_THRESHOLD     : constant Float := 40.0;  -- Power >= 40W
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
