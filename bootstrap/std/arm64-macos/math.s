    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_math_0init
_lb_math_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    movz x9, #11544
    movk x9, #21572, lsl #16
    movk x9, #8699, lsl #32
    movk x9, #16393, lsl #48
    fmov d24, x9
    adrp x14, _lb_math_pi@PAGE
    add x14, x14, _lb_math_pi@PAGEOFF
    str d24, [x14]
    movz x9, #11544
    movk x9, #21572, lsl #16
    movk x9, #8699, lsl #32
    movk x9, #16409, lsl #48
    fmov d24, x9
    adrp x14, _lb_math_tau@PAGE
    add x14, x14, _lb_math_tau@PAGEOFF
    str d24, [x14]
    movz x9, #22377
    movk x9, #35604, lsl #16
    movk x9, #48906, lsl #32
    movk x9, #16389, lsl #48
    fmov d24, x9
    adrp x14, _lb_math_e@PAGE
    add x14, x14, _lb_math_e@PAGEOFF
    str d24, [x14]
    movz x9, #32752, lsl #48
    fmov d24, x9
    adrp x14, _lb_math_infinity@PAGE
    add x14, x14, _lb_math_infinity@PAGEOFF
    str d24, [x14]
    movz x9, #32760, lsl #48
    fmov d24, x9
    adrp x14, _lb_math_nan@PAGE
    add x14, x14, _lb_math_nan@PAGEOFF
    str d24, [x14]
    adrp x14, _lb_math_9sign_mask@PAGE
    add x14, x14, _lb_math_9sign_mask@PAGEOFF
    movz x9, #32768, lsl #48
    str x9, [x14]
    adrp x14, _lb_math_14magnitude_mask@PAGE
    add x14, x14, _lb_math_14magnitude_mask@PAGEOFF
    movz x9, #65535
    movk x9, #65535, lsl #16
    movk x9, #65535, lsl #32
    movk x9, #32767, lsl #48
    str x9, [x14]
    adrp x14, _lb_math_13exponent_mask@PAGE
    add x14, x14, _lb_math_13exponent_mask@PAGEOFF
    movz x9, #32752, lsl #48
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_math_floor
_lb_math_floor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl _floor
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_1:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_ceil
_lb_math_ceil:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl _ceil
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_1:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_round
_lb_math_round:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl _round
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_1:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_trunc
_lb_math_trunc:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl _trunc
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_1:
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_sqrt
_lb_math_sqrt:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl _sqrt
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_1:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_cbrt
_lb_math_cbrt:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl _cbrt
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_1:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_hypot
_lb_math_hypot:
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
    bl _hypot
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_1:
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_mod
_lb_math_mod:
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
    bl _fmod
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_1:
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_pow
_lb_math_pow:
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
    bl _pow
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_1:
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_exp
_lb_math_exp:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl _exp
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_1:
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_exp2
_lb_math_exp2:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl _exp2
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_1:
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_log
_lb_math_log:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl _log
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_1:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_log2
_lb_math_log2:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl _log2
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_1:
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_log10
_lb_math_log10:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl _log10
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_1:
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_log1p
_lb_math_log1p:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl _log1p
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L15_1:
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_expm1
_lb_math_expm1:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str d0, [x16]
    sub x14, x29, #40
    ldr d24, [x14]
    fmov x14, d24
    adrp x15, _lb_math_9sign_mask@PAGE
    add x15, x15, _lb_math_9sign_mask@PAGEOFF
    ldr x15, [x15]
    adrp x19, _lb_math_13exponent_mask@PAGE
    add x19, x19, _lb_math_13exponent_mask@PAGEOFF
    ldr x19, [x19]
    orr x15, x15, x19
    cmp x14, x15
    b.ne L16_2
L16_1:
    movz x9, #16368, lsl #48
    fmov d24, x9
    fneg d24, d24
    fmov d16, d24
    fmov d0, d16
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_4:
    b L16_3
L16_2:
L16_3:
    fmov d16, d24
    fmov d0, d16
    bl _expm1
    fmov d25, d0
    fmov d16, d25
    fmov d0, d16
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_5:
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_fma
_lb_math_fma:
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
    bl _fma
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_1:
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_nextafter
_lb_math_nextafter:
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
    bl _nextafter
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L18_1:
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_7next_up
_lb_math_7next_up:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    adrp x14, _lb_math_infinity@PAGE
    add x14, x14, _lb_math_infinity@PAGEOFF
    ldr d25, [x14]
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl _nextafter
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_1:
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_9next_down
_lb_math_9next_down:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    sub x16, x29, #40
    str d0, [x16]
    sub x14, x29, #40
    ldr d24, [x14]
    adrp x14, _lb_math_infinity@PAGE
    add x14, x14, _lb_math_infinity@PAGEOFF
    ldr d25, [x14]
    movz x9, #16368, lsl #48
    fmov d26, x9
    fneg d26, d26
    sub x10, x29, #56
    str d25, [x10]
    sub x10, x29, #72
    str d26, [x10]
    fmov x14, d25
    adrp x15, _lb_math_14magnitude_mask@PAGE
    add x15, x15, _lb_math_14magnitude_mask@PAGEOFF
    ldr x15, [x15]
    and x14, x14, x15
    fmov x15, d26
    adrp x19, _lb_math_9sign_mask@PAGE
    add x19, x19, _lb_math_9sign_mask@PAGEOFF
    ldr x19, [x19]
    and x15, x15, x19
    orr x14, x14, x15
    fmov d25, x14
    b L20_3
L20_2:
    adrp x0, l_text_40@PAGE
    add x0, x0, l_text_40@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L20_3:
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    bl _nextafter
    fmov d26, d0
    fmov d16, d26
    fmov d0, d16
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L20_1:
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_frexp
_lb_math_frexp:
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
    cbnz w14, L21_10
    b L21_4
L21_10:
    mov w15, w14
    b L21_5
L21_4:
    sub x10, x29, #112
    str d24, [x10]
    fmov x14, d24
    adrp x15, _lb_math_13exponent_mask@PAGE
    add x15, x15, _lb_math_13exponent_mask@PAGEOFF
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
    b L21_9
L21_8:
    adrp x0, l_text_36@PAGE
    add x0, x0, l_text_36@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L21_9:
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L21_5:
    and w14, w15, #255
    cbnz w14, L21_1
    b L21_2
L21_1:
    sub x14, x29, #72
    str d24, [x14]
    add x15, x14, #8
    mov x9, #0
    str w9, [x15]
    sub x19, x29, #40
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L21_6:
    b L21_3
L21_2:
L21_3:
    sub x19, x29, #76
    fmov d16, d24
    fmov d0, d16
    mov x0, x19
    bl _frexp
    fmov d25, d0
    sub x14, x29, #96
    str d25, [x14]
    ldrsw x15, [x19]
    add x19, x14, #8
    str w15, [x19]
    sub x19, x29, #40
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L21_7:
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_scalbn
_lb_math_scalbn:
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
    bl _scalbn
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L22_1:
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_modf
_lb_math_modf:
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
    bl _modf
    fmov d24, d0
    sub x14, x29, #80
    str d24, [x14]
    ldr d24, [x19]
    add x15, x14, #8
    str d24, [x15]
    sub x19, x29, #40
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x19
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L23_1:
    adrp x0, l_text_23@PAGE
    add x0, x0, l_text_23@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_remainder
_lb_math_remainder:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str d8, [sp, #64]
    sub x16, x29, #48
    str d0, [x16]
    sub x16, x29, #64
    str d1, [x16]
    sub x14, x29, #48
    ldr d8, [x14]
    sub x14, x29, #64
    ldr d24, [x14]
    fmov d16, d8
    fmov d0, d16
    fmov d16, d24
    fmov d1, d16
    bl _remainder
    fmov d24, d0
    fmov x14, d24
    adrp x15, _lb_math_14magnitude_mask@PAGE
    add x15, x15, _lb_math_14magnitude_mask@PAGEOFF
    ldr x15, [x15]
    and x14, x14, x15
    mov x10, #0
    cmp x14, x10
    b.ne L24_2
L24_1:
    sub x10, x29, #80
    str d24, [x10]
    sub x10, x29, #96
    str d8, [x10]
    fmov x15, d8
    adrp x19, _lb_math_9sign_mask@PAGE
    add x19, x19, _lb_math_9sign_mask@PAGEOFF
    ldr x19, [x19]
    and x15, x15, x19
    orr x15, x14, x15
    fmov d25, x15
    b L24_6
L24_5:
    adrp x0, l_text_40@PAGE
    add x0, x0, l_text_40@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L24_6:
    fmov d24, d25
    b L24_3
L24_2:
L24_3:
    fmov d16, d24
    fmov d0, d16
    ldr x19, [sp, #72]
    ldr d8, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L24_4:
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_sin
_lb_math_sin:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl _sin
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L25_1:
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_cos
_lb_math_cos:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl _cos
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L26_1:
    adrp x0, l_text_26@PAGE
    add x0, x0, l_text_26@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_tan
_lb_math_tan:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl _tan
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L27_1:
    adrp x0, l_text_27@PAGE
    add x0, x0, l_text_27@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_asin
_lb_math_asin:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl _asin
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L28_1:
    adrp x0, l_text_28@PAGE
    add x0, x0, l_text_28@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_acos
_lb_math_acos:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl _acos
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L29_1:
    adrp x0, l_text_29@PAGE
    add x0, x0, l_text_29@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_atan
_lb_math_atan:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl _atan
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L30_1:
    adrp x0, l_text_30@PAGE
    add x0, x0, l_text_30@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_atan2
_lb_math_atan2:
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
    bl _atan2
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L31_1:
    adrp x0, l_text_31@PAGE
    add x0, x0, l_text_31@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_sinh
_lb_math_sinh:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl _sinh
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L32_1:
    adrp x0, l_text_32@PAGE
    add x0, x0, l_text_32@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_cosh
_lb_math_cosh:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl _cosh
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L33_1:
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_tanh
_lb_math_tanh:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    bl _tanh
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L34_1:
    adrp x0, l_text_34@PAGE
    add x0, x0, l_text_34@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_11is_infinite
_lb_math_11is_infinite:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov x14, d24
    adrp x15, _lb_math_14magnitude_mask@PAGE
    add x15, x15, _lb_math_14magnitude_mask@PAGEOFF
    ldr x15, [x15]
    and x14, x14, x15
    adrp x15, _lb_math_13exponent_mask@PAGE
    add x15, x15, _lb_math_13exponent_mask@PAGEOFF
    ldr x15, [x15]
    cmp x14, x15
    cset w14, eq
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L35_1:
    adrp x0, l_text_37@PAGE
    add x0, x0, l_text_37@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_signbit
_lb_math_signbit:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov x14, d24
    adrp x15, _lb_math_9sign_mask@PAGE
    add x15, x15, _lb_math_9sign_mask@PAGEOFF
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
L36_1:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_abs
_lb_math_abs:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str d0, [x16]
    sub x14, x29, #32
    ldr d24, [x14]
    fmov x14, d24
    adrp x15, _lb_math_14magnitude_mask@PAGE
    add x15, x15, _lb_math_14magnitude_mask@PAGEOFF
    ldr x15, [x15]
    and x14, x14, x15
    fmov d24, x14
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L37_1:
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_sign
_lb_math_sign:
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
    adrp x15, _lb_math_14magnitude_mask@PAGE
    add x15, x15, _lb_math_14magnitude_mask@PAGEOFF
    ldr x15, [x15]
    and x14, x14, x15
    adrp x15, _lb_math_13exponent_mask@PAGE
    add x15, x15, _lb_math_13exponent_mask@PAGEOFF
    ldr x15, [x15]
    cmp x14, x15
    cset w14, hi
    and w14, w14, #255
    sub x10, x29, #56
    str w14, [x10]
    b L38_15
L38_14:
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L38_15:
    cbnz w14, L38_1
    b L38_2
L38_1:
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L38_4:
    b L38_3
L38_2:
L38_3:
    mov x9, #0
    fmov d25, x9
    fcmp d24, d25
    cset w14, mi
    cbnz w14, L38_5
    b L38_6
L38_5:
    movz x9, #16368, lsl #48
    fmov d24, x9
    fneg d24, d24
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L38_8:
    b L38_7
L38_6:
L38_7:
    fcmp d24, d25
    cset w14, gt
    cbnz w14, L38_9
    b L38_10
L38_9:
    movz x9, #16368, lsl #48
    fmov d24, x9
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L38_12:
    b L38_11
L38_10:
L38_11:
    fmov d16, d24
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L38_13:
    adrp x0, l_text_41@PAGE
    add x0, x0, l_text_41@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_min
_lb_math_min:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    sub x16, x29, #56
    str d0, [x16]
    sub x16, x29, #72
    str d1, [x16]
    sub x14, x29, #56
    ldr d24, [x14]
    sub x10, x29, #88
    str d24, [x10]
    fmov x14, d24
    adrp x15, _lb_math_14magnitude_mask@PAGE
    add x15, x15, _lb_math_14magnitude_mask@PAGEOFF
    ldr x15, [x15]
    and x19, x14, x15
    adrp x20, _lb_math_13exponent_mask@PAGE
    add x20, x20, _lb_math_13exponent_mask@PAGEOFF
    ldr x20, [x20]
    cmp x19, x20
    cset w19, hi
    and w19, w19, #255
    sub x10, x29, #96
    str w19, [x10]
    b L39_20
L39_19:
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L39_20:
    cbnz w19, L39_1
    b L39_2
L39_1:
    fmov d16, d24
    fmov d0, d16
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L39_4:
    b L39_3
L39_2:
L39_3:
    sub x19, x29, #72
    ldr d25, [x19]
    sub x10, x29, #88
    str d25, [x10]
    fmov x19, d25
    and x21, x15, x19
    cmp x21, x20
    cset w21, hi
    and w21, w21, #255
    sub x10, x29, #104
    str w21, [x10]
    b L39_22
L39_21:
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L39_22:
    cbnz w21, L39_5
    b L39_6
L39_5:
    fmov d16, d25
    fmov d0, d16
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L39_8:
    b L39_7
L39_6:
L39_7:
    mov x9, #0
    fmov d26, x9
    fcmp d24, d26
    cset w15, eq
    cbnz w15, L39_12
    b L39_23
L39_23:
    mov w20, w15
    b L39_13
L39_12:
    fcmp d25, d26
    cset w20, eq
L39_13:
    and w15, w20, #255
    cbnz w15, L39_9
    b L39_10
L39_9:
    orr x15, x14, x19
    fmov d24, x15
    fmov d16, d24
    fmov d0, d16
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L39_14:
    b L39_11
L39_10:
L39_11:
    fcmp d24, d25
    cset w14, mi
    cbnz w14, L39_15
    b L39_16
L39_15:
    fmov d25, d24
    b L39_17
L39_16:
L39_17:
    fmov d16, d25
    fmov d0, d16
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L39_18:
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_max
_lb_math_max:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    sub x16, x29, #56
    str d0, [x16]
    sub x16, x29, #72
    str d1, [x16]
    sub x14, x29, #56
    ldr d24, [x14]
    sub x10, x29, #88
    str d24, [x10]
    fmov x14, d24
    adrp x15, _lb_math_14magnitude_mask@PAGE
    add x15, x15, _lb_math_14magnitude_mask@PAGEOFF
    ldr x15, [x15]
    and x19, x14, x15
    adrp x20, _lb_math_13exponent_mask@PAGE
    add x20, x20, _lb_math_13exponent_mask@PAGEOFF
    ldr x20, [x20]
    cmp x19, x20
    cset w19, hi
    and w19, w19, #255
    sub x10, x29, #96
    str w19, [x10]
    b L40_20
L40_19:
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L40_20:
    cbnz w19, L40_1
    b L40_2
L40_1:
    fmov d16, d24
    fmov d0, d16
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L40_4:
    b L40_3
L40_2:
L40_3:
    sub x19, x29, #72
    ldr d25, [x19]
    sub x10, x29, #88
    str d25, [x10]
    fmov x19, d25
    and x21, x15, x19
    cmp x21, x20
    cset w21, hi
    and w21, w21, #255
    sub x10, x29, #104
    str w21, [x10]
    b L40_22
L40_21:
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L40_22:
    cbnz w21, L40_5
    b L40_6
L40_5:
    fmov d16, d25
    fmov d0, d16
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L40_8:
    b L40_7
L40_6:
L40_7:
    mov x9, #0
    fmov d26, x9
    fcmp d24, d26
    cset w15, eq
    cbnz w15, L40_12
    b L40_23
L40_23:
    mov w20, w15
    b L40_13
L40_12:
    fcmp d25, d26
    cset w20, eq
L40_13:
    and w15, w20, #255
    cbnz w15, L40_9
    b L40_10
L40_9:
    and x15, x14, x19
    fmov d24, x15
    fmov d16, d24
    fmov d0, d16
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L40_14:
    b L40_11
L40_10:
L40_11:
    fcmp d24, d25
    cset w14, gt
    cbnz w14, L40_15
    b L40_16
L40_15:
    fmov d25, d24
    b L40_17
L40_16:
L40_17:
    fmov d16, d25
    fmov d0, d16
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L40_18:
    adrp x0, l_text_43@PAGE
    add x0, x0, l_text_43@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_clamp
_lb_math_clamp:
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
    cbnz w14, L41_1
    b L41_2
L41_2:
    adrp x0, l_text_45@PAGE
    add x0, x0, l_text_45@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
    bl _lb_core_7trap_at
L41_1:
    sub x14, x29, #32
    ldr d26, [x14]
    sub x10, x29, #80
    str d26, [x10]
    fmov x14, d26
    adrp x15, _lb_math_14magnitude_mask@PAGE
    add x15, x15, _lb_math_14magnitude_mask@PAGEOFF
    ldr x15, [x15]
    and x14, x14, x15
    adrp x15, _lb_math_13exponent_mask@PAGE
    add x15, x15, _lb_math_13exponent_mask@PAGEOFF
    ldr x15, [x15]
    cmp x14, x15
    cset w14, hi
    and w14, w14, #255
    sub x10, x29, #88
    str w14, [x10]
    b L41_15
L41_14:
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L41_15:
    cbnz w14, L41_3
    b L41_4
L41_3:
    fmov d16, d26
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L41_6:
    b L41_5
L41_4:
L41_5:
    fcmp d26, d24
    cset w14, mi
    cbnz w14, L41_7
    b L41_8
L41_7:
    fmov d25, d24
    b L41_9
L41_8:
    fcmp d26, d25
    cset w14, gt
    cbnz w14, L41_10
    b L41_11
L41_10:
    fmov d24, d25
    b L41_12
L41_11:
    fmov d24, d26
L41_12:
    fmov d25, d24
L41_9:
    fmov d16, d25
    fmov d0, d16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L41_13:
    adrp x0, l_text_46@PAGE
    add x0, x0, l_text_46@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_iabs
_lb_math_iabs:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ge L42_2
L42_1:
    mov x9, #0
    mov x10, x14
    subs x9, x9, x10
    b.vc 1f
    adrp x0, l_text_56@PAGE
    add x0, x0, l_text_56@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    b L42_3
L42_2:
    mov x15, x14
L42_3:
    mov x9, x15
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L42_4:
    adrp x0, l_text_56@PAGE
    add x0, x0, l_text_56@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_12checked_iabs
_lb_math_12checked_iabs:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    sub x16, x29, #64
    str x0, [x16]
    sub x14, x29, #64
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ge L43_2
L43_1:
    sub x19, x29, #72
    mov x0, #0
    mov x1, x14
    movz x2, #64
    mov x3, x19
    bl _lb_core_6qsub_s
    mov w15, w0
    sub x20, x29, #88
    ldr x19, [x19]
    str x19, [x20]
    add x19, x20, #8
    strb w15, [x19]
    sub x19, x29, #48
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L43_4:
    b L43_3
L43_2:
L43_3:
    sub x15, x29, #104
    str x14, [x15]
    add x19, x15, #8
    movz x9, #1
    strb w9, [x19]
    sub x19, x29, #48
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L43_5:
    adrp x0, l_text_57@PAGE
    add x0, x0, l_text_57@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_17checked_div_floor
_lb_math_17checked_div_floor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #136]
    str x20, [sp, #128]
    str x21, [sp, #120]
    sub x16, x29, #72
    str x0, [x16]
    sub x16, x29, #88
    str x1, [x16]
    sub x14, x29, #88
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
    cbnz w15, L44_26
    b L44_4
L44_26:
    mov w19, w15
    b L44_5
L44_4:
    sub x19, x29, #72
    ldr x19, [x19]
    movz x10, #32768, lsl #48
    cmp x19, x10
    cset w19, eq
    cbnz w19, L44_6
    b L44_27
L44_27:
    mov w20, w19
    b L44_7
L44_6:
    movn x10, #0
    cmp x14, x10
    cset w20, eq
L44_7:
    and w19, w20, #255
L44_5:
    and w20, w19, #255
    cbnz w20, L44_1
    b L44_2
L44_1:
    sub x19, x29, #104
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #56
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L44_8:
    b L44_3
L44_2:
L44_3:
    sub x19, x29, #72
    ldr x19, [x19]
    sub x10, x29, #136
    str x19, [x10]
    sub x10, x29, #152
    str x14, [x10]
    cbnz w15, L44_10
    b L44_11
L44_10:
    adrp x0, l_text_48@PAGE
    add x0, x0, l_text_48@PAGEOFF
    adrp x1, l_text_47@PAGE
    add x1, x1, l_text_47@PAGEOFF
    bl _lb_core_7trap_at
L44_11:
    movz x10, #32768, lsl #48
    cmp x19, x10
    cset w20, eq
    movn x10, #0
    cmp x14, x10
    cset w21, eq
    and w20, w20, w21
    cbnz w20, L44_12
    b L44_13
L44_12:
    adrp x0, l_text_48@PAGE
    add x0, x0, l_text_48@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
L44_13:
    sdiv x21, x19, x14
    cbnz w15, L44_17
    b L44_18
L44_17:
    adrp x0, l_text_50@PAGE
    add x0, x0, l_text_50@PAGEOFF
    adrp x1, l_text_47@PAGE
    add x1, x1, l_text_47@PAGEOFF
    bl _lb_core_7trap_at
L44_18:
    cbnz w20, L44_19
    b L44_20
L44_19:
    adrp x0, l_text_50@PAGE
    add x0, x0, l_text_50@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
L44_20:
    sdiv x11, x19, x14
    msub x15, x11, x14, x19
    mov x10, #0
    cmp x15, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    cbnz w15, L44_21
    b L44_28
L44_28:
    mov w14, w15
    b L44_22
L44_21:
    mov x10, #0
    cmp x19, x10
    cset w15, lt
    mov x10, #0
    cmp x14, x10
    cset w20, lt
    cmp w15, w20
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L44_22:
    and w15, w14, #255
    cbnz w15, L44_14
    b L44_15
L44_14:
    mov x9, x21
    movz x10, #1
    subs x9, x9, x10
    b.vc 1f
    adrp x0, l_text_51@PAGE
    add x0, x0, l_text_51@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    b L44_25
L44_23:
    b L44_16
L44_15:
L44_16:
    mov x14, x21
    b L44_25
L44_24:
    adrp x0, l_text_52@PAGE
    add x0, x0, l_text_52@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L44_25:
    sub x15, x29, #120
    str x14, [x15]
    add x19, x15, #8
    movz x9, #1
    strb w9, [x19]
    sub x19, x29, #56
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L44_9:
    adrp x0, l_text_58@PAGE
    add x0, x0, l_text_58@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_17checked_mod_floor
_lb_math_17checked_mod_floor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #136]
    str x20, [sp, #128]
    sub x16, x29, #64
    str x0, [x16]
    sub x16, x29, #80
    str x1, [x16]
    sub x14, x29, #80
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
    cbnz w15, L45_1
    b L45_2
L45_1:
    sub x19, x29, #96
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #48
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L45_4:
    b L45_3
L45_2:
L45_3:
    movn x10, #0
    cmp x14, x10
    cset w19, eq
    cbnz w19, L45_5
    b L45_6
L45_5:
    sub x14, x29, #112
    mov x9, #0
    str x9, [x14]
    add x15, x14, #8
    movz x9, #1
    strb w9, [x15]
    sub x19, x29, #48
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L45_8:
    b L45_7
L45_6:
L45_7:
    sub x20, x29, #64
    ldr x20, [x20]
    sub x10, x29, #144
    str x20, [x10]
    sub x10, x29, #160
    str x14, [x10]
    cbnz w19, L45_10
    b L45_11
L45_10:
    mov x9, #0
    mov x14, x9
    b L45_25
L45_13:
    b L45_12
L45_11:
L45_12:
    cbnz w15, L45_14
    b L45_15
L45_14:
    adrp x0, l_text_53@PAGE
    add x0, x0, l_text_53@PAGEOFF
    adrp x1, l_text_47@PAGE
    add x1, x1, l_text_47@PAGEOFF
    bl _lb_core_7trap_at
L45_15:
    movz x10, #32768, lsl #48
    cmp x20, x10
    cset w15, eq
    and w15, w19, w15
    cbnz w15, L45_16
    b L45_17
L45_16:
    adrp x0, l_text_53@PAGE
    add x0, x0, l_text_53@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
L45_17:
    sdiv x11, x20, x14
    msub x15, x11, x14, x20
    mov x10, #0
    cmp x15, x10
    cset w19, eq
    mov x10, #0
    cmp w19, w10
    cset w19, eq
    cbnz w19, L45_21
    b L45_26
L45_26:
    mov w20, w19
    b L45_22
L45_21:
    mov x10, #0
    cmp x15, x10
    cset w19, lt
    mov x10, #0
    cmp x14, x10
    cset w20, lt
    cmp w19, w20
    cset w19, eq
    mov x10, #0
    cmp w19, w10
    cset w20, eq
L45_22:
    and w19, w20, #255
    cbnz w19, L45_18
    b L45_19
L45_18:
    mov x9, x14
    mov x10, x15
    adds x9, x9, x10
    b.vc 1f
    adrp x0, l_text_54@PAGE
    add x0, x0, l_text_54@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x19, x9
    mov x14, x19
    b L45_25
L45_23:
    b L45_20
L45_19:
L45_20:
    mov x14, x15
    b L45_25
L45_24:
    adrp x0, l_text_55@PAGE
    add x0, x0, l_text_55@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L45_25:
    sub x15, x29, #128
    str x14, [x15]
    add x19, x15, #8
    movz x9, #1
    strb w9, [x19]
    sub x19, x29, #48
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L45_9:
    adrp x0, l_text_59@PAGE
    add x0, x0, l_text_59@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_imin
_lb_math_imin:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x14, x29, #40
    ldr x14, [x14]
    sub x15, x29, #56
    ldr x15, [x15]
    cmp x14, x15
    b.ge L46_2
L46_1:
    mov x15, x14
    b L46_3
L46_2:
L46_3:
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L46_4:
    adrp x0, l_text_60@PAGE
    add x0, x0, l_text_60@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_imax
_lb_math_imax:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x14, x29, #40
    ldr x14, [x14]
    sub x15, x29, #56
    ldr x15, [x15]
    cmp x14, x15
    b.le L47_2
L47_1:
    mov x15, x14
    b L47_3
L47_2:
L47_3:
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_4:
    adrp x0, l_text_61@PAGE
    add x0, x0, l_text_61@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math_iclamp
_lb_math_iclamp:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    sub x16, x29, #48
    str x0, [x16]
    sub x16, x29, #64
    str x1, [x16]
    sub x16, x29, #80
    str x2, [x16]
    sub x14, x29, #64
    ldr x14, [x14]
    sub x15, x29, #80
    ldr x15, [x15]
    cmp x14, x15
    b.le L48_1
L48_2:
    adrp x0, l_text_62@PAGE
    add x0, x0, l_text_62@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
    bl _lb_core_7trap_at
L48_1:
    sub x19, x29, #48
    ldr x19, [x19]
    cmp x19, x14
    b.ge L48_4
L48_3:
    mov x15, x14
    b L48_5
L48_4:
    cmp x19, x15
    b.le L48_7
L48_6:
    mov x14, x15
    b L48_8
L48_7:
    mov x14, x19
L48_8:
    mov x15, x14
L48_5:
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L48_9:
    adrp x0, l_text_63@PAGE
    add x0, x0, l_text_63@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_math_0init

    .section __TEXT,__const
l_text_0:
    .asciz "unreachable"
l_text_1:
    .asciz "src/std/math.lucb:51:5"
l_text_2:
    .asciz "src/std/math.lucb:53:5"
l_text_3:
    .asciz "src/std/math.lucb:55:5"
l_text_4:
    .asciz "src/std/math.lucb:57:5"
l_text_5:
    .asciz "src/std/math.lucb:60:5"
l_text_6:
    .asciz "src/std/math.lucb:62:5"
l_text_7:
    .asciz "src/std/math.lucb:65:5"
l_text_8:
    .asciz "src/std/math.lucb:68:5"
l_text_9:
    .asciz "src/std/math.lucb:70:5"
l_text_10:
    .asciz "src/std/math.lucb:72:5"
l_text_11:
    .asciz "src/std/math.lucb:74:5"
l_text_12:
    .asciz "src/std/math.lucb:76:5"
l_text_13:
    .asciz "src/std/math.lucb:78:5"
l_text_14:
    .asciz "src/std/math.lucb:80:5"
l_text_15:
    .asciz "src/std/math.lucb:85:5"
l_text_16:
    .asciz "src/std/math.lucb:93:5"
l_text_17:
    .asciz "src/std/math.lucb:98:5"
l_text_18:
    .asciz "src/std/math.lucb:103:5"
l_text_19:
    .asciz "src/std/math.lucb:108:5"
l_text_20:
    .asciz "src/std/math.lucb:113:5"
l_text_21:
    .asciz "src/std/math.lucb:121:5"
l_text_22:
    .asciz "src/std/math.lucb:126:5"
l_text_23:
    .asciz "src/std/math.lucb:131:5"
l_text_24:
    .asciz "src/std/math.lucb:140:5"
l_text_25:
    .asciz "src/std/math.lucb:143:5"
l_text_26:
    .asciz "src/std/math.lucb:145:5"
l_text_27:
    .asciz "src/std/math.lucb:147:5"
l_text_28:
    .asciz "src/std/math.lucb:149:5"
l_text_29:
    .asciz "src/std/math.lucb:151:5"
l_text_30:
    .asciz "src/std/math.lucb:153:5"
l_text_31:
    .asciz "src/std/math.lucb:156:5"
l_text_32:
    .asciz "src/std/math.lucb:158:5"
l_text_33:
    .asciz "src/std/math.lucb:160:5"
l_text_34:
    .asciz "src/std/math.lucb:162:5"
l_text_35:
    .asciz "src/std/math.lucb:166:5"
l_text_36:
    .asciz "src/std/math.lucb:170:5"
l_text_37:
    .asciz "src/std/math.lucb:173:5"
l_text_38:
    .asciz "src/std/math.lucb:176:5"
l_text_39:
    .asciz "src/std/math.lucb:179:5"
l_text_40:
    .asciz "src/std/math.lucb:182:5"
l_text_41:
    .asciz "src/std/math.lucb:191:5"
l_text_42:
    .asciz "src/std/math.lucb:201:5"
l_text_43:
    .asciz "src/std/math.lucb:211:5"
l_text_44:
    .asciz "assert failed: low <= high"
l_text_45:
    .asciz "src/std/math.lucb:215:5"
l_text_46:
    .asciz "src/std/math.lucb:218:5"
l_text_47:
    .asciz "division by zero"
l_text_48:
    .asciz "src/std/math.lucb:223:5"
l_text_49:
    .asciz "integer overflow"
l_text_50:
    .asciz "src/std/math.lucb:224:5"
l_text_51:
    .asciz "src/std/math.lucb:225:9"
l_text_52:
    .asciz "src/std/math.lucb:226:5"
l_text_53:
    .asciz "src/std/math.lucb:230:5"
l_text_54:
    .asciz "src/std/math.lucb:232:9"
l_text_55:
    .asciz "src/std/math.lucb:233:5"
l_text_56:
    .asciz "src/std/math.lucb:235:5"
l_text_57:
    .asciz "src/std/math.lucb:240:5"
l_text_58:
    .asciz "src/std/math.lucb:245:5"
l_text_59:
    .asciz "src/std/math.lucb:253:5"
l_text_60:
    .asciz "src/std/math.lucb:255:5"
l_text_61:
    .asciz "src/std/math.lucb:257:5"
l_text_62:
    .asciz "src/std/math.lucb:260:5"
l_text_63:
    .asciz "src/std/math.lucb:261:5"

    .section __DATA,__const
    .p2align 3
    .globl _lb_math_pi
    .zerofill __DATA,__bss,_lb_math_pi,8,3
    .globl _lb_math_tau
    .zerofill __DATA,__bss,_lb_math_tau,8,3
    .globl _lb_math_e
    .zerofill __DATA,__bss,_lb_math_e,8,3
    .globl _lb_math_infinity
    .zerofill __DATA,__bss,_lb_math_infinity,8,3
    .globl _lb_math_nan
    .zerofill __DATA,__bss,_lb_math_nan,8,3
    .globl _lb_math_9sign_mask
    .zerofill __DATA,__bss,_lb_math_9sign_mask,8,3
    .globl _lb_math_14magnitude_mask
    .zerofill __DATA,__bss,_lb_math_14magnitude_mask,8,3
    .globl _lb_math_13exponent_mask
    .zerofill __DATA,__bss,_lb_math_13exponent_mask,8,3

