#!/bin/sh
# The test report (§16.5): a failed `assert` names its condition and message at a position
# relative to the package root, and a trap in a test ends the run with the test named, the
# trap's line and the tally so far, status 1; the same through both backends, the options
# before or after the file, the file named by a relative or an absolute path.
# Usage: tests/programs/test_report/check.sh [luce-base binary]
set -eu
cd "$(dirname "$0")/../../.."
LB=$(cd "$(dirname "${1:-./build/luce-base}")" && pwd)/$(basename "${1:-./build/luce-base}")
here=tests/programs/test_report
expected="ok    two and two
FAIL  a false assert
      src/report.lucb:10:5: assert failed: 1 + 1 == 3: arithmetic
FAIL  reads past the end
trap: src/report.lucb:4:5: index out of bounds
1 passed
2 failed"
for file in "$here/package/src/report.lucb" "$PWD/$here/package/src/report.lucb"; do
    for backend in --native --backend=c; do
        for order in after before; do
            if [ "$order" = after ]; then
                "$LB" test "$file" "$backend" > build/test-report.out 2>&1 && status=0 || status=$?
            else
                "$LB" test --profile diagnostic "$backend" "$file" > build/test-report.out 2>&1 && status=0 || status=$?
            fi
            [ "$status" -eq 1 ] || { echo "FAIL $here $file $backend $order: status $status"; cat build/test-report.out; exit 1; }
            [ "$(cat build/test-report.out)" = "$expected" ] || { echo "FAIL $here $file $backend $order:"; cat build/test-report.out; exit 1; }
        done
    done
done
rm -f build/test-report.out
echo "ok $here"
