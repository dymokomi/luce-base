#!/bin/sh
# A trap in a method of an imported module names that module's file and line, and
# `luce.file` there names it too, the same through both backends (§11.5).
# Usage: tests/programs/trap_positions/check.sh [luce-base binary]
set -eu
cd "$(dirname "$0")/../../.."
LB=${1:-./build/luce-base}
for backend in --native --backend=c; do
    "$LB" build tests/programs/trap_positions/main.lucb $backend -o build/trap-positions
    ./build/trap-positions > build/trap-positions.out 2> build/trap-positions.err && { echo "FAIL tests/programs/trap_positions $backend: no trap"; exit 1; }
    [ "$(cat build/trap-positions.out)" = "tests/programs/trap_positions/helper.lucb" ] || { echo "FAIL tests/programs/trap_positions $backend: luce.file is [$(cat build/trap-positions.out)]"; exit 1; }
    [ "$(cat build/trap-positions.err)" = "trap: tests/programs/trap_positions/helper.lucb:13:9: index out of bounds" ] || { echo "FAIL tests/programs/trap_positions $backend: [$(cat build/trap-positions.err)]"; exit 1; }
done
rm -f build/trap-positions build/trap-positions.out build/trap-positions.err
echo "ok tests/programs/trap_positions"
