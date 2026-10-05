with Ada.Real_Time;

package SMC_Daemon_State is

   -- ========================================================================
   -- WATCHDOG CONFIGURATION
   -- ========================================================================
   -- Flatline detection: if any primary sensor (TCMz, GPU, Power) stays at
   -- the exact same value for WATCHDOG_FLATLINE_THRESHOLD seconds, the daemon
   -- is considered stuck and will be restarted.
   --
   -- Anomaly thresholds:
   --   TCMz = 0.0 for > 30s means SMC read failure (not a valid flatline)
   --   Fan RPM > 10000 for > 120s with no turbo means firmware override

   WATCHDOG_FLATLINE_THRESHOLD : constant Duration := 120.0;  -- 2 minutes
   WATCHDOG_ANOMALY_THRESHOLD  : constant Duration := 30.0;   -- 30 seconds
   WATCHDOG_CHECK_INTERVAL     : constant Duration := 5.0;    -- poll every 5s

   -- ========================================================================
   -- SENSOR HEARTBEAT TRACKER
   -- ========================================================================
   -- The main loop calls Update_Heartbeat each cycle. The watchdog task
   -- reads these to detect flatlines and anomalies.

   protected Watchdog_Monitor is
      -- Main loop calls this every cycle with current sensor values
      procedure Update_Heartbeat (
         TCMz       : Float;
         GPU        : Float;
         Power      : Float;
         Battery    : Float;
         Fan_F0Ac   : Float;
         Fan_F1Ac   : Float;
         Turbo      : Boolean
      );

      -- Watchdog task calls these to check for problems
      function Is_Flatlined return Boolean;
      function Is_TCMz_Stuck_Zero return Boolean;
      function Is_Fan_Stuck_Max return Boolean;
      function Get_Fault_Reason return String;

   private
      -- Current sensor snapshot
      Cur_TCMz     : Float := 0.0;
      Cur_GPU      : Float := 0.0;
      Cur_Power    : Float := 0.0;
      Cur_Battery  : Float := 0.0;
      Cur_F0Ac     : Float := 0.0;
      Cur_F1Ac     : Float := 0.0;
      Cur_Turbo    : Boolean := False;

      -- Snapshot at last state change
      Snap_TCMz     : Float := 0.0;
      Snap_GPU      : Float := 0.0;
      Snap_Power    : Float := 0.0;
      Snap_Battery  : Float := 0.0;
      Snap_F0Ac     : Float := 0.0;
      Snap_F1Ac     : Float := 0.0;

      -- Timestamps
      Last_Change_Time     : Ada.Real_Time.Time := Ada.Real_Time.Clock;
      Last_Heartbeat_Time  : Ada.Real_Time.Time := Ada.Real_Time.Clock;
      TCMz_Zero_Start      : Ada.Real_Time.Time := Ada.Real_Time.Clock;
      TCMz_Zero_Active     : Boolean := False;
      Fan_Max_Start        : Ada.Real_Time.Time := Ada.Real_Time.Clock;
      Fan_Max_Active       : Boolean := False;

      -- Fault reason buffer
      Fault_Reason : String (1 .. 128) := (others => ' ');
      Fault_Len    : Natural := 0;
   end Watchdog_Monitor;

   -- Shared Thread-Safe Protected State
   protected Daemon_State is
      procedure Request_Shutdown;
      function Should_Keep_Running return Boolean;

      procedure Set_Turbo (Active : Boolean);
      function Is_Turbo_Active return Boolean;

      -- MINIMUM TURBO DWELL SUPPORT (operator decision 2026-10-06).
      -- Get_Turbo_Elapsed returns the time since turbo engaged, or 0.0 if
      -- turbo has never engaged. The dwell constant itself lives in
      -- SMC_Thresholds (TURBO_MIN_DWELL); this object only measures.
      function Get_Turbo_Elapsed return Duration;

      procedure Start_Cooldown (Start_RPM : Float);
      procedure Cancel_Cooldown;
      function Is_In_Cooldown return Boolean;
      function Get_Cooldown_Start_Time return Ada.Real_Time.Time;
      function Get_Cooldown_Start_RPM return Float;

      procedure Register_Spike;
      procedure Reset_Spikes;
      function Get_Spike_Count return Natural;

      procedure Set_aPMX_Val (Val : Float);
      function Get_aPMX_Val return Float;
      procedure Set_mTPL_Val (Val : Float);
      function Get_mTPL_Val return Float;
   private
      Keep_Running : Boolean := True;
      Turbo_Active : Boolean := False;
      Spike_Count  : Natural := 0;

      -- MINIMUM TURBO DWELL STATE.
      -- Turbo_Start_Valid gates the timestamp so Get_Turbo_Elapsed never
      -- subtracts from the uninitialised Time_First sentinel (which would
      -- be a ~126 year offset). Before the first engagement it reports 0.0,
      -- which is correct: dwell has not been served, but turbo is not on, so
      -- no consumer is active.
      Turbo_Start_Time  : Ada.Real_Time.Time := Ada.Real_Time.Time_First;
      Turbo_Start_Valid : Boolean := False;

      aPMX_Val     : Float := 0.0;
      mTPL_Val     : Float := 0.0;

      In_Cooldown         : Boolean := False;
      Cooldown_Start_Time : Ada.Real_Time.Time := Ada.Real_Time.Time_First;
      Cooldown_Start_RPM  : Float := 0.0;
   end Daemon_State;

   -- Background Task Types for dynamic allocation
   task type Latency_Monitor_T;
   task type Thermal_Suspender_T;
   task type Watchdog_T;

end SMC_Daemon_State;
