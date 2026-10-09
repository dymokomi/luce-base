/* C on the other side of the calls tests/programs/float_registers makes: callees that
   clobber every xmm register they may, that take eight floats in an order only the right
   moves deliver, or a variable number of doubles; and a caller that fills Windows x64's
   nonvolatile xmm6-xmm15 before calling into Base and checks every bit of them after. */
#include <stdarg.h>
#include <stdint.h>
#include <string.h>

/* x * 2, after overwriting every float register (the compiler saves the ones the
   convention keeps for the caller, since it is told they are clobbered). */
double c_clobber(double x) {
#if defined(__x86_64__)
    __asm__ volatile(
        "xorps %%xmm0, %%xmm0\n\txorps %%xmm1, %%xmm1\n\txorps %%xmm2, %%xmm2\n\t"
        "xorps %%xmm3, %%xmm3\n\txorps %%xmm4, %%xmm4\n\txorps %%xmm5, %%xmm5\n\t"
        "xorps %%xmm6, %%xmm6\n\txorps %%xmm7, %%xmm7\n\txorps %%xmm8, %%xmm8\n\t"
        "xorps %%xmm9, %%xmm9\n\txorps %%xmm10, %%xmm10\n\txorps %%xmm11, %%xmm11\n\t"
        "xorps %%xmm12, %%xmm12\n\txorps %%xmm13, %%xmm13\n\txorps %%xmm14, %%xmm14\n\t"
        "xorps %%xmm15, %%xmm15"
        ::: "xmm0", "xmm1", "xmm2", "xmm3", "xmm4", "xmm5", "xmm6", "xmm7", "xmm8",
            "xmm9", "xmm10", "xmm11", "xmm12", "xmm13", "xmm14", "xmm15");
#elif defined(__aarch64__)
    __asm__ volatile(
        "movi v0.2d, #0\n\tmovi v1.2d, #0\n\tmovi v2.2d, #0\n\tmovi v3.2d, #0\n\t"
        "movi v4.2d, #0\n\tmovi v5.2d, #0\n\tmovi v6.2d, #0\n\tmovi v7.2d, #0\n\t"
        "movi v8.2d, #0\n\tmovi v9.2d, #0\n\tmovi v10.2d, #0\n\tmovi v11.2d, #0\n\t"
        "movi v12.2d, #0\n\tmovi v13.2d, #0\n\tmovi v14.2d, #0\n\tmovi v15.2d, #0\n\t"
        "movi v16.2d, #0\n\tmovi v17.2d, #0\n\tmovi v18.2d, #0\n\tmovi v19.2d, #0\n\t"
        "movi v20.2d, #0\n\tmovi v21.2d, #0\n\tmovi v22.2d, #0\n\tmovi v23.2d, #0\n\t"
        "movi v24.2d, #0\n\tmovi v25.2d, #0\n\tmovi v26.2d, #0\n\tmovi v27.2d, #0\n\t"
        "movi v28.2d, #0\n\tmovi v29.2d, #0\n\tmovi v30.2d, #0\n\tmovi v31.2d, #0"
        ::: "v0", "v1", "v2", "v3", "v4", "v5", "v6", "v7", "v8", "v9", "v10", "v11", "v12",
            "v13", "v14", "v15", "v16", "v17", "v18", "v19", "v20", "v21", "v22", "v23", "v24",
            "v25", "v26", "v27", "v28", "v29", "v30", "v31");
#endif
    return x * 2.0;
}

/* Each argument weighed by its position: a wrong move shows. */
double c_weigh(double a, double b, double c, double d, double e, double f, double g, double h) {
    return a + 2.0 * b + 4.0 * c + 8.0 * d + 16.0 * e + 32.0 * f + 64.0 * g + 128.0 * h;
}

float c_weigh_single(float a, double b, float c, double d) {
    return a + 2.0f * (float)b + 4.0f * c + 8.0f * (float)d;
}

double c_variadic(int count, ...) {
    va_list arguments;
    va_start(arguments, count);
    double total = 0.0, weight = 1.0;
    for (int k = 0; k < count; k++) {
        total += weight * va_arg(arguments, double);
        weight *= 3.0;
    }
    va_end(arguments);
    return total;
}

extern double base_weigh(double a, double b, double c, double d, double e, double f, double g, double h);
extern double base_pressure(double a, double b);

/* Base receiving eight floats from C, in its own argument registers. */
double c_calls_base(void) {
    return base_weigh(1.5, 2.5, 3.5, 4.5, 5.5, 6.5, 7.5, 8.5);
}

#if defined(_WIN64)
/* call_with_nonvolatile(f, inputs, after): xmm0 and xmm1 from inputs[0..1], xmm6-xmm15 from
   the 160 bytes after them; f(xmm0, xmm1) called; xmm6-xmm15 as the call left them stored to
   `after`; its own caller's xmm6-xmm15 kept. */
double call_with_nonvolatile(double (*f)(double, double), const double *inputs, unsigned char *after);
__asm__(
    "    .text\n"
    "    .globl call_with_nonvolatile\n"
    "call_with_nonvolatile:\n"
    "    pushq %rbp\n"
    "    movq %rsp, %rbp\n"
    "    pushq %rbx\n"
    "    pushq %rsi\n"
    "    subq $208, %rsp\n"
    "    movdqu %xmm6, 32(%rsp)\n    movdqu %xmm7, 48(%rsp)\n    movdqu %xmm8, 64(%rsp)\n"
    "    movdqu %xmm9, 80(%rsp)\n    movdqu %xmm10, 96(%rsp)\n    movdqu %xmm11, 112(%rsp)\n"
    "    movdqu %xmm12, 128(%rsp)\n    movdqu %xmm13, 144(%rsp)\n    movdqu %xmm14, 160(%rsp)\n"
    "    movdqu %xmm15, 176(%rsp)\n"
    "    movq %rcx, %rsi\n"
    "    movq %r8, %rbx\n"
    "    movsd (%rdx), %xmm0\n    movsd 8(%rdx), %xmm1\n"
    "    movdqu 16(%rdx), %xmm6\n    movdqu 32(%rdx), %xmm7\n    movdqu 48(%rdx), %xmm8\n"
    "    movdqu 64(%rdx), %xmm9\n    movdqu 80(%rdx), %xmm10\n    movdqu 96(%rdx), %xmm11\n"
    "    movdqu 112(%rdx), %xmm12\n    movdqu 128(%rdx), %xmm13\n    movdqu 144(%rdx), %xmm14\n"
    "    movdqu 160(%rdx), %xmm15\n"
    "    call *%rsi\n"
    "    movdqu %xmm6, (%rbx)\n    movdqu %xmm7, 16(%rbx)\n    movdqu %xmm8, 32(%rbx)\n"
    "    movdqu %xmm9, 48(%rbx)\n    movdqu %xmm10, 64(%rbx)\n    movdqu %xmm11, 80(%rbx)\n"
    "    movdqu %xmm12, 96(%rbx)\n    movdqu %xmm13, 112(%rbx)\n    movdqu %xmm14, 128(%rbx)\n"
    "    movdqu %xmm15, 144(%rbx)\n"
    "    movdqu 32(%rsp), %xmm6\n    movdqu 48(%rsp), %xmm7\n    movdqu 64(%rsp), %xmm8\n"
    "    movdqu 80(%rsp), %xmm9\n    movdqu 96(%rsp), %xmm10\n    movdqu 112(%rsp), %xmm11\n"
    "    movdqu 128(%rsp), %xmm12\n    movdqu 144(%rsp), %xmm13\n    movdqu 160(%rsp), %xmm14\n"
    "    movdqu 176(%rsp), %xmm15\n"
    "    addq $208, %rsp\n"
    "    popq %rsi\n"
    "    popq %rbx\n"
    "    popq %rbp\n"
    "    ret\n");
#endif

/* Windows x64: whether a call into Base left every bit of xmm6-xmm15 as the caller set
   them; the result of the call in `*result`. Elsewhere every xmm register is the caller's
   to save: the call is made plainly. */
int c_preserves(double *result) {
#if defined(_WIN64)
    double inputs[22];
    unsigned char after[160];
    inputs[0] = 1.5;
    inputs[1] = 2.5;
    for (int k = 0; k < 20; k++)
        inputs[2 + k] = 1000.0 + (double)k * 17.25;
    *result = call_with_nonvolatile(base_pressure, inputs, after);
    return memcmp(after, &inputs[2], sizeof after) == 0;
#else
    *result = base_pressure(1.5, 2.5);
    return 1;
#endif
}
