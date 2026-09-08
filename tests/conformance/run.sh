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
# a program whose output names the host has one expectation per host, `NAME.HOST.expect`
host=$(tools/host.sh)
seed=../luce-seed/build/lucb
[ -x "$seed" ] || seed=""
programs=0
rejections=0
for dir in tests/conformance/[0-9]*/; do
    for f in "$dir"*.expect; do
        [ -e "$f" ] || continue
        case "$f" in *.*-*.expect) continue;; esac
        [ -e "${f%.expect}.$host.expect" ] && f="${f%.expect}.$host.expect"
        src="${f%%.*}.lucb"
        # a package of several modules: `NAME/main.lucb` beside `NAME.expect`
        [ -e "$src" ] || src="${f%%.*}/main.lucb"
        echo "== $src"
        ./build/luce-base build "$src" -o build/conformance
        ./build/conformance > build/conformance.out
        cmp build/conformance.out "$f"
        # the C the host compiler optimises must mean the same as the C it does not (§12.6)
        ./build/luce-base build "$src" --release -o build/conformance
        ./build/conformance > build/conformance.out
        cmp build/conformance.out "$f"
        ./build/luce-base build "$src" --native -o build/conformance
        ./build/conformance > build/conformance.out
        cmp build/conformance.out "$f"
        if [ -n "$seed" ] && ! grep -q '^# oracle: none' "$src"; then
            "$seed" eval "$src" > build/conformance.out
            cmp build/conformance.out "$f"
        fi
        # `# tests: true`: the program's `test` declarations run under both backends and pass
        if grep -q '^# tests: true' "$src"; then
            ./build/luce-base test "$src" > build/conformance.out
            ./build/luce-base test "$src" --native > build/conformance.out
        fi
        programs=$((programs + 1))
    done
    # a program beside a `.trap` file must stop with a trap naming that text, in every execution
    for f in "$dir"*.trap; do
        [ -e "$f" ] || continue
        src="${f%.trap}.lucb"
        [ -e "$src" ] || src="${f%.trap}/main.lucb"
        want=$(cat "$f")
        echo "== $src (traps)"
        for flags in "" "--native"; do
            ./build/luce-base build "$src" $flags -o build/conformance
            if ./build/conformance > build/conformance.out 2> build/conformance.err; then
                echo "FAIL $src: expected a trap, the program finished"; exit 1
            fi
            grep -q "$want" build/conformance.err || { echo "FAIL $src: expected [$want], got [$(cat build/conformance.err)]"; exit 1; }
        done
        if [ -n "$seed" ] && ! grep -q '^# oracle: none' "$src"; then
            if "$seed" eval "$src" > build/conformance.out 2> build/conformance.err; then
                echo "FAIL $src: expected a trap, the seed finished"; exit 1
            fi
            grep -q "$want" build/conformance.err || { echo "FAIL $src: the seed said [$(cat build/conformance.err)]"; exit 1; }
        fi
        programs=$((programs + 1))
    done
    for f in "$dir"errors/*.lucb; do
        [ -e "$f" ] || continue
        want=$(LC_ALL=C sed -n 's/^# error: //p' "$f")
        # a rejection is a normal exit of 1 with a diagnostic: a crash (a signal's exit, 128 or
        # more) or an acceptance is a failure whatever the text says
        got=$(./build/luce-base check "$f" 2>&1) && rc=0 || rc=$?
        if [ "$rc" -eq 0 ]; then
            echo "FAIL $f: this compiler accepts it"; exit 1
        fi
        if [ "$rc" -ne 1 ]; then
            echo "FAIL $f: the checker stopped with status $rc: [$got]"; exit 1
        fi
        # an empty `# error:` asks only for a rejection; a fragment must appear in the message
        if [ -z "$got" ]; then
            echo "FAIL $f: rejected without a diagnostic"; exit 1
        fi
        case "$got" in
            *"$want"*) ;;
            *) echo "FAIL $f: expected [$want], got [$got]"; exit 1;;
        esac
        if [ -n "$seed" ] && ! grep -q '^# oracle: none' "$f"; then
            "$seed" check "$f" > /dev/null 2>&1 && seed_rc=0 || seed_rc=$?
            if [ "$seed_rc" -eq 0 ]; then
                echo "FAIL $f: the seed accepts what this compiler rejects"; exit 1
            fi
            if [ "$seed_rc" -ne 1 ]; then
                echo "FAIL $f: the seed's checker stopped with status $seed_rc"; exit 1
            fi
        fi
        rejections=$((rejections + 1))
    done
    # a chapter about the driver proves its points by a script beside the programs
    if [ -e "$dir"driver.sh ]; then
        sh "$dir"driver.sh
    fi
    echo "== $dir $(ls "$dir"*.expect "$dir"*.trap 2>/dev/null | wc -l | tr -d ' ') programs, $(ls "$dir"errors/*.lucb 2>/dev/null | wc -l | tr -d ' ') rejections"
done
rm -f build/conformance build/conformance.out build/conformance.err
echo "ok conformance: $programs programs, $rejections rejections"
