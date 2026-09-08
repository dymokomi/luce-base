#!/bin/sh
# Prove the Metal example: build it natively against Metal and the Objective-C runtime,
# run a GPU computation, and check the squares it reads back. Skips where there is no GPU.
# Usage: tests/programs/metal/check.sh [luce-base binary]
set -eu
cd "$(dirname "$0")/../../.."
LB=${1:-./build/luce-base}
[ "$(uname -s)" = Darwin ] || { echo "skip tests/programs/metal: Metal is macOS only"; exit 0; }
"$LB" build tests/programs/metal/main.lucb --native -lobjc -framework Foundation -framework Metal -o build/metal-check
OUT=$(./build/metal-check 8)
case "$OUT" in
    "no Metal device"*) echo "FAIL tests/programs/metal: this Mac has no Metal device; the gate cannot run in full"; rm -f build/metal-check; exit 1;;
    "squared on the GPU: 1 4 9 16 25 36 49 64") ;;
    *) echo "FAIL tests/programs/metal: $OUT"; rm -f build/metal-check; exit 1;;
esac
rm -f build/metal-check
echo "ok tests/programs/metal"
