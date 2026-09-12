/* Same algorithms as kernels.lucb; unsigned arithmetic wraps in both.
 * No restrict, fast-math, intrinsics, tiling, or link-time optimization. */
#include "kernels.h"
#include <assert.h>

uint64_t integer_mix(size_t iterations, uint64_t seed) {
    uint64_t value = seed;
    for (size_t at = 0; at < iterations; ++at) {
        value ^= value >> 12;
        value ^= value << 25;
        value ^= value >> 27;
        value *= UINT64_C(2685821657736338717);
    }
    return value;
}

double float_recurrence(size_t iterations, double seed) {
    double value = seed;
    for (size_t at = 0; at < iterations; ++at)
        value = value * 0.99999994 + 0.00000003;
    return value;
}

uint64_t sum_words(const uint64_t *values, size_t length, size_t rounds) {
    uint64_t result = 0;
    for (size_t round = 0; round < rounds; ++round)
        for (size_t at = 0; at < length; ++at)
            result += values[at];
    return result;
}

void transform(double *values, size_t length, const double *source,
               size_t source_length, size_t rounds) {
    assert(length == source_length);
    for (size_t round = 0; round < rounds; ++round)
        for (size_t at = 0; at < length; ++at)
            values[at] = values[at] * 0.999 + source[at] * 0.001;
}

uint64_t byte_scan(const uint8_t *data, size_t length, size_t rounds) {
    uint64_t count = 0;
    for (size_t round = 0; round < rounds; ++round)
        for (size_t at = 0; at < length; ++at) {
            uint8_t value = data[at];
            if (value == 10 || value == 13 || value == 32)
                ++count;
        }
    return count;
}

uint32_t chase(const uint32_t *links, size_t length, size_t steps, uint32_t start) {
    (void)length;
    uint32_t current = start;
    for (size_t at = 0; at < steps; ++at)
        current = links[current];
    return current;
}

void matrix_product(const double *a, size_t a_length,
                    const double *b, size_t b_length,
                    double *out, size_t out_length, size_t width, size_t rounds) {
    assert(a_length == width * width && b_length == a_length && out_length == a_length);
    for (size_t round = 0; round < rounds; ++round)
        for (size_t row = 0; row < width; ++row)
            for (size_t column = 0; column < width; ++column) {
                double value = 0.0;
                for (size_t inner = 0; inner < width; ++inner)
                    value += a[row * width + inner] * b[inner * width + column];
                out[row * width + column] = value;
            }
}
