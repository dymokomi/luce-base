#!/bin/sh
# Every failing declaration of a module is reported in one run, with its note, and the
# report is the same through `check` and `build`.
set -eu
cd "$(dirname "$0")/../../.."
compiler=${1:-./build/luce-base}
dir=tests/programs/several_errors/case
if "$compiler" check "$dir/main.lucb" 2> build/several_errors.err; then echo "FAIL: the program checked"; exit 1; fi
cmp build/several_errors.err tests/programs/several_errors/main.stderr
if "$compiler" build "$dir/main.lucb" -o build/several_errors 2> build/several_errors.err; then echo "FAIL: the program built"; exit 1; fi
cmp build/several_errors.err tests/programs/several_errors/main.stderr
rm -f build/several_errors.err
echo "ok several errors: every failing declaration reported, with its note"
