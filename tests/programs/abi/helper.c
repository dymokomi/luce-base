/* The C half of the calling-convention matrix (§17.2, §17.6): aggregates of every class
   the target ABIs distinguish cross the boundary by value in both directions. A packed
   record with a misaligned field is MEMORY on x86-64 System V whatever its size; a small
   record of floats is SSE; a mixed one is INTEGER then SSE; a record over sixteen bytes
   goes through memory on both native targets; three bytes are one INTEGER eightbyte. */
#include <stddef.h>
#include <stdint.h>

typedef struct __attribute__((packed)) { uint8_t tag; uint64_t value; } Packed;
typedef struct __attribute__((packed)) { uint16_t a; uint32_t b; } Small;
typedef struct { float x; float y; } Point;
typedef struct { int32_t a; double b; } Mixed;
typedef struct { uint8_t bytes[3]; } Bytes3;
typedef struct { double a; double b; double c; } Triple;

uint64_t abi_packed_sum(Packed p) { return p.tag + p.value; }
Packed abi_packed_make(uint8_t tag, uint64_t value) { Packed p = { tag, value }; return p; }
uint32_t abi_small_sum(Small s) { return s.a + s.b; }
Small abi_small_make(uint16_t a, uint32_t b) { Small s = { a, b }; return s; }
Point abi_point_scale(Point p, float k) { Point q = { p.x * k, p.y * k }; return q; }
double abi_mixed_sum(Mixed m) { return m.a + m.b; }
Mixed abi_mixed_make(int32_t a, double b) { Mixed m = { a, b }; return m; }
uint32_t abi_bytes3_sum(Bytes3 b) { return b.bytes[0] + b.bytes[1] + b.bytes[2]; }
Bytes3 abi_bytes3_make(uint8_t a, uint8_t b, uint8_t c) { Bytes3 r = { { a, b, c } }; return r; }
double abi_triple_sum(Triple t) { return t.a + t.b + t.c; }
Triple abi_triple_make(double a, double b, double c) { Triple t = { a, b, c }; return t; }
/* the registers run out, then aggregates and scalars share the stack */
uint64_t abi_many(int64_t a, int64_t b, int64_t c, int64_t d, int64_t e, int64_t f, int64_t g,
                  Packed p, Small s, double x, Point q, Triple t) {
    return (uint64_t)(a + b + c + d + e + f + g) + p.tag + p.value + s.a + s.b + (uint64_t)x
         + (uint64_t)q.x + (uint64_t)q.y + (uint64_t)(t.a + t.b + t.c);
}

/* the Base exports, the same shapes the other way */
uint64_t base_packed_sum(Packed p);
Packed base_packed_make(uint8_t tag, uint64_t value);
uint32_t base_small_sum(Small s);
Small base_small_make(uint16_t a, uint32_t b);
Point base_point_scale(Point p, float k);
double base_mixed_sum(Mixed m);
Mixed base_mixed_make(int32_t a, double b);
uint32_t base_bytes3_sum(Bytes3 b);
double base_triple_sum(Triple t);
Triple base_triple_make(double a, double b, double c);
uint64_t base_many(int64_t a, int64_t b, int64_t c, int64_t d, int64_t e, int64_t f, int64_t g,
                   Packed p, Small s, double x, Point q, Triple t);

/* C calls every export and answers a checksum of what came back */
uint64_t abi_call_back(void) {
    Packed p = base_packed_make(7, 100);
    Small s = base_small_make(3, 40);
    Point q = base_point_scale((Point){ 1.5f, 2.5f }, 2.0f);
    Mixed m = base_mixed_make(3, 0.5);
    Bytes3 b = { { 1, 2, 3 } };
    Triple t = base_triple_make(1.0, 2.0, 3.0);
    uint64_t sum = 0;
    sum += base_packed_sum(p) + (p.tag == 7 && p.value == 100 ? 1000 : 0);
    sum += base_small_sum(s) + (s.a == 3 && s.b == 40 ? 2000 : 0);
    sum += (uint64_t)(q.x + q.y);
    sum += (uint64_t)(base_mixed_sum(m) * 10.0);
    sum += base_bytes3_sum(b);
    sum += (uint64_t)base_triple_sum(t);
    sum += base_many(1, 2, 3, 4, 5, 6, 7, p, s, 8.0, q, t);
    return sum;
}
