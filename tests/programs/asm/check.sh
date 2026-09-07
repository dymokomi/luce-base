#!/bin/sh
# Prove the inline-assembly example: build it through both backends and check that the
# hand-written arm64 agrees between them.
# Usage: tests/programs/asm/check.sh [luce-base binary]
set -eu
cd "$(dirname "$0")/../../.."
LB=${1:-./build/luce-base}
"$LB" build tests/programs/asm/main.lucb --native -o build/asm-check
"$LB" build tests/programs/asm/main.lucb -o build/asm-check-c
./build/asm-check > build/asm-check.out
./build/asm-check-c > build/asm-check-c.out
cmp -s build/asm-check.out build/asm-check-c.out || { echo "FAIL tests/programs/asm: backends disagree"; exit 1; }
grep -q "add(40, 2) = 42" build/asm-check.out || { echo "FAIL tests/programs/asm: wrong result"; cat build/asm-check.out; exit 1; }
grep -q "popcount(255) = 8" build/asm-check.out || { echo "FAIL tests/programs/asm: wrong popcount"; exit 1; }
grep -q "double_and_add(19, 2) = 40" build/asm-check.out || { echo "FAIL tests/programs/asm: wrong reg operands"; exit 1; }
rm -f build/asm-check build/asm-check-c build/asm-check.out build/asm-check-c.out
echo "ok tests/programs/asm"
