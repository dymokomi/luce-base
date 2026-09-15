/* The C side of the proving program: what sample.h declares. */
#include "sample.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct sample_context {
    char name[32];
    unsigned flags;
    sample_point points[3];
};

int sample_counter = 40;

sample_context *sample_open(const char *name, unsigned flags) {
    if (name == NULL || strlen(name) >= sizeof(((sample_context *)0)->name)) {
        return NULL;
    }
    sample_context *ctx = calloc(1, sizeof *ctx);
    strcpy(ctx->name, name);
    ctx->flags = flags;
    for (int i = 0; i < 3; i++) {
        ctx->points[i].x = i + 1;
        ctx->points[i].y = (i + 1) * 10;
    }
    sample_counter += 1;
    return ctx;
}

void sample_close(sample_context *ctx) {
    sample_counter -= 1;
    free(ctx);
}

const char *sample_name(const sample_context *ctx) {
    return ctx->name;
}

int sample_walk(sample_context *ctx, sample_visit visit, void *user) {
    int total = 0;
    for (int i = 0; i < 3; i++) {
        if (visit != NULL) {
            total += visit(user, &ctx->points[i]);
        }
    }
    return total;
}

sample_point sample_sum(sample_point a, sample_point b) {
    sample_point out = { a.x + b.x, a.y + b.y };
    return out;
}

size_t sample_fill(struct sample_buffer *buffer, size_t limit) {
    size_t n = limit < buffer->count ? limit : buffer->count;
    for (size_t i = 0; i < n; i++) {
        buffer->bytes[i] = (uint8_t)(i * 3);
    }
    return n;
}

long sample_long(long value) {
    return value * 100L;
}

void sample_describe(const struct sample_nested *nested, char *out, size_t room) {
    snprintf(out, room, "%d,%d f=%g shape=%d %s visit=%d", nested->pair.a, nested->pair.b, nested->f,
             (int)nested->shape, nested->label ? nested->label : "-", nested->visit(NULL, &nested->pair.a == NULL ? NULL : (const sample_point *)&nested->pair));
}

double sample_real(union sample_value value) {
    return value.real;
}

uint32_t sample_packed_value(const struct sample_packed *packed) {
    return packed->value + packed->tag;
}

int sample_printf(const char *format, ...) {
    (void)format;
    return 0;
}

_Noreturn void sample_abort(const char *why) {
    fprintf(stderr, "sample_abort: %s\n", why);
    exit(3);
}
