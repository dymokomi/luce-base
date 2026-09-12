/* One measurement driver is compiled once and linked to each implementation.
 * Input construction, warmup, output hashing, and reporting are outside timing. */
#define _POSIX_C_SOURCE 200809L
#define _DARWIN_C_SOURCE
#include "kernels.h"
#include <errno.h>
#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/resource.h>
#include <time.h>

static uint64_t random_word(uint64_t *state) {
    *state ^= *state >> 12;
    *state ^= *state << 25;
    *state ^= *state >> 27;
    return *state * UINT64_C(2685821657736338717);
}

static uint64_t hash_bytes(const void *data, size_t size) {
    const uint8_t *bytes = data;
    uint64_t hash = UINT64_C(14695981039346656037);
    for (size_t at = 0; at < size; ++at)
        hash = (hash ^ bytes[at]) * UINT64_C(1099511628211);
    return hash;
}

static uint64_t now(void) {
    struct timespec stamp;
    if (clock_gettime(CLOCK_MONOTONIC, &stamp) != 0) abort();
    return (uint64_t)stamp.tv_sec * UINT64_C(1000000000) + (uint64_t)stamp.tv_nsec;
}

static uint64_t argument(const char *text) {
    char *end;
    errno = 0;
    uint64_t value = strtoull(text, &end, 10);
    if (errno || !*text || *text == '-' || *end) abort();
    return value;
}

int main(int argc, char **argv) {
    if (argc != 5) {
        fprintf(stderr, "usage: bench KERNEL WORK SIZE SEED\n");
        return 2;
    }
    size_t work = (size_t)argument(argv[2]);
    size_t size = (size_t)argument(argv[3]);
    uint64_t seed = argument(argv[4]);
    if (!work || !size || size > (1u << 24) || !seed) return 2;
    int floating = !strcmp(argv[1], "float_recurrence") || !strcmp(argv[1], "transform") || !strcmp(argv[1], "matrix_product");
    int arrays = !strcmp(argv[1], "transform") || !strcmp(argv[1], "matrix_product");
    int summing = !strcmp(argv[1], "sum_words");
    int chasing = !strcmp(argv[1], "chase");
    int scanning = !strcmp(argv[1], "byte_scan");
    double *a = floating ? calloc(size, sizeof *a) : NULL;
    double *b = arrays ? calloc(size, sizeof *b) : NULL;
    double *out = arrays ? calloc(size, sizeof *out) : NULL;
    uint64_t *words = summing ? calloc(size, sizeof *words) : NULL;
    uint32_t *links = chasing ? calloc(size, sizeof *links) : NULL;
    uint32_t *order = chasing ? calloc(size, sizeof *order) : NULL;
    uint8_t *bytes = scanning ? calloc(size, sizeof *bytes) : NULL;
    if ((floating && !a) || (arrays && (!b || !out)) || (summing && !words) ||
        (chasing && (!links || !order)) || (scanning && !bytes)) abort();
    uint64_t state = seed;
    for (size_t i = 0; i < size; ++i) {
        uint64_t word = random_word(&state);
        if (words) words[i] = word;
        if (a) a[i] = (double)(word & 1023) / 1024.0;
        if (b) b[i] = (double)((word >> 10) & 1023) / 1024.0;
        if (bytes) bytes[i] = (uint8_t)(word >> 20);
        if (order) order[i] = (uint32_t)i;
    }
    if (chasing) {
        for (size_t i = size - 1; i > 0; --i) {
            size_t j = (size_t)(random_word(&state) % (i + 1));
            uint32_t saved = order[i]; order[i] = order[j]; order[j] = saved;
        }
        for (size_t i = 0; i < size; ++i) links[order[i]] = order[(i + 1) % size];
    }
    uint64_t result = 0, start = 0, elapsed = 0;
    if (!strcmp(argv[1], "integer_mix")) {
        result = integer_mix(100, seed);
        start = now(); result = integer_mix(work, seed); elapsed = now() - start;
    } else if (!strcmp(argv[1], "float_recurrence")) {
        double value = float_recurrence(100, a[0]);
        start = now(); value = float_recurrence(work, a[0]); elapsed = now() - start;
        memcpy(&result, &value, sizeof result);
    } else if (!strcmp(argv[1], "sum_words")) {
        result = sum_words(words, size, 1);
        start = now(); result = sum_words(words, size, work); elapsed = now() - start;
    } else if (!strcmp(argv[1], "transform")) {
        transform(out, size, b, size, 1);
        memcpy(out, a, size * sizeof *a);
        start = now(); transform(out, size, b, size, work); elapsed = now() - start;
        result = hash_bytes(out, size * sizeof *out);
    } else if (!strcmp(argv[1], "byte_scan")) {
        result = byte_scan(bytes, size, 1);
        start = now(); result = byte_scan(bytes, size, work); elapsed = now() - start;
    } else if (!strcmp(argv[1], "chase")) {
        result = chase(links, size, 100, 0);
        start = now(); result = chase(links, size, work, 0); elapsed = now() - start;
    } else if (!strcmp(argv[1], "matrix_product")) {
        size_t width = 1;
        while (width * width < size) ++width;
        if (width * width != size) return 2;
        matrix_product(a, size, b, size, out, size, width, 1);
        start = now(); matrix_product(a, size, b, size, out, size, width, work); elapsed = now() - start;
        result = hash_bytes(out, size * sizeof *out);
    } else return 2;
    struct rusage usage;
    if (getrusage(RUSAGE_SELF, &usage) != 0) abort();
    uint64_t rss = (uint64_t)usage.ru_maxrss;
#ifndef __APPLE__
    rss *= 1024;
#endif
    printf("{\"ns\":%" PRIu64 ",\"checksum\":\"%016" PRIx64 "\",\"rss_bytes\":%" PRIu64 "}\n",
           elapsed, result, rss);
    free(a); free(b); free(out); free(words); free(links); free(order); free(bytes);
    return 0;
}
