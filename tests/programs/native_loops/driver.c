#include "kernels.h"
#include <assert.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

int main(int argc, char **argv) {
    uint64_t values[257];
    for (size_t i = 0; i < 257; ++i) values[i] = i * 17 + 3;
    if (argc > 1) {
        if (!strcmp(argv[1], "index")) (void)changed_index(values, 4, 3);
        else if (!strcmp(argv[1], "length")) (void)changed_length(values, 4, 3);
        else if (!strcmp(argv[1], "join")) (void)joined(values, 4, 4, false);
        else if (!strcmp(argv[1], "unsigned")) (void)checked_next(UINT64_MAX);
        else if (!strcmp(argv[1], "signed")) (void)signed_next(INT64_MAX);
        else if (!strcmp(argv[1], "multiply")) (void)small_product(65536, 65536);
        else if (!strcmp(argv[1], "negative")) (void)uncertain(values, 4, (size_t)-1);
        else if (!strcmp(argv[1], "divide")) (void)empty_division(1, 0);
        else return 2;
        return 3; /* Every named failure case must trap first. */
    }
    uint64_t expected = 0;
    for (size_t n = 0; n <= 257; ++n) {
        assert(safe_total(values, n) == expected);
        if (n < 257) expected += values[n];
    }
    assert(safe_total(NULL, 0) == 0);
    assert(repeated(values, 257, 256) == values[256] * 2);
    assert(joined(values, 257, 257, true) == 0);
    assert(checked_next(UINT64_MAX - 1) == UINT64_MAX);
    assert(signed_next(INT64_MAX - 1) == INT64_MAX);
    assert(distance(UINT64_MAX, 0) == UINT64_MAX);
    assert(distance(0, UINT64_MAX) == UINT64_MAX);
    assert(distance(7, 7) == 0);
    assert(small_product(65535, 65535) == UINT32_C(4294836225));
    assert(empty_division(0, 0) == 0);
    assert(empty_division(5, 4) == 125);
    size_t limit = 4;
    assert(changing_limit(&limit) == 2 && limit == 2);
    double value = 17.0;
    for (size_t n = 0; n < 30; ++n) {
        assert(invariant_float(n, 17.0) == value);
        value = value * 0.125 + 0.375;
    }
    puts("ok native loop semantics");
}
