#!/bin/sh
# Prove the freestanding example: no shim, the program's own `_start`, one line written
# through the kernel.
# Usage: programs/freestanding/check.sh [luce-base binary]
set -eu
cd "$(dirname "$0")/../.."
LB=${1:-./build/luce-base}
"$LB" build programs/freestanding/main.lucb --native --freestanding -o build/fs-check
./build/fs-check > build/fs-check.out
grep -q "^freestanding$" build/fs-check.out || { echo "FAIL programs/freestanding: wrong output"; cat build/fs-check.out; exit 1; }
rm -f build/fs-check build/fs-check.out
echo "ok programs/freestanding"
