    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_strings_numbers_0init
_lb_strings_numbers_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_strings_9parse_i64
    .no_dead_strip _lb_strings_9parse_i64
_lb_strings_9parse_i64:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #448
    str x19, [sp, #424]
    str x20, [sp, #416]
    str x21, [sp, #408]
    str x22, [sp, #400]
    str x23, [sp, #392]
    str x24, [sp, #384]
    str x25, [sp, #376]
    str x26, [sp, #368]
    str x27, [sp, #360]
    str x28, [sp, #352]
    sub x16, x29, #128
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #144
    str w2, [x16]
    sub x14, x29, #144
    ldr w19, [x14]
    movz x10, #2
    cmp w19, w10
    cset w14, lo
    cbnz w14, L1_41
    b L1_4
L1_41:
    mov w15, w14
    b L1_5
L1_4:
    movz x10, #36
    cmp w19, w10
    cset w15, hi
L1_5:
    and w14, w15, #255
    cbnz w14, L1_42
    b L1_6
L1_42:
    mov w15, w14
    b L1_7
L1_6:
    sub x14, x29, #128
    add x14, x14, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
L1_7:
    and w14, w15, #255
    cbnz w14, L1_1
    b L1_2
L1_1:
    sub x19, x29, #160
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #112
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #424]
    ldr x20, [sp, #416]
    ldr x21, [sp, #408]
    ldr x22, [sp, #400]
    ldr x23, [sp, #392]
    ldr x24, [sp, #384]
    ldr x25, [sp, #376]
    ldr x26, [sp, #368]
    ldr x27, [sp, #360]
    ldr x28, [sp, #352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_8:
    b L1_3
L1_2:
L1_3:
    sub x14, x29, #128
    ldr x9, [x14]
    str x9, [sp, #88]
    add x14, x14, #8
    ldr x21, [x14]
    mov x9, #0
    cmp x9, x21
    b.lo 1f
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_30@PAGE
    add x1, x1, l_text_30@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #88]
    ldrb w14, [x9]
    movz x10, #45
    cmp w14, w10
    cset w14, eq
    cbnz w14, L1_43
    b L1_12
L1_43:
    mov w15, w14
    b L1_13
L1_12:
    ldr x9, [sp, #88]
    ldrb w14, [x9]
    movz x10, #43
    cmp w14, w10
    cset w15, eq
L1_13:
    and w14, w15, #255
    cbnz w14, L1_9
    b L1_10
L1_9:
    ldr x9, [sp, #88]
    ldrb w14, [x9]
    movz x10, #45
    cmp w14, w10
    cset w14, eq
    movz x9, #1
    mov x15, x9
    b L1_11
L1_10:
    mov x9, #0
    mov x15, x9
    mov x9, #0
    mov w14, w9
L1_11:
    cmp x21, x15
    b.ne L1_15
L1_14:
    sub x19, x29, #176
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #112
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #424]
    ldr x20, [sp, #416]
    ldr x21, [sp, #408]
    ldr x22, [sp, #400]
    ldr x23, [sp, #392]
    ldr x24, [sp, #384]
    ldr x25, [sp, #376]
    ldr x26, [sp, #368]
    ldr x27, [sp, #360]
    ldr x28, [sp, #352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_17:
    b L1_16
L1_15:
L1_16:
    sub x26, x29, #184
    add x22, x26, #4
    mov w23, w19
    sub x24, x29, #224
    sub x25, x29, #240
    add x9, x25, #8
    str x9, [sp, #80]
    and w9, w14, #255
    str w9, [sp, #72]
    sub x9, x29, #304
    str x9, [sp, #32]
    sub x9, x29, #320
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    add x9, x9, #8
    str x9, [sp, #16]
    sub x9, x29, #272
    str x9, [sp, #8]
    sub x9, x29, #280
    str x9, [sp, #64]
    sub x9, x29, #296
    str x9, [sp, #56]
    ldr x9, [sp, #56]
    add x9, x9, #8
    str x9, [sp, #48]
    sub x9, x29, #272
    str x9, [sp, #40]
    sub x27, x29, #272
    add x9, x27, #8
    str x9, [sp, #0]
    mov x27, x15
    mov x9, #0
    mov x28, x9
L1_18:
    cmp x27, x21
    b.hs L1_20
L1_19:
    ldr x9, [sp, #88]
    add x14, x9, x27
    ldrb w14, [x14]
    mov x0, x14
    bl _lb_strings_13integer_digit
    sub x16, x29, #184
    str x0, [x16, #0]
    ldrb w14, [x22]
    cbnz w14, L1_21
    b L1_22
L1_21:
    ldr w20, [x26]
    b L1_23
L1_22:
    sub x19, x29, #200
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #112
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #424]
    ldr x20, [sp, #416]
    ldr x21, [sp, #408]
    ldr x22, [sp, #400]
    ldr x23, [sp, #392]
    ldr x24, [sp, #384]
    ldr x25, [sp, #376]
    ldr x26, [sp, #368]
    ldr x27, [sp, #360]
    ldr x28, [sp, #352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_24:
L1_23:
    cmp w20, w19
    b.lo L1_26
L1_25:
    sub x19, x29, #216
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #112
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #424]
    ldr x20, [sp, #416]
    ldr x21, [sp, #408]
    ldr x22, [sp, #400]
    ldr x23, [sp, #392]
    ldr x24, [sp, #384]
    ldr x25, [sp, #376]
    ldr x26, [sp, #368]
    ldr x27, [sp, #360]
    ldr x28, [sp, #352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_28:
    b L1_27
L1_26:
L1_27:
    mov x0, x28
    mov x1, x23
    movz x2, #64
    mov x3, x24
    bl _lb_core_6qmul_s
    mov w14, w0
    ldr x15, [x24]
    str x15, [x25]
    ldr x10, [sp, #80]
    strb w14, [x10]
    ldr x9, [sp, #80]
    ldrb w14, [x9]
    cbnz w14, L1_29
    b L1_30
L1_29:
    b L1_31
L1_30:
    sub x19, x29, #256
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #112
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #424]
    ldr x20, [sp, #416]
    ldr x21, [sp, #408]
    ldr x22, [sp, #400]
    ldr x23, [sp, #392]
    ldr x24, [sp, #384]
    ldr x25, [sp, #376]
    ldr x26, [sp, #368]
    ldr x27, [sp, #360]
    ldr x28, [sp, #352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_32:
L1_31:
    ldr w9, [sp, #72]
    cbnz w9, L1_33
    b L1_34
L1_33:
    mov w14, w20
    mov x0, x15
    mov x1, x14
    movz x2, #64
    ldr x3, [sp, #64]
    bl _lb_core_6qsub_s
    mov w14, w0
    ldr x9, [sp, #64]
    ldr x28, [x9]
    ldr x10, [sp, #56]
    str x28, [x10]
    ldr x10, [sp, #48]
    strb w14, [x10]
    ldr x10, [sp, #56]
    ldr x11, [sp, #40]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L1_35
L1_34:
    mov w14, w20
    mov x0, x15
    mov x1, x14
    movz x2, #64
    ldr x3, [sp, #32]
    bl _lb_core_6qadd_s
    mov w14, w0
    ldr x9, [sp, #32]
    ldr x28, [x9]
    ldr x10, [sp, #24]
    str x28, [x10]
    ldr x10, [sp, #16]
    strb w14, [x10]
    ldr x10, [sp, #24]
    ldr x11, [sp, #8]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L1_35:
    ldr x9, [sp, #0]
    ldrb w14, [x9]
    cbnz w14, L1_36
    b L1_37
L1_36:
    b L1_38
L1_37:
    sub x19, x29, #336
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #112
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #424]
    ldr x20, [sp, #416]
    ldr x21, [sp, #408]
    ldr x22, [sp, #400]
    ldr x23, [sp, #392]
    ldr x24, [sp, #384]
    ldr x25, [sp, #376]
    ldr x26, [sp, #368]
    ldr x27, [sp, #360]
    ldr x28, [sp, #352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_39:
L1_38:
    add x14, x27, #1
    mov x27, x14
    b L1_18
L1_20:
    sub x14, x29, #352
    str x28, [x14]
    add x15, x14, #8
    movz x9, #1
    strb w9, [x15]
    sub x19, x29, #112
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #424]
    ldr x20, [sp, #416]
    ldr x21, [sp, #408]
    ldr x22, [sp, #400]
    ldr x23, [sp, #392]
    ldr x24, [sp, #384]
    ldr x25, [sp, #376]
    ldr x26, [sp, #368]
    ldr x27, [sp, #360]
    ldr x28, [sp, #352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_40:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_strings_9parse_u64
    .no_dead_strip _lb_strings_9parse_u64
_lb_strings_9parse_u64:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #352
    str x19, [sp, #328]
    str x20, [sp, #320]
    str x21, [sp, #312]
    str x22, [sp, #304]
    str x23, [sp, #296]
    str x24, [sp, #288]
    str x25, [sp, #280]
    str x26, [sp, #272]
    str x27, [sp, #264]
    str x28, [sp, #256]
    sub x16, x29, #128
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #144
    str w2, [x16]
    sub x14, x29, #144
    ldr w19, [x14]
    movz x10, #2
    cmp w19, w10
    cset w14, lo
    cbnz w14, L2_36
    b L2_4
L2_36:
    mov w15, w14
    b L2_5
L2_4:
    movz x10, #36
    cmp w19, w10
    cset w15, hi
L2_5:
    and w14, w15, #255
    cbnz w14, L2_37
    b L2_6
L2_37:
    mov w15, w14
    b L2_7
L2_6:
    sub x14, x29, #128
    add x14, x14, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
L2_7:
    and w14, w15, #255
    cbnz w14, L2_1
    b L2_2
L2_1:
    sub x19, x29, #160
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #112
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #328]
    ldr x20, [sp, #320]
    ldr x21, [sp, #312]
    ldr x22, [sp, #304]
    ldr x23, [sp, #296]
    ldr x24, [sp, #288]
    ldr x25, [sp, #280]
    ldr x26, [sp, #272]
    ldr x27, [sp, #264]
    ldr x28, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_8:
    b L2_3
L2_2:
L2_3:
    sub x14, x29, #128
    ldr x9, [x14]
    str x9, [sp, #32]
    add x14, x14, #8
    ldr x21, [x14]
    mov x9, #0
    cmp x9, x21
    b.lo 1f
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_30@PAGE
    add x1, x1, l_text_30@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #32]
    ldrb w14, [x9]
    movz x10, #43
    cmp w14, w10
    b.ne L2_10
L2_9:
    movz x9, #1
    mov x14, x9
    b L2_11
L2_10:
    mov x9, #0
    mov x14, x9
L2_11:
    cmp x21, x14
    b.ne L2_13
L2_12:
    sub x19, x29, #176
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #112
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #328]
    ldr x20, [sp, #320]
    ldr x21, [sp, #312]
    ldr x22, [sp, #304]
    ldr x23, [sp, #296]
    ldr x24, [sp, #288]
    ldr x25, [sp, #280]
    ldr x26, [sp, #272]
    ldr x27, [sp, #264]
    ldr x28, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_15:
    b L2_14
L2_13:
L2_14:
    sub x26, x29, #184
    add x22, x26, #4
    mov w23, w19
    sub x24, x29, #224
    sub x9, x29, #240
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    add x9, x9, #8
    str x9, [sp, #24]
    sub x9, x29, #264
    str x9, [sp, #16]
    sub x25, x29, #280
    add x9, x25, #8
    str x9, [sp, #8]
    mov x28, x14
    mov x9, #0
    mov x27, x9
L2_16:
    cmp x28, x21
    b.hs L2_18
L2_17:
    ldr x9, [sp, #32]
    add x14, x9, x28
    ldrb w14, [x14]
    mov x0, x14
    bl _lb_strings_13integer_digit
    sub x16, x29, #184
    str x0, [x16, #0]
    ldrb w14, [x22]
    cbnz w14, L2_19
    b L2_20
L2_19:
    ldr w20, [x26]
    b L2_21
L2_20:
    sub x19, x29, #200
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #112
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #328]
    ldr x20, [sp, #320]
    ldr x21, [sp, #312]
    ldr x22, [sp, #304]
    ldr x23, [sp, #296]
    ldr x24, [sp, #288]
    ldr x25, [sp, #280]
    ldr x26, [sp, #272]
    ldr x27, [sp, #264]
    ldr x28, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_22:
L2_21:
    cmp w20, w19
    b.lo L2_24
L2_23:
    sub x19, x29, #216
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #112
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #328]
    ldr x20, [sp, #320]
    ldr x21, [sp, #312]
    ldr x22, [sp, #304]
    ldr x23, [sp, #296]
    ldr x24, [sp, #288]
    ldr x25, [sp, #280]
    ldr x26, [sp, #272]
    ldr x27, [sp, #264]
    ldr x28, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_26:
    b L2_25
L2_24:
L2_25:
    mov x0, x27
    mov x1, x23
    movz x2, #64
    mov x3, x24
    bl _lb_core_6qmul_u
    mov w14, w0
    ldr x15, [x24]
    ldr x10, [sp, #0]
    str x15, [x10]
    ldr x10, [sp, #24]
    strb w14, [x10]
    ldr x9, [sp, #24]
    ldrb w14, [x9]
    cbnz w14, L2_27
    b L2_28
L2_27:
    b L2_29
L2_28:
    sub x19, x29, #256
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #112
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #328]
    ldr x20, [sp, #320]
    ldr x21, [sp, #312]
    ldr x22, [sp, #304]
    ldr x23, [sp, #296]
    ldr x24, [sp, #288]
    ldr x25, [sp, #280]
    ldr x26, [sp, #272]
    ldr x27, [sp, #264]
    ldr x28, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_30:
L2_29:
    mov w14, w20
    mov x0, x15
    mov x1, x14
    movz x2, #64
    ldr x3, [sp, #16]
    bl _lb_core_6qadd_u
    mov w14, w0
    ldr x9, [sp, #16]
    ldr x27, [x9]
    str x27, [x25]
    ldr x10, [sp, #8]
    strb w14, [x10]
    ldr x9, [sp, #8]
    ldrb w14, [x9]
    cbnz w14, L2_31
    b L2_32
L2_31:
    b L2_33
L2_32:
    sub x19, x29, #296
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #112
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #328]
    ldr x20, [sp, #320]
    ldr x21, [sp, #312]
    ldr x22, [sp, #304]
    ldr x23, [sp, #296]
    ldr x24, [sp, #288]
    ldr x25, [sp, #280]
    ldr x26, [sp, #272]
    ldr x27, [sp, #264]
    ldr x28, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_34:
L2_33:
    add x14, x28, #1
    mov x28, x14
    b L2_16
L2_18:
    sub x14, x29, #312
    str x27, [x14]
    add x15, x14, #8
    movz x9, #1
    strb w9, [x15]
    sub x19, x29, #112
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #328]
    ldr x20, [sp, #320]
    ldr x21, [sp, #312]
    ldr x22, [sp, #304]
    ldr x23, [sp, #296]
    ldr x24, [sp, #288]
    ldr x25, [sp, #280]
    ldr x26, [sp, #272]
    ldr x27, [sp, #264]
    ldr x28, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_35:
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_strings_10format_i64
    .no_dead_strip _lb_strings_10format_i64
_lb_strings_10format_i64:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #120
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #136
    str w3, [x16]
    sub x14, x29, #104
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, lt
    cbnz w15, L3_1
    b L3_2
L3_1:
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.vc 1f
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x19, x9
    mov x9, #0
    mov x10, x19
    subs x9, x9, x10
    b.vc 1f
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x19, x9
    mov x9, x19
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x19, x9
    b L3_3
L3_2:
    mov x19, x14
L3_3:
    sub x14, x29, #120
    sub x20, x29, #136
    ldr w20, [x20]
    mov x0, x19
    mov x1, x15
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x20
    sub x8, x29, #184
    bl _lb_strings_14format_integer
    sub x20, x29, #184
    add x14, x20, #40
    ldrb w14, [x14]
    cbnz w14, L3_5
    b L3_4
L3_5:
    add x14, x20, #16
    sub x19, x29, #88
    add x15, x19, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_6:
L3_4:
    sub x19, x29, #88
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_7:
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_strings_10format_u64
    .no_dead_strip _lb_strings_10format_u64
_lb_strings_10format_u64:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #120
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #136
    str w3, [x16]
    sub x14, x29, #104
    ldr x14, [x14]
    sub x15, x29, #120
    sub x19, x29, #136
    ldr w19, [x19]
    mov x0, x14
    mov x1, #0
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x19
    sub x8, x29, #184
    bl _lb_strings_14format_integer
    sub x15, x29, #184
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L4_2
    b L4_1
L4_2:
    add x14, x15, #16
    sub x19, x29, #88
    add x20, x19, #16
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_3:
L4_1:
    sub x19, x29, #88
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_4:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_strings_13integer_digit
_lb_strings_13integer_digit:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    sub x16, x29, #56
    str w0, [x16]
    sub x14, x29, #56
    ldrb w14, [x14]
    movz x10, #48
    cmp w14, w10
    cset w15, hs
    cbnz w15, L5_4
    b L5_26
L5_26:
    mov w19, w15
    b L5_5
L5_4:
    movz x10, #57
    cmp w14, w10
    cset w19, ls
L5_5:
    and w15, w19, #255
    cbnz w15, L5_1
    b L5_2
L5_1:
    sub w19, w14, #48
    and w15, w19, #255
    cmp w15, w19
    b.eq L5_6
L5_7:
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
L5_6:
    mov w14, w19
    sub x15, x29, #64
    str w14, [x15]
    add x14, x15, #4
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #40
    mov x10, x15
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_8:
    b L5_3
L5_2:
L5_3:
    movz x10, #97
    cmp w14, w10
    cset w15, hs
    cbnz w15, L5_12
    b L5_27
L5_27:
    mov w19, w15
    b L5_13
L5_12:
    movz x10, #122
    cmp w14, w10
    cset w19, ls
L5_13:
    and w15, w19, #255
    cbnz w15, L5_9
    b L5_10
L5_9:
    sub w19, w14, #97
    and w15, w19, #255
    cmp w15, w19
    b.eq L5_14
L5_15:
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
L5_14:
    mov w14, w19
    add w14, w14, #10
    sub x15, x29, #72
    str w14, [x15]
    add x14, x15, #4
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #40
    mov x10, x15
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_16:
    b L5_11
L5_10:
L5_11:
    movz x10, #65
    cmp w14, w10
    cset w15, hs
    cbnz w15, L5_20
    b L5_28
L5_28:
    mov w19, w15
    b L5_21
L5_20:
    movz x10, #90
    cmp w14, w10
    cset w19, ls
L5_21:
    and w15, w19, #255
    cbnz w15, L5_17
    b L5_18
L5_17:
    sub w19, w14, #65
    and w15, w19, #255
    cmp w15, w19
    b.eq L5_22
L5_23:
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
L5_22:
    mov w14, w19
    add w14, w14, #10
    sub x15, x29, #80
    str w14, [x15]
    add x14, x15, #4
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #40
    mov x10, x15
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_24:
    b L5_19
L5_18:
L5_19:
    sub x19, x29, #88
    mov x11, x19
    str xzr, [x11, #0]
    sub x20, x29, #40
    mov x10, x19
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_25:
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_strings_14format_integer
_lb_strings_14format_integer:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #352
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #320]
    str x20, [sp, #312]
    str x21, [sp, #304]
    str x22, [sp, #296]
    str x23, [sp, #288]
    str x24, [sp, #280]
    sub x16, x29, #136
    str x0, [x16]
    sub x16, x29, #152
    str w1, [x16]
    sub x16, x29, #168
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #184
    str w4, [x16]
    sub x14, x29, #184
    ldr w19, [x14]
    movz x10, #2
    cmp w19, w10
    cset w14, lo
    cbnz w14, L6_31
    b L6_4
L6_31:
    mov w15, w14
    b L6_5
L6_4:
    movz x10, #36
    cmp w19, w10
    cset w15, hi
L6_5:
    and w14, w15, #255
    cbnz w14, L6_1
    b L6_2
L6_1:
    sub x19, x29, #120
    add x14, x19, #16
    adrp x15, _lb_strings_13invalid_radix@PAGE
    add x15, x15, _lb_strings_13invalid_radix@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_18@PAGE
    add x15, x15, l_text_18@PAGEOFF
    sub x20, x29, #200
    str x15, [x20]
    add x15, x20, #8
    movz x9, #41
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_2:
L6_3:
    sub x14, x29, #216
    adrp x20, l_text_19@PAGE
    add x20, x20, l_text_19@PAGEOFF
    sub x15, x29, #232
    str x20, [x15]
    add x21, x15, #8
    movz x9, #36
    str x9, [x21]
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x21, x29, #297
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    strb wzr, [x11, #64]
    sub x14, x29, #136
    ldr x14, [x14]
    mov w23, w19
    mov x10, #0
    cmp x23, x10
    cset w15, eq
    mov x9, #0
    mov x22, x9
L6_7:
L6_8:
    movz x10, #65
    cmp x22, x10
    b.lo 1f
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_30@PAGE
    add x1, x1, l_text_30@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x19, x21, x22
    cbnz w15, L6_10
    b L6_11
L6_10:
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_21@PAGE
    add x1, x1, l_text_21@PAGEOFF
    bl _lb_core_7trap_at
L6_11:
    udiv x11, x14, x23
    msub x24, x11, x23, x14
    movz x10, #36
    cmp x24, x10
    b.lo 1f
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_30@PAGE
    add x1, x1, l_text_30@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x24, x20, x24
    ldrb w24, [x24]
    strb w24, [x19]
    add x24, x22, #1
    cbnz w15, L6_12
    b L6_13
L6_12:
    adrp x0, l_text_23@PAGE
    add x0, x0, l_text_23@PAGEOFF
    adrp x1, l_text_21@PAGE
    add x1, x1, l_text_21@PAGEOFF
    bl _lb_core_7trap_at
L6_13:
    udiv x19, x14, x23
    mov x10, #0
    cmp x19, x10
    b.ne L6_15
L6_14:
    mov x14, x24
    b L6_9
L6_15:
L6_16:
    mov x22, x24
    mov x14, x19
    b L6_7
L6_9:
    sub x15, x29, #152
    ldrb w15, [x15]
    cbnz w15, L6_18
    b L6_19
L6_18:
    movz x10, #65
    cmp x14, x10
    b.lo 1f
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_30@PAGE
    add x1, x1, l_text_30@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x15, x21, x14
    movz x9, #45
    strb w9, [x15]
    add x15, x14, #1
    b L6_20
L6_19:
    mov x15, x14
L6_20:
    sub x14, x29, #168
    add x19, x14, #8
    ldr x19, [x19]
    cmp x19, x15
    b.hs L6_22
L6_21:
    sub x19, x29, #120
    add x14, x19, #16
    adrp x15, _lb_io_full@PAGE
    add x15, x15, _lb_io_full@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_26@PAGE
    add x15, x15, l_text_26@PAGEOFF
    sub x20, x29, #320
    str x15, [x20]
    add x15, x20, #8
    movz x9, #49
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_22:
L6_23:
    ldr x20, [x14]
    mov x9, #0
    mov x22, x9
L6_25:
    cmp x22, x15
    b.hs L6_27
L6_26:
    add x23, x20, x22
    sub x24, x15, x22
    mov x9, x24
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_27@PAGE
    add x0, x0, l_text_27@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x24, x9
    movz x10, #65
    cmp x24, x10
    b.lo 1f
    adrp x0, l_text_27@PAGE
    add x0, x0, l_text_27@PAGEOFF
    adrp x1, l_text_30@PAGE
    add x1, x1, l_text_30@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x24, x21, x24
    ldrb w24, [x24]
    strb w24, [x23]
    add x23, x22, #1
    mov x22, x23
    b L6_25
L6_27:
    ldr x21, [x14]
    add x20, x19, #1
    mov x9, #0
    cmp x9, x20
    b.lo 1f
    adrp x0, l_text_29@PAGE
    add x0, x0, l_text_29@PAGEOFF
    adrp x1, l_text_30@PAGE
    add x1, x1, l_text_30@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x15, x20
    b.lo 1f
    adrp x0, l_text_29@PAGE
    add x0, x0, l_text_29@PAGEOFF
    adrp x1, l_text_30@PAGE
    add x1, x1, l_text_30@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x15
    b.ls L6_28
L6_29:
    adrp x0, l_text_29@PAGE
    add x0, x0, l_text_29@PAGEOFF
    adrp x1, l_text_30@PAGE
    add x1, x1, l_text_30@PAGEOFF
    bl _lb_core_7trap_at
L6_28:
    sub x14, x29, #336
    str x21, [x14]
    add x14, x14, #8
    str x15, [x14]
    sub x14, x29, #352
    str x21, [x14]
    add x19, x14, #8
    str x15, [x19]
    sub x19, x29, #120
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_strings_numbers_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/strings/numbers.lucb:9:5"
l_text_1:
    .asciz "src/std/strings/numbers.lucb:10:9"
l_text_2:
    .asciz "src/std/strings/numbers.lucb:17:9"
l_text_3:
    .asciz "src/std/strings/numbers.lucb:22:9"
l_text_4:
    .asciz "unreachable"
l_text_5:
    .asciz "src/std/strings/numbers.lucb:23:5"
l_text_6:
    .asciz "src/std/strings/numbers.lucb:30:5"
l_text_7:
    .asciz "src/std/strings/numbers.lucb:35:9"
l_text_8:
    .asciz "src/std/strings/numbers.lucb:40:9"
l_text_9:
    .asciz "src/std/strings/numbers.lucb:41:5"
l_text_10:
    .asciz "src/std/strings/numbers.lucb:47:5"
l_text_11:
    .asciz "src/std/strings/numbers.lucb:48:5"
l_text_12:
    .asciz "src/std/strings/numbers.lucb:53:5"
l_text_13:
    .asciz "integer overflow"
l_text_14:
    .asciz "src/std/strings/numbers.lucb:57:9"
l_text_15:
    .asciz "src/std/strings/numbers.lucb:59:9"
l_text_16:
    .asciz "src/std/strings/numbers.lucb:61:9"
l_text_17:
    .asciz "src/std/strings/numbers.lucb:62:5"
l_text_18:
    .asciz "an integer radix must be between 2 and 36"
l_text_19:
    .asciz "0123456789abcdefghijklmnopqrstuvwxyz"
l_text_20:
    .asciz "src/std/strings/numbers.lucb:72:9"
l_text_21:
    .asciz "division by zero"
l_text_22:
    .asciz "src/std/strings/numbers.lucb:73:9"
l_text_23:
    .asciz "src/std/strings/numbers.lucb:74:9"
l_text_24:
    .asciz "src/std/strings/numbers.lucb:78:9"
l_text_25:
    .asciz "src/std/strings/numbers.lucb:79:9"
l_text_26:
    .asciz "the destination cannot hold the formatted integer"
l_text_27:
    .asciz "src/std/strings/numbers.lucb:84:9"
l_text_28:
    .asciz "src/std/strings/numbers.lucb:85:9"
l_text_29:
    .asciz "src/std/strings/numbers.lucb:86:5"
l_text_30:
    .asciz "index out of bounds"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
