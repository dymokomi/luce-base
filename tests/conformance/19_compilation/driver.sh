#!/bin/sh
# Chapter 19 is about the driver, so its points are proven by running the driver rather than
# a program: the warnings `-W` prints, the diagnostic profile, the target listing, the
# freestanding build, and the library build. Run from the repository root by run.sh.
set -eu
dir=tests/conformance/19_compilation
lb=./build/luce-base
echo "== $dir/driver.sh"
# -W prints every warning class, in the checker's order, and nothing else (§19.6)
$lb check $dir/warnings.lucb -W 2>&1 | cmp - $dir/warnings.warnings
# without -W the checker is silent
[ -z "$($lb check $dir/warnings.lucb 2>&1)" ] || { echo "FAIL $dir: warnings without -W"; exit 1; }
for native in "" "--native"; do
    # the diagnostic profile: filled storage, quarantined blocks, recorded sites (§19.4)
    $lb build $dir/diagnostic.lucb --profile diagnostic $native -o build/conformance
    ./build/conformance | cmp - $dir/diagnostic.diagnostic
    # a profile changes no trap (§19.4)
    $lb build $dir/overflow.lucb --profile diagnostic $native -o build/conformance
    if ./build/conformance > /dev/null 2> build/conformance.err; then
        echo "FAIL $dir/overflow.lucb: no trap under the diagnostic profile"; exit 1
    fi
    grep -q overflow build/conformance.err
    # a library and its header: exports declared, `pub` kept private (§19.6)
    $lb build $dir/library.lucb --lib $native -o build/conformance
    grep -q '^int32_t twice(int32_t x);$' build/conformance.h
    if grep -q hidden build/conformance.h; then echo "FAIL $dir/library.lucb: a pub function in the header"; exit 1; fi
    ar t build/conformance.a > /dev/null
    rm -f build/conformance.a build/conformance.h
done
# a library's code as text, for any target, with the initialiser the loader runs (§17.6, §19.5)
$lb build $dir/library.lucb --lib --native --target arm64-macos --emit=asm -o build/conformance.s
grep -q '__mod_init_func' build/conformance.s
grep -q '_lb_library_init$' build/conformance.s
$lb build $dir/library.lucb --lib --native --target x86_64-linux --emit=asm -o build/conformance.s
grep -q '\.init_array' build/conformance.s
grep -q ' lb_library_init$' build/conformance.s
$lb build $dir/library.lucb --lib --target x86_64-windows --emit=c -o build/conformance.c
grep -q 'twice' build/conformance.c
rm -f build/conformance.s build/conformance.c
# `--target NAME`: one arm of a target test survives per target in the emitted C (§19.5, §19.6)
for pair in "x86_64-linux ARM_LINUX_X86" "arm64-macos ARM_MACOS_ARM64" "arm64-linux ARM_LINUX_ARM64" "x86_64-windows ARM_WINDOWS"; do
    set -- $pair
    $lb build $dir/targets_prune.lucb --target $1 --emit=c -o build/conformance.c
    survivors=$(grep -o 'ARM_[A-Z0-9_]*' build/conformance.c | sort -u | tr '\n' ' ')
    [ "$survivors" = "$2 " ] || { echo "FAIL $dir/targets_prune.lucb for $1: kept [$survivors]"; exit 1; }
done
if $lb build $dir/targets_prune.lucb --target arm64-linux --native -o build/conformance 2> build/conformance.err; then
    echo "FAIL $dir: the native backend accepted another target"; exit 1
fi
grep -q 'emit=c' build/conformance.err
if $lb build $dir/targets_prune.lucb --target nope --emit=c -o build/conformance.c 2> build/conformance.err; then
    echo "FAIL $dir: an unknown target was accepted"; exit 1
fi
grep -q 'unknown target' build/conformance.err
rm -f build/conformance.c
# the target listing (§19.5); the host's mark is not part of the expectation
$lb build $dir/targets.lucb --target | sed 's/ (built here)//' | cmp - $dir/targets.targets
# a freestanding program: its own `_start`, no shim, an exit code of its own choosing (§19.4)
$lb build $dir/freestanding.lucb --native --freestanding -o build/conformance
rc=0
./build/conformance > build/conformance.out || rc=$?
[ "$rc" = 3 ] || { echo "FAIL $dir/freestanding.lucb: exit code $rc"; exit 1; }
printf 'no shim\n' | cmp - build/conformance.out
# a freestanding build without `_start` is refused
if $lb build $dir/warnings.lucb --native --freestanding -o build/conformance 2> build/conformance.err; then
    echo "FAIL $dir: a freestanding build without _start"; exit 1
fi
grep -q '_start' build/conformance.err
rm -f build/conformance build/conformance.out build/conformance.err
