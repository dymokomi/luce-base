#!/bin/sh
# A local whose address a callee keeps keeps its frame home: the native build, plain and
# optimised, prints 21 (the kept block's depth, not the later local's).
set -eu
cd "$(dirname "$0")/../../.."
compiler=${1:-./build/luce-base}
for flags in "" "--release"; do
    "$compiler" build tests/programs/frame_escape/case/main.lucb --native $flags -o build/frame_escape
    got=$(./build/frame_escape)
    if [ "$got" != "21" ]; then echo "FAIL: frame_escape $flags printed $got, not 21"; exit 1; fi
done
rm -f build/frame_escape
echo "ok frame escape: an address handed to a call keeps its home"
