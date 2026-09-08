#!/bin/sh
# Refresh the bootstrap snapshots from the compiler built from source: one C file per
# target that has a native backend, each the compiler's own C for that target. Any host
# writes every snapshot, since the C backend emits C for any target (§19.5); the gate on
# each host checks that its own snapshot is what its compiler emits.
set -eu
cd "$(dirname "$0")/.."
# a snapshot is for the family's baseline level: it must build on any machine of the
# target, not only one as new as the host that wrote it (§19.5)
for target in arm64-macos x86_64-linux; do
    case "$target" in x86_64-*) level=v1;; *) level=neon;; esac
    ./build/luce-base build src/main.lucb --target "$target" --cpu "$level" --emit=c -o "bootstrap/luce-base-$target.c"
    echo "wrote bootstrap/luce-base-$target.c"
done
