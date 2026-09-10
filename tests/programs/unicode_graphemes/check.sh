#!/bin/sh
set -eu
cd "$(dirname "$0")/../../.."
python3 tests/programs/unicode_graphemes/run.py "${1:-./build/luce-base}"
