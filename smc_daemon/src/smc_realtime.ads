with Interfaces;
with Interfaces.C;

-- SPARK STATUS: SPARK_Mode => Off.
--   RATIONALE: every subprogram here is `pragma Import (C, ...)` against
--   smc_helper.c (macOS audio workgroup / realtime thread configuration).
--   Imported C calls are outside the SPARK subset. SAFETY-NET: Init is called
--   once at startup; a failure leaves the daemon on the default (non-realtime)
--   scheduling class, which degrades latency but never crashes.
package SMC_Realtime with SPARK_Mode => Off is

   type Join_Token_T is array (1 .. 40) of Interfaces.Unsigned_8;
   pragma Convention (C, Join_Token_T);

   procedure Init_Audio_Workgroup;
   pragma Import (C, Init_Audio_Workgroup, "init_audio_workgroup");

   procedure Join_Audio_Workgroup (Token : access Join_Token_T);
   pragma Import (C, Join_Audio_Workgroup, "join_audio_workgroup");

   procedure Leave_Audio_Workgroup (Token : access Join_Token_T);
   pragma Import (C, Leave_Audio_Workgroup, "leave_audio_workgroup");

   procedure Configure_Realtime (
      Period_MS      : Interfaces.C.int;
      Computation_MS : Interfaces.C.int;
      Constraint_MS  : Interfaces.C.int
   );
   pragma Import (C, Configure_Realtime, "configure_realtime");

end SMC_Realtime;
