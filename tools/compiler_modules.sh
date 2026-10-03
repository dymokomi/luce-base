#!/bin/sh
# The compiler's modules (base.md §16.1), one per line, sorted: every `.lucb` file under src
# outside src/std, except that a directory whose `ORDER` lists fragments is one module and
# stands in place of its fragments. `check` and `test` take a module; `lex`, `parse`, and
# `fmt` take each file. Paths in this repository contain no whitespace.
set -eu
cd "$(dirname "$0")/.."
{
    find src -type f -name '*.lucb' ! -path 'src/std/*' | while read -r file; do
        [ -f "$(dirname "$file")/ORDER" ] || echo "$file"
    done
    find src -type f -name ORDER ! -path 'src/std/*' | while read -r order; do
        dirname "$order"
    done
} | LC_ALL=C sort
