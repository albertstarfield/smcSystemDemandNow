with Ada.Text_IO;
with Ada.Numerics.Elementary_Functions;
with GNAT.OS_Lib;
with SMC_Realtime;
with SMC_Files;

package body SMC_Daemon_State is

   ----------------------
   -- Watchdog_Monitor --
   ----------------------

   protected body Watchdog_Monitor is

      procedure Update_Heartbeat (
         TCMz       : Float;
         GPU        : Float;
         Power      : Float;
         Battery    : Float;
         Fan_F0Ac   : Float;
         Fan_F1Ac   : Float;
         Turbo      : Boolean
      ) is
         use Ada.Real_Time;
         Now : constant Time := Clock;
         Changed : Boolean := False;
      begin
         Last_Heartbeat_Time := Now;

         -- Detect sensor value changes
         if abs (TCMz - Snap_TCMz) > 0.01 then
            Snap_TCMz := TCMz;
            Changed := True;
         end if;
         if abs (GPU - Snap_GPU) > 0.01 then
            Snap_GPU := GPU;
            Changed := True;
         end if;
         if abs (Power - Snap_Power) > 0.1 then
            Snap_Power := Power;
            Changed := True;
         end if;
         if abs (Battery - Snap_Battery) > 0.01 then
            Snap_Battery := Battery;
            Changed := True;
         end if;
         if abs (Fan_F0Ac - Snap_F0Ac) > 10.0 then
            Snap_F0Ac := Fan_F0Ac;
            Changed := True;
         end if;
         if abs (Fan_F1Ac - Snap_F1Ac) > 10.0 then
            Snap_F1Ac := Fan_F1Ac;
            Changed := True;
         end if;

         if Changed then
            Last_Change_Time := Now;
         end if;

         -- Track TCMz = 0.0 anomaly (SMC read failure)
         if TCMz = 0.0 then
            if not TCMz_Zero_Active then
               TCMz_Zero_Start := Now;
               TCMz_Zero_Active := True;
            end if;
         else
            TCMz_Zero_Active := False;
         end if;

         -- Track fan stuck at max (>10000 RPM) without turbo
         if (Fan_F0Ac > 10000.0 or Fan_F1Ac > 10000.0) and not Turbo then
            if not Fan_Max_Active then
               Fan_Max_Start := Now;
               Fan_Max_Active := True;
            end if;
         else
            Fan_Max_Active := False;
         end if;
      end Update_Heartbeat;

      function Is_Flatlined return Boolean is
         use Ada.Real_Time;
         Now : constant Time := Clock;
         Elapsed : constant Duration := To_Duration (Now - Last_Change_Time);
      begin
         return Elapsed >= WATCHDOG_FLATLINE_THRESHOLD;
      end Is_Flatlined;

      function Is_TCMz_Stuck_Zero return Boolean is
         use Ada.Real_Time;
         Now : constant Time := Clock;
         Elapsed : constant Duration := To_Duration (Now - TCMz_Zero_Start);
      begin
         return TCMz_Zero_Active and then Elapsed >= WATCHDOG_ANOMALY_THRESHOLD;
      end Is_TCMz_Stuck_Zero;

      function Is_Fan_Stuck_Max return Boolean is
         use Ada.Real_Time;
         Now : constant Time := Clock;
         Elapsed : constant Duration := To_Duration (Now - Fan_Max_Start);
      begin
         return Fan_Max_Active and then Elapsed >= WATCHDOG_ANOMALY_THRESHOLD;
      end Is_Fan_Stuck_Max;

      function Get_Fault_Reason return String is
      begin
         return Fault_Reason (1 .. Fault_Len);
      end Get_Fault_Reason;

   end Watchdog_Monitor;

   ------------------
   -- Daemon_State --
   ------------------

   protected body Daemon_State is
      procedure Request_Shutdown is
      begin
         Keep_Running := False;
      end Request_Shutdown;

      function Should_Keep_Running return Boolean is
      begin
         return Keep_Running;
      end Should_Keep_Running;

      -- =======================================================================
-- Set_Turbo / Is_Turbo_Active / Get_Turbo_Elapsed
-- =======================================================================
-- AXIOM N1 (RISING-EDGE CLOCK): Turbo_Start_Time is stamped ONLY on the
--   transition False -> True. A redundant Set_Turbo(True) while turbo is
--   already on is a no-op and does NOT restart the dwell clock. This is
--   what makes the dwell a minimum rather than a sliding window: repeated
--   activations while already engaged cannot push the deadline out.
--
-- AXIOM N2 (SINGLE FUNNEL): Set_Turbo(True) has exactly one call site in
--   the codebase (smc_daemon.adb Activate_Turbo_Mode, Set_Turbo (True)).
--   The dwell clock therefore cannot be bypassed by a second activation
--   path. If a future edit adds a call site, N2 must be re-verified.
--
-- AXIOM N3 (NEVER SUBTRACTS Time_First): Get_Turbo_Elapsed returns 0.0
--   while Turbo_Start_Valid is False. Subtracting Time_First would yield a
--   ~126 year offset, which is both meaningless and, at Duration's fixed
--   nanosecond resolution, wasteful arithmetic on every 100 ms iteration.
--
-- AXIOM N4 (THREAD SAFE): all three dwell fields live in this protected
--   object, so the 10 Hz main loop and any task reading the dwell are
--   serialised. Set_Turbo already had this property; N1 does not weaken it.
-- =======================================================================
      procedure Set_Turbo (Active : Boolean) is
      begin
         if Active and then not Turbo_Active then
            Turbo_Start_Time  := Ada.Real_Time.Clock;
            Turbo_Start_Valid := True;
         end if;
         Turbo_Active := Active;
      end Set_Turbo;

      function Is_Turbo_Active return Boolean is
      begin
         return Turbo_Active;
      end Is_Turbo_Active;

-- Get_Turbo_Elapsed
-- =======================================================================
-- PURPOSE: seconds elapsed since turbo engaged, for the minimum-dwell gate.
-- THEOREM N5: after Set_Turbo(True), this is non-decreasing and returns
--   >= 0.0 always. Before any engagement it returns exactly 0.0 (AXIOM N3).
--   Monotonicity holds because Ada.Real_Time.Clock is non-decreasing
--   (Ada 2012 RM D.4), so the difference cannot decrease.
-- CITATION: Ada 2012 RM D.4 -- Real Time, Clock is monotonic within a node.
-- =======================================================================
      function Get_Turbo_Elapsed return Duration is
      begin
         if not Turbo_Start_Valid then
            return 0.0;
         end if;
         -- WHY THE EXPLICIT OPERATOR QUALIFICATION (rather than
         -- `Clock - Turbo_Start_Time`): Ada.Real_Time.Time is a PRIVATE type
         -- and its "-" operator is visible only through `use type`. A `use
         -- type` clause would leak that visibility across the entire package
         -- body, so the operator is qualified directly here.
         --
         -- To_Duration IS REQUIRED: Time minus Time yields Time_Span, NOT
         -- Duration. An earlier revision of this comment asserted otherwise and
         -- was wrong -- the compiler rejected it at this line.
         -- CITATION: Ada 2012 RM D.4 -- Time_Span is the result type of
         --   Time - Time; To_Duration converts Time_Span to Duration.
         return Ada.Real_Time.To_Duration
           (Ada.Real_Time."-" (Ada.Real_Time.Clock, Turbo_Start_Time));
      end Get_Turbo_Elapsed;

      -- Start_Cooldown
      -- =======================================================================
      -- AXIOMS:
      --   A1 (Idempotent): If a cooldown is already running, this call is a
      --     NO-OP. It neither restarts the clock nor replaces the start RPM.
      --   A2 (Thread Safe): All cooldown state lives in this protected object,
      --     so concurrent access is serialised.
      --
      -- WHY A1 MATTERS (audit 2026-10-04): there are TWO call sites --
      -- smc_daemon.adb Deactivate_Turbo_Mode (turbo exit) and the
      -- overdrive-deactivated branch. Before this guard, a second call reset
      -- Cooldown_Start_Time mid-transition, restarting the 60s curve and
      -- extending the decay without bound if overdrive kept cycling. With the
      -- guard the original deadline stands, so the transition always completes.
      --
      --   A restarting call is still possible in principle (turbo re-engages,
      --   which cancels the cooldown at the call site, then exits again), and
      --   that path correctly begins a fresh curve.
--
-- AXIOM C3 (EVENT GATED, NOT A RATE LIMITER):
--   Entering this state buys a 60s natural-logarithmic RPM decay and
--   nothing else. It is NOT a slew/rate limiter: no fan write is filtered
--   by comparing consecutive targets, and no leg of the fan output path
--   consults this state except the cooldown branch itself.
--
-- WHICH LEGS GET SMOOTHED (the complete set — there are exactly two):
--   L1 Turbo -> off, full deactivation.
--      Armed at smc_daemon.adb:618 inside Deactivate_Turbo_Mode, after
--      Set_Turbo(False) at :611 and Reset_Spikes at :612. Start_RPM is
--      Max_Ac_RPM (max of F0Ac/F1Ac) captured at :616.
--      Note the early return at :607-609: if turbo is already inactive this
--      is never reached, so L1 cannot fire on an abort.
--   L2 Overdrive -> off edge.
--      Armed at smc_daemon.adb:1169, guarded by
--      `if not Daemon_State.Is_Turbo_Active` at :1165, Start_RPM captured
--      at :1167.
--
-- WHICH LEGS ARE NOT SMOOTHED (turbo still active, so this is never armed):
--   N1 Thermal-demand abort. The max-fan write at smc_daemon.adb:1451 is
--      gated on Is_Thermal_Demand (:1205-1210, ACTIVATION thresholds)
--      while cooldown is armed only by Should_Deactivate_Turbo
--      (DEACTIVATION thresholds). Inside the hysteresis band turbo is
--      still True, so Deactivate_Turbo_Mode early-returns at :607-609 and
--      Start_Cooldown is NEVER called. The fan drops to the PID target in a
--      single 100ms tick. Full analysis: smc_daemon.adb:1375.
--   N2 Silent Mode toggle, N3 TCMz crossing 86.0 C downward, N4 the
--      Derivative > 1.5 kick — all one-tick steps for the same structural
--      reason: nothing calls Start_Cooldown on those edges.
--   AXIOM C3 consequence: a caller that assumes "leaving a high fan state
--   always passes through Start_Cooldown" is wrong. It is the N1..N4 legs
--   that make that assumption unsafe.
--
-- LIFETIME OF THE COOLDOWN STATE (consumer side, smc_daemon.adb):
--   Expiry:    Cooldown_Duration = 60.0s at :1329, then Cancel_Cooldown
--              at :1332 when Elapsed >= Duration.
--   Cancel:    :1321 when turbo or overdrive re-engages.
--   Restart:   process restart clears In_Cooldown (initialised False in
--              smc_daemon_state.ads:120) — a crash mid-decay therefore
--              abandons the curve rather than resuming it.
--
-- OPERATOR DECISION (2026-10-05): N1..N4 being unsmoothed is INTENTIONAL.
--   Do NOT widen the call sites to cover them and do NOT add a general
--   slew limiter. The 10100 <-> 3000 RPM step at the 10Hz loop rate is a
--   known, accepted consequence. See smc_thresholds.ads:53-107.
      -- =======================================================================
      procedure Start_Cooldown (Start_RPM : Float) is
      begin
         if In_Cooldown then
            -- Already transitioning: keep the original start time and RPM so
            -- the curve cannot be restarted indefinitely.
            return;
         end if;
         In_Cooldown := True;
         Cooldown_Start_Time := Ada.Real_Time.Clock;
         Cooldown_Start_RPM := Start_RPM;
      end Start_Cooldown;

      procedure Cancel_Cooldown is
      begin
         In_Cooldown := False;
      end Cancel_Cooldown;

      function Is_In_Cooldown return Boolean is
      begin
         return In_Cooldown;
      end Is_In_Cooldown;

      function Get_Cooldown_Start_Time return Ada.Real_Time.Time is
      begin
         return Cooldown_Start_Time;
      end Get_Cooldown_Start_Time;

      function Get_Cooldown_Start_RPM return Float is
      begin
         return Cooldown_Start_RPM;
      end Get_Cooldown_Start_RPM;

      procedure Register_Spike is
      begin
         Spike_Count := Spike_Count + 1;
      end Register_Spike;

      procedure Reset_Spikes is
      begin
         Spike_Count := 0;
      end Reset_Spikes;

      function Get_Spike_Count return Natural is
      begin
         return Spike_Count;
      end Get_Spike_Count;

      procedure Set_aPMX_Val (Val : Float) is
      begin
         aPMX_Val := Val;
      end Set_aPMX_Val;

      function Get_aPMX_Val return Float is
      begin
         return aPMX_Val;
      end Get_aPMX_Val;

      procedure Set_mTPL_Val (Val : Float) is
      begin
         mTPL_Val := Val;
      end Set_mTPL_Val;

      function Get_mTPL_Val return Float is
      begin
         return mTPL_Val;
      end Get_mTPL_Val;
   end Daemon_State;

   ---------------------
   -- Latency_Monitor --
   ---------------------

   task body Latency_Monitor_T is
      use Ada.Numerics.Elementary_Functions;
      use Ada.Real_Time;
      
      Start_Time, End_Time : Ada.Real_Time.Time;
      Elapsed              : Time_Span;
      Val                  : Float;
      pragma Unreferenced (Val);
      
      -- History buffers adjusted for 50ms period (40 runs = 2s, 30 medians = 60s)
      type Latency_Array is array (1 .. 40) of Float;
      Runs_History : Latency_Array := (others => 0.0);
      Run_Idx      : Positive := 1;
      
      type Medians_Array is array (1 .. 30) of Float;
      Medians_History : Medians_Array := (others => 0.0);
      Median_Idx      : Positive := 1;
      
      Baseline        : Float := 0.0;
      Current_Latency : Float;
      Current_Median  : Float;
      
      procedure Sort (Arr : in out Latency_Array) is
         Temp : Float;
      begin
         for I in Arr'Range loop
            for J in I + 1 .. Arr'Last loop
               if Arr (J) < Arr (I) then
                  Temp := Arr (I);
                  Arr (I) := Arr (J);
                  Arr (J) := Temp;
               end if;
            end loop;
         end loop;
      end Sort;

      procedure Sort_Medians (Arr : in out Medians_Array) is
         Temp : Float;
      begin
         for I in Arr'Range loop
            for J in I + 1 .. Arr'Last loop
               if Arr (J) < Arr (I) then
                  Temp := Arr (I);
                  Arr (I) := Arr (J);
                  Arr (J) := Temp;
               end if;
            end loop;
         end loop;
      end Sort_Medians;

      Token : aliased SMC_Realtime.Join_Token_T;
   begin
      -- Allow daemon initialization first
      delay 2.0;

      SMC_Realtime.Join_Audio_Workgroup (Token'Access);
      -- Configure: period 50ms, computation 0.5ms, constraint 1ms
      SMC_Realtime.Configure_Realtime (50, 1, 1);

      while Daemon_State.Should_Keep_Running loop
         Start_Time := Ada.Real_Time.Clock;
         
         -- Compute loop to measure CPU latency (reduced iterations)
         for I in 1 .. 200 loop
            Val := Sin (Float (I) * 0.001);
         end loop;
         
         End_Time := Ada.Real_Time.Clock;
         Elapsed := End_Time - Start_Time;
         Current_Latency := Float (To_Duration (Elapsed));
         
         Runs_History (Run_Idx) := Current_Latency;
         
         if Run_Idx = 40 then
            -- 2 seconds completed: calculate current median
            declare
               Sorted_Runs : Latency_Array := Runs_History;
            begin
               Sort (Sorted_Runs);
               Current_Median := Sorted_Runs (20);
            end;
            
            -- Detect spikes against baseline
            if Baseline > 0.0 and then Current_Median > 2.0 * Baseline then
               Daemon_State.Register_Spike;
               Ada.Text_IO.Put_Line ("[LATENCY SPIKE] Current median: " & Float'Image (Current_Median) & 
                                    " exceeds 2x baseline: " & Float'Image (Baseline));
            end if;

            Medians_History (Median_Idx) := Current_Median;
            
            if Median_Idx = 30 then
               -- 60 seconds completed: recalibrate baseline
               declare
                  Sorted_Medians : Medians_Array := Medians_History;
               begin
                  Sort_Medians (Sorted_Medians);
                  Baseline := Sorted_Medians (15);
                  Ada.Text_IO.Put_Line ("[LATENCY MONITOR] Recalibrated baseline median: " & Float'Image (Baseline));
               end;
               Median_Idx := 1;
            else
               Median_Idx := Median_Idx + 1;
            end if;
            
            Run_Idx := 1;
         else
            Run_Idx := Run_Idx + 1;
         end if;
         
         delay 0.05; -- 50ms loop
      end loop;
      SMC_Realtime.Leave_Audio_Workgroup (Token'Access);
   exception
      when others =>
         SMC_Realtime.Leave_Audio_Workgroup (Token'Access);
   end Latency_Monitor_T;

   -----------------------
   -- Thermal_Suspender --
   -----------------------

   task body Thermal_Suspender_T is
      Success : Boolean;
      Args    : GNAT.OS_Lib.Argument_List (1 .. 2);
   begin
      SMC_Realtime.Configure_Realtime (5000, 50, 100);
      Args (1) := new String'("-STOP");
      Args (2) := new String'("thermalmonitord");
      
      while Daemon_State.Should_Keep_Running loop
         GNAT.OS_Lib.Spawn ("/usr/bin/pkill", Args, Success);
         delay 5.0;
      end loop;
      
      for I in Args'Range loop
         GNAT.OS_Lib.Free (Args (I));
      end loop;
   end Thermal_Suspender_T;

   -------------------
   -- Watchdog_T --
   -------------------

   task body Watchdog_T is
      use Ada.Real_Time;

      procedure Set_Fault (Reason : String) is
      begin
         null;  -- Fault tracking is informational only; logging happens in Log_And_Restart
      end Set_Fault;

      procedure Log_Watchdog_Error (Title, Message : String) is
      begin
         -- Log to notification file with timestamp
         SMC_Files.Notify_User (Title, Message);
         -- Also log to stdout for launchd capture
         Ada.Text_IO.Put_Line ("[WATCHDOG] [" & Title & "] " & Message);
      end Log_Watchdog_Error;

      procedure Log_And_Restart (Title, Reason : String) is
      begin
         Log_Watchdog_Error (Title, Reason);
         Log_Watchdog_Error ("WATCHDOG", "Stale sensor detected — unknown error condition. Initiating auto-restart in 3 seconds...");
         delay Duration'(3.0);

         -- Request clean shutdown of current daemon
         Daemon_State.Request_Shutdown;

         -- Give main loop a moment to clean up
         delay Duration'(2.0);

         -- Terminate current process; launchd KeepAlive will restart
         GNAT.OS_Lib.OS_Exit (1);
      end Log_And_Restart;

      Next_Wake : Time;
   begin
      -- Wait for daemon initialization
      delay Duration'(5.0);

      Ada.Text_IO.Put_Line ("[WATCHDOG] Sensor watchdog started. Monitoring for flatlines and anomalies.");
      SMC_Files.Notify_User ("WATCHDOG", "Sensor watchdog started. Monitoring for flatlines and anomalies.");

      while Daemon_State.Should_Keep_Running loop
         Next_Wake := Clock + To_Time_Span (WATCHDOG_CHECK_INTERVAL);

         -- Check 1: All primary sensors flatlined for 2 minutes
         if Watchdog_Monitor.Is_Flatlined then
            Set_Fault ("All primary sensors (TCMz, GPU, Power, Battery) unchanged for 120s");
            Log_And_Restart (
               "STALE_SENSOR",
               "SENSOR FLATLINE: All primary readings frozen for 120+ seconds. " &
               "TCMz, GPU, Power, Battery values unchanged. Possible SMC hang or daemon loop stuck.");

         -- Check 2: TCMz stuck at 0.0 for 30+ seconds (SMC read failure)
         elsif Watchdog_Monitor.Is_TCMz_Stuck_Zero then
            Set_Fault ("TCMz reading 0.0C for 30+ seconds (SMC read failure)");
            Log_And_Restart (
               "TCMZ_ZERO",
               "TCMz STUCK ZERO: CPU temperature sensor returning 0.0C for 30+ seconds. " &
               "SMC read failure detected. Daemon may not be reading kernel sensors correctly.");

         -- Check 3: Fans stuck at max RPM without turbo active
         elsif Watchdog_Monitor.Is_Fan_Stuck_Max then
            Set_Fault ("Fan RPM > 10000 without turbo for 30+ seconds");
            Log_And_Restart (
               "FAN_STUCK_MAX",
               "FAN STUCK MAX: Fans at maximum RPM without turbo mode active for 30+ seconds. " &
               "Possible SMC firmware override or manual control conflict.");

         end if;

         delay Until Next_Wake;
      end loop;

      Ada.Text_IO.Put_Line ("[WATCHDOG] Sensor watchdog shutting down.");
   exception
      when others =>
         Ada.Text_IO.Put_Line ("[WATCHDOG] Watchdog task crashed. Restarting in 5 seconds...");
         SMC_Files.Notify_User ("WATCHDOG_FAULT", "Watchdog task crashed with unknown exception. Auto-restarting daemon.");
         delay Duration'(5.0);
         GNAT.OS_Lib.OS_Exit (1);
   end Watchdog_T;

end SMC_Daemon_State;
