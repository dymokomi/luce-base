#!/bin/sh
set -eu
cd "$(dirname "$0")/../../.."
python3 tests/programs/net_options/run.py "${1:-./build/luce-base}"
