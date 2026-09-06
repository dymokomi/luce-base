#!/bin/sh
# Prove the manifest example through both backends: a C source from the manifest, a
# prefixed export the C calls back, and an error code compared by identity.
# Usage: programs/manifest/check.sh [luce-base binary]
set -eu
cd "$(dirname "$0")/../.."
LB=${1:-./build/luce-base}
"$LB" build programs/manifest/main.lucb -o build/mf-check-c
"$LB" build programs/manifest/main.lucb --native -o build/mf-check
./build/mf-check-c > build/mf-check-c.out
./build/mf-check > build/mf-check.out
cmp -s build/mf-check.out build/mf-check-c.out || { echo "FAIL programs/manifest: backends disagree"; exit 1; }
printf '40\ntrue as planned\n0\n' | cmp -s - build/mf-check.out || { echo "FAIL programs/manifest: wrong output"; cat build/mf-check.out; exit 1; }
rm -f build/mf-check build/mf-check-c build/mf-check.out build/mf-check-c.out
echo "ok programs/manifest"
