import hashlib
import sys

def debug_parity(path):
    with open(path, 'rb') as f:
        data = f.read()
    
    line = data.split(b'\n')[0]
    marker = b', "parity": "'
    if marker not in line:
        print("Marker not found")
        return

    idx = line.find(marker)
    part1 = line[:idx] + b'}'
    expected_hash = line[idx + len(marker):-2].decode('utf-8')
    
    calc_hash = hashlib.sha256(part1).hexdigest()
    
    print(f"Part1 length: {len(part1)}")
    print(f"Part1 ends with: {part1[-20:]!r}")
    print(f"Expected:   {expected_hash}")
    print(f"Calculated: {calc_hash}")
    
    if calc_hash == expected_hash:
        print("MATCH!")
    else:
        print("MISMATCH!")
        # Try without the closing brace?
        part1_alt = line[:idx]
        calc_hash_alt = hashlib.sha256(part1_alt).hexdigest()
        print(f"Calculated (no brace): {calc_hash_alt}")

if __name__ == "__main__":
    debug_parity("/usr/local/EnvironmentalAwareReferentialUnit/EARU_data.dat")
