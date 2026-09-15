#!/bin/bash
# Prove `luce-base bind`: sample.h generates exactly the checked-in sample.lucb and
# shims.c, and the program built on them, with sample.c behind, prints what C computes.
# Usage: tests/programs/bind/check.sh [luce-base binary]
set -eu
cd "$(dirname "$0")/../../.."
LB=${1:-./build/luce-base}
mkdir -p build/bind-check
"$LB" bind tests/programs/bind/sample.h --recipe tests/programs/bind/sample.recipe -o build/bind-check/sample.lucb --shims build/bind-check/shims.c 2> build/bind-check/report.txt
if ! cmp -s build/bind-check/sample.lucb tests/programs/bind/sample.lucb; then
    echo "FAIL tests/programs/bind: the generated module differs from the checked-in sample.lucb"; diff build/bind-check/sample.lucb tests/programs/bind/sample.lucb | head -20; exit 1
fi
# the shims include the header by its path from where they are written; the rest is the same
if ! cmp -s <(grep -v '^#include' build/bind-check/shims.c) <(grep -v '^#include' tests/programs/bind/shims.c); then
    echo "FAIL tests/programs/bind: the generated shims differ from the checked-in shims.c"; diff build/bind-check/shims.c tests/programs/bind/shims.c | head; exit 1
fi
grep -q 'sample_bits' build/bind-check/report.txt || { echo "FAIL tests/programs/bind: the bit-field struct was not reported"; cat build/bind-check/report.txt; exit 1; }
"$LB" build tests/programs/bind/main.lucb --native -o build/bind-check/proof
./build/bind-check/proof > build/bind-check/out.txt
cat > build/bind-check/expected.txt <<'END'
version 3 name sample library scale 1.5 flags 3 limit 64 offset -7
shapes 0 4 4 5 anonymous 11
name proof counter 41
walk 6 over 3 points
sum 42,53
filled 5: 0 3 12
long 700 twice 42 square 81
described 5,6 f=2.5 shape=4 nested visit=5
real 0.25 packed 5 bytes
packed value 1001
END
cmp build/bind-check/out.txt build/bind-check/expected.txt || { echo "FAIL tests/programs/bind: the output"; cat build/bind-check/out.txt; exit 1; }
if ./build/bind-check/proof abort > /dev/null 2>&1; then
    echo "FAIL tests/programs/bind: sample_abort returned"; exit 1
fi
rm -rf build/bind-check
echo "ok tests/programs/bind"
