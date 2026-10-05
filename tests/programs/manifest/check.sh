#!/bin/sh
# Prove the manifest example through both backends: a C source from the manifest, a
# prefixed export the C calls back, and an error code compared by identity.
# Usage: tests/programs/manifest/check.sh [luce-base binary]
set -eu
cd "$(dirname "$0")/../../.."
LB=${1:-./build/luce-base}
"$LB" build tests/programs/manifest/main.lucb -o build/mf-check-c
"$LB" build tests/programs/manifest/main.lucb --native -o build/mf-check
./build/mf-check-c > build/mf-check-c.out
./build/mf-check > build/mf-check.out
cmp -s build/mf-check.out build/mf-check-c.out || { echo "FAIL tests/programs/manifest: backends disagree"; exit 1; }
printf '40\ntrue as planned\n0\n' | cmp -s - build/mf-check.out || { echo "FAIL tests/programs/manifest: wrong output"; cat build/mf-check.out; exit 1; }
rm -f build/mf-check build/mf-check-c build/mf-check.out build/mf-check-c.out
# a key set twice in one element is refused at the second, never silently taken
rm -rf build/mf-twice && mkdir -p build/mf-twice/src
printf '#prisma 4.0\ndef package "twice" {\n    str[] public = ["a"]\n    str[] public = ["a"]\n}\n' > build/mf-twice/package.prisma
printf 'pub func one() -> i64:\n    return 1\n' > build/mf-twice/src/a.lucb
got=$("$LB" check build/mf-twice/src/a.lucb 2>&1) && { echo "FAIL tests/programs/manifest: a key set twice was accepted"; exit 1; }
case "$got" in
    *"package.prisma:4:11: \`public\` is set twice in one element; it was set on line 3"*) ;;
    *) echo "FAIL tests/programs/manifest: a key set twice: [$got]"; exit 1;;
esac
rm -rf build/mf-twice
echo "ok tests/programs/manifest"
