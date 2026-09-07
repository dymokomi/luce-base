/* The C side of the chapter 17 package: what a binding reaches through `extern`. */
#include <stdarg.h>
#include <stdlib.h>

typedef struct Parts { long quot; long rem; } Parts;

Parts divide(long a, long b) {
    Parts p = { a / b, a % b };
    return p;
}

double split(double value, int *exponent) {
    *exponent = 3;
    return value / 8.0;
}

int shim_version = 7;

typedef struct Counter { long value; } Counter;

Counter *counter_new(void) {
    Counter *c = malloc(sizeof *c);
    c->value = 0;
    return c;
}

void counter_bump(Counter *c) { c->value += 1; }
long counter_value(const Counter *c) { return c->value; }
void counter_free(Counter *c) { free(c); }
Counter *counter_none(void) { return NULL; }

int shim_sum(int count, ...) {
    va_list args;
    va_start(args, count);
    int total = 0;
    for (int i = 0; i < count; i++) {
        total += va_arg(args, int);
    }
    va_end(args);
    return total;
}
