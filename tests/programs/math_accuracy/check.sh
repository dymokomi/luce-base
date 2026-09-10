#!/bin/sh
set -eu
cd "$(dirname "$0")/../../.."
python3 tests/programs/math_accuracy/run.py "${1:-./build/luce-base}"
