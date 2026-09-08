/* A C program over the header luce-base writes for exports.lucb: the function-pointer
   typedef, the status form of a fallible export, and a span as (pointer, length). */
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include "abi_exports.h"

static int64_t triple(int64_t x) { return x * 3; }

int main(void) {
    int64_t out = 0;
    int ok = divide(7, 2, &out);
    int failed = divide(1, 0, &out);
    uint8_t bytes[3] = { 1, 2, 3 };
    Hooks hooks = { triple, 5 };
    printf("%lld %d %lld %d %d %d %llu %llu %lld\n", (long long)apply(triple, 14), ok, (long long)out, failed == bad_divisor, require(1),
           require(-1) == bad_divisor, (unsigned long long)sum_bytes(bytes, 3), (unsigned long long)sum_bytes(NULL, 0),
           (long long)run_hooks(&hooks, 2));
    return 0;
}
