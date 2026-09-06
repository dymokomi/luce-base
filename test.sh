#!/bin/sh
# The gate: unit tests in the seed's oracle when a seed is present; then the
# binary lexes, parses, and checks every sample and source file, builds and runs
# every sample with `main`, runs every module's tests, builds itself again to the
# same C, and rejects every program under samples/errors.
set -eu
cd "$(dirname "$0")"
# the seed's oracle is a second execution of every module test, while a seed is around
LUCB=${LUCB:-../luce-seed/build/lucb}
if [ -x "$LUCB" ]; then
    for f in src/*.lucb; do
        if grep -q '^test "' "$f"; then
            echo "== $f"
            "$LUCB" test "$f"
        fi
    done
fi
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
# the bootstrap: the compiler built from source builds itself again, and both
# generations must emit the same C for the compiler; the snapshot is only
# reported when it has drifted
echo "== bootstrap"
./build/luce-base build src/main.lucb --emit=c -o build/stage1.c
./build/luce-base build src/main.lucb -o build/stage2
./build/stage2 build src/main.lucb --emit=c -o build/stage2.c
cmp build/stage1.c build/stage2.c
if ! cmp -s build/stage1.c bootstrap/luce-base.c; then
    echo "note: bootstrap/luce-base.c differs from the current compiler; run tools/snapshot.sh"
fi
rm -f build/stage1.c build/stage2.c build/stage2
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
