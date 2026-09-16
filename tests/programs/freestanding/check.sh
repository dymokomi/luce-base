#!/bin/sh
# Prove the freestanding example: no shim, the program's own `_start`, one line written
# through the kernel.
# Usage: tests/programs/freestanding/check.sh [luce-base binary]
set -eu
cd "$(dirname "$0")/../../.."
LB=${1:-./build/luce-base}
# the arm64 block of main.lucb speaks to the macOS kernel; arm64 Linux has its own program
case "$(tools/host.sh)" in arm64-linux) program=arm64_linux.lucb;; *) program=main.lucb;; esac
"$LB" build "tests/programs/freestanding/$program" --native --freestanding -o build/fs-check
./build/fs-check > build/fs-check.out
grep -q "^freestanding$" build/fs-check.out || { echo "FAIL tests/programs/freestanding: wrong output"; cat build/fs-check.out; exit 1; }
rm -f build/fs-check build/fs-check.out
echo "ok tests/programs/freestanding"
