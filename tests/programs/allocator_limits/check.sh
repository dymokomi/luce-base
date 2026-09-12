#!/bin/sh
set -eu
cd "$(dirname "$0")/../../.."
exec python3 tests/programs/allocator_limits/run.py "${1:-./build/luce-base}"
