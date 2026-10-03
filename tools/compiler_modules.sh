#!/bin/sh
# The compiler's modules (base.md §16.1), one per line, sorted: every `.lucb` file under src
# outside src/std, except that a directory whose `ORDER` lists fragments is one module and
# stands in place of the fragments it lists; a file beside them that `ORDER` does not list
# is a module of its own (`back.native.x86_64.object` beside the generator's fragments).
# `check` and `test` take a module; `lex`, `parse`, and `fmt` take each file. Paths in this
# repository contain no whitespace.
set -eu
cd "$(dirname "$0")/.."
{
    find src -type f -name '*.lucb' ! -path 'src/std/*' | while read -r file; do
        order="$(dirname "$file")/ORDER"
        if [ -f "$order" ] && grep -qx "$(basename "$file")" "$order"; then
            continue
        fi
        echo "$file"
    done
    find src -type f -name ORDER ! -path 'src/std/*' | while read -r order; do
        dirname "$order"
    done
} | LC_ALL=C sort
