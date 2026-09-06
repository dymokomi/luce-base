#!/bin/sh
# Prove the SDL editor: build it natively against SDL3, replay a script under the
# dummy video driver (no window), and compare the saved file and the frame's text.
# Usage: programs/gui/check.sh [luce-base binary]
set -eu
cd "$(dirname "$0")/../.."
LB=${1:-./build/luce-base}
SDL=${SDL3_PREFIX:-/opt/homebrew}
if [ ! -f "$SDL/lib/libSDL3.dylib" ]; then
    echo "skip programs/gui: SDL3 is not installed under $SDL (brew install sdl3)"
    exit 0
fi
"$LB" build programs/gui/main.lucb --native -lSDL3 "-L$SDL/lib" -o build/gui-check
printf 'line one\nline two\nline three\n' > build/gui-check.txt
./build/gui-check build/gui-check.txt --replay programs/editor/check.keys > build/gui-check.out
if [ "$(cat build/gui-check.txt)" != "$(printf 'okfour\nline two\nline three')" ]; then
    echo "FAIL: the saved text"; cat build/gui-check.txt; exit 1
fi
if ! cmp -s build/gui-check.out programs/gui/check.out; then
    echo "FAIL: the frame"; cat build/gui-check.out; exit 1
fi
rm -f build/gui-check build/gui-check.txt build/gui-check.out
echo "ok programs/gui"
