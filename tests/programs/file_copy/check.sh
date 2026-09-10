#!/bin/sh
set -eu
cd "$(dirname "$0")/../../.."
python3 tests/programs/file_copy/run.py "${1:-./build/luce-base}"
