#!/bin/sh
# Prove the SDL editor: build it natively against SDL3, replay a script under the
# dummy video driver (no window), and compare the saved file and the frame's text.
# Usage: tests/programs/gui/check.sh [luce-base binary]
set -eu
cd "$(dirname "$0")/../../.."
LB=${1:-./build/luce-base}
SDL=${SDL3_PREFIX:-/opt/homebrew}
if [ "$(uname -s)" = Darwin ]; then
    if [ ! -f "$SDL/lib/libSDL3.dylib" ]; then
        echo "FAIL tests/programs/gui: SDL3 is not installed under $SDL (brew install sdl3); the gate cannot run in full"
        exit 1
    fi
    "$LB" build tests/programs/gui/main.lucb --native -lSDL3 "-L$SDL/lib" -o build/gui-check
else
    if ! ldconfig -p 2>/dev/null | grep -q 'libSDL3\.so'; then
        echo "FAIL tests/programs/gui: SDL3 is not installed (libSDL3.so is not in the linker's cache; install the distribution's SDL3 package); the gate cannot run in full"
        exit 1
    fi
    "$LB" build tests/programs/gui/main.lucb --native -lSDL3 -o build/gui-check
fi
printf 'line one\nline two\nline three\n' > build/gui-check.txt
./build/gui-check build/gui-check.txt --replay tests/programs/editor/check.keys > build/gui-check.out
if [ "$(cat build/gui-check.txt)" != "$(printf 'okfour\nline two\nline three')" ]; then
    echo "FAIL: the saved text"; cat build/gui-check.txt; exit 1
fi
if ! cmp -s build/gui-check.out tests/programs/gui/check.out; then
    echo "FAIL: the frame"; cat build/gui-check.out; exit 1
fi
rm -f build/gui-check build/gui-check.txt build/gui-check.out
echo "ok tests/programs/gui"
