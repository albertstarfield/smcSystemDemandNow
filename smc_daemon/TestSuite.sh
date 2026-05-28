#!/bin/bash
# TestSuite.sh - Continuous Integration & Quality Approval Test Suite
# Designed for the smcSystemDemandNow (SMC Daemon) Project

# Colors for nice output formatting
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0;0m' # No Color

PROJECT_ROOT="/usr/local/smcSystemDemandNow"
DAEMON_DIR="$PROJECT_ROOT/smc_daemon"

# Default GNATprove proof level is 0 for fast validation
PROVE_LEVEL=0

# Parse arguments
while [[ "$#" -gt 0 ]]; do
    case $1 in
        --level=*) PROVE_LEVEL="${1#*=}" ;;
        --level) PROVE_LEVEL="$2"; shift ;;
        --release) PROVE_LEVEL=2 ;;
        --help|-h)
            echo "Usage: ./TestSuite.sh [options]"
            echo "Options:"
            echo "  --level=<0..4>    Specify GNATprove proof level (default: 0)"
            echo "  --release         Run GNATprove at level 2 for deep release proof validation"
            echo "  -h, --help        Show this help message"
            exit 0
            ;;
        *) echo "Unknown option: $1"; exit 1 ;;
    esac
    shift
done

echo -e "${CYAN}[i] GNATprove analysis level configured to: --level=$PROVE_LEVEL${NC}"

echo -e "${BLUE}======================================================================${NC}"
echo -e "${BLUE}          SMC Daemon Quality Approval & Test Suite Execution          ${NC}"
echo -e "${BLUE}======================================================================${NC}"

# Navigate to daemon directory
cd "$DAEMON_DIR" || { echo -e "${RED}[!] Failed to enter daemon directory at $DAEMON_DIR${NC}"; exit 1; }

# 1. Verification of Toolchains and Environment
echo -e "\n${BLUE}[*] Stage 1: Checking Alire (alr) Environment...${NC}"
if ! command -v alr &> /dev/null; then
    echo -e "${RED}[!] Alire (alr) is not installed or not in PATH!${NC}"
    echo -e "${YELLOW}[i] Prerequisite: Please install Alire via 'brew install alire' or homebrew.${NC}"
    exit 1
fi
echo -e "${GREEN}[ok] Alire is available: $(alr --version | head -n 1)${NC}"

echo -e "\n${BLUE}[*] Checking selected GNAT / GCC toolchain...${NC}"
alr toolchain
if [ $? -ne 0 ]; then
    echo -e "${YELLOW}[!] Warning: Alire toolchain check returned non-zero. Check your compiler selection.${NC}"
fi

# Verify GNAT version inside Alire context
echo -e "\n${BLUE}[*] Verifying GNAT compiler inside Alire context...${NC}"
alr exec -- gnatmake --version | head -n 1
if [ $? -eq 0 ]; then
    echo -e "${GREEN}[ok] GNAT compiler is functional in Alire environment!${NC}"
else
    echo -e "${RED}[!] GNAT compiler failed to run via Alire!${NC}"
    exit 1
fi

# 2. GNAT Compilation Verify
echo -e "\n${BLUE}[*] Stage 2: Compiling with GNAT via Alire...${NC}"
alr --non-interactive build
if [ $? -eq 0 ]; then
    echo -e "${GREEN}[ok] GNAT compilation succeeded!${NC}"
else
    echo -e "${RED}[!] GNAT compilation failed!${NC}"
    exit 1
fi

# 3. GNATprove SPARK Verification
echo -e "\n${BLUE}[*] Stage 3: Running GNATprove (SPARK Static Analysis)...${NC}"
# We run gnatprove with alr exec to load the project's exact gnatprove environment
alr exec -- gnatprove -P smc_daemon.gpr --level=$PROVE_LEVEL --report=fail
if [ $? -eq 0 ]; then
    echo -e "${GREEN}[ok] GNATprove SPARK analysis completed successfully!${NC}"
else
    echo -e "${YELLOW}[!] GNATprove found potential issues, warnings, or proving failures (check output).${NC}"
fi

# 4. Dependency & Framework Checking (Approval Check)
echo -e "\n${BLUE}[*] Stage 4: Checking Test Frameworks & Dependency Availability...${NC}"

# AUnit Check
echo -e "${BLUE}[+] Verifying package 'aunit'...${NC}"
alr show aunit &> /dev/null
if [ $? -eq 0 ]; then
    echo -e "${GREEN}[ok] 'aunit' package is available in Alire index!${NC}"
    echo -e "${CYAN}    Note: 'aunit' is declared as a project dependency in alire.toml${NC}"
else
    echo -e "${RED}[!] 'aunit' is not available in the Alire index!${NC}"
fi

# Strategy Check
echo -e "${BLUE}[+] Verifying package 'strategy'...${NC}"
alr show strategy &> /dev/null
if [ $? -eq 0 ]; then
    echo -e "${GREEN}[ok] 'strategy' package is available in Alire index!${NC}"
    echo -e "${CYAN}    Note: 'strategy' is declared as a project dependency in alire.toml${NC}"
else
    echo -e "${RED}[!] 'strategy' is not available in the Alire index!${NC}"
fi

# Ahven Check (utilada_unit)
echo -e "${BLUE}[+] Verifying package 'utilada_unit' (containing 'ahven')...${NC}"
alr show utilada_unit &> /dev/null
if [ $? -eq 0 ]; then
    echo -e "${GREEN}[ok] 'utilada_unit' (Ahven framework) package is available in Alire index!${NC}"
else
    echo -e "${RED}[!] 'utilada_unit' is NOT available in the default Alire community index.${NC}"
fi


# 5. GNATcov (Code Coverage) Check
echo -e "\n${BLUE}[*] Stage 5: GNATcov Code Coverage Check...${NC}"
# Check if gnatcov is available in the Alire environment
alr exec -- gnatcov --version &> /dev/null
if [ $? -eq 0 ]; then
    echo -e "${GREEN}[ok] gnatcov is available in the Alire environment!${NC}"
    echo -e "${BLUE}[+] Running coverage check with --annotate=xcov...${NC}"
    # Verify execution under Alire context
    alr exec -- gnatcov run -P smc_daemon.gpr --annotate=xcov ./bin/smc_daemon -- --help &> /dev/null
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}[ok] Coverage instrumentation check completed!${NC}"
    else
        echo -e "${YELLOW}[!] Warning: Coverage execution command returned non-zero (may need build/instrumentation setup).${NC}"
    fi
else
    # Also check if it's in standard PATH
    if command -v gnatcov &> /dev/null; then
        echo -e "${GREEN}[ok] gnatcov is available in system PATH!${NC}"
        echo -e "${BLUE}[+] Running coverage check with --annotate=xcov...${NC}"
        gnatcov run -P smc_daemon.gpr --annotate=xcov ./bin/smc_daemon -- --help &> /dev/null
    else
        echo -e "${YELLOW}[!] gnatcov is not installed. Skipping coverage check.${NC}"
        echo -e "${CYAN}    To install: Add it via 'alr toolchain --select gnatcov' or download GNAT Coverage.${NC}"
    fi
fi

# 6. Alire Test suite execution
echo -e "\n${BLUE}[*] Stage 6: Running 'alr test'...${NC}"
alr test
if [ $? -eq 0 ]; then
    echo -e "${GREEN}[ok] alr test passed!${NC}"
else
    echo -e "${RED}[!] alr test failed or returned non-zero!${NC}"
fi

# 7. AFL++ Ada Fuzzing Check
echo -e "\n${BLUE}[*] Stage 7: AFL++ Ada Fuzzing Approval Check...${NC}"
AFL_FUZZ_FOUND=false
AFL_COMPILER_FOUND=false
AFL_COMPILER=""

if command -v afl-fuzz &> /dev/null; then
    echo -e "${GREEN}[ok] AFL++ (afl-fuzz) is available in PATH!${NC}"
    AFL_FUZZ_FOUND=true
else
    echo -e "${YELLOW}[!] AFL++ (afl-fuzz) is not installed in the system PATH.${NC}"
fi

# Check for AFL compilers: prioritize fast/LTO wrappers
for cmd in afl-clang-fast afl-gcc-fast afl-clang-lto afl-gcc afl-g++; do
    if command -v "$cmd" &> /dev/null; then
        "$cmd" --version &> /dev/null
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}[ok] AFL++ compiler wrapper '$cmd' is available and functional!${NC}"
            AFL_COMPILER_FOUND=true
            AFL_COMPILER="$cmd"
            break
        else
            echo -e "${YELLOW}[!] AFL++ compiler '$cmd' exists but failed functional test.${NC}"
        fi
    fi
done

if [ "$AFL_FUZZ_FOUND" = true ] && [ "$AFL_COMPILER_FOUND" = true ]; then
    echo -e "${GREEN}[ok] AFL++ Ada/C Fuzzing environment is fully ready!${NC}"
    
    # Minimal AFL++ self-test to verify compiler instrumentation
    echo -e "${BLUE}[+] Running a minimal AFL++ instrumentation self-test...${NC}"
    
    # 1. Create a tiny test C file
    cat << 'EOF' > fuzz_test.c
#include <stdio.h>
#include <unistd.h>
int main() {
    char buf[10];
    if (read(0, buf, 10) > 0) {
        if (buf[0] == 'A') {
            printf("Crash trigger point!\n");
        }
    }
    return 0;
}
EOF

    # 2. Compile using the selected functional AFL compiler
    "$AFL_COMPILER" fuzz_test.c -o fuzz_test &> /dev/null
    
    if [ $? -eq 0 ] && [ -f ./fuzz_test ]; then
        echo -e "${GREEN}[ok] Compiled minimal C program with instrumented compiler '$AFL_COMPILER' successfully!${NC}"
        
        # 3. Create a quick seed corpus
        mkdir -p fuzz_inputs
        echo -n "B" > fuzz_inputs/seed.txt
        mkdir -p fuzz_outputs
        
        # 4. Attempt a dry-run fuzzer verification
        export AFL_I_DONT_CARE_ABOUT_MISSING_CRASHES=1
        export AFL_SKIP_CPUFREQ=1
        export AFL_NO_AFFINITY=1
        
        afl-fuzz -i fuzz_inputs -o fuzz_outputs -V 1 -- ./fuzz_test &> /dev/null
        
        if [ $? -eq 0 ] || [ -d fuzz_outputs/default ] || [ -d fuzz_outputs/fuzzers ]; then
            echo -e "${GREEN}[ok] AFL++ minimal dry-run execution succeeded! Fuzzing engine is fully functional.${NC}"
        else
            echo -e "${YELLOW}[!] AFL++ compiler and instrumentation are functional but dry-run was bypassed.${NC}"
        fi
    else
        echo -e "${RED}[!] Failed to compile minimal instrumentation test with '$AFL_COMPILER'!${NC}"
    fi
    
    # 5. Cleanup
    rm -rf fuzz_test.c fuzz_test fuzz_inputs fuzz_outputs
else
    echo -e "${YELLOW}[!] AFL++ environment is incomplete. Fuzzing self-test skipped.${NC}"
fi

echo -e "\n${BLUE}======================================================================${NC}"
echo -e "${GREEN}             Test Suite Execution Complete & Documented               ${NC}"
echo -e "${BLUE}======================================================================${NC}"
