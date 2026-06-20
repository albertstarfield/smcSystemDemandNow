package body SMC_Thresholds with SPARK_Mode is

   ----------------------------
   -- Should_Activate_Turbo --
   ----------------------------

   function Should_Activate_Turbo (
      CPU_Temp       : Float;
      GPU_Temp       : Float;
      Power          : Float;
      Battery_Temp   : Float;
      Spike_Count    : Natural
   ) return Boolean is
   begin
      return CPU_Temp >= TURBO_TEMP_CPU_THRESHOLD or
             GPU_Temp >= TURBO_TEMP_GPU_THRESHOLD or
             Power >= TURBO_POWER_THRESHOLD or
             Battery_Temp > TURBO_BATT_TEMP_THRESHOLD or
             Spike_Count >= TURBO_SPIKE_COUNT_MIN;
   end Should_Activate_Turbo;

   -----------------------------
   -- Should_Deactivate_Turbo --
   -----------------------------

   function Should_Deactivate_Turbo (
      CPU_Temp      : Float;
      GPU_Temp      : Float;
      Battery_Temp  : Float;
      Power         : Float
   ) return Boolean is
   begin
      return CPU_Temp < DEACTIVATE_TEMP_CPU_THRESHOLD and
             GPU_Temp < DEACTIVATE_TEMP_GPU_THRESHOLD and
             Battery_Temp < DEACTIVATE_BATT_TEMP_THRESHOLD and
             Power < DEACTIVATE_POWER_THRESHOLD;
   end Should_Deactivate_Turbo;

   ---------------------------
   -- Should_Engage_Overdrive --
   ---------------------------

   function Should_Engage_Overdrive (Load_Status : Integer) return Boolean is
   begin
      return Load_Status = 2;
   end Should_Engage_Overdrive;

   ---------------
   -- Clamp_RPM --
   ---------------

   function Clamp_RPM (Val : Float) return Float is
   begin
      if Val < 0.0 then
         return 0.0;
      elsif Val > 101000.0 then
         return 101000.0;
      else
         return Val;
      end if;
   end Clamp_RPM;

end SMC_Thresholds;
