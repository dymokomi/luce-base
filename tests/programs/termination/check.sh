#!/bin/sh
set -eu
cd "$(dirname "$0")/../../.."
python3 tests/programs/termination/run.py ./build/luce-base
