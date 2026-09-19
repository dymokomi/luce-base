#!/bin/sh
# Measure how much of the compiler the test corpus exercises. It builds the compiler's own C
# (the host snapshot plus runtime) with gcov instrumentation, runs `check` over every test
# program and `build` over the samples, then reports line and branch coverage and the count of
# fully-cold functions grouped by module. Cold code is where a bug can hide untested -- aim
# fuzzing there. Read the cold list with judgement: the other-target backends (x86_64, wasm)
# are cold on an arm64 host because they run on their own targets, and a generic type's methods
# read cold per instantiation when a program never calls them. Needs gcov (a GCC/Clang
# toolchain); runs on Linux. Usage: tools/coverage.sh
set -eu
cd "$(dirname "$0")/.."
command -v gcov > /dev/null 2>&1 || { echo "coverage: no gcov on this host"; exit 1; }
host=$(tools/host.sh)
snapshot="bootstrap/luce-base-$host.c"
[ -f "$snapshot" ] || { echo "coverage: no snapshot $snapshot"; exit 1; }
CC=${CC:-cc}
mkdir -p build/cov
rm -f build/cov/*.gcda build/cov/*.gcno
echo "coverage: building the instrumented compiler (gcov, -O0)"
"$CC" --coverage -O0 -g -w -fno-strict-aliasing -I runtime -c "$snapshot" -o build/cov/luce.o
"$CC" --coverage -O0 -g -w -fno-strict-aliasing -I runtime -c runtime/lucb_rt.c -o build/cov/rt.o
"$CC" --coverage build/cov/luce.o build/cov/rt.o -lm -pthread -o build/cov/luce-cov
cov=build/cov/luce-cov
echo "coverage: running the corpus through it"
checked=0
for f in tests/samples/*.lucb tests/samples/errors/*.lucb tests/conformance/[0-9]*/*.lucb \
         tests/conformance/[0-9]*/errors/*.lucb tests/programs/*/*.lucb tests/std/*.lucb src/main.lucb; do
    [ -e "$f" ] || continue
    "$cov" check "$f" > /dev/null 2>&1 || true
    checked=$((checked + 1))
done
built=0
for f in tests/samples/*.lucb tests/conformance/24_examples/*.lucb tests/programs/*/main.lucb; do
    [ -e "$f" ] || continue
    "$cov" build "$f" --backend=c -o build/cov/prog > /dev/null 2>&1 || true
    "$cov" build "$f" --native -o build/cov/prog > /dev/null 2>&1 || true
    built=$((built + 1))
done
echo "coverage: $checked files checked, $built programs built through the instrumented compiler"
gcov -f build/cov/luce.o > build/cov/report.txt 2>/dev/null || true
echo "=== coverage of the emitted compiler C (compiler + reachable standard library) ==="
grep -E "Lines executed|Branches executed|Taken at least once" build/cov/report.txt | tail -3
total=$(grep -c "^Function" build/cov/report.txt || echo 0)
cold=$(grep -B1 "Lines executed:0.00%" build/cov/report.txt | grep -c "^Function" || echo 0)
echo "functions: $total, fully cold: $cold"
echo "=== fully-cold functions by module (aim fuzzing at the genuine gaps) ==="
grep -B1 "Lines executed:0.00%" build/cov/report.txt | grep "^Function" | \
    sed -E "s/Function .lb_[0-9]+//; s/_[0-9].*//" | sort | uniq -c | sort -rn | head -15
