#!/bin/sh
# Coverage-guided fuzzing of the compiler front-end. The compiler's own C (the host
# snapshot under bootstrap/) is built with AFL++'s instrumenting compiler and the address
# and undefined-behaviour sanitizers into an instrumented `luce-base`; AFL++ then drives
# `luce-base check @@` from a corpus of the sample and conformance programs, steered by
# edge coverage. Unlike tools/fuzz.py's black-box mutate mode this has feedback, and unlike
# it every crash it finds is a real fault in the compiler (a signal or a sanitizer abort),
# saved under build/afl/out/*/crashes/. Needs AFL++ and runs on Linux (`apt install afl++`);
# on macOS run it in the Linux container (tools/linux_hardening.sh).
# Usage: tools/aflfuzz.sh [seconds]   (default 3600)
set -eu
cd "$(dirname "$0")/.."
host=$(tools/host.sh)
seconds=${1:-3600}
snapshot="bootstrap/luce-base-$host.c"
[ -f "$snapshot" ] || { echo "aflfuzz: no snapshot $snapshot for this host"; exit 1; }

cc=""
for candidate in afl-clang-fast afl-clang-lto afl-cc afl-gcc-fast; do
    command -v "$candidate" > /dev/null 2>&1 && { cc=$candidate; break; }
done
[ -n "$cc" ] || { echo "aflfuzz: no AFL++ compiler (apt install afl++)"; exit 1; }
command -v afl-fuzz > /dev/null 2>&1 || { echo "aflfuzz: no afl-fuzz (apt install afl++)"; exit 1; }

rm -rf build/afl
mkdir -p build/afl/corpus
# the instrumented compiler: the whole front end is exercised through `check`
AFL_LLVM_INSTRUMENT=${AFL_LLVM_INSTRUMENT:-CLASSIC} \
"$cc" -std=gnu11 -O1 -g -w -fno-strict-aliasing \
    -fsanitize=address,undefined -fno-sanitize-recover=all -fno-sanitize=alignment,function \
    -I runtime "$snapshot" runtime/lucb_rt.c -lm -pthread -o build/afl/luce-base

# seed the corpus from the small, syntactically diverse front-end inputs
i=0
for f in tests/samples/*.lucb tests/samples/errors/*.lucb tests/conformance/[0-9]*/*.lucb tests/conformance/[0-9]*/errors/*.lucb; do
    [ -e "$f" ] || continue
    [ "$(wc -c < "$f")" -lt 4096 ] || continue
    cp "$f" "build/afl/corpus/$i.lucb"
    i=$((i + 1))
done
echo "aflfuzz: $cc built the instrumented compiler; $i corpus seeds; fuzzing check for ${seconds}s"

export AFL_SKIP_CPUFREQ=1 AFL_I_DONT_CARE_ABOUT_MISSING_CRASHES=1 AFL_NO_AFFINITY=1
export ASAN_OPTIONS=abort_on_error=1:detect_leaks=0:allocator_may_return_null=1:symbolize=0
afl-fuzz -i build/afl/corpus -o build/afl/out -V "$seconds" -- build/afl/luce-base check @@ || true

crashes=$(find build/afl/out -path '*/crashes/id:*' 2>/dev/null | wc -l | tr -d ' ')
hangs=$(find build/afl/out -path '*/hangs/id:*' 2>/dev/null | wc -l | tr -d ' ')
echo "aflfuzz: done -- $crashes crashers, $hangs hangs (build/afl/out/default/{crashes,hangs}/)"
[ "$crashes" = "0" ]
