    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_net_listener_0init
_lb_net_listener_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_Listener_bind
    .no_dead_strip _lb_net_Listener_bind
_lb_net_Listener_bind:
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
    str x24, [sp, #424]
    str x25, [sp, #416]
    str x26, [sp, #408]
    sub x16, x29, #160
    str x0, [x16]
    sub x16, x29, #176
    str w1, [x16]
    sub x16, x29, #192
    str w2, [x16]
    sub x0, x29, #160
    ldr x1, [x0]
    movz x2, #24
    bl _memcpy
    sub x14, x29, #176
    ldrsw x19, [x14]
    mov x10, #0
    cmp w19, w10
    b.gt L1_2
L1_1:
    sub x19, x29, #136
    add x14, x19, #16
    adrp x15, _lb_net_15invalid_options@PAGE
    add x15, x15, _lb_net_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_0@PAGE
    add x15, x15, l_text_0@PAGEOFF
    sub x20, x29, #208
    str x15, [x20]
    add x15, x20, #8
    movz x9, #37
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
    ldr x24, [sp, #424]
    ldr x25, [sp, #416]
    ldr x26, [sp, #408]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_4:
    b L1_3
L1_2:
L1_3:
    sub x20, x29, #236
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str wzr, [x11, #24]
    sub x21, x29, #160
    mov x0, x21
    mov x1, x20
    sub x8, x29, #280
    bl _lb_net_SocketAddress_12write_native
    sub x15, x29, #280
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_6
    b L1_5
L1_6:
    add x14, x15, #8
    sub x19, x29, #136
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
    ldr x24, [sp, #424]
    ldr x25, [sp, #416]
    ldr x26, [sp, #408]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_7:
L1_5:
    ldr w22, [x15]
    sub x24, x29, #296
    adrp x14, _lb_net_stream@PAGE
    add x14, x14, _lb_net_stream@PAGEOFF
    ldrsw x14, [x14]
    ldrb w23, [x21]
    mov x0, x14
    mov x1, x23
    sub x8, x29, #344
    bl _lb_net_SocketHandle_create
    sub x23, x29, #344
    add x14, x23, #40
    ldrb w14, [x14]
    cbnz w14, L1_9
    b L1_8
L1_9:
    add x14, x23, #16
    sub x19, x29, #136
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
    ldr x19, [sp, #464]
    ldr x20, [sp, #456]
    ldr x21, [sp, #448]
    ldr x22, [sp, #440]
    ldr x23, [sp, #432]
    ldr x24, [sp, #424]
    ldr x25, [sp, #416]
    ldr x26, [sp, #408]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_10:
L1_8:
    mov x10, x23
    mov x11, x24
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldr w12, [x10, #8]
    str w12, [x11, #8]
    mov x0, x24
    sub x8, x29, #384
    bl _lb_net_SocketHandle_require
    sub x15, x29, #384
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_12
    b L1_11
L1_12:
    add x14, x15, #8
    sub x19, x29, #136
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
    mov x0, x24
    bl _lb_net_SocketHandle_destroy
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
    ldr x24, [sp, #424]
    ldr x25, [sp, #416]
    ldr x26, [sp, #408]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_13:
L1_11:
    ldrsw x23, [x15]
    adrp x14, _lb_net_12socket_level@PAGE
    add x14, x14, _lb_net_12socket_level@PAGEOFF
    ldrsw x14, [x14]
    adrp x25, _lb_net_20reuse_address_option@PAGE
    add x25, x25, _lb_net_20reuse_address_option@PAGEOFF
    ldrsw x25, [x25]
    mov x0, x23
    mov x1, x14
    mov x2, x25
    movz x3, #1
    sub x8, x29, #416
    bl _lb_net_18set_socket_integer
    sub x25, x29, #416
    add x14, x25, #24
    ldrb w14, [x14]
    cbnz w14, L1_15
    b L1_14
L1_15:
    sub x19, x29, #136
    add x14, x19, #16
    mov x10, x25
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x0, x24
    bl _lb_net_SocketHandle_destroy
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
    ldr x24, [sp, #424]
    ldr x25, [sp, #416]
    ldr x26, [sp, #408]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_16:
L1_14:
    ldrb w14, [x21]
    movz x10, #1
    cmp w14, w10
    b.ne L1_18
L1_17:
    adrp x14, _lb_net_10ipv6_level@PAGE
    add x14, x14, _lb_net_10ipv6_level@PAGEOFF
    ldrsw x14, [x14]
    adrp x15, _lb_net_16ipv6_only_option@PAGE
    add x15, x15, _lb_net_16ipv6_only_option@PAGEOFF
    ldrsw x15, [x15]
    sub x21, x29, #192
    ldrb w21, [x21]
    cbnz w21, L1_20
    b L1_21
L1_20:
    movz x9, #1
    mov w21, w9
    b L1_22
L1_21:
    mov x9, #0
    mov w21, w9
L1_22:
    mov x0, x23
    mov x1, x14
    mov x2, x15
    mov x3, x21
    sub x8, x29, #448
    bl _lb_net_18set_socket_integer
    sub x26, x29, #448
    add x25, x26, #24
    ldrb w25, [x25]
    cbnz w25, L1_24
    b L1_23
L1_24:
    sub x19, x29, #136
    add x14, x19, #16
    mov x10, x26
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x0, x24
    bl _lb_net_SocketHandle_destroy
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
    ldr x24, [sp, #424]
    ldr x25, [sp, #416]
    ldr x26, [sp, #408]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_25:
L1_23:
    b L1_19
L1_18:
L1_19:
    mov x0, x23
    mov x1, x20
    mov x2, x22
    bl _bind
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L1_27
L1_26:
    sub x19, x29, #136
    add x20, x19, #16
    bl _lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl _lb_net_12socket_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_1@PAGE
    add x14, x14, l_text_1@PAGEOFF
    sub x15, x29, #464
    str x14, [x15]
    add x14, x15, #8
    movz x9, #39
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x0, x24
    bl _lb_net_SocketHandle_destroy
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
    ldr x24, [sp, #424]
    ldr x25, [sp, #416]
    ldr x26, [sp, #408]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_29:
    b L1_28
L1_27:
L1_28:
    mov x0, x23
    mov x1, x19
    bl _listen
    mov w14, w0
    adrp x20, _lb_net_18socket_interrupted@PAGE
    add x20, x20, _lb_net_18socket_interrupted@PAGEOFF
    mov w21, w14
L1_30:
    mov x10, #0
    cmp w21, w10
    cset w14, lt
    cbnz w14, L1_33
    b L1_40
L1_40:
    mov w15, w14
    b L1_34
L1_33:
    bl _lb_net_12socket_errno
    mov w14, w0
    ldrsw x15, [x20]
    cmp w14, w15
    cset w15, eq
L1_34:
    and w14, w15, #255
    cbnz w14, L1_31
    b L1_32
L1_31:
    mov x0, x23
    mov x1, x19
    bl _listen
    mov w21, w0
    b L1_30
L1_32:
    mov x10, #0
    cmp w21, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L1_36
L1_35:
    sub x19, x29, #136
    add x20, x19, #16
    bl _lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl _lb_net_12socket_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_2@PAGE
    add x14, x14, l_text_2@PAGEOFF
    sub x15, x29, #480
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x0, x24
    bl _lb_net_SocketHandle_destroy
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
    ldr x24, [sp, #424]
    ldr x25, [sp, #416]
    ldr x26, [sp, #408]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_38:
    b L1_37
L1_36:
L1_37:
    sub x19, x29, #496
    mov x11, x19
    str xzr, [x11, #0]
    str wzr, [x11, #8]
    mov x10, x24
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldr w12, [x10, #8]
    str w12, [x11, #8]
    sub x20, x29, #136
    mov x10, x19
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldr w12, [x10, #8]
    str w12, [x11, #8]
    add x14, x20, #40
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
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
    ldr x24, [sp, #424]
    ldr x25, [sp, #416]
    ldr x26, [sp, #408]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_39:
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Listener_address
    .no_dead_strip _lb_net_Listener_address
_lb_net_Listener_address:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #176]
    str x20, [sp, #168]
    sub x16, x29, #104
    str x0, [x16]
    sub x9, x29, #104
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #144
    bl _lb_net_SocketHandle_require
    sub x15, x29, #144
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L2_2
    b L2_1
L2_2:
    add x14, x15, #8
    sub x19, x29, #96
    add x20, x19, #24
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_3:
L2_1:
    ldrsw x14, [x15]
    mov x0, x14
    mov x1, #0
    sub x8, x29, #200
    bl _lb_net_14socket_address
    sub x19, x29, #200
    add x14, x19, #48
    ldrb w14, [x14]
    cbnz w14, L2_5
    b L2_4
L2_5:
    add x14, x19, #24
    sub x20, x29, #96
    add x15, x20, #24
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_6:
L2_4:
    sub x20, x29, #96
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_7:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Listener_accept
    .no_dead_strip _lb_net_Listener_accept
_lb_net_Listener_accept:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #320
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #288]
    str x20, [sp, #280]
    str x21, [sp, #272]
    str x22, [sp, #264]
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str w1, [x16]
    sub x9, x29, #112
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #168
    bl _lb_net_SocketHandle_require
    sub x15, x29, #168
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_2
    b L3_1
L3_2:
    add x14, x15, #8
    sub x19, x29, #104
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_3:
L3_1:
    ldrsw x19, [x15]
    sub x10, x29, #296
    str w19, [x10]
    mov x0, x19
    mov x1, #0
    mov x2, #0
    bl _accept
    mov w14, w0
    sub x10, x29, #304
    str w14, [x10]
    b L3_21
L3_20:
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L3_21:
    adrp x20, _lb_net_18socket_interrupted@PAGE
    add x20, x20, _lb_net_18socket_interrupted@PAGEOFF
    mov w21, w14
L3_4:
    mov x10, #0
    cmp w21, w10
    cset w22, lt
    cbnz w22, L3_7
    b L3_24
L3_24:
    mov w14, w22
    b L3_8
L3_7:
    bl _lb_net_12socket_errno
    mov w14, w0
    ldrsw x15, [x20]
    cmp w14, w15
    cset w14, eq
L3_8:
    and w15, w14, #255
    cbnz w15, L3_5
    b L3_6
L3_5:
    sub x10, x29, #296
    str w19, [x10]
    mov x0, x19
    mov x1, #0
    mov x2, #0
    bl _accept
    mov w21, w0
    sub x10, x29, #312
    str w21, [x10]
    b L3_23
L3_22:
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L3_23:
    b L3_4
L3_6:
    cbnz w22, L3_9
    b L3_10
L3_9:
    sub x19, x29, #104
    add x20, x19, #16
    bl _lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl _lb_net_12socket_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_6@PAGE
    add x14, x14, l_text_6@PAGEOFF
    sub x15, x29, #184
    str x14, [x15]
    add x14, x15, #8
    movz x9, #42
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_12:
    b L3_11
L3_10:
L3_11:
    sub x19, x29, #200
    mov x0, x21
    sub x8, x29, #248
    bl _lb_net_Connection_over
    sub x15, x29, #248
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L3_14
    b L3_13
L3_14:
    add x14, x15, #16
    sub x19, x29, #104
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_15:
L3_13:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #128
    ldrb w14, [x14]
    mov x0, x19
    mov x1, x14
    sub x8, x29, #280
    bl _lb_net_Connection_15set_nonblocking
    sub x20, x29, #280
    add x14, x20, #24
    ldrb w14, [x14]
    cbnz w14, L3_17
    b L3_16
L3_17:
    sub x21, x29, #104
    add x14, x21, #16
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #40
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_net_Connection_destroy
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_18:
L3_16:
    sub x20, x29, #104
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #40
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_19:
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Listener_wait
    .no_dead_strip _lb_net_Listener_wait
_lb_net_Listener_wait:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #192]
    str x20, [sp, #184]
    str x21, [sp, #176]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str w1, [x16]
    sub x16, x29, #128
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #144
    str x4, [x16]
    sub x9, x29, #96
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #184
    bl _lb_net_SocketHandle_require
    sub x15, x29, #184
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L4_2
    b L4_1
L4_2:
    add x14, x15, #8
    sub x19, x29, #88
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_3:
L4_1:
    ldrsw x14, [x15]
    sub x19, x29, #112
    ldrb w19, [x19]
    sub x20, x29, #128
    sub x21, x29, #144
    ldr x21, [x21]
    mov x0, x14
    mov x1, x19
    mov x9, x20
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x21
    sub x8, x29, #224
    bl _lb_net_11wait_socket
    sub x19, x29, #224
    add x14, x19, #32
    ldrb w14, [x14]
    cbnz w14, L4_5
    b L4_4
L4_5:
    add x14, x19, #8
    sub x20, x29, #88
    add x15, x20, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_6:
L4_4:
    sub x20, x29, #88
    mov x10, x19
    mov x11, x20
    ldr w12, [x10, #0]
    str w12, [x11, #0]
    ldrb w12, [x10, #4]
    strb w12, [x11, #4]
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_7:
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Listener_15set_nonblocking
    .no_dead_strip _lb_net_Listener_15set_nonblocking
_lb_net_Listener_15set_nonblocking:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    str x20, [sp, #136]
    str x21, [sp, #128]
    sub x16, x29, #88
    str x0, [x16]
    sub x16, x29, #104
    str w1, [x16]
    sub x9, x29, #88
    ldr x19, [x9]
    mov x0, x19
    sub x8, x29, #144
    bl _lb_net_SocketHandle_require
    sub x15, x29, #144
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L5_2
    b L5_1
L5_2:
    add x14, x15, #8
    sub x19, x29, #80
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_3:
L5_1:
    ldrsw x14, [x15]
    sub x20, x29, #104
    ldrb w20, [x20]
    mov x0, x14
    mov x1, x20
    sub x8, x29, #176
    bl _lb_net_15set_nonblocking
    sub x21, x29, #176
    add x14, x21, #24
    ldrb w14, [x14]
    cbnz w14, L5_5
    b L5_4
L5_5:
    sub x19, x29, #80
    mov x10, x21
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_6:
L5_4:
    add x14, x19, #8
    strb w20, [x14]
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_Listener_14is_nonblocking
    .no_dead_strip _lb_net_Listener_14is_nonblocking
_lb_net_Listener_14is_nonblocking:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    str x20, [sp, #136]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #128
    bl _lb_net_SocketHandle_require
    sub x15, x29, #128
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L6_2
    b L6_1
L6_2:
    add x14, x15, #8
    sub x19, x29, #80
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_3:
L6_1:
    ldrsw x14, [x15]
    mov x0, x14
    sub x8, x29, #168
    bl _lb_net_19socket_status_flags
    sub x19, x29, #168
    add x14, x19, #32
    ldrb w14, [x14]
    cbnz w14, L6_5
    b L6_4
L6_5:
    add x14, x19, #8
    sub x20, x29, #80
    add x15, x20, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_6:
L6_4:
    ldrsw x14, [x19]
    adrp x15, _lb_net_16nonblocking_flag@PAGE
    add x15, x15, _lb_net_16nonblocking_flag@PAGEOFF
    ldrsw x15, [x15]
    and w14, w14, w15
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    sub x15, x29, #80
    strb w14, [x15]
    add x14, x15, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_7:
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Listener_18set_receive_buffer
    .no_dead_strip _lb_net_Listener_18set_receive_buffer
_lb_net_Listener_18set_receive_buffer:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    str x20, [sp, #136]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str w1, [x16]
    sub x9, x29, #80
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #136
    bl _lb_net_SocketHandle_require
    sub x15, x29, #136
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L7_2
    b L7_1
L7_2:
    add x14, x15, #8
    sub x19, x29, #72
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_3:
L7_1:
    ldrsw x14, [x15]
    adrp x19, _lb_net_21receive_buffer_option@PAGE
    add x19, x19, _lb_net_21receive_buffer_option@PAGEOFF
    ldrsw x19, [x19]
    sub x20, x29, #96
    ldrsw x20, [x20]
    mov x0, x14
    mov x1, x19
    mov x2, x20
    sub x8, x29, #168
    bl _lb_net_17set_socket_buffer
    sub x19, x29, #168
    add x14, x19, #24
    ldrb w14, [x14]
    cbnz w14, L7_5
    b L7_4
L7_5:
    sub x20, x29, #72
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_6:
L7_4:
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_Listener_14receive_buffer
    .no_dead_strip _lb_net_Listener_14receive_buffer
_lb_net_Listener_14receive_buffer:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    str x20, [sp, #136]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #128
    bl _lb_net_SocketHandle_require
    sub x15, x29, #128
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L8_2
    b L8_1
L8_2:
    add x14, x15, #8
    sub x19, x29, #80
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_3:
L8_1:
    ldrsw x14, [x15]
    adrp x19, _lb_net_12socket_level@PAGE
    add x19, x19, _lb_net_12socket_level@PAGEOFF
    ldrsw x19, [x19]
    adrp x20, _lb_net_21receive_buffer_option@PAGE
    add x20, x20, _lb_net_21receive_buffer_option@PAGEOFF
    ldrsw x20, [x20]
    mov x0, x14
    mov x1, x19
    mov x2, x20
    sub x8, x29, #168
    bl _lb_net_18get_socket_integer
    sub x19, x29, #168
    add x14, x19, #32
    ldrb w14, [x14]
    cbnz w14, L8_5
    b L8_4
L8_5:
    add x14, x19, #8
    sub x20, x29, #80
    add x15, x20, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_6:
L8_4:
    ldrsw x14, [x19]
    sub x15, x29, #80
    str w14, [x15]
    add x14, x15, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_7:
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Listener_15set_send_buffer
    .no_dead_strip _lb_net_Listener_15set_send_buffer
_lb_net_Listener_15set_send_buffer:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    str x20, [sp, #136]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str w1, [x16]
    sub x9, x29, #80
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #136
    bl _lb_net_SocketHandle_require
    sub x15, x29, #136
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L9_2
    b L9_1
L9_2:
    add x14, x15, #8
    sub x19, x29, #72
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_3:
L9_1:
    ldrsw x14, [x15]
    adrp x19, _lb_net_18send_buffer_option@PAGE
    add x19, x19, _lb_net_18send_buffer_option@PAGEOFF
    ldrsw x19, [x19]
    sub x20, x29, #96
    ldrsw x20, [x20]
    mov x0, x14
    mov x1, x19
    mov x2, x20
    sub x8, x29, #168
    bl _lb_net_17set_socket_buffer
    sub x19, x29, #168
    add x14, x19, #24
    ldrb w14, [x14]
    cbnz w14, L9_5
    b L9_4
L9_5:
    sub x20, x29, #72
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_6:
L9_4:
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_Listener_11send_buffer
    .no_dead_strip _lb_net_Listener_11send_buffer
_lb_net_Listener_11send_buffer:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    str x20, [sp, #136]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #128
    bl _lb_net_SocketHandle_require
    sub x15, x29, #128
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L10_2
    b L10_1
L10_2:
    add x14, x15, #8
    sub x19, x29, #80
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_3:
L10_1:
    ldrsw x14, [x15]
    adrp x19, _lb_net_12socket_level@PAGE
    add x19, x19, _lb_net_12socket_level@PAGEOFF
    ldrsw x19, [x19]
    adrp x20, _lb_net_18send_buffer_option@PAGE
    add x20, x20, _lb_net_18send_buffer_option@PAGEOFF
    ldrsw x20, [x20]
    mov x0, x14
    mov x1, x19
    mov x2, x20
    sub x8, x29, #168
    bl _lb_net_18get_socket_integer
    sub x19, x29, #168
    add x14, x19, #32
    ldrb w14, [x14]
    cbnz w14, L10_5
    b L10_4
L10_5:
    add x14, x19, #8
    sub x20, x29, #80
    add x15, x20, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_6:
L10_4:
    ldrsw x14, [x19]
    sub x15, x29, #80
    str w14, [x15]
    add x14, x15, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_7:
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Listener_descriptor
    .no_dead_strip _lb_net_Listener_descriptor
_lb_net_Listener_descriptor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x14, [x9]
    sub x19, x29, #32
    mov x10, x14
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_1:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Listener_close
    .no_dead_strip _lb_net_Listener_close
_lb_net_Listener_close:
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
    mov x0, x14
    sub x8, x29, #104
    bl _lb_net_SocketHandle_close
    sub x15, x29, #104
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L12_2
    b L12_1
L12_2:
    sub x19, x29, #64
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_3:
L12_1:
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

    .p2align 2
    .globl _lb_net_Listener_destroy
    .no_dead_strip _lb_net_Listener_destroy
_lb_net_Listener_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    mov x0, x14
    bl _lb_net_SocketHandle_destroy
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_net_listener_0init

    .section __TEXT,__const
l_text_0:
    .asciz "the listener backlog must be positive"
l_text_1:
    .asciz "the listener could not bind its address"
l_text_2:
    .asciz "the listener could not begin listening"
l_text_3:
    .asciz "unreachable"
l_text_4:
    .asciz "src/std/net/listener.lucb:28:9"
l_text_5:
    .asciz "src/std/net/listener.lucb:32:9"
l_text_6:
    .asciz "the listener could not accept a connection"
l_text_7:
    .asciz "src/std/net/listener.lucb:47:9"
l_text_8:
    .asciz "src/std/net/listener.lucb:53:9"
l_text_9:
    .asciz "src/std/net/listener.lucb:65:9"
l_text_10:
    .asciz "src/std/net/listener.lucb:73:9"
l_text_11:
    .asciz "src/std/net/listener.lucb:81:9"
l_text_12:
    .asciz "src/std/net/listener.lucb:85:9"
l_text_13:
    .asciz "src/std/net/listener.lucb:97:9"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
