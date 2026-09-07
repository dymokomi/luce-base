#!/bin/sh
# The robustness suite: programs that measure memory management under defer, errdefer,
# recursion, nested `with`, exhaustion, growth, misuse under the diagnostic profile, and a
# deliberate leak. Each program counts what it allocated and freed through a measuring
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
    for flags in "" "--native"; do
        ./build/luce-base build "$src" $flags $profile -o build/robust
        ./build/robust > build/robust.out
        cmp build/robust.out "$f"
    done
    programs=$((programs + 1))
done
rm -f build/robust build/robust.out
echo "ok robustness: $programs programs"
