#!/bin/sh
# Portable API contracts plus real Metal rendering where hardware is available.
set -eu
cd "$(dirname "$0")/../../.."
exec python3 tests/programs/gpu/run.py "${1:-./build/luce-base}"
