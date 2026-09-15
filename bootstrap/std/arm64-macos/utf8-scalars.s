    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_utf8_scalars_0init
_lb_utf8_scalars_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_utf8_14encoded_length
    .no_dead_strip _lb_utf8_14encoded_length
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
    .no_dead_strip _lb_utf8_decode
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
    adrp x1, l_text_19@PAGE
    add x1, x1, l_text_19@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    cmp x15, x19
    b.lo 1f
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
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
    .globl _lb_utf8_14invalid_offset
    .no_dead_strip _lb_utf8_14invalid_offset
_lb_utf8_14invalid_offset:
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
    str x26, [sp, #128]
    sub x16, x29, #112
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #112
    add x20, x19, #8
    sub x25, x29, #128
    sub x26, x29, #152
    add x21, x26, #16
    sub x22, x29, #168
    add x23, x25, #8
    mov x9, #0
    mov x24, x9
L3_1:
    ldr x14, [x20]
    cmp x24, x14
    b.hs L3_3
L3_2:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x24
    sub x8, x29, #152
    bl _lb_utf8_decode
    ldrb w14, [x21]
    cbnz w14, L3_4
    b L3_5
L3_4:
    mov x10, x26
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L3_6
L3_5:
    sub x14, x29, #184
    str x24, [x14]
    add x15, x14, #8
    movz x9, #1
    strb w9, [x15]
    sub x19, x29, #96
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #184]
    ldr x20, [sp, #176]
    ldr x21, [sp, #168]
    ldr x22, [sp, #160]
    ldr x23, [sp, #152]
    ldr x24, [sp, #144]
    ldr x25, [sp, #136]
    ldr x26, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_7:
L3_6:
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
    adrp x1, l_text_19@PAGE
    add x1, x1, l_text_19@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x24, x14
    b L3_1
L3_3:
    sub x19, x29, #200
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #96
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
    ldr x26, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_8:
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_utf8_valid
    .no_dead_strip _lb_utf8_valid
_lb_utf8_valid:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #32
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_utf8_14invalid_offset
    sub x16, x29, #48
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #48
    add x14, x14, #8
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_1:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_utf8_encode
    .no_dead_strip _lb_utf8_encode
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
    cbnz w14, L5_1
    b L5_2
L5_1:
    ldr x14, [x15]
    b L5_3
L5_2:
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
L5_3:
    sub x15, x29, #120
    add x20, x15, #8
    ldr x20, [x20]
    cmp x14, x20
    b.ls L5_6
L5_5:
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
L5_6:
L5_7:
    movz x10, #1
    cmp x14, x10
    b.ne L5_10
L5_9:
    ldr x14, [x15]
    mov x9, #0
    cmp x9, x20
    b.lo 1f
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
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
L5_10:
L5_11:
    ldr x21, [x15]
    mov w22, w19
    mov x23, x14
L5_13:
    movz x10, #1
    cmp x23, x10
    b.ls L5_15
L5_14:
    sub x19, x23, #1
    cmp x19, x20
    b.lo 1f
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
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
L5_17:
    lsr w23, w22, #6
    mov w22, w23
    mov x23, x19
    b L5_13
L5_15:
    movz x10, #2
    cmp x14, x10
    b.ne L5_19
L5_18:
    movz x9, #192
    mov w19, w9
    b L5_20
L5_19:
    movz x10, #3
    cmp x14, x10
    b.ne L5_22
L5_21:
    movz x9, #224
    mov w19, w9
    b L5_23
L5_22:
    movz x9, #240
    mov w19, w9
L5_23:
    and w21, w19, #255
    mov w19, w21
L5_20:
    and w21, w19, #255
    ldr x23, [x15]
    mov x9, #0
    cmp x9, x20
    b.lo 1f
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
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

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_utf8_scalars_0init

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
    .asciz "integer overflow"
l_text_20:
    .asciz "index out of bounds"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
