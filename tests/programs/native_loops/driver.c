#define _DEFAULT_SOURCE 1
#include "kernels.h"
#include <assert.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <sys/mman.h>
#include <unistd.h>

/* End every view immediately before an inaccessible page. A vector iteration
   or tail that reads even one element too far fails instead of seeing padding. */
static void guard_pages(void) {
    size_t page = (size_t)sysconf(_SC_PAGESIZE);
    unsigned char *storage = mmap(NULL, page * 2, PROT_READ | PROT_WRITE,
                                  MAP_PRIVATE | MAP_ANON, -1, 0);
    assert(storage != MAP_FAILED);
    assert(!mprotect(storage + page, page, PROT_NONE));
    for (size_t n = 0; n <= 65; ++n) {
        uint64_t *values = (uint64_t *)(storage + page) - n;
        uint64_t total = 0;
        for (size_t i = 0; i < n; ++i) total += values[i] = UINT64_MAX - i;
        assert(safe_total(values, n) == total);
        uint32_t *words = (uint32_t *)(storage + page) - n;
        uint32_t sum = 7;
        for (size_t i = 0; i < n; ++i) sum += words[i] = UINT32_MAX - (uint32_t)i;
        assert(sum_dwords(words, n, 7) == sum);
        double *doubles = (double *)(storage + page) - n;
        for (size_t i = 0; i < n; ++i) doubles[i] = (double)i;
        map_doubles(doubles, n, doubles, n);
        for (size_t i = 0; i < n; ++i) assert(doubles[i] == (double)i * 0.5);
        float *floats = (float *)(storage + page) - n;
        for (size_t i = 0; i < n; ++i) floats[i] = (float)i;
        map_floats(floats, n, floats, n);
        for (size_t i = 0; i < n; ++i) assert(floats[i] == (float)i * 0.5f);
    }
    assert(!munmap(storage, page * 2));
}

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
        else if (!strcmp(argv[1], "dimension")) (void)grid_read(values, 0, SIZE_MAX, 2, 0, 0);
        else if (!strcmp(argv[1], "edge")) (void)grid_edge(1, UINT64_MAX, 1, 1);
        else if (!strcmp(argv[1], "sum")) {
            const uint64_t overflowing[] = {UINT64_MAX, 1};
            (void)checked_total(overflowing, 2);
        }
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
    assert(changing_call_result(8) == 88);
    assert(discarded_call_result() == 77);
    for (size_t rows = 0; rows <= 8; ++rows) {
        for (size_t columns = 0; columns <= 8; ++columns) {
            for (size_t row = 0; row <= rows; ++row) {
                for (size_t column = 0; column <= columns; ++column) {
                    uint64_t want = row < rows && column < columns ? values[row * columns + column] : 0;
                    assert(grid_read(values, rows * columns, rows, columns, row, column) == want);
                }
            }
        }
    }
    assert(grid_edge(1, UINT64_MAX, 0, UINT64_MAX - 1) == UINT64_MAX - 1);
    uint32_t words[257];
    for (size_t i = 0; i < 257; ++i) words[i] = UINT32_MAX - (uint32_t)i;
    uint32_t sum = UINT32_MAX;
    for (size_t n = 0; n <= 257; ++n) {
        assert(sum_dwords(words, n, UINT32_MAX) == sum);
        if (n < 257) sum += words[n];
    }
    /* Both overlap directions, exact aliasing, disjoint views and every tail.
       Compare the entire backing store to catch writes beyond either view. */
    for (size_t n = 0; n <= 65; ++n) {
        for (int delta = -8; delta <= 80; ++delta) {
            double actual[256], expected_map[256];
            float actual_f[256], expected_f[256];
            for (size_t i = 0; i < 256; ++i) {
                actual[i] = expected_map[i] = (double)i * 0.125 - 7.0;
                actual_f[i] = expected_f[i] = (float)i * 0.125f - 7.0f;
            }
            size_t src = (size_t)(16 + delta);
            for (size_t i = 0; i < n; ++i) {
                expected_map[16 + i] = expected_map[16 + i] * 0.125 + expected_map[src + i] * 0.375;
                expected_f[16 + i] = expected_f[16 + i] * 0.125f + expected_f[src + i] * 0.375f;
            }
            map_doubles(actual + 16, n, actual + src, n);
            map_floats(actual_f + 16, n, actual_f + src, n);
            assert(!memcmp(actual, expected_map, sizeof actual));
            assert(!memcmp(actual_f, expected_f, sizeof actual_f));
        }
    }
    map_doubles(NULL, 0, NULL, 0);
    map_floats(NULL, 0, NULL, 0);
    double special[] = {INFINITY, -INFINITY, NAN, -0.0, 0.0, 0x1p-1074, -0x1p-1074};
    double other[] = {1.0, INFINITY, 2.0, -0.0, 0.0, 0x1p-1074, -0x1p-1074};
    double expected_special[7];
    for (size_t i = 0; i < 7; ++i) expected_special[i] = special[i] * 0.125 + other[i] * 0.375;
    map_doubles(special, 7, other, 7);
    for (size_t i = 0; i < 7; ++i) {
        if (isnan(expected_special[i])) assert(isnan(special[i]));
        else assert(!memcmp(special + i, expected_special + i, sizeof(double)));
    }
    guard_pages();
    puts("ok native loop semantics");
}
