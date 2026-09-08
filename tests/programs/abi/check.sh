#!/bin/sh
# Prove the calling convention both ways: records of every ABI class by value, from Base
# into C and from C into Base exports, through both backends, with the values C computes.
# Usage: tests/programs/abi/check.sh [luce-base binary]
set -eu
cd "$(dirname "$0")/../../.."
LB=${1:-./build/luce-base}
"$LB" build tests/programs/abi/main.lucb -o build/abi-check-c
"$LB" build tests/programs/abi/main.lucb --native -o build/abi-check
./build/abi-check-c > build/abi-check-c.out
./build/abi-check > build/abi-check.out
cmp -s build/abi-check.out build/abi-check-c.out || { echo "FAIL tests/programs/abi: backends disagree"; diff build/abi-check-c.out build/abi-check.out; exit 1; }
printf '107 7 100\n43 3 40\n3 5 3.5 6 6\n200\n3405\n' | cmp -s - build/abi-check.out || { echo "FAIL tests/programs/abi: wrong output"; cat build/abi-check.out; exit 1; }
rm -f build/abi-check build/abi-check-c build/abi-check.out build/abi-check-c.out
# the promised export shapes survive the header, a C consumer, linking, and running (§17.6)
for native in "" "--native"; do
    "$LB" build tests/programs/abi/exports.lucb --lib $native -o build/abi_exports
    cc -std=c11 -Wall -Werror -Ibuild tests/programs/abi/consumer.c build/abi_exports.a -lm -pthread -o build/abi-consumer
    ./build/abi-consumer > build/abi-consumer.out
    printf '42 0 3 1 0 1 3006 0 11\n' | cmp -s - build/abi-consumer.out || { echo "FAIL tests/programs/abi: the exported surface"; cat build/abi-consumer.out; exit 1; }
    rm -f build/abi_exports.a build/abi_exports.h build/abi-consumer build/abi-consumer.out
done
echo "ok tests/programs/abi"
