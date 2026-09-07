#!/bin/sh
# The gate: the binary lexes, parses, and checks every sample and source file,
# builds and runs every sample with `main` through both backends, runs every
# module's tests through both backends, builds itself again to the same C, and
# rejects every program under tests/samples/errors. The C and native backends are the
# two executions that must agree.
set -eu
cd "$(dirname "$0")"
./build.sh
for f in tests/samples/*.lucb src/*.lucb src/*/*.lucb tests/programs/*/*.lucb; do
    echo "== $f"
    ./build/luce-base lex "$f" > /dev/null
    ./build/luce-base parse "$f" > /dev/null
    ./build/luce-base check "$f"
done
# programs with `main` build and print what their `.expect` files say
for f in tests/samples/*.expect; do
    src="${f%.expect}.lucb"
    echo "== build $src"
    ./build/luce-base build "$src" -o build/sample
    ./build/sample > build/sample.out
    cmp build/sample.out "$f"
done
rm -f build/sample build/sample.out
# every module's tests run through both backends: the two executions must agree
for f in src/*/*.lucb tests/programs/*/*.lucb; do
    if grep -q '^test "' "$f"; then
        echo "== test $f"
        out=$(./build/luce-base test "$f") || { echo "$out" | tail -3; exit 1; }
        echo "$out" | tail -1
        out=$(./build/luce-base test "$f" --native) || { echo "$out" | tail -3; exit 1; }
        echo "$out" | tail -1
    fi
done
# every sample with `main` runs natively too
for f in tests/samples/*.expect; do
    src="${f%.expect}.lucb"
    echo "== native $src"
    ./build/luce-base build "$src" --native -o build/sample
    ./build/sample > build/sample.out
    cmp build/sample.out "$f"
done
rm -f build/sample build/sample.out
# a library and its header, through both backends: a C program includes the header, links
# the archive, and prints what tests/samples/exports_use.out says
for native in "" "--native"; do
    echo "== lib tests/samples/exports.lucb $native"
    ./build/luce-base build tests/samples/exports.lucb --lib $native -o build/pixels
    cc -std=c11 -Wall -Werror -Ibuild tests/samples/exports_use.c build/pixels.a -o build/use_pixels
    ./build/use_pixels > build/use_pixels.out
    cmp build/use_pixels.out tests/samples/exports_use.out
done
rm -f build/pixels.a build/pixels.h build/use_pixels build/use_pixels.out
# the diagnostic profile, through both backends: filled `---` storage, quarantined releases
for native in "" "--native"; do
    echo "== diagnostic tests/samples/diagnostic.lucb $native"
    ./build/luce-base build tests/samples/diagnostic.lucb --profile diagnostic $native -o build/sample
    ./build/sample > build/sample.out
    cmp build/sample.out tests/samples/diagnostic.out
done
rm -f build/sample build/sample.out
# the proving programs build natively and are driven from outside
for f in tests/programs/*/check.sh; do
    "$f"
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
# the seed named in bootstrap/SEED builds this compiler from source, and the compiler it
# builds emits the same C for itself as the snapshot-built one: the seed stays a real start
if [ -x ../luce-seed/build/lucb ]; then
    echo "== seed $(cat bootstrap/SEED)"
    ../luce-seed/build/lucb build src/main.lucb --release -o build/seed-stage0
    ./build/seed-stage0 build src/main.lucb --emit=c -o build/seed1.c
    ./build/luce-base build src/main.lucb --emit=c -o build/stage1.c
    cmp build/stage1.c build/seed1.c
    rm -f build/seed-stage0 build/seed1.c build/stage1.c
fi
# the native backend closes its own loop: the compiler built natively must emit the
# same C and the same assembly for the compiler as the C-built one
./build/luce-base build src/main.lucb --native -o build/native
./build/native build src/main.lucb --emit=c -o build/native1.c
./build/luce-base build src/main.lucb --emit=c -o build/stage1.c
cmp build/stage1.c build/native1.c
./build/luce-base build src/main.lucb --native --emit=asm -o build/stage1.s
./build/native build src/main.lucb --native --emit=asm -o build/native1.s
cmp build/stage1.s build/native1.s
rm -f build/native build/native1.c build/stage1.c build/stage1.s build/native1.s
# every rejected program must be rejected for the stated reason
# the checker's warnings, and their exact text, for the sample that exercises each
if ! ./build/luce-base check tests/samples/warnings.lucb -W 2>&1 | cmp -s - tests/samples/warnings.warnings; then
    echo "FAIL tests/samples/warnings.lucb: warnings differ from tests/samples/warnings.warnings"
    ./build/luce-base check tests/samples/warnings.lucb -W 2>&1 | diff - tests/samples/warnings.warnings | head -10
    exit 1
fi
for f in tests/samples/errors/*.lucb; do
    want=$(LC_ALL=C sed -n 's/^# error: //p' "$f")
    got=$(./build/luce-base check "$f" 2>&1 || true)
    case "$got" in
        *"$want"*) echo "== $f (rejected)";;
        *) echo "FAIL $f: expected [$want], got [$got]"; exit 1;;
    esac
done
# the conformance suite: a positive and a negative program for each point of the specification
tests/conformance/run.sh
echo "ok"
