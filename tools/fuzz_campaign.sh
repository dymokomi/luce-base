#!/bin/sh
# A release fuzzing campaign: run tools/fuzz.py for a budget of minutes across every dimension
# -- mutations, generated programs, trap-consistency, packages, memory balance, atomics, litmus,
# and formatter idempotence -- at a chosen seed, on this host, recording findings. Run one on
# every host before a release; the target is a multi-hour run that ends with no open finding
# (PLAN.md item 5). Findings land under build/fuzz/finding-*.lucb, each a saved reproducer.
# Usage: tools/fuzz_campaign.sh [minutes] [seed]
set -eu
cd "$(dirname "$0")/.."
minutes=${1:-180}
seed=${2:-$(date +%s)}
host=$(tools/host.sh)
mkdir -p build/fuzz
rm -f build/fuzz/finding-*.lucb
echo "campaign: host=$host seed=$seed minutes=$minutes started $(date '+%F %T')"
python3 -u tools/fuzz.py --seed "$seed" --minutes "$minutes" \
    --mutations 500 --programs 60 --trap-programs 40 --packages 20 \
    --mem-programs 30 --atomic-programs 20 --litmus-programs 8
crashes=$(ls build/fuzz/finding-*.lucb 2>/dev/null | wc -l | tr -d ' ')
echo "campaign: finished $(date '+%F %T'), $crashes findings under build/fuzz/"
[ "$crashes" = "0" ]
