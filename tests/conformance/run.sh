#!/bin/sh
# The conformance suite: one directory per chapter of docs/language/base.md, holding a
# program for each point the chapter makes. A program beside a `.expect` file is the positive
# side: it builds through the C backend and the native backend, and runs through the seed's
# interpreter when the seed is beside this tree, and every execution must print the
# expectation. A program under `errors/` is the negative side: its `# error:` line names the
# diagnostic this compiler must give, and the seed must reject it too. `# oracle: none`
# excuses a program from the seed (asm, and what the interpreter cannot model).
set -eu
cd "$(dirname "$0")/../.."
seed=../luce-seed/build/lucb
[ -x "$seed" ] || seed=""
programs=0
rejections=0
for dir in tests/conformance/[0-9]*/; do
    for f in "$dir"*.expect; do
        [ -e "$f" ] || continue
        src="${f%.expect}.lucb"
        echo "== $src"
        ./build/luce-base build "$src" -o build/conformance
        ./build/conformance > build/conformance.out
        cmp build/conformance.out "$f"
        ./build/luce-base build "$src" --native -o build/conformance
        ./build/conformance > build/conformance.out
        cmp build/conformance.out "$f"
        if [ -n "$seed" ] && ! grep -q '^# oracle: none' "$src"; then
            "$seed" eval "$src" > build/conformance.out
            cmp build/conformance.out "$f"
        fi
        programs=$((programs + 1))
    done
    for f in "$dir"errors/*.lucb; do
        [ -e "$f" ] || continue
        want=$(LC_ALL=C sed -n 's/^# error: //p' "$f")
        got=$(./build/luce-base check "$f" 2>&1 || true)
        case "$got" in
            *"$want"*) ;;
            *) echo "FAIL $f: expected [$want], got [$got]"; exit 1;;
        esac
        if [ -n "$seed" ] && ! grep -q '^# oracle: none' "$f"; then
            if "$seed" check "$f" > /dev/null 2>&1; then
                echo "FAIL $f: the seed accepts what this compiler rejects"; exit 1
            fi
        fi
        rejections=$((rejections + 1))
    done
    echo "== $dir $(ls "$dir"*.expect 2>/dev/null | wc -l | tr -d ' ') programs, $(ls "$dir"errors/*.lucb 2>/dev/null | wc -l | tr -d ' ') rejections"
done
rm -f build/conformance build/conformance.out
echo "ok conformance: $programs programs, $rejections rejections"
