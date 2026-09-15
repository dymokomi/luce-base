    .text

    .p2align 2
    .globl lb_utf8_scalars_0init
    .type lb_utf8_scalars_0init, %function
lb_utf8_scalars_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_utf8_scalars_0init, .-lb_utf8_scalars_0init

    .p2align 2
    .globl lb_utf8_14encoded_length
    .type lb_utf8_14encoded_length, %function
lb_utf8_14encoded_length:
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
    cbnz w15, .L1_21
    b .L1_4
.L1_21:
    mov w12, w15
    b .L1_5
.L1_4:
    movz x10, #55296
    cmp w14, w10
    cset w15, hs
    cbnz w15, .L1_6
    b .L1_22
.L1_22:
    mov w12, w15
    b .L1_7
.L1_6:
    movz x10, #57343
    cmp w14, w10
    cset w12, ls
.L1_7:
    and w15, w12, #255
    mov w12, w15
.L1_5:
    and w15, w12, #255
    cbnz w15, .L1_1
    b .L1_2
.L1_1:
    sub x19, x29, #80
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
.L1_8:
    b .L1_3
.L1_2:
.L1_3:
    movz x10, #128
    cmp w14, w10
    b.hs .L1_10
.L1_9:
    sub x14, x29, #96
    movz x9, #1
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
.L1_12:
    b .L1_11
.L1_10:
.L1_11:
    movz x10, #2048
    cmp w14, w10
    b.hs .L1_14
.L1_13:
    sub x14, x29, #112
    movz x9, #2
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
.L1_16:
    b .L1_15
.L1_14:
.L1_15:
    movz x10, #1, lsl #16
    cmp w14, w10
    b.hs .L1_18
.L1_17:
    movz x9, #3
    mov x14, x9
    b .L1_19
.L1_18:
    movz x9, #4
    mov x14, x9
.L1_19:
    sub x15, x29, #128
    str x14, [x15]
    add x12, x15, #8
    movz x9, #1
    strb w9, [x12]
    sub x19, x29, #48
    mov x10, x15
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
.L1_20:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_utf8_14encoded_length, .-lb_utf8_14encoded_length

    .p2align 2
    .globl lb_utf8_decode
    .type lb_utf8_decode, %function
lb_utf8_decode:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #368
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #336]
    str x20, [sp, #328]
    str x21, [sp, #320]
    str x22, [sp, #312]
    str x23, [sp, #304]
    sub x16, x29, #104
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #120
    str x2, [x16]
    sub x14, x29, #120
    ldr x14, [x14]
    sub x15, x29, #104
    add x12, x15, #8
    ldr x12, [x12]
    cmp x14, x12
    b.lo .L2_2
.L2_1:
    sub x19, x29, #144
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #88
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_2:
.L2_3:
    ldr x13, [x15]
    add x19, x14, x13
    ldrb w19, [x19]
    and w19, w19, #255
    movz x10, #128
    cmp w19, w10
    b.hs .L2_6
.L2_5:
    sub x20, x29, #160
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    mov w14, w19
    mov w14, w14
    adrp x15, .Ltext_3
    add x15, x15, :lo12:.Ltext_3
    mov x0, x14
    mov x1, #0
    mov x2, x15
    bl lb_core_7to_char
    mov x14, x0
    str w14, [x20]
    add x14, x20, #8
    movz x9, #1
    str x9, [x14]
    sub x21, x29, #184
    mov x10, x20
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x21, #16
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #88
    mov x10, x21
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_6:
.L2_7:
    movz x10, #194
    cmp w19, w10
    cset w15, hs
    cbnz w15, .L2_12
    b .L2_47
.L2_47:
    mov w20, w15
    b .L2_13
.L2_12:
    movz x10, #223
    cmp w19, w10
    cset w20, ls
.L2_13:
    and w15, w20, #255
    cbnz w15, .L2_9
    b .L2_10
.L2_9:
    movz x10, #31
    and w15, w19, w10
    mov w15, w15
    movz x9, #2
    mov x20, x9
    b .L2_11
.L2_10:
    movz x10, #224
    cmp w19, w10
    cset w15, hs
    cbnz w15, .L2_17
    b .L2_48
.L2_48:
    mov w20, w15
    b .L2_18
.L2_17:
    movz x10, #239
    cmp w19, w10
    cset w20, ls
.L2_18:
    and w15, w20, #255
    cbnz w15, .L2_14
    b .L2_15
.L2_14:
    movz x10, #15
    and w15, w19, w10
    mov w15, w15
    movz x9, #3
    mov x20, x9
    b .L2_16
.L2_15:
    movz x10, #240
    cmp w19, w10
    cset w15, hs
    cbnz w15, .L2_22
    b .L2_49
.L2_49:
    mov w20, w15
    b .L2_23
.L2_22:
    movz x10, #244
    cmp w19, w10
    cset w20, ls
.L2_23:
    and w15, w20, #255
    cbnz w15, .L2_19
    b .L2_20
.L2_19:
    movz x10, #7
    and w15, w19, w10
    mov w15, w15
    b .L2_21
.L2_20:
    sub x19, x29, #208
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #88
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_21:
    movz x9, #4
    mov x20, x9
.L2_16:
.L2_11:
    sub x19, x12, x14
    cmp x20, x19
    b.ls .L2_26
.L2_25:
    sub x19, x29, #232
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #88
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_26:
.L2_27:
    mov w19, w15
    movz x9, #1
    mov x21, x9
.L2_29:
    cmp x21, x20
    b.hs .L2_31
.L2_30:
    mov x9, x14
    mov x10, x21
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_5
    add x0, x0, :lo12:.Ltext_5
    adrp x1, .Ltext_19
    add x1, x1, :lo12:.Ltext_19
    bl lb_core_7trap_at
1:
    mov x15, x9
    cmp x15, x12
    b.lo 1f
    adrp x0, .Ltext_5
    add x0, x0, :lo12:.Ltext_5
    adrp x1, .Ltext_20
    add x1, x1, :lo12:.Ltext_20
    bl lb_core_7trap_at
1:
    add x15, x13, x15
    ldrb w15, [x15]
    and w15, w15, #255
    movz x10, #192
    and w22, w15, w10
    movz x10, #128
    cmp w22, w10
    cset w22, eq
    mov x10, #0
    cmp w22, w10
    b.ne .L2_33
.L2_32:
    sub x19, x29, #256
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #88
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_33:
.L2_34:
.L2_37:
    lsl w22, w19, #6
    movz x10, #63
    and w23, w15, w10
    mov w23, w23
    orr w22, w22, w23
    add x23, x21, #1
    mov w19, w22
    mov x21, x23
    b .L2_29
.L2_31:
    mov x0, x19
    bl lb_utf8_14encoded_length
    sub x16, x29, #272
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #272
    add x14, x15, #8
    ldrb w14, [x14]
    cbnz w14, .L2_38
    b .L2_39
.L2_38:
    ldr x14, [x15]
    b .L2_40
.L2_39:
    sub x19, x29, #296
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #88
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_40:
    cmp x14, x20
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne .L2_43
.L2_42:
    sub x19, x29, #320
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #88
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_43:
.L2_44:
    sub x21, x29, #336
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    mov w14, w19
    mov w14, w14
    adrp x15, .Ltext_9
    add x15, x15, :lo12:.Ltext_9
    mov x0, x14
    mov x1, #0
    mov x2, x15
    bl lb_core_7to_char
    mov x14, x0
    str w14, [x21]
    add x14, x21, #8
    str x20, [x14]
    sub x22, x29, #360
    mov x10, x21
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x22, #16
    movz x9, #1
    strb w9, [x14]
    sub x21, x29, #88
    mov x10, x22
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_utf8_decode, .-lb_utf8_decode

    .p2align 2
    .globl lb_utf8_14invalid_offset
    .type lb_utf8_14invalid_offset, %function
lb_utf8_14invalid_offset:
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
.L3_1:
    ldr x14, [x20]
    cmp x24, x14
    b.hs .L3_3
.L3_2:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x24
    sub x8, x29, #152
    bl lb_utf8_decode
    ldrb w14, [x21]
    cbnz w14, .L3_4
    b .L3_5
.L3_4:
    mov x10, x26
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L3_6
.L3_5:
    sub x14, x29, #184
    str x24, [x14]
    add x15, x14, #8
    movz x9, #1
    strb w9, [x15]
    sub x19, x29, #96
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
.L3_7:
.L3_6:
    mov x10, x22
    mov x11, x25
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x14, [x23]
    mov x9, x14
    mov x10, x24
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_10
    add x0, x0, :lo12:.Ltext_10
    adrp x1, .Ltext_19
    add x1, x1, :lo12:.Ltext_19
    bl lb_core_7trap_at
1:
    mov x14, x9
    mov x24, x14
    b .L3_1
.L3_3:
    sub x19, x29, #200
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #96
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
.L3_8:
    adrp x0, .Ltext_11
    add x0, x0, :lo12:.Ltext_11
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_utf8_14invalid_offset, .-lb_utf8_14invalid_offset

    .p2align 2
    .globl lb_utf8_valid
    .type lb_utf8_valid, %function
lb_utf8_valid:
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
    bl lb_utf8_14invalid_offset
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
.L4_1:
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_utf8_valid, .-lb_utf8_valid

    .p2align 2
    .globl lb_utf8_encode
    .type lb_utf8_encode, %function
lb_utf8_encode:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    str x19, [sp, #168]
    str x20, [sp, #160]
    str x21, [sp, #152]
    str x22, [sp, #144]
    str x23, [sp, #136]
    sub x16, x29, #88
    str w0, [x16]
    sub x16, x29, #104
    str x1, [x16]
    str x2, [x16, #8]
    sub x14, x29, #88
    ldr w19, [x14]
    mov x0, x19
    bl lb_utf8_14encoded_length
    sub x16, x29, #120
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #120
    add x14, x15, #8
    ldrb w14, [x14]
    cbnz w14, .L5_1
    b .L5_2
.L5_1:
    ldr x14, [x15]
    b .L5_3
.L5_2:
    sub x19, x29, #136
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #72
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    ldr x22, [sp, #144]
    ldr x23, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_3:
    sub x15, x29, #104
    add x12, x15, #8
    ldr x12, [x12]
    cmp x14, x12
    b.ls .L5_6
.L5_5:
    sub x19, x29, #152
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #72
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    ldr x22, [sp, #144]
    ldr x23, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_6:
.L5_7:
    movz x10, #1
    cmp x14, x10
    b.ne .L5_10
.L5_9:
    ldr x14, [x15]
    mov x9, #0
    cmp x9, x12
    b.lo 1f
    adrp x0, .Ltext_13
    add x0, x0, :lo12:.Ltext_13
    adrp x1, .Ltext_20
    add x1, x1, :lo12:.Ltext_20
    bl lb_core_7trap_at
1:
    mov w13, w19
    and w13, w13, #255
    strb w13, [x14]
    sub x14, x29, #168
    movz x9, #1
    str x9, [x14]
    add x13, x14, #8
    movz x9, #1
    strb w9, [x13]
    sub x20, x29, #72
    mov x10, x14
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    ldr x22, [sp, #144]
    ldr x23, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_10:
.L5_11:
    ldr x13, [x15]
    mov w20, w19
    mov x21, x14
.L5_13:
    movz x10, #1
    cmp x21, x10
    b.ls .L5_15
.L5_14:
    sub x19, x21, #1
    cmp x19, x12
    b.lo 1f
    adrp x0, .Ltext_15
    add x0, x0, :lo12:.Ltext_15
    adrp x1, .Ltext_20
    add x1, x1, :lo12:.Ltext_20
    bl lb_core_7trap_at
1:
    add x22, x19, x13
    movz x10, #63
    and w23, w20, w10
    mov w23, w23
    and w23, w23, #255
    movz x10, #128
    orr w23, w23, w10
    strb w23, [x22]
.L5_17:
    lsr w21, w20, #6
    mov w20, w21
    mov x21, x19
    b .L5_13
.L5_15:
    movz x10, #2
    cmp x14, x10
    b.ne .L5_19
.L5_18:
    movz x9, #192
    mov w13, w9
    b .L5_20
.L5_19:
    movz x10, #3
    cmp x14, x10
    b.ne .L5_22
.L5_21:
    movz x9, #224
    mov w13, w9
    b .L5_23
.L5_22:
    movz x9, #240
    mov w13, w9
.L5_23:
    and w19, w13, #255
    mov w13, w19
.L5_20:
    and w19, w13, #255
    ldr x21, [x15]
    mov x9, #0
    cmp x9, x12
    b.lo 1f
    adrp x0, .Ltext_17
    add x0, x0, :lo12:.Ltext_17
    adrp x1, .Ltext_20
    add x1, x1, :lo12:.Ltext_20
    bl lb_core_7trap_at
1:
    and w19, w19, #255
    mov w22, w20
    and w22, w22, #255
    orr w19, w19, w22
    strb w19, [x21]
    sub x19, x29, #184
    str x14, [x19]
    add x21, x19, #8
    movz x9, #1
    strb w9, [x21]
    sub x21, x29, #72
    mov x10, x19
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x21
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    ldr x22, [sp, #144]
    ldr x23, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_utf8_encode, .-lb_utf8_encode

    .section .init_array,"aw"
    .p2align 3
    .quad lb_utf8_scalars_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/utf8/scalars.lucb:14:5"
.Ltext_2:
    .asciz "src/std/utf8/scalars.lucb:22:5"
.Ltext_3:
    .asciz "src/std/utf8/scalars.lucb:24:9"
.Ltext_4:
    .asciz "src/std/utf8/scalars.lucb:38:5"
.Ltext_5:
    .asciz "src/std/utf8/scalars.lucb:42:9"
.Ltext_6:
    .asciz "shift count out of range"
.Ltext_7:
    .asciz "src/std/utf8/scalars.lucb:45:9"
.Ltext_8:
    .asciz "src/std/utf8/scalars.lucb:46:9"
.Ltext_9:
    .asciz "src/std/utf8/scalars.lucb:50:5"
.Ltext_10:
    .asciz "src/std/utf8/scalars.lucb:58:9"
.Ltext_11:
    .asciz "src/std/utf8/scalars.lucb:59:5"
.Ltext_12:
    .asciz "src/std/utf8/scalars.lucb:63:5"
.Ltext_13:
    .asciz "src/std/utf8/scalars.lucb:73:9"
.Ltext_14:
    .asciz "src/std/utf8/scalars.lucb:78:9"
.Ltext_15:
    .asciz "src/std/utf8/scalars.lucb:79:9"
.Ltext_16:
    .asciz "src/std/utf8/scalars.lucb:80:9"
.Ltext_17:
    .asciz "src/std/utf8/scalars.lucb:82:5"
.Ltext_18:
    .asciz "src/std/utf8/scalars.lucb:83:5"
.Ltext_19:
    .asciz "integer overflow"
.Ltext_20:
    .asciz "index out of bounds"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
