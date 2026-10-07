#!/bin/sh
# The sanitizer suite: every positive program of the conformance and robustness suites,
# built through the C backend at -O0 and -O2 with the address and undefined-behaviour
# sanitizers (`LUCE_CFLAGS`), must run clean and print its expectation. A program that
# misuses memory on purpose says `# sanitize: skip`. Alignment is not checked: a packed
# record's fields are read unaligned by design (§10.1). Clang's undefined-behaviour set
# includes the function check, which stops a call through a pointer of another function
# type: witness tables and converted functions call through adapters of the exact type
# (§14.3, §5.6). GCC has no such check.
set -eu
cd "$(dirname "$0")/../.."
host=$(tools/host.sh)
flags="-fsanitize=address,undefined -fno-sanitize-recover=all -fno-sanitize=alignment -fno-omit-frame-pointer"
# one program, in a directory of its own: `run.sh --case EXPECT`
if [ "${1:-}" = --case ]; then
    f=$2
    # a program whose output names the host has one expectation per host, as in conformance
    [ -e "${f%.expect}.$host.expect" ] && f="${f%.expect}.$host.expect"
    src="${f%%.*}.lucb"
    [ -e "$src" ] || src="${f%%.*}/main.lucb"
    profile=""
    grep -q '^# profile: diagnostic' "$src" && profile="--profile diagnostic"
    work=$(mktemp -d build/sanitize-cases/case.XXXXXX)
    for release in "" "--release"; do
        LUCE_CFLAGS="$flags" ./build/luce-base build "$src" --backend=c $release $profile -o "$work/program" > "$work/err" 2>&1 || { echo "FAIL sanitize: $src $release does not build"; cat "$work/err"; exit 1; }
        ASAN_OPTIONS=detect_leaks=0 "$work/program" > "$work/out" 2> "$work/err" || { echo "FAIL sanitize: $src $release"; cat "$work/err"; exit 1; }
        cmp "$work/out" "$f" || { echo "FAIL sanitize: $src $release printed"; cat "$work/out"; exit 1; }
    done
    rm -rf "$work"
    exit 0
fi
# every program at once, as many as the machine has cores
mkdir -p build/sanitize-cases
: > build/sanitize-cases/list
for f in tests/conformance/[0-9]*/*.expect tests/robustness/*/*.expect; do
    [ -e "$f" ] || continue
    case "$f" in *.*-*.expect) continue;; esac
    src="${f%%.*}.lucb"
    [ -e "$src" ] || src="${f%%.*}/main.lucb"
    grep -q '^# sanitize: skip' "$src" && continue
    echo "$f" >> build/sanitize-cases/list
done
programs=$(wc -l < build/sanitize-cases/list | tr -d ' ')
xargs -P "$(tools/jobs.sh)" -n 1 sh tests/sanitize/run.sh --case < build/sanitize-cases/list
rm -rf build/sanitize-cases
echo "ok sanitize: $programs programs under address and undefined-behaviour sanitizers, -O0 and -O2"
