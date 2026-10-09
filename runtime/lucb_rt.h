//==============================================================================================
//
//   runtime/lucb_rt - Runtime interface for generated C
//
//   DESCRIPTION:
//       The types generated code uses (`lb_str`, `lb_span`, `lb_iface`, optionals and results
//       through `LB_OPT`/`LB_RES`), the inline checked arithmetic and bounds checks, and the
//       prototypes of everything in lucb_rt.c. Allocation, files, processes, threads, and
//       the sync primitives are Base source now (src/prelude.lucb); what remains here is
//       what generated code cannot spell itself.
//
//==============================================================================================

#pragma once

#include <math.h>
#include <stdarg.h>
#include <stdatomic.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#if defined(__GNUC__)
#define LB_NORETURN __attribute__((noreturn))
#else
#define LB_NORETURN
#endif

/* A declaration bound to a symbol by name: `int f(void) LB_SYMBOL("f")` reaches C's `f`
   whatever the declaration is called, so a binding never clashes with a system prototype. */
#define LB_STR2(x) #x
#define LB_STR(x) LB_STR2(x)
#define LB_SYMBOL(name) __asm__(LB_STR(__USER_LABEL_PREFIX__) name)

/* The statement the thread is running, `file:line:column`, set by the code before each
   statement and restored when a function returns: what a trap names (§11.5). */
extern _Thread_local const char* lb_pos;
/* inline, so that a function the C compiler expands where it is called (`memory.read[T]`)
   leaves two stores of the position behind, not a call */
static inline void lb_restore_pos(const char** saved) {
    lb_pos = *saved;
}
/* The trap entry points: the generated program defines them, each calling `core`'s trap at
   `lb_pos`, so a trap writes the crash report and runs the crash handler (base.md §8.7). */
LB_NORETURN void lb_trap(const char* message);
LB_NORETURN void lb_trap_two(const char* message, const char* detail);
void lb_pause(void);

/* Checked arithmetic is inline so that `a + b` costs one instruction and one
   predicted branch after the host C compiler optimises (base.md §1, §7.2). */
static inline uint64_t mask_bits(int bits) {
    if (bits >= 64) {
        return ~(uint64_t)0;
    }
    if (bits <= 0) {
        return 0;
    }
    return ((uint64_t)1 << bits) - 1;
}
static inline int64_t smin(int bits) {
    if (bits <= 0) {
        return 0;
    }
    if (bits >= 64) {
        return INT64_MIN;
    }
    return -((int64_t)1 << (bits - 1));
}
static inline int64_t smax(int bits) {
    if (bits <= 0) {
        return 0;
    }
    if (bits >= 64) {
        return INT64_MAX;
    }
    return ((int64_t)1 << (bits - 1)) - 1;
}
static inline int64_t sext(int64_t a, int bits) {
    if (bits <= 0) {
        return 0;
    }
    if (bits >= 64) {
        return a;
    }
    uint64_t u = (uint64_t)a & mask_bits(bits);
    if (u & ((uint64_t)1 << (bits - 1))) {
        return (int64_t)(u | ~mask_bits(bits));
    }
    return (int64_t)u;
}
static inline uint64_t zext(uint64_t a, int bits) {
    return a & mask_bits(bits);
}

static inline int64_t lb_add_s(int64_t a, int64_t b, int bits) {
    a = sext(a, bits);
    b = sext(b, bits);
    int64_t r;
    if (__builtin_add_overflow(a, b, &r) || r < smin(bits) || r > smax(bits)) {
        lb_trap("integer overflow");
    }
    return r;
}

static inline uint64_t lb_add_u(uint64_t a, uint64_t b, int bits) {
    a = zext(a, bits);
    b = zext(b, bits);
    if (bits >= 64) {
        if (a > UINT64_MAX - b) {
            lb_trap("integer overflow");
        }
        return a + b;
    }
    uint64_t r = a + b;
    if (r > mask_bits(bits)) {
        lb_trap("integer overflow");
    }
    return r;
}

static inline int64_t lb_sub_s(int64_t a, int64_t b, int bits) {
    a = sext(a, bits);
    b = sext(b, bits);
    int64_t r;
    if (__builtin_sub_overflow(a, b, &r) || r < smin(bits) || r > smax(bits)) {
        lb_trap("integer overflow");
    }
    return r;
}

static inline uint64_t lb_sub_u(uint64_t a, uint64_t b, int bits) {
    a = zext(a, bits);
    b = zext(b, bits);
    if (a < b) {
        lb_trap("integer overflow");
    }
    return a - b;
}

static inline int64_t lb_mul_s(int64_t a, int64_t b, int bits) {
    a = sext(a, bits);
    b = sext(b, bits);
    int64_t r;
    if (__builtin_mul_overflow(a, b, &r) || r < smin(bits) || r > smax(bits)) {
        lb_trap("integer overflow");
    }
    return r;
}

static inline uint64_t lb_mul_u(uint64_t a, uint64_t b, int bits) {
    a = zext(a, bits);
    b = zext(b, bits);
    if (b != 0 && a > mask_bits(bits) / b) {
        lb_trap("integer overflow");
    }
    return zext(a * b, bits);
}





/* mode 0 = checked T(x), mode 1 = C cast (truncate / bit-reinterpret). */

// A `char` from an integer's bits: a scalar value or, when checked, a trap (§7.5).

/* The arithmetic, shifts and conversions the generated C calls at every operation, inline
   so that a release build compiles them into the expression that uses them. */
/* A divisor of zero, or the one quotient that overflows (the smallest value over -1), traps. */
static inline void lb_check_division(int64_t a, int64_t b, int bits) {
    if (b == 0) {
        lb_trap("division by zero");
    }
    if (a == smin(bits) && b == -1) {
        lb_trap("integer overflow");
    }
}

static inline int64_t lb_div_s(int64_t a, int64_t b, int bits) {
    a = sext(a, bits);
    b = sext(b, bits);
    lb_check_division(a, b, bits);
    return a / b;
}

static inline uint64_t lb_div_u(uint64_t a, uint64_t b, int bits) {
    a = zext(a, bits);
    b = zext(b, bits);
    if (b == 0) {
        lb_trap("division by zero");
    }
    return a / b;
}

static inline int64_t lb_mod_s(int64_t a, int64_t b, int bits) {
    a = sext(a, bits);
    b = sext(b, bits);
    lb_check_division(a, b, bits);
    return a % b;
}

static inline uint64_t lb_mod_u(uint64_t a, uint64_t b, int bits) {
    a = zext(a, bits);
    b = zext(b, bits);
    if (b == 0) {
        lb_trap("division by zero");
    }
    return a % b;
}

static inline int lb_qadd_s(int64_t a, int64_t b, int bits, int64_t* out) {
    a = sext(a, bits);
    b = sext(b, bits);
    int64_t r;
    if (__builtin_add_overflow(a, b, &r) || r < smin(bits) || r > smax(bits)) {
        return 0;
    }
    *out = r;
    return 1;
}

static inline int lb_qadd_u(uint64_t a, uint64_t b, int bits, uint64_t* out) {
    a = zext(a, bits);
    b = zext(b, bits);
    if (bits >= 64) {
        if (a > UINT64_MAX - b) {
            return 0;
        }
        *out = a + b;
        return 1;
    }
    uint64_t r = a + b;
    if (r > mask_bits(bits)) {
        return 0;
    }
    *out = r;
    return 1;
}

static inline int lb_qsub_s(int64_t a, int64_t b, int bits, int64_t* out) {
    a = sext(a, bits);
    b = sext(b, bits);
    int64_t r;
    if (__builtin_sub_overflow(a, b, &r) || r < smin(bits) || r > smax(bits)) {
        return 0;
    }
    *out = r;
    return 1;
}

static inline int lb_qsub_u(uint64_t a, uint64_t b, int bits, uint64_t* out) {
    a = zext(a, bits);
    b = zext(b, bits);
    if (a < b) {
        return 0;
    }
    *out = a - b;
    return 1;
}

static inline int lb_qmul_s(int64_t a, int64_t b, int bits, int64_t* out) {
    a = sext(a, bits);
    b = sext(b, bits);
    int64_t r;
    if (__builtin_mul_overflow(a, b, &r) || r < smin(bits) || r > smax(bits)) {
        return 0;
    }
    *out = r;
    return 1;
}

static inline int lb_qmul_u(uint64_t a, uint64_t b, int bits, uint64_t* out) {
    a = zext(a, bits);
    b = zext(b, bits);
    if (b != 0 && a > mask_bits(bits) / b) {
        return 0;
    }
    *out = zext(a * b, bits);
    return 1;
}

static inline int64_t lb_neg_s(int64_t a, int bits) {
    a = sext(a, bits);
    if (a == smin(bits)) {
        lb_trap("integer overflow");
    }
    return -a;
}

static inline int64_t lb_addw_s(int64_t a, int64_t b, int bits) {
    uint64_t r = (uint64_t)sext(a, bits) + (uint64_t)sext(b, bits);
    return sext((int64_t)(r & mask_bits(bits)), bits);
}

static inline uint64_t lb_addw_u(uint64_t a, uint64_t b, int bits) {
    return zext(a + b, bits);
}

static inline int64_t lb_subw_s(int64_t a, int64_t b, int bits) {
    uint64_t r = (uint64_t)sext(a, bits) - (uint64_t)sext(b, bits);
    return sext((int64_t)(r & mask_bits(bits)), bits);
}

static inline uint64_t lb_subw_u(uint64_t a, uint64_t b, int bits) {
    return zext(a - b, bits);
}

static inline int64_t lb_mulw_s(int64_t a, int64_t b, int bits) {
    uint64_t r = (uint64_t)sext(a, bits) * (uint64_t)sext(b, bits);
    return sext((int64_t)(r & mask_bits(bits)), bits);
}

static inline uint64_t lb_mulw_u(uint64_t a, uint64_t b, int bits) {
    return zext(a * b, bits);
}

static inline int64_t lb_negw_s(int64_t a, int bits) {
    uint64_t r = 0u - (uint64_t)sext(a, bits);
    return sext((int64_t)(r & mask_bits(bits)), bits);
}

static inline uint64_t lb_negw_u(uint64_t a, int bits) {
    return zext(0u - zext(a, bits), bits);
}

static inline int64_t lb_adds_s(int64_t a, int64_t b, int bits) {
    a = sext(a, bits);
    b = sext(b, bits);
    int64_t r;
    if (__builtin_add_overflow(a, b, &r) || r < smin(bits) || r > smax(bits)) {
        return (a < 0) ? smin(bits) : smax(bits);
    }
    return r;
}

static inline uint64_t lb_adds_u(uint64_t a, uint64_t b, int bits) {
    a = zext(a, bits);
    b = zext(b, bits);
    if (bits >= 64) {
        if (a > UINT64_MAX - b) {
            return UINT64_MAX;
        }
        return a + b;
    }
    uint64_t r = a + b;
    if (r > mask_bits(bits)) {
        return mask_bits(bits);
    }
    return r;
}

static inline int64_t lb_subs_s(int64_t a, int64_t b, int bits) {
    a = sext(a, bits);
    b = sext(b, bits);
    int64_t r;
    if (__builtin_sub_overflow(a, b, &r) || r < smin(bits) || r > smax(bits)) {
        return (a < 0) ? smin(bits) : smax(bits);
    }
    return r;
}

static inline uint64_t lb_subs_u(uint64_t a, uint64_t b, int bits) {
    a = zext(a, bits);
    b = zext(b, bits);
    if (a < b) {
        return 0;
    }
    return a - b;
}

static inline int64_t lb_muls_s(int64_t a, int64_t b, int bits) {
    a = sext(a, bits);
    b = sext(b, bits);
    int64_t r;
    if (__builtin_mul_overflow(a, b, &r) || r < smin(bits) || r > smax(bits)) {
        return ((a < 0) != (b < 0)) ? smin(bits) : smax(bits);
    }
    return r;
}

static inline uint64_t lb_muls_u(uint64_t a, uint64_t b, int bits) {
    a = zext(a, bits);
    b = zext(b, bits);
    if (b != 0 && a > mask_bits(bits) / b) {
        return mask_bits(bits);
    }
    return zext(a * b, bits);
}

static inline int64_t lb_shl_s(int64_t a, uint64_t n, int bits) {
    a = sext(a, bits);
    if (n >= (uint64_t)bits) {
        lb_trap("shift count out of range");
    }
    return sext((int64_t)(((uint64_t)a << n) & mask_bits(bits)), bits);
}

static inline uint64_t lb_shl_u(uint64_t a, uint64_t n, int bits) {
    a = zext(a, bits);
    if (n >= (uint64_t)bits) {
        lb_trap("shift count out of range");
    }
    return zext(a << n, bits);
}

static inline int64_t lb_shr_s(int64_t a, uint64_t n, int bits) {
    a = sext(a, bits);
    if (n >= (uint64_t)bits) {
        lb_trap("shift count out of range");
    }
    return a >> n;
}

static inline uint64_t lb_shr_u(uint64_t a, uint64_t n, int bits) {
    a = zext(a, bits);
    if (n >= (uint64_t)bits) {
        lb_trap("shift count out of range");
    }
    return a >> n;
}

static inline uint64_t lb_not_u(uint64_t a, int bits) {
    return zext(~a, bits);
}

static inline int fits_u(uint64_t v, int bits) {
    return v <= mask_bits(bits);
}

// The source of an integer conversion: `negative` when it is below zero, else the
// magnitude in `bits`; a 64-bit unsigned source above `INT64_MAX` is a magnitude too.
typedef struct {
    int negative;
    uint64_t bits;
} lb_source;

static inline lb_source source_of(uint64_t a, int from_bits, int from_signed) {
    lb_source s;
    if (from_signed) {
        int64_t v = sext((int64_t)a, from_bits);
        s.negative = v < 0;
        s.bits = (uint64_t)v;
    } else {
        s.negative = 0;
        s.bits = zext(a, from_bits);
    }
    return s;
}

// A checked conversion's result, as bits: out of the destination's range traps (§7.5).
static inline uint64_t checked_bits(lb_source s, int to_bits, int to_signed) {
    int bad;
    if (to_signed) {
        bad = s.negative ? (int64_t)s.bits < smin(to_bits) : s.bits > (uint64_t)smax(to_bits);
    } else {
        bad = s.negative || !fits_u(s.bits, to_bits);
    }
    if (bad) {
        lb_trap("integer conversion out of range");
    }
    return s.bits;
}

static inline int64_t lb_conv_s(int64_t a, int from_bits, int from_signed, int to_bits, int to_signed, int mode) {
    lb_source s = source_of((uint64_t)a, from_bits, from_signed);
    if (mode == 0) {
        return (int64_t)checked_bits(s, to_bits, to_signed);
    }
    uint64_t bits = s.bits & mask_bits(to_bits);
    if (to_signed) {
        return sext((int64_t)bits, to_bits);
    }
    return (int64_t)bits;
}

static inline uint64_t lb_conv_u(uint64_t a, int from_bits, int from_signed, int to_bits, int to_signed,
                   int mode) {
    lb_source s = source_of(a, from_bits, from_signed);
    if (mode == 0) {
        return checked_bits(s, to_bits, to_signed);
    }
    return zext(s.bits, to_bits);
}

static inline uint32_t lb_to_char(uint64_t a, int mode) {
    int bad = a > 0x10FFFF || (a >= 0xD800 && a <= 0xDFFF);
    if (bad && mode == 0) {
        lb_trap("integer conversion out of range");
    }
    return (uint32_t)a;
}

// `2^(bits-1)` and `2^bits` are exact doubles; the range checks compare against them
// rather than against the rounded `(double)smax`, which is `2^63` itself for 64 bits.
static inline int64_t lb_f_to_s(double a, int bits, int mode) {
    double hi = ldexp(1.0, bits - 1);
    double lo = -hi;
    if (mode == 0) {
        if (!isfinite(a) || a < lo || a >= hi) {
            lb_trap("integer conversion out of range");
        }
        return (int64_t)a;
    }
    if (isnan(a)) {
        return 0;
    }
    if (a <= lo) {
        return smin(bits);
    }
    if (a >= hi) {
        return smax(bits);
    }
    return (int64_t)a;
}

static inline uint64_t lb_f_to_u(double a, int bits, int mode) {
    double hi = ldexp(1.0, bits);
    if (mode == 0) {
        if (!isfinite(a) || a < 0 || a >= hi) {
            lb_trap("integer conversion out of range");
        }
        return (uint64_t)a;
    }
    if (isnan(a) || a < 0) {
        return 0;
    }
    if (a >= hi) {
        return mask_bits(bits);
    }
    return (uint64_t)a;
}

static inline double lb_to_f(int64_t a, int from_signed) {
    if (from_signed) {
        return (double)a;
    }
    return (double)(uint64_t)a;
}

static inline float lb_f64_to_f32(double a) {
    return (float)a;
}

typedef struct lb_str {
    const char* data;
    size_t length;
} lb_str;

/* Base diagnostic messages are byte spans, not NUL-terminated C strings. */
LB_NORETURN void lb_trap_text(lb_str message);
LB_NORETURN void lb_trap_detail(const char* prefix, lb_str detail);
/* A streamed trap message: a begin, its pieces streamed through `core`, then the end. */
void lb_trap_begin(void);
LB_NORETURN void lb_trap_end(void);

typedef struct lb_span {
    void* data;
    size_t length;
} lb_span;

/* A const span has the same representation as a span; constness is a Base
   fact the checker enforced, so one C struct serves both and no adapter
   is needed where a `T[]` meets a `const T[]`. */
typedef lb_span lb_cspan;

/* Ordering of text by bytes, then by length (base.md §5.5). */
int lb_str_compare(lb_str a, lb_str b);
void lb_print_i64(int64_t value);
void lb_print_u64(uint64_t value);
void lb_print_bool(bool value);
void lb_print_str(lb_str value);
static inline void lb_check_index(uint64_t i, uint64_t n) {
    if (i >= n) {
        lb_trap("index out of bounds");
    }
}
// The index `i` once checked against `n`: an index expression is evaluated once (§6.5).
/* A raw C cast borrows the address without reading past the byte view.
   C string consumers require caller-provided termination and sufficient lifetime. */
static inline char* lb_cstr_of(lb_str s) {
    return (char*)s.data;
}
static inline uint64_t lb_at(uint64_t i, uint64_t n) {
    lb_check_index(i, n);
    return i;
}
void lb_check_utf8(const char* s, size_t n);

typedef struct lb_iface {
    void* data;
    const void* vtable;
} lb_iface;

typedef struct lb_fmtbuf {
    char* data;
    size_t cap;
    size_t used;
    // what text past `cap` does: cut (LB_FMT_FIXED), move to the heap (LB_FMT_GROWS), or
    // grow on the heap it is on (LB_FMT_GROWN), as core.FormatBuffer
    size_t growth;
} lb_fmtbuf;

#define LB_FMT_FIXED 0
#define LB_FMT_GROWS 1
#define LB_FMT_GROWN 2

int lb_fmtbuf_put(lb_fmtbuf* b, const char* s, size_t n);
// a growing buffer over `cap` bytes at `data`, after freeing what it last took from the heap
void lb_fmtbuf_begin(lb_fmtbuf* b, char* data, size_t cap);
// free what a growing buffer took from the heap; the cleanup of a function's buffers
void lb_fmtbuf_release(lb_fmtbuf* b);
int lb_fmtbuf_i64(lb_fmtbuf* b, int64_t v);
int lb_fmtbuf_u64(lb_fmtbuf* b, uint64_t v);
int lb_fmtbuf_bool(lb_fmtbuf* b, bool v);
// The UTF-8 bytes of one scalar, and their count: how a `char` displays (§14.4).
size_t lucb_rt_utf8_encode(uint32_t cp, char out[4]);
int lb_fmtbuf_char(lb_fmtbuf* b, uint32_t cp);
lb_str lb_fmtbuf_finish(lb_fmtbuf* b);
// `print(f"...")` and `trap(f"...")`: the text gathers in `b` and goes out to `stream` when it
// passes half the buffer, and at its end (`lb_stream_flush`), as std's `core.stream_put`
// does natively, so a field that prints lands where it does in a native build. `stream` is
// a `FILE*`.
void lb_stream_put(lb_fmtbuf* b, const char* s, size_t n, void* stream);
void lb_stream_flush(lb_fmtbuf* b, void* stream);

int lb_utf8_ok(const char* s, size_t n);
// The scalar starting at byte `i` of the valid UTF-8 text `s`, and its width in `*width`.
uint32_t lb_utf8_scalar(const char* s, size_t n, size_t i, size_t* width);

uint64_t lb_hash_seed(void);
uint64_t lb_hash_mix(uint64_t h, uint64_t x);
uint64_t lb_hash_bytes(uint64_t h, const void* p, size_t n);

#define LB_FILES_MISSING 2
#define LB_INVALID_UTF8 3

// An `Error` (§11.3): its code; `at`, where it was raised, as its position text's distance
// from `lb_core_11origin_base` (`core.origin` reads it); and its message.
typedef struct lb_error {
    int32_t code;
    int32_t at;
    lb_str message;
} lb_error;

#define LB_OPT(T, name)                                                                            \
    typedef struct name {                                                                          \
        T value;                                                                                   \
        bool present;                                                                              \
    } name

#define LB_RES(T, name)                                                                            \
    typedef struct name {                                                                          \
        T value;                                                                                   \
        lb_error error;                                                                            \
        bool failed;                                                                               \
    } name

typedef struct lb_r_unit {
    lb_error error;
    bool failed;
} lb_r_unit;

/* The startup shim's pieces, shared by the C and native backends: the argument
   vector as `str[]` (checked) or `c.str[]`, a failed `main`, and the test runner's
   report lines. */
lb_span lb_arguments(int argc, char** argv, bool as_text);
// A failed `main`: `error`, raised at `at`, on stderr; the exit status.
int lb_entry_failed(lb_error error, lb_str at);
// The `at` of an error raised at the running statement (`lb_pos`), which the generated code
// defines beside `core` (§11.3).
int32_t lb_here(void);

