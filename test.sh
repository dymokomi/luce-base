#!/bin/sh
# The gate: unit tests in the seed's oracle, then the binary lexes, parses, and
# checks every sample and source file, and rejects every program under samples/errors.
set -eu
cd "$(dirname "$0")"
LUCB=${LUCB:-../luce-seed/build/lucb}
for f in src/*.lucb; do
    if grep -q '^test "' "$f"; then
        echo "== $f"
        "$LUCB" test "$f"
    fi
done
./build.sh
for f in samples/*.lucb src/*.lucb; do
    echo "== $f"
    ./build/luce-base lex "$f" > /dev/null
    ./build/luce-base parse "$f" > /dev/null
    ./build/luce-base check "$f"
done
# every rejected program must be rejected for the stated reason
for f in samples/errors/*.lucb; do
    want=$(sed -n 's/^# error: //p' "$f")
    got=$(./build/luce-base check "$f" 2>&1 || true)
    case "$got" in
        *"$want"*) echo "== $f (rejected)";;
        *) echo "FAIL $f: expected [$want], got [$got]"; exit 1;;
    esac
done
echo "ok"
