#!/bin/sh
# The gate: unit tests in the seed's oracle, then the binary on every sample.
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
for f in samples/*.lucb; do
    echo "== lex $f"
    ./build/luce-base lex "$f" > /dev/null
done
echo "ok"
