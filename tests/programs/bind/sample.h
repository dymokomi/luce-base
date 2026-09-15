/* Every shape `luce-base bind` maps, in one header: the proving program's C side. */
#pragma once
#include <stddef.h>
#include <stdint.h>

#define SAMPLE_VERSION 3
#define SAMPLE_NAME "sample" " library"
#define SAMPLE_SCALE 1.5f
#define SAMPLE_FLAG_A (1u << 0)
#define SAMPLE_FLAG_B (1u << 1)
#define SAMPLE_LIMIT ((size_t)64)
#define SAMPLE_OFFSET (-7L)
#define SAMPLE_SQUARE(x) ((x) * (x))
#define SAMPLE_ALIAS sample_open

typedef struct sample_point {
    int32_t x;
    int32_t y;
} sample_point;

typedef enum sample_shape {
    SAMPLE_CIRCLE,
    SAMPLE_SQUARE = 4,
    SAMPLE_BOX = SAMPLE_SQUARE,
    SAMPLE_LAST = SAMPLE_SQUARE + 1
} sample_shape;

enum { SAMPLE_ANONYMOUS = 11 };

/* opaque: the header only names it */
typedef struct sample_context sample_context;

typedef int (*sample_visit)(void *user, const sample_point *point);

struct sample_buffer {
    uint32_t count;
    uint8_t bytes[];
};

union sample_value {
    int64_t integer;
    double real;
    char text[8];
};

struct sample_packed {
    uint8_t tag;
    uint32_t value;
} __attribute__((packed));

struct sample_nested {
    struct { int32_t a; int32_t b; } pair;
    union { float f; uint32_t u; };
    sample_shape shape;
    const char *label;
    sample_visit visit;
};

/* refused: bit-fields */
struct sample_bits {
    unsigned a : 3;
    unsigned b : 5;
};

sample_context *sample_open(const char *name, unsigned flags);
void sample_close(sample_context *ctx);
const char *sample_name(const sample_context *ctx);
int sample_walk(sample_context *ctx, sample_visit visit, void *user);
sample_point sample_sum(sample_point a, sample_point b);
size_t sample_fill(struct sample_buffer *buffer, size_t limit);
long sample_long(long value);
void sample_describe(const struct sample_nested *nested, char *out, size_t room);
double sample_real(union sample_value value);
uint32_t sample_packed_value(const struct sample_packed *packed);
int sample_printf(const char *format, ...);
_Noreturn void sample_abort(const char *why);
extern int sample_counter;

static inline int sample_twice(int value) {
    return value * 2;
}
