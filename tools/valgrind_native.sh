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
vg="valgrind --error-exitcode=99 --leak-check=no --track-origins=yes -q"
n=0
for f in tests/conformance/[0-9]*/*.expect tests/robustness/*/*.expect; do
    [ -e "$f" ] || continue
    case "$f" in *.*-*.expect) continue;; esac
    [ -e "${f%.expect}.$host.expect" ] && f="${f%.expect}.$host.expect"
    src="${f%%.*}.lucb"
    [ -e "$src" ] || src="${f%%.*}/main.lucb"
    [ -e "$src" ] || continue
    grep -q '^# sanitize: skip' "$src" && continue
    grep -q '^# valgrind: skip' "$src" && continue
    profile=""
    grep -q '^# profile: diagnostic' "$src" && profile="--profile diagnostic"
    for opt in 0 3; do
        ./build/luce-base build "$src" --native --opt "$opt" $profile -o build/vgprog
        $vg ./build/vgprog > /dev/null 2> build/vg.err && rc=0 || rc=$?
        if [ "$rc" = "99" ]; then
            echo "FAIL valgrind: $src --opt $opt found a memory error"; cat build/vg.err; exit 1
        fi
        if [ "$rc" != "0" ]; then
            echo "FAIL valgrind: $src --opt $opt trapped under valgrind (status $rc); if it is float-sensitive add '# valgrind: skip'"; exit 1
        fi
    done
    n=$((n + 1))
done
rm -f build/vgprog build/vg.err
echo "ok valgrind: $n native programs clean under memcheck at --opt 0 and --opt 3"
