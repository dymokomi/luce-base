#!/bin/sh
# The platform suite: what depends on the target, proved on the host that has it.
#
# `tests/platform/common/` holds programs over the standard library's target-dependent
# parts (the futex, the directory entry, `getaddrinfo`, the clocks, page mapping, the
# process's environment): each runs on every host through both backends and must print its
# expectation, `NAME.expect`, or `NAME.HOST.expect` where the output names the target.
# On x86-64 every program also runs natively at the baseline level, `--cpu v1`.
# `tests/platform/linux/` and `tests/platform/macos/` hold programs for one operating
# system, run only there. Then every target of §19.5 is emitted from this host: the C
# backend writes the C for each (`--target NAME --emit=c`), and where the target's
# operating system is this host's the C must also compile, since the same headers
# describe it; the native backend writes the assembly for the targets it has generators
# for, whatever the host; and the C for the host target is the C the plain build emits.
set -eu
cd "$(dirname "$0")/../.."
host=$(tools/host.sh)
os=$(echo "$host" | sed 's/.*-//')
programs=0
run_program() {
    src=$1
    stem=${src%.lucb}
    expect="$stem.$host.expect"
    [ -f "$expect" ] || expect="$stem.expect"
    if [ ! -f "$expect" ]; then
        echo "FAIL $src: no expectation for $host"; exit 1
    fi
    echo "== $src"
    for flags in "" "--native"; do
        ./build/luce-base build "$src" $flags -o build/platform
        ./build/platform > build/platform.out
        cmp build/platform.out "$expect"
    done
    if [ -n "$baseline" ]; then
        ./build/luce-base build "$src" --native --cpu $baseline -o build/platform
        ./build/platform > build/platform.out
        cmp build/platform.out "$expect"
    fi
    programs=$((programs + 1))
}
# the level is the processor's unless asked otherwise (§19.5); on x86-64 the baseline's
# forms (no F16C, no `pmulld`) are proved as well, since a newer host would never take them
baseline=""
case "$host" in x86_64-*) baseline="v1";; esac
for f in tests/platform/common/*.lucb; do
    run_program "$f"
done
for f in tests/platform/"$os"/*.lucb; do
    [ -e "$f" ] || continue
    run_program "$f"
done
# every target, from this host
targets=0
for target in x86_64-linux x86_64-macos x86_64-windows arm64-linux arm64-macos; do
    target_os=$(echo "$target" | sed 's/.*-//')
    for f in tests/platform/common/*.lucb; do
        ./build/luce-base build "$f" --target "$target" --emit=c -o build/platform.c
        if [ "$target_os" = "$os" ]; then
            cc -std=gnu11 -Wall -Werror -Wno-format -fsyntax-only -I runtime build/platform.c
        fi
        case "$target" in
            arm64-macos|x86_64-linux)
                ./build/luce-base build "$f" --target "$target" --native --emit=asm -o build/platform.s;;
        esac
    done
    targets=$((targets + 1))
done
./build/luce-base build tests/platform/common/identity.lucb --target "$host" --emit=c -o build/platform.c
./build/luce-base build tests/platform/common/identity.lucb --emit=c -o build/platform-host.c
cmp build/platform.c build/platform-host.c
rm -f build/platform build/platform.out build/platform.c build/platform-host.c build/platform.s
echo "ok platform: $programs programs on $host, $targets targets emitted"
