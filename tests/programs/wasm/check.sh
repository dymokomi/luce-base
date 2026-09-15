#!/bin/sh
# Prove wasm32: the standard library built for it by build.sh, a program built on it
# through the C backend and a WASI toolchain, run under wasmtime. Needs the toolchain
# build.sh looks for and wasmtime; without them the gate cannot run in full and says so.
# Usage: tests/programs/wasm/check.sh [luce-base binary]
set -eu
cd "$(dirname "$0")/../../.."
LB=${1:-./build/luce-base}
if ! command -v wasmtime > /dev/null 2>&1; then
    echo "FAIL tests/programs/wasm: wasmtime is not installed (brew install wasmtime, or https://wasmtime.dev); the gate cannot run in full"
    exit 1
fi
if [ ! -f build/lib/luce-base/wasm32/libstd-c.a ]; then
    echo "FAIL tests/programs/wasm: no wasm32 standard library under build/lib/luce-base/wasm32; build.sh writes it where a WASI toolchain is installed (WASI_SDK, or Homebrew's llvm, lld, wasi-libc and wasi-runtimes); the gate cannot run in full"
    exit 1
fi
"$LB" build tests/programs/wasm/main.lucb --target wasm32 -o build/wasm-check.wasm
(cd build && wasmtime --dir . wasm-check.wasm > wasm-check.out)
cat > build/wasm-check.expected <<'END'
target wasm32 pointer bits 32 wasm32 true posix true
sizes usize 4 pointer 4 long 4 str 8
point 3 4 sum 7
areas 3.14159 6.25
filled 7168
joined wasm runs base upper WASM RUNS BASE
file written from wasm
wide 3298534883328 137438953472 1048576
caught division by zero
division 3 -1
END
cmp build/wasm-check.out build/wasm-check.expected || { echo "FAIL tests/programs/wasm: the output"; cat build/wasm-check.out; exit 1; }
# a native build for wasm32 is refused, and says so
if "$LB" build tests/programs/wasm/main.lucb --target wasm32 --native -o build/wasm-check.wasm 2> build/wasm-check.err; then
    echo "FAIL tests/programs/wasm: a native build for wasm32 was accepted"; exit 1
fi
grep -q "no native generator" build/wasm-check.err || { echo "FAIL tests/programs/wasm: the refusal says [$(cat build/wasm-check.err)]"; exit 1; }
rm -f build/wasm-check.wasm build/wasm-check.out build/wasm-check.expected build/wasm-check.err build/wasm-check.txt
echo "ok tests/programs/wasm"
