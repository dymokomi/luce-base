#!/bin/sh
# Prove a packaged archive works where it is unpacked: `tools/install_smoke.sh ARCHIVE
# WORK_DIR`. The archive's checksum is verified, the tree is unpacked under WORK_DIR, and
# the compiler there builds and runs a program through the native backend and the C
# backend with only its own tree and the host's C toolchain, as an installed copy would.
set -eu
archive=$1
work=$2
[ -f "$archive" ] || { echo "install_smoke.sh: $archive is missing" >&2; exit 1; }
rm -rf "$work"
mkdir -p "$work"
work=$(cd "$work" && pwd)   # absolute, so paths survive the cd into a scaffolded project
directory=$(dirname "$archive")
name=$(basename "$archive")
if command -v sha256sum > /dev/null 2>&1; then
    (cd "$directory" && sha256sum -c "$name.sha256")
else
    (cd "$directory" && shasum -a 256 -c "$name.sha256")
fi
tar -xzf "$archive" -C "$work"
tree=$(ls "$work")
bin="$work/$tree/bin"
case "$(uname -s)" in MINGW*|MSYS*|CYGWIN*) compiler="$bin/luce-base.exe"; program="$work/hello.exe";; *) compiler="$bin/luce-base"; program="$work/hello";; esac
"$compiler" --version
printf 'import strings\npub func main(arguments: str[]) -> i32:\n    print(f"hello from luce-base, {strings.starts_with("luce", "lu")}")\n    return 0\n' > "$work/hello.lucb"
"$compiler" build "$work/hello.lucb" --native -o "$program"
[ "$("$program")" = "hello from luce-base, true" ]
"$compiler" build "$work/hello.lucb" --backend=c -o "$program"
[ "$("$program")" = "hello from luce-base, true" ]
# the bundled project tool builds and runs a scaffolded project with this same compiler
case "$(uname -s)" in MINGW*|MSYS*|CYGWIN*) luc="$bin/luc.exe";; *) luc="$bin/luc";; esac
[ -x "$luc" ] || { echo "install_smoke.sh: the archive has no bin/luc" >&2; exit 1; }
"$luc" --version
LUCE_BASE="$compiler" "$luc" new "$work/demo" > /dev/null
[ "$(cd "$work/demo" && LUCE_BASE="$compiler" "$luc" run)" = "hello from demo" ]
echo "ok install smoke: $tree builds and runs a program through both backends, and luc builds a project"
