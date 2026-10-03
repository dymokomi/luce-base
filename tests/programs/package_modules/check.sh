#!/bin/sh
set -eu
python3 "$(dirname "$0")/run.py" "${1:-./build/luce-base}"
