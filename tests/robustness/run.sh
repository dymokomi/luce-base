#!/bin/sh
# The robustness suite: programs that measure memory management under defer, errdefer,
# recursion, nested `with`, exhaustion, growth, misuse under the diagnostic profile, and a
# deliberate leak, and the double free and write after free the diagnostic profile traps
# on (a `.trap` file holds the message). Each program counts what it allocated and freed through a measuring
# allocator and prints it; the counts are the expectation, through both backends. A
# `# profile: diagnostic` line builds the program with that profile.
set -eu
cd "$(dirname "$0")/../.."
programs=0
for f in tests/robustness/*/*.expect; do
    src="${f%.expect}.lucb"
    profile=""
    if grep -q '^# profile: diagnostic' "$src"; then
        profile="--profile diagnostic"
    fi
    echo "== $src"
    for flags in "--backend=c" ""; do
        ./build/luce-base build "$src" $flags $profile -o build/robust
        ./build/robust > build/robust.out
        cmp build/robust.out "$f"
    done
    programs=$((programs + 1))
done
# a program with a `.trap` must stop with that trap message, through both backends
for f in tests/robustness/*/*.trap; do
    src="${f%.trap}.lucb"
    echo "== $src (traps)"
    for flags in "--backend=c" ""; do
        ./build/luce-base build "$src" $flags --profile diagnostic -o build/robust
        if ./build/robust > build/robust.out 2> build/robust.err; then
            echo "FAIL $src: did not trap"; exit 1
        fi
        grep -qF "$(cat "$f")" build/robust.err || { echo "FAIL $src: wrong trap"; cat build/robust.err; exit 1; }
    done
    programs=$((programs + 1))
done
rm -f build/robust build/robust.out build/robust.err
python3 tests/robustness/failures/run.py
echo "ok robustness: $programs programs"
