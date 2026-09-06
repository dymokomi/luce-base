#!/bin/sh
# Differential check of the native backend: every single-file program under a
# directory with an `# answer: N` line is built natively and must print N.
# Usage: tools/native_check.sh DIR [report]
set -u
cd "$(dirname "$0")/.."
DIR=${1:-../luce-seed/testdata/programs}
REPORT=${2:-build/native_report.txt}
: > "$REPORT"
pass=0; fail=0
for f in $(find "$DIR" -name '*.lucb' -maxdepth 2 | sort); do
    case "$(dirname "$f")" in "$DIR") ;; *) [ -f "$(dirname "$f")/luce.toml" ] && continue ;; esac
    want=$(sed -n 's/^# answer: *//p' "$f" | head -1)
    [ -z "$want" ] && continue
    grep -q '^# oracle: none' "$f" && continue
    if perl -e 'alarm 60; exec @ARGV' ./build/luce-base build "$f" --native -o build/nc 2> build/nc.err; then
        got=$(perl -e 'alarm 20; exec @ARGV' ./build/nc 2>&1 | tail -1)
        if [ "$got" = "$want" ]; then pass=$((pass+1)); else fail=$((fail+1)); echo "WRONG $f: want $want got [$got]" >> "$REPORT"; fi
    else
        fail=$((fail+1)); echo "BUILD $f: $(head -1 build/nc.err | cut -c1-160)" >> "$REPORT"
    fi
done
rm -f build/nc build/nc.err
echo "$pass passed, $fail failed" | tee -a "$REPORT"
