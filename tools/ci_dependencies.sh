#!/bin/bash
set -eu
seed_revision=$(cat bootstrap/SEED)
if [[ ! "$seed_revision" =~ ^[0-9a-f]{40}$ ]]; then
    echo "bootstrap/SEED must name one exact commit" >&2
    exit 1
fi
if [ -e ../luce-seed ]; then
    echo "CI seed setup requires an empty ../luce-seed destination" >&2
    exit 1
fi
git init ../luce-seed
git -C ../luce-seed remote add origin https://github.com/dymokomi/luce-seed.git
git -C ../luce-seed fetch --depth 1 origin "$seed_revision"
git -C ../luce-seed checkout --detach FETCH_HEAD
test "$(git -C ../luce-seed rev-parse HEAD)" = "$seed_revision"
(cd ../luce-seed && ./build.sh)
if [ "$(uname -s)" = Darwin ]; then
    brew install sdl3 pkg-config
else
    sudo apt-get update
    sudo apt-get install -y clang cmake ninja-build pkg-config curl gdb binutils llvm libx11-dev libxext-dev libxrandr-dev libxcursor-dev libxi-dev libxfixes-dev libxss-dev
    git clone --depth 1 --branch release-3.2.16 https://github.com/libsdl-org/SDL.git ../sdl3
    cmake -S ../sdl3 -B ../sdl3/build -G Ninja -DCMAKE_BUILD_TYPE=Release -DSDL_SHARED=ON -DSDL_STATIC=OFF -DSDL_TESTS=OFF -DSDL_X11=ON -DSDL_WAYLAND=OFF
    cmake --build ../sdl3/build --parallel 4
    sudo cmake --install ../sdl3/build
    sudo ldconfig
fi
