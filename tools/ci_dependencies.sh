#!/bin/bash
set -eu
seed_tag=$(cat bootstrap/SEED)
git clone --depth 1 --branch "$seed_tag" https://github.com/dymokomi/luce-seed.git ../luce-seed
(cd ../luce-seed && ./build.sh)
if [ "$(uname -s)" = Darwin ]; then
    brew install sdl3 pkg-config
else
    sudo apt-get update
    sudo apt-get install -y clang cmake ninja-build pkg-config curl gdb binutils libx11-dev libxext-dev libxrandr-dev libxcursor-dev libxi-dev libxfixes-dev libxss-dev
    git clone --depth 1 --branch release-3.2.16 https://github.com/libsdl-org/SDL.git ../sdl3
    cmake -S ../sdl3 -B ../sdl3/build -G Ninja -DCMAKE_BUILD_TYPE=Release -DSDL_SHARED=ON -DSDL_STATIC=OFF -DSDL_TESTS=OFF -DSDL_X11=ON -DSDL_WAYLAND=OFF
    cmake --build ../sdl3/build --parallel 4
    sudo cmake --install ../sdl3/build
    sudo ldconfig
fi
