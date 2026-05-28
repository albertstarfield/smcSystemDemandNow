with Ada.Text_IO;
with Ada.Numerics.Elementary_Functions;
with Ada.Real_Time;
with GNAT.OS_Lib;
with SMC_Realtime;

package body SMC_Daemon_State is

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

      procedure Set_Turbo (Active : Boolean) is
      begin
         Turbo_Active := Active;
      end Set_Turbo;

      function Is_Turbo_Active return Boolean is
      begin
         return Turbo_Active;
      end Is_Turbo_Active;

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
      
      type Latency_Array is array (1 .. 100) of Float;
      Runs_History : Latency_Array := (others => 0.0);
      Run_Idx      : Positive := 1;
      
      type Medians_Array is array (1 .. 60) of Float;
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
      -- Configure: period 10ms, computation 1ms, constraint 2ms
      SMC_Realtime.Configure_Realtime (10, 1, 2);

      while Daemon_State.Should_Keep_Running loop
         Start_Time := Ada.Real_Time.Clock;
         
         -- Compute-heavy sin loop to measure CPU latency
         for I in 1 .. 1000 loop
            Val := Sin (Float (I) * 0.001);
         end loop;
         
         End_Time := Ada.Real_Time.Clock;
         Elapsed := End_Time - Start_Time;
         Current_Latency := Float (To_Duration (Elapsed));
         
         Runs_History (Run_Idx) := Current_Latency;
         
         if Run_Idx = 100 then
            -- 1 second completed: calculate current median
            declare
               Sorted_Runs : Latency_Array := Runs_History;
            begin
               Sort (Sorted_Runs);
               Current_Median := Sorted_Runs (50);
            end;
            
            -- Detect spikes against baseline
            if Baseline > 0.0 and then Current_Median > 2.0 * Baseline then
               Daemon_State.Register_Spike;
               Ada.Text_IO.Put_Line ("[LATENCY SPIKE] Current median: " & Float'Image (Current_Median) & 
                                    " exceeds 2x baseline: " & Float'Image (Baseline));
            end if;

            Medians_History (Median_Idx) := Current_Median;
            
            if Median_Idx = 60 then
               -- 60 seconds completed: recalibrate baseline
               declare
                  Sorted_Medians : Medians_Array := Medians_History;
               begin
                  Sort_Medians (Sorted_Medians);
                  Baseline := Sorted_Medians (30);
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
         
         delay 0.01; -- 10ms loop
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

end SMC_Daemon_State;
