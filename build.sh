#!/bin/sh
# Build luce-base with the seed compiler.
set -eu
cd "$(dirname "$0")"
LUCB=${LUCB:-../luce-seed/build/lucb}
mkdir -p build
"$LUCB" build src/main.lucb --release -o build/luce-base
echo "built build/luce-base"
