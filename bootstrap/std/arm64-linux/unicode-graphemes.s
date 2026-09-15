    .text

    .p2align 2
    .globl lb_unicode_graphemes_0init
    .type lb_unicode_graphemes_0init, %function
lb_unicode_graphemes_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_unicode_graphemes_0init, .-lb_unicode_graphemes_0init

    .p2align 2
    .globl lb_unicode_GraphemeIterator_over
    .type lb_unicode_GraphemeIterator_over, %function
lb_unicode_GraphemeIterator_over:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    str x21, [sp, #112]
    sub x16, x29, #120
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #120
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_utf8_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L1_2
.L1_1:
    sub x19, x29, #104
    add x14, x19, #24
    adrp x15, lb_utf8_16invalid_sequence
    add x15, x15, :lo12:lb_utf8_16invalid_sequence
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_0
    add x15, x15, :lo12:.Ltext_0
    sub x20, x29, #136
    str x15, [x20]
    add x15, x20, #8
    movz x9, #18
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_4:
    b .L1_3
.L1_2:
.L1_3:
    sub x20, x29, #160
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x21, x29, #104
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #48
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_5:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_unicode_GraphemeIterator_over, .-lb_unicode_GraphemeIterator_over

    .p2align 2
    .globl lb_unicode_GraphemeIterator_next
    .type lb_unicode_GraphemeIterator_next, %function
lb_unicode_GraphemeIterator_next:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #432
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #400]
    str x20, [sp, #392]
    str x21, [sp, #384]
    str x22, [sp, #376]
    str x23, [sp, #368]
    str x24, [sp, #360]
    str x25, [sp, #352]
    str x26, [sp, #344]
    str x27, [sp, #336]
    str x28, [sp, #328]
    sub x16, x29, #136
    str x0, [x16]
    sub x9, x29, #136
    ldr x22, [x9]
    add x19, x22, #16
    ldr x9, [x19]
    str x9, [sp, #24]
    add x21, x22, #8
    ldr x14, [x21]
    ldr x9, [sp, #24]
    cmp x9, x14
    b.ne .L2_2
.L2_1:
    sub x19, x29, #160
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #128
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    ldr x24, [sp, #360]
    ldr x25, [sp, #352]
    ldr x26, [sp, #344]
    ldr x27, [sp, #336]
    ldr x28, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_4:
    b .L2_3
.L2_2:
.L2_3:
    sub x23, x29, #176
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x2, [sp, #24]
    sub x8, x29, #200
    bl lb_utf8_decode
    sub x15, x29, #200
    add x14, x15, #16
    ldrb w14, [x14]
    cbnz w14, .L2_5
    b .L2_6
.L2_5:
    sub x24, x29, #216
    mov x10, x15
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b .L2_7
.L2_6:
    adrp x14, .Ltext_3
    add x14, x14, :lo12:.Ltext_3
    sub x15, x29, #232
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
    str x9, [x14]
    adrp x14, .Ltext_4
    add x14, x14, :lo12:.Ltext_4
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at
.L2_7:
    mov x10, x24
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x25, x29, #237
    mov x11, x25
    str wzr, [x11, #0]
    strb wzr, [x11, #4]
    ldr w14, [x23]
    mov w26, w14
    sub x10, x29, #384
    str w26, [x10]
    adrp x9, lb_unicode_15grapheme_ranges
    add x9, x9, :lo12:lb_unicode_15grapheme_ranges
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x26
    bl lb_unicode_11range_value
    mov w14, w0
    mov w14, w14
    and w14, w14, #255
    mov w14, w14
    and w14, w14, #255
    and w14, w14, #255
    sub x10, x29, #392
    str w14, [x10]
    b .L2_22
.L2_21:
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at
.L2_22:
    mov x0, x25
    mov x1, x26
    mov x2, x14
    bl lb_unicode_GraphemeState_accept
    ldr x15, [x19]
    add x24, x23, #8
    ldr x24, [x24]
    mov x9, x15
    mov x10, x24
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_5
    add x0, x0, :lo12:.Ltext_5
    adrp x1, .Ltext_16
    add x1, x1, :lo12:.Ltext_16
    bl lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x19]
    sub x20, x29, #256
    sub x27, x29, #280
    add x24, x27, #16
    sub x28, x29, #296
    add x9, x20, #8
    str x9, [sp, #16]
.L2_8:
    ldr x14, [x21]
    cmp x15, x14
    b.hs .L2_10
.L2_9:
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x15
    sub x8, x29, #280
    bl lb_utf8_decode
    ldrb w14, [x24]
    cbnz w14, .L2_11
    b .L2_12
.L2_11:
    mov x10, x27
    mov x11, x28
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b .L2_13
.L2_12:
    adrp x14, .Ltext_3
    add x14, x14, :lo12:.Ltext_3
    sub x15, x29, #312
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
    str x9, [x14]
    adrp x14, .Ltext_6
    add x14, x14, :lo12:.Ltext_6
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at
.L2_13:
    mov x10, x28
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr w14, [x20]
    mov w23, w14
    sub x10, x29, #384
    str w23, [x10]
    ldr x9, [sp, #8]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x23
    bl lb_unicode_11range_value
    mov w14, w0
    mov w14, w14
    and w14, w14, #255
    mov w14, w14
    and w14, w14, #255
    and w14, w14, #255
    sub x10, x29, #400
    str w14, [x10]
    b .L2_24
.L2_23:
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at
.L2_24:
    and w26, w14, #255
    mov x0, x25
    mov x1, x23
    mov x2, x26
    bl lb_unicode_GraphemeState_12break_before
    mov w15, w0
    cbnz w15, .L2_14
    b .L2_15
.L2_14:
    b .L2_10
.L2_17:
    b .L2_16
.L2_15:
.L2_16:
    mov x0, x25
    mov x1, x23
    mov x2, x26
    bl lb_unicode_GraphemeState_accept
    ldr x14, [x19]
    ldr x9, [sp, #16]
    ldr x15, [x9]
    mov x9, x14
    mov x10, x15
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_7
    add x0, x0, :lo12:.Ltext_7
    adrp x1, .Ltext_16
    add x1, x1, :lo12:.Ltext_16
    bl lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x19]
    b .L2_8
.L2_10:
    ldr x15, [x22]
    ldr x14, [x21]
    ldr x20, [x19]
    add x14, x14, #1
    ldr x9, [sp, #24]
    cmp x9, x14
    b.lo 1f
    adrp x0, .Ltext_8
    add x0, x0, :lo12:.Ltext_8
    adrp x1, .Ltext_9
    add x1, x1, :lo12:.Ltext_9
    bl lb_core_7trap_at
1:
    cmp x20, x14
    b.lo 1f
    adrp x0, .Ltext_8
    add x0, x0, :lo12:.Ltext_8
    adrp x1, .Ltext_9
    add x1, x1, :lo12:.Ltext_9
    bl lb_core_7trap_at
1:
    ldr x9, [sp, #24]
    cmp x9, x20
    b.ls .L2_18
.L2_19:
    adrp x0, .Ltext_8
    add x0, x0, :lo12:.Ltext_8
    adrp x1, .Ltext_9
    add x1, x1, :lo12:.Ltext_9
    bl lb_core_7trap_at
.L2_18:
    ldr x9, [sp, #24]
    add x14, x9, x15
    ldr x10, [sp, #24]
    sub x19, x20, x10
    sub x21, x29, #328
    str x14, [x21]
    add x21, x21, #8
    str x19, [x21]
    sub x21, x29, #344
    str x14, [x21]
    add x14, x21, #8
    str x19, [x14]
    sub x19, x29, #368
    mov x10, x21
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #16
    movz x9, #1
    strb w9, [x14]
    sub x21, x29, #128
    mov x10, x19
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    ldr x24, [sp, #360]
    ldr x25, [sp, #352]
    ldr x26, [sp, #344]
    ldr x27, [sp, #336]
    ldr x28, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_20:
    adrp x0, .Ltext_8
    add x0, x0, :lo12:.Ltext_8
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_unicode_GraphemeIterator_next, .-lb_unicode_GraphemeIterator_next

    .p2align 2
    .globl lb_unicode_GraphemeIterator_11byte_offset
    .type lb_unicode_GraphemeIterator_11byte_offset, %function
lb_unicode_GraphemeIterator_11byte_offset:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    add x14, x14, #16
    ldr x14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_1:
    adrp x0, .Ltext_10
    add x0, x0, :lo12:.Ltext_10
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_unicode_GraphemeIterator_11byte_offset, .-lb_unicode_GraphemeIterator_11byte_offset

    .p2align 2
    .globl lb_unicode_GraphemeState_12break_before
    .type lb_unicode_GraphemeState_12break_before, %function
lb_unicode_GraphemeState_12break_before:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #136]
    str x20, [sp, #128]
    str x21, [sp, #120]
    str x22, [sp, #112]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str w1, [x16]
    sub x16, x29, #88
    str w2, [x16]
    sub x9, x29, #56
    ldr x19, [x9]
    ldrb w14, [x19]
    movz x10, #1
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L4_4
    b .L4_82
.L4_82:
    mov w20, w15
    b .L4_5
.L4_4:
    sub x15, x29, #88
    ldrb w15, [x15]
    movz x10, #2
    cmp w15, w10
    cset w20, eq
.L4_5:
    and w15, w20, #255
    cbnz w15, .L4_1
    b .L4_2
.L4_1:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_6:
    b .L4_3
.L4_2:
.L4_3:
    mov x0, x14
    bl lb_unicode_16grapheme_control
    mov w15, w0
    cbnz w15, .L4_83
    b .L4_10
.L4_83:
    mov w14, w15
    b .L4_11
.L4_10:
    sub x14, x29, #88
    ldrb w14, [x14]
    mov x0, x14
    bl lb_unicode_16grapheme_control
    mov w14, w0
.L4_11:
    and w15, w14, #255
    cbnz w15, .L4_7
    b .L4_8
.L4_7:
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_12:
    b .L4_9
.L4_8:
.L4_9:
    ldrb w20, [x19]
    sub x14, x29, #88
    ldrb w21, [x14]
    sub x10, x29, #104
    str w20, [x10]
    sub x10, x29, #120
    str w21, [x10]
    sub x14, x29, #104
    ldrb w14, [x14]
    sub x15, x29, #121
    strb w14, [x15]
    sub x22, x29, #122
    mov x10, x15
    mov x11, x22
    ldrb w12, [x10, #0]
    strb w12, [x11, #0]
    ldrb w14, [x22]
    movz x10, #9
    cmp w14, w10
    b.eq .L4_53
.L4_55:
    b .L4_54
.L4_53:
    sub x14, x29, #120
    ldrb w14, [x14]
    movz x10, #9
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L4_84
    b .L4_56
.L4_84:
    mov w22, w15
    b .L4_57
.L4_56:
    movz x10, #10
    cmp w14, w10
    cset w22, eq
.L4_57:
    and w15, w22, #255
    cbnz w15, .L4_85
    b .L4_58
.L4_85:
    mov w22, w15
    b .L4_59
.L4_58:
    movz x10, #12
    cmp w14, w10
    cset w22, eq
.L4_59:
    and w15, w22, #255
    cbnz w15, .L4_86
    b .L4_60
.L4_86:
    mov w14, w15
    b .L4_61
.L4_60:
    movz x10, #13
    cmp w14, w10
    cset w15, eq
    mov w14, w15
.L4_61:
    and w15, w14, #255
    and w15, w15, #255
    sub x10, x29, #136
    str w15, [x10]
    b .L4_79
.L4_62:
    b .L4_52
.L4_54:
    movz x10, #12
    cmp w14, w10
    b.eq .L4_63
.L4_65:
    movz x10, #10
    cmp w14, w10
    b.eq .L4_63
.L4_66:
    b .L4_64
.L4_63:
    sub x14, x29, #120
    ldrb w14, [x14]
    movz x10, #10
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L4_87
    b .L4_67
.L4_87:
    mov w14, w15
    b .L4_68
.L4_67:
    movz x10, #11
    cmp w14, w10
    cset w15, eq
    mov w14, w15
.L4_68:
    and w15, w14, #255
    and w15, w15, #255
    sub x10, x29, #136
    str w15, [x10]
    b .L4_79
.L4_69:
    b .L4_52
.L4_64:
    movz x10, #13
    cmp w14, w10
    b.eq .L4_70
.L4_72:
    movz x10, #11
    cmp w14, w10
    b.eq .L4_70
.L4_73:
    b .L4_71
.L4_70:
    sub x14, x29, #120
    ldrb w14, [x14]
    movz x10, #11
    cmp w14, w10
    cset w14, eq
    and w15, w14, #255
    sub x10, x29, #136
    str w15, [x10]
    b .L4_79
.L4_74:
    b .L4_52
.L4_71:
    b .L4_75
.L4_77:
    b .L4_76
.L4_75:
    mov x9, #0
    sub x10, x29, #136
    str w9, [x10]
    mov x9, #0
    mov w15, w9
    b .L4_79
.L4_78:
    b .L4_52
.L4_76:
.L4_52:
    adrp x0, .Ltext_15
    add x0, x0, :lo12:.Ltext_15
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at
.L4_79:
    cbnz w15, .L4_13
    b .L4_14
.L4_13:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_16:
    b .L4_15
.L4_14:
.L4_15:
    movz x10, #4
    cmp w21, w10
    cset w14, eq
    cbnz w14, .L4_88
    b .L4_20
.L4_88:
    mov w15, w14
    b .L4_21
.L4_20:
    movz x10, #5
    cmp w21, w10
    cset w15, eq
.L4_21:
    and w14, w15, #255
    cbnz w14, .L4_89
    b .L4_22
.L4_89:
    mov w15, w14
    b .L4_23
.L4_22:
    movz x10, #8
    cmp w21, w10
    cset w15, eq
.L4_23:
    and w14, w15, #255
    cbnz w14, .L4_17
    b .L4_18
.L4_17:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_24:
    b .L4_19
.L4_18:
.L4_19:
    movz x10, #7
    cmp w20, w10
    b.ne .L4_26
.L4_25:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_28:
    b .L4_27
.L4_26:
.L4_27:
    add x14, x19, #4
    ldrb w14, [x14]
    movz x10, #2
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L4_32
    b .L4_90
.L4_90:
    mov w15, w14
    b .L4_33
.L4_32:
    sub x14, x29, #72
    ldr w14, [x14]
    sub x10, x29, #152
    str w14, [x10]
    adrp x15, lb_unicode_12indic_ranges
    add x15, x15, :lo12:lb_unicode_12indic_ranges
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    bl lb_unicode_11range_value
    mov w14, w0
    mov w14, w14
    and w14, w14, #255
    mov w14, w14
    and w14, w14, #255
    and w14, w14, #255
    sub x10, x29, #160
    str w14, [x10]
    b .L4_81
.L4_80:
    adrp x0, .Ltext_13
    add x0, x0, :lo12:.Ltext_13
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at
.L4_81:
    movz x10, #1
    cmp w14, w10
    cset w15, eq
.L4_33:
    and w14, w15, #255
    cbnz w14, .L4_29
    b .L4_30
.L4_29:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_34:
    b .L4_31
.L4_30:
.L4_31:
    ldrb w14, [x19]
    movz x10, #5
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L4_38
    b .L4_91
.L4_91:
    mov w15, w14
    b .L4_39
.L4_38:
    add x14, x19, #3
    ldrb w15, [x14]
.L4_39:
    and w14, w15, #255
    cbnz w14, .L4_40
    b .L4_92
.L4_92:
    mov w15, w14
    b .L4_41
.L4_40:
    adrp x14, lb_unicode_19pictographic_ranges
    add x14, x14, :lo12:lb_unicode_19pictographic_ranges
    sub x15, x29, #72
    ldr w15, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x15
    bl lb_unicode_11range_value
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L4_41:
    and w14, w15, #255
    cbnz w14, .L4_35
    b .L4_36
.L4_35:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_42:
    b .L4_37
.L4_36:
.L4_37:
    ldrb w14, [x19]
    movz x10, #6
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L4_46
    b .L4_93
.L4_93:
    mov w15, w14
    b .L4_47
.L4_46:
    movz x10, #6
    cmp w21, w10
    cset w15, eq
.L4_47:
    and w14, w15, #255
    cbnz w14, .L4_48
    b .L4_94
.L4_94:
    mov w15, w14
    b .L4_49
.L4_48:
    add x14, x19, #1
    ldrb w15, [x14]
.L4_49:
    and w14, w15, #255
    cbnz w14, .L4_43
    b .L4_44
.L4_43:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_50:
    b .L4_45
.L4_44:
.L4_45:
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_51:
    adrp x0, .Ltext_11
    add x0, x0, :lo12:.Ltext_11
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_unicode_GraphemeState_12break_before, .-lb_unicode_GraphemeState_12break_before

    .p2align 2
    .globl lb_unicode_GraphemeState_accept
    .type lb_unicode_GraphemeState_accept, %function
lb_unicode_GraphemeState_accept:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    str x22, [sp, #64]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str w1, [x16]
    sub x16, x29, #88
    str w2, [x16]
    sub x9, x29, #56
    ldr x20, [x9]
    add x15, x20, #3
    sub x14, x29, #88
    ldrb w19, [x14]
    movz x10, #5
    cmp w19, w10
    cset w14, eq
    cbnz w14, .L5_1
    b .L5_26
.L5_26:
    mov w21, w14
    b .L5_2
.L5_1:
    add x14, x20, #2
    ldrb w21, [x14]
.L5_2:
    and w14, w21, #255
    strb w14, [x15]
    adrp x14, lb_unicode_19pictographic_ranges
    add x14, x14, :lo12:lb_unicode_19pictographic_ranges
    sub x22, x29, #72
    ldr w22, [x22]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x22
    bl lb_unicode_11range_value
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L5_4
.L5_3:
    add x14, x20, #2
    movz x9, #1
    strb w9, [x14]
    b .L5_5
.L5_4:
    movz x10, #4
    cmp w19, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L5_7
.L5_6:
    add x14, x20, #2
    mov x9, #0
    strb w9, [x14]
    b .L5_8
.L5_7:
.L5_8:
.L5_5:
    add x15, x20, #1
    movz x10, #6
    cmp w19, w10
    b.ne .L5_10
.L5_9:
    ldrb w14, [x15]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    b .L5_11
.L5_10:
    mov x9, #0
    mov w14, w9
.L5_11:
    and w21, w14, #255
    strb w21, [x15]
    sub x10, x29, #104
    str w22, [x10]
    adrp x21, lb_unicode_12indic_ranges
    add x21, x21, :lo12:lb_unicode_12indic_ranges
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x22
    bl lb_unicode_11range_value
    mov w21, w0
    mov w21, w21
    and w21, w21, #255
    mov w21, w21
    and w21, w21, #255
    and w21, w21, #255
    sub x10, x29, #112
    str w21, [x10]
    b .L5_25
.L5_24:
    adrp x0, .Ltext_13
    add x0, x0, :lo12:.Ltext_13
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at
.L5_25:
    and w14, w21, #255
    movz x10, #1
    cmp w14, w10
    b.ne .L5_13
.L5_12:
    add x14, x20, #4
    movz x9, #1
    strb w9, [x14]
    b .L5_14
.L5_13:
    movz x10, #2
    cmp w14, w10
    b.ne .L5_16
.L5_15:
    add x14, x20, #4
    ldrb w15, [x14]
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne .L5_19
.L5_18:
    movz x9, #2
    strb w9, [x14]
    b .L5_20
.L5_19:
.L5_20:
    b .L5_17
.L5_16:
    movz x10, #3
    cmp w14, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne .L5_22
.L5_21:
    add x14, x20, #4
    mov x9, #0
    strb w9, [x14]
    b .L5_23
.L5_22:
.L5_23:
.L5_17:
.L5_14:
    strb w19, [x20]
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_unicode_GraphemeState_accept, .-lb_unicode_GraphemeState_accept

    .p2align 2
    .globl lb_unicode_16grapheme_control
    .type lb_unicode_16grapheme_control, %function
lb_unicode_16grapheme_control:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str w0, [x16]
    sub x14, x29, #40
    ldrb w14, [x14]
    movz x10, #3
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L6_6
    b .L6_1
.L6_6:
    mov w19, w15
    b .L6_2
.L6_1:
    movz x10, #1
    cmp w14, w10
    cset w19, eq
.L6_2:
    and w15, w19, #255
    cbnz w15, .L6_7
    b .L6_3
.L6_7:
    mov w14, w15
    b .L6_4
.L6_3:
    movz x10, #2
    cmp w14, w10
    cset w15, eq
    mov w14, w15
.L6_4:
    and w15, w14, #255
    and w15, w15, #255
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_5:
    adrp x0, .Ltext_14
    add x0, x0, :lo12:.Ltext_14
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_unicode_16grapheme_control, .-lb_unicode_16grapheme_control

    .section .init_array,"aw"
    .p2align 3
    .quad lb_unicode_graphemes_0init

    .section .rodata
.Ltext_0:
    .asciz "invalid UTF-8 text"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/unicode/graphemes.lucb:13:9"
.Ltext_3:
    .asciz "the grapheme iterator's input changed"
.Ltext_4:
    .asciz "src/std/unicode/graphemes.lucb:20:9"
.Ltext_5:
    .asciz "src/std/unicode/graphemes.lucb:23:9"
.Ltext_6:
    .asciz "src/std/unicode/graphemes.lucb:25:13"
.Ltext_7:
    .asciz "src/std/unicode/graphemes.lucb:31:13"
.Ltext_8:
    .asciz "src/std/unicode/graphemes.lucb:32:9"
.Ltext_9:
    .asciz "index out of bounds"
.Ltext_10:
    .asciz "src/std/unicode/graphemes.lucb:36:9"
.Ltext_11:
    .asciz "src/std/unicode/graphemes.lucb:95:9"
.Ltext_12:
    .asciz "src/std/unicode/graphemes.lucb:115:5"
.Ltext_13:
    .asciz "src/std/unicode/graphemes.lucb:118:5"
.Ltext_14:
    .asciz "src/std/unicode/graphemes.lucb:121:5"
.Ltext_15:
    .asciz "src/std/unicode/graphemes.lucb:133:13"
.Ltext_16:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
