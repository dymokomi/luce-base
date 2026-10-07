#!/bin/sh
# Differential check of the native backend: every single-file program under a
# directory with an `# answer: N` line is built natively and must print N. The programs
# run at once, each in a directory of its own, as many as the machine has cores.
# Usage: tools/native_check.sh DIR [report]
#        tools/native_check.sh --case ROOT FILE   (one program; what the loop runs)
set -u
cd "$(dirname "$0")/.."
if [ "${1:-}" = --case ]; then
    ROOT=$2 f=$3 HERE=$(pwd)
    want=$(sed -n 's/^# answer: *//p' "$f" | head -1)
    work=$(mktemp -d build/nc-cases/case.XXXXXX)
    source=$f
    if grep -qE '^(import luce_std\.|from luce_std[ .])' "$f"; then
        # the library lives in the luce-std package: build a copy that declares it
        mkdir -p "$work/package"
        cp "$f" "$work/package/main.lucb"
        printf '#prisma 4.0\ndef package "native-check" {\n    def dependency "luce-std" {\n        str path = "%s"\n    }\n}\n' "$(cd ../luce-std && pwd)" > "$work/package/package.prisma"
        source=$work/package/main.lucb
    fi
    if perl -e 'alarm 60; exec @ARGV' ./build/luce-base build "$source" --native -o "$work/nc" 2> "$work/err"; then
        got=$(cd "$ROOT" && perl -e 'alarm 20; exec @ARGV' "$HERE/$work/nc" 2>&1 | tail -1)
        if [ "$got" = "$want" ]; then echo "PASS $f"; else echo "WRONG $f: want $want got [$got]"; fi
    else
        echo "BUILD $f: $(head -1 "$work/err" | cut -c1-160)"
    fi
    rm -rf "$work"
    exit 0
fi
DIR=${1:-../luce-seed/testdata/programs}
REPORT=${2:-build/native_report.txt}
# a program runs from the root of the tree it belongs to, as its own harness runs it
ROOT=$(cd "$DIR/../.." && pwd)
mkdir -p build/nc-cases
for f in $(find "$DIR" -name '*.lucb' -maxdepth 2 | sort); do
    case "$(dirname "$f")" in "$DIR") ;; *) [ -f "$(dirname "$f")/package.prisma" ] && continue ;; esac
    grep -q '^# answer:' "$f" || continue
    grep -q '^# oracle: none' "$f" && continue
    echo "$f"
done | xargs -P "$(tools/jobs.sh)" -n 1 sh tools/native_check.sh --case "$ROOT" > build/nc-cases/results
grep -v '^PASS ' build/nc-cases/results > "$REPORT" 2> /dev/null || : > "$REPORT"
pass=$(grep -c '^PASS ' build/nc-cases/results)
fail=$(grep -c -v '^PASS ' build/nc-cases/results)
rm -rf build/nc-cases
echo "native check: $pass passed, $fail failed" | tee -a "$REPORT"
if [ "$fail" -ne 0 ]; then
    cat "$REPORT"
    exit 1
fi
