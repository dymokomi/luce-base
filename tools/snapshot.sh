#!/bin/sh
# Refresh the bootstrap snapshots from the compiler built from source: one C file per
# target that has a native backend, each the compiler's own C for that target. Any host
# writes every snapshot, since the C backend emits C for any target (§19.5); the gate on
# each host checks that its own snapshot is what its compiler emits.
set -eu
cd "$(dirname "$0")/.."
for target in arm64-macos x86_64-linux; do
    ./build/luce-base build src/main.lucb --target "$target" --emit=c -o "bootstrap/luce-base-$target.c"
    echo "wrote bootstrap/luce-base-$target.c"
done
