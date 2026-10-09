#!/bin/sh
# The gate: the binary lexes, parses, and checks every sample and source file,
# builds and runs every sample with `main` through both backends, runs every
# module's tests through both backends, builds itself again to the same C, and
# rejects every program under tests/samples/errors. The C and native backends are the
# two executions that must agree. The gate runs on every host with a native backend
# (arm64-macos, x86_64-linux); what depends on the target is under tests/platform.
# `./test.sh --quick` runs everything but the instrumented runs, which `./test.sh` adds:
# the sanitizers, the other C compilers, valgrind, ThreadSanitizer and the fuzzer under
# valgrind (docs/CI.md).
set -eu
cd "$(dirname "$0")"
full=true
[ "${1:-}" = --quick ] && full=false
# the gate's builds share a cache of this tree's own, not the user's (§19.7)
export LUCE_CACHE="$PWD/build/cache"
if [ ! -x ../luce-seed/build/lucb ]; then
    echo "FAIL: the full gate requires ../luce-seed/build/lucb (luce-seed's main, built)"
    exit 1
fi
./build.sh
python3 tools/test_run_case.py
python3 tools/test_platform_boundaries.py
python3 tools/test_narrow_extern.py
python3 tools/test_frame_sharing_time.py
python3 tools/test_enum_cases_time.py
python3 tools/test_ranges_time.py
python3 tools/test_inline_optimised.py
python3 tools/test_inline_across_modules.py
python3 tools/test_hot_loop_codegen.py
python3 tools/test_gather_kernel.py
python3 tools/test_float_registers.py
python3 tools/test_x86_addressing.py
python3 tools/test_x86_integer_registers.py
python3 tools/test_float_constants.py
python3 tools/test_widened_loads.py
python3 tools/test_x86_selects.py
python3 tools/test_checked_products.py
python3 tools/test_sunk_addresses.py
python3 tools/test_index_ranges.py
python3 tools/test_windows_parameters.py
python3 tools/test_windows_large_arguments.py
python3 tools/test_debug_labels.py
python3 tools/test_module_batches.py
python3 tools/test_package_tests.py
python3 tools/test_numerals_python.py
python3 tools/test_cached_pieces.py
python3 tools/test_function_reuse.py
python3 tools/test_windows_publish.py
python3 tools/test_inline_frames.py
python3 tools/test_small_copies.py
python3 tools/test_static_data.py
python3 tools/test_fmt_comments.py
python3 tools/test_c_prototypes.py
# the guide: every complete program in docs/guide compiles, runs and prints what the page
# shows, and the site built from docs/ has no link to a missing page or section
python3 tools/doc_examples.py
python3 tools/site.py build/site > /dev/null
# what the binary carries is what the sources say: the standard modules, the C runtime, the
# version, and the library reference are generated, and drift is a failure, not a note
python3 tools/embed_runtime.py --check
python3 tools/embed_std.py --check
python3 tools/embed_version.py --check
python3 tools/library_reference.py --check
# the shape of the tree: header boxes, `# mark:` sections, function length and `##` docs
# never regress (tools/shape.py --check, the ratchet in tools/shape.limits)
python3 tools/shape.py --check
# the standard library under src/std is checked as the prelude, not as modules of its own
# Source paths in this repository contain no whitespace. Discover recursively so
# reorganizing compiler modules cannot silently remove them from the gate.
# Each file lexes and parses on its own; a module, a file or a fragment directory (§16.1),
# is what checks and runs its tests (tools/compiler_modules.sh).
compiler_sources=$(find src -type f -name '*.lucb' ! -path 'src/std/*' | LC_ALL=C sort)
compiler_modules=$(./tools/compiler_modules.sh)
for f in tests/samples/*.lucb $compiler_sources tests/programs/*/*.lucb; do
    echo "== $f"
    ./build/luce-base lex "$f" > /dev/null
    ./build/luce-base parse "$f" > /dev/null
done
for f in tests/samples/*.lucb $compiler_modules tests/programs/*/*.lucb; do
    echo "== check $f"
    ./build/luce-base check "$f"
done
# every source of the compiler and the standard library is in the canonical layout (§19.6):
# the formatter changes nothing, and reads its own output back into the same tree
for f in $compiler_sources $(find src/std -type f -name '*.lucb' | LC_ALL=C sort); do
    ./build/luce-base fmt "$f" --check || { echo "FAIL $f is not in the canonical layout; run ./build/luce-base fmt $f --write"; exit 1; }
done
# programs with `main` build and print what their `.expect` files say
for f in tests/samples/*.expect; do
    src="${f%.expect}.lucb"
    echo "== build $src"
    ./build/luce-base build "$src" --backend=c -o build/sample
    ./build/sample > build/sample.out
    cmp build/sample.out "$f"
done
rm -f build/sample build/sample.out
# every module's tests run through both backends: the two executions must agree. The
# compiler's are its package's, which a test of its entry runs (§16.5), with the test
# fragments a `tests/<module>/TESTS` lists; a module the entry does not reach would leave
# the count short of the tests the sources declare (the embedded standard library's text
# holds the standard modules' tests, which are not the compiler's)
fragments=$(find tests -name TESTS | LC_ALL=C sort | while read -r listing; do for f in $(cat "$listing"); do echo "$(dirname "$listing")/$f"; done; done)
declared=$( (find src -type f -name '*.lucb' ! -path 'src/std/*' ! -path src/sema/standard_sources.lucb; echo "$fragments") | grep . | xargs grep -h '^test "' | wc -l | tr -d ' ')
for backend in --backend=c --native; do
    echo "== test src/main.lucb $backend"
    out=$(./build/luce-base test src/main.lucb $backend) || { printf '%s\n' "$out"; exit 1; }
    echo "$out" | tail -1
    [ "$(echo "$out" | tail -1)" = "$declared passed" ] || { echo "FAIL: the compiler's sources declare $declared tests"; exit 1; }
done
for f in tests/programs/*/*.lucb; do
    if grep -rq '^test "' "$f"; then
        echo "== test $f"
        out=$(./build/luce-base test "$f" --backend=c) || { printf '%s\n' "$out"; exit 1; }
        echo "$out" | tail -1
        out=$(./build/luce-base test "$f" --native) || { printf '%s\n' "$out"; exit 1; }
        echo "$out" | tail -1
    fi
done
# every sample with `main` runs natively too
for f in tests/samples/*.expect; do
    src="${f%.expect}.lucb"
    echo "== native $src"
    ./build/luce-base build "$src" --native -o build/sample
    ./build/sample > build/sample.out
    cmp build/sample.out "$f"
done
rm -f build/sample build/sample.out
# a library and its header, through both backends: a C program includes the header, links
# the archive, and prints what tests/samples/exports_use.out says
for native in "--backend=c" ""; do
    echo "== lib tests/samples/exports.lucb $native"
    ./build/luce-base build tests/samples/exports.lucb --lib $native -o build/pixels
    cc -std=c11 -Wall -Werror -Ibuild tests/samples/exports_use.c build/pixels.a -lm -pthread -o build/use_pixels
    ./build/use_pixels > build/use_pixels.out
    cmp build/use_pixels.out tests/samples/exports_use.out
done
rm -f build/pixels.a build/pixels.h build/use_pixels build/use_pixels.out
# the diagnostic profile, through both backends: filled `---` storage, quarantined releases
for native in "--backend=c" ""; do
    echo "== diagnostic tests/samples/diagnostic.lucb $native"
    ./build/luce-base build tests/samples/diagnostic.lucb --profile diagnostic $native -o build/sample
    ./build/sample > build/sample.out
    cmp build/sample.out tests/samples/diagnostic.out
    ./build/luce-base test tests/samples/diagnostic.lucb --profile diagnostic $native > /dev/null
done
rm -f build/sample build/sample.out
# the standard library's unit tests, programs under tests/std that link the archive and
# hold `test` blocks over each module's public surface, through both backends
for f in tests/std/*.lucb; do
    echo "== std test $f"
    ./build/luce-base test "$f" --backend=c > /dev/null
    ./build/luce-base test "$f" --native > /dev/null
done
# the proving programs build natively and are driven from outside, at once
tools/program_checks.sh
# the bootstrap: the compiler built from source builds itself again, and both
# generations must emit the same C for the compiler; the snapshot is only
# reported when it has drifted
echo "== bootstrap"
./build/luce-base build src/main.lucb --emit=c -o build/stage1.c
./build/luce-base build src/main.lucb --backend=c -o build/stage2
./build/stage2 build src/main.lucb --emit=c -o build/stage2.c
cmp build/stage1.c build/stage2.c
# every target's snapshot is what this compiler emits for that target, from this host: the
# C backend's cross-target output is the same on every host, or the note says so
for snapshot in bootstrap/luce-base-*.c; do
    target=$(basename "$snapshot" .c | sed 's/^luce-base-//')
    case "$target" in x86_64-*) level=v1;; *) level=neon;; esac
    ./build/luce-base build src/main.lucb --target "$target" --cpu "$level" --emit=c -o build/snapshot.c
    if ! cmp -s build/snapshot.c "$snapshot"; then
        echo "FAIL $snapshot differs from the current compiler's C for $target; run tools/snapshot.sh"
        diff build/snapshot.c "$snapshot" | head -40; exit 1
    fi
done
rm -f build/stage1.c build/stage2.c build/stage2 build/snapshot.c
# the seed beside this tree builds this compiler from source, and the compiler it
# builds emits the same C for itself as the snapshot-built one: the seed stays a real start.
# (Only this host's target is compared: the seed emits C for its host alone.)
if [ -x ../luce-seed/build/lucb ]; then
    echo "== seed $(git -C ../luce-seed rev-parse HEAD 2>/dev/null || echo ../luce-seed)"
    # the seed carries `numerals` verbatim, so a field lays out alike in what it builds
    cmp src/std/numerals.lucb ../luce-seed/std/numerals.lucb || { echo "FAIL ../luce-seed/std/numerals.lucb is not src/std/numerals.lucb"; exit 1; }
    ../luce-seed/build/lucb build src/main.lucb --release -o build/seed-stage0
    ./build/seed-stage0 build src/main.lucb --emit=c -o build/seed1.c
    ./build/luce-base build src/main.lucb --emit=c -o build/stage1.c
    cmp build/stage1.c build/seed1.c
    rm -f build/seed-stage0 build/seed1.c build/stage1.c
fi
# the native backend closes its own loop: the compiler built natively must emit the
# same C and the same assembly for the compiler as the C-built one, on this host
./build/luce-base build src/main.lucb --native -o build/native
./build/native build src/main.lucb --emit=c -o build/native1.c
./build/luce-base build src/main.lucb --emit=c -o build/stage1.c
cmp build/stage1.c build/native1.c
./build/luce-base build src/main.lucb --native --emit=asm -o build/stage1.s
./build/native build src/main.lucb --native --emit=asm -o build/native1.s
cmp build/stage1.s build/native1.s
rm -f build/native build/native1.c build/stage1.c build/stage1.s build/native1.s
# the checker's warnings, and their exact text, for the sample that exercises each
if ! ./build/luce-base check tests/samples/warnings.lucb -W 2>&1 | cmp -s - tests/samples/warnings.warnings; then
    echo "FAIL tests/samples/warnings.lucb: warnings differ from tests/samples/warnings.warnings"
    ./build/luce-base check tests/samples/warnings.lucb -W 2>&1 | diff - tests/samples/warnings.warnings | head -10
    exit 1
fi
# a bad option is refused with status 2, never defaulted, and a library for another target
# is written with --emit, never assembled here
if ./build/luce-base build tests/samples/exports.lucb --opt abc -o build/sample 2>/dev/null; then
    echo "FAIL: --opt abc was accepted"; exit 1
fi
case "$(uname -sm)" in "Linux x86_64") other_target=x86_64-windows;; *) other_target=x86_64-linux;; esac
if ./build/luce-base build tests/samples/exports.lucb --lib --target "$other_target" -o build/sample 2>/dev/null; then
    echo "FAIL: a library for another target was assembled on this host"; exit 1
fi
rm -f build/sample build/sample.a build/sample.h
# every rejected program must be rejected for the stated reason
for f in tests/samples/errors/*.lucb; do
    want=$(LC_ALL=C sed -n 's/^# error: //p' "$f")
    # under `set -e` a failing substitution would end the gate: the status is taken here
    got=$(./build/luce-base check "$f" 2>&1) && rc=0 || rc=$?
    # a rejection exits with 1 and a diagnostic; a crash or an acceptance is a failure
    if [ "$rc" -ne 1 ]; then
        echo "FAIL $f: the checker stopped with status $rc: [$got]"; exit 1
    fi
    case "$got" in
        *.lucb:[0-9]*:[0-9]*:\ *) ;;
        *) echo "FAIL $f: a diagnostic without a position: [$got]"; exit 1;;
    esac
    case "$got" in
        *"$want"*) echo "== $f (rejected)";;
        *) echo "FAIL $f: expected [$want], got [$got]"; exit 1;;
    esac
done
# the robustness suite: memory management measured through a counting allocator
tests/robustness/run.sh
# the optimisation suite: the IR before the target and the assembly after it, counted
tests/optimization/run.sh
# the conformance suite: a positive and a negative program for each point of the specification
tests/conformance/run.sh
# the platform suite: what depends on the target, on this host, and every target emitted from it
tests/platform/run.sh
# the sanitizer suite: the positive programs through the C backend under the address and
# undefined-behaviour sanitizers, at -O0 and -O2 (tests/sanitize/run.sh)
$full && tests/sanitize/run.sh
# the other C compilers a release meets compile the emitted C here first: GNU GCC on the
# host's snapshot, MinGW-w64 GCC on the Windows one (tools/cross_c.sh)
$full && tools/cross_c.sh
# the seed's program corpus, built natively: every `# answer: N` program prints N
tools/native_check.sh
# the native backend under valgrind's memcheck where valgrind is present (Linux): every
# positive program runs clean at -O0 and -O3, catching memory faults in the native machine
# code that the C-backend sanitizers cannot reach (tools/valgrind_native.sh)
if $full && command -v valgrind > /dev/null 2>&1; then tools/valgrind_native.sh; else echo "skip valgrind_native: no valgrind on this host, or --quick"; fi
# the standard library's own test binaries under valgrind (tools/valgrind_std.sh)
if $full && command -v valgrind > /dev/null 2>&1; then tools/valgrind_std.sh; else echo "skip valgrind_std: no valgrind on this host, or --quick"; fi
# the threaded concurrency programs under ThreadSanitizer where it can run (Linux, ASLR off):
# a data race between threads is a finding no other check sees; the script self-skips where
# TSan is unavailable or cannot map (tools/tsan_concurrency.sh)
$full && tools/tsan_concurrency.sh
# the fuzzer's short run, the same on every host: mutated programs are accepted or
# rejected with a positioned diagnostic, never a fault, and generated programs agree
# across the C, C -O2, native, and seed executions (tools/fuzz.py --minutes M runs longer)
if $full; then python3 tools/fuzz.py --gate --valgrind; else python3 tools/fuzz.py --gate; fi
echo "ok"
