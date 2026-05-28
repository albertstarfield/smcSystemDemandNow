import hashlib
import sys

def check_parity(path):
    with open(path, 'r') as f:
        line = f.readline().strip()
    
    if ', "parity": "' not in line:
        print("Parity marker not found")
        return

    part1_str, rest = line.split(', "parity": "', 1)
    part1 = part1_str + "}"
    expected_hash = rest.split('"', 1)[0]
    
    calc_hash = hashlib.sha256(part1.encode('utf-8')).hexdigest()
    
    print(f"Part1: {part1[-50:]}")
    print(f"Expected: {expected_hash}")
    print(f"Calculated: {calc_hash}")
    
    if calc_hash == expected_hash:
        print("MATCH!")
    else:
        print("MISMATCH!")

if __name__ == "__main__":
    check_parity("/usr/local/EnvironmentalAwareReferentialUnit/EARU_data.dat")
