#!/bin/sh
set -eu
cd "$(dirname "$0")/../../.."
python3 tests/programs/external_storage/run.py "${1:-./build/luce-base}"
