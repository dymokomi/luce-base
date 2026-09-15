#!/bin/sh
# The standard library builds as an archive of one object per module through both
# backends, each object defining its module's symbols and its initialiser, and generic
# instances weak so the members' copies coalesce.
set -eu
cd "$(dirname "$0")/../../.."
compiler=${1:-./build/luce-base}
host=$(tools/host.sh)
out=build/std_archive
rm -rf "$out"
"$compiler" std-build src/std "$out"
"$compiler" std-build src/std "$out" --backend=c
ar t "$out/libstd.a" | grep -q '^core.o$'
ar t "$out/libstd-c.a" | grep -q '^strings-c.o$'
case "$host" in *-macos) u=_;; *) u=;; esac
# `core` defines its conversions and its initialiser; `strings` refers to core's
nm "$out/core.o" | grep -q " T ${u}lb_core_6conv_s$"
nm "$out/core.o" | grep -q " T ${u}lb_core_0init$"
nm "$out/strings.o" | grep -q " U ${u}lb_core_"
if nm "$out/strings.o" | grep -q " T ${u}lb_core_"; then echo "FAIL: strings.o defines core's functions"; exit 1; fi
# a generic instance is weak in every member that carries it, so the copies coalesce
case "$host" in *-macos) nm -m "$out"/*.o | grep -q "weak.*${u}lb_";; *) nm "$out"/*.o | grep -q " [Ww] lb_";; esac
echo "ok std archive: $(ar t "$out/libstd.a" | wc -l | tr -d ' ') native members, $(ar t "$out/libstd-c.a" | wc -l | tr -d ' ') C members"
