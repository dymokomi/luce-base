#!/bin/sh
# Refresh bootstrap/luce-base.c from the compiler built from source.
set -eu
cd "$(dirname "$0")/.."
./build/luce-base build src/main.lucb --emit=c -o bootstrap/luce-base.c
echo "wrote bootstrap/luce-base.c"
