#!/bin/sh
# The embedding timing tool builds and runs: a check on top of a kept library is faster than
# a check alone, which parses and checks the standard modules too (docs/EMBEDDING.md).
# Usage: tests/programs/embed_timing/check.sh [luce-base binary]
set -eu
cd "$(dirname "$0")/../../.."
LB=${1:-./build/luce-base}
"$LB" build tests/programs/embed_timing/main.lucb --native -o build/embed-timing
out=$(./build/embed-timing tests/embed/root clean 50)
rm -f build/embed-timing
alone=$(echo "$out" | sed -n 's/^check_root alone: *\([0-9]*\) us.*/\1/p')
warm=$(echo "$out" | sed -n 's/^Library.check: *\([0-9]*\) us.*/\1/p')
if [ -z "$alone" ] || [ -z "$warm" ] || [ $((warm * 10)) -ge "$alone" ]; then
    echo "FAIL tests/programs/embed_timing: a check on a kept library is not ten times faster"; echo "$out"; exit 1
fi
echo "ok tests/programs/embed_timing ($warm us on a library, $alone us alone)"
