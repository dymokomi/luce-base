#!/bin/sh
# Memory-check the standard library's own unit tests. `luce-base test` builds each test binary
# into a scratch dir and discards it, comparing only output -- so a leak, an uninitialised read
# or a use-after-return in std code or a generated test binary slips through (the gap that let a
# net_test use-after-return reach CI). Here LUCE_TEST_BINARY keeps that binary and valgrind's
# memcheck runs it. A float-sensitive test opts out with `# valgrind: skip`. Needs valgrind;
# runs on Linux (`apt install valgrind`), on macOS run it in the Linux container.
set -eu
cd "$(dirname "$0")/.."
command -v valgrind > /dev/null 2>&1 || { echo "valgrind_std: no valgrind (apt install valgrind)"; exit 1; }
# --max-stackframe: a Luce frame may be as large as a thread's stack (thread.default_stack,
# 8 MiB). Valgrind's default of 2,000,000 bytes reads a larger drop of the stack pointer as a
# switch to another stack and leaves the new frame unaddressable, so every access to it is
# reported as an "invalid write ... on thread N's stack" although the stack is real.
vg="valgrind --error-exitcode=99 --leak-check=no --track-origins=yes --max-stackframe=8388608 -q"
# one test binary in a directory of its own: `valgrind_std.sh --case FILE`
if [ "${1:-}" = --case ]; then
    f=$2
    work=$(mktemp -d build/vgstd-cases/case.XXXXXX)
    LUCE_TEST_BINARY="$PWD/$work/stdtest" ./build/luce-base test "$f" --native > /dev/null
    $vg "$work/stdtest" > /dev/null 2> "$work/err" && rc=0 || rc=$?
    if [ "$rc" = "99" ]; then
        echo "FAIL valgrind_std: $f found a memory error"; cat "$work/err"; exit 1
    fi
    if [ "$rc" != "0" ]; then
        echo "FAIL valgrind_std: $f trapped under valgrind (status $rc)"; cat "$work/err"; exit 1
    fi
    rm -rf "$work"
    exit 0
fi
# every binary at once, as many as the machine has cores
mkdir -p build/vgstd-cases
for f in tests/std/*.lucb; do
    [ -e "$f" ] || continue
    grep -q '^# valgrind: skip' "$f" && continue
    echo "$f"
done > build/vgstd-cases/list
n=$(wc -l < build/vgstd-cases/list | tr -d ' ')
xargs -P "$(tools/jobs.sh)" -n 1 sh tools/valgrind_std.sh --case < build/vgstd-cases/list
rm -rf build/vgstd-cases
echo "ok valgrind_std: $n standard-library test binaries clean under memcheck"
