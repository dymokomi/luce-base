    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_math32_0init
_lb_math32_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    movz x9, #4059
    movk x9, #16457, lsl #16
    fmov s24, w9
    adrp x14, _lb_math32_pi@PAGE
    add x14, x14, _lb_math32_pi@PAGEOFF
    str s24, [x14]
    movz x9, #4059
    movk x9, #16585, lsl #16
    fmov s24, w9
    adrp x14, _lb_math32_tau@PAGE
    add x14, x14, _lb_math32_tau@PAGEOFF
    str s24, [x14]
    movz x9, #63572
    movk x9, #16429, lsl #16
    fmov s24, w9
    adrp x14, _lb_math32_e@PAGE
    add x14, x14, _lb_math32_e@PAGEOFF
    str s24, [x14]
    movz x9, #32640, lsl #16
    fmov s24, w9
    adrp x14, _lb_math32_infinity@PAGE
    add x14, x14, _lb_math32_infinity@PAGEOFF
    str s24, [x14]
    movz x9, #32704, lsl #16
    fmov s24, w9
    adrp x14, _lb_math32_nan@PAGE
    add x14, x14, _lb_math32_nan@PAGEOFF
    str s24, [x14]
    adrp x14, _lb_math32_9sign_mask@PAGE
    add x14, x14, _lb_math32_9sign_mask@PAGEOFF
    movz x9, #32768, lsl #16
    str w9, [x14]
    adrp x14, _lb_math32_14magnitude_mask@PAGE
    add x14, x14, _lb_math32_14magnitude_mask@PAGEOFF
    movz x9, #65535
    movk x9, #32767, lsl #16
    str w9, [x14]
    adrp x14, _lb_math32_13exponent_mask@PAGE
    add x14, x14, _lb_math32_13exponent_mask@PAGEOFF
    movz x9, #32640, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_math32_floor
    .no_dead_strip _lb_math32_floor
_lb_math32_floor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl _floorf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_ceil
    .no_dead_strip _lb_math32_ceil
_lb_math32_ceil:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl _ceilf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_round
    .no_dead_strip _lb_math32_round
_lb_math32_round:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl _roundf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_trunc
    .no_dead_strip _lb_math32_trunc
_lb_math32_trunc:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl _truncf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_sqrt
    .no_dead_strip _lb_math32_sqrt
_lb_math32_sqrt:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl _sqrtf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_cbrt
    .no_dead_strip _lb_math32_cbrt
_lb_math32_cbrt:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl _cbrtf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_hypot
    .no_dead_strip _lb_math32_hypot
_lb_math32_hypot:
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
    bl _hypotf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_mod
    .no_dead_strip _lb_math32_mod
_lb_math32_mod:
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
    bl _fmodf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_pow
    .no_dead_strip _lb_math32_pow
_lb_math32_pow:
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
    bl _powf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_exp
    .no_dead_strip _lb_math32_exp
_lb_math32_exp:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl _expf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_exp2
    .no_dead_strip _lb_math32_exp2
_lb_math32_exp2:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl _exp2f
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_log
    .no_dead_strip _lb_math32_log
_lb_math32_log:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl _logf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_log2
    .no_dead_strip _lb_math32_log2
_lb_math32_log2:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl _log2f
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_log10
    .no_dead_strip _lb_math32_log10
_lb_math32_log10:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl _log10f
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_log1p
    .no_dead_strip _lb_math32_log1p
_lb_math32_log1p:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl _log1pf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_expm1
    .no_dead_strip _lb_math32_expm1
_lb_math32_expm1:
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
    b.ne L16_2
L16_1:
    movz x9, #16256, lsl #16
    fmov s24, w9
    fneg s24, s24
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_4:
    b L16_3
L16_2:
L16_3:
    fmov s16, s24
    fmov s0, s16
    bl _expm1f
    fmov s25, s0
    fmov s16, s25
    fmov s0, s16
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
    .globl _lb_math32_fma
    .no_dead_strip _lb_math32_fma
_lb_math32_fma:
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
    bl _fmaf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_nextafter
    .no_dead_strip _lb_math32_nextafter
_lb_math32_nextafter:
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
    bl _nextafterf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_7next_up
    .no_dead_strip _lb_math32_7next_up
_lb_math32_7next_up:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    adrp x14, _lb_math32_infinity@PAGE
    add x14, x14, _lb_math32_infinity@PAGEOFF
    ldr s25, [x14]
    fmov s16, s24
    fmov s0, s16
    fmov s16, s25
    fmov s1, s16
    bl _nextafterf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_9next_down
    .no_dead_strip _lb_math32_9next_down
_lb_math32_9next_down:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    adrp x14, _lb_math32_infinity@PAGE
    add x14, x14, _lb_math32_infinity@PAGEOFF
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
    b L20_3
L20_2:
    adrp x0, l_text_40@PAGE
    add x0, x0, l_text_40@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L20_3:
    fmov s16, s24
    fmov s0, s16
    fmov s16, s25
    fmov s1, s16
    bl _nextafterf
    fmov s26, s0
    fmov s16, s26
    fmov s0, s16
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
    .globl _lb_math32_frexp
    .no_dead_strip _lb_math32_frexp
_lb_math32_frexp:
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
    cbnz w14, L21_10
    b L21_4
L21_10:
    mov w15, w14
    b L21_5
L21_4:
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
L21_6:
    b L21_3
L21_2:
L21_3:
    sub x19, x29, #60
    fmov s16, s24
    fmov s0, s16
    mov x0, x19
    bl _frexpf
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
L21_7:
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math32_scalbn
    .no_dead_strip _lb_math32_scalbn
_lb_math32_scalbn:
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
    bl _scalbnf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_modf
    .no_dead_strip _lb_math32_modf
_lb_math32_modf:
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
    bl _modff
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
L23_1:
    adrp x0, l_text_23@PAGE
    add x0, x0, l_text_23@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math32_remainder
    .no_dead_strip _lb_math32_remainder
_lb_math32_remainder:
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
    bl _remainderf
    fmov s24, s0
    fmov w14, s24
    movz x10, #65535
    movk x10, #32767, lsl #16
    and w14, w14, w10
    mov x10, #0
    cmp w14, w10
    b.ne L24_2
L24_1:
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
    b L24_6
L24_5:
    adrp x0, l_text_40@PAGE
    add x0, x0, l_text_40@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L24_6:
    fmov s24, s25
    b L24_3
L24_2:
L24_3:
    fmov s16, s24
    fmov s0, s16
    ldr d8, [sp, #72]
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
    .globl _lb_math32_sin
    .no_dead_strip _lb_math32_sin
_lb_math32_sin:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl _sinf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_cos
    .no_dead_strip _lb_math32_cos
_lb_math32_cos:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl _cosf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_tan
    .no_dead_strip _lb_math32_tan
_lb_math32_tan:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl _tanf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_asin
    .no_dead_strip _lb_math32_asin
_lb_math32_asin:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl _asinf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_acos
    .no_dead_strip _lb_math32_acos
_lb_math32_acos:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl _acosf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_atan
    .no_dead_strip _lb_math32_atan
_lb_math32_atan:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl _atanf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_atan2
    .no_dead_strip _lb_math32_atan2
_lb_math32_atan2:
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
    bl _atan2f
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_sinh
    .no_dead_strip _lb_math32_sinh
_lb_math32_sinh:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl _sinhf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_cosh
    .no_dead_strip _lb_math32_cosh
_lb_math32_cosh:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl _coshf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_tanh
    .no_dead_strip _lb_math32_tanh
_lb_math32_tanh:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str s0, [x16]
    sub x14, x29, #32
    ldr s24, [x14]
    fmov s16, s24
    fmov s0, s16
    bl _tanhf
    fmov s24, s0
    fmov s16, s24
    fmov s0, s16
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
    .globl _lb_math32_6is_nan
    .no_dead_strip _lb_math32_6is_nan
_lb_math32_6is_nan:
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
L35_1:
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math32_9is_finite
    .no_dead_strip _lb_math32_9is_finite
_lb_math32_9is_finite:
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
L36_1:
    adrp x0, l_text_36@PAGE
    add x0, x0, l_text_36@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math32_11is_infinite
    .no_dead_strip _lb_math32_11is_infinite
_lb_math32_11is_infinite:
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
L37_1:
    adrp x0, l_text_37@PAGE
    add x0, x0, l_text_37@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math32_signbit
    .no_dead_strip _lb_math32_signbit
_lb_math32_signbit:
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
L38_1:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math32_abs
    .no_dead_strip _lb_math32_abs
_lb_math32_abs:
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
L39_1:
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math32_copysign
    .no_dead_strip _lb_math32_copysign
_lb_math32_copysign:
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
L40_1:
    adrp x0, l_text_40@PAGE
    add x0, x0, l_text_40@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math32_sign
    .no_dead_strip _lb_math32_sign
_lb_math32_sign:
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
    b L41_15
L41_14:
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L41_15:
    cbnz w14, L41_1
    b L41_2
L41_1:
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L41_4:
    b L41_3
L41_2:
L41_3:
    mov x9, #0
    fmov s25, w9
    fcmp s24, s25
    cset w14, mi
    cbnz w14, L41_5
    b L41_6
L41_5:
    movz x9, #16256, lsl #16
    fmov s24, w9
    fneg s24, s24
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L41_8:
    b L41_7
L41_6:
L41_7:
    fcmp s24, s25
    cset w14, gt
    cbnz w14, L41_9
    b L41_10
L41_9:
    movz x9, #16256, lsl #16
    fmov s24, w9
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L41_12:
    b L41_11
L41_10:
L41_11:
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L41_13:
    adrp x0, l_text_41@PAGE
    add x0, x0, l_text_41@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math32_min
    .no_dead_strip _lb_math32_min
_lb_math32_min:
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
    b L42_20
L42_19:
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L42_20:
    cbnz w15, L42_1
    b L42_2
L42_1:
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L42_4:
    b L42_3
L42_2:
L42_3:
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
    b L42_22
L42_21:
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L42_22:
    cbnz w12, L42_5
    b L42_6
L42_5:
    fmov s16, s25
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L42_8:
    b L42_7
L42_6:
L42_7:
    mov x9, #0
    fmov s26, w9
    fcmp s24, s26
    cset w12, eq
    cbnz w12, L42_12
    b L42_23
L42_23:
    mov w13, w12
    b L42_13
L42_12:
    fcmp s25, s26
    cset w13, eq
L42_13:
    and w12, w13, #255
    cbnz w12, L42_9
    b L42_10
L42_9:
    orr w12, w14, w15
    fmov s24, w12
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L42_14:
    b L42_11
L42_10:
L42_11:
    fcmp s24, s25
    cset w14, mi
    cbnz w14, L42_15
    b L42_16
L42_15:
    fmov s25, s24
    b L42_17
L42_16:
L42_17:
    fmov s16, s25
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L42_18:
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math32_max
    .no_dead_strip _lb_math32_max
_lb_math32_max:
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
    b L43_20
L43_19:
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L43_20:
    cbnz w15, L43_1
    b L43_2
L43_1:
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L43_4:
    b L43_3
L43_2:
L43_3:
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
    b L43_22
L43_21:
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L43_22:
    cbnz w12, L43_5
    b L43_6
L43_5:
    fmov s16, s25
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L43_8:
    b L43_7
L43_6:
L43_7:
    mov x9, #0
    fmov s26, w9
    fcmp s24, s26
    cset w12, eq
    cbnz w12, L43_12
    b L43_23
L43_23:
    mov w13, w12
    b L43_13
L43_12:
    fcmp s25, s26
    cset w13, eq
L43_13:
    and w12, w13, #255
    cbnz w12, L43_9
    b L43_10
L43_9:
    and w12, w14, w15
    fmov s24, w12
    fmov s16, s24
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L43_14:
    b L43_11
L43_10:
L43_11:
    fcmp s24, s25
    cset w14, gt
    cbnz w14, L43_15
    b L43_16
L43_15:
    fmov s25, s24
    b L43_17
L43_16:
L43_17:
    fmov s16, s25
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L43_18:
    adrp x0, l_text_43@PAGE
    add x0, x0, l_text_43@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_math32_clamp
    .no_dead_strip _lb_math32_clamp
_lb_math32_clamp:
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
    cbnz w14, L44_1
    b L44_2
L44_2:
    adrp x0, l_text_45@PAGE
    add x0, x0, l_text_45@PAGEOFF
    adrp x1, l_text_44@PAGE
    add x1, x1, l_text_44@PAGEOFF
    bl _lb_core_7trap_at
L44_1:
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
    b L44_15
L44_14:
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L44_15:
    cbnz w14, L44_3
    b L44_4
L44_3:
    fmov s16, s26
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L44_6:
    b L44_5
L44_4:
L44_5:
    fcmp s26, s24
    cset w14, mi
    cbnz w14, L44_7
    b L44_8
L44_7:
    fmov s25, s24
    b L44_9
L44_8:
    fcmp s26, s25
    cset w14, gt
    cbnz w14, L44_10
    b L44_11
L44_10:
    fmov s24, s25
    b L44_12
L44_11:
    fmov s24, s26
L44_12:
    fmov s25, s24
L44_9:
    fmov s16, s25
    fmov s0, s16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L44_13:
    adrp x0, l_text_46@PAGE
    add x0, x0, l_text_46@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_math32_0init

    .section __TEXT,__const
l_text_0:
    .asciz "unreachable"
l_text_1:
    .asciz "src/std/math32.lucb:51:5"
l_text_2:
    .asciz "src/std/math32.lucb:54:5"
l_text_3:
    .asciz "src/std/math32.lucb:57:5"
l_text_4:
    .asciz "src/std/math32.lucb:60:5"
l_text_5:
    .asciz "src/std/math32.lucb:63:5"
l_text_6:
    .asciz "src/std/math32.lucb:66:5"
l_text_7:
    .asciz "src/std/math32.lucb:70:5"
l_text_8:
    .asciz "src/std/math32.lucb:74:5"
l_text_9:
    .asciz "src/std/math32.lucb:77:5"
l_text_10:
    .asciz "src/std/math32.lucb:80:5"
l_text_11:
    .asciz "src/std/math32.lucb:83:5"
l_text_12:
    .asciz "src/std/math32.lucb:86:5"
l_text_13:
    .asciz "src/std/math32.lucb:89:5"
l_text_14:
    .asciz "src/std/math32.lucb:92:5"
l_text_15:
    .asciz "src/std/math32.lucb:97:5"
l_text_16:
    .asciz "src/std/math32.lucb:104:5"
l_text_17:
    .asciz "src/std/math32.lucb:109:5"
l_text_18:
    .asciz "src/std/math32.lucb:114:5"
l_text_19:
    .asciz "src/std/math32.lucb:119:5"
l_text_20:
    .asciz "src/std/math32.lucb:124:5"
l_text_21:
    .asciz "src/std/math32.lucb:132:5"
l_text_22:
    .asciz "src/std/math32.lucb:137:5"
l_text_23:
    .asciz "src/std/math32.lucb:142:5"
l_text_24:
    .asciz "src/std/math32.lucb:150:5"
l_text_25:
    .asciz "src/std/math32.lucb:153:5"
l_text_26:
    .asciz "src/std/math32.lucb:156:5"
l_text_27:
    .asciz "src/std/math32.lucb:159:5"
l_text_28:
    .asciz "src/std/math32.lucb:162:5"
l_text_29:
    .asciz "src/std/math32.lucb:165:5"
l_text_30:
    .asciz "src/std/math32.lucb:168:5"
l_text_31:
    .asciz "src/std/math32.lucb:172:5"
l_text_32:
    .asciz "src/std/math32.lucb:175:5"
l_text_33:
    .asciz "src/std/math32.lucb:178:5"
l_text_34:
    .asciz "src/std/math32.lucb:181:5"
l_text_35:
    .asciz "src/std/math32.lucb:185:5"
l_text_36:
    .asciz "src/std/math32.lucb:190:5"
l_text_37:
    .asciz "src/std/math32.lucb:194:5"
l_text_38:
    .asciz "src/std/math32.lucb:198:5"
l_text_39:
    .asciz "src/std/math32.lucb:202:5"
l_text_40:
    .asciz "src/std/math32.lucb:206:5"
l_text_41:
    .asciz "src/std/math32.lucb:216:5"
l_text_42:
    .asciz "src/std/math32.lucb:227:5"
l_text_43:
    .asciz "src/std/math32.lucb:238:5"
l_text_44:
    .asciz "assert failed: low <= high"
l_text_45:
    .asciz "src/std/math32.lucb:243:5"
l_text_46:
    .asciz "src/std/math32.lucb:246:5"

    .section __DATA,__const
    .p2align 3
    .globl _lb_math32_pi
    .no_dead_strip _lb_math32_pi
    .zerofill __DATA,__bss,_lb_math32_pi,4,2
    .globl _lb_math32_tau
    .no_dead_strip _lb_math32_tau
    .zerofill __DATA,__bss,_lb_math32_tau,4,2
    .globl _lb_math32_e
    .no_dead_strip _lb_math32_e
    .zerofill __DATA,__bss,_lb_math32_e,4,2
    .globl _lb_math32_infinity
    .no_dead_strip _lb_math32_infinity
    .zerofill __DATA,__bss,_lb_math32_infinity,4,2
    .globl _lb_math32_nan
    .no_dead_strip _lb_math32_nan
    .zerofill __DATA,__bss,_lb_math32_nan,4,2
    .globl _lb_math32_9sign_mask
    .zerofill __DATA,__bss,_lb_math32_9sign_mask,4,2
    .globl _lb_math32_14magnitude_mask
    .zerofill __DATA,__bss,_lb_math32_14magnitude_mask,4,2
    .globl _lb_math32_13exponent_mask
    .zerofill __DATA,__bss,_lb_math32_13exponent_mask,4,2

.subsections_via_symbols
