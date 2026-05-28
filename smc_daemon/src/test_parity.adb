with Ada.Text_IO; use Ada.Text_IO;
with GNAT.SHA256;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;

procedure Test_Parity is
   S_Primary : constant String := "{""time"": 1779953078.0, ""parity"": ""59362488addda6d1483d0754d6b3149d811dcdce5f0d8da1581211955a2a4cda""}";
   P_Marker : constant String := ", ""parity"": """;
   Marker_Idx : constant Integer := Index (S_Primary, P_Marker);
begin
   Put_Line ("S_Primary'Last: " & Integer'Image (S_Primary'Last));
   Put_Line ("Marker_Idx: " & Integer'Image (Marker_Idx));
   
   if Marker_Idx > 0 then
      declare
         Part1 : constant String := S_Primary (S_Primary'First .. Marker_Idx - 1) & "}";
         Hash_Start : constant Integer := Marker_Idx + P_Marker'Length;
         Hash_End : constant Integer := S_Primary'Last - 2;
         Calc_Hash : constant String := GNAT.SHA256.Digest (Part1);
      begin
         Put_Line ("Part1: " & Part1);
         Put_Line ("Hash_Start: " & Integer'Image (Hash_Start));
         Put_Line ("Hash_End: " & Integer'Image (Hash_End));
         Put_Line ("Extracted Hash: " & S_Primary (Hash_Start .. Hash_End));
         Put_Line ("Calculated Hash: " & Calc_Hash);
         
         if Calc_Hash = S_Primary (Hash_Start .. Hash_End) then
            Put_Line ("MATCH!");
         else
            Put_Line ("MISMATCH!");
         end if;
      end;
   else
      Put_Line ("Marker not found!");
   end if;
end Test_Parity;
