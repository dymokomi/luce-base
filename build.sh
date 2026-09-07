#!/bin/sh
# Build luce-base. Stage 0 is the host's C snapshot under bootstrap/ compiled by the host C
# compiler, or the seed when `LUCB=/path/to/lucb ./build.sh` names it. Stage 1 is the
# compiler built from source by stage 0 through the C backend. The product, build/luce-base,
# is stage 2: the compiler built from source by stage 1 through the native backend, with no
# C in its path; stage 1 and the product must emit the same assembly for the compiler, which
# is the native backend closing its own loop. The host is one of the targets of base.md
# §19.5, and its snapshot is bootstrap/luce-base-HOST.c (`tools/snapshot.sh` writes one per
# target from any host, since the C backend emits C for every target).
set -eu
cd "$(dirname "$0")"
mkdir -p build
python3 tools/embed_version.py > /dev/null
CC=${CC:-cc}
host=$(tools/host.sh)
snapshot=bootstrap/luce-base-$host.c
if [ -n "${LUCB:-}" ]; then
    # the seed this tree is written against is named in bootstrap/SEED; an older one may
    # lack what the sources use
    want=$(sed 's/^luce-seed-//' bootstrap/SEED)
    have=$("$LUCB" --version | sed 's/^lucb //')
    if [ "$(printf '%s\n%s\n' "$want" "$have" | sort -V | head -1)" != "$want" ]; then
        echo "build.sh: $LUCB is lucb $have; this tree needs luce-seed $want or later" >&2
        exit 1
    fi
    "$LUCB" build src/main.lucb --release -o build/stage0
else
    if [ ! -f "$snapshot" ]; then
        echo "build.sh: no snapshot for $host under bootstrap/; start from the seed with LUCB=../luce-seed/build/lucb" >&2
        exit 1
    fi
    "$CC" -std=gnu11 -O2 -w -I runtime "$snapshot" runtime/lucb_rt.c -lm -pthread -o build/stage0
fi
./build/stage0 build src/main.lucb --release -o build/stage1
./build/stage1 build src/main.lucb --native -o build/luce-base
./build/stage1 build src/main.lucb --native --emit=asm -o build/stage1.s
./build/luce-base build src/main.lucb --native --emit=asm -o build/stage2.s
if ! cmp -s build/stage1.s build/stage2.s; then
    echo "build.sh: the native compiler does not reproduce its own assembly" >&2
    exit 1
fi
rm -f build/stage1.s build/stage2.s
echo "built build/luce-base (native)"
