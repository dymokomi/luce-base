    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_utf8_0init
_lb_utf8_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_utf8_16invalid_sequence@PAGE
    add x14, x14, _lb_utf8_16invalid_sequence@PAGEOFF
    movz x9, #54
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_utf8_19incomplete_sequence@PAGE
    add x14, x14, _lb_utf8_19incomplete_sequence@PAGEOFF
    movz x9, #55
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_utf8_14encoded_length
_lb_utf8_14encoded_length:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    sub x16, x29, #64
    str w0, [x16]
    sub x14, x29, #64
    ldr w14, [x14]
    movz x10, #65535
    movk x10, #16, lsl #16
    cmp w14, w10
    cset w15, hi
    cbnz w15, L1_21
    b L1_4
L1_21:
    mov w19, w15
    b L1_5
L1_4:
    movz x10, #55296
    cmp w14, w10
    cset w15, hs
    cbnz w15, L1_6
    b L1_22
L1_22:
    mov w19, w15
    b L1_7
L1_6:
    movz x10, #57343
    cmp w14, w10
    cset w19, ls
L1_7:
    and w15, w19, #255
    mov w19, w15
L1_5:
    and w15, w19, #255
    cbnz w15, L1_1
    b L1_2
L1_1:
    sub x19, x29, #80
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
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_8:
    b L1_3
L1_2:
L1_3:
    movz x10, #128
    cmp w14, w10
    b.hs L1_10
L1_9:
    sub x14, x29, #96
    movz x9, #1
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
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_12:
    b L1_11
L1_10:
L1_11:
    movz x10, #2048
    cmp w14, w10
    b.hs L1_14
L1_13:
    sub x14, x29, #112
    movz x9, #2
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
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_16:
    b L1_15
L1_14:
L1_15:
    movz x10, #1, lsl #16
    cmp w14, w10
    b.hs L1_18
L1_17:
    movz x9, #3
    mov x14, x9
    b L1_19
L1_18:
    movz x9, #4
    mov x14, x9
L1_19:
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
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_20:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_utf8_decode
_lb_utf8_decode:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #384
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #352]
    str x20, [sp, #344]
    str x21, [sp, #336]
    str x22, [sp, #328]
    str x23, [sp, #320]
    str x24, [sp, #312]
    str x25, [sp, #304]
    sub x16, x29, #120
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #136
    str x2, [x16]
    sub x14, x29, #136
    ldr x14, [x14]
    sub x15, x29, #120
    add x19, x15, #8
    ldr x19, [x19]
    cmp x14, x19
    b.lo L2_2
L2_1:
    sub x19, x29, #160
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #104
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
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_2:
L2_3:
    ldr x20, [x15]
    add x21, x14, x20
    ldrb w21, [x21]
    and w21, w21, #255
    movz x10, #128
    cmp w21, w10
    b.hs L2_6
L2_5:
    sub x19, x29, #176
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    mov w14, w21
    mov w14, w14
    adrp x15, l_text_3@PAGE
    add x15, x15, l_text_3@PAGEOFF
    mov x0, x14
    mov x1, #0
    mov x2, x15
    bl _lb_core_7to_char
    mov x14, x0
    str w14, [x19]
    add x14, x19, #8
    movz x9, #1
    str x9, [x14]
    sub x20, x29, #200
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #16
    movz x9, #1
    strb w9, [x14]
    sub x19, x29, #104
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_6:
L2_7:
    movz x10, #194
    cmp w21, w10
    cset w15, hs
    cbnz w15, L2_12
    b L2_47
L2_47:
    mov w22, w15
    b L2_13
L2_12:
    movz x10, #223
    cmp w21, w10
    cset w22, ls
L2_13:
    and w15, w22, #255
    cbnz w15, L2_9
    b L2_10
L2_9:
    movz x10, #31
    and w15, w21, w10
    mov w15, w15
    movz x9, #2
    mov x22, x9
    b L2_11
L2_10:
    movz x10, #224
    cmp w21, w10
    cset w15, hs
    cbnz w15, L2_17
    b L2_48
L2_48:
    mov w22, w15
    b L2_18
L2_17:
    movz x10, #239
    cmp w21, w10
    cset w22, ls
L2_18:
    and w15, w22, #255
    cbnz w15, L2_14
    b L2_15
L2_14:
    movz x10, #15
    and w15, w21, w10
    mov w15, w15
    movz x9, #3
    mov x22, x9
    b L2_16
L2_15:
    movz x10, #240
    cmp w21, w10
    cset w15, hs
    cbnz w15, L2_22
    b L2_49
L2_49:
    mov w22, w15
    b L2_23
L2_22:
    movz x10, #244
    cmp w21, w10
    cset w22, ls
L2_23:
    and w15, w22, #255
    cbnz w15, L2_19
    b L2_20
L2_19:
    movz x10, #7
    and w15, w21, w10
    mov w15, w15
    b L2_21
L2_20:
    sub x19, x29, #224
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #104
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
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_21:
    movz x9, #4
    mov x22, x9
L2_16:
L2_11:
    sub x21, x19, x14
    cmp x22, x21
    b.ls L2_26
L2_25:
    sub x19, x29, #248
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #104
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
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_26:
L2_27:
    mov w21, w15
    movz x9, #1
    mov x23, x9
L2_29:
    cmp x23, x22
    b.hs L2_31
L2_30:
    mov x9, x14
    mov x10, x23
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    cmp x15, x19
    b.lo 1f
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_32@PAGE
    add x1, x1, l_text_32@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x15, x20, x15
    ldrb w15, [x15]
    and w15, w15, #255
    movz x10, #192
    and w24, w15, w10
    movz x10, #128
    cmp w24, w10
    cset w24, eq
    mov x10, #0
    cmp w24, w10
    b.ne L2_33
L2_32:
    sub x19, x29, #272
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #104
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
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_33:
L2_34:
L2_37:
    lsl w24, w21, #6
    movz x10, #63
    and w25, w15, w10
    mov w25, w25
    orr w24, w24, w25
    add x25, x23, #1
    mov w21, w24
    mov x23, x25
    b L2_29
L2_31:
    mov x0, x21
    bl _lb_utf8_14encoded_length
    sub x16, x29, #288
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #288
    add x14, x15, #8
    ldrb w14, [x14]
    cbnz w14, L2_38
    b L2_39
L2_38:
    ldr x14, [x15]
    b L2_40
L2_39:
    sub x19, x29, #312
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #104
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
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_40:
    cmp x14, x22
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L2_43
L2_42:
    sub x19, x29, #336
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #104
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
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_43:
L2_44:
    sub x19, x29, #352
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    mov w14, w21
    mov w14, w14
    adrp x15, l_text_9@PAGE
    add x15, x15, l_text_9@PAGEOFF
    mov x0, x14
    mov x1, #0
    mov x2, x15
    bl _lb_core_7to_char
    mov x14, x0
    str w14, [x19]
    add x14, x19, #8
    str x22, [x14]
    sub x20, x29, #376
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #16
    movz x9, #1
    strb w9, [x14]
    sub x19, x29, #104
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_utf8_valid
_lb_utf8_valid:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    str x19, [sp, #216]
    str x20, [sp, #208]
    str x21, [sp, #200]
    str x22, [sp, #192]
    str x23, [sp, #184]
    str x24, [sp, #176]
    str x25, [sp, #168]
    str x26, [sp, #160]
    sub x16, x29, #96
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #96
    mov x10, x14
    sub x11, x29, #144
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x19, x29, #144
    add x20, x19, #8
    sub x25, x29, #160
    sub x26, x29, #184
    add x21, x26, #16
    sub x22, x29, #200
    add x23, x25, #8
    mov x9, #0
    mov x24, x9
L3_2:
    ldr x14, [x20]
    cmp x24, x14
    b.hs L3_4
L3_3:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x24
    sub x8, x29, #184
    bl _lb_utf8_decode
    ldrb w14, [x21]
    cbnz w14, L3_5
    b L3_6
L3_5:
    mov x10, x26
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L3_7
L3_6:
    sub x14, x29, #216
    str x24, [x14]
    add x15, x14, #8
    movz x9, #1
    strb w9, [x15]
    sub x19, x29, #128
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x19
    sub x11, x29, #112
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L3_10
L3_8:
L3_7:
    mov x10, x22
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x23]
    mov x9, x14
    mov x10, x24
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x24, x14
    b L3_2
L3_4:
    sub x19, x29, #232
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #128
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x20
    sub x11, x29, #112
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L3_10
L3_9:
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L3_10:
    sub x14, x29, #112
    add x14, x14, #8
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #216]
    ldr x20, [sp, #208]
    ldr x21, [sp, #200]
    ldr x22, [sp, #192]
    ldr x23, [sp, #184]
    ldr x24, [sp, #176]
    ldr x25, [sp, #168]
    ldr x26, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_1:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_utf8_encode
_lb_utf8_encode:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    str x19, [sp, #184]
    str x20, [sp, #176]
    str x21, [sp, #168]
    str x22, [sp, #160]
    str x23, [sp, #152]
    str x24, [sp, #144]
    str x25, [sp, #136]
    sub x16, x29, #104
    str w0, [x16]
    sub x16, x29, #120
    str x1, [x16]
    str x2, [x16, #8]
    sub x14, x29, #104
    ldr w19, [x14]
    mov x0, x19
    bl _lb_utf8_14encoded_length
    sub x16, x29, #136
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #136
    add x14, x15, #8
    ldrb w14, [x14]
    cbnz w14, L4_1
    b L4_2
L4_1:
    ldr x14, [x15]
    b L4_3
L4_2:
    sub x19, x29, #152
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #88
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #184]
    ldr x20, [sp, #176]
    ldr x21, [sp, #168]
    ldr x22, [sp, #160]
    ldr x23, [sp, #152]
    ldr x24, [sp, #144]
    ldr x25, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_3:
    sub x15, x29, #120
    add x20, x15, #8
    ldr x20, [x20]
    cmp x14, x20
    b.ls L4_6
L4_5:
    sub x19, x29, #168
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #88
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #184]
    ldr x20, [sp, #176]
    ldr x21, [sp, #168]
    ldr x22, [sp, #160]
    ldr x23, [sp, #152]
    ldr x24, [sp, #144]
    ldr x25, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_6:
L4_7:
    movz x10, #1
    cmp x14, x10
    b.ne L4_10
L4_9:
    ldr x14, [x15]
    mov x9, #0
    cmp x9, x20
    b.lo 1f
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_32@PAGE
    add x1, x1, l_text_32@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w21, w19
    and w21, w21, #255
    strb w21, [x14]
    sub x14, x29, #184
    movz x9, #1
    str x9, [x14]
    add x21, x14, #8
    movz x9, #1
    strb w9, [x21]
    sub x21, x29, #88
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x21
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #184]
    ldr x20, [sp, #176]
    ldr x21, [sp, #168]
    ldr x22, [sp, #160]
    ldr x23, [sp, #152]
    ldr x24, [sp, #144]
    ldr x25, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_10:
L4_11:
    ldr x21, [x15]
    mov w22, w19
    mov x23, x14
L4_13:
    movz x10, #1
    cmp x23, x10
    b.ls L4_15
L4_14:
    sub x19, x23, #1
    cmp x19, x20
    b.lo 1f
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_32@PAGE
    add x1, x1, l_text_32@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x24, x19, x21
    movz x10, #63
    and w25, w22, w10
    mov w25, w25
    and w25, w25, #255
    movz x10, #128
    orr w25, w25, w10
    strb w25, [x24]
L4_17:
    lsr w23, w22, #6
    mov w22, w23
    mov x23, x19
    b L4_13
L4_15:
    movz x10, #2
    cmp x14, x10
    b.ne L4_19
L4_18:
    movz x9, #192
    mov w19, w9
    b L4_20
L4_19:
    movz x10, #3
    cmp x14, x10
    b.ne L4_22
L4_21:
    movz x9, #224
    mov w19, w9
    b L4_23
L4_22:
    movz x9, #240
    mov w19, w9
L4_23:
    and w21, w19, #255
    mov w19, w21
L4_20:
    and w21, w19, #255
    ldr x23, [x15]
    mov x9, #0
    cmp x9, x20
    b.lo 1f
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_32@PAGE
    add x1, x1, l_text_32@PAGEOFF
    bl _lb_core_7trap_at
1:
    and w21, w21, #255
    mov w24, w22
    and w24, w24, #255
    orr w21, w21, w24
    strb w21, [x23]
    sub x21, x29, #200
    str x14, [x21]
    add x23, x21, #8
    movz x9, #1
    strb w9, [x23]
    sub x23, x29, #88
    mov x10, x21
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x23
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #184]
    ldr x20, [sp, #176]
    ldr x21, [sp, #168]
    ldr x22, [sp, #160]
    ldr x23, [sp, #152]
    ldr x24, [sp, #144]
    ldr x25, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_utf8_Decoder_push
_lb_utf8_Decoder_push:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    str x21, [sp, #192]
    str x22, [sp, #184]
    str x23, [sp, #176]
    str x24, [sp, #168]
    str x25, [sp, #160]
    sub x16, x29, #128
    str x0, [x16]
    sub x16, x29, #144
    str w1, [x16]
    sub x9, x29, #128
    ldr x19, [x9]
    mov x0, x19
    sub x8, x29, #176
    bl _lb_utf8_Decoder_13check_failure
    sub x15, x29, #176
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L5_2
    b L5_1
L5_2:
    sub x19, x29, #120
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    ldr x25, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_1:
    add x14, x19, #4
    ldrb w15, [x14]
    mov x10, #0
    cmp w15, w10
    b.ne L5_5
L5_4:
    sub x15, x29, #144
    ldrb w15, [x15]
    movz x10, #128
    cmp w15, w10
    b.hs L5_8
L5_7:
    mov w14, w15
    mov w14, w14
    adrp x19, l_text_19@PAGE
    add x19, x19, l_text_19@PAGEOFF
    mov x0, x14
    mov x1, #0
    mov x2, x19
    bl _lb_core_7to_char
    mov x14, x0
    sub x19, x29, #184
    str w14, [x19]
    add x14, x19, #4
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #120
    mov x10, x19
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    ldr x25, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_8:
L5_9:
    add x20, x19, #5
    movz x9, #128
    strb w9, [x20]
    add x21, x19, #6
    movz x9, #191
    strb w9, [x21]
    movz x10, #194
    cmp w15, w10
    cset w22, hs
    cbnz w22, L5_14
    b L5_55
L5_55:
    mov w23, w22
    b L5_15
L5_14:
    movz x10, #223
    cmp w15, w10
    cset w23, ls
L5_15:
    and w22, w23, #255
    cbnz w22, L5_11
    b L5_12
L5_11:
    movz x10, #31
    and w20, w15, w10
    mov w20, w20
    str w20, [x19]
    movz x9, #1
    strb w9, [x14]
    b L5_13
L5_12:
    movz x10, #224
    cmp w15, w10
    cset w22, hs
    cbnz w22, L5_19
    b L5_56
L5_56:
    mov w23, w22
    b L5_20
L5_19:
    movz x10, #239
    cmp w15, w10
    cset w23, ls
L5_20:
    and w22, w23, #255
    cbnz w22, L5_16
    b L5_17
L5_16:
    movz x10, #15
    and w22, w15, w10
    mov w22, w22
    str w22, [x19]
    movz x9, #2
    strb w9, [x14]
    movz x10, #224
    cmp w15, w10
    b.ne L5_22
L5_21:
    movz x9, #160
    strb w9, [x20]
    b L5_23
L5_22:
    movz x10, #237
    cmp w15, w10
    b.ne L5_25
L5_24:
    movz x9, #159
    strb w9, [x21]
    b L5_26
L5_25:
L5_26:
L5_23:
    b L5_18
L5_17:
    movz x10, #240
    cmp w15, w10
    cset w22, hs
    cbnz w22, L5_30
    b L5_57
L5_57:
    mov w23, w22
    b L5_31
L5_30:
    movz x10, #244
    cmp w15, w10
    cset w23, ls
L5_31:
    and w22, w23, #255
    cbnz w22, L5_27
    b L5_28
L5_27:
    movz x10, #7
    and w22, w15, w10
    mov w22, w22
    str w22, [x19]
    movz x9, #3
    strb w9, [x14]
    movz x10, #240
    cmp w15, w10
    b.ne L5_33
L5_32:
    movz x9, #144
    strb w9, [x20]
    b L5_34
L5_33:
    movz x10, #244
    cmp w15, w10
    b.ne L5_36
L5_35:
    movz x9, #143
    strb w9, [x21]
    b L5_37
L5_36:
L5_37:
L5_34:
    b L5_29
L5_28:
    add x14, x19, #7
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #120
    add x14, x20, #8
    adrp x15, _lb_utf8_16invalid_sequence@PAGE
    add x15, x15, _lb_utf8_16invalid_sequence@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_20@PAGE
    add x15, x15, l_text_20@PAGEOFF
    sub x21, x29, #200
    str x15, [x21]
    add x15, x21, #8
    movz x9, #26
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    ldr x25, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_29:
L5_18:
L5_13:
    sub x19, x29, #208
    mov x11, x19
    str xzr, [x11, #0]
    sub x20, x29, #120
    mov x10, x19
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    ldr x25, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_5:
L5_6:
    sub x20, x29, #144
    ldrb w20, [x20]
    add x21, x19, #5
    ldrb w22, [x21]
    cmp w20, w22
    cset w22, lo
    cbnz w22, L5_58
    b L5_43
L5_58:
    mov w23, w22
    b L5_44
L5_43:
    add x22, x19, #6
    ldrb w22, [x22]
    cmp w20, w22
    cset w23, hi
L5_44:
    and w22, w23, #255
    cbnz w22, L5_40
    b L5_41
L5_40:
    add x14, x19, #7
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #120
    add x14, x20, #8
    adrp x15, _lb_utf8_16invalid_sequence@PAGE
    add x15, x15, _lb_utf8_16invalid_sequence@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_21@PAGE
    add x15, x15, l_text_21@PAGEOFF
    sub x21, x29, #224
    str x15, [x21]
    add x15, x21, #8
    movz x9, #31
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    ldr x25, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_41:
L5_42:
    ldr w22, [x19]
L5_47:
    lsl w23, w22, #6
    movz x10, #63
    and w24, w20, w10
    mov w24, w24
    orr w23, w23, w24
    str w23, [x19]
    sub w25, w15, #1
    and w24, w25, #255
    cmp w24, w25
    b.eq L5_48
L5_49:
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
    bl _lb_core_7trap_at
L5_48:
    strb w25, [x14]
    movz x9, #128
    strb w9, [x21]
    add x15, x19, #6
    movz x9, #191
    strb w9, [x15]
    ldrb w15, [x14]
    mov x10, #0
    cmp w15, w10
    b.ne L5_51
L5_50:
    mov w14, w23
    mov w14, w14
    adrp x15, l_text_25@PAGE
    add x15, x15, l_text_25@PAGEOFF
    mov x0, x14
    mov x1, #0
    mov x2, x15
    bl _lb_core_7to_char
    mov x14, x0
    sub x15, x29, #232
    str w14, [x15]
    add x14, x15, #4
    movz x9, #1
    strb w9, [x14]
    sub x19, x29, #120
    mov x10, x15
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    ldr x25, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_51:
L5_52:
    sub x19, x29, #240
    mov x11, x19
    str xzr, [x11, #0]
    sub x20, x29, #120
    mov x10, x19
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    ldr x25, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_utf8_Decoder_finish
_lb_utf8_Decoder_finish:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    str x20, [sp, #88]
    sub x16, x29, #80
    str x0, [x16]
    sub x9, x29, #80
    ldr x19, [x9]
    mov x0, x19
    sub x8, x29, #112
    bl _lb_utf8_Decoder_13check_failure
    sub x15, x29, #112
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L6_2
    b L6_1
L6_2:
    sub x19, x29, #72
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_3:
L6_1:
    add x14, x19, #4
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L6_5
L6_4:
    add x14, x19, #7
    movz x9, #2
    strb w9, [x14]
    sub x20, x29, #72
    adrp x14, _lb_utf8_19incomplete_sequence@PAGE
    add x14, x14, _lb_utf8_19incomplete_sequence@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_27@PAGE
    add x14, x14, l_text_27@PAGEOFF
    sub x15, x29, #128
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_7:
    b L6_6
L6_5:
L6_6:
    sub x14, x29, #72
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_utf8_Decoder_10is_pending
_lb_utf8_Decoder_10is_pending:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x15, [x9]
    add x14, x15, #7
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L7_1
    b L7_4
L7_4:
    mov w15, w14
    b L7_2
L7_1:
    add x14, x15, #4
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov w15, w14
L7_2:
    and w14, w15, #255
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_3:
    adrp x0, l_text_28@PAGE
    add x0, x0, l_text_28@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_utf8_Decoder_9is_failed
_lb_utf8_Decoder_9is_failed:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    add x14, x14, #7
    ldrb w14, [x14]
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
L8_1:
    adrp x0, l_text_29@PAGE
    add x0, x0, l_text_29@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_utf8_Decoder_reset
_lb_utf8_Decoder_reset:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x15, [x9]
    mov x9, #0
    str w9, [x15]
    add x14, x15, #4
    mov x9, #0
    strb w9, [x14]
    add x14, x15, #5
    mov x9, #0
    strb w9, [x14]
    add x14, x15, #6
    mov x9, #0
    strb w9, [x14]
    add x14, x15, #7
    mov x9, #0
    strb w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_utf8_Decoder_13check_failure
_lb_utf8_Decoder_13check_failure:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    sub x16, x29, #72
    str x0, [x16]
    sub x9, x29, #72
    ldr x14, [x9]
    add x14, x14, #7
    ldrb w14, [x14]
    movz x10, #1
    cmp w14, w10
    b.ne L10_2
L10_1:
    sub x19, x29, #64
    adrp x14, _lb_utf8_16invalid_sequence@PAGE
    add x14, x14, _lb_utf8_16invalid_sequence@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_30@PAGE
    add x14, x14, l_text_30@PAGEOFF
    sub x15, x29, #88
    str x14, [x15]
    add x14, x15, #8
    movz x9, #46
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_4:
    b L10_3
L10_2:
L10_3:
    movz x10, #2
    cmp w14, w10
    b.ne L10_6
L10_5:
    sub x19, x29, #64
    adrp x14, _lb_utf8_19incomplete_sequence@PAGE
    add x14, x14, _lb_utf8_19incomplete_sequence@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_31@PAGE
    add x14, x14, l_text_31@PAGEOFF
    sub x15, x29, #104
    str x14, [x15]
    add x14, x15, #8
    movz x9, #47
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_8:
    b L10_7
L10_6:
L10_7:
    sub x14, x29, #64
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_utf8_0init

    .section __TEXT,__const
l_text_0:
    .asciz "unreachable"
l_text_1:
    .asciz "src/std/utf8/scalars.lucb:14:5"
l_text_2:
    .asciz "src/std/utf8/scalars.lucb:22:5"
l_text_3:
    .asciz "src/std/utf8/scalars.lucb:24:9"
l_text_4:
    .asciz "src/std/utf8/scalars.lucb:38:5"
l_text_5:
    .asciz "src/std/utf8/scalars.lucb:42:9"
l_text_6:
    .asciz "shift count out of range"
l_text_7:
    .asciz "src/std/utf8/scalars.lucb:45:9"
l_text_8:
    .asciz "src/std/utf8/scalars.lucb:46:9"
l_text_9:
    .asciz "src/std/utf8/scalars.lucb:50:5"
l_text_10:
    .asciz "src/std/utf8/scalars.lucb:58:9"
l_text_11:
    .asciz "src/std/utf8/scalars.lucb:59:5"
l_text_12:
    .asciz "src/std/utf8/scalars.lucb:63:5"
l_text_13:
    .asciz "src/std/utf8/scalars.lucb:73:9"
l_text_14:
    .asciz "src/std/utf8/scalars.lucb:78:9"
l_text_15:
    .asciz "src/std/utf8/scalars.lucb:79:9"
l_text_16:
    .asciz "src/std/utf8/scalars.lucb:80:9"
l_text_17:
    .asciz "src/std/utf8/scalars.lucb:82:5"
l_text_18:
    .asciz "src/std/utf8/scalars.lucb:83:5"
l_text_19:
    .asciz "src/std/utf8/decoder.lucb:23:17"
l_text_20:
    .asciz "invalid UTF-8 leading byte"
l_text_21:
    .asciz "invalid UTF-8 continuation byte"
l_text_22:
    .asciz "src/std/utf8/decoder.lucb:50:9"
l_text_23:
    .asciz "integer overflow"
l_text_24:
    .asciz "src/std/utf8/decoder.lucb:51:9"
l_text_25:
    .asciz "src/std/utf8/decoder.lucb:55:13"
l_text_26:
    .asciz "src/std/utf8/decoder.lucb:56:9"
l_text_27:
    .asciz "the UTF-8 stream ends within a scalar"
l_text_28:
    .asciz "src/std/utf8/decoder.lucb:70:9"
l_text_29:
    .asciz "src/std/utf8/decoder.lucb:74:9"
l_text_30:
    .asciz "the UTF-8 decoder has rejected malformed input"
l_text_31:
    .asciz "the UTF-8 decoder has rejected incomplete input"
l_text_32:
    .asciz "index out of bounds"

    .section __DATA,__const
    .p2align 3
    .globl _lb_utf8_16invalid_sequence
    .zerofill __DATA,__bss,_lb_utf8_16invalid_sequence,4,2
    .globl _lb_utf8_19incomplete_sequence
    .zerofill __DATA,__bss,_lb_utf8_19incomplete_sequence,4,2

