#!/bin/sh
# Prove the SDL editor and `luce-base bind` on SDL3: the binding is generated from the
# installed SDL3 headers, the editor is built on it, a script is replayed under the dummy
# video driver (no window), and the saved file and the frame's text are compared.
# Usage: tests/programs/gui/check.sh [luce-base binary]
set -eu
cd "$(dirname "$0")/../../.."
LB=${1:-./build/luce-base}
if ! command -v pkg-config > /dev/null 2>&1 || ! pkg-config --exists sdl3; then
    echo "FAIL tests/programs/gui: pkg-config does not know sdl3 on this host (brew install sdl3 pkgconf, or the distribution's SDL3 development package); the gate cannot run in full"
    exit 1
fi
# sdl3.lucb and shims.c are checked in as this host last wrote them; the gate writes them
# again from the headers it has, so the editor is built on what the tool says today
"$LB" bind SDL3/SDL.h $(pkg-config --cflags-only-I sdl3) --recipe tests/programs/gui/sdl3.recipe -o tests/programs/gui/sdl3.lucb --shims tests/programs/gui/shims.c 2> build/gui-bind.txt
grep -c 'function-like macro' build/gui-bind.txt > /dev/null || { echo "FAIL tests/programs/gui: the binder's report has no macro lines; did it run?"; cat build/gui-bind.txt; exit 1; }
"$LB" build tests/programs/gui/main.lucb --native -o build/gui-check
printf 'line one\nline two\nline three\n' > build/gui-check.txt
./build/gui-check build/gui-check.txt --replay tests/programs/editor/check.keys > build/gui-check.out
if [ "$(cat build/gui-check.txt)" != "$(printf 'okfour\nline two\nline three')" ]; then
    echo "FAIL: the saved text"; cat build/gui-check.txt; exit 1
fi
if ! cmp -s build/gui-check.out tests/programs/gui/check.out; then
    echo "FAIL: the frame"; cat build/gui-check.out; exit 1
fi
rm -f build/gui-check build/gui-check.txt build/gui-check.out build/gui-bind.txt
echo "ok tests/programs/gui"
