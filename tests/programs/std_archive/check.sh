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
# a module read from one file is one member; a module of fragments is one member per file
ar t "$out/libstd.a" | grep -q '^core.o$'
ar t "$out/libstd.a" | grep -q '^strings-module.o$'
ar t "$out/libstd.a" | grep -q '^gpu-metal-device.o$'
ar t "$out/libstd-c.a" | grep -q '^strings-module-c.o$'
case "$host" in *-macos) u=_;; *) u=;; esac
# `core` defines its conversions and its initialiser; `strings` refers to core's
nm "$out/core.o" | grep -q " T ${u}lb_core_6conv_s$"
nm "$out/core.o" | grep -q " T ${u}lb_core_0init$"
nm "$out/strings-numbers.o" | grep -q " U ${u}lb_core_"
# a member defines every public function of its module, the ones the inliner expanded
# included, and keeps a private one only while its own code reaches it: a helper of a
# branch the target folds away is left out, with its foreign calls
nm "$out/paths.o" | grep -q " T ${u}lb_paths_extension$"
nm "$out/paths.o" | grep -q " t ${u}lb_paths_14last_separator$\| T ${u}lb_paths_14last_separator$"
case "$host" in
    *-windows) nm "$out/paths.o" | grep -q "lb_paths_12drive_prefix$";;
    *) if nm "$out/paths.o" | grep -q "lb_paths_12drive_prefix$"; then echo "FAIL: a Windows-only helper reached the $host member"; exit 1; fi;;
esac
if nm "$out/strings-numbers.o" | grep -q " T ${u}lb_core_"; then echo "FAIL: strings-numbers.o defines core's functions"; exit 1; fi
# a private helper another fragment names is defined by its own fragment's member
nm "$out/files-module.o" | grep -q " T ${u}lb_files_6c_read$"
# each fragment member initialises its own globals under its own name
nm "$out/gpu-metal-device.o" | grep -q " T ${u}lb_gpu_12metal_device_0init$"
# a generic instance is weak in every member that carries it, so the copies coalesce
case "$host" in *-macos) nm -m "$out"/*.o | grep -q "weak.*${u}lb_";; *) nm "$out"/*.o | grep -q " [Ww] lb_";; esac
echo "ok std archive: $(ar t "$out/libstd.a" | wc -l | tr -d ' ') native members, $(ar t "$out/libstd-c.a" | wc -l | tr -d ' ') C members"
