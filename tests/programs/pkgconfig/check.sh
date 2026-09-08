#!/bin/sh
# Prove `pkg_config` in the manifest: the library's flags come from pkg-config, through
# both backends. A host without pkg-config or SDL3 skips, and says so.
# Usage: tests/programs/pkgconfig/check.sh [luce-base binary]
set -eu
cd "$(dirname "$0")/../../.."
LB=${1:-./build/luce-base}
if ! command -v pkg-config > /dev/null 2>&1 || ! pkg-config --exists sdl3; then
    echo "skip tests/programs/pkgconfig: pkg-config or sdl3 is not on this host"
    exit 0
fi
"$LB" build tests/programs/pkgconfig/main.lucb -o build/pkg-check-c
"$LB" build tests/programs/pkgconfig/main.lucb --native -o build/pkg-check
./build/pkg-check-c > build/pkg-check-c.out
./build/pkg-check > build/pkg-check.out
cmp -s build/pkg-check.out build/pkg-check-c.out || { echo "FAIL tests/programs/pkgconfig: backends disagree"; exit 1; }
grep -q '^SDL 3\.' build/pkg-check.out || { echo "FAIL tests/programs/pkgconfig: wrong version"; cat build/pkg-check.out; exit 1; }
rm -f build/pkg-check build/pkg-check-c build/pkg-check.out build/pkg-check-c.out
echo "ok tests/programs/pkgconfig"
