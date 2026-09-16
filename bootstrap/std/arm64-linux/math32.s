    .text

    .p2align 2
    .globl lb_math32_0init
    .type lb_math32_0init, %function
lb_math32_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    movz x9, #4059
    movk x9, #16457, lsl #16
    fmov s24, w9
    adrp x14, lb_math32_pi
    add x14, x14, :lo12:lb_math32_pi
    str s24, [x14]
    movz x9, #4059
    movk x9, #16585, lsl #16
    fmov s24, w9
    adrp x14, lb_math32_tau
    add x14, x14, :lo12:lb_math32_tau
    str s24, [x14]
    movz x9, #63572
    movk x9, #16429, lsl #16
    fmov s24, w9
    adrp x14, lb_math32_e
    add x14, x14, :lo12:lb_math32_e
    str s24, [x14]
    movz x9, #32640, lsl #16
    fmov s24, w9
    adrp x14, lb_math32_infinity
    add x14, x14, :lo12:lb_math32_infinity
    str s24, [x14]
    movz x9, #32704, lsl #16
    fmov s24, w9
    adrp x14, lb_math32_nan
    add x14, x14, :lo12:lb_math32_nan
    str s24, [x14]
    adrp x14, lb_math32_9sign_mask
    add x14, x14, :lo12:lb_math32_9sign_mask
    movz x9, #32768, lsl #16
    str w9, [x14]
    adrp x14, lb_math32_14magnitude_mask
    add x14, x14, :lo12:lb_math32_14magnitude_mask
    movz x9, #65535
    movk x9, #32767, lsl #16
    str w9, [x14]
    adrp x14, lb_math32_13exponent_mask
    add x14, x14, :lo12:lb_math32_13exponent_mask
    movz x9, #32640, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_math32_0init, .-lb_math32_0init

    .p2align 2
    .globl lb_math32_floor
    .type lb_math32_floor, %function
lb_math32_floor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl floorf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_1:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_floor, .-lb_math32_floor

    .p2align 2
    .globl lb_math32_ceil
    .type lb_math32_ceil, %function
lb_math32_ceil:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl ceilf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_1:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_ceil, .-lb_math32_ceil

    .p2align 2
    .globl lb_math32_round
    .type lb_math32_round, %function
lb_math32_round:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl roundf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_1:
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_round, .-lb_math32_round

    .p2align 2
    .globl lb_math32_trunc
    .type lb_math32_trunc, %function
lb_math32_trunc:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl truncf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_1:
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_trunc, .-lb_math32_trunc

    .p2align 2
    .globl lb_math32_sqrt
    .type lb_math32_sqrt, %function
lb_math32_sqrt:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl sqrtf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_1:
    adrp x0, .Ltext_5
    add x0, x0, :lo12:.Ltext_5
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_sqrt, .-lb_math32_sqrt

    .p2align 2
    .globl lb_math32_cbrt
    .type lb_math32_cbrt, %function
lb_math32_cbrt:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl cbrtf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_1:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_cbrt, .-lb_math32_cbrt

    .p2align 2
    .globl lb_math32_hypot
    .type lb_math32_hypot, %function
lb_math32_hypot:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str s0, [x16]
    sub x16, x29, #48
    str s1, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    sub x14, x29, #48
    ldr s25, [x14]
    fmov s16, s24
    fmov s0, s16
    fmov s16, s25
    fmov s1, s16
    bl hypotf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_1:
    adrp x0, .Ltext_7
    add x0, x0, :lo12:.Ltext_7
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_hypot, .-lb_math32_hypot

    .p2align 2
    .globl lb_math32_mod
    .type lb_math32_mod, %function
lb_math32_mod:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str s0, [x16]
    sub x16, x29, #48
    str s1, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    sub x14, x29, #48
    ldr s25, [x14]
    fmov s16, s24
    fmov s0, s16
    fmov s16, s25
    fmov s1, s16
    bl fmodf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_1:
    adrp x0, .Ltext_8
    add x0, x0, :lo12:.Ltext_8
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_mod, .-lb_math32_mod

    .p2align 2
    .globl lb_math32_pow
    .type lb_math32_pow, %function
lb_math32_pow:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str s0, [x16]
    sub x16, x29, #48
    str s1, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    sub x14, x29, #48
    ldr s25, [x14]
    fmov s16, s24
    fmov s0, s16
    fmov s16, s25
    fmov s1, s16
    bl powf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_1:
    adrp x0, .Ltext_9
    add x0, x0, :lo12:.Ltext_9
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_pow, .-lb_math32_pow

    .p2align 2
    .globl lb_math32_exp
    .type lb_math32_exp, %function
lb_math32_exp:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl expf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_1:
    adrp x0, .Ltext_10
    add x0, x0, :lo12:.Ltext_10
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_exp, .-lb_math32_exp

    .p2align 2
    .globl lb_math32_exp2
    .type lb_math32_exp2, %function
lb_math32_exp2:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl exp2f
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_1:
    adrp x0, .Ltext_11
    add x0, x0, :lo12:.Ltext_11
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_exp2, .-lb_math32_exp2

    .p2align 2
    .globl lb_math32_log
    .type lb_math32_log, %function
lb_math32_log:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl logf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L12_1:
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_log, .-lb_math32_log

    .p2align 2
    .globl lb_math32_log2
    .type lb_math32_log2, %function
lb_math32_log2:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl log2f
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_1:
    adrp x0, .Ltext_13
    add x0, x0, :lo12:.Ltext_13
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_log2, .-lb_math32_log2

    .p2align 2
    .globl lb_math32_log10
    .type lb_math32_log10, %function
lb_math32_log10:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl log10f
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L14_1:
    adrp x0, .Ltext_14
    add x0, x0, :lo12:.Ltext_14
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_log10, .-lb_math32_log10

    .p2align 2
    .globl lb_math32_log1p
    .type lb_math32_log1p, %function
lb_math32_log1p:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl log1pf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L15_1:
    adrp x0, .Ltext_15
    add x0, x0, :lo12:.Ltext_15
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_log1p, .-lb_math32_log1p

    .p2align 2
    .globl lb_math32_expm1
    .type lb_math32_expm1, %function
lb_math32_expm1:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov w14, s24
    movz x10, #65408, lsl #16
    movk x10, #65535, lsl #32
    movk x10, #65535, lsl #48
    cmp w14, w10
    b.ne .L16_2
.L16_1:
    movz x9, #16256, lsl #16
    fmov s24, w9
    fneg s24, s24
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L16_4:
    b .L16_3
.L16_2:
.L16_3:
    fmov s16, s24
    fmov s0, s16
    bl expm1f
    fmov s25, s0
    fmov s16, s25
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L16_5:
    adrp x0, .Ltext_16
    add x0, x0, :lo12:.Ltext_16
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_expm1, .-lb_math32_expm1

    .p2align 2
    .globl lb_math32_fma
    .type lb_math32_fma, %function
lb_math32_fma:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    sub x16, x29, #32
    str s0, [x16]
    sub x16, x29, #48
    str s1, [x16]
    sub x16, x29, #64
    str s2, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    sub x14, x29, #48
    ldr s25, [x14]
    sub x14, x29, #64
    ldr s26, [x14]
    fmov s16, s24
    fmov s0, s16
    fmov s16, s25
    fmov s1, s16
    fmov s16, s26
    fmov s2, s16
    bl fmaf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L17_1:
    adrp x0, .Ltext_17
    add x0, x0, :lo12:.Ltext_17
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_fma, .-lb_math32_fma

    .p2align 2
    .globl lb_math32_nextafter
    .type lb_math32_nextafter, %function
lb_math32_nextafter:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str s0, [x16]
    sub x16, x29, #48
    str s1, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    sub x14, x29, #48
    ldr s25, [x14]
    fmov s16, s24
    fmov s0, s16
    fmov s16, s25
    fmov s1, s16
    bl nextafterf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L18_1:
    adrp x0, .Ltext_18
    add x0, x0, :lo12:.Ltext_18
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_nextafter, .-lb_math32_nextafter

    .p2align 2
    .globl lb_math32_7next_up
    .type lb_math32_7next_up, %function
lb_math32_7next_up:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    adrp x14, lb_math32_infinity
    add x14, x14, :lo12:lb_math32_infinity
    ldr s25, [x14]
    fmov s16, s24
    fmov s0, s16
    fmov s16, s25
    fmov s1, s16
    bl nextafterf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L19_1:
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_7next_up, .-lb_math32_7next_up

    .p2align 2
    .globl lb_math32_9next_down
    .type lb_math32_9next_down, %function
lb_math32_9next_down:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    adrp x14, lb_math32_infinity
    add x14, x14, :lo12:lb_math32_infinity
    ldr s25, [x14]
    movz x9, #16256, lsl #16
    fmov s26, w9
    fneg s26, s26
    sub x10, x29, #48
    str s25, [x10]
    sub x10, x29, #64
    str s26, [x10]
    fmov w14, s25
    movz x10, #65535
    movk x10, #32767, lsl #16
    and w14, w14, w10
    fmov w15, s26
    movz x10, #32768, lsl #16
    and w15, w15, w10
    orr w14, w14, w15
    fmov s25, w14
    sub x10, x29, #72
    str s25, [x10]
    b .L20_3
.L20_2:
    adrp x0, .Ltext_40
    add x0, x0, :lo12:.Ltext_40
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L20_3:
    fmov s16, s24
    fmov s0, s16
    fmov s16, s25
    fmov s1, s16
    bl nextafterf
    fmov s26, s0
    fmov s16, s26
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L20_1:
    adrp x0, .Ltext_20
    add x0, x0, :lo12:.Ltext_20
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_9next_down, .-lb_math32_9next_down

    .p2align 2
    .globl lb_math32_frexp
    .type lb_math32_frexp, %function
lb_math32_frexp:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    sub x16, x29, #48
    str s0, [x16]
    sub x14, x29, #48
    ldr s24, [x14]
    mov x9, #0
    fmov s25, w9
    fcmp s24, s25
    cset w14, eq
    cbnz w14, .L21_10
    b .L21_4
.L21_10:
    mov w15, w14
    b .L21_5
.L21_4:
    sub x10, x29, #88
    str s24, [x10]
    fmov w14, s24
    movz x10, #32640, lsl #16
    and w14, w14, w10
    movz x10, #32640, lsl #16
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #96
    str w14, [x10]
    b .L21_9
.L21_8:
    adrp x0, .Ltext_36
    add x0, x0, :lo12:.Ltext_36
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L21_9:
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L21_5:
    and w14, w15, #255
    cbnz w14, .L21_1
    b .L21_2
.L21_1:
    sub x14, x29, #56
    str s24, [x14]
    add x15, x14, #4
    mov x9, #0
    str w9, [x15]
    sub x19, x29, #32
    mov x10, x14
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L21_6:
    b .L21_3
.L21_2:
.L21_3:
    sub x19, x29, #60
    fmov s16, s24
    fmov s0, s16
    mov x0, x19
    bl frexpf
    fmov s25, s0
    sub x14, x29, #68
    str s25, [x14]
    ldrsw x15, [x19]
    add x12, x14, #4
    str w15, [x12]
    sub x19, x29, #32
    mov x10, x14
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L21_7:
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_frexp, .-lb_math32_frexp

    .p2align 2
    .globl lb_math32_scalbn
    .type lb_math32_scalbn, %function
lb_math32_scalbn:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str s0, [x16]
    sub x16, x29, #48
    str w0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    sub x14, x29, #48
    ldrsw x14, [x14]
    fmov s16, s24
    fmov s0, s16
    mov x0, x14
    bl scalbnf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L22_1:
    adrp x0, .Ltext_22
    add x0, x0, :lo12:.Ltext_22
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_scalbn, .-lb_math32_scalbn

    .p2align 2
    .globl lb_math32_modf
    .type lb_math32_modf, %function
lb_math32_modf:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #48
    str s0, [x16]
    sub x14, x29, #48
    ldr s24, [x14]
    sub x19, x29, #52
    fmov s16, s24
    fmov s0, s16
    mov x0, x19
    bl modff
    fmov s24, s0
    sub x14, x29, #60
    str s24, [x14]
    ldr s24, [x19]
    add x15, x14, #4
    str s24, [x15]
    sub x19, x29, #32
    mov x10, x14
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    mov x9, x19
    ldr s0, [x9, #0]
    ldr s1, [x9, #4]
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L23_1:
    adrp x0, .Ltext_23
    add x0, x0, :lo12:.Ltext_23
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_modf, .-lb_math32_modf

    .p2align 2
    .globl lb_math32_remainder
    .type lb_math32_remainder, %function
lb_math32_remainder:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str d8, [sp, #72]
    sub x16, x29, #40
    str s0, [x16]
    sub x16, x29, #56
    str s1, [x16]
    sub x14, x29, #40
    ldr s8, [x14]
    sub x14, x29, #56
    ldr s24, [x14]
    fmov s16, s8
    fmov s0, s16
    fmov s16, s24
    fmov s1, s16
    bl remainderf
    fmov s24, s0
    fmov w14, s24
    movz x10, #65535
    movk x10, #32767, lsl #16
    and w14, w14, w10
    mov x10, #0
    cmp w14, w10
    b.ne .L24_2
.L24_1:
    sub x10, x29, #72
    str s24, [x10]
    sub x10, x29, #88
    str s8, [x10]
    fmov w15, s8
    movz x10, #32768, lsl #16
    and w15, w15, w10
    orr w15, w14, w15
    fmov s25, w15
    sub x10, x29, #96
    str s25, [x10]
    b .L24_6
.L24_5:
    adrp x0, .Ltext_40
    add x0, x0, :lo12:.Ltext_40
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L24_6:
    fmov s24, s25
    b .L24_3
.L24_2:
.L24_3:
    fmov s16, s24
    fmov s0, s16
    ldr d8, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L24_4:
    adrp x0, .Ltext_24
    add x0, x0, :lo12:.Ltext_24
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_remainder, .-lb_math32_remainder

    .p2align 2
    .globl lb_math32_sin
    .type lb_math32_sin, %function
lb_math32_sin:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl sinf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L25_1:
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_sin, .-lb_math32_sin

    .p2align 2
    .globl lb_math32_cos
    .type lb_math32_cos, %function
lb_math32_cos:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl cosf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L26_1:
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_cos, .-lb_math32_cos

    .p2align 2
    .globl lb_math32_tan
    .type lb_math32_tan, %function
lb_math32_tan:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl tanf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L27_1:
    adrp x0, .Ltext_27
    add x0, x0, :lo12:.Ltext_27
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_tan, .-lb_math32_tan

    .p2align 2
    .globl lb_math32_asin
    .type lb_math32_asin, %function
lb_math32_asin:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl asinf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L28_1:
    adrp x0, .Ltext_28
    add x0, x0, :lo12:.Ltext_28
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_asin, .-lb_math32_asin

    .p2align 2
    .globl lb_math32_acos
    .type lb_math32_acos, %function
lb_math32_acos:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl acosf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L29_1:
    adrp x0, .Ltext_29
    add x0, x0, :lo12:.Ltext_29
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_acos, .-lb_math32_acos

    .p2align 2
    .globl lb_math32_atan
    .type lb_math32_atan, %function
lb_math32_atan:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl atanf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L30_1:
    adrp x0, .Ltext_30
    add x0, x0, :lo12:.Ltext_30
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_atan, .-lb_math32_atan

    .p2align 2
    .globl lb_math32_atan2
    .type lb_math32_atan2, %function
lb_math32_atan2:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str s0, [x16]
    sub x16, x29, #48
    str s1, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    sub x14, x29, #48
    ldr s25, [x14]
    fmov s16, s24
    fmov s0, s16
    fmov s16, s25
    fmov s1, s16
    bl atan2f
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L31_1:
    adrp x0, .Ltext_31
    add x0, x0, :lo12:.Ltext_31
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_atan2, .-lb_math32_atan2

    .p2align 2
    .globl lb_math32_sinh
    .type lb_math32_sinh, %function
lb_math32_sinh:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl sinhf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L32_1:
    adrp x0, .Ltext_32
    add x0, x0, :lo12:.Ltext_32
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_sinh, .-lb_math32_sinh

    .p2align 2
    .globl lb_math32_cosh
    .type lb_math32_cosh, %function
lb_math32_cosh:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl coshf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L33_1:
    adrp x0, .Ltext_33
    add x0, x0, :lo12:.Ltext_33
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_cosh, .-lb_math32_cosh

    .p2align 2
    .globl lb_math32_tanh
    .type lb_math32_tanh, %function
lb_math32_tanh:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl tanhf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L34_1:
    adrp x0, .Ltext_34
    add x0, x0, :lo12:.Ltext_34
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_tanh, .-lb_math32_tanh

    .p2align 2
    .globl lb_math32_6is_nan
    .type lb_math32_6is_nan, %function
lb_math32_6is_nan:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov w14, s24
    movz x10, #65535
    movk x10, #32767, lsl #16
    and w14, w14, w10
    movz x10, #32640, lsl #16
    cmp w14, w10
    cset w14, hi
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L35_1:
    adrp x0, .Ltext_35
    add x0, x0, :lo12:.Ltext_35
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_6is_nan, .-lb_math32_6is_nan

    .p2align 2
    .globl lb_math32_9is_finite
    .type lb_math32_9is_finite, %function
lb_math32_9is_finite:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov w14, s24
    movz x10, #32640, lsl #16
    and w14, w14, w10
    movz x10, #32640, lsl #16
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L36_1:
    adrp x0, .Ltext_36
    add x0, x0, :lo12:.Ltext_36
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_9is_finite, .-lb_math32_9is_finite

    .p2align 2
    .globl lb_math32_11is_infinite
    .type lb_math32_11is_infinite, %function
lb_math32_11is_infinite:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov w14, s24
    movz x10, #65535
    movk x10, #32767, lsl #16
    and w14, w14, w10
    movz x10, #32640, lsl #16
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L37_1:
    adrp x0, .Ltext_37
    add x0, x0, :lo12:.Ltext_37
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_11is_infinite, .-lb_math32_11is_infinite

    .p2align 2
    .globl lb_math32_signbit
    .type lb_math32_signbit, %function
lb_math32_signbit:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov w14, s24
    movz x10, #32768, lsl #16
    and w14, w14, w10
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L38_1:
    adrp x0, .Ltext_38
    add x0, x0, :lo12:.Ltext_38
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_signbit, .-lb_math32_signbit

    .p2align 2
    .globl lb_math32_abs
    .type lb_math32_abs, %function
lb_math32_abs:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov w14, s24
    movz x10, #65535
    movk x10, #32767, lsl #16
    and w14, w14, w10
    fmov s24, w14
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L39_1:
    adrp x0, .Ltext_39
    add x0, x0, :lo12:.Ltext_39
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_abs, .-lb_math32_abs

    .p2align 2
    .globl lb_math32_copysign
    .type lb_math32_copysign, %function
lb_math32_copysign:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str s0, [x16]
    sub x16, x29, #48
    str s1, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov w14, s24
    movz x10, #65535
    movk x10, #32767, lsl #16
    and w14, w14, w10
    sub x15, x29, #48
    ldr s24, [x15]
    fmov w15, s24
    movz x10, #32768, lsl #16
    and w15, w15, w10
    orr w14, w14, w15
    fmov s24, w14
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L40_1:
    adrp x0, .Ltext_40
    add x0, x0, :lo12:.Ltext_40
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_copysign, .-lb_math32_copysign

    .p2align 2
    .globl lb_math32_sign
    .type lb_math32_sign, %function
lb_math32_sign:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    sub x10, x29, #48
    str s24, [x10]
    fmov w14, s24
    movz x10, #65535
    movk x10, #32767, lsl #16
    and w14, w14, w10
    movz x10, #32640, lsl #16
    cmp w14, w10
    cset w14, hi
    and w14, w14, #255
    sub x10, x29, #56
    str w14, [x10]
    b .L41_15
.L41_14:
    adrp x0, .Ltext_35
    add x0, x0, :lo12:.Ltext_35
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L41_15:
    cbnz w14, .L41_1
    b .L41_2
.L41_1:
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L41_4:
    b .L41_3
.L41_2:
.L41_3:
    mov x9, #0
    fmov s25, w9
    fcmp s24, s25
    cset w14, mi
    cbnz w14, .L41_5
    b .L41_6
.L41_5:
    movz x9, #16256, lsl #16
    fmov s24, w9
    fneg s24, s24
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L41_8:
    b .L41_7
.L41_6:
.L41_7:
    fcmp s24, s25
    cset w14, gt
    cbnz w14, .L41_9
    b .L41_10
.L41_9:
    movz x9, #16256, lsl #16
    fmov s24, w9
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L41_12:
    b .L41_11
.L41_10:
.L41_11:
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L41_13:
    adrp x0, .Ltext_41
    add x0, x0, :lo12:.Ltext_41
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_sign, .-lb_math32_sign

    .p2align 2
    .globl lb_math32_min
    .type lb_math32_min, %function
lb_math32_min:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    sub x16, x29, #32
    str s0, [x16]
    sub x16, x29, #48
    str s1, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    sub x10, x29, #64
    str s24, [x10]
    fmov w14, s24
    movz x10, #65535
    movk x10, #32767, lsl #16
    and w15, w14, w10
    movz x10, #32640, lsl #16
    cmp w15, w10
    cset w15, hi
    and w15, w15, #255
    sub x10, x29, #72
    str w15, [x10]
    b .L42_20
.L42_19:
    adrp x0, .Ltext_35
    add x0, x0, :lo12:.Ltext_35
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L42_20:
    cbnz w15, .L42_1
    b .L42_2
.L42_1:
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L42_4:
    b .L42_3
.L42_2:
.L42_3:
    sub x15, x29, #48
    ldr s25, [x15]
    sub x10, x29, #64
    str s25, [x10]
    fmov w15, s25
    movz x10, #65535
    movk x10, #32767, lsl #16
    and w12, w15, w10
    movz x10, #32640, lsl #16
    cmp w12, w10
    cset w12, hi
    and w12, w12, #255
    sub x10, x29, #80
    str w12, [x10]
    b .L42_22
.L42_21:
    adrp x0, .Ltext_35
    add x0, x0, :lo12:.Ltext_35
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L42_22:
    cbnz w12, .L42_5
    b .L42_6
.L42_5:
    fmov s16, s25
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L42_8:
    b .L42_7
.L42_6:
.L42_7:
    mov x9, #0
    fmov s26, w9
    fcmp s24, s26
    cset w12, eq
    cbnz w12, .L42_12
    b .L42_23
.L42_23:
    mov w13, w12
    b .L42_13
.L42_12:
    fcmp s25, s26
    cset w13, eq
.L42_13:
    and w12, w13, #255
    cbnz w12, .L42_9
    b .L42_10
.L42_9:
    orr w12, w14, w15
    fmov s24, w12
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L42_14:
    b .L42_11
.L42_10:
.L42_11:
    fcmp s24, s25
    cset w14, mi
    cbnz w14, .L42_15
    b .L42_16
.L42_15:
    fmov s25, s24
    b .L42_17
.L42_16:
.L42_17:
    fmov s16, s25
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L42_18:
    adrp x0, .Ltext_42
    add x0, x0, :lo12:.Ltext_42
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_min, .-lb_math32_min

    .p2align 2
    .globl lb_math32_max
    .type lb_math32_max, %function
lb_math32_max:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    sub x16, x29, #32
    str s0, [x16]
    sub x16, x29, #48
    str s1, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    sub x10, x29, #64
    str s24, [x10]
    fmov w14, s24
    movz x10, #65535
    movk x10, #32767, lsl #16
    and w15, w14, w10
    movz x10, #32640, lsl #16
    cmp w15, w10
    cset w15, hi
    and w15, w15, #255
    sub x10, x29, #72
    str w15, [x10]
    b .L43_20
.L43_19:
    adrp x0, .Ltext_35
    add x0, x0, :lo12:.Ltext_35
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L43_20:
    cbnz w15, .L43_1
    b .L43_2
.L43_1:
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L43_4:
    b .L43_3
.L43_2:
.L43_3:
    sub x15, x29, #48
    ldr s25, [x15]
    sub x10, x29, #64
    str s25, [x10]
    fmov w15, s25
    movz x10, #65535
    movk x10, #32767, lsl #16
    and w12, w15, w10
    movz x10, #32640, lsl #16
    cmp w12, w10
    cset w12, hi
    and w12, w12, #255
    sub x10, x29, #80
    str w12, [x10]
    b .L43_22
.L43_21:
    adrp x0, .Ltext_35
    add x0, x0, :lo12:.Ltext_35
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L43_22:
    cbnz w12, .L43_5
    b .L43_6
.L43_5:
    fmov s16, s25
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L43_8:
    b .L43_7
.L43_6:
.L43_7:
    mov x9, #0
    fmov s26, w9
    fcmp s24, s26
    cset w12, eq
    cbnz w12, .L43_12
    b .L43_23
.L43_23:
    mov w13, w12
    b .L43_13
.L43_12:
    fcmp s25, s26
    cset w13, eq
.L43_13:
    and w12, w13, #255
    cbnz w12, .L43_9
    b .L43_10
.L43_9:
    and w12, w14, w15
    fmov s24, w12
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L43_14:
    b .L43_11
.L43_10:
.L43_11:
    fcmp s24, s25
    cset w14, gt
    cbnz w14, .L43_15
    b .L43_16
.L43_15:
    fmov s25, s24
    b .L43_17
.L43_16:
.L43_17:
    fmov s16, s25
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L43_18:
    adrp x0, .Ltext_43
    add x0, x0, :lo12:.Ltext_43
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_max, .-lb_math32_max

    .p2align 2
    .globl lb_math32_clamp
    .type lb_math32_clamp, %function
lb_math32_clamp:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    sub x16, x29, #32
    str s0, [x16]
    sub x16, x29, #48
    str s1, [x16]
    sub x16, x29, #64
    str s2, [x16]
    sub x14, x29, #48
    ldr s24, [x14]
    sub x14, x29, #64
    ldr s25, [x14]
    fcmp s24, s25
    cset w14, ls
    cbnz w14, .L44_1
    b .L44_2
.L44_2:
    adrp x0, .Ltext_45
    add x0, x0, :lo12:.Ltext_45
    adrp x1, .Ltext_44
    add x1, x1, :lo12:.Ltext_44
    bl lb_core_7trap_at
.L44_1:
    sub x14, x29, #32
    ldr s26, [x14]
    sub x10, x29, #80
    str s26, [x10]
    fmov w14, s26
    movz x10, #65535
    movk x10, #32767, lsl #16
    and w14, w14, w10
    movz x10, #32640, lsl #16
    cmp w14, w10
    cset w14, hi
    and w14, w14, #255
    sub x10, x29, #88
    str w14, [x10]
    b .L44_15
.L44_14:
    adrp x0, .Ltext_35
    add x0, x0, :lo12:.Ltext_35
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L44_15:
    cbnz w14, .L44_3
    b .L44_4
.L44_3:
    fmov s16, s26
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L44_6:
    b .L44_5
.L44_4:
.L44_5:
    fcmp s26, s24
    cset w14, mi
    cbnz w14, .L44_7
    b .L44_8
.L44_7:
    fmov s25, s24
    b .L44_9
.L44_8:
    fcmp s26, s25
    cset w14, gt
    cbnz w14, .L44_10
    b .L44_11
.L44_10:
    fmov s24, s25
    b .L44_12
.L44_11:
    fmov s24, s26
.L44_12:
    fmov s25, s24
.L44_9:
    fmov s16, s25
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L44_13:
    adrp x0, .Ltext_46
    add x0, x0, :lo12:.Ltext_46
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math32_clamp, .-lb_math32_clamp

    .section .init_array,"aw"
    .p2align 3
    .quad lb_math32_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/math32.lucb:51:5"
.Ltext_2:
    .asciz "src/std/math32.lucb:54:5"
.Ltext_3:
    .asciz "src/std/math32.lucb:57:5"
.Ltext_4:
    .asciz "src/std/math32.lucb:60:5"
.Ltext_5:
    .asciz "src/std/math32.lucb:63:5"
.Ltext_6:
    .asciz "src/std/math32.lucb:66:5"
.Ltext_7:
    .asciz "src/std/math32.lucb:70:5"
.Ltext_8:
    .asciz "src/std/math32.lucb:74:5"
.Ltext_9:
    .asciz "src/std/math32.lucb:77:5"
.Ltext_10:
    .asciz "src/std/math32.lucb:80:5"
.Ltext_11:
    .asciz "src/std/math32.lucb:83:5"
.Ltext_12:
    .asciz "src/std/math32.lucb:86:5"
.Ltext_13:
    .asciz "src/std/math32.lucb:89:5"
.Ltext_14:
    .asciz "src/std/math32.lucb:92:5"
.Ltext_15:
    .asciz "src/std/math32.lucb:97:5"
.Ltext_16:
    .asciz "src/std/math32.lucb:104:5"
.Ltext_17:
    .asciz "src/std/math32.lucb:109:5"
.Ltext_18:
    .asciz "src/std/math32.lucb:114:5"
.Ltext_19:
    .asciz "src/std/math32.lucb:119:5"
.Ltext_20:
    .asciz "src/std/math32.lucb:124:5"
.Ltext_21:
    .asciz "src/std/math32.lucb:132:5"
.Ltext_22:
    .asciz "src/std/math32.lucb:137:5"
.Ltext_23:
    .asciz "src/std/math32.lucb:142:5"
.Ltext_24:
    .asciz "src/std/math32.lucb:150:5"
.Ltext_25:
    .asciz "src/std/math32.lucb:153:5"
.Ltext_26:
    .asciz "src/std/math32.lucb:156:5"
.Ltext_27:
    .asciz "src/std/math32.lucb:159:5"
.Ltext_28:
    .asciz "src/std/math32.lucb:162:5"
.Ltext_29:
    .asciz "src/std/math32.lucb:165:5"
.Ltext_30:
    .asciz "src/std/math32.lucb:168:5"
.Ltext_31:
    .asciz "src/std/math32.lucb:172:5"
.Ltext_32:
    .asciz "src/std/math32.lucb:175:5"
.Ltext_33:
    .asciz "src/std/math32.lucb:178:5"
.Ltext_34:
    .asciz "src/std/math32.lucb:181:5"
.Ltext_35:
    .asciz "src/std/math32.lucb:185:5"
.Ltext_36:
    .asciz "src/std/math32.lucb:190:5"
.Ltext_37:
    .asciz "src/std/math32.lucb:194:5"
.Ltext_38:
    .asciz "src/std/math32.lucb:198:5"
.Ltext_39:
    .asciz "src/std/math32.lucb:202:5"
.Ltext_40:
    .asciz "src/std/math32.lucb:206:5"
.Ltext_41:
    .asciz "src/std/math32.lucb:216:5"
.Ltext_42:
    .asciz "src/std/math32.lucb:227:5"
.Ltext_43:
    .asciz "src/std/math32.lucb:238:5"
.Ltext_44:
    .asciz "assert failed: low <= high"
.Ltext_45:
    .asciz "src/std/math32.lucb:243:5"
.Ltext_46:
    .asciz "src/std/math32.lucb:246:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_math32_pi
    .type lb_math32_pi, %object
    .p2align 2
lb_math32_pi:
    .zero 4

    .bss
    .globl lb_math32_tau
    .type lb_math32_tau, %object
    .p2align 2
lb_math32_tau:
    .zero 4

    .bss
    .globl lb_math32_e
    .type lb_math32_e, %object
    .p2align 2
lb_math32_e:
    .zero 4

    .bss
    .globl lb_math32_infinity
    .type lb_math32_infinity, %object
    .p2align 2
lb_math32_infinity:
    .zero 4

    .bss
    .globl lb_math32_nan
    .type lb_math32_nan, %object
    .p2align 2
lb_math32_nan:
    .zero 4

    .bss
    .globl lb_math32_9sign_mask
    .type lb_math32_9sign_mask, %object
    .p2align 2
lb_math32_9sign_mask:
    .zero 4

    .bss
    .globl lb_math32_14magnitude_mask
    .type lb_math32_14magnitude_mask, %object
    .p2align 2
lb_math32_14magnitude_mask:
    .zero 4

    .bss
    .globl lb_math32_13exponent_mask
    .type lb_math32_13exponent_mask, %object
    .p2align 2
lb_math32_13exponent_mask:
    .zero 4


    .section .note.GNU-stack,"",%progbits
