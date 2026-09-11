#!/bin/sh
set -eu
cd "$(dirname "$0")/../../.."
python3 tests/programs/describe_api/run.py "${1:-./build/luce-base}"
