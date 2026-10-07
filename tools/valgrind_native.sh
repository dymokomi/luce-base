#!/bin/sh
# Memory-check the NATIVE backend. Every positive program of the conformance and robustness
# suites is built through the native backend at -O0 and -O3 and run under valgrind's
# memcheck; an invalid read or write, a use of uninitialised memory, or a bad free is a
# finding. The C backend is already covered by the address and undefined-behaviour
# sanitizers (tests/sanitize); this reaches the native machine code they cannot, the primary
# target. Output is NOT compared -- that is the conformance suite's job, and valgrind does not
# reproduce floating-point results bit for bit. A program valgrind cannot model (an internal
# float assertion it rounds differently, a custom allocator, inline asm) opts out with a
# `# valgrind: skip` line. Needs valgrind and runs on Linux (`apt install valgrind`); on
# macOS run it in the Linux container. Usage: tools/valgrind_native.sh
set -eu
cd "$(dirname "$0")/.."
command -v valgrind > /dev/null 2>&1 || { echo "valgrind_native: no valgrind (apt install valgrind)"; exit 1; }
host=$(tools/host.sh)
# 99 is valgrind's own exit when it finds a memory error, kept distinct from a program's
# own non-zero exit (a trap), so the two are never confused.
# --max-stackframe: a Luce frame may be as large as a thread's stack (thread.default_stack,
# 8 MiB). Valgrind's default of 2,000,000 bytes reads a larger drop of the stack pointer as a
# switch to another stack and leaves the new frame unaddressable, so every access to it is
# reported as an "invalid write ... on thread N's stack" although the stack is real.
vg="valgrind --error-exitcode=99 --leak-check=no --track-origins=yes --max-stackframe=8388608 -q"
# one program in a directory of its own: `valgrind_native.sh --case SRC`
if [ "${1:-}" = --case ]; then
    src=$2
    profile=""
    grep -q '^# profile: diagnostic' "$src" && profile="--profile diagnostic"
    work=$(mktemp -d build/vg-cases/case.XXXXXX)
    for opt in 0 3; do
        ./build/luce-base build "$src" --native --opt "$opt" $profile -o "$work/program"
        $vg "$work/program" > /dev/null 2> "$work/err" && rc=0 || rc=$?
        if [ "$rc" = "99" ]; then
            echo "FAIL valgrind: $src --opt $opt found a memory error"; cat "$work/err"; exit 1
        fi
        if [ "$rc" != "0" ]; then
            echo "FAIL valgrind: $src --opt $opt trapped under valgrind (status $rc); if it is float-sensitive add '# valgrind: skip'"; exit 1
        fi
    done
    rm -rf "$work"
    exit 0
fi
# every program at once, as many as the machine has cores
mkdir -p build/vg-cases
for f in tests/conformance/[0-9]*/*.expect tests/robustness/*/*.expect; do
    [ -e "$f" ] || continue
    case "$f" in *.*-*.expect) continue;; esac
    [ -e "${f%.expect}.$host.expect" ] && f="${f%.expect}.$host.expect"
    src="${f%%.*}.lucb"
    [ -e "$src" ] || src="${f%%.*}/main.lucb"
    [ -e "$src" ] || continue
    grep -q '^# sanitize: skip' "$src" && continue
    grep -q '^# valgrind: skip' "$src" && continue
    echo "$src"
done > build/vg-cases/list
n=$(wc -l < build/vg-cases/list | tr -d ' ')
xargs -P "$(tools/jobs.sh)" -n 1 sh tools/valgrind_native.sh --case < build/vg-cases/list
rm -rf build/vg-cases
echo "ok valgrind: $n native programs clean under memcheck at --opt 0 and --opt 3"
