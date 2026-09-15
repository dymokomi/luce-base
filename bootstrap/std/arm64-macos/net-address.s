    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_net_address_0init
_lb_net_address_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_SocketAddress_loopback
    .no_dead_strip _lb_net_SocketAddress_loopback
_lb_net_SocketAddress_loopback:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #176]
    str x20, [sp, #168]
    str x21, [sp, #160]
    sub x16, x29, #88
    str w0, [x16]
    sub x16, x29, #104
    str w1, [x16]
    sub x14, x29, #104
    ldrb w19, [x14]
    mov x10, #0
    cmp w19, w10
    b.ne L1_2
L1_1:
    sub x19, x29, #128
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    movz x0, #1
    movk x0, #32512, lsl #16
    sub x8, x29, #145
    bl _lb_net_IpAddress_9from_ipv4
    sub x14, x29, #145
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrb w12, [x10, #16]
    strb w12, [x11, #16]
    sub x14, x29, #88
    ldrh w14, [x14]
    add x15, x19, #18
    strh w14, [x15]
    sub x20, x29, #72
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_4:
    b L1_3
L1_2:
L1_3:
    sub x20, x29, #162
    sub x21, x29, #179
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    strb wzr, [x11, #16]
    strb w19, [x21]
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrb w12, [x10, #16]
    strb w12, [x11, #16]
    add x14, x20, #1
    add x14, x14, #15
    movz x9, #1
    strb w9, [x14]
    sub x21, x29, #204
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrb w12, [x10, #16]
    strb w12, [x11, #16]
    sub x14, x29, #88
    ldrh w14, [x14]
    add x15, x21, #18
    strh w14, [x15]
    sub x20, x29, #72
    mov x10, x21
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_5:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_SocketAddress_any
    .no_dead_strip _lb_net_SocketAddress_any
_lb_net_SocketAddress_any:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    str x20, [sp, #104]
    sub x16, x29, #80
    str w0, [x16]
    sub x16, x29, #96
    str w1, [x16]
    sub x19, x29, #120
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #137
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    strb wzr, [x11, #16]
    sub x14, x29, #96
    ldrb w14, [x14]
    strb w14, [x20]
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrb w12, [x10, #16]
    strb w12, [x11, #16]
    sub x14, x29, #80
    ldrh w14, [x14]
    add x15, x19, #18
    strh w14, [x15]
    sub x20, x29, #64
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
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_1:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_SocketAddress_parse
    .no_dead_strip _lb_net_SocketAddress_parse
_lb_net_SocketAddress_parse:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #576
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #544]
    str x20, [sp, #536]
    str x21, [sp, #528]
    str x22, [sp, #520]
    str x23, [sp, #512]
    str x24, [sp, #504]
    str x25, [sp, #496]
    str x26, [sp, #488]
    str x27, [sp, #480]
    str x28, [sp, #472]
    sub x16, x29, #152
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #152
    add x15, x14, #8
    ldr x19, [x15]
    mov x10, #0
    cmp x19, x10
    cset w15, eq
    cbnz w15, L3_60
    b L3_4
L3_60:
    mov w20, w15
    b L3_5
L3_4:
    movz x10, #64
    cmp x19, x10
    cset w20, hi
L3_5:
    and w15, w20, #255
    cbnz w15, L3_1
    b L3_2
L3_1:
    sub x19, x29, #180
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str wzr, [x11, #24]
    sub x20, x29, #132
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr w12, [x10, #24]
    str w12, [x11, #24]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #28
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #544]
    ldr x20, [sp, #536]
    ldr x21, [sp, #528]
    ldr x22, [sp, #520]
    ldr x23, [sp, #512]
    ldr x24, [sp, #504]
    ldr x25, [sp, #496]
    ldr x26, [sp, #488]
    ldr x27, [sp, #480]
    ldr x28, [sp, #472]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_6:
    b L3_3
L3_2:
L3_3:
    ldr x20, [x14]
    mov x9, #0
    cmp x9, x19
    b.lo 1f
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldrb w15, [x20]
    movz x10, #91
    cmp w15, w10
    cset w15, eq
    and w21, w15, #255
    cbnz w21, L3_7
    b L3_8
L3_7:
    movz x9, #1
    mov x14, x9
L3_10:
    cmp x14, x19
    cset w15, lo
    cbnz w15, L3_13
    b L3_61
L3_61:
    mov w22, w15
    b L3_14
L3_13:
    add x15, x20, x14
    ldrb w15, [x15]
    movz x10, #93
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w22, eq
L3_14:
    and w15, w22, #255
    cbnz w15, L3_11
    b L3_12
L3_11:
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    mov x14, x15
    b L3_10
L3_12:
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    cmp x15, x19
    cset w22, hs
    cbnz w22, L3_62
    b L3_18
L3_62:
    mov w15, w22
    b L3_19
L3_18:
    add x22, x20, x15
    ldrb w22, [x22]
    movz x10, #58
    cmp w22, w10
    cset w22, eq
    mov x10, #0
    cmp w22, w10
    cset w22, eq
    mov w15, w22
L3_19:
    and w22, w15, #255
    cbnz w22, L3_15
    b L3_16
L3_15:
    sub x19, x29, #208
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str wzr, [x11, #24]
    sub x20, x29, #132
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr w12, [x10, #24]
    str w12, [x11, #24]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #28
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #544]
    ldr x20, [sp, #536]
    ldr x21, [sp, #528]
    ldr x22, [sp, #520]
    ldr x23, [sp, #512]
    ldr x24, [sp, #504]
    ldr x25, [sp, #496]
    ldr x26, [sp, #488]
    ldr x27, [sp, #480]
    ldr x28, [sp, #472]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_20:
    b L3_17
L3_16:
L3_17:
    mov x9, x14
    movz x10, #2
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    movz x9, #1
    mov x23, x9
L3_21:
    cmp x23, x14
    b.lo L3_22
L3_63:
    mov x15, x14
    mov x9, #0
    mov w23, w9
    b L3_23
L3_22:
    cmp x23, x19
    b.lo 1f
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x15, x20, x23
    ldrb w15, [x15]
    movz x10, #37
    cmp w15, w10
    b.ne L3_25
L3_24:
    add x24, x23, #1
    add x15, x19, #1
    cmp x24, x15
    b.lo 1f
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x14, x15
    b.lo 1f
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x24, x14
    b.ls L3_27
L3_28:
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
L3_27:
    add x15, x20, x24
    sub x25, x14, x24
    sub x26, x29, #224
    str x15, [x26]
    add x26, x26, #8
    str x25, [x26]
    sub x26, x29, #240
    str x15, [x26]
    add x15, x26, #8
    str x25, [x15]
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    movz x2, #65535
    movk x2, #65535, lsl #16
    movz x3, #10
    bl _lb_net_21parse_endpoint_number
    sub x16, x29, #248
    str x0, [x16, #0]
    sub x25, x29, #248
    add x15, x25, #4
    ldrb w15, [x15]
    cbnz w15, L3_29
    b L3_30
L3_29:
    ldr w14, [x25]
    b L3_31
L3_30:
    sub x19, x29, #276
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str wzr, [x11, #24]
    sub x20, x29, #132
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr w12, [x10, #24]
    str w12, [x11, #24]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #28
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #544]
    ldr x20, [sp, #536]
    ldr x21, [sp, #528]
    ldr x22, [sp, #520]
    ldr x23, [sp, #512]
    ldr x24, [sp, #504]
    ldr x25, [sp, #496]
    ldr x26, [sp, #488]
    ldr x27, [sp, #480]
    ldr x28, [sp, #472]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_32:
L3_31:
    mov x15, x23
    mov w23, w14
    b L3_23
L3_33:
    b L3_26
L3_25:
L3_26:
    add x15, x23, #1
    mov x23, x15
    b L3_21
L3_23:
    movz x9, #1
    mov x14, x9
    mov x24, x15
    mov x25, x22
    mov w26, w23
    b L3_9
L3_8:
    mov x9, #0
    mov x15, x9
L3_34:
    cmp x15, x19
    cset w14, lo
    cbnz w14, L3_37
    b L3_64
L3_64:
    mov w22, w14
    b L3_38
L3_37:
    add x14, x20, x15
    ldrb w14, [x14]
    movz x10, #58
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w22, eq
L3_38:
    and w14, w22, #255
    cbnz w14, L3_35
    b L3_36
L3_35:
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x15, x14
    b L3_34
L3_36:
    cmp x19, x15
    b.ne L3_40
L3_39:
    sub x19, x29, #304
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str wzr, [x11, #24]
    sub x20, x29, #132
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr w12, [x10, #24]
    str w12, [x11, #24]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #28
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #544]
    ldr x20, [sp, #536]
    ldr x21, [sp, #528]
    ldr x22, [sp, #520]
    ldr x23, [sp, #512]
    ldr x24, [sp, #504]
    ldr x25, [sp, #496]
    ldr x26, [sp, #488]
    ldr x27, [sp, #480]
    ldr x28, [sp, #472]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_42:
    b L3_41
L3_40:
L3_41:
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x25, x9
    mov x9, #0
    mov x14, x9
    mov x24, x15
    mov x9, #0
    mov w26, w9
L3_9:
    sub x23, x29, #321
    add x22, x19, #1
    cmp x14, x22
    b.lo 1f
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x24, x22
    b.lo 1f
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x14, x24
    b.ls L3_43
L3_44:
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
L3_43:
    add x15, x20, x14
    sub x27, x24, x14
    sub x28, x29, #344
    str x15, [x28]
    add x28, x28, #8
    str x27, [x28]
    sub x28, x29, #360
    str x15, [x28]
    add x15, x28, #8
    str x27, [x15]
    mov x9, x28
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #378
    bl _lb_net_IpAddress_parse
    sub x27, x29, #378
    add x15, x27, #17
    ldrb w15, [x15]
    cbnz w15, L3_45
    b L3_46
L3_45:
    sub x24, x29, #395
    mov x10, x27
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrb w12, [x10, #16]
    strb w12, [x11, #16]
    b L3_47
L3_46:
    sub x19, x29, #424
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str wzr, [x11, #24]
    sub x20, x29, #132
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr w12, [x10, #24]
    str w12, [x11, #24]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #28
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #544]
    ldr x20, [sp, #536]
    ldr x21, [sp, #528]
    ldr x22, [sp, #520]
    ldr x23, [sp, #512]
    ldr x24, [sp, #504]
    ldr x25, [sp, #496]
    ldr x26, [sp, #488]
    ldr x27, [sp, #480]
    ldr x28, [sp, #472]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_48:
L3_47:
    mov x10, x24
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrb w12, [x10, #16]
    strb w12, [x11, #16]
    ldrb w14, [x23]
    movz x10, #1
    cmp w14, w10
    cset w14, eq
    cmp w21, w14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L3_50
L3_49:
    sub x19, x29, #452
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str wzr, [x11, #24]
    sub x20, x29, #132
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr w12, [x10, #24]
    str w12, [x11, #24]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #28
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #544]
    ldr x20, [sp, #536]
    ldr x21, [sp, #528]
    ldr x22, [sp, #520]
    ldr x23, [sp, #512]
    ldr x24, [sp, #504]
    ldr x25, [sp, #496]
    ldr x26, [sp, #488]
    ldr x27, [sp, #480]
    ldr x28, [sp, #472]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_52:
    b L3_51
L3_50:
L3_51:
    cmp x25, x22
    b.lo 1f
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x19, x22
    b.lo 1f
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x25, x19
    b.ls L3_53
L3_54:
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
L3_53:
    add x14, x20, x25
    sub x15, x19, x25
    sub x21, x29, #472
    str x14, [x21]
    add x21, x21, #8
    str x15, [x21]
    sub x21, x29, #488
    str x14, [x21]
    add x14, x21, #8
    str x15, [x14]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    movz x2, #65535
    movz x3, #5
    bl _lb_net_21parse_endpoint_number
    sub x16, x29, #496
    str x0, [x16, #0]
    sub x15, x29, #496
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, L3_55
    b L3_56
L3_55:
    ldr w19, [x15]
    b L3_57
L3_56:
    sub x19, x29, #524
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str wzr, [x11, #24]
    sub x20, x29, #132
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr w12, [x10, #24]
    str w12, [x11, #24]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #28
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #544]
    ldr x20, [sp, #536]
    ldr x21, [sp, #528]
    ldr x22, [sp, #520]
    ldr x23, [sp, #512]
    ldr x24, [sp, #504]
    ldr x25, [sp, #496]
    ldr x26, [sp, #488]
    ldr x27, [sp, #480]
    ldr x28, [sp, #472]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_58:
L3_57:
    sub x20, x29, #548
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    mov x10, x23
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrb w12, [x10, #16]
    strb w12, [x11, #16]
    mov w14, w19
    and w14, w14, #65535
    add x15, x20, #18
    strh w14, [x15]
    add x14, x20, #20
    str w26, [x14]
    sub x21, x29, #576
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #132
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr w12, [x10, #24]
    str w12, [x11, #24]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #28
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #544]
    ldr x20, [sp, #536]
    ldr x21, [sp, #528]
    ldr x22, [sp, #520]
    ldr x23, [sp, #512]
    ldr x24, [sp, #504]
    ldr x25, [sp, #496]
    ldr x26, [sp, #488]
    ldr x27, [sp, #480]
    ldr x28, [sp, #472]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_59:
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_SocketAddress_equals
    .no_dead_strip _lb_net_SocketAddress_equals
_lb_net_SocketAddress_equals:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #64
    str x1, [x16]
    sub x0, x29, #64
    ldr x1, [x0]
    movz x2, #24
    bl _memcpy
    sub x9, x29, #40
    ldr x20, [x9]
    sub x19, x29, #64
    mov x0, x20
    mov x9, x19
    mov x1, x9
    bl _lb_net_IpAddress_equals
    mov w14, w0
    cbnz w14, L4_1
    b L4_6
L4_6:
    mov w15, w14
    b L4_2
L4_1:
    add x14, x20, #18
    ldrh w14, [x14]
    add x15, x19, #18
    ldrh w15, [x15]
    cmp w14, w15
    cset w15, eq
L4_2:
    and w14, w15, #255
    cbnz w14, L4_3
    b L4_7
L4_7:
    mov w15, w14
    b L4_4
L4_3:
    add x14, x20, #20
    ldr w14, [x14]
    add x15, x19, #20
    ldr w15, [x15]
    cmp w14, w15
    cset w15, eq
L4_4:
    and w14, w15, #255
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_5:
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_SocketAddress_format
    .no_dead_strip _lb_net_SocketAddress_format
_lb_net_SocketAddress_format:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #496
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #464]
    str x20, [sp, #456]
    str x21, [sp, #448]
    str x22, [sp, #440]
    str x23, [sp, #432]
    sub x16, x29, #120
    str x0, [x16]
    sub x16, x29, #136
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #120
    ldr x19, [x9]
    mov x0, x19
    sub x8, x29, #168
    bl _lb_net_SocketAddress_validate
    sub x15, x29, #168
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L5_2
    b L5_1
L5_2:
    sub x19, x29, #112
    add x14, x19, #16
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #464]
    ldr x20, [sp, #456]
    ldr x21, [sp, #448]
    ldr x22, [sp, #440]
    ldr x23, [sp, #432]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_1:
    sub x20, x29, #226
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    strh wzr, [x11, #56]
    ldrb w14, [x19]
    movz x10, #1
    cmp w14, w10
    b.ne L5_5
L5_4:
    movz x9, #91
    strb w9, [x20]
    sub x21, x29, #248
L5_7:
    add x14, x20, #1
    sub x15, x29, #264
    str x14, [x15]
    add x14, x15, #8
    movz x9, #39
    str x9, [x14]
    mov x0, x19
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #312
    bl _lb_net_IpAddress_format
    sub x15, x29, #312
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L5_10
    b L5_9
L5_10:
    add x14, x15, #16
    sub x19, x29, #112
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
    ldr x19, [sp, #464]
    ldr x20, [sp, #456]
    ldr x21, [sp, #448]
    ldr x22, [sp, #440]
    ldr x23, [sp, #432]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_9:
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #8
    ldr x14, [x14]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    add x22, x19, #20
    ldr w23, [x22]
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    mov x10, #0
    cmp w23, w10
    b.ne L5_13
L5_12:
    movz x10, #58
    cmp x14, x10
    b.lo 1f
    adrp x0, l_text_23@PAGE
    add x0, x0, l_text_23@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x15, x20, x14
    movz x9, #37
    strb w9, [x15]
    ldr w15, [x22]
    sub x21, x29, #328
    str x20, [x21]
    add x23, x21, #8
    movz x9, #58
    str x9, [x23]
    add x23, x14, #1
    mov x0, x15
    mov x9, x21
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x3, x23
    bl _lb_net_22render_endpoint_number
    mov x15, x0
    b L5_14
L5_13:
    mov x15, x14
L5_14:
    movz x10, #58
    cmp x15, x10
    b.lo 1f
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x20, x15
    movz x9, #93
    strb w9, [x14]
    add x14, x15, #1
    b L5_6
L5_5:
    sub x21, x29, #344
L5_15:
    sub x14, x29, #360
    str x20, [x14]
    add x15, x14, #8
    movz x9, #39
    str x9, [x15]
    mov x0, x19
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #408
    bl _lb_net_IpAddress_format
    sub x15, x29, #408
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L5_18
    b L5_17
L5_18:
    add x14, x15, #16
    sub x19, x29, #112
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
    ldr x19, [sp, #464]
    ldr x20, [sp, #456]
    ldr x21, [sp, #448]
    ldr x22, [sp, #440]
    ldr x23, [sp, #432]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_17:
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #8
    ldr x14, [x14]
L5_6:
    movz x10, #58
    cmp x14, x10
    b.lo 1f
    adrp x0, l_text_28@PAGE
    add x0, x0, l_text_28@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x15, x20, x14
    movz x9, #58
    strb w9, [x15]
    add x15, x19, #18
    ldrh w15, [x15]
    mov w15, w15
    sub x21, x29, #424
    str x20, [x21]
    add x22, x21, #8
    movz x9, #58
    str x9, [x22]
    add x22, x14, #1
    mov x0, x15
    mov x9, x21
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x3, x22
    bl _lb_net_22render_endpoint_number
    mov x21, x0
    sub x22, x29, #136
    add x23, x22, #8
    ldr x15, [x23]
    cmp x15, x21
    b.hs L5_21
L5_20:
    sub x19, x29, #112
    add x14, x19, #16
    adrp x15, _lb_io_full@PAGE
    add x15, x15, _lb_io_full@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_30@PAGE
    add x15, x15, l_text_30@PAGEOFF
    sub x20, x29, #440
    str x15, [x20]
    add x15, x20, #8
    movz x9, #56
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
    ldr x19, [sp, #464]
    ldr x20, [sp, #456]
    ldr x21, [sp, #448]
    ldr x22, [sp, #440]
    ldr x23, [sp, #432]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_21:
L5_22:
    sub x14, x29, #456
    str x20, [x14]
    add x15, x14, #8
    movz x9, #58
    str x9, [x15]
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x21
    bl _lb_memory_move_0g1_u8
    ldr x15, [x22]
    ldr x14, [x23]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_31@PAGE
    add x0, x0, l_text_31@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x21, x14
    b.lo 1f
    adrp x0, l_text_31@PAGE
    add x0, x0, l_text_31@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x21
    b.ls L5_24
L5_25:
    adrp x0, l_text_31@PAGE
    add x0, x0, l_text_31@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
L5_24:
    sub x14, x29, #472
    str x15, [x14]
    add x14, x14, #8
    str x21, [x14]
    sub x14, x29, #488
    str x15, [x14]
    add x19, x14, #8
    str x21, [x19]
    sub x19, x29, #112
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
    ldr x19, [sp, #464]
    ldr x20, [sp, #456]
    ldr x21, [sp, #448]
    ldr x22, [sp, #440]
    ldr x23, [sp, #432]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_SocketAddress_validate
_lb_net_SocketAddress_validate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    str x20, [sp, #72]
    sub x16, x29, #80
    str x0, [x16]
    sub x9, x29, #80
    ldr x20, [x9]
    ldrb w14, [x20]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w19, eq
    cbnz w19, L6_4
    b L6_13
L6_13:
    mov w14, w19
    b L6_5
L6_4:
    movz x10, #1
    cmp w14, w10
    cset w19, eq
    mov x10, #0
    cmp w19, w10
    cset w19, eq
    mov w14, w19
L6_5:
    and w19, w14, #255
    cbnz w19, L6_1
    b L6_2
L6_1:
    sub x19, x29, #72
    adrp x14, _lb_net_15invalid_options@PAGE
    add x14, x14, _lb_net_15invalid_options@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_32@PAGE
    add x14, x14, l_text_32@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #26
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
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_6:
    b L6_3
L6_2:
L6_3:
    cbnz w15, L6_10
    b L6_14
L6_14:
    mov w14, w15
    b L6_11
L6_10:
    add x14, x20, #20
    ldr w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L6_11:
    and w15, w14, #255
    cbnz w15, L6_7
    b L6_8
L6_7:
    sub x19, x29, #72
    adrp x14, _lb_net_15invalid_options@PAGE
    add x14, x14, _lb_net_15invalid_options@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_33@PAGE
    add x14, x14, l_text_33@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #45
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
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_12:
    b L6_9
L6_8:
L6_9:
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
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_SocketAddress_12write_native
    .no_dead_strip _lb_net_SocketAddress_12write_native
_lb_net_SocketAddress_12write_native:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #256
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #224]
    str x20, [sp, #216]
    str x21, [sp, #208]
    str x22, [sp, #200]
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #120
    str x1, [x16]
    sub x9, x29, #104
    ldr x19, [x9]
    mov x0, x19
    sub x8, x29, #152
    bl _lb_net_SocketAddress_validate
    sub x15, x29, #152
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L7_2
    b L7_1
L7_2:
    sub x19, x29, #96
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
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    ldr x22, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_1:
    ldrb w14, [x19]
    mov x10, #0
    cmp w14, w10
    b.ne L7_5
L7_4:
    mov x0, x19
    bl _lb_net_IpAddress_11ipv4_number
    sub x16, x29, #160
    str x0, [x16, #0]
    sub x15, x29, #160
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, L7_7
    b L7_8
L7_7:
    ldr w20, [x15]
    b L7_9
L7_8:
    sub x19, x29, #96
    add x14, x19, #8
    adrp x15, _lb_net_15invalid_options@PAGE
    add x15, x15, _lb_net_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_34@PAGE
    add x15, x15, l_text_34@PAGEOFF
    sub x20, x29, #176
    str x15, [x20]
    add x15, x20, #8
    movz x9, #29
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    ldr x22, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_9:
    sub x14, x29, #120
    ldr x21, [x14]
    sub x22, x29, #192
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    adrp x14, _lb_net_inet@PAGE
    add x14, x14, _lb_net_inet@PAGEOFF
    ldrsw x14, [x14]
    mov x0, x14
    movz x1, #16
    bl _lb_net_11family_word
    mov w14, w0
    strh w14, [x22]
    add x14, x19, #18
    ldrh w14, [x14]
    sub x10, x29, #240
    str w14, [x10]
    sub x14, x29, #240
    ldrh w14, [x14]
L7_14:
    lsl w15, w14, #8
    and w15, w15, #65535
L7_16:
    lsr w19, w14, #8
    and w19, w19, #65535
    orr w19, w19, w15
    and w19, w19, #65535
    sub x10, x29, #248
    str w19, [x10]
L7_18:
    add x14, x22, #2
    strh w19, [x14]
    mov x0, x20
    bl _lb_net_swap32
    mov w14, w0
    add x15, x22, #4
    str w14, [x15]
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #96
    movz x9, #16
    str w9, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    ldr x22, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_5:
L7_6:
    sub x14, x29, #120
    ldr x20, [x14]
    sub x21, x29, #220
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str wzr, [x11, #24]
    adrp x14, _lb_net_inet6@PAGE
    add x14, x14, _lb_net_inet6@PAGEOFF
    ldrsw x14, [x14]
    mov x0, x14
    movz x1, #28
    bl _lb_net_11family_word
    mov w14, w0
    strh w14, [x21]
    add x14, x19, #18
    ldrh w14, [x14]
    sub x10, x29, #240
    str w14, [x10]
    sub x14, x29, #240
    ldrh w14, [x14]
L7_20:
    lsl w15, w14, #8
    and w15, w15, #65535
L7_22:
    lsr w22, w14, #8
    and w22, w22, #65535
    orr w22, w22, w15
    and w22, w22, #65535
    sub x10, x29, #256
    str w22, [x10]
L7_24:
    add x14, x21, #2
    strh w22, [x14]
    add x14, x19, #1
    add x15, x21, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #20
    ldr w14, [x14]
    add x15, x21, #24
    str w14, [x15]
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr w12, [x10, #24]
    str w12, [x11, #24]
    sub x14, x29, #96
    movz x9, #28
    str w9, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    ldr x22, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_14decode_address
    .no_dead_strip _lb_net_14decode_address
_lb_net_14decode_address:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #592
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #560]
    str x20, [sp, #552]
    str x21, [sp, #544]
    str x22, [sp, #536]
    sub x16, x29, #128
    str x0, [x16]
    sub x16, x29, #144
    str w1, [x16]
    sub x14, x29, #144
    ldr w19, [x14]
    movz x10, #2
    cmp w19, w10
    b.hs L8_2
L8_1:
    sub x19, x29, #112
    add x14, x19, #24
    adrp x15, _lb_net_failed@PAGE
    add x15, x15, _lb_net_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_36@PAGE
    add x15, x15, l_text_36@PAGEOFF
    sub x20, x29, #160
    str x15, [x20]
    add x15, x20, #8
    movz x9, #51
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
    ldr x19, [sp, #560]
    ldr x20, [sp, #552]
    ldr x21, [sp, #544]
    ldr x22, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_2:
L8_3:
    sub x14, x29, #128
    ldr x20, [x14]
    sub x10, x29, #408
    str x20, [x10]
    sub x21, x29, #410
    mov x0, x21
    mov x1, x20
    movz x2, #2
    bl _memcpy
    mov x14, x0
    cbnz x14, L8_31
    b L8_32
L8_32:
    adrp x0, l_text_61@PAGE
    add x0, x0, l_text_61@PAGEOFF
    adrp x1, l_text_60@PAGE
    add x1, x1, l_text_60@PAGEOFF
    bl _lb_core_7trap_at
L8_31:
    ldrh w14, [x21]
    and w14, w14, #65535
    sub x10, x29, #424
    str w14, [x10]
L8_34:
    adrp x15, _lb_platform_macos@PAGE
    add x15, x15, _lb_platform_macos@PAGEOFF
    ldrb w15, [x15]
    cbnz w15, L8_5
    b L8_6
L8_5:
    and w15, w14, #65535
L8_9:
    lsr w21, w15, #8
    and w21, w21, #65535
    mov w21, w21
    b L8_7
L8_6:
    and w15, w14, #65535
    mov w21, w15
L8_7:
    adrp x15, _lb_net_inet@PAGE
    add x15, x15, _lb_net_inet@PAGEOFF
    ldrsw x15, [x15]
    cmp w15, w21
    b.ne L8_11
L8_10:
    movz x10, #16
    cmp w19, w10
    cset w21, lo
    cbnz w21, L8_55
    b L8_16
L8_55:
    mov w14, w21
    b L8_17
L8_16:
    and w19, w14, #65535
    mov x0, x15
    movz x1, #16
    bl _lb_net_11family_word
    mov w21, w0
    cmp w19, w21
    cset w19, eq
    mov x10, #0
    cmp w19, w10
    cset w19, eq
    mov w14, w19
L8_17:
    and w15, w14, #255
    cbnz w15, L8_13
    b L8_14
L8_13:
    sub x19, x29, #112
    add x14, x19, #24
    adrp x15, _lb_net_failed@PAGE
    add x15, x15, _lb_net_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_39@PAGE
    add x15, x15, l_text_39@PAGEOFF
    sub x20, x29, #176
    str x15, [x20]
    add x15, x20, #8
    movz x9, #45
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
    ldr x19, [sp, #560]
    ldr x20, [sp, #552]
    ldr x21, [sp, #544]
    ldr x22, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_14:
L8_15:
    sub x21, x29, #192
    sub x10, x29, #456
    str x20, [x10]
    sub x19, x29, #472
    mov x0, x19
    mov x1, x20
    movz x2, #16
    bl _memcpy
    mov x14, x0
    cbnz x14, L8_35
    b L8_36
L8_36:
    adrp x0, l_text_61@PAGE
    add x0, x0, l_text_61@PAGEOFF
    adrp x1, l_text_60@PAGE
    add x1, x1, l_text_60@PAGEOFF
    bl _lb_core_7trap_at
L8_35:
    sub x20, x29, #440
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x20
    sub x11, x29, #208
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L8_38:
    sub x14, x29, #208
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x19, x29, #232
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    add x14, x21, #4
    ldr w14, [x14]
    mov x0, x14
    bl _lb_net_swap32
    mov w14, w0
    mov x0, x14
    sub x8, x29, #249
    bl _lb_net_IpAddress_9from_ipv4
    sub x14, x29, #249
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrb w12, [x10, #16]
    strb w12, [x11, #16]
    add x14, x21, #2
    ldrh w14, [x14]
    sub x10, x29, #488
    str w14, [x10]
    sub x14, x29, #488
    ldrh w14, [x14]
L8_40:
    lsl w15, w14, #8
    and w15, w15, #65535
L8_42:
    lsr w20, w14, #8
    and w20, w20, #65535
    orr w20, w20, w15
    and w20, w20, #65535
    sub x10, x29, #496
    str w20, [x10]
L8_44:
    add x14, x19, #18
    strh w20, [x14]
    sub x21, x29, #112
    mov x10, x19
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
    ldr x19, [sp, #560]
    ldr x20, [sp, #552]
    ldr x21, [sp, #544]
    ldr x22, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_11:
L8_12:
    adrp x15, _lb_net_inet6@PAGE
    add x15, x15, _lb_net_inet6@PAGEOFF
    ldrsw x15, [x15]
    cmp w15, w21
    b.ne L8_21
L8_20:
    movz x10, #28
    cmp w19, w10
    cset w21, lo
    cbnz w21, L8_56
    b L8_26
L8_56:
    mov w14, w21
    b L8_27
L8_26:
    and w19, w14, #65535
    mov x0, x15
    movz x1, #28
    bl _lb_net_11family_word
    mov w21, w0
    cmp w19, w21
    cset w19, eq
    mov x10, #0
    cmp w19, w10
    cset w19, eq
    mov w14, w19
L8_27:
    and w15, w14, #255
    cbnz w15, L8_23
    b L8_24
L8_23:
    sub x19, x29, #112
    add x14, x19, #24
    adrp x15, _lb_net_failed@PAGE
    add x15, x15, _lb_net_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_40@PAGE
    add x15, x15, l_text_40@PAGEOFF
    sub x20, x29, #272
    str x15, [x20]
    add x15, x20, #8
    movz x9, #45
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
    ldr x19, [sp, #560]
    ldr x20, [sp, #552]
    ldr x21, [sp, #544]
    ldr x22, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_24:
L8_25:
    sub x21, x29, #300
    sub x10, x29, #544
    str x20, [x10]
    sub x19, x29, #572
    mov x0, x19
    mov x1, x20
    movz x2, #28
    bl _memcpy
    mov x14, x0
    cbnz x14, L8_45
    b L8_46
L8_46:
    adrp x0, l_text_61@PAGE
    add x0, x0, l_text_61@PAGEOFF
    adrp x1, l_text_60@PAGE
    add x1, x1, l_text_60@PAGEOFF
    bl _lb_core_7trap_at
L8_45:
    sub x20, x29, #524
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr w12, [x10, #24]
    str w12, [x11, #24]
    mov x10, x20
    sub x11, x29, #328
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr w12, [x10, #24]
    str w12, [x11, #24]
L8_48:
    sub x14, x29, #328
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr w12, [x10, #24]
    str w12, [x11, #24]
    sub x20, x29, #352
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x19, x29, #369
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    strb wzr, [x11, #16]
    movz x9, #1
    strb w9, [x19]
    add x14, x21, #8
    add x15, x19, #1
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrb w12, [x10, #16]
    strb w12, [x11, #16]
    add x14, x21, #2
    ldrh w14, [x14]
    sub x10, x29, #488
    str w14, [x10]
    sub x14, x29, #488
    ldrh w14, [x14]
L8_50:
    lsl w15, w14, #8
    and w15, w15, #65535
L8_52:
    lsr w19, w14, #8
    and w19, w19, #65535
    orr w19, w19, w15
    and w19, w19, #65535
    sub x10, x29, #584
    str w19, [x10]
L8_54:
    add x14, x20, #18
    strh w19, [x14]
    add x14, x21, #24
    ldr w14, [x14]
    add x15, x20, #20
    str w14, [x15]
    sub x22, x29, #112
    mov x10, x20
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #48
    mov x9, #0
    strb w9, [x14]
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #560]
    ldr x20, [sp, #552]
    ldr x21, [sp, #544]
    ldr x22, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_21:
L8_22:
    sub x19, x29, #112
    add x14, x19, #24
    adrp x15, _lb_net_failed@PAGE
    add x15, x15, _lb_net_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_41@PAGE
    add x15, x15, l_text_41@PAGEOFF
    sub x20, x29, #392
    str x15, [x20]
    add x15, x20, #8
    movz x9, #38
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
    ldr x19, [sp, #560]
    ldr x20, [sp, #552]
    ldr x21, [sp, #544]
    ldr x22, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_21parse_endpoint_number
_lb_net_21parse_endpoint_number:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #136]
    str x20, [sp, #128]
    str x21, [sp, #120]
    str x22, [sp, #112]
    str x23, [sp, #104]
    str x24, [sp, #96]
    sub x16, x29, #88
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #104
    str w2, [x16]
    sub x16, x29, #120
    str x3, [x16]
    sub x14, x29, #88
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    cset w19, eq
    cbnz w19, L9_26
    b L9_4
L9_26:
    mov w20, w19
    b L9_5
L9_4:
    sub x19, x29, #120
    ldr x19, [x19]
    cmp x15, x19
    cset w20, hi
L9_5:
    and w19, w20, #255
    cbnz w19, L9_1
    b L9_2
L9_1:
    sub x19, x29, #128
    mov x11, x19
    str xzr, [x11, #0]
    sub x20, x29, #72
    mov x10, x19
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    ldr x23, [sp, #104]
    ldr x24, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_2:
L9_3:
    ldr x19, [x14]
    sub x20, x29, #104
    ldr w20, [x20]
    mov x9, #0
    mov w21, w9
    mov x9, #0
    mov x22, x9
L9_7:
    cmp x22, x15
    b.hs L9_10
L9_8:
    add x14, x19, x22
    ldrb w14, [x14]
    and w14, w14, #255
    movz x10, #48
    cmp w14, w10
    cset w23, lo
    cbnz w23, L9_27
    b L9_14
L9_27:
    mov w24, w23
    b L9_15
L9_14:
    movz x10, #57
    cmp w14, w10
    cset w24, hi
L9_15:
    and w23, w24, #255
    cbnz w23, L9_11
    b L9_12
L9_11:
    sub x19, x29, #136
    mov x11, x19
    str xzr, [x11, #0]
    sub x20, x29, #72
    mov x10, x19
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    ldr x23, [sp, #104]
    ldr x24, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_12:
L9_13:
    sub w24, w14, #48
    and w23, w24, #255
    cmp w23, w24
    b.eq L9_17
L9_18:
    adrp x0, l_text_44@PAGE
    add x0, x0, l_text_44@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
L9_17:
    mov w14, w24
    mov w9, w20
    mov w10, w14
    subs w9, w9, w10
    b.cs 1f
    adrp x0, l_text_45@PAGE
    add x0, x0, l_text_45@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w23, w9
L9_23:
    movz x10, #10
    udiv w24, w23, w10
    cmp w21, w24
    b.ls L9_20
L9_19:
    sub x19, x29, #144
    mov x11, x19
    str xzr, [x11, #0]
    sub x20, x29, #72
    mov x10, x19
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    ldr x23, [sp, #104]
    ldr x24, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_20:
L9_21:
    mov w9, w21
    movz x10, #10
    mov w9, w9
    mov w10, w10
    mul x9, x9, x10
    cmp x9, w9, uxtw
    b.eq 1f
    adrp x0, l_text_47@PAGE
    add x0, x0, l_text_47@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w23, w9
    mov w9, w14
    mov w10, w23
    adds w9, w9, w10
    b.cc 1f
    adrp x0, l_text_47@PAGE
    add x0, x0, l_text_47@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w23, w9
L9_9:
    add x14, x22, #1
    mov w21, w23
    mov x22, x14
    b L9_7
L9_10:
    sub x14, x29, #152
    str w21, [x14]
    add x15, x14, #4
    movz x9, #1
    strb w9, [x15]
    sub x19, x29, #72
    mov x10, x14
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    ldr x23, [sp, #104]
    ldr x24, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_22render_endpoint_number
_lb_net_22render_endpoint_number:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    str x22, [sp, #80]
    str x23, [sp, #72]
    str x24, [sp, #64]
    sub x16, x29, #80
    str w0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #112
    str x3, [x16]
    sub x19, x29, #128
    mov x11, x19
    str xzr, [x11, #0]
    strh wzr, [x11, #8]
    sub x14, x29, #80
    ldr w14, [x14]
    mov x9, #0
    mov x15, x9
L10_1:
L10_2:
    movz x10, #10
    cmp x15, x10
    b.lo 1f
    adrp x0, l_text_49@PAGE
    add x0, x0, l_text_49@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x20, x19, x15
L10_5:
    movz x10, #10
    udiv w11, w14, w10
    msub w21, w11, w10, w14
    mov w21, w21
    and w21, w21, #255
    add w22, w21, #48
    and w21, w22, #255
    cmp w21, w22
    b.eq L10_6
L10_7:
    adrp x0, l_text_49@PAGE
    add x0, x0, l_text_49@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
L10_6:
    strb w22, [x20]
    add x21, x15, #1
L10_9:
    movz x10, #10
    udiv w20, w14, w10
    mov x10, #0
    cmp w20, w10
    b.ne L10_11
L10_10:
    mov x14, x21
    b L10_3
L10_11:
L10_12:
    mov x15, x21
    mov w14, w20
    b L10_1
L10_3:
    sub x15, x29, #112
    ldr x15, [x15]
    sub x20, x29, #96
    ldr x21, [x20]
    add x20, x20, #8
    ldr x20, [x20]
    mov x22, x14
L10_14:
    mov x10, #0
    cmp x22, x10
    b.ls L10_16
L10_15:
    mov x9, x22
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_52@PAGE
    add x0, x0, l_text_52@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    cmp x15, x20
    b.lo 1f
    adrp x0, l_text_53@PAGE
    add x0, x0, l_text_53@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x23, x21, x15
    movz x10, #10
    cmp x14, x10
    b.lo 1f
    adrp x0, l_text_53@PAGE
    add x0, x0, l_text_53@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x24, x19, x14
    ldrb w24, [x24]
    strb w24, [x23]
    add x23, x15, #1
    mov x22, x14
    mov x15, x23
    b L10_14
L10_16:
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    ldr x24, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_swap32
_lb_net_swap32:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str w0, [x16]
    sub x14, x29, #40
    ldr w14, [x14]
L11_2:
    lsl w15, w14, #24
L11_4:
    lsl w19, w14, #8
    movz x10, #255, lsl #16
    and w19, w19, w10
    orr w19, w19, w15
L11_6:
    lsr w15, w14, #8
    movz x10, #65280
    and w15, w15, w10
    orr w15, w15, w19
L11_8:
    lsr w19, w14, #24
    orr w19, w19, w15
    mov x9, x19
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_move_0g1_u8
    .weak_definition _lb_memory_move_0g1_u8
    .no_dead_strip _lb_memory_move_0g1_u8
_lb_memory_move_0g1_u8:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    sub x16, x29, #48
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #64
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #80
    str x4, [x16]
    sub x14, x29, #80
    ldr x19, [x14]
    sub x20, x29, #48
    add x14, x20, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w14, hi
    cbnz w14, L12_11
    b L12_4
L12_11:
    mov w15, w14
    b L12_5
L12_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L12_5:
    and w14, w15, #255
    cbnz w14, L12_1
    b L12_2
L12_1:
    adrp x14, l_text_11@PAGE
    add x14, x14, l_text_11@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_58@PAGE
    add x14, x14, l_text_58@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L12_3
L12_2:
L12_3:
    mov x10, #0
    cmp x19, x10
    b.ls L12_7
L12_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memmove
    mov x14, x0
    cbnz x14, L12_9
    b L12_10
L12_10:
    adrp x0, l_text_59@PAGE
    add x0, x0, l_text_59@PAGEOFF
    adrp x1, l_text_60@PAGE
    add x1, x1, l_text_60@PAGEOFF
    bl _lb_core_7trap_at
L12_9:
    b L12_8
L12_7:
L12_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_read_0g1_u16
    .weak_definition _lb_memory_read_0g1_u16
    .no_dead_strip _lb_memory_read_0g1_u16
_lb_memory_read_0g1_u16:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x19, x29, #42
    sub x14, x29, #40
    ldr x14, [x14]
    mov x0, x19
    mov x1, x14
    movz x2, #2
    bl _memcpy
    mov x14, x0
    cbnz x14, L13_1
    b L13_2
L13_2:
    adrp x0, l_text_61@PAGE
    add x0, x0, l_text_61@PAGEOFF
    adrp x1, l_text_60@PAGE
    add x1, x1, l_text_60@PAGEOFF
    bl _lb_core_7trap_at
L13_1:
    ldrh w14, [x19]
    and w14, w14, #65535
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_3:
    adrp x0, l_text_62@PAGE
    add x0, x0, l_text_62@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_read_0g1_net_NativeIpv4Address
    .weak_definition _lb_memory_read_0g1_net_NativeIpv4Address
    .no_dead_strip _lb_memory_read_0g1_net_NativeIpv4Address
_lb_memory_read_0g1_net_NativeIpv4Address:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    sub x16, x29, #64
    str x0, [x16]
    sub x19, x29, #80
    sub x14, x29, #64
    ldr x14, [x14]
    mov x0, x19
    mov x1, x14
    movz x2, #16
    bl _memcpy
    mov x14, x0
    cbnz x14, L14_1
    b L14_2
L14_2:
    adrp x0, l_text_61@PAGE
    add x0, x0, l_text_61@PAGEOFF
    adrp x1, l_text_60@PAGE
    add x1, x1, l_text_60@PAGEOFF
    bl _lb_core_7trap_at
L14_1:
    sub x20, x29, #48
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_3:
    adrp x0, l_text_62@PAGE
    add x0, x0, l_text_62@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_read_0g1_net_NativeIpv6Address
    .weak_definition _lb_memory_read_0g1_net_NativeIpv6Address
    .no_dead_strip _lb_memory_read_0g1_net_NativeIpv6Address
_lb_memory_read_0g1_net_NativeIpv6Address:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    str x20, [sp, #88]
    sub x16, x29, #88
    str x0, [x16]
    sub x19, x29, #116
    sub x14, x29, #88
    ldr x14, [x14]
    mov x0, x19
    mov x1, x14
    movz x2, #28
    bl _memcpy
    mov x14, x0
    cbnz x14, L15_1
    b L15_2
L15_2:
    adrp x0, l_text_61@PAGE
    add x0, x0, l_text_61@PAGEOFF
    adrp x1, l_text_60@PAGE
    add x1, x1, l_text_60@PAGEOFF
    bl _lb_core_7trap_at
L15_1:
    sub x20, x29, #68
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr w12, [x10, #24]
    str w12, [x11, #24]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #28
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L15_3:
    adrp x0, l_text_62@PAGE
    add x0, x0, l_text_62@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_net_address_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/net/address.lucb:13:9"
l_text_1:
    .asciz "unreachable"
l_text_2:
    .asciz "src/std/net/address.lucb:14:9"
l_text_3:
    .asciz "src/std/net/address.lucb:17:9"
l_text_4:
    .asciz "src/std/net/address.lucb:29:9"
l_text_5:
    .asciz "src/std/net/address.lucb:33:13"
l_text_6:
    .asciz "src/std/net/address.lucb:34:17"
l_text_7:
    .asciz "src/std/net/address.lucb:35:13"
l_text_8:
    .asciz "src/std/net/address.lucb:38:13"
l_text_9:
    .asciz "src/std/net/address.lucb:41:17"
l_text_10:
    .asciz "src/std/net/address.lucb:43:21"
l_text_11:
    .asciz "index out of bounds"
l_text_12:
    .asciz "src/std/net/address.lucb:46:17"
l_text_13:
    .asciz "src/std/net/address.lucb:48:13"
l_text_14:
    .asciz "src/std/net/address.lucb:49:17"
l_text_15:
    .asciz "src/std/net/address.lucb:52:13"
l_text_16:
    .asciz "src/std/net/address.lucb:53:9"
l_text_17:
    .asciz "src/std/net/address.lucb:56:9"
l_text_18:
    .asciz "src/std/net/address.lucb:57:9"
l_text_19:
    .asciz "src/std/net/address.lucb:60:9"
l_text_20:
    .asciz "src/std/net/address.lucb:70:13"
l_text_21:
    .asciz "src/std/net/address.lucb:71:13"
l_text_22:
    .asciz "src/std/net/address.lucb:72:13"
l_text_23:
    .asciz "src/std/net/address.lucb:74:17"
l_text_24:
    .asciz "src/std/net/address.lucb:75:17"
l_text_25:
    .asciz "src/std/net/address.lucb:76:13"
l_text_26:
    .asciz "src/std/net/address.lucb:77:13"
l_text_27:
    .asciz "src/std/net/address.lucb:79:13"
l_text_28:
    .asciz "src/std/net/address.lucb:81:9"
l_text_29:
    .asciz "src/std/net/address.lucb:82:9"
l_text_30:
    .asciz "the destination cannot hold the formatted socket address"
l_text_31:
    .asciz "src/std/net/address.lucb:86:9"
l_text_32:
    .asciz "unknown IP address version"
l_text_33:
    .asciz "IPv4 endpoints cannot have an interface scope"
l_text_34:
    .asciz "IPv4 address bits are missing"
l_text_35:
    .asciz "src/std/net/address.lucb:101:9"
l_text_36:
    .asciz "the socket address is shorter than its family field"
l_text_37:
    .asciz "shift count out of range"
l_text_38:
    .asciz "src/std/net/address.lucb:107:5"
l_text_39:
    .asciz "the IPv4 socket address has an invalid layout"
l_text_40:
    .asciz "the IPv6 socket address has an invalid layout"
l_text_41:
    .asciz "the socket address is not IPv4 or IPv6"
l_text_42:
    .asciz "src/std/net/address.lucb:118:5"
l_text_43:
    .asciz "integer overflow"
l_text_44:
    .asciz "src/std/net/address.lucb:127:9"
l_text_45:
    .asciz "src/std/net/address.lucb:128:9"
l_text_46:
    .asciz "division by zero"
l_text_47:
    .asciz "src/std/net/address.lucb:130:9"
l_text_48:
    .asciz "src/std/net/address.lucb:131:5"
l_text_49:
    .asciz "src/std/net/address.lucb:138:9"
l_text_50:
    .asciz "src/std/net/address.lucb:139:9"
l_text_51:
    .asciz "src/std/net/address.lucb:140:9"
l_text_52:
    .asciz "src/std/net/address.lucb:145:9"
l_text_53:
    .asciz "src/std/net/address.lucb:146:9"
l_text_54:
    .asciz "src/std/net/address.lucb:147:9"
l_text_55:
    .asciz "src/std/net/address.lucb:148:5"
l_text_56:
    .asciz "src/std/net/address.lucb:152:5"
l_text_57:
    .asciz "src/std/net/address.lucb:155:5"
l_text_58:
    .asciz "src/std/memory.lucb:332:9"
l_text_59:
    .asciz "src/std/memory.lucb:334:9"
l_text_60:
    .asciz "null_foreign"
l_text_61:
    .asciz "src/std/memory.lucb:342:5"
l_text_62:
    .asciz "src/std/memory.lucb:343:5"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
