#!/bin/sh
# Build luce-base and install it: `tools/install.sh [PREFIX]`, PREFIX defaulting to
# /usr/local. The compiler goes to PREFIX/bin/luce-base, with `luce` beside it as the
# short name the specification's tooling uses (§19.6).
set -eu
cd "$(dirname "$0")/.."
prefix=${1:-/usr/local}
./build.sh
mkdir -p "$prefix/bin"
install -m 755 build/luce-base "$prefix/bin/luce-base"
ln -sf "$prefix/bin/luce-base" "$prefix/bin/luce"
echo "installed $prefix/bin/luce-base and $prefix/bin/luce ($(./build/luce-base --version))"
