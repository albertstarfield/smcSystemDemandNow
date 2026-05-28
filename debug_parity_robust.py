import hashlib
import sys

def debug_parity_robust(path):
    with open(path, 'rb') as f:
        data = f.read()
    
    # Try to find the line that looks like our JSON
    lines = data.split(b'\n')
    for line in lines:
        line = line.strip()
        if not line: continue
        
        marker = b', "parity": "'
        if marker not in line:
            print(f"Marker not found in line: {line[:50]!r}...")
            continue

        idx = line.find(marker)
        part1 = line[:idx] + b'}'
        
        # Extracted hash (64 chars)
        hash_start = idx + len(marker)
        extracted_hash = line[hash_start:hash_start+64].decode('utf-8')
        
        calc_hash = hashlib.sha256(part1).hexdigest()
        
        print(f"Line starts with: {line[:50]!r}")
        print(f"Part1 ends with:  {part1[-20:]!r}")
        print(f"Extracted:  {extracted_hash}")
        print(f"Calculated: {calc_hash}")
        
        if calc_hash == extracted_hash:
            print("MATCH!")
        else:
            print("MISMATCH!")
            # Try some variations
            # 1. No closing brace?
            part1_alt = line[:idx]
            if hashlib.sha256(part1_alt).hexdigest() == extracted_hash:
                print("MATCH (without brace)!")
            # 2. Space before brace?
            part1_alt2 = line[:idx] + b' }'
            if hashlib.sha256(part1_alt2).hexdigest() == extracted_hash:
                print("MATCH (space before brace)!")

if __name__ == "__main__":
    debug_parity_robust("/usr/local/EnvironmentalAwareReferentialUnit/EARU_data.dat")
