#!/bin/sh
# Prove the editor: build it natively, replay a script of keys over a file, and
# compare the saved file and the final screen with what they must be.
# Usage: tests/programs/editor/check.sh [luce-base binary]
set -eu
cd "$(dirname "$0")/../../.."
LB=${1:-./build/luce-base}
"$LB" build tests/programs/editor/main.lucb --native -o build/editor-check
printf 'line one\nline two\nline three\n' > build/editor-check.txt
./build/editor-check build/editor-check.txt --replay tests/programs/editor/check.keys > build/editor-check.screen
if [ "$(cat build/editor-check.txt)" != "$(printf 'okfour\nline two\nline three')" ]; then
    echo "FAIL: the saved text"; cat build/editor-check.txt; exit 1
fi
if ! cmp -s build/editor-check.screen tests/programs/editor/check.screen; then
    echo "FAIL: the final screen"; cat -v build/editor-check.screen; exit 1
fi
rm -f build/editor-check build/editor-check.txt build/editor-check.screen
echo "ok tests/programs/editor"
