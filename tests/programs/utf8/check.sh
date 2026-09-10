#!/bin/sh
set -eu
cd "$(dirname "$0")/../../.."
python3 tests/programs/utf8/run.py "${1:-./build/luce-base}"
