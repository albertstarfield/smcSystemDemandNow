with Interfaces.C;
with Interfaces.C.Strings;

-- SPARK STATUS: SPARK_Mode => Off.
--   RATIONALE: every subprogram here is `pragma Import (C, ...)` against
--   smc_helper.c (IOKit SMC access). Imported C calls are outside the SPARK
--   subset by construction. SAFETY-NET: every Read_Key / Write_Key_Hex
--   caller in smc_daemon.adb checks the returned int result code and logs
--   "[DAEMON] WARNING: Write ... FAILED" on non-zero; failures never abort
--   the 10 Hz loop.
package SMC_IO with SPARK_Mode => Off is
   subtype IO_Connect_T is Interfaces.C.unsigned;

   function Open_Connection (Conn : out IO_Connect_T) return Interfaces.C.int;
   pragma Import (C, Open_Connection, "smc_helper_open");

   function Close_Connection (Conn : IO_Connect_T) return Interfaces.C.int;
   pragma Import (C, Close_Connection, "smc_helper_close");

   function Read_Key (Conn : IO_Connect_T; Key : Interfaces.C.Strings.chars_ptr; Val : out Interfaces.C.C_float) return Interfaces.C.int;
   pragma Import (C, Read_Key, "smc_helper_read_key");

   function Write_Key_Hex (Conn : IO_Connect_T; Key : Interfaces.C.Strings.chars_ptr; Hex_Str : Interfaces.C.Strings.chars_ptr) return Interfaces.C.int;
   pragma Import (C, Write_Key_Hex, "smc_helper_write_key_hex");
end SMC_IO;
