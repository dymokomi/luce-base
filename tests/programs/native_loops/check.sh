#!/bin/sh
set -eu
cd "$(dirname "$0")/../../.."
exec python3 tests/programs/native_loops/run.py "${1:-./build/luce-base}"
