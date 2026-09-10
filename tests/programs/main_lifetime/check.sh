#!/bin/sh
set -eu
cd "$(dirname "$0")/../../.."
python3 tests/programs/main_lifetime/run.py "${1:-./build/luce-base}"
