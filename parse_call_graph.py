import sys
import re

def parse_graph(text):
    lines = text.strip().split('\n')
    
    # 1. Find total samples
    total_samples = 0
    for line in lines:
        line = line.strip()
        if line.startswith("Call graph:"):
            continue
        parts = line.split()
        if not parts:
            continue
        if parts[0].isdigit() and "Thread_" in line:
            total_samples += int(parts[0])
            
    if total_samples == 0:
        return "Could not determine total samples."

    output = []
    output.append(f"Total Samples: {total_samples}")
    output.append("=" * 60)
    
    # 2. Parse and format lines
    for line in lines:
        if line.strip() == "Call graph:" or not line.strip():
            continue
            
        # Count indents to maintain tree structure
        # The structure looks like: "    +     ! 2229 system__soft_links__tasking__timed_delay_t ..."
        
        # find where the number starts
        m = re.search(r'\b\d+\b', line)
        if not m:
            output.append(line)
            continue
            
        start_idx = m.start()
        prefix = line[:start_idx]
        content = line[start_idx:]
        
        parts = content.split()
        if not parts:
            continue
            
        try:
            samples = int(parts[0])
            pct = (samples / total_samples) * 100
            
            # Reconstruct the function name
            func_name = " ".join(parts[1:])
            
            # Format: [PREFIX] [PCT%] [SAMPLES] Function
            pct_str = f"{pct:5.1f}%"
            samp_str = f"({samples:4d})"
            output.append(f"{prefix}{pct_str} {samp_str} {func_name}")
            
        except ValueError:
            # If it doesn't start with a number, just print it as is
            output.append(line)
            
    return "\n".join(output)

if __name__ == "__main__":
    with open('graph.txt', 'r') as f:
        text = f.read()
    print(parse_graph(text))
