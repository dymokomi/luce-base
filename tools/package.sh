#!/bin/sh
# Package the built compiler for this host: `tools/package.sh [OUT_DIR]`, OUT_DIR defaulting
# to build/release. The archive is `luce-base-VERSION-HOST.tar.gz` with a SHA-256 beside
# it, holding one tree, `luce-base-VERSION/`:
#
#   bin/luce-base                     the compiler (luce-base.exe on Windows)
#   share/luce-base/std/              the standard library's source, read with every build
#   share/luce-base/                  licences, VERSION, the language and library references
#
# The compiler finds the library beside its `bin` directory (base.md §16.6), so the tree
# runs from wherever it is unpacked; a program it builds compiles what it reaches of it and
# needs nothing from the tree at run time. Runs on macOS, Linux, and Windows in an MSYS2
# shell, after ./build.sh or tools/build_windows.py.
set -eu
cd "$(dirname "$0")/.."
export COPYFILE_DISABLE=1
export LC_ALL=C
umask 022
out=${1:-build/release}
version=$(tr -d '[:space:]' < VERSION)
host=$(tools/host.sh)
case "$host" in x86_64-windows) exe=build/luce-base.exe; name=luce-base.exe;; *) exe=build/luce-base; name=luce-base;; esac
[ -f "$exe" ] || { echo "package.sh: $exe is missing; build first" >&2; exit 1; }
[ "$("$exe" --version)" = "luce-base $version" ] || { echo "package.sh: the built compiler is not version $version" >&2; exit 1; }
tree="luce-base-$version"
work="$out/tree"
rm -rf "$work"
mkdir -p "$work/$tree/bin" "$work/$tree/share/luce-base/docs/language"
cp "$exe" "$work/$tree/bin/$name"
chmod 755 "$work/$tree/bin/$name"
cp -R src/std "$work/$tree/share/luce-base/std"
cp LICENSE LICENSE-MIT LICENSE-APACHE VERSION "$work/$tree/share/luce-base/"
cp docs/language/base.md "$work/$tree/share/luce-base/docs/language/"
cp docs/LIBRARY.md docs/STATUS.md "$work/$tree/share/luce-base/docs/"
archive="luce-base-$version-$host.tar.gz"
mkdir -p "$out"
rm -f "$out/$archive" "$out/$archive.sha256"
(cd "$work" && tar -czf "../$archive" "$tree")
rm -rf "$work"
if command -v sha256sum > /dev/null 2>&1; then
    (cd "$out" && sha256sum "$archive" > "$archive.sha256")
else
    (cd "$out" && shasum -a 256 "$archive" > "$archive.sha256")
fi
echo "packaged $out/$archive ($(wc -c < "$out/$archive" | tr -d ' ') bytes)"
