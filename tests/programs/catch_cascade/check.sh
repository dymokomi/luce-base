#!/bin/sh
# A type error inside a `catch` operand leaves no handler state behind: the module's later
# `else` fallbacks check, so the report names the one real error.
set -eu
cd "$(dirname "$0")/../../.."
compiler=${1:-./build/luce-base}
if "$compiler" check tests/programs/catch_cascade/case/main.lucb 2> build/catch_cascade.err; then echo "FAIL: the program checked"; exit 1; fi
cmp build/catch_cascade.err tests/programs/catch_cascade/main.stderr
rm -f build/catch_cascade.err
echo "ok catch cascade: one error, not one per later \`else\`"
