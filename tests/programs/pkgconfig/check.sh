#!/bin/sh
# Prove `pkg_config` in the manifest: the library's flags come from pkg-config, through
# both backends. A host without pkg-config or SDL3 cannot run the whole gate, and the gate
# says so and fails: a green gate means every check ran.
# Usage: tests/programs/pkgconfig/check.sh [luce-base binary]
set -eu
cd "$(dirname "$0")/../../.."
LB=${1:-./build/luce-base}
if ! command -v pkg-config > /dev/null 2>&1; then
    echo "FAIL tests/programs/pkgconfig: pkg-config is not installed on this host (brew install pkgconf, or the distribution's pkgconf); the gate cannot run in full"
    exit 1
fi
if ! pkg-config --exists sdl3; then
    echo "FAIL tests/programs/pkgconfig: pkg-config does not know sdl3 on this host (brew install sdl3, or the distribution's SDL3 development package); the gate cannot run in full"
    exit 1
fi
"$LB" build tests/programs/pkgconfig/main.lucb -o build/pkg-check-c
"$LB" build tests/programs/pkgconfig/main.lucb --native -o build/pkg-check
./build/pkg-check-c > build/pkg-check-c.out
./build/pkg-check > build/pkg-check.out
cmp -s build/pkg-check.out build/pkg-check-c.out || { echo "FAIL tests/programs/pkgconfig: backends disagree"; exit 1; }
grep -q '^SDL 3\.' build/pkg-check.out || { echo "FAIL tests/programs/pkgconfig: wrong version"; cat build/pkg-check.out; exit 1; }
rm -f build/pkg-check build/pkg-check-c build/pkg-check.out build/pkg-check-c.out
echo "ok tests/programs/pkgconfig"
