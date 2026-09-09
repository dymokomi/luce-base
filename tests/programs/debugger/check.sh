#!/bin/sh
# Prove the debugger: build luce-base-d natively, run the sample under it with a
# scripted session, and compare the transcript.
# Usage: tests/programs/debugger/check.sh [luce-base binary]
set -eu
cd "$(dirname "$0")/../../.."
LB=${1:-./build/luce-base}
"$LB" build tests/programs/debugger/main.lucb --native -o build/luce-base-d
./build/luce-base-d tests/programs/debugger/sample.lucb < tests/programs/debugger/check.commands > build/debugger-check.out
if ! cmp -s build/debugger-check.out tests/programs/debugger/check.out; then
    echo "FAIL: the transcript"; cat build/debugger-check.out; exit 1
fi
rm -f build/luce-base-d build/debugger-check.out tests/programs/debugger/sample.lucb.debug tests/programs/debugger/sample.lucb.debug.debug
rm -rf tests/programs/debugger/sample.lucb.debug.dSYM
echo "ok tests/programs/debugger"
