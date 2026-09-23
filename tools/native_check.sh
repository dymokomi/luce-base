#!/bin/sh
# Differential check of the native backend: every single-file program under a
# directory with an `# answer: N` line is built natively and must print N.
# Usage: tools/native_check.sh DIR [report]
set -u
cd "$(dirname "$0")/.."
DIR=${1:-../luce-seed/testdata/programs}
REPORT=${2:-build/native_report.txt}
# a program runs from the root of the tree it belongs to, as its own harness runs it
ROOT=$(cd "$DIR/../.." && pwd)
HERE=$(pwd)
: > "$REPORT"
pass=0; fail=0
for f in $(find "$DIR" -name '*.lucb' -maxdepth 2 | sort); do
    case "$(dirname "$f")" in "$DIR") ;; *) [ -f "$(dirname "$f")/package.prisma" ] && continue ;; esac
    want=$(sed -n 's/^# answer: *//p' "$f" | head -1)
    [ -z "$want" ] && continue
    grep -q '^# oracle: none' "$f" && continue
    source=$f
    if grep -qE '^import (utf8|unicode|paths|math|math32|net|files|crash|process)$' "$f"; then
        # the library lives in the luce-std package: build a copy that declares it
        rm -rf build/nc-package && mkdir -p build/nc-package
        cp "$f" build/nc-package/main.lucb
        printf '#prisma 4.0\ndef package "native-check" {\n    def dependency "luce-std" {\n        str path = "%s"\n    }\n}\n' "$(cd ../luce-std && pwd)" > build/nc-package/package.prisma
        source=build/nc-package/main.lucb
    fi
    if perl -e 'alarm 60; exec @ARGV' ./build/luce-base build "$source" --native -o build/nc 2> build/nc.err; then
        got=$(cd "$ROOT" && perl -e 'alarm 20; exec @ARGV' "$HERE/build/nc" 2>&1 | tail -1)
        if [ "$got" = "$want" ]; then pass=$((pass+1)); else fail=$((fail+1)); echo "WRONG $f: want $want got [$got]" >> "$REPORT"; fi
    else
        fail=$((fail+1)); echo "BUILD $f: $(head -1 build/nc.err | cut -c1-160)" >> "$REPORT"
    fi
done
rm -rf build/nc build/nc.err build/nc-package
echo "native check: $pass passed, $fail failed" | tee -a "$REPORT"
if [ "$fail" -ne 0 ]; then
    cat "$REPORT"
    exit 1
fi
