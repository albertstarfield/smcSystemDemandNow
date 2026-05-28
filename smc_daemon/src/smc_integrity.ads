package SMC_Integrity is

   -- Perform SHA256 hashing on a string
   function Hash (Input : String) return String;

   -- Decode Base64 data to string
   function Base64_Decode (Data : String) return String;

   -- Encode String to Base64
   function Base64_Encode (Data : String) return String;

   -- Verifies the file at Path. If corrupted but recovery matches, 
   -- self-patches the file and returns the healed content.
   -- Returns Success = True if verified/restored, False otherwise.
   procedure Verify_And_Heal_File (
      Path    : String;
      Content : out String;
      Length  : out Natural;
      Success : out Boolean
   );

end SMC_Integrity;
