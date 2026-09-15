#!/bin/sh
# `luce-base fmt` (§19.6): the messy module prints as expected.lucb, the result is a fixpoint,
# `--check` answers 1 for the messy file and 0 for the formatted one, and `--write` puts the
# layout in place.
set -eu
cd "$(dirname "$0")/../../.."
compiler=${1:-./build/luce-base}
dir=tests/programs/fmt
"$compiler" fmt "$dir/messy.lucb" > build/fmt.out
cmp build/fmt.out "$dir/expected.lucb"
"$compiler" fmt "$dir/expected.lucb" --check
if "$compiler" fmt "$dir/messy.lucb" --check; then echo "FAIL: --check accepted the messy layout"; exit 1; fi
cp "$dir/messy.lucb" build/fmt_written.lucb
"$compiler" fmt build/fmt_written.lucb --write
cmp build/fmt_written.lucb "$dir/expected.lucb"
rm -f build/fmt.out build/fmt_written.lucb
echo "ok fmt: the canonical layout, a fixpoint, --check and --write"
