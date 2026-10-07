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
seed=../luce-seed/build/lucb
[ -x "$seed" ] || { echo "FAIL: conformance requires the seed oracle at $seed"; exit 1; }
run() { python3 tools/run_case.py -- "$@"; }
# every case, as `KIND FILE` lines, runs at once in its own directory (case.sh): as many as
# the machine has cores
mkdir -p build/cases
cases=build/cases/list
: > "$cases"
for dir in tests/conformance/[0-9]*/; do
    for f in "$dir"*.expect; do
        [ -e "$f" ] || continue
        case "$f" in *.*-*.expect) continue;; esac
        echo "expect $f" >> "$cases"
    done
    for f in "$dir"*.trap; do
        [ -e "$f" ] && echo "trap $f" >> "$cases"
    done
    for f in "$dir"errors/*.lucb; do
        [ -e "$f" ] && echo "error $f" >> "$cases"
    done
done
programs=$(grep -c -v '^error ' "$cases")
rejections=$(grep -c '^error ' "$cases")
xargs -P "$(tools/jobs.sh)" -n 2 sh tests/conformance/case.sh < "$cases" || { echo "FAIL conformance: the cases above"; exit 1; }
for dir in tests/conformance/[0-9]*/; do
    # a module under `describe/` prints the description beside it (§17.7)
    for f in "$dir"describe/*.lucb; do
        [ -e "$f" ] || continue
        echo "== $f (describe)"
        run ./build/luce-base describe "$f" > build/conformance.out
        cmp build/conformance.out "${f%.lucb}.describe"
    done
    # a chapter about the driver proves its points by a script beside the programs
    if [ -e "$dir"driver.sh ]; then
        sh "$dir"driver.sh
    fi
done
rm -rf build/conformance build/conformance.out build/conformance.err build/cases
echo "ok conformance: $programs programs, $rejections rejections"
