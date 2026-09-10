#!/bin/sh
set -eu
cd "$(dirname "$0")/../../.."
python3 tests/programs/stdlib_scaling/run.py "${1:-./build/luce-base}"
