#!/bin/sh
# Build luce-base. Stage 0 is the host's C snapshot under bootstrap/ compiled by the host C
# compiler, or the seed when `LUCB=/path/to/lucb ./build.sh` names it. Stage 1 is the
# compiler built from source by stage 0 through the native backend. The product, build/luce-base,
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
    # LUCB is an explicit compiler override. CI obtains the exact source commit
    # in bootstrap/SEED; compiling this tree checks the override's capabilities.
    "$LUCB" build src/main.lucb --release -o build/stage0
else
    if [ ! -f "$snapshot" ]; then
        echo "build.sh: no snapshot for $host under bootstrap/; start from the seed with LUCB=../luce-seed/build/lucb" >&2
        exit 1
    fi
    # the standard library's C for the host, one member per module, as the archive stage 0
    # links: a member is loaded only when the compiler reaches it
    rm -rf build/stage0-std
    mkdir -p build/stage0-std
    for f in "bootstrap/std/$host"/*.c; do
        "$CC" -std=gnu11 -O2 -w -fno-strict-aliasing -I runtime -c "$f" -o "build/stage0-std/$(basename "$f" .c).o"
    done
    ar rcs build/stage0-std.a build/stage0-std/*.o
    "$CC" -std=gnu11 -O2 -w -fno-strict-aliasing -I runtime "$snapshot" runtime/lucb_rt.c build/stage0-std.a -lm -pthread -o build/stage0
    rm -rf build/stage0-std build/stage0-std.a
fi
# every stage links the standard library the stage before it built beside itself, under
# build/lib/luce-base/HOST: one object per module from the native backend (§16.6)
lib="build/lib/luce-base/$host"
./build/stage0 std-build src/std "$lib"
./build/stage0 build src/main.lucb --native -o build/stage1
./build/stage1 std-build src/std "$lib"
./build/stage1 build src/main.lucb --native -o build/luce-base
./build/stage1 build src/main.lucb --native --emit=asm -o build/stage1.s
./build/luce-base build src/main.lucb --native --emit=asm -o build/stage2.s
if ! cmp -s build/stage1.s build/stage2.s; then
    echo "build.sh: the native compiler does not reproduce its own assembly" >&2
    exit 1
fi
rm -f build/stage1.s build/stage2.s
# the product's own library: its assembly must be what stage 1 wrote, then the archive
# through the C backend as well, where the host has a C compiler
./build/luce-base std-build src/std build/std-stage2 --emit=asm
for f in build/std-stage2/*.s; do
    if ! cmp -s "$f" "$lib/$(basename "$f")"; then
        echo "build.sh: the native compiler does not reproduce the standard library's assembly ($(basename "$f"))" >&2
        exit 1
    fi
done
rm -rf build/std-stage2
./build/luce-base std-build src/std "$lib" --backend=c
echo "built build/luce-base (native) and $lib"
