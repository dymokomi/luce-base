#!/bin/sh
# The gate: unit tests in the seed's oracle; then the binary lexes, parses, and
# checks every sample and source file, builds and runs every sample with `main`,
# runs every module's tests, builds itself twice to the same C, and rejects
# every program under samples/errors.
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
# programs with `main` build and print what their `.expect` files say
for f in samples/*.expect; do
    src="${f%.expect}.lucb"
    echo "== build $src"
    ./build/luce-base build "$src" -o build/sample
    ./build/sample > build/sample.out
    cmp build/sample.out "$f"
done
rm -f build/sample build/sample.out
# every module's tests run through the binary too
for f in src/*.lucb; do
    if grep -q '^test "' "$f"; then
        echo "== test $f"
        ./build/luce-base test "$f" | tail -1
    fi
done
# the bootstrap: the seed-built compiler builds itself, and that one builds itself again;
# both generations must emit the same C for the compiler
echo "== bootstrap"
./build/luce-base build src/main.lucb -o build/B2
./build/B2 build src/main.lucb --emit=c -o build/B2.c
./build/B2 build src/main.lucb -o build/B3
./build/B3 build src/main.lucb --emit=c -o build/B3.c
cmp build/B2.c build/B3.c
rm -f build/B2.c build/B3.c
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
