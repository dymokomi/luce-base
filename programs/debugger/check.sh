#!/bin/sh
# Prove the debugger: build luce-base-d natively, run the sample under it with a
# scripted session, and compare the transcript.
# Usage: programs/debugger/check.sh [luce-base binary]
set -eu
cd "$(dirname "$0")/../.."
LB=${1:-./build/luce-base}
"$LB" build programs/debugger/main.lucb --native -o build/luce-base-d
./build/luce-base-d programs/debugger/sample.lucb < programs/debugger/check.commands > build/debugger-check.out
if ! cmp -s build/debugger-check.out programs/debugger/check.out; then
    echo "FAIL: the transcript"; cat build/debugger-check.out; exit 1
fi
rm -f build/luce-base-d build/debugger-check.out programs/debugger/sample.lucb.debug
echo "ok programs/debugger"
