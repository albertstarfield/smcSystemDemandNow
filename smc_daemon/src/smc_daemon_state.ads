with Ada.Real_Time;

package SMC_Daemon_State is

   -- Shared Thread-Safe Protected State
   protected Daemon_State is
      procedure Request_Shutdown;
      function Should_Keep_Running return Boolean;

      procedure Set_Turbo (Active : Boolean);
      function Is_Turbo_Active return Boolean;

      procedure Start_Cooldown (Start_RPM : Float);
      procedure Cancel_Cooldown;
      function Is_In_Cooldown return Boolean;
      function Get_Cooldown_Start_Time return Ada.Real_Time.Time;
      function Get_Cooldown_Start_RPM return Float;

      procedure Register_Spike;
      procedure Reset_Spikes;
      function Get_Spike_Count return Natural;
   private
      Keep_Running : Boolean := True;
      Turbo_Active : Boolean := False;
      Spike_Count  : Natural := 0;

      In_Cooldown         : Boolean := False;
      Cooldown_Start_Time : Ada.Real_Time.Time := Ada.Real_Time.Time_First;
      Cooldown_Start_RPM  : Float := 0.0;
   end Daemon_State;

   -- Background Task Types for dynamic allocation
   task type Latency_Monitor_T;
   task type Thermal_Suspender_T;

end SMC_Daemon_State;
