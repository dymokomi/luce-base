    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_net_15websocket_frame_0init
_lb_net_15websocket_frame_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_21websocket_parse_frame
    .no_dead_strip _lb_net_21websocket_parse_frame
_lb_net_21websocket_parse_frame:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #656
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #624]
    str x20, [sp, #616]
    str x21, [sp, #608]
    str x22, [sp, #600]
    str x23, [sp, #592]
    str x24, [sp, #584]
    str x25, [sp, #576]
    str x26, [sp, #568]
    str x27, [sp, #560]
    str x28, [sp, #552]
    sub x16, x29, #192
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #208
    str w2, [x16]
    sub x16, x29, #224
    str x3, [x16]
    sub x14, x29, #192
    add x15, x14, #8
    ldr x19, [x15]
    movz x10, #2
    cmp x19, x10
    b.hs L1_2
L1_1:
    sub x19, x29, #264
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    sub x20, x29, #176
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    add x14, x20, #64
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #624]
    ldr x20, [sp, #616]
    ldr x21, [sp, #608]
    ldr x22, [sp, #600]
    ldr x23, [sp, #592]
    ldr x24, [sp, #584]
    ldr x25, [sp, #576]
    ldr x26, [sp, #568]
    ldr x27, [sp, #560]
    ldr x28, [sp, #552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_2:
L1_3:
    ldr x20, [x14]
    mov x9, #0
    cmp x9, x19
    b.lo 1f
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldrb w15, [x20]
    movz x10, #112
    and w15, w15, w10
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L1_6
L1_5:
    sub x19, x29, #176
    add x14, x19, #40
    adrp x15, _lb_net_17websocket_invalid@PAGE
    add x15, x15, _lb_net_17websocket_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_1@PAGE
    add x15, x15, l_text_1@PAGEOFF
    sub x20, x29, #280
    str x15, [x20]
    add x15, x20, #8
    movz x9, #44
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #624]
    ldr x20, [sp, #616]
    ldr x21, [sp, #608]
    ldr x22, [sp, #600]
    ldr x23, [sp, #592]
    ldr x24, [sp, #584]
    ldr x25, [sp, #576]
    ldr x26, [sp, #568]
    ldr x27, [sp, #560]
    ldr x28, [sp, #552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_6:
L1_7:
    ldrb w14, [x20]
    movz x10, #15
    and w14, w14, w10
    mov x0, x14
    sub x8, x29, #320
    bl _lb_net_16websocket_opcode
    sub x15, x29, #320
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_10
    b L1_9
L1_10:
    add x14, x15, #8
    sub x19, x29, #176
    add x20, x19, #40
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #624]
    ldr x20, [sp, #616]
    ldr x21, [sp, #608]
    ldr x22, [sp, #600]
    ldr x23, [sp, #592]
    ldr x24, [sp, #584]
    ldr x25, [sp, #576]
    ldr x26, [sp, #568]
    ldr x27, [sp, #560]
    ldr x28, [sp, #552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_9:
    ldrb w14, [x15]
    ldrb w21, [x20]
    movz x10, #128
    and w21, w21, w10
    mov x10, #0
    cmp w21, w10
    cset w21, eq
    mov x10, #0
    cmp w21, w10
    cset w21, eq
    movz x9, #1
    cmp x9, x19
    b.lo 1f
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x22, x20, #1
    ldrb w23, [x22]
    movz x10, #128
    and w23, w23, w10
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    and w23, w23, #255
    sub x24, x29, #208
    ldrb w24, [x24]
    cmp w23, w24
    cset w24, eq
    mov x10, #0
    cmp w24, w10
    b.ne L1_13
L1_12:
    sub x19, x29, #176
    add x14, x19, #40
    adrp x15, _lb_net_17websocket_invalid@PAGE
    add x15, x15, _lb_net_17websocket_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
    sub x20, x29, #336
    str x15, [x20]
    add x15, x20, #8
    movz x9, #45
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #624]
    ldr x20, [sp, #616]
    ldr x21, [sp, #608]
    ldr x22, [sp, #600]
    ldr x23, [sp, #592]
    ldr x24, [sp, #584]
    ldr x25, [sp, #576]
    ldr x26, [sp, #568]
    ldr x27, [sp, #560]
    ldr x28, [sp, #552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_13:
L1_14:
    ldrb w15, [x22]
    movz x10, #127
    and w15, w15, w10
    and w15, w15, #255
    mov w24, w15
    movz x10, #126
    cmp w15, w10
    b.ne L1_17
L1_16:
    movz x10, #4
    cmp x19, x10
    b.hs L1_20
L1_19:
    sub x19, x29, #376
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    sub x20, x29, #176
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    add x14, x20, #64
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #624]
    ldr x20, [sp, #616]
    ldr x21, [sp, #608]
    ldr x22, [sp, #600]
    ldr x23, [sp, #592]
    ldr x24, [sp, #584]
    ldr x25, [sp, #576]
    ldr x26, [sp, #568]
    ldr x27, [sp, #560]
    ldr x28, [sp, #552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_20:
L1_21:
    movz x9, #2
    cmp x9, x19
    b.lo 1f
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x15, x20, #2
    ldrb w15, [x15]
    mov w15, w15
L1_24:
    lsl x22, x15, #8
    movz x9, #3
    cmp x9, x19
    b.lo 1f
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x24, x20, #3
    ldrb w24, [x24]
    mov w24, w24
    orr x22, x22, x24
    movz x10, #126
    cmp x22, x10
    b.hs L1_26
L1_25:
    sub x19, x29, #176
    add x14, x19, #40
    adrp x15, _lb_net_17websocket_invalid@PAGE
    add x15, x15, _lb_net_17websocket_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_9@PAGE
    add x15, x15, l_text_9@PAGEOFF
    sub x20, x29, #392
    str x15, [x20]
    add x15, x20, #8
    movz x9, #35
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #624]
    ldr x20, [sp, #616]
    ldr x21, [sp, #608]
    ldr x22, [sp, #600]
    ldr x23, [sp, #592]
    ldr x24, [sp, #584]
    ldr x25, [sp, #576]
    ldr x26, [sp, #568]
    ldr x27, [sp, #560]
    ldr x28, [sp, #552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_26:
L1_27:
    movz x9, #4
    mov x24, x9
    mov x25, x22
    b L1_18
L1_17:
    movz x10, #127
    cmp w15, w10
    b.ne L1_30
L1_29:
    movz x10, #10
    cmp x19, x10
    b.hs L1_33
L1_32:
    sub x19, x29, #432
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    sub x20, x29, #176
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    add x14, x20, #64
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #624]
    ldr x20, [sp, #616]
    ldr x21, [sp, #608]
    ldr x22, [sp, #600]
    ldr x23, [sp, #592]
    ldr x24, [sp, #584]
    ldr x25, [sp, #576]
    ldr x26, [sp, #568]
    ldr x27, [sp, #560]
    ldr x28, [sp, #552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_33:
L1_34:
    movz x9, #2
    cmp x9, x19
    b.lo 1f
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x15, x20, #2
    ldrb w15, [x15]
    movz x10, #128
    and w15, w15, w10
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L1_37
L1_36:
    sub x19, x29, #176
    add x14, x19, #40
    adrp x15, _lb_net_17websocket_invalid@PAGE
    add x15, x15, _lb_net_17websocket_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_11@PAGE
    add x15, x15, l_text_11@PAGEOFF
    sub x20, x29, #448
    str x15, [x20]
    add x15, x20, #8
    movz x9, #45
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #624]
    ldr x20, [sp, #616]
    ldr x21, [sp, #608]
    ldr x22, [sp, #600]
    ldr x23, [sp, #592]
    ldr x24, [sp, #584]
    ldr x25, [sp, #576]
    ldr x26, [sp, #568]
    ldr x27, [sp, #560]
    ldr x28, [sp, #552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_37:
L1_38:
    mov x9, #0
    mov x15, x9
    movz x9, #2
    mov x22, x9
L1_40:
    movz x10, #10
    cmp x22, x10
    b.ge L1_43
L1_41:
L1_45:
    lsl x24, x15, #8
    cmp x22, x19
    b.lo 1f
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x25, x20, x22
    ldrb w25, [x25]
    mov w25, w25
    orr x24, x24, x25
L1_42:
    add x25, x22, #1
    mov x15, x24
    mov x22, x25
    b L1_40
L1_43:
    movz x10, #1, lsl #16
    cmp x15, x10
    b.hs L1_47
L1_46:
    sub x19, x29, #176
    add x14, x19, #40
    adrp x15, _lb_net_17websocket_invalid@PAGE
    add x15, x15, _lb_net_17websocket_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_9@PAGE
    add x15, x15, l_text_9@PAGEOFF
    sub x20, x29, #464
    str x15, [x20]
    add x15, x20, #8
    movz x9, #35
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #624]
    ldr x20, [sp, #616]
    ldr x21, [sp, #608]
    ldr x22, [sp, #600]
    ldr x23, [sp, #592]
    ldr x24, [sp, #584]
    ldr x25, [sp, #576]
    ldr x26, [sp, #568]
    ldr x27, [sp, #560]
    ldr x28, [sp, #552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_47:
L1_48:
    movz x9, #10
    mov x22, x9
    mov x25, x15
    b L1_31
L1_30:
    movz x9, #2
    mov x22, x9
    mov x25, x24
L1_31:
    mov x24, x22
L1_18:
    sub x15, x29, #224
    ldr x15, [x15]
    cmp x25, x15
    b.ls L1_51
L1_50:
    sub x19, x29, #176
    add x14, x19, #40
    adrp x15, _lb_net_15websocket_limit@PAGE
    add x15, x15, _lb_net_15websocket_limit@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_13@PAGE
    add x15, x15, l_text_13@PAGEOFF
    sub x20, x29, #480
    str x15, [x20]
    add x15, x20, #8
    movz x9, #38
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #624]
    ldr x20, [sp, #616]
    ldr x21, [sp, #608]
    ldr x22, [sp, #600]
    ldr x23, [sp, #592]
    ldr x24, [sp, #584]
    ldr x25, [sp, #576]
    ldr x26, [sp, #568]
    ldr x27, [sp, #560]
    ldr x28, [sp, #552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_51:
L1_52:
    and w22, w14, #255
    mov w15, w22
    and w15, w15, #255
    movz x10, #8
    cmp w15, w10
    cset w15, hs
    cbnz w15, L1_57
    b L1_72
L1_72:
    mov w14, w15
    b L1_58
L1_57:
    and w14, w21, #255
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L1_73
    b L1_59
L1_73:
    mov w15, w14
    b L1_60
L1_59:
    movz x10, #125
    cmp x25, x10
    cset w15, hi
L1_60:
    and w14, w15, #255
L1_58:
    and w15, w14, #255
    cbnz w15, L1_54
    b L1_55
L1_54:
    sub x19, x29, #176
    add x14, x19, #40
    adrp x15, _lb_net_17websocket_invalid@PAGE
    add x15, x15, _lb_net_17websocket_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_14@PAGE
    add x15, x15, l_text_14@PAGEOFF
    sub x20, x29, #496
    str x15, [x20]
    add x15, x20, #8
    movz x9, #59
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #624]
    ldr x20, [sp, #616]
    ldr x21, [sp, #608]
    ldr x22, [sp, #600]
    ldr x23, [sp, #592]
    ldr x24, [sp, #584]
    ldr x25, [sp, #576]
    ldr x26, [sp, #568]
    ldr x27, [sp, #560]
    ldr x28, [sp, #552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_55:
L1_56:
    sub x26, x29, #500
    mov x11, x26
    str wzr, [x11, #0]
    cbnz w23, L1_62
    b L1_63
L1_62:
    mov x9, x19
    mov x10, x24
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_77@PAGE
    add x1, x1, l_text_77@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    movz x10, #4
    cmp x14, x10
    b.hs L1_66
L1_65:
    sub x19, x29, #544
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    sub x20, x29, #176
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    add x14, x20, #64
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #624]
    ldr x20, [sp, #616]
    ldr x21, [sp, #608]
    ldr x22, [sp, #600]
    ldr x23, [sp, #592]
    ldr x24, [sp, #584]
    ldr x25, [sp, #576]
    ldr x26, [sp, #568]
    ldr x27, [sp, #560]
    ldr x28, [sp, #552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_66:
L1_67:
    sub x14, x29, #560
    str x26, [x14]
    add x15, x14, #8
    movz x9, #4
    str x9, [x15]
    add x15, x19, #1
    cmp x24, x15
    b.lo 1f
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x19, x15
    b.lo 1f
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x24, x19
    b.ls L1_69
L1_70:
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
L1_69:
    add x15, x20, x24
    sub x27, x19, x24
    sub x28, x29, #576
    str x15, [x28]
    add x15, x28, #8
    str x27, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x28
    ldr x2, [x9]
    ldr x3, [x9, #8]
    movz x4, #4
    bl _lb_memory_copy_0g1_u8
    mov x9, x24
    movz x10, #4
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_77@PAGE
    add x1, x1, l_text_77@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    mov x27, x15
    b L1_64
L1_63:
    mov x27, x24
L1_64:
    sub x19, x29, #608
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    strb w22, [x19]
    and w14, w21, #255
    add x15, x19, #1
    strb w14, [x15]
    add x14, x19, #8
    str x25, [x14]
    add x14, x19, #16
    str x27, [x14]
    add x14, x19, #24
    mov x10, x26
    mov x11, x14
    ldr w12, [x10, #0]
    str w12, [x11, #0]
    add x14, x19, #28
    strb w23, [x14]
    sub x20, x29, #648
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    sub x19, x29, #176
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    add x14, x19, #64
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #624]
    ldr x20, [sp, #616]
    ldr x21, [sp, #608]
    ldr x22, [sp, #600]
    ldr x23, [sp, #592]
    ldr x24, [sp, #584]
    ldr x25, [sp, #576]
    ldr x26, [sp, #568]
    ldr x27, [sp, #560]
    ldr x28, [sp, #552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_16websocket_opcode
_lb_net_16websocket_opcode:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    str x20, [sp, #88]
    sub x16, x29, #96
    str w0, [x16]
    sub x14, x29, #96
    ldrb w14, [x14]
    sub x15, x29, #97
    strb w14, [x15]
    sub x19, x29, #98
    mov x10, x15
    mov x11, x19
    ldrb w12, [x10, #0]
    strb w12, [x11, #0]
    ldrb w14, [x19]
    mov x10, #0
    cmp w14, w10
    b.eq L2_2
L2_4:
    b L2_3
L2_2:
    sub x14, x29, #80
    mov x9, #0
    strb w9, [x14]
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
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_5:
    b L2_1
L2_3:
    movz x10, #1
    cmp w14, w10
    b.eq L2_6
L2_8:
    b L2_7
L2_6:
    sub x14, x29, #80
    movz x9, #1
    strb w9, [x14]
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
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_9:
    b L2_1
L2_7:
    movz x10, #2
    cmp w14, w10
    b.eq L2_10
L2_12:
    b L2_11
L2_10:
    sub x14, x29, #80
    movz x9, #2
    strb w9, [x14]
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
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_13:
    b L2_1
L2_11:
    movz x10, #8
    cmp w14, w10
    b.eq L2_14
L2_16:
    b L2_15
L2_14:
    sub x14, x29, #80
    movz x9, #8
    strb w9, [x14]
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
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_17:
    b L2_1
L2_15:
    movz x10, #9
    cmp w14, w10
    b.eq L2_18
L2_20:
    b L2_19
L2_18:
    sub x14, x29, #80
    movz x9, #9
    strb w9, [x14]
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
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_21:
    b L2_1
L2_19:
    movz x10, #10
    cmp w14, w10
    b.eq L2_22
L2_24:
    b L2_23
L2_22:
    sub x14, x29, #80
    movz x9, #10
    strb w9, [x14]
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
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_25:
    b L2_1
L2_23:
    b L2_26
L2_28:
    b L2_27
L2_26:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_net_17websocket_invalid@PAGE
    add x15, x15, _lb_net_17websocket_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_21@PAGE
    add x15, x15, l_text_21@PAGEOFF
    sub x20, x29, #120
    str x15, [x20]
    add x15, x20, #8
    movz x9, #25
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
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_29:
    b L2_1
L2_27:
L2_1:
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_19@PAGE
    add x1, x1, l_text_19@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_21websocket_check_close
    .no_dead_strip _lb_net_21websocket_check_close
_lb_net_21websocket_check_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #272
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #240]
    str x20, [sp, #232]
    str x21, [sp, #224]
    str x22, [sp, #216]
    str x23, [sp, #208]
    str x24, [sp, #200]
    str x25, [sp, #192]
    str x26, [sp, #184]
    sub x16, x29, #136
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #136
    add x15, x14, #8
    ldr x19, [x15]
    mov x10, #0
    cmp x19, x10
    b.ne L3_2
L3_1:
    sub x14, x29, #120
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    ldr x25, [sp, #192]
    ldr x26, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_2:
L3_3:
    movz x10, #2
    cmp x19, x10
    cset w15, lo
    cbnz w15, L3_43
    b L3_8
L3_43:
    mov w20, w15
    b L3_9
L3_8:
    movz x10, #125
    cmp x19, x10
    cset w20, hi
L3_9:
    and w15, w20, #255
    cbnz w15, L3_5
    b L3_6
L3_5:
    sub x19, x29, #120
    adrp x14, _lb_net_17websocket_invalid@PAGE
    add x14, x14, _lb_net_17websocket_invalid@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_23@PAGE
    add x14, x14, l_text_23@PAGEOFF
    sub x15, x29, #152
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    ldr x25, [sp, #192]
    ldr x26, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_6:
L3_7:
    ldr x20, [x14]
    mov x9, #0
    cmp x9, x19
    b.lo 1f
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldrb w15, [x20]
    mov w15, w15
    and w15, w15, #65535
L3_12:
    lsl w14, w15, #8
    and w14, w14, #65535
    movz x9, #1
    cmp x9, x19
    b.lo 1f
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x21, x20, #1
    ldrb w21, [x21]
    mov w21, w21
    and w21, w21, #65535
    orr w14, w14, w21
    and w14, w14, #65535
    movz x10, #1000
    cmp w14, w10
    cset w21, lo
    cbnz w21, L3_44
    b L3_16
L3_44:
    mov w15, w21
    b L3_17
L3_16:
    movz x10, #5000
    cmp w14, w10
    cset w15, hs
L3_17:
    and w21, w15, #255
    cbnz w21, L3_45
    b L3_18
L3_45:
    mov w15, w21
    b L3_19
L3_18:
    movz x10, #1004
    cmp w14, w10
    cset w15, eq
L3_19:
    and w21, w15, #255
    cbnz w21, L3_46
    b L3_20
L3_46:
    mov w15, w21
    b L3_21
L3_20:
    movz x10, #1005
    cmp w14, w10
    cset w15, eq
L3_21:
    and w21, w15, #255
    cbnz w21, L3_47
    b L3_22
L3_47:
    mov w15, w21
    b L3_23
L3_22:
    movz x10, #1006
    cmp w14, w10
    cset w15, eq
L3_23:
    and w21, w15, #255
    cbnz w21, L3_48
    b L3_24
L3_48:
    mov w15, w21
    b L3_25
L3_24:
    movz x10, #1016
    cmp w14, w10
    cset w15, hs
    cbnz w15, L3_26
    b L3_49
L3_49:
    mov w21, w15
    b L3_27
L3_26:
    movz x10, #3000
    cmp w14, w10
    cset w21, lo
L3_27:
    and w15, w21, #255
L3_25:
    and w21, w15, #255
    cbnz w21, L3_50
    b L3_28
L3_50:
    mov w14, w21
    b L3_29
L3_28:
    movz x10, #1015
    cmp w14, w10
    cset w15, eq
    mov w14, w15
L3_29:
    and w15, w14, #255
    cbnz w15, L3_13
    b L3_14
L3_13:
    sub x19, x29, #120
    adrp x14, _lb_net_17websocket_invalid@PAGE
    add x14, x14, _lb_net_17websocket_invalid@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_25@PAGE
    add x14, x14, l_text_25@PAGEOFF
    sub x15, x29, #168
    str x14, [x15]
    add x14, x15, #8
    movz x9, #31
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    ldr x25, [sp, #192]
    ldr x26, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_14:
L3_15:
    sub x21, x29, #176
    mov x11, x21
    str xzr, [x11, #0]
    add x14, x19, #1
    movz x9, #2
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_26@PAGE
    add x0, x0, l_text_26@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x19, x14
    b.lo 1f
    adrp x0, l_text_26@PAGE
    add x0, x0, l_text_26@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x9, #2
    cmp x9, x19
    b.ls L3_35
L3_36:
    adrp x0, l_text_26@PAGE
    add x0, x0, l_text_26@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
L3_35:
    add x22, x20, #2
    sub x23, x19, #2
    sub x14, x29, #192
    str x22, [x14]
    add x14, x14, #8
    str x23, [x14]
    sub x26, x29, #232
    add x24, x26, #32
    mov x9, #0
    mov x25, x9
L3_31:
    cmp x25, x23
    b.hs L3_34
L3_32:
    add x14, x22, x25
    ldrb w14, [x14]
    and w14, w14, #255
    mov x0, x21
    mov x1, x14
    sub x8, x29, #232
    bl _lb_utf8_Decoder_push
    ldrb w14, [x24]
    cbnz w14, L3_38
    b L3_37
L3_38:
    add x14, x26, #8
    sub x19, x29, #120
    mov x10, x14
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    ldr x25, [sp, #192]
    ldr x26, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_37:
L3_33:
    add x14, x25, #1
    mov x25, x14
    b L3_31
L3_34:
    mov x0, x21
    sub x8, x29, #264
    bl _lb_utf8_Decoder_finish
    sub x15, x29, #264
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L3_41
    b L3_40
L3_41:
    sub x19, x29, #120
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    ldr x25, [sp, #192]
    ldr x26, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_40:
    sub x14, x29, #120
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    ldr x25, [sp, #192]
    ldr x26, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_WebSocketSequence_begin
_lb_net_WebSocketSequence_begin:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #176]
    str x20, [sp, #168]
    str x21, [sp, #160]
    str x22, [sp, #152]
    str x23, [sp, #144]
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #136
    str x1, [x16]
    sub x0, x29, #136
    ldr x1, [x0]
    movz x2, #32
    bl _memcpy
    sub x9, x29, #104
    ldr x19, [x9]
    add x14, x19, #168
    ldrb w14, [x14]
    cbnz w14, L4_4
    b L4_26
L4_26:
    mov w15, w14
    b L4_5
L4_4:
    sub x14, x29, #136
    ldrb w14, [x14]
    mov w14, w14
    and w14, w14, #255
    movz x10, #8
    cmp w14, w10
    cset w15, lo
L4_5:
    and w14, w15, #255
    cbnz w14, L4_1
    b L4_2
L4_1:
    sub x19, x29, #96
    adrp x14, _lb_net_17websocket_invalid@PAGE
    add x14, x14, _lb_net_17websocket_invalid@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_27@PAGE
    add x14, x14, l_text_27@PAGEOFF
    sub x15, x29, #152
    str x14, [x15]
    add x14, x15, #8
    movz x9, #36
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    ldr x23, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_6:
    b L4_3
L4_2:
L4_3:
    sub x20, x29, #136
    ldrb w14, [x20]
    mov w15, w14
    and w15, w15, #255
    movz x10, #8
    cmp w15, w10
    b.lo L4_8
L4_7:
    add x14, x19, #160
    mov x9, #0
    str x9, [x14]
    sub x14, x29, #96
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    ldr x23, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_10:
    b L4_9
L4_8:
L4_9:
    mov x10, #0
    cmp w14, w10
    b.ne L4_12
L4_11:
    ldrb w14, [x19]
    mov x10, #0
    cmp w14, w10
    b.ne L4_15
L4_14:
    sub x19, x29, #96
    adrp x14, _lb_net_17websocket_invalid@PAGE
    add x14, x14, _lb_net_17websocket_invalid@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_28@PAGE
    add x14, x14, l_text_28@PAGEOFF
    sub x15, x29, #168
    str x14, [x15]
    add x14, x15, #8
    movz x9, #43
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    ldr x23, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_17:
    b L4_16
L4_15:
L4_16:
    b L4_13
L4_12:
    ldrb w15, [x19]
    cbnz w15, L4_18
    b L4_19
L4_18:
    sub x19, x29, #96
    adrp x14, _lb_net_17websocket_invalid@PAGE
    add x14, x14, _lb_net_17websocket_invalid@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_29@PAGE
    add x14, x14, l_text_29@PAGEOFF
    sub x15, x29, #184
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    ldr x23, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_21:
    b L4_20
L4_19:
L4_20:
    add x15, x19, #1
    movz x10, #1
    cmp w14, w10
    cset w21, eq
    strb w21, [x15]
    add x15, x19, #8
    mov x9, #0
    str x9, [x15]
    add x15, x19, #24
    mov x0, x15
    bl _lb_utf8_Decoder_reset
L4_13:
    add x14, x20, #8
    ldr x14, [x14]
    add x15, x19, #16
    ldr x15, [x15]
    add x21, x19, #8
    ldr x22, [x21]
    mov x9, x15
    mov x10, x22
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_30@PAGE
    add x0, x0, l_text_30@PAGEOFF
    adrp x1, l_text_77@PAGE
    add x1, x1, l_text_77@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    cmp x14, x15
    b.ls L4_23
L4_22:
    sub x19, x29, #96
    adrp x14, _lb_net_15websocket_limit@PAGE
    add x14, x14, _lb_net_15websocket_limit@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_31@PAGE
    add x14, x14, l_text_31@PAGEOFF
    sub x15, x29, #200
    str x14, [x15]
    add x14, x15, #8
    movz x9, #40
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    ldr x23, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_25:
    b L4_24
L4_23:
L4_24:
    mov x9, x14
    mov x10, x22
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_32@PAGE
    add x0, x0, l_text_32@PAGEOFF
    adrp x1, l_text_77@PAGE
    add x1, x1, l_text_77@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x21]
    add x15, x20, #1
    ldrb w15, [x15]
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    strb w15, [x19]
    sub x15, x29, #96
    add x23, x15, #24
    mov x9, #0
    strb w9, [x23]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    ldr x23, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_WebSocketSequence_payload
_lb_net_WebSocketSequence_payload:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #336
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #304]
    str x20, [sp, #296]
    str x21, [sp, #288]
    str x22, [sp, #280]
    str x23, [sp, #272]
    str x24, [sp, #264]
    str x25, [sp, #256]
    str x26, [sp, #248]
    sub x16, x29, #128
    str x0, [x16]
    sub x16, x29, #160
    str x1, [x16]
    sub x16, x29, #176
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #192
    str w4, [x16]
    sub x0, x29, #160
    ldr x1, [x0]
    movz x2, #32
    bl _memcpy
    sub x9, x29, #128
    ldr x20, [x9]
    sub x19, x29, #160
    ldrb w14, [x19]
    mov w15, w14
    and w15, w15, #255
    movz x10, #8
    cmp w15, w10
    b.lo L5_2
L5_1:
    movz x10, #8
    cmp w14, w10
    b.ne L5_5
L5_4:
    add x21, x20, #32
    add x19, x20, #160
    ldr x15, [x19]
    movz x10, #126
    cmp x15, x10
    b.lo 1f
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x10, #125
    cmp x15, x10
    b.ls L5_7
L5_8:
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
L5_7:
    add x14, x21, x15
    movz x9, #125
    sub x22, x9, x15
    sub x23, x29, #208
    str x14, [x23]
    add x14, x23, #8
    str x22, [x14]
    sub x14, x29, #176
    add x22, x14, #8
    ldr x24, [x22]
    mov x9, x23
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x24
    bl _lb_memory_copy_0g1_u8
    ldr x14, [x19]
    ldr x22, [x22]
    mov x9, x14
    mov x10, x22
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_34@PAGE
    add x0, x0, l_text_34@PAGEOFF
    adrp x1, l_text_77@PAGE
    add x1, x1, l_text_77@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x19]
    sub x22, x29, #192
    ldrb w22, [x22]
    cbnz w22, L5_9
    b L5_10
L5_9:
    movz x10, #126
    cmp x14, x10
    b.lo 1f
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x14
    b.ls L5_12
L5_13:
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
L5_12:
    sub x15, x29, #224
    str x21, [x15]
    add x19, x15, #8
    str x14, [x19]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #256
    bl _lb_net_21websocket_check_close
    sub x19, x29, #256
    add x15, x19, #24
    ldrb w15, [x15]
    cbnz w15, L5_15
    b L5_14
L5_15:
    sub x20, x29, #120
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    ldr x26, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_16:
L5_14:
    add x14, x20, #168
    movz x9, #1
    strb w9, [x14]
    b L5_11
L5_10:
L5_11:
    b L5_6
L5_5:
L5_6:
    sub x14, x29, #120
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    ldr x26, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_17:
    b L5_3
L5_2:
L5_3:
    add x14, x20, #1
    ldrb w14, [x14]
    cbnz w14, L5_18
    b L5_19
L5_18:
    sub x14, x29, #176
    ldr x21, [x14]
    add x14, x14, #8
    ldr x22, [x14]
    add x23, x20, #24
    sub x26, x29, #296
    add x24, x26, #32
    mov x9, #0
    mov x25, x9
L5_21:
    cmp x25, x22
    b.hs L5_24
L5_22:
    add x14, x21, x25
    ldrb w14, [x14]
    and w14, w14, #255
    mov x0, x23
    mov x1, x14
    sub x8, x29, #296
    bl _lb_utf8_Decoder_push
    ldrb w14, [x24]
    cbnz w14, L5_26
    b L5_25
L5_26:
    add x14, x26, #8
    sub x19, x29, #120
    mov x10, x14
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    ldr x26, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_27:
L5_25:
L5_23:
    add x14, x25, #1
    mov x25, x14
    b L5_21
L5_24:
    sub x14, x29, #192
    ldrb w14, [x14]
    cbnz w14, L5_31
    b L5_36
L5_36:
    mov w15, w14
    b L5_32
L5_31:
    add x14, x19, #1
    ldrb w15, [x14]
L5_32:
    and w14, w15, #255
    cbnz w14, L5_28
    b L5_29
L5_28:
    add x14, x20, #24
    mov x0, x14
    sub x8, x29, #328
    bl _lb_utf8_Decoder_finish
    sub x15, x29, #328
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L5_34
    b L5_33
L5_34:
    sub x19, x29, #120
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    ldr x26, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_35:
L5_33:
    b L5_30
L5_29:
L5_30:
    b L5_20
L5_19:
L5_20:
    sub x14, x29, #120
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    ldr x26, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_WebSocketDecoder_create
    .no_dead_strip _lb_net_WebSocketDecoder_create
_lb_net_WebSocketDecoder_create:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #816
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #784]
    str x20, [sp, #776]
    sub x16, x29, #328
    str w0, [x16]
    sub x16, x29, #344
    str x1, [x16]
    sub x16, x29, #360
    str x2, [x16]
    sub x19, x29, #632
    mov x0, x19
    mov x1, #0
    movz x2, #272
    bl _memset
    sub x14, x29, #328
    ldrb w14, [x14]
    strb w14, [x19]
    sub x14, x29, #344
    ldr x14, [x14]
    add x15, x19, #8
    str x14, [x15]
    sub x20, x29, #808
    mov x0, x20
    mov x1, #0
    movz x2, #176
    bl _memset
    sub x14, x29, #360
    ldr x14, [x14]
    add x15, x20, #16
    str x14, [x15]
    add x14, x19, #88
    mov x0, x14
    mov x1, x20
    movz x2, #176
    bl _memcpy
    sub x20, x29, #312
    mov x0, x20
    mov x1, x19
    movz x2, #272
    bl _memcpy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #272
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #784]
    ldr x20, [sp, #776]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_1:
    adrp x0, l_text_36@PAGE
    add x0, x0, l_text_36@PAGEOFF
    adrp x1, l_text_19@PAGE
    add x1, x1, l_text_19@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_WebSocketDecoder_consume
    .no_dead_strip _lb_net_WebSocketDecoder_consume
_lb_net_WebSocketDecoder_consume:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #288
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #256]
    str x20, [sp, #248]
    str x21, [sp, #240]
    str x22, [sp, #232]
    sub x16, x29, #120
    str x0, [x16]
    sub x16, x29, #136
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #152
    str x3, [x16]
    str x4, [x16, #8]
    sub x9, x29, #120
    ldr x20, [x9]
    add x19, x20, #264
    ldrb w14, [x19]
    cbnz w14, L7_1
    b L7_2
L7_1:
    sub x19, x29, #112
    add x14, x19, #24
    add x15, x20, #268
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_37@PAGE
    add x15, x15, l_text_37@PAGEOFF
    sub x21, x29, #168
    str x15, [x21]
    add x15, x21, #8
    movz x9, #28
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_4:
    b L7_3
L7_2:
L7_3:
    sub x14, x29, #152
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ne L7_6
L7_5:
    sub x19, x29, #112
    add x14, x19, #24
    adrp x15, _lb_io_14invalid_buffer@PAGE
    add x15, x15, _lb_io_14invalid_buffer@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_38@PAGE
    add x15, x15, l_text_38@PAGEOFF
    sub x20, x29, #184
    str x15, [x20]
    add x15, x20, #8
    movz x9, #40
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_8:
    b L7_7
L7_6:
L7_7:
    sub x15, x29, #136
    mov x0, x20
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x9, x14
    ldr x3, [x9]
    ldr x4, [x9, #8]
    sub x8, x29, #288
    bl _lb_net_WebSocketDecoder_advance
    sub x21, x29, #288
    add x15, x21, #48
    ldrb w15, [x15]
    cbnz w15, L7_12
    b L7_11
L7_12:
    add x14, x21, #24
    sub x22, x29, #232
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L7_9
L7_11:
    sub x19, x29, #208
    mov x10, x21
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L7_10
L7_9:
    movz x9, #1
    strb w9, [x19]
    add x14, x20, #268
    ldr w15, [x22]
    str w15, [x14]
    sub x21, x29, #112
    add x14, x21, #24
    str w15, [x14]
    add x15, x22, #8
    add x14, x14, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_13:
L7_10:
    sub x20, x29, #112
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #48
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_14:
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_19@PAGE
    add x1, x1, l_text_19@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_WebSocketDecoder_finish
    .no_dead_strip _lb_net_WebSocketDecoder_finish
_lb_net_WebSocketDecoder_finish:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    str x20, [sp, #88]
    str x21, [sp, #80]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x19, [x9]
    add x14, x19, #264
    ldrb w15, [x14]
    cbnz w15, L8_1
    b L8_2
L8_1:
    sub x20, x29, #80
    add x14, x19, #268
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_37@PAGE
    add x14, x14, l_text_37@PAGEOFF
    sub x15, x29, #104
    str x14, [x15]
    add x14, x15, #8
    movz x9, #28
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
    ldr x21, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_4:
    b L8_3
L8_2:
L8_3:
    add x15, x19, #40
    ldrb w15, [x15]
    cbnz w15, L8_13
    b L8_8
L8_13:
    mov w20, w15
    b L8_9
L8_8:
    add x15, x19, #32
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w20, eq
L8_9:
    and w15, w20, #255
    cbnz w15, L8_14
    b L8_10
L8_14:
    mov w20, w15
    b L8_11
L8_10:
    add x15, x19, #88
    add x15, x15, #168
    ldrb w15, [x15]
    mov x10, #0
    cmp w15, w10
    cset w20, eq
L8_11:
    and w15, w20, #255
    cbnz w15, L8_5
    b L8_6
L8_5:
    movz x9, #1
    strb w9, [x14]
    add x15, x19, #268
    adrp x20, _lb_io_14unexpected_eof@PAGE
    add x20, x20, _lb_io_14unexpected_eof@PAGEOFF
    ldr w21, [x20]
    str w21, [x15]
    sub x21, x29, #80
    ldr w15, [x20]
    str w15, [x21]
    adrp x15, l_text_40@PAGE
    add x15, x15, l_text_40@PAGEOFF
    sub x20, x29, #120
    str x15, [x20]
    add x15, x20, #8
    movz x9, #46
    str x9, [x15]
    add x15, x21, #8
    mov x10, x20
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x21, #24
    movz x9, #1
    strb w9, [x15]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    ldr x21, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_12:
    b L8_7
L8_6:
L8_7:
    sub x14, x29, #80
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
    ldr x21, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_WebSocketDecoder_advance
_lb_net_WebSocketDecoder_advance:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #608
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #576]
    str x20, [sp, #568]
    str x21, [sp, #560]
    str x22, [sp, #552]
    str x23, [sp, #544]
    str x24, [sp, #536]
    str x25, [sp, #528]
    str x26, [sp, #520]
    str x27, [sp, #512]
    str x28, [sp, #504]
    sub x16, x29, #168
    str x0, [x16]
    sub x16, x29, #184
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #200
    str x3, [x16]
    str x4, [x16, #8]
    sub x9, x29, #168
    ldr x9, [x9]
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    add x9, x9, #40
    str x9, [sp, #152]
    sub x14, x29, #184
    add x9, x14, #8
    str x9, [sp, #144]
    ldr x9, [sp, #24]
    add x21, x9, #32
    ldr x9, [sp, #24]
    add x22, x9, #16
    sub x23, x29, #184
    add x24, x23, #8
    sub x25, x29, #216
    add x9, x25, #8
    str x9, [sp, #136]
    ldr x9, [sp, #24]
    add x9, x9, #8
    str x9, [sp, #128]
    sub x9, x29, #288
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #64
    str x9, [sp, #120]
    ldr x9, [sp, #8]
    add x9, x9, #32
    str x9, [sp, #112]
    sub x9, x29, #320
    str x9, [sp, #104]
    ldr x9, [sp, #24]
    add x9, x9, #88
    str x9, [sp, #96]
    sub x26, x29, #352
    add x9, x26, #24
    str x9, [sp, #88]
    ldr x9, [sp, #24]
    add x9, x9, #48
    str x9, [sp, #80]
    ldr x9, [sp, #24]
    add x9, x9, #80
    str x9, [sp, #72]
    mov x9, #0
    mov x27, x9
    mov x9, #0
    str w9, [sp, #16]
L9_1:
    ldr x9, [sp, #152]
    ldrb w14, [x9]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L9_4
    b L9_50
L9_50:
    mov w15, w14
    b L9_5
L9_4:
    ldr x9, [sp, #144]
    ldr x15, [x9]
    cmp x27, x15
    cset w15, lo
L9_5:
    and w20, w15, #255
    cbnz w20, L9_2
    b L9_3
L9_2:
    ldr x14, [x21]
    movz x10, #14
    cmp x14, x10
    b.lo 1f
    adrp x0, l_text_41@PAGE
    add x0, x0, l_text_41@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x14, x22
    ldr x15, [x23]
    ldr x20, [x24]
    cmp x27, x20
    b.lo 1f
    adrp x0, l_text_41@PAGE
    add x0, x0, l_text_41@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x15, x15, x27
    ldrb w15, [x15]
    strb w15, [x14]
    ldr x14, [x21]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_77@PAGE
    add x1, x1, l_text_77@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x21]
    add x20, x27, #1
    movz x10, #15
    cmp x14, x10
    b.lo 1f
    adrp x0, l_text_44@PAGE
    add x0, x0, l_text_44@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x14
    b.ls L9_9
L9_10:
    adrp x0, l_text_44@PAGE
    add x0, x0, l_text_44@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
L9_9:
    str x22, [x25]
    ldr x10, [sp, #136]
    str x14, [x10]
    ldr x9, [sp, #24]
    ldrb w15, [x9]
    ldr x9, [sp, #128]
    ldr x27, [x9]
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x15
    mov x3, x27
    sub x8, x29, #288
    bl _lb_net_21websocket_parse_frame
    ldr x9, [sp, #120]
    ldrb w15, [x9]
    cbnz w15, L9_12
    b L9_11
L9_12:
    ldr x9, [sp, #8]
    add x14, x9, #40
    sub x19, x29, #160
    add x15, x19, #24
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #576]
    ldr x20, [sp, #568]
    ldr x21, [sp, #560]
    ldr x22, [sp, #552]
    ldr x23, [sp, #544]
    ldr x24, [sp, #536]
    ldr x25, [sp, #528]
    ldr x26, [sp, #520]
    ldr x27, [sp, #512]
    ldr x28, [sp, #504]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_11:
    ldr x9, [sp, #112]
    ldrb w14, [x9]
    cbnz w14, L9_14
    b L9_7
L9_14:
    ldr x10, [sp, #8]
    ldr x11, [sp, #104]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L9_6:
    ldr x0, [sp, #96]
    ldr x9, [sp, #104]
    mov x1, x9
    sub x8, x29, #352
    bl _lb_net_WebSocketSequence_begin
    ldr x9, [sp, #88]
    ldrb w14, [x9]
    cbnz w14, L9_16
    b L9_15
L9_16:
    sub x19, x29, #160
    add x14, x19, #24
    mov x10, x26
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #576]
    ldr x20, [sp, #568]
    ldr x21, [sp, #560]
    ldr x22, [sp, #552]
    ldr x23, [sp, #544]
    ldr x24, [sp, #536]
    ldr x25, [sp, #528]
    ldr x26, [sp, #520]
    ldr x27, [sp, #512]
    ldr x28, [sp, #504]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_15:
    ldr x10, [sp, #104]
    ldr x11, [sp, #80]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    movz x9, #1
    ldr x10, [sp, #152]
    strb w9, [x10]
    mov x9, #0
    ldr x10, [sp, #72]
    str x9, [x10]
    mov x9, #0
    str x9, [x21]
    movz x9, #1
    mov w14, w9
    b L9_8
L9_7:
    ldr w9, [sp, #16]
    mov w14, w9
L9_8:
    mov x27, x20
    mov w9, w14
    str w9, [sp, #16]
    b L9_1
L9_3:
    cbnz w14, L9_18
    b L9_19
L9_18:
    sub x19, x29, #376
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str x27, [x19]
    sub x20, x29, #160
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #48
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #576]
    ldr x20, [sp, #568]
    ldr x21, [sp, #560]
    ldr x22, [sp, #552]
    ldr x23, [sp, #544]
    ldr x24, [sp, #536]
    ldr x25, [sp, #528]
    ldr x26, [sp, #520]
    ldr x27, [sp, #512]
    ldr x28, [sp, #504]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_19:
L9_20:
    sub x14, x29, #184
    add x15, x14, #8
    ldr x15, [x15]
    mov x9, x15
    mov x10, x27
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_45@PAGE
    add x0, x0, l_text_45@PAGEOFF
    adrp x1, l_text_77@PAGE
    add x1, x1, l_text_77@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    sub x9, x29, #200
    str x9, [sp, #64]
    ldr x9, [sp, #64]
    add x22, x9, #8
    ldr x22, [x22]
    cmp x20, x22
    b.ls L9_23
L9_22:
    mov x20, x22
    b L9_24
L9_23:
L9_24:
    ldr x9, [sp, #24]
    add x9, x9, #48
    str x9, [sp, #56]
    ldr x9, [sp, #56]
    add x9, x9, #8
    str x9, [sp, #48]
    ldr x9, [sp, #48]
    ldr x25, [x9]
    ldr x9, [sp, #24]
    add x26, x9, #80
    ldr x19, [x26]
    mov x9, x25
    mov x10, x19
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_46@PAGE
    add x0, x0, l_text_46@PAGEOFF
    adrp x1, l_text_77@PAGE
    add x1, x1, l_text_77@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x19, x9
    cmp x20, x19
    b.ls L9_26
L9_25:
    mov x20, x19
    b L9_27
L9_26:
L9_27:
    ldr x9, [x14]
    str x9, [sp, #40]
    ldr x9, [sp, #64]
    ldr x25, [x9]
    ldr x9, [sp, #56]
    add x28, x9, #28
    ldr x9, [sp, #56]
    add x9, x9, #24
    str x9, [sp, #32]
    mov x9, #0
    mov x24, x9
L9_28:
    cmp x24, x20
    b.hs L9_31
L9_29:
    mov x9, x27
    mov x10, x24
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_48@PAGE
    add x0, x0, l_text_48@PAGEOFF
    adrp x1, l_text_77@PAGE
    add x1, x1, l_text_77@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    cmp x14, x15
    b.lo 1f
    adrp x0, l_text_48@PAGE
    add x0, x0, l_text_48@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x10, [sp, #40]
    add x14, x14, x10
    ldrb w14, [x14]
    cmp x24, x22
    b.lo 1f
    adrp x0, l_text_49@PAGE
    add x0, x0, l_text_49@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x21, x25, x24
    ldrb w23, [x28]
    cbnz w23, L9_32
    b L9_33
L9_32:
    and w19, w14, #255
    ldr x23, [x26]
    mov x9, x23
    mov x10, x24
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_49@PAGE
    add x0, x0, l_text_49@PAGEOFF
    adrp x1, l_text_77@PAGE
    add x1, x1, l_text_77@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
L9_36:
    movz x10, #4
    udiv x11, x23, x10
    msub x14, x11, x10, x23
    movz x10, #4
    cmp x14, x10
    b.lo 1f
    adrp x0, l_text_49@PAGE
    add x0, x0, l_text_49@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x10, [sp, #32]
    add x14, x14, x10
    ldrb w14, [x14]
    eor w14, w14, w19
    b L9_34
L9_33:
    and w19, w14, #255
    mov w14, w19
L9_34:
    and w19, w14, #255
    strb w19, [x21]
L9_30:
    add x14, x24, #1
    mov x24, x14
    b L9_28
L9_31:
    ldr x14, [x26]
    mov x9, x14
    mov x10, x20
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_51@PAGE
    add x0, x0, l_text_51@PAGEOFF
    adrp x1, l_text_77@PAGE
    add x1, x1, l_text_77@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x26]
    ldr x9, [sp, #48]
    ldr x15, [x9]
    cmp x14, x15
    cset w14, eq
    ldr x9, [sp, #24]
    add x15, x9, #88
    ldr x9, [sp, #64]
    ldr x21, [x9]
    add x19, x22, #1
    mov x9, #0
    cmp x9, x19
    b.lo 1f
    adrp x0, l_text_52@PAGE
    add x0, x0, l_text_52@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x20, x19
    b.lo 1f
    adrp x0, l_text_52@PAGE
    add x0, x0, l_text_52@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x20
    b.ls L9_37
L9_38:
    adrp x0, l_text_52@PAGE
    add x0, x0, l_text_52@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
L9_37:
    sub x19, x29, #392
    str x21, [x19]
    add x22, x19, #8
    str x20, [x22]
    and w22, w14, #255
    mov x0, x15
    ldr x9, [sp, #56]
    mov x1, x9
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x22
    sub x8, x29, #424
    bl _lb_net_WebSocketSequence_payload
    sub x23, x29, #424
    add x19, x23, #24
    ldrb w19, [x19]
    cbnz w19, L9_40
    b L9_39
L9_40:
    sub x19, x29, #160
    add x14, x19, #24
    mov x10, x23
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #576]
    ldr x20, [sp, #568]
    ldr x21, [sp, #560]
    ldr x22, [sp, #552]
    ldr x23, [sp, #544]
    ldr x24, [sp, #536]
    ldr x25, [sp, #528]
    ldr x26, [sp, #520]
    ldr x27, [sp, #512]
    ldr x28, [sp, #504]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_39:
    cbnz w22, L9_42
    b L9_43
L9_42:
    mov x9, #0
    ldr x10, [sp, #152]
    strb w9, [x10]
    b L9_44
L9_43:
L9_44:
    sub x21, x29, #448
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    mov x9, x27
    mov x10, x20
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_53@PAGE
    add x0, x0, l_text_53@PAGEOFF
    adrp x1, l_text_77@PAGE
    add x1, x1, l_text_77@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x21]
    add x14, x21, #8
    str x20, [x14]
    ldr x9, [sp, #56]
    ldrb w14, [x9]
    add x15, x21, #16
    strb w14, [x15]
    ldr w9, [sp, #16]
    and w15, w9, #255
    add x19, x21, #17
    strb w15, [x19]
    add x15, x21, #18
    strb w22, [x15]
    cbnz w22, L9_45
    b L9_51
L9_51:
    mov w15, w22
    b L9_46
L9_45:
    ldr x9, [sp, #56]
    add x15, x9, #1
    ldrb w15, [x15]
L9_46:
    and w19, w15, #255
    cbnz w19, L9_47
    b L9_52
L9_52:
    mov w14, w19
    b L9_48
L9_47:
    mov w15, w14
    and w15, w15, #255
    movz x10, #8
    cmp w15, w10
    cset w15, lo
    mov w14, w15
L9_48:
    and w15, w14, #255
    add x19, x21, #19
    strb w15, [x19]
    sub x19, x29, #160
    mov x10, x21
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x15, x19, #48
    mov x9, #0
    strb w9, [x15]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #576]
    ldr x20, [sp, #568]
    ldr x21, [sp, #560]
    ldr x22, [sp, #552]
    ldr x23, [sp, #544]
    ldr x24, [sp, #536]
    ldr x25, [sp, #528]
    ldr x26, [sp, #520]
    ldr x27, [sp, #512]
    ldr x28, [sp, #504]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_WebSocketEncoder_create
    .no_dead_strip _lb_net_WebSocketEncoder_create
_lb_net_WebSocketEncoder_create:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #672
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #640]
    str x20, [sp, #632]
    sub x16, x29, #256
    str w0, [x16]
    sub x16, x29, #272
    str x1, [x16]
    sub x16, x29, #288
    str x2, [x16]
    sub x19, x29, #488
    mov x0, x19
    mov x1, #0
    movz x2, #200
    bl _memset
    sub x14, x29, #256
    ldrb w14, [x14]
    strb w14, [x19]
    sub x14, x29, #272
    ldr x14, [x14]
    add x15, x19, #8
    str x14, [x15]
    sub x20, x29, #664
    mov x0, x20
    mov x1, #0
    movz x2, #176
    bl _memset
    sub x14, x29, #288
    ldr x14, [x14]
    add x15, x20, #16
    str x14, [x15]
    add x14, x19, #16
    mov x0, x14
    mov x1, x20
    movz x2, #176
    bl _memcpy
    sub x20, x29, #240
    mov x0, x20
    mov x1, x19
    movz x2, #200
    bl _memcpy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #200
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #640]
    ldr x20, [sp, #632]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_1:
    adrp x0, l_text_54@PAGE
    add x0, x0, l_text_54@PAGEOFF
    adrp x1, l_text_19@PAGE
    add x1, x1, l_text_19@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_WebSocketEncoder_write
    .no_dead_strip _lb_net_WebSocketEncoder_write
_lb_net_WebSocketEncoder_write:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    str x21, [sp, #192]
    str x22, [sp, #184]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #128
    str w3, [x16]
    sub x16, x29, #144
    str x4, [x16]
    str x5, [x16, #8]
    sub x16, x29, #160
    str w6, [x16]
    sub x9, x29, #96
    ldr x20, [x9]
    add x19, x20, #192
    ldrb w14, [x19]
    cbnz w14, L11_1
    b L11_2
L11_1:
    sub x19, x29, #88
    add x14, x20, #196
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_55@PAGE
    add x14, x14, l_text_55@PAGEOFF
    sub x15, x29, #176
    str x14, [x15]
    add x14, x15, #8
    movz x9, #28
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_4:
    b L11_3
L11_2:
L11_3:
    sub x14, x29, #112
    sub x15, x29, #128
    ldrb w15, [x15]
    sub x21, x29, #144
    sub x22, x29, #160
    ldrb w22, [x22]
    mov x0, x20
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x3, x15
    mov x9, x21
    ldr x4, [x9]
    ldr x5, [x9, #8]
    mov x6, x22
    sub x8, x29, #232
    bl _lb_net_WebSocketEncoder_emit
    sub x15, x29, #232
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L11_8
    b L11_7
L11_8:
    sub x21, x29, #200
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L11_5
L11_7:
    b L11_6
L11_5:
    movz x9, #1
    strb w9, [x19]
    add x14, x20, #196
    ldr w15, [x21]
    str w15, [x14]
    sub x22, x29, #88
    str w15, [x22]
    add x14, x21, #8
    add x15, x22, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_9:
L11_6:
    sub x14, x29, #88
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_WebSocketEncoder_emit
_lb_net_WebSocketEncoder_emit:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #4736
    sub sp, sp, x16
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #4704]
    str x20, [sp, #4696]
    str x21, [sp, #4688]
    str x22, [sp, #4680]
    str x23, [sp, #4672]
    str x24, [sp, #4664]
    str x25, [sp, #4656]
    str x26, [sp, #4648]
    str x27, [sp, #4640]
    str x28, [sp, #4632]
    sub x16, x29, #144
    str x0, [x16]
    sub x16, x29, #160
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #176
    str w3, [x16]
    sub x16, x29, #192
    str x4, [x16]
    str x5, [x16, #8]
    sub x16, x29, #208
    str w6, [x16]
    sub x9, x29, #144
    ldr x21, [x9]
    sub x14, x29, #176
    ldrb w19, [x14]
    mov w14, w19
    and w20, w14, #255
    mov x0, x20
    sub x8, x29, #248
    bl _lb_net_16websocket_opcode
    sub x15, x29, #248
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L12_2
    b L12_1
L12_2:
    add x14, x15, #8
    sub x19, x29, #136
    mov x10, x14
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
    ldr x19, [sp, #4704]
    ldr x20, [sp, #4696]
    ldr x21, [sp, #4688]
    ldr x22, [sp, #4680]
    ldr x23, [sp, #4672]
    ldr x24, [sp, #4664]
    ldr x25, [sp, #4656]
    ldr x26, [sp, #4648]
    ldr x27, [sp, #4640]
    ldr x28, [sp, #4632]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_1:
    sub x22, x29, #192
    add x23, x22, #8
    ldr x24, [x23]
    add x14, x21, #8
    ldr x14, [x14]
    cmp x24, x14
    b.ls L12_5
L12_4:
    sub x19, x29, #136
    adrp x14, _lb_net_15websocket_limit@PAGE
    add x14, x14, _lb_net_15websocket_limit@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_13@PAGE
    add x14, x14, l_text_13@PAGEOFF
    sub x15, x29, #264
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
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
    ldr x19, [sp, #4704]
    ldr x20, [sp, #4696]
    ldr x21, [sp, #4688]
    ldr x22, [sp, #4680]
    ldr x23, [sp, #4672]
    ldr x24, [sp, #4664]
    ldr x25, [sp, #4656]
    ldr x26, [sp, #4648]
    ldr x27, [sp, #4640]
    ldr x28, [sp, #4632]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_5:
L12_6:
    movz x10, #8
    cmp w20, w10
    cset w14, hs
    cbnz w14, L12_11
    b L12_77
L12_77:
    mov w15, w14
    b L12_12
L12_11:
    sub x14, x29, #208
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L12_78
    b L12_13
L12_78:
    mov w15, w14
    b L12_14
L12_13:
    movz x10, #125
    cmp x24, x10
    cset w15, hi
L12_14:
    and w14, w15, #255
    mov w15, w14
L12_12:
    and w14, w15, #255
    cbnz w14, L12_8
    b L12_9
L12_8:
    sub x19, x29, #136
    adrp x14, _lb_net_17websocket_invalid@PAGE
    add x14, x14, _lb_net_17websocket_invalid@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_56@PAGE
    add x14, x14, l_text_56@PAGEOFF
    sub x15, x29, #280
    str x14, [x15]
    add x14, x15, #8
    movz x9, #31
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
    ldr x19, [sp, #4704]
    ldr x20, [sp, #4696]
    ldr x21, [sp, #4688]
    ldr x22, [sp, #4680]
    ldr x23, [sp, #4672]
    ldr x24, [sp, #4664]
    ldr x25, [sp, #4656]
    ldr x26, [sp, #4648]
    ldr x27, [sp, #4640]
    ldr x28, [sp, #4632]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_9:
L12_10:
    sub x25, x29, #312
    sub x26, x29, #344
    mov x11, x26
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    strb w19, [x26]
    sub x14, x29, #208
    ldrb w27, [x14]
    add x14, x26, #1
    strb w27, [x14]
    add x14, x26, #8
    str x24, [x14]
    mov x10, x26
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    add x26, x21, #16
    mov x0, x26
    mov x9, x25
    mov x1, x9
    sub x8, x29, #376
    bl _lb_net_WebSocketSequence_begin
    sub x15, x29, #376
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L12_17
    b L12_16
L12_17:
    sub x19, x29, #136
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
    ldr x19, [sp, #4704]
    ldr x20, [sp, #4696]
    ldr x21, [sp, #4688]
    ldr x22, [sp, #4680]
    ldr x23, [sp, #4672]
    ldr x24, [sp, #4664]
    ldr x25, [sp, #4656]
    ldr x26, [sp, #4648]
    ldr x27, [sp, #4640]
    ldr x28, [sp, #4632]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_16:
    mov x0, x26
    mov x9, x25
    mov x1, x9
    mov x9, x22
    ldr x2, [x9]
    ldr x3, [x9, #8]
    movz x4, #1
    sub x8, x29, #408
    bl _lb_net_WebSocketSequence_payload
    sub x15, x29, #408
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L12_20
    b L12_19
L12_20:
    sub x19, x29, #136
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
    ldr x19, [sp, #4704]
    ldr x20, [sp, #4696]
    ldr x21, [sp, #4688]
    ldr x22, [sp, #4680]
    ldr x23, [sp, #4672]
    ldr x24, [sp, #4664]
    ldr x25, [sp, #4656]
    ldr x26, [sp, #4648]
    ldr x27, [sp, #4640]
    ldr x28, [sp, #4632]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_19:
    sub x19, x29, #424
    mov x11, x19
    str xzr, [x11, #0]
    str wzr, [x11, #8]
    strh wzr, [x11, #12]
    cbnz w27, L12_22
    b L12_23
L12_22:
    movz x9, #128
    mov w14, w9
    b L12_24
L12_23:
    mov x9, #0
    mov w14, w9
L12_24:
    and w15, w14, #255
    orr w15, w20, w15
    strb w15, [x19]
    ldr x15, [x23]
    movz x10, #126
    cmp x15, x10
    b.hs L12_26
L12_25:
    add x14, x19, #1
    and w20, w15, #255
    strb w20, [x14]
    movz x9, #2
    mov x20, x9
    b L12_27
L12_26:
    movz x10, #1, lsl #16
    cmp x15, x10
    b.hs L12_29
L12_28:
    add x14, x19, #1
    movz x9, #126
    strb w9, [x14]
    add x14, x19, #2
L12_32:
    lsr x20, x15, #8
    and w20, w20, #255
    strb w20, [x14]
    add x20, x19, #3
    and w24, w15, #255
    strb w24, [x20]
    movz x9, #4
    mov x20, x9
    b L12_30
L12_29:
    add x14, x19, #1
    movz x9, #127
    strb w9, [x14]
    mov x9, #0
    mov x14, x9
L12_33:
    movz x10, #8
    cmp x14, x10
    b.ge L12_36
L12_34:
    mov x9, x14
    movz x10, #2
    adds x9, x9, x10
    b.vc 1f
    adrp x0, l_text_63@PAGE
    add x0, x0, l_text_63@PAGEOFF
    adrp x1, l_text_77@PAGE
    add x1, x1, l_text_77@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    movz x10, #14
    cmp x15, x10
    b.lo 1f
    adrp x0, l_text_63@PAGE
    add x0, x0, l_text_63@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x20, x19, x15
    ldr x24, [x23]
    movz x9, #7
    mov x10, x14
    subs x9, x9, x10
    b.vc 1f
    adrp x0, l_text_63@PAGE
    add x0, x0, l_text_63@PAGEOFF
    adrp x1, l_text_77@PAGE
    add x1, x1, l_text_77@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    mov x9, x15
    movz x10, #8
    smulh x11, x9, x10
    mul x9, x9, x10
    cmp x11, x9, asr #63
    b.eq 1f
    adrp x0, l_text_63@PAGE
    add x0, x0, l_text_63@PAGEOFF
    adrp x1, l_text_77@PAGE
    add x1, x1, l_text_77@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x25, x9
    movz x10, #64
    cmp x25, x10
    b.lo L12_38
L12_37:
    adrp x0, l_text_63@PAGE
    add x0, x0, l_text_63@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L12_38:
    lsr x15, x24, x25
    and w15, w15, #255
    strb w15, [x20]
L12_35:
    add x15, x14, #1
    mov x14, x15
    b L12_33
L12_36:
    movz x9, #10
    mov x20, x9
L12_30:
L12_27:
    sub x24, x29, #428
    mov x11, x24
    str wzr, [x11, #0]
    ldrb w14, [x21]
    cbnz w14, L12_39
    b L12_40
L12_39:
    mov x0, x24
    movz x1, #4
    bl _lb_net_17websocket_entropy
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L12_43
L12_42:
    sub x19, x29, #136
    adrp x14, _lb_net_failed@PAGE
    add x14, x14, _lb_net_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_65@PAGE
    add x14, x14, l_text_65@PAGEOFF
    sub x15, x29, #448
    str x14, [x15]
    add x14, x15, #8
    movz x9, #43
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
    ldr x19, [sp, #4704]
    ldr x20, [sp, #4696]
    ldr x21, [sp, #4688]
    ldr x22, [sp, #4680]
    ldr x23, [sp, #4672]
    ldr x24, [sp, #4664]
    ldr x25, [sp, #4656]
    ldr x26, [sp, #4648]
    ldr x27, [sp, #4640]
    ldr x28, [sp, #4632]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_43:
L12_44:
    add x14, x19, #1
    ldrb w15, [x14]
    movz x10, #128
    orr w15, w15, w10
    strb w15, [x14]
    movz x10, #15
    cmp x20, x10
    b.lo 1f
    adrp x0, l_text_67@PAGE
    add x0, x0, l_text_67@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x10, #14
    cmp x20, x10
    b.ls L12_46
L12_47:
    adrp x0, l_text_67@PAGE
    add x0, x0, l_text_67@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
L12_46:
    add x14, x19, x20
    movz x9, #14
    sub x15, x9, x20
    sub x25, x29, #464
    str x14, [x25]
    add x14, x25, #8
    str x15, [x14]
    sub x14, x29, #480
    str x24, [x14]
    add x15, x14, #8
    movz x9, #4
    str x9, [x15]
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    movz x4, #4
    bl _lb_memory_copy_0g1_u8
    add x14, x20, #4
    b L12_41
L12_40:
    mov x14, x20
L12_41:
    sub x9, x29, #160
    str x9, [sp, #24]
    movz x10, #15
    cmp x14, x10
    b.lo 1f
    adrp x0, l_text_69@PAGE
    add x0, x0, l_text_69@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x14
    b.ls L12_48
L12_49:
    adrp x0, l_text_69@PAGE
    add x0, x0, l_text_69@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
L12_48:
    sub x15, x29, #496
    str x19, [x15]
    add x25, x15, #8
    str x14, [x25]
    ldr x9, [sp, #24]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #528
    bl _lb_io_9write_all
    sub x25, x29, #528
    add x15, x25, #24
    ldrb w15, [x15]
    cbnz w15, L12_51
    b L12_50
L12_51:
    sub x19, x29, #136
    mov x10, x25
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
    ldr x19, [sp, #4704]
    ldr x20, [sp, #4696]
    ldr x21, [sp, #4688]
    ldr x22, [sp, #4680]
    ldr x23, [sp, #4672]
    ldr x24, [sp, #4664]
    ldr x25, [sp, #4656]
    ldr x26, [sp, #4648]
    ldr x27, [sp, #4640]
    ldr x28, [sp, #4632]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_50:
    ldrb w14, [x21]
    mov x10, #0
    cmp w14, w10
    b.ne L12_54
L12_53:
    ldr x9, [sp, #24]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x22
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #560
    bl _lb_io_9write_all
    sub x15, x29, #560
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L12_57
    b L12_56
L12_57:
    sub x19, x29, #136
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
    ldr x19, [sp, #4704]
    ldr x20, [sp, #4696]
    ldr x21, [sp, #4688]
    ldr x22, [sp, #4680]
    ldr x23, [sp, #4672]
    ldr x24, [sp, #4664]
    ldr x25, [sp, #4656]
    ldr x26, [sp, #4648]
    ldr x27, [sp, #4640]
    ldr x28, [sp, #4632]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_56:
    sub x14, x29, #136
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
    ldr x19, [sp, #4704]
    ldr x20, [sp, #4696]
    ldr x21, [sp, #4688]
    ldr x22, [sp, #4680]
    ldr x23, [sp, #4672]
    ldr x24, [sp, #4664]
    ldr x25, [sp, #4656]
    ldr x26, [sp, #4648]
    ldr x27, [sp, #4640]
    ldr x28, [sp, #4632]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_54:
L12_55:
    movz x16, #4656
    sub x19, x29, x16
    mov x0, x19
    mov x1, #0
    movz x2, #4096
    bl _memset
    movz x16, #4672
    sub x21, x29, x16
    add x9, x21, #8
    str x9, [sp, #16]
    movz x16, #4704
    sub x9, x29, x16
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    add x9, x9, #24
    str x9, [sp, #8]
    mov x9, #0
    mov x27, x9
L12_60:
    ldr x14, [x23]
    cmp x27, x14
    b.hs L12_62
L12_61:
    sub x15, x14, x27
    movz x10, #4096
    cmp x15, x10
    b.hs L12_64
L12_63:
    mov x28, x15
    b L12_65
L12_64:
    movz x9, #4096
    mov x28, x9
L12_65:
    mov x9, #0
    mov x14, x9
L12_66:
    cmp x14, x28
    b.hs L12_69
L12_67:
    movz x10, #4096
    cmp x14, x10
    b.lo 1f
    adrp x0, l_text_71@PAGE
    add x0, x0, l_text_71@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x25, x19, x14
    mov x9, x27
    mov x10, x14
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_71@PAGE
    add x0, x0, l_text_71@PAGEOFF
    adrp x1, l_text_77@PAGE
    add x1, x1, l_text_77@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x26, [x22]
    ldr x20, [x23]
    cmp x15, x20
    b.lo 1f
    adrp x0, l_text_71@PAGE
    add x0, x0, l_text_71@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x20, x15, x26
    ldrb w20, [x20]
L12_71:
    movz x10, #4
    udiv x11, x15, x10
    msub x26, x11, x10, x15
    movz x10, #4
    cmp x26, x10
    b.lo 1f
    adrp x0, l_text_71@PAGE
    add x0, x0, l_text_71@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x26, x24, x26
    ldrb w26, [x26]
    eor w26, w26, w20
    strb w26, [x25]
L12_68:
    add x15, x14, #1
    mov x14, x15
    b L12_66
L12_69:
    movz x10, #4097
    cmp x28, x10
    b.lo 1f
    adrp x0, l_text_72@PAGE
    add x0, x0, l_text_72@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x28
    b.ls L12_72
L12_73:
    adrp x0, l_text_72@PAGE
    add x0, x0, l_text_72@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
L12_72:
    str x19, [x21]
    ldr x10, [sp, #16]
    str x28, [x10]
    ldr x9, [sp, #24]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x21
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    movz x16, #4704
    sub x8, x29, x16
    bl _lb_io_9write_all
    ldr x9, [sp, #8]
    ldrb w14, [x9]
    cbnz w14, L12_75
    b L12_74
L12_75:
    sub x19, x29, #136
    ldr x10, [sp, #0]
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
    ldr x19, [sp, #4704]
    ldr x20, [sp, #4696]
    ldr x21, [sp, #4688]
    ldr x22, [sp, #4680]
    ldr x23, [sp, #4672]
    ldr x24, [sp, #4664]
    ldr x25, [sp, #4656]
    ldr x26, [sp, #4648]
    ldr x27, [sp, #4640]
    ldr x28, [sp, #4632]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_74:
    mov x9, x27
    mov x10, x28
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_73@PAGE
    add x0, x0, l_text_73@PAGEOFF
    adrp x1, l_text_77@PAGE
    add x1, x1, l_text_77@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x27, x14
    b L12_60
L12_62:
    sub x14, x29, #136
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
    ldr x19, [sp, #4704]
    ldr x20, [sp, #4696]
    ldr x21, [sp, #4688]
    ldr x22, [sp, #4680]
    ldr x23, [sp, #4672]
    ldr x24, [sp, #4664]
    ldr x25, [sp, #4656]
    ldr x26, [sp, #4648]
    ldr x27, [sp, #4640]
    ldr x28, [sp, #4632]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_copy_0g1_u8
    .weak_definition _lb_memory_copy_0g1_u8
    .no_dead_strip _lb_memory_copy_0g1_u8
_lb_memory_copy_0g1_u8:
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
    cbnz w14, L13_11
    b L13_4
L13_11:
    mov w15, w14
    b L13_5
L13_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L13_5:
    and w14, w15, #255
    cbnz w14, L13_1
    b L13_2
L13_1:
    adrp x14, l_text_17@PAGE
    add x14, x14, l_text_17@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_74@PAGE
    add x14, x14, l_text_74@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L13_3
L13_2:
L13_3:
    mov x10, #0
    cmp x19, x10
    b.ls L13_7
L13_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memcpy
    mov x14, x0
    cbnz x14, L13_9
    b L13_10
L13_10:
    adrp x0, l_text_75@PAGE
    add x0, x0, l_text_75@PAGEOFF
    adrp x1, l_text_76@PAGE
    add x1, x1, l_text_76@PAGEOFF
    bl _lb_core_7trap_at
L13_9:
    b L13_8
L13_7:
L13_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_net_15websocket_frame_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/net/websocket/frame.lucb:24:5"
l_text_1:
    .asciz "WebSocket reserved bits require an extension"
l_text_2:
    .asciz "src/std/net/websocket/frame.lucb:26:5"
l_text_3:
    .asciz "src/std/net/websocket/frame.lucb:27:5"
l_text_4:
    .asciz "src/std/net/websocket/frame.lucb:28:5"
l_text_5:
    .asciz "WebSocket masking is wrong for this direction"
l_text_6:
    .asciz "src/std/net/websocket/frame.lucb:31:5"
l_text_7:
    .asciz "src/std/net/websocket/frame.lucb:37:9"
l_text_8:
    .asciz "shift count out of range"
l_text_9:
    .asciz "nonminimal WebSocket payload length"
l_text_10:
    .asciz "src/std/net/websocket/frame.lucb:44:9"
l_text_11:
    .asciz "WebSocket payload length has its sign bit set"
l_text_12:
    .asciz "src/std/net/websocket/frame.lucb:48:13"
l_text_13:
    .asciz "WebSocket frame exceeds its byte limit"
l_text_14:
    .asciz "WebSocket control frame must be final and at most 125 bytes"
l_text_15:
    .asciz "src/std/net/websocket/frame.lucb:58:9"
l_text_16:
    .asciz "src/std/net/websocket/frame.lucb:60:9"
l_text_17:
    .asciz "index out of bounds"
l_text_18:
    .asciz "src/std/net/websocket/frame.lucb:61:9"
l_text_19:
    .asciz "unreachable"
l_text_20:
    .asciz "src/std/net/websocket/frame.lucb:62:5"
l_text_21:
    .asciz "reserved WebSocket opcode"
l_text_22:
    .asciz "src/std/net/websocket/frame.lucb:72:9"
l_text_23:
    .asciz "invalid WebSocket close payload length"
l_text_24:
    .asciz "src/std/net/websocket/frame.lucb:81:5"
l_text_25:
    .asciz "reserved WebSocket close status"
l_text_26:
    .asciz "src/std/net/websocket/frame.lucb:85:5"
l_text_27:
    .asciz "WebSocket data follows a close frame"
l_text_28:
    .asciz "WebSocket continuation has no initial frame"
l_text_29:
    .asciz "new WebSocket message interrupts fragmentation"
l_text_30:
    .asciz "src/std/net/websocket/frame.lucb:115:9"
l_text_31:
    .asciz "WebSocket message exceeds its byte limit"
l_text_32:
    .asciz "src/std/net/websocket/frame.lucb:117:9"
l_text_33:
    .asciz "src/std/net/websocket/frame.lucb:123:17"
l_text_34:
    .asciz "src/std/net/websocket/frame.lucb:124:17"
l_text_35:
    .asciz "src/std/net/websocket/frame.lucb:126:21"
l_text_36:
    .asciz "src/std/net/websocket/frame.lucb:162:9"
l_text_37:
    .asciz "WebSocket decoder has failed"
l_text_38:
    .asciz "WebSocket output buffer must be nonempty"
l_text_39:
    .asciz "src/std/net/websocket/frame.lucb:172:13"
l_text_40:
    .asciz "WebSocket ended without a complete close frame"
l_text_41:
    .asciz "src/std/net/websocket/frame.lucb:188:13"
l_text_42:
    .asciz "src/std/net/websocket/frame.lucb:189:13"
l_text_43:
    .asciz "src/std/net/websocket/frame.lucb:190:13"
l_text_44:
    .asciz "src/std/net/websocket/frame.lucb:191:13"
l_text_45:
    .asciz "src/std/net/websocket/frame.lucb:200:9"
l_text_46:
    .asciz "src/std/net/websocket/frame.lucb:203:9"
l_text_47:
    .asciz "src/std/net/websocket/frame.lucb:204:13"
l_text_48:
    .asciz "src/std/net/websocket/frame.lucb:206:13"
l_text_49:
    .asciz "src/std/net/websocket/frame.lucb:207:13"
l_text_50:
    .asciz "division by zero"
l_text_51:
    .asciz "src/std/net/websocket/frame.lucb:208:9"
l_text_52:
    .asciz "src/std/net/websocket/frame.lucb:210:9"
l_text_53:
    .asciz "src/std/net/websocket/frame.lucb:213:9"
l_text_54:
    .asciz "src/std/net/websocket/frame.lucb:226:9"
l_text_55:
    .asciz "WebSocket encoder has failed"
l_text_56:
    .asciz "invalid WebSocket control frame"
l_text_57:
    .asciz "src/std/net/websocket/frame.lucb:246:9"
l_text_58:
    .asciz "src/std/net/websocket/frame.lucb:249:13"
l_text_59:
    .asciz "src/std/net/websocket/frame.lucb:251:13"
l_text_60:
    .asciz "src/std/net/websocket/frame.lucb:252:13"
l_text_61:
    .asciz "src/std/net/websocket/frame.lucb:253:13"
l_text_62:
    .asciz "src/std/net/websocket/frame.lucb:256:13"
l_text_63:
    .asciz "src/std/net/websocket/frame.lucb:258:17"
l_text_64:
    .asciz "src/std/net/websocket/frame.lucb:262:13"
l_text_65:
    .asciz "WebSocket masking randomness is unavailable"
l_text_66:
    .asciz "src/std/net/websocket/frame.lucb:264:13"
l_text_67:
    .asciz "src/std/net/websocket/frame.lucb:265:13"
l_text_68:
    .asciz "src/std/net/websocket/frame.lucb:266:13"
l_text_69:
    .asciz "src/std/net/websocket/frame.lucb:267:9"
l_text_70:
    .asciz "src/std/net/websocket/frame.lucb:274:13"
l_text_71:
    .asciz "src/std/net/websocket/frame.lucb:276:17"
l_text_72:
    .asciz "src/std/net/websocket/frame.lucb:277:13"
l_text_73:
    .asciz "src/std/net/websocket/frame.lucb:278:13"
l_text_74:
    .asciz "src/std/memory.lucb:328:9"
l_text_75:
    .asciz "src/std/memory.lucb:330:9"
l_text_76:
    .asciz "null_foreign"
l_text_77:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
