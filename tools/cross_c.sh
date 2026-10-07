#!/bin/sh
# The C the compiler emits for itself and its standard library, compiled by the other C
# compilers a release meets: GCC on the host's snapshot, where the host's `cc` is clang,
# and MinGW-w64 GCC on the x86_64-windows snapshot from any host. A release that fails one
# of them fails in CI; this step fails here first. Needs GCC and MinGW-w64
# (`brew install gcc mingw-w64`, or `apt install gcc mingw-w64`).
# Usage: tools/cross_c.sh
set -eu
cd "$(dirname "$0")/.."
host=$(tools/host.sh)
gnu=""
for candidate in gcc-16 gcc-15 gcc-14 gcc-13 gcc; do
    if command -v "$candidate" > /dev/null 2>&1 && "$candidate" --version 2>/dev/null | head -1 | grep -qv clang; then
        gnu=$candidate
        break
    fi
done
[ -n "$gnu" ] || { echo "FAIL cross_c: no GNU GCC (brew install gcc, or apt install gcc); the gate cannot run in full"; exit 1; }
command -v x86_64-w64-mingw32-gcc > /dev/null 2>&1 || { echo "FAIL cross_c: no MinGW-w64 GCC (brew install mingw-w64, or apt install mingw-w64); the gate cannot run in full"; exit 1; }
mkdir -p build/cross
# the four translation units at once, each its own object; any failure fails the step
pids=""
compile() { "$1" -std=gnu11 -O2 -w -fno-strict-aliasing -I runtime -c "$2" -o "$3" & pids="$pids $!"; }
case "$host" in
    x86_64-windows) ;;
    *)
        compile "$gnu" bootstrap/luce-base-$host.c build/cross/gnu-snapshot.o
        compile "$gnu" runtime/lucb_rt.c build/cross/gnu-runtime.o;;
esac
compile x86_64-w64-mingw32-gcc bootstrap/luce-base-x86_64-windows.c build/cross/win-snapshot.o
compile x86_64-w64-mingw32-gcc runtime/lucb_rt.c build/cross/win-runtime.o
failed=0
for pid in $pids; do wait "$pid" || failed=1; done
rm -rf build/cross
[ "$failed" = 0 ] || { echo "FAIL cross_c: a compiler rejected the emitted C (above)"; exit 1; }
[ "$host" = x86_64-windows ] || echo "ok cross_c: $gnu compiles the $host snapshot"
echo "ok cross_c: MinGW-w64 GCC compiles the x86_64-windows snapshot"
