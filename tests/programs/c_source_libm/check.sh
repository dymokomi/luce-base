#!/bin/sh
set -eu
cd "$(dirname "$0")/../../.."
exec python3 tests/programs/c_source_libm/run.py "${1:-./build/luce-base}"
