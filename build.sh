#!/bin/sh
# Build luce-base: first from the C snapshot under bootstrap/ with the host C
# compiler, then from source with that binary. `LUCB=/path/to/lucb ./build.sh`
# uses the seed for the first step instead.
set -eu
cd "$(dirname "$0")"
mkdir -p build
CC=${CC:-cc}
if [ -n "${LUCB:-}" ]; then
    "$LUCB" build src/main.lucb --release -o build/stage0
else
    "$CC" -std=gnu11 -O2 -w -I runtime bootstrap/luce-base.c runtime/lucb_rt.c -lm -pthread -o build/stage0
fi
./build/stage0 build src/main.lucb --release -o build/luce-base
echo "built build/luce-base"
