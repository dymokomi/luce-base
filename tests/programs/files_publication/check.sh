#!/bin/sh
set -eu
cd "$(dirname "$0")/../../.."
python3 tests/programs/files_publication/run.py "${1:-./build/luce-base}"
