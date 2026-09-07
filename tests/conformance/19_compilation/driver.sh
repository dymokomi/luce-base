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
