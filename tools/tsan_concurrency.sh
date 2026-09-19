#!/bin/sh
# ThreadSanitizer over the concurrency programs. Every program that spawns threads is built
# through the C backend with -fsanitize=thread and run; a data race TSan reports is a finding.
# Neither the native backend nor the C backend under the address and undefined sanitizers can
# see a race between threads -- this is the only check that does. A program using a standalone
# `atomic.fence` opts out with `# tsan: skip` (compilers reject `atomic_thread_fence` under
# TSan), as does a test that deliberately traps a thread. Needs a C compiler with TSan and
# ASLR off, so TSan's shadow mapping does not clash with the runtime's allocator; the script
# runs each program under `setarch -R` where that is allowed, otherwise it assumes the host
# has ASLR disabled. Runs on Linux. Usage: tools/tsan_concurrency.sh
set -eu
cd "$(dirname "$0")/.."
mkdir -p build
runner=""
if setarch "$(uname -m)" -R true 2>/dev/null; then runner="setarch $(uname -m) -R"; fi
# TSan must both COMPILE and RUN here: it aborts with an "unexpected memory mapping" on some
# kernels or when ASLR is on, so probe with a real threaded program before committing.
cat > build/.tsan_probe.c <<'PROBE'
#include <pthread.h>
static void *worker(void *arg) { return arg; }
int main(void) { pthread_t h; pthread_create(&h, 0, worker, 0); pthread_join(h, 0); return 0; }
PROBE
if ! ${CC:-cc} -fsanitize=thread build/.tsan_probe.c -o build/.tsan_probe 2>/dev/null \
   || ! $runner ./build/.tsan_probe 2>/dev/null; then
    rm -f build/.tsan_probe.c build/.tsan_probe
    echo "skip tsan_concurrency: ThreadSanitizer is unavailable or cannot map on this host"; exit 0
fi
rm -f build/.tsan_probe.c build/.tsan_probe
n=0
for src in tests/conformance/15_atomics/*.lucb tests/platform/common/*.lucb; do
    [ -e "$src" ] || continue
    grep -q 'thread\.spawn\|import thread' "$src" || continue
    grep -q '^# tsan: skip' "$src" && continue
    [ -e "${src%.lucb}.trap" ] && continue
    profile=""
    grep -q '^# profile: diagnostic' "$src" && profile="--profile diagnostic"
    LUCE_CFLAGS="-fsanitize=thread -O1" ./build/luce-base build "$src" --backend=c $profile -o build/tsanprog
    if ! TSAN_OPTIONS="halt_on_error=1" $runner ./build/tsanprog > /dev/null 2> build/tsan.err; then
        if grep -q 'WARNING: ThreadSanitizer' build/tsan.err; then
            echo "FAIL tsan: $src has a data race"; grep -A20 'WARNING: ThreadSanitizer' build/tsan.err | head -24; exit 1
        fi
        echo "FAIL tsan: $src exited non-zero under TSan"; head -8 build/tsan.err; exit 1
    fi
    n=$((n + 1))
done
rm -f build/tsanprog build/tsan.err
echo "ok tsan: $n threaded programs clean under ThreadSanitizer"
