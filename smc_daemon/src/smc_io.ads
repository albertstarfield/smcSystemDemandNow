with Interfaces.C;
with Interfaces.C.Strings;

package SMC_IO is
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
