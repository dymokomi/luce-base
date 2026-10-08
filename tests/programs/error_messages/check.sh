#!/bin/sh
# The error message tests again under the diagnostic profile, through both backends: a
# message read after the storage it was made from is freed would read 0xDD there.
set -eu
cd "$(dirname "$0")/../../.."
compiler=${1:-./build/luce-base}
for backend in --backend=c --native; do
    "$compiler" test tests/programs/error_messages/main.lucb --profile diagnostic $backend > /dev/null
done
echo "ok error messages: whole under the diagnostic profile"
