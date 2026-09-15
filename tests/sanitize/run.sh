#!/bin/sh
# The sanitizer suite: every positive program of the conformance and robustness suites,
# built through the C backend at -O0 and -O2 with the address and undefined-behaviour
# sanitizers (`LUCE_CFLAGS`), must run clean and print its expectation. A program that
# misuses memory on purpose says `# sanitize: skip`. Alignment is not checked: a packed
# record's fields are read unaligned by design (§10.1).
set -eu
cd "$(dirname "$0")/../.."
flags="-fsanitize=address,undefined -fno-sanitize-recover=all -fno-sanitize=alignment -fno-omit-frame-pointer"
programs=0
for f in tests/conformance/[0-9]*/*.expect tests/robustness/*/*.expect; do
    [ -e "$f" ] || continue
    case "$f" in *.*-*.expect) continue;; esac
    src="${f%%.*}.lucb"
    [ -e "$src" ] || src="${f%%.*}/main.lucb"
    grep -q '^# sanitize: skip' "$src" && continue
    profile=""
    grep -q '^# profile: diagnostic' "$src" && profile="--profile diagnostic"
    for release in "" "--release"; do
        LUCE_CFLAGS="$flags" ./build/luce-base build "$src" --backend=c $release $profile -o build/sanitize
        ASAN_OPTIONS=detect_leaks=0 ./build/sanitize > build/sanitize.out 2> build/sanitize.err || { echo "FAIL sanitize: $src $release"; cat build/sanitize.err; exit 1; }
        cmp build/sanitize.out "$f" || { echo "FAIL sanitize: $src $release printed"; cat build/sanitize.out; exit 1; }
    done
    programs=$((programs + 1))
done
rm -f build/sanitize build/sanitize.out build/sanitize.err
echo "ok sanitize: $programs programs under address and undefined-behaviour sanitizers, -O0 and -O2"
