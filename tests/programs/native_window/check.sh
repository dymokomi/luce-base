#!/bin/sh
# Portable contract tests always run. GUI tests require a logged-in macOS desktop.
set -eu
cd "$(dirname "$0")/../../.."
exec python3 tests/programs/native_window/run.py "${1:-./build/luce-base}"
