#!/bin/sh
# The proving programs under tests/programs, each driven from outside by its check.sh, at
# once (each writes under build/ by names of its own): a check's output is printed whole
# when it ends, and any failure fails the run. Usage: tools/program_checks.sh
set -eu
cd "$(dirname "$0")/.."
if [ "${1:-}" = --one ]; then
    out=$("$2" 2>&1) && status=0 || status=$?
    printf '%s\n' "$out"
    [ "$status" = 0 ] || { echo "FAIL $2 (status $status)"; exit 1; }
    exit 0
fi
ls tests/programs/*/check.sh | xargs -P "$(tools/jobs.sh)" -n 1 sh tools/program_checks.sh --one
