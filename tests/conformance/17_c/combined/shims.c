#include <stdint.h>
#include <stdlib.h>
typedef struct Span2 { int32_t lo; int32_t hi; } Span2;
typedef struct Registry { int32_t total; } Registry;
Registry* registry_new(void) { Registry* r = malloc(sizeof *r); r->total = 0; return r; }
void registry_add(Registry* r, int32_t v) { r->total += v; }
int32_t registry_sum(const Registry* r) { return r->total; }
void registry_free(Registry* r) { free(r); }
int32_t span_width(Span2 s) { return s.hi - s.lo; }
void span_grow(Span2* s, int32_t by) { s->hi += by; }
int32_t apply_twice(int32_t (*f)(int32_t), int32_t x) { return f(f(x)); }
int32_t split_value(int32_t value, int32_t* low) { *low = value & 0xFF; return value >> 8; }
