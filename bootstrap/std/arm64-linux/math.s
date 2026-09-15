    .text

    .p2align 2
    .globl lb_math_0init
    .type lb_math_0init, %function
lb_math_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    movz x9, #11544
    movk x9, #21572, lsl #16
    movk x9, #8699, lsl #32
    movk x9, #16393, lsl #48
    fmov d24, x9
    adrp x14, lb_math_pi
    add x14, x14, :lo12:lb_math_pi
    str d24, [x14]
    movz x9, #11544
    movk x9, #21572, lsl #16
    movk x9, #8699, lsl #32
    movk x9, #16409, lsl #48
    fmov d24, x9
    adrp x14, lb_math_tau
    add x14, x14, :lo12:lb_math_tau
    str d24, [x14]
    movz x9, #22377
    movk x9, #35604, lsl #16
    movk x9, #48906, lsl #32
    movk x9, #16389, lsl #48
    fmov d24, x9
    adrp x14, lb_math_e
    add x14, x14, :lo12:lb_math_e
    str d24, [x14]
    movz x9, #32752, lsl #48
    fmov d24, x9
    adrp x14, lb_math_infinity
    add x14, x14, :lo12:lb_math_infinity
    str d24, [x14]
    movz x9, #32760, lsl #48
    fmov d24, x9
    adrp x14, lb_math_nan
    add x14, x14, :lo12:lb_math_nan
    str d24, [x14]
    adrp x14, lb_math_9sign_mask
    add x14, x14, :lo12:lb_math_9sign_mask
    movz x9, #32768, lsl #48
    str x9, [x14]
    adrp x14, lb_math_14magnitude_mask
    add x14, x14, :lo12:lb_math_14magnitude_mask
    movz x9, #65535
    movk x9, #65535, lsl #16
    movk x9, #65535, lsl #32
    movk x9, #32767, lsl #48
    str x9, [x14]
    adrp x14, lb_math_13exponent_mask
    add x14, x14, :lo12:lb_math_13exponent_mask
    movz x9, #32752, lsl #48
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_math_0init, .-lb_math_0init

    .p2align 2
    .globl lb_math_floor
    .type lb_math_floor, %function
lb_math_floor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl floor
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_1:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_floor, .-lb_math_floor

    .p2align 2
    .globl lb_math_ceil
    .type lb_math_ceil, %function
lb_math_ceil:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl ceil
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_1:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_ceil, .-lb_math_ceil

    .p2align 2
    .globl lb_math_round
    .type lb_math_round, %function
lb_math_round:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl round
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_1:
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_round, .-lb_math_round

    .p2align 2
    .globl lb_math_trunc
    .type lb_math_trunc, %function
lb_math_trunc:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl trunc
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_1:
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_trunc, .-lb_math_trunc

    .p2align 2
    .globl lb_math_sqrt
    .type lb_math_sqrt, %function
lb_math_sqrt:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl sqrt
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_1:
    adrp x0, .Ltext_5
    add x0, x0, :lo12:.Ltext_5
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_sqrt, .-lb_math_sqrt

    .p2align 2
    .globl lb_math_cbrt
    .type lb_math_cbrt, %function
lb_math_cbrt:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl cbrt
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_1:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_cbrt, .-lb_math_cbrt

    .p2align 2
    .globl lb_math_hypot
    .type lb_math_hypot, %function
lb_math_hypot:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str d0, [x16]
    sub x16, x29, #48
    str d1, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    sub x14, x29, #48
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl hypot
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_1:
    adrp x0, .Ltext_7
    add x0, x0, :lo12:.Ltext_7
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_hypot, .-lb_math_hypot

    .p2align 2
    .globl lb_math_mod
    .type lb_math_mod, %function
lb_math_mod:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str d0, [x16]
    sub x16, x29, #48
    str d1, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    sub x14, x29, #48
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl fmod
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_1:
    adrp x0, .Ltext_8
    add x0, x0, :lo12:.Ltext_8
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_mod, .-lb_math_mod

    .p2align 2
    .globl lb_math_pow
    .type lb_math_pow, %function
lb_math_pow:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str d0, [x16]
    sub x16, x29, #48
    str d1, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    sub x14, x29, #48
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl pow
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_1:
    adrp x0, .Ltext_9
    add x0, x0, :lo12:.Ltext_9
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_pow, .-lb_math_pow

    .p2align 2
    .globl lb_math_exp
    .type lb_math_exp, %function
lb_math_exp:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl exp
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_1:
    adrp x0, .Ltext_10
    add x0, x0, :lo12:.Ltext_10
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_exp, .-lb_math_exp

    .p2align 2
    .globl lb_math_exp2
    .type lb_math_exp2, %function
lb_math_exp2:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl exp2
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_1:
    adrp x0, .Ltext_11
    add x0, x0, :lo12:.Ltext_11
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_exp2, .-lb_math_exp2

    .p2align 2
    .globl lb_math_log
    .type lb_math_log, %function
lb_math_log:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl log
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L12_1:
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_log, .-lb_math_log

    .p2align 2
    .globl lb_math_log2
    .type lb_math_log2, %function
lb_math_log2:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl log2
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_1:
    adrp x0, .Ltext_13
    add x0, x0, :lo12:.Ltext_13
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_log2, .-lb_math_log2

    .p2align 2
    .globl lb_math_log10
    .type lb_math_log10, %function
lb_math_log10:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl log10
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L14_1:
    adrp x0, .Ltext_14
    add x0, x0, :lo12:.Ltext_14
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_log10, .-lb_math_log10

    .p2align 2
    .globl lb_math_log1p
    .type lb_math_log1p, %function
lb_math_log1p:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl log1p
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L15_1:
    adrp x0, .Ltext_15
    add x0, x0, :lo12:.Ltext_15
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_log1p, .-lb_math_log1p

    .p2align 2
    .globl lb_math_expm1
    .type lb_math_expm1, %function
lb_math_expm1:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov x14, d24
    adrp x15, lb_math_9sign_mask
    add x15, x15, :lo12:lb_math_9sign_mask
    ldr x15, [x15]
    adrp x12, lb_math_13exponent_mask
    add x12, x12, :lo12:lb_math_13exponent_mask
    ldr x12, [x12]
    orr x15, x15, x12
    cmp x14, x15
    b.ne .L16_2
.L16_1:
    movz x9, #16368, lsl #48
    fmov d24, x9
    fneg d24, d24
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L16_4:
    b .L16_3
.L16_2:
.L16_3:
    fmov d16, d24
    fmov d0, d16
    bl expm1
    fmov d25, d0
    fmov d16, d25
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L16_5:
    adrp x0, .Ltext_16
    add x0, x0, :lo12:.Ltext_16
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_expm1, .-lb_math_expm1

    .p2align 2
    .globl lb_math_fma
    .type lb_math_fma, %function
lb_math_fma:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    sub x16, x29, #32
    str d0, [x16]
    sub x16, x29, #48
    str d1, [x16]
    sub x16, x29, #64
    str d2, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    sub x14, x29, #48
    ldr d25, [x14]
    sub x14, x29, #64
    ldr d26, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    fmov d16, d26
    fmov d2, d16
    bl fma
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L17_1:
    adrp x0, .Ltext_17
    add x0, x0, :lo12:.Ltext_17
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_fma, .-lb_math_fma

    .p2align 2
    .globl lb_math_nextafter
    .type lb_math_nextafter, %function
lb_math_nextafter:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str d0, [x16]
    sub x16, x29, #48
    str d1, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    sub x14, x29, #48
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl nextafter
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L18_1:
    adrp x0, .Ltext_18
    add x0, x0, :lo12:.Ltext_18
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_nextafter, .-lb_math_nextafter

    .p2align 2
    .globl lb_math_7next_up
    .type lb_math_7next_up, %function
lb_math_7next_up:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    adrp x14, lb_math_infinity
    add x14, x14, :lo12:lb_math_infinity
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl nextafter
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L19_1:
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_7next_up, .-lb_math_7next_up

    .p2align 2
    .globl lb_math_9next_down
    .type lb_math_9next_down, %function
lb_math_9next_down:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    adrp x14, lb_math_infinity
    add x14, x14, :lo12:lb_math_infinity
    ldr d25, [x14]
    movz x9, #16368, lsl #48
    fmov d26, x9
    fneg d26, d26
    sub x10, x29, #48
    str d25, [x10]
    sub x10, x29, #64
    str d26, [x10]
    fmov x14, d25
    adrp x15, lb_math_14magnitude_mask
    add x15, x15, :lo12:lb_math_14magnitude_mask
    ldr x15, [x15]
    and x14, x14, x15
    fmov x15, d26
    adrp x12, lb_math_9sign_mask
    add x12, x12, :lo12:lb_math_9sign_mask
    ldr x12, [x12]
    and x15, x15, x12
    orr x14, x14, x15
    fmov d25, x14
    b .L20_3
.L20_2:
    adrp x0, .Ltext_40
    add x0, x0, :lo12:.Ltext_40
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L20_3:
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl nextafter
    fmov d26, d0
    fmov d16, d26
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L20_1:
    adrp x0, .Ltext_20
    add x0, x0, :lo12:.Ltext_20
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_9next_down, .-lb_math_9next_down

    .p2align 2
    .globl lb_math_frexp
    .type lb_math_frexp, %function
lb_math_frexp:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    sub x16, x29, #56
    str d0, [x16]
    sub x14, x29, #56
    ldr d24, [x14]
    mov x9, #0
    fmov d25, x9
    fcmp d24, d25
    cset w14, eq
    cbnz w14, .L21_10
    b .L21_4
.L21_10:
    mov w15, w14
    b .L21_5
.L21_4:
    sub x10, x29, #112
    str d24, [x10]
    fmov x14, d24
    adrp x15, lb_math_13exponent_mask
    add x15, x15, :lo12:lb_math_13exponent_mask
    ldr x15, [x15]
    and x14, x14, x15
    cmp x15, x14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #120
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
    sub x14, x29, #72
    str d24, [x14]
    add x15, x14, #8
    mov x9, #0
    str w9, [x15]
    sub x19, x29, #40
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L21_6:
    b .L21_3
.L21_2:
.L21_3:
    sub x19, x29, #76
    fmov d16, d24
    fmov d0, d16
    mov x0, x19
    bl frexp
    fmov d25, d0
    sub x14, x29, #96
    str d25, [x14]
    ldrsw x15, [x19]
    add x12, x14, #8
    str w15, [x12]
    sub x19, x29, #40
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L21_7:
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_frexp, .-lb_math_frexp

    .p2align 2
    .globl lb_math_scalbn
    .type lb_math_scalbn, %function
lb_math_scalbn:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str d0, [x16]
    sub x16, x29, #48
    str w0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    sub x14, x29, #48
    ldrsw x14, [x14]
    fmov d16, d24
    fmov d0, d16
    mov x0, x14
    bl scalbn
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L22_1:
    adrp x0, .Ltext_22
    add x0, x0, :lo12:.Ltext_22
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_scalbn, .-lb_math_scalbn

    .p2align 2
    .globl lb_math_modf
    .type lb_math_modf, %function
lb_math_modf:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    sub x16, x29, #56
    str d0, [x16]
    sub x14, x29, #56
    ldr d24, [x14]
    sub x19, x29, #64
    fmov d16, d24
    fmov d0, d16
    mov x0, x19
    bl modf
    fmov d24, d0
    sub x14, x29, #80
    str d24, [x14]
    ldr d24, [x19]
    add x15, x14, #8
    str d24, [x15]
    sub x19, x29, #40
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, x19
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L23_1:
    adrp x0, .Ltext_23
    add x0, x0, :lo12:.Ltext_23
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_modf, .-lb_math_modf

    .p2align 2
    .globl lb_math_remainder
    .type lb_math_remainder, %function
lb_math_remainder:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str d8, [sp, #72]
    sub x16, x29, #40
    str d0, [x16]
    sub x16, x29, #56
    str d1, [x16]
    sub x14, x29, #40
    ldr d8, [x14]
    sub x14, x29, #56
    ldr d24, [x14]
    fmov d16, d8
    fmov d0, d16
    fmov d16, d24
    fmov d1, d16
    bl remainder
    fmov d24, d0
    fmov x14, d24
    adrp x15, lb_math_14magnitude_mask
    add x15, x15, :lo12:lb_math_14magnitude_mask
    ldr x15, [x15]
    and x14, x14, x15
    mov x10, #0
    cmp x14, x10
    b.ne .L24_2
.L24_1:
    sub x10, x29, #72
    str d24, [x10]
    sub x10, x29, #88
    str d8, [x10]
    fmov x15, d8
    adrp x12, lb_math_9sign_mask
    add x12, x12, :lo12:lb_math_9sign_mask
    ldr x12, [x12]
    and x15, x15, x12
    orr x15, x14, x15
    fmov d25, x15
    b .L24_6
.L24_5:
    adrp x0, .Ltext_40
    add x0, x0, :lo12:.Ltext_40
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L24_6:
    fmov d24, d25
    b .L24_3
.L24_2:
.L24_3:
    fmov d16, d24
    fmov d0, d16
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

    .size lb_math_remainder, .-lb_math_remainder

    .p2align 2
    .globl lb_math_sin
    .type lb_math_sin, %function
lb_math_sin:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl sin
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L25_1:
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_sin, .-lb_math_sin

    .p2align 2
    .globl lb_math_cos
    .type lb_math_cos, %function
lb_math_cos:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl cos
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L26_1:
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_cos, .-lb_math_cos

    .p2align 2
    .globl lb_math_tan
    .type lb_math_tan, %function
lb_math_tan:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl tan
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L27_1:
    adrp x0, .Ltext_27
    add x0, x0, :lo12:.Ltext_27
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_tan, .-lb_math_tan

    .p2align 2
    .globl lb_math_asin
    .type lb_math_asin, %function
lb_math_asin:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl asin
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L28_1:
    adrp x0, .Ltext_28
    add x0, x0, :lo12:.Ltext_28
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_asin, .-lb_math_asin

    .p2align 2
    .globl lb_math_acos
    .type lb_math_acos, %function
lb_math_acos:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl acos
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L29_1:
    adrp x0, .Ltext_29
    add x0, x0, :lo12:.Ltext_29
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_acos, .-lb_math_acos

    .p2align 2
    .globl lb_math_atan
    .type lb_math_atan, %function
lb_math_atan:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl atan
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L30_1:
    adrp x0, .Ltext_30
    add x0, x0, :lo12:.Ltext_30
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_atan, .-lb_math_atan

    .p2align 2
    .globl lb_math_atan2
    .type lb_math_atan2, %function
lb_math_atan2:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str d0, [x16]
    sub x16, x29, #48
    str d1, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    sub x14, x29, #48
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl atan2
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L31_1:
    adrp x0, .Ltext_31
    add x0, x0, :lo12:.Ltext_31
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_atan2, .-lb_math_atan2

    .p2align 2
    .globl lb_math_sinh
    .type lb_math_sinh, %function
lb_math_sinh:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl sinh
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L32_1:
    adrp x0, .Ltext_32
    add x0, x0, :lo12:.Ltext_32
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_sinh, .-lb_math_sinh

    .p2align 2
    .globl lb_math_cosh
    .type lb_math_cosh, %function
lb_math_cosh:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl cosh
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L33_1:
    adrp x0, .Ltext_33
    add x0, x0, :lo12:.Ltext_33
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_cosh, .-lb_math_cosh

    .p2align 2
    .globl lb_math_tanh
    .type lb_math_tanh, %function
lb_math_tanh:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl tanh
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L34_1:
    adrp x0, .Ltext_34
    add x0, x0, :lo12:.Ltext_34
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_tanh, .-lb_math_tanh

    .p2align 2
    .globl lb_math_6is_nan
    .type lb_math_6is_nan, %function
lb_math_6is_nan:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov x14, d24
    adrp x15, lb_math_14magnitude_mask
    add x15, x15, :lo12:lb_math_14magnitude_mask
    ldr x15, [x15]
    and x14, x14, x15
    adrp x15, lb_math_13exponent_mask
    add x15, x15, :lo12:lb_math_13exponent_mask
    ldr x15, [x15]
    cmp x14, x15
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

    .size lb_math_6is_nan, .-lb_math_6is_nan

    .p2align 2
    .globl lb_math_9is_finite
    .type lb_math_9is_finite, %function
lb_math_9is_finite:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov x14, d24
    adrp x15, lb_math_13exponent_mask
    add x15, x15, :lo12:lb_math_13exponent_mask
    ldr x15, [x15]
    and x14, x14, x15
    cmp x15, x14
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

    .size lb_math_9is_finite, .-lb_math_9is_finite

    .p2align 2
    .globl lb_math_11is_infinite
    .type lb_math_11is_infinite, %function
lb_math_11is_infinite:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov x14, d24
    adrp x15, lb_math_14magnitude_mask
    add x15, x15, :lo12:lb_math_14magnitude_mask
    ldr x15, [x15]
    and x14, x14, x15
    adrp x15, lb_math_13exponent_mask
    add x15, x15, :lo12:lb_math_13exponent_mask
    ldr x15, [x15]
    cmp x14, x15
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

    .size lb_math_11is_infinite, .-lb_math_11is_infinite

    .p2align 2
    .globl lb_math_signbit
    .type lb_math_signbit, %function
lb_math_signbit:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov x14, d24
    adrp x15, lb_math_9sign_mask
    add x15, x15, :lo12:lb_math_9sign_mask
    ldr x15, [x15]
    and x14, x14, x15
    mov x10, #0
    cmp x14, x10
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

    .size lb_math_signbit, .-lb_math_signbit

    .p2align 2
    .globl lb_math_abs
    .type lb_math_abs, %function
lb_math_abs:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov x14, d24
    adrp x15, lb_math_14magnitude_mask
    add x15, x15, :lo12:lb_math_14magnitude_mask
    ldr x15, [x15]
    and x14, x14, x15
    fmov d24, x14
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L39_1:
    adrp x0, .Ltext_39
    add x0, x0, :lo12:.Ltext_39
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_abs, .-lb_math_abs

    .p2align 2
    .globl lb_math_copysign
    .type lb_math_copysign, %function
lb_math_copysign:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str d0, [x16]
    sub x16, x29, #48
    str d1, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov x14, d24
    adrp x15, lb_math_14magnitude_mask
    add x15, x15, :lo12:lb_math_14magnitude_mask
    ldr x15, [x15]
    and x14, x14, x15
    sub x15, x29, #48
    ldr d24, [x15]
    fmov x15, d24
    adrp x12, lb_math_9sign_mask
    add x12, x12, :lo12:lb_math_9sign_mask
    ldr x12, [x12]
    and x15, x15, x12
    orr x14, x14, x15
    fmov d24, x14
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L40_1:
    adrp x0, .Ltext_40
    add x0, x0, :lo12:.Ltext_40
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_copysign, .-lb_math_copysign

    .p2align 2
    .globl lb_math_sign
    .type lb_math_sign, %function
lb_math_sign:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    sub x10, x29, #48
    str d24, [x10]
    fmov x14, d24
    adrp x15, lb_math_14magnitude_mask
    add x15, x15, :lo12:lb_math_14magnitude_mask
    ldr x15, [x15]
    and x14, x14, x15
    adrp x15, lb_math_13exponent_mask
    add x15, x15, :lo12:lb_math_13exponent_mask
    ldr x15, [x15]
    cmp x14, x15
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
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L41_4:
    b .L41_3
.L41_2:
.L41_3:
    mov x9, #0
    fmov d25, x9
    fcmp d24, d25
    cset w14, mi
    cbnz w14, .L41_5
    b .L41_6
.L41_5:
    movz x9, #16368, lsl #48
    fmov d24, x9
    fneg d24, d24
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L41_8:
    b .L41_7
.L41_6:
.L41_7:
    fcmp d24, d25
    cset w14, gt
    cbnz w14, .L41_9
    b .L41_10
.L41_9:
    movz x9, #16368, lsl #48
    fmov d24, x9
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L41_12:
    b .L41_11
.L41_10:
.L41_11:
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L41_13:
    adrp x0, .Ltext_41
    add x0, x0, :lo12:.Ltext_41
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_sign, .-lb_math_sign

    .p2align 2
    .globl lb_math_min
    .type lb_math_min, %function
lb_math_min:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    sub x16, x29, #40
    str d0, [x16]
    sub x16, x29, #56
    str d1, [x16]
    sub x14, x29, #40
    ldr d24, [x14]
    sub x10, x29, #72
    str d24, [x10]
    fmov x14, d24
    adrp x15, lb_math_14magnitude_mask
    add x15, x15, :lo12:lb_math_14magnitude_mask
    ldr x15, [x15]
    and x12, x14, x15
    adrp x13, lb_math_13exponent_mask
    add x13, x13, :lo12:lb_math_13exponent_mask
    ldr x13, [x13]
    cmp x12, x13
    cset w12, hi
    and w12, w12, #255
    sub x10, x29, #80
    str w12, [x10]
    b .L42_20
.L42_19:
    adrp x0, .Ltext_35
    add x0, x0, :lo12:.Ltext_35
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L42_20:
    cbnz w12, .L42_1
    b .L42_2
.L42_1:
    fmov d16, d24
    fmov d0, d16
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L42_4:
    b .L42_3
.L42_2:
.L42_3:
    sub x12, x29, #56
    ldr d25, [x12]
    sub x10, x29, #72
    str d25, [x10]
    fmov x12, d25
    and x19, x15, x12
    cmp x19, x13
    cset w19, hi
    and w19, w19, #255
    sub x10, x29, #88
    str w19, [x10]
    b .L42_22
.L42_21:
    adrp x0, .Ltext_35
    add x0, x0, :lo12:.Ltext_35
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L42_22:
    cbnz w19, .L42_5
    b .L42_6
.L42_5:
    fmov d16, d25
    fmov d0, d16
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L42_8:
    b .L42_7
.L42_6:
.L42_7:
    mov x9, #0
    fmov d26, x9
    fcmp d24, d26
    cset w15, eq
    cbnz w15, .L42_12
    b .L42_23
.L42_23:
    mov w13, w15
    b .L42_13
.L42_12:
    fcmp d25, d26
    cset w13, eq
.L42_13:
    and w15, w13, #255
    cbnz w15, .L42_9
    b .L42_10
.L42_9:
    orr x15, x14, x12
    fmov d24, x15
    fmov d16, d24
    fmov d0, d16
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L42_14:
    b .L42_11
.L42_10:
.L42_11:
    fcmp d24, d25
    cset w14, mi
    cbnz w14, .L42_15
    b .L42_16
.L42_15:
    fmov d25, d24
    b .L42_17
.L42_16:
.L42_17:
    fmov d16, d25
    fmov d0, d16
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L42_18:
    adrp x0, .Ltext_42
    add x0, x0, :lo12:.Ltext_42
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_min, .-lb_math_min

    .p2align 2
    .globl lb_math_max
    .type lb_math_max, %function
lb_math_max:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    sub x16, x29, #40
    str d0, [x16]
    sub x16, x29, #56
    str d1, [x16]
    sub x14, x29, #40
    ldr d24, [x14]
    sub x10, x29, #72
    str d24, [x10]
    fmov x14, d24
    adrp x15, lb_math_14magnitude_mask
    add x15, x15, :lo12:lb_math_14magnitude_mask
    ldr x15, [x15]
    and x12, x14, x15
    adrp x13, lb_math_13exponent_mask
    add x13, x13, :lo12:lb_math_13exponent_mask
    ldr x13, [x13]
    cmp x12, x13
    cset w12, hi
    and w12, w12, #255
    sub x10, x29, #80
    str w12, [x10]
    b .L43_20
.L43_19:
    adrp x0, .Ltext_35
    add x0, x0, :lo12:.Ltext_35
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L43_20:
    cbnz w12, .L43_1
    b .L43_2
.L43_1:
    fmov d16, d24
    fmov d0, d16
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L43_4:
    b .L43_3
.L43_2:
.L43_3:
    sub x12, x29, #56
    ldr d25, [x12]
    sub x10, x29, #72
    str d25, [x10]
    fmov x12, d25
    and x19, x15, x12
    cmp x19, x13
    cset w19, hi
    and w19, w19, #255
    sub x10, x29, #88
    str w19, [x10]
    b .L43_22
.L43_21:
    adrp x0, .Ltext_35
    add x0, x0, :lo12:.Ltext_35
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L43_22:
    cbnz w19, .L43_5
    b .L43_6
.L43_5:
    fmov d16, d25
    fmov d0, d16
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L43_8:
    b .L43_7
.L43_6:
.L43_7:
    mov x9, #0
    fmov d26, x9
    fcmp d24, d26
    cset w15, eq
    cbnz w15, .L43_12
    b .L43_23
.L43_23:
    mov w13, w15
    b .L43_13
.L43_12:
    fcmp d25, d26
    cset w13, eq
.L43_13:
    and w15, w13, #255
    cbnz w15, .L43_9
    b .L43_10
.L43_9:
    and x15, x14, x12
    fmov d24, x15
    fmov d16, d24
    fmov d0, d16
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L43_14:
    b .L43_11
.L43_10:
.L43_11:
    fcmp d24, d25
    cset w14, gt
    cbnz w14, .L43_15
    b .L43_16
.L43_15:
    fmov d25, d24
    b .L43_17
.L43_16:
.L43_17:
    fmov d16, d25
    fmov d0, d16
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L43_18:
    adrp x0, .Ltext_43
    add x0, x0, :lo12:.Ltext_43
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_max, .-lb_math_max

    .p2align 2
    .globl lb_math_clamp
    .type lb_math_clamp, %function
lb_math_clamp:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    sub x16, x29, #32
    str d0, [x16]
    sub x16, x29, #48
    str d1, [x16]
    sub x16, x29, #64
    str d2, [x16]
    sub x14, x29, #48
    ldr d24, [x14]
    sub x14, x29, #64
    ldr d25, [x14]
    fcmp d24, d25
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
    ldr d26, [x14]
    sub x10, x29, #80
    str d26, [x10]
    fmov x14, d26
    adrp x15, lb_math_14magnitude_mask
    add x15, x15, :lo12:lb_math_14magnitude_mask
    ldr x15, [x15]
    and x14, x14, x15
    adrp x15, lb_math_13exponent_mask
    add x15, x15, :lo12:lb_math_13exponent_mask
    ldr x15, [x15]
    cmp x14, x15
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
    fmov d16, d26
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L44_6:
    b .L44_5
.L44_4:
.L44_5:
    fcmp d26, d24
    cset w14, mi
    cbnz w14, .L44_7
    b .L44_8
.L44_7:
    fmov d25, d24
    b .L44_9
.L44_8:
    fcmp d26, d25
    cset w14, gt
    cbnz w14, .L44_10
    b .L44_11
.L44_10:
    fmov d24, d25
    b .L44_12
.L44_11:
    fmov d24, d26
.L44_12:
    fmov d25, d24
.L44_9:
    fmov d16, d25
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L44_13:
    adrp x0, .Ltext_46
    add x0, x0, :lo12:.Ltext_46
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_clamp, .-lb_math_clamp

    .p2align 2
    .globl lb_math_9div_floor
    .type lb_math_9div_floor, %function
lb_math_9div_floor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x14, x29, #40
    ldr x15, [x14]
    sub x14, x29, #56
    ldr x12, [x14]
    mov x10, #0
    cmp x12, x10
    cset w14, eq
    cbnz w14, .L45_1
    b .L45_2
.L45_1:
    adrp x0, .Ltext_48
    add x0, x0, :lo12:.Ltext_48
    adrp x1, .Ltext_47
    add x1, x1, :lo12:.Ltext_47
    bl lb_core_7trap_at
.L45_2:
    movz x10, #32768, lsl #48
    cmp x15, x10
    cset w13, eq
    movn x10, #0
    cmp x12, x10
    cset w19, eq
    and w13, w13, w19
    cbnz w13, .L45_3
    b .L45_4
.L45_3:
    adrp x0, .Ltext_48
    add x0, x0, :lo12:.Ltext_48
    adrp x1, .Ltext_49
    add x1, x1, :lo12:.Ltext_49
    bl lb_core_7trap_at
.L45_4:
    sdiv x19, x15, x12
    cbnz w14, .L45_8
    b .L45_9
.L45_8:
    adrp x0, .Ltext_50
    add x0, x0, :lo12:.Ltext_50
    adrp x1, .Ltext_47
    add x1, x1, :lo12:.Ltext_47
    bl lb_core_7trap_at
.L45_9:
    cbnz w13, .L45_10
    b .L45_11
.L45_10:
    adrp x0, .Ltext_50
    add x0, x0, :lo12:.Ltext_50
    adrp x1, .Ltext_49
    add x1, x1, :lo12:.Ltext_49
    bl lb_core_7trap_at
.L45_11:
    sdiv x11, x15, x12
    msub x14, x11, x12, x15
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L45_12
    b .L45_16
.L45_16:
    mov w15, w14
    b .L45_13
.L45_12:
    mov x10, #0
    cmp x15, x10
    cset w14, lt
    mov x10, #0
    cmp x12, x10
    cset w13, lt
    cmp w14, w13
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov w15, w14
.L45_13:
    and w14, w15, #255
    cbnz w14, .L45_5
    b .L45_6
.L45_5:
    mov x9, x19
    movz x10, #1
    subs x9, x9, x10
    b.vc 1f
    adrp x0, .Ltext_51
    add x0, x0, :lo12:.Ltext_51
    adrp x1, .Ltext_49
    add x1, x1, :lo12:.Ltext_49
    bl lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L45_14:
    b .L45_7
.L45_6:
.L45_7:
    mov x9, x19
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L45_15:
    adrp x0, .Ltext_52
    add x0, x0, :lo12:.Ltext_52
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_9div_floor, .-lb_math_9div_floor

    .p2align 2
    .globl lb_math_9mod_floor
    .type lb_math_9mod_floor, %function
lb_math_9mod_floor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x14, x29, #48
    ldr x14, [x14]
    movn x10, #0
    cmp x14, x10
    cset w15, eq
    cbnz w15, .L46_1
    b .L46_2
.L46_1:
    mov x9, #0
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L46_4:
    b .L46_3
.L46_2:
.L46_3:
    sub x12, x29, #32
    ldr x13, [x12]
    mov x10, #0
    cmp x14, x10
    b.ne .L46_6
.L46_5:
    adrp x0, .Ltext_53
    add x0, x0, :lo12:.Ltext_53
    adrp x1, .Ltext_47
    add x1, x1, :lo12:.Ltext_47
    bl lb_core_7trap_at
.L46_6:
    movz x10, #32768, lsl #48
    cmp x13, x10
    cset w12, eq
    and w12, w15, w12
    cbnz w12, .L46_7
    b .L46_8
.L46_7:
    adrp x0, .Ltext_53
    add x0, x0, :lo12:.Ltext_53
    adrp x1, .Ltext_49
    add x1, x1, :lo12:.Ltext_49
    bl lb_core_7trap_at
.L46_8:
    sdiv x11, x13, x14
    msub x15, x11, x14, x13
    mov x10, #0
    cmp x15, x10
    cset w12, eq
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    cbnz w12, .L46_12
    b .L46_16
.L46_16:
    mov w13, w12
    b .L46_13
.L46_12:
    mov x10, #0
    cmp x15, x10
    cset w12, lt
    mov x10, #0
    cmp x14, x10
    cset w13, lt
    cmp w12, w13
    cset w12, eq
    mov x10, #0
    cmp w12, w10
    cset w13, eq
.L46_13:
    and w12, w13, #255
    cbnz w12, .L46_9
    b .L46_10
.L46_9:
    mov x9, x14
    mov x10, x15
    adds x9, x9, x10
    b.vc 1f
    adrp x0, .Ltext_54
    add x0, x0, :lo12:.Ltext_54
    adrp x1, .Ltext_49
    add x1, x1, :lo12:.Ltext_49
    bl lb_core_7trap_at
1:
    mov x12, x9
    mov x9, x12
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L46_14:
    b .L46_11
.L46_10:
.L46_11:
    mov x9, x15
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L46_15:
    adrp x0, .Ltext_55
    add x0, x0, :lo12:.Ltext_55
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_9mod_floor, .-lb_math_9mod_floor

    .p2align 2
    .globl lb_math_iabs
    .type lb_math_iabs, %function
lb_math_iabs:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ge .L47_2
.L47_1:
    mov x9, #0
    mov x10, x14
    subs x9, x9, x10
    b.vc 1f
    adrp x0, .Ltext_56
    add x0, x0, :lo12:.Ltext_56
    adrp x1, .Ltext_49
    add x1, x1, :lo12:.Ltext_49
    bl lb_core_7trap_at
1:
    mov x15, x9
    b .L47_3
.L47_2:
    mov x15, x14
.L47_3:
    mov x9, x15
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L47_4:
    adrp x0, .Ltext_56
    add x0, x0, :lo12:.Ltext_56
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_iabs, .-lb_math_iabs

    .p2align 2
    .globl lb_math_12checked_iabs
    .type lb_math_12checked_iabs, %function
lb_math_12checked_iabs:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    sub x16, x29, #56
    str x0, [x16]
    sub x14, x29, #56
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ge .L48_2
.L48_1:
    sub x19, x29, #64
    mov x0, #0
    mov x1, x14
    movz x2, #64
    mov x3, x19
    bl lb_core_6qsub_s
    mov w15, w0
    sub x12, x29, #80
    ldr x13, [x19]
    str x13, [x12]
    add x13, x12, #8
    strb w15, [x13]
    sub x19, x29, #40
    mov x10, x12
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L48_4:
    b .L48_3
.L48_2:
.L48_3:
    sub x15, x29, #96
    str x14, [x15]
    add x12, x15, #8
    movz x9, #1
    strb w9, [x12]
    sub x19, x29, #40
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L48_5:
    adrp x0, .Ltext_57
    add x0, x0, :lo12:.Ltext_57
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_12checked_iabs, .-lb_math_12checked_iabs

    .p2align 2
    .globl lb_math_17checked_div_floor
    .type lb_math_17checked_div_floor, %function
lb_math_17checked_div_floor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    sub x16, x29, #64
    str x0, [x16]
    sub x16, x29, #80
    str x1, [x16]
    sub x14, x29, #80
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
    cbnz w15, .L49_10
    b .L49_4
.L49_10:
    mov w12, w15
    b .L49_5
.L49_4:
    sub x15, x29, #64
    ldr x15, [x15]
    movz x10, #32768, lsl #48
    cmp x15, x10
    cset w15, eq
    cbnz w15, .L49_6
    b .L49_11
.L49_11:
    mov w12, w15
    b .L49_7
.L49_6:
    movn x10, #0
    cmp x14, x10
    cset w12, eq
.L49_7:
    and w15, w12, #255
    mov w12, w15
.L49_5:
    and w15, w12, #255
    cbnz w15, .L49_1
    b .L49_2
.L49_1:
    sub x19, x29, #96
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #48
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L49_8:
    b .L49_3
.L49_2:
.L49_3:
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x15
    mov x1, x14
    bl lb_math_9div_floor
    mov x15, x0
    sub x12, x29, #112
    str x15, [x12]
    add x15, x12, #8
    movz x9, #1
    strb w9, [x15]
    sub x19, x29, #48
    mov x10, x12
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L49_9:
    adrp x0, .Ltext_58
    add x0, x0, :lo12:.Ltext_58
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_17checked_div_floor, .-lb_math_17checked_div_floor

    .p2align 2
    .globl lb_math_17checked_mod_floor
    .type lb_math_17checked_mod_floor, %function
lb_math_17checked_mod_floor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    sub x16, x29, #64
    str x0, [x16]
    sub x16, x29, #80
    str x1, [x16]
    sub x14, x29, #80
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ne .L50_2
.L50_1:
    sub x19, x29, #96
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #48
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L50_4:
    b .L50_3
.L50_2:
.L50_3:
    movn x10, #0
    cmp x14, x10
    b.ne .L50_6
.L50_5:
    sub x14, x29, #112
    mov x9, #0
    str x9, [x14]
    add x15, x14, #8
    movz x9, #1
    strb w9, [x15]
    sub x19, x29, #48
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L50_8:
    b .L50_7
.L50_6:
.L50_7:
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x15
    mov x1, x14
    bl lb_math_9mod_floor
    mov x15, x0
    sub x12, x29, #128
    str x15, [x12]
    add x15, x12, #8
    movz x9, #1
    strb w9, [x15]
    sub x19, x29, #48
    mov x10, x12
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L50_9:
    adrp x0, .Ltext_59
    add x0, x0, :lo12:.Ltext_59
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_17checked_mod_floor, .-lb_math_17checked_mod_floor

    .p2align 2
    .globl lb_math_imin
    .type lb_math_imin, %function
lb_math_imin:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    sub x15, x29, #48
    ldr x15, [x15]
    cmp x14, x15
    b.ge .L51_2
.L51_1:
    mov x15, x14
    b .L51_3
.L51_2:
.L51_3:
    mov x9, x15
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L51_4:
    adrp x0, .Ltext_60
    add x0, x0, :lo12:.Ltext_60
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_imin, .-lb_math_imin

    .p2align 2
    .globl lb_math_imax
    .type lb_math_imax, %function
lb_math_imax:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    sub x15, x29, #48
    ldr x15, [x15]
    cmp x14, x15
    b.le .L52_2
.L52_1:
    mov x15, x14
    b .L52_3
.L52_2:
.L52_3:
    mov x9, x15
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L52_4:
    adrp x0, .Ltext_61
    add x0, x0, :lo12:.Ltext_61
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_imax, .-lb_math_imax

    .p2align 2
    .globl lb_math_iclamp
    .type lb_math_iclamp, %function
lb_math_iclamp:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x16, x29, #64
    str x2, [x16]
    sub x14, x29, #48
    ldr x14, [x14]
    sub x15, x29, #64
    ldr x15, [x15]
    cmp x14, x15
    b.le .L53_1
.L53_2:
    adrp x0, .Ltext_62
    add x0, x0, :lo12:.Ltext_62
    adrp x1, .Ltext_44
    add x1, x1, :lo12:.Ltext_44
    bl lb_core_7trap_at
.L53_1:
    sub x12, x29, #32
    ldr x12, [x12]
    cmp x12, x14
    b.ge .L53_4
.L53_3:
    mov x15, x14
    b .L53_5
.L53_4:
    cmp x12, x15
    b.le .L53_7
.L53_6:
    mov x14, x15
    b .L53_8
.L53_7:
    mov x14, x12
.L53_8:
    mov x15, x14
.L53_5:
    mov x9, x15
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L53_9:
    adrp x0, .Ltext_63
    add x0, x0, :lo12:.Ltext_63
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_math_iclamp, .-lb_math_iclamp

    .section .init_array,"aw"
    .p2align 3
    .quad lb_math_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/math.lucb:50:5"
.Ltext_2:
    .asciz "src/std/math.lucb:53:5"
.Ltext_3:
    .asciz "src/std/math.lucb:56:5"
.Ltext_4:
    .asciz "src/std/math.lucb:59:5"
.Ltext_5:
    .asciz "src/std/math.lucb:62:5"
.Ltext_6:
    .asciz "src/std/math.lucb:65:5"
.Ltext_7:
    .asciz "src/std/math.lucb:69:5"
.Ltext_8:
    .asciz "src/std/math.lucb:73:5"
.Ltext_9:
    .asciz "src/std/math.lucb:76:5"
.Ltext_10:
    .asciz "src/std/math.lucb:79:5"
.Ltext_11:
    .asciz "src/std/math.lucb:82:5"
.Ltext_12:
    .asciz "src/std/math.lucb:85:5"
.Ltext_13:
    .asciz "src/std/math.lucb:88:5"
.Ltext_14:
    .asciz "src/std/math.lucb:91:5"
.Ltext_15:
    .asciz "src/std/math.lucb:96:5"
.Ltext_16:
    .asciz "src/std/math.lucb:104:5"
.Ltext_17:
    .asciz "src/std/math.lucb:109:5"
.Ltext_18:
    .asciz "src/std/math.lucb:114:5"
.Ltext_19:
    .asciz "src/std/math.lucb:119:5"
.Ltext_20:
    .asciz "src/std/math.lucb:124:5"
.Ltext_21:
    .asciz "src/std/math.lucb:132:5"
.Ltext_22:
    .asciz "src/std/math.lucb:137:5"
.Ltext_23:
    .asciz "src/std/math.lucb:142:5"
.Ltext_24:
    .asciz "src/std/math.lucb:151:5"
.Ltext_25:
    .asciz "src/std/math.lucb:154:5"
.Ltext_26:
    .asciz "src/std/math.lucb:157:5"
.Ltext_27:
    .asciz "src/std/math.lucb:160:5"
.Ltext_28:
    .asciz "src/std/math.lucb:163:5"
.Ltext_29:
    .asciz "src/std/math.lucb:166:5"
.Ltext_30:
    .asciz "src/std/math.lucb:169:5"
.Ltext_31:
    .asciz "src/std/math.lucb:173:5"
.Ltext_32:
    .asciz "src/std/math.lucb:176:5"
.Ltext_33:
    .asciz "src/std/math.lucb:179:5"
.Ltext_34:
    .asciz "src/std/math.lucb:182:5"
.Ltext_35:
    .asciz "src/std/math.lucb:186:5"
.Ltext_36:
    .asciz "src/std/math.lucb:191:5"
.Ltext_37:
    .asciz "src/std/math.lucb:195:5"
.Ltext_38:
    .asciz "src/std/math.lucb:199:5"
.Ltext_39:
    .asciz "src/std/math.lucb:203:5"
.Ltext_40:
    .asciz "src/std/math.lucb:207:5"
.Ltext_41:
    .asciz "src/std/math.lucb:217:5"
.Ltext_42:
    .asciz "src/std/math.lucb:228:5"
.Ltext_43:
    .asciz "src/std/math.lucb:239:5"
.Ltext_44:
    .asciz "assert failed: low <= high"
.Ltext_45:
    .asciz "src/std/math.lucb:244:5"
.Ltext_46:
    .asciz "src/std/math.lucb:247:5"
.Ltext_47:
    .asciz "division by zero"
.Ltext_48:
    .asciz "src/std/math.lucb:252:5"
.Ltext_49:
    .asciz "integer overflow"
.Ltext_50:
    .asciz "src/std/math.lucb:253:5"
.Ltext_51:
    .asciz "src/std/math.lucb:254:9"
.Ltext_52:
    .asciz "src/std/math.lucb:255:5"
.Ltext_53:
    .asciz "src/std/math.lucb:260:5"
.Ltext_54:
    .asciz "src/std/math.lucb:262:9"
.Ltext_55:
    .asciz "src/std/math.lucb:263:5"
.Ltext_56:
    .asciz "src/std/math.lucb:266:5"
.Ltext_57:
    .asciz "src/std/math.lucb:272:5"
.Ltext_58:
    .asciz "src/std/math.lucb:278:5"
.Ltext_59:
    .asciz "src/std/math.lucb:287:5"
.Ltext_60:
    .asciz "src/std/math.lucb:290:5"
.Ltext_61:
    .asciz "src/std/math.lucb:293:5"
.Ltext_62:
    .asciz "src/std/math.lucb:297:5"
.Ltext_63:
    .asciz "src/std/math.lucb:298:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_math_pi
    .type lb_math_pi, %object
    .p2align 3
lb_math_pi:
    .zero 8

    .bss
    .globl lb_math_tau
    .type lb_math_tau, %object
    .p2align 3
lb_math_tau:
    .zero 8

    .bss
    .globl lb_math_e
    .type lb_math_e, %object
    .p2align 3
lb_math_e:
    .zero 8

    .bss
    .globl lb_math_infinity
    .type lb_math_infinity, %object
    .p2align 3
lb_math_infinity:
    .zero 8

    .bss
    .globl lb_math_nan
    .type lb_math_nan, %object
    .p2align 3
lb_math_nan:
    .zero 8

    .bss
    .globl lb_math_9sign_mask
    .type lb_math_9sign_mask, %object
    .p2align 3
lb_math_9sign_mask:
    .zero 8

    .bss
    .globl lb_math_14magnitude_mask
    .type lb_math_14magnitude_mask, %object
    .p2align 3
lb_math_14magnitude_mask:
    .zero 8

    .bss
    .globl lb_math_13exponent_mask
    .type lb_math_13exponent_mask, %object
    .p2align 3
lb_math_13exponent_mask:
    .zero 8


    .section .note.GNU-stack,"",%progbits
