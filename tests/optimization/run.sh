#!/bin/sh
# The optimisation suite: programs whose IR after the pre-backend passes and whose arm64
# assembly are measured, not only run. Beside each program, `NAME.limits` holds the largest
# counts allowed, one `key max` per line: `ir` (instructions in the IR text of `--emit=ir`),
# `loads` and `stores` (memory operations in it), `calls`, and `asm-arm64` and `asm-x86_64`
# (instruction lines in the assembly of that architecture, checked on its host). A pass that
# lowers a count may lower the limit; nothing may raise one without
# saying so. Every program also runs natively and prints its `.expect`, so a measurement is
# never taken on a wrong program. `--report` prints the counts beside the limits.
set -eu
cd "$(dirname "$0")/../.."
report=${1:-}
programs=0
# Only the program's own functions count, named `lb_<stem>_...` and `lb_main`; the standard
# modules beside them are the same in every program and are measured nowhere.
measure() {
    src=$1
    stem=$(basename "$src" .lucb)
    ./build/luce-base build "$src" --emit=ir -o build/opt.ir
    ./build/luce-base build "$src" --emit=asm --native -o build/opt.s
    awk -v stem="$stem" '
        /^function / { keep = ($0 ~ ("\\$lb_" stem "_") || $0 ~ /\$lb_main\(/) ; next }
        keep && /^    / && !/^    slot / { ir++; if ($0 ~ / =. (load|atomic_load)/) loads++; if ($0 ~ /^    (store|atomic_store)/) stores++; if ($0 ~ /call \$/) calls++ }
        END { printf "%d %d %d %d\n", ir, loads, stores, calls }' build/opt.ir > build/opt.counts
    read -r ir loads stores calls < build/opt.counts
    asm=$(awk -v stem="$stem" '
        /^_?[A-Za-z0-9_]+:$/ { keep = ($0 ~ ("^_?lb_" stem "_") || $0 ~ /^_?lb_main:/) ; next }
        keep && /^    [a-z]/ { n++ }
        END { print n + 0 }' build/opt.s)
}
# the assembly count is the host architecture's: `asm-arm64` or `asm-x86_64` in the limits
arch=$(tools/host.sh | sed 's/-.*//')
for f in tests/optimization/*.limits; do
    src="${f%.limits}.lucb"
    echo "== $src"
    measure "$src"
    ./build/luce-base build "$src" --native -o build/opt
    ./build/opt > build/opt.out
    cmp build/opt.out "${f%.limits}.expect"
    while read -r key max; do
        case "$key" in
            ir) got=$ir;; loads) got=$loads;; stores) got=$stores;; calls) got=$calls;;
            asm-"$arch") got=$asm;; asm-*) continue;;
            ''|'#'*) continue;;
            *) echo "FAIL $f: unknown key $key"; exit 1;;
        esac
        if [ -n "$report" ]; then
            echo "   $key $got (limit $max)"
        fi
        if [ "$got" -gt "$max" ]; then
            echo "FAIL $src: $key is $got, over the limit of $max"; exit 1
        fi
    done < "$f"
    programs=$((programs + 1))
done
rm -f build/opt build/opt.out build/opt.ir build/opt.s build/opt.counts
echo "ok optimization: $programs programs"
