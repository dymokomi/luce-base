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
vg="valgrind --error-exitcode=99 --leak-check=no --track-origins=yes -q"
n=0
for f in tests/std/*.lucb; do
    [ -e "$f" ] || continue
    grep -q '^# valgrind: skip' "$f" && continue
    LUCE_TEST_BINARY="$PWD/build/stdtest" ./build/luce-base test "$f" --native > /dev/null
    $vg ./build/stdtest > /dev/null 2> build/vgstd.err && rc=0 || rc=$?
    if [ "$rc" = "99" ]; then
        echo "FAIL valgrind_std: $f found a memory error"; cat build/vgstd.err; exit 1
    fi
    if [ "$rc" != "0" ]; then
        echo "FAIL valgrind_std: $f trapped under valgrind (status $rc)"; cat build/vgstd.err; exit 1
    fi
    n=$((n + 1))
done
rm -f build/stdtest build/vgstd.err
echo "ok valgrind_std: $n standard-library test binaries clean under memcheck"
