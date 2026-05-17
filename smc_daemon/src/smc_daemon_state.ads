package SMC_Daemon_State is

   -- Shared Thread-Safe Protected State
   protected Daemon_State is
      procedure Request_Shutdown;
      function Should_Keep_Running return Boolean;

      procedure Set_Turbo (Active : Boolean);
      function Is_Turbo_Active return Boolean;

      procedure Register_Spike;
      procedure Reset_Spikes;
      function Get_Spike_Count return Natural;
   private
      Keep_Running : Boolean := True;
      Turbo_Active : Boolean := False;
      Spike_Count  : Natural := 0;
   end Daemon_State;

   -- Background Task Types for dynamic allocation
   task type Latency_Monitor_T;
   task type Thermal_Suspender_T;

end SMC_Daemon_State;
