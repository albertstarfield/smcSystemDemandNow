with GNAT.SHA256;
with Ada.Text_IO;
with Ada.Directories;
with Ada.Strings.Unbounded;
with Ada.Strings.Fixed;
with Interfaces;
with Interfaces.C;
with Interfaces.C.Strings;

package body SMC_Integrity is

   use Ada.Strings.Unbounded;
   use Ada.Strings.Fixed;
   use type Interfaces.Unsigned_32;

   ----------
   -- Hash --
   ----------
   function Hash (Input : String) return String is
   begin
      return GNAT.SHA256.Digest (Input);
   end Hash;

   -------------------
   -- Base64_Encode --
   -------------------
   function Base64_Encode (Data : String) return String is
      Table : constant String := "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
      Result : Unbounded_String;
      Tri : Natural;
      Val : Natural;
   begin
      if Data'Length = 0 then return ""; end if;
      for I in 0 .. (Data'Length / 3) - 1 loop
         Tri := Character'Pos(Data(Data'First + I*3)) * 65536 +
                Character'Pos(Data(Data'First + I*3 + 1)) * 256 +
                Character'Pos(Data(Data'First + I*3 + 2));
         Append (Result, Table (Tri / 262144 + 1));
         Append (Result, Table ((Tri / 4096) mod 64 + 1));
         Append (Result, Table ((Tri / 64) mod 64 + 1));
         Append (Result, Table (Tri mod 64 + 1));
      end loop;
      declare
         Rem_Len : constant Integer := Data'Length mod 3;
         Base_Idx : constant Integer := (Data'Length / 3) * 3;
      begin
         if Rem_Len = 1 then
            Val := Character'Pos(Data(Data'First + Base_Idx)) * 65536;
            Append (Result, Table (Val / 262144 + 1));
            Append (Result, Table ((Val / 4096) mod 64 + 1));
            Append (Result, "==");
         elsif Rem_Len = 2 then
            Val := Character'Pos(Data(Data'First + Base_Idx)) * 65536 + 
                   Character'Pos(Data(Data'First + Base_Idx + 1)) * 256;
            Append (Result, Table (Val / 262144 + 1));
            Append (Result, Table ((Val / 4096) mod 64 + 1));
            Append (Result, Table ((Val / 64) mod 64 + 1));
            Append (Result, "=");
         end if;
      end;
      return To_String (Result);
   end Base64_Encode;

   -------------------
   -- Base64_Decode --
   -------------------
   function Base64_Decode (Data : String) return String is
      Alphabet : constant String := "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
      function Char_To_Val (C : Character) return Integer is
      begin
         for I in 1 .. 64 loop
            if Alphabet (I) = C then return I - 1; end if;
         end loop;
         return 0;
      end Char_To_Val;
      Result : String (1 .. Data'Length);
      Len    : Natural := 0;
      I      : Integer := Data'First;
      Triple : Interfaces.Unsigned_32;
      C1, C2, C3, C4 : Character;
      V1, V2, V3, V4 : Integer;
   begin
      if Data'Length = 0 then return ""; end if;
      while I <= Data'Last - 3 loop
         C1 := Data (I); C2 := Data (I + 1); C3 := Data (I + 2); C4 := Data (I + 3);
         V1 := Char_To_Val (C1); V2 := Char_To_Val (C2); V3 := Char_To_Val (C3); V4 := Char_To_Val (C4);
         Triple := Interfaces.Shift_Left (Interfaces.Unsigned_32 (V1), 18) or
                   Interfaces.Shift_Left (Interfaces.Unsigned_32 (V2), 12) or
                   Interfaces.Shift_Left (Interfaces.Unsigned_32 (V3), 6) or
                   Interfaces.Unsigned_32 (V4);
         Len := Len + 1;
         Result (Len) := Character'Val (Interfaces.Shift_Right (Triple, 16) and 16#FF#);
         if C3 /= '=' then
            Len := Len + 1;
            Result (Len) := Character'Val (Interfaces.Shift_Right (Triple, 8) and 16#FF#);
         end if;
         if C4 /= '=' then
            Len := Len + 1;
            Result (Len) := Character'Val (Triple and 16#FF#);
         end if;
         I := I + 4;
      end loop;
      return Result (1 .. Len);
   exception
      when others => return "";
   end Base64_Decode;

   --------------------------
   -- Verify_And_Heal_File --
   --------------------------
   procedure Verify_And_Heal_File (
      Path    : String;
      Content : out String;
      Length  : out Natural;
      Success : out Boolean
   ) is
      use Ada.Text_IO;
      File : File_Type;
      Primary_Line : Unbounded_String;
      Recovery_Line : Unbounded_String;
      Verified : Boolean := False;
   begin
      Success := False;
      Length := 0;

      if not Ada.Directories.Exists (Path) then
         return;
      end if;

      -- 1. Try to open and read the file
      begin
         Open (File, In_File, Path);
         if not End_Of_File (File) then
            Primary_Line := To_Unbounded_String (Get_Line (File));
         end if;
         if not End_Of_File (File) then
            Recovery_Line := To_Unbounded_String (Get_Line (File));
         end if;
         Close (File);
      exception
         when others =>
            if Is_Open (File) then Close (File); end if;
            return;
      end;

      -- 2. Verify primary line's parity
      declare
         S_Primary : constant String := Ada.Strings.Fixed.Trim (To_String (Primary_Line), Ada.Strings.Both);
         P_Marker : constant String := ", ""parity"": """;
         Marker_Idx : constant Integer := Index (S_Primary, P_Marker);
      begin
         if Marker_Idx > 0 then
            declare
               Part1 : constant String := S_Primary (S_Primary'First .. Marker_Idx - 1) & "}";
               Hash_Start : constant Integer := Marker_Idx + P_Marker'Length;
               -- The hash is always 64 hex characters for SHA256
               Hash_End : constant Integer := Hash_Start + 63;
               Calc_Hash : constant String := Hash (Part1);
            begin
               if Hash_End < S_Primary'Last and then 
                  S_Primary (Hash_End + 1 .. S_Primary'Last) = """}" and then
                  Calc_Hash = S_Primary (Hash_Start .. Hash_End) 
               then
                  Content (Content'First .. Content'First + S_Primary'Length - 1) := S_Primary;
                  Length := S_Primary'Length;
                  Success := True;
                  Verified := True;
               else
                  Put_Line ("[!] Primary telemetry parity check FAILED! Trying recovery...");
               end if;
            exception
               when others =>
                  Put_Line ("[!] Exception during primary parity verification.");
            end;
         end if;
      end;

      -- 3. Fallback to recovery if primary check failed
      if not Verified and then To_String (Recovery_Line) /= "" then
         declare
            S_Recovery : constant String := Ada.Strings.Fixed.Trim (To_String (Recovery_Line), Ada.Strings.Both);
            Rec_Prefix : constant String := "[RECOVERY_V1:";
            Prefix_Idx : constant Integer := Index (S_Recovery, Rec_Prefix);
         begin
            if Prefix_Idx > 0 then
               declare
                  Remaining : constant String := S_Recovery (Prefix_Idx + Rec_Prefix'Length .. S_Recovery'Last);
                  Colon_Idx : constant Integer := Index (Remaining, ":");
               begin
                  if Colon_Idx > 0 then
                     declare
                        B64_Str : constant String := Remaining (Remaining'First .. Colon_Idx - 1);
                        Hash_Str : constant String := Remaining (Colon_Idx + 1 .. Remaining'Last - 1);
                        Decoded_Str : constant String := Base64_Decode (B64_Str);
                     begin

                        if Decoded_Str /= "" then
                           declare
                              Calc_Hash : constant String := Hash (Decoded_Str);
                           begin
                              if Calc_Hash = Hash_Str then
                                 Content (Content'First .. Content'First + Decoded_Str'Length - 1) := Decoded_Str;
                                 Length := Decoded_Str'Length;
                                 Success := True;
                                 Put_Line ("[ok] Primary telemetry restored successfully from recovery parity footer!");
                                 
                                 -- SELF-PATCH: Rewrite healed file atomically!
                                 declare
                                    Tmp_Path : constant String := Path & ".tmp";
                                    Healed_File : File_Type;
                                    Ret : Interfaces.C.int;
                                    pragma Unreferenced (Ret);
                                    function rename (old_path, new_path : Interfaces.C.Strings.chars_ptr) return Interfaces.C.int;
                                    pragma Import (C, rename, "rename");
                                    C_Tmp : Interfaces.C.Strings.chars_ptr := Interfaces.C.Strings.New_String (Tmp_Path);
                                    C_Path : Interfaces.C.Strings.chars_ptr := Interfaces.C.Strings.New_String (Path);
                                 begin
                                    Create (Healed_File, Ada.Text_IO.Out_File, Tmp_Path);
                                    Put_Line (Healed_File, Decoded_Str);
                                    Put_Line (Healed_File, S_Recovery);
                                    Close (Healed_File);
                                    
                                    Ret := rename (C_Tmp, C_Path);
                                    Interfaces.C.Strings.Free (C_Tmp);
                                    Interfaces.C.Strings.Free (C_Path);
                                    Put_Line ("[ok] Self-patched corrupted data file atomically.");
                                 exception
                                    when others =>
                                       Put_Line ("[!] Self-patch execution failed.");
                                 end;
                              else
                                 Put_Line ("[!] Recovery parity footer checksum also failed.");
                              end if;
                           end;
                        end if;
                     end;
                  end if;
               end;
            end if;
         end;
      end if;

   end Verify_And_Heal_File;

end SMC_Integrity;
