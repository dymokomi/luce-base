    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_net_connection_0init
_lb_net_connection_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_Connection_connect
    .no_dead_strip _lb_net_Connection_connect
_lb_net_Connection_connect:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #768
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #736]
    str x20, [sp, #728]
    str x21, [sp, #720]
    str x22, [sp, #712]
    str x23, [sp, #704]
    str x24, [sp, #696]
    str x25, [sp, #688]
    sub x16, x29, #152
    str x0, [x16]
    sub x16, x29, #168
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #184
    str x3, [x16]
    sub x16, x29, #200
    str w4, [x16]
    sub x0, x29, #152
    ldr x1, [x0]
    movz x2, #24
    bl _memcpy
    sub x19, x29, #168
    sub x14, x29, #184
    ldr x20, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x20
    sub x8, x29, #232
    bl _lb_net_15check_operation
    sub x15, x29, #232
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_2
    b L1_1
L1_2:
    sub x19, x29, #128
    add x14, x19, #16
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_3:
L1_1:
    sub x21, x29, #260
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str wzr, [x11, #24]
    sub x22, x29, #152
    mov x0, x22
    mov x1, x21
    sub x8, x29, #304
    bl _lb_net_SocketAddress_12write_native
    sub x15, x29, #304
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_5
    b L1_4
L1_5:
    add x14, x15, #8
    sub x19, x29, #128
    add x12, x19, #16
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_6:
L1_4:
    ldr w23, [x15]
    sub x24, x29, #320
    ldrb w14, [x22]
    movz x0, #1
    mov x1, x14
    sub x8, x29, #368
    bl _lb_net_SocketHandle_create
    sub x12, x29, #368
    add x14, x12, #40
    ldrb w14, [x14]
    cbnz w14, L1_8
    b L1_7
L1_8:
    add x14, x12, #16
    sub x19, x29, #128
    add x15, x19, #16
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_9:
L1_7:
    mov x10, x12
    mov x11, x24
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    ldr w16, [x10, #8]
    str w16, [x11, #8]
    mov x0, x24
    sub x8, x29, #408
    bl _lb_net_SocketHandle_require
    sub x15, x29, #408
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_11
    b L1_10
L1_11:
    add x14, x15, #8
    sub x19, x29, #128
    add x12, x19, #16
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_12:
L1_10:
    ldrsw x25, [x15]
    ldrb w14, [x22]
    movz x10, #1
    cmp w14, w10
    b.ne L1_14
L1_13:
    mov x0, x25
    movz x1, #41
    movz x2, #27
    mov x3, #0
    sub x8, x29, #440
    bl _lb_net_18set_socket_integer
    sub x15, x29, #440
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_17
    b L1_16
L1_17:
    sub x19, x29, #128
    add x14, x19, #16
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_18:
L1_16:
    b L1_15
L1_14:
L1_15:
    mov x0, x25
    movz x1, #1
    sub x8, x29, #472
    bl _lb_net_15set_nonblocking
    sub x15, x29, #472
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_20
    b L1_19
L1_20:
    sub x19, x29, #128
    add x14, x19, #16
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_21:
L1_19:
    mov x0, x25
    mov x1, x21
    mov x2, x23
    bl _connect
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L1_23
L1_22:
    bl _lb_net_12socket_errno
    mov w14, w0
    movz x10, #36
    cmp w14, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    cbnz w15, L1_28
    b L1_55
L1_55:
    mov w12, w15
    b L1_29
L1_28:
    movz x10, #37
    cmp w14, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w12, eq
L1_29:
    and w15, w12, #255
    cbnz w15, L1_30
    b L1_56
L1_56:
    mov w12, w15
    b L1_31
L1_30:
    movz x10, #4
    cmp w14, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w12, eq
L1_31:
    and w15, w12, #255
    cbnz w15, L1_25
    b L1_26
L1_25:
    sub x19, x29, #128
    add x20, x19, #16
    mov x0, x14
    bl _lb_net_12socket_error
    mov w15, w0
    str w15, [x20]
    adrp x15, l_text_0@PAGE
    add x15, x15, l_text_0@PAGEOFF
    sub x12, x29, #488
    str x15, [x12]
    add x15, x12, #8
    movz x9, #39
    str x9, [x15]
    add x15, x20, #8
    mov x10, x12
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x15, x19, #40
    movz x9, #1
    strb w9, [x15]
    mov x0, x24
    bl _lb_net_SocketHandle_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_32:
    b L1_27
L1_26:
L1_27:
    mov x0, x25
    movz x1, #1
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x20
    sub x8, x29, #528
    bl _lb_net_11wait_socket
    sub x15, x29, #528
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_34
    b L1_33
L1_34:
    add x14, x15, #8
    sub x19, x29, #128
    add x12, x19, #16
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_35:
L1_33:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x20
    sub x8, x29, #560
    bl _lb_net_15check_operation
    sub x15, x29, #560
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_37
    b L1_36
L1_37:
    sub x19, x29, #128
    add x14, x19, #16
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_38:
L1_36:
    mov x0, x25
    movz x1, #65535
    movz x2, #4103
    sub x8, x29, #600
    bl _lb_net_18get_socket_integer
    sub x15, x29, #600
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_40
    b L1_39
L1_40:
    add x14, x15, #8
    sub x19, x29, #128
    add x12, x19, #16
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_41:
L1_39:
    ldrsw x14, [x15]
    mov x10, #0
    cmp w14, w10
    cset w12, eq
    mov x10, #0
    cmp w12, w10
    b.ne L1_43
L1_42:
    sub x19, x29, #128
    add x20, x19, #16
    mov x0, x14
    bl _lb_net_12socket_error
    mov w15, w0
    str w15, [x20]
    adrp x15, l_text_1@PAGE
    add x15, x15, l_text_1@PAGEOFF
    sub x12, x29, #616
    str x15, [x12]
    add x15, x12, #8
    movz x9, #29
    str x9, [x15]
    add x15, x20, #8
    mov x10, x12
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x15, x19, #40
    movz x9, #1
    strb w9, [x15]
    mov x0, x24
    bl _lb_net_SocketHandle_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_45:
    b L1_44
L1_43:
L1_44:
    b L1_24
L1_23:
L1_24:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x20
    sub x8, x29, #648
    bl _lb_net_15check_operation
    sub x15, x29, #648
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_47
    b L1_46
L1_47:
    sub x19, x29, #128
    add x14, x19, #16
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_48:
L1_46:
    sub x14, x29, #200
    ldrb w19, [x14]
    mov x0, x25
    mov x1, x19
    sub x8, x29, #680
    bl _lb_net_15set_nonblocking
    sub x15, x29, #680
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_50
    b L1_49
L1_50:
    sub x19, x29, #128
    add x14, x19, #16
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_51:
L1_49:
    add x14, x24, #8
    strb w19, [x14]
    mov x10, x24
    sub x11, x29, #728
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    ldr w16, [x10, #8]
    str w16, [x11, #8]
    sub x20, x29, #744
    sub x21, x29, #760
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    sub x14, x29, #728
    mov x10, x14
    mov x11, x21
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    ldr w16, [x10, #8]
    str w16, [x11, #8]
    add x14, x21, #12
    mov x9, #0
    strb w9, [x14]
    mov x10, x21
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x0, x20
    bl _lb_net_Connection_guard
    mov w14, w0
    sub x21, x29, #712
    mov x10, x20
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x10, x21
    sub x11, x29, #696
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L1_54
L1_53:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
L1_54:
    sub x14, x29, #696
    sub x19, x29, #128
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_52:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Connection_over
    .no_dead_strip _lb_net_Connection_over
_lb_net_Connection_over:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    sub x16, x29, #104
    str w0, [x16]
    sub x14, x29, #104
    ldrsw x14, [x14]
    mov x0, x14
    sub x8, x29, #152
    bl _lb_net_SocketHandle_adopt
    sub x15, x29, #152
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L2_2
    b L2_1
L2_2:
    add x14, x15, #16
    sub x19, x29, #88
    add x12, x19, #16
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_3:
L2_1:
    mov x10, x15
    sub x11, x29, #200
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    ldr w16, [x10, #8]
    str w16, [x11, #8]
    sub x19, x29, #216
    sub x20, x29, #232
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    sub x14, x29, #200
    mov x10, x14
    mov x11, x20
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    ldr w16, [x10, #8]
    str w16, [x11, #8]
    add x14, x20, #12
    mov x9, #0
    strb w9, [x14]
    mov x10, x20
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x0, x19
    bl _lb_net_Connection_guard
    mov w14, w0
    sub x20, x29, #184
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x10, x20
    sub x11, x29, #168
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L2_6
L2_5:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
L2_6:
    sub x14, x29, #168
    sub x19, x29, #88
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_4:
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Connection_13local_address
    .no_dead_strip _lb_net_Connection_13local_address
_lb_net_Connection_13local_address:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    sub x16, x29, #96
    str x0, [x16]
    sub x9, x29, #96
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #136
    bl _lb_net_SocketHandle_require
    sub x15, x29, #136
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_2
    b L3_1
L3_2:
    add x14, x15, #8
    sub x19, x29, #88
    add x12, x19, #24
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_3:
L3_1:
    ldrsw x14, [x15]
    mov x0, x14
    mov x1, #0
    sub x8, x29, #192
    bl _lb_net_14socket_address
    sub x12, x29, #192
    add x14, x12, #48
    ldrb w14, [x14]
    cbnz w14, L3_5
    b L3_4
L3_5:
    add x14, x12, #24
    sub x19, x29, #88
    add x15, x19, #24
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_6:
L3_4:
    sub x19, x29, #88
    mov x10, x12
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #48
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_7:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Connection_12peer_address
    .no_dead_strip _lb_net_Connection_12peer_address
_lb_net_Connection_12peer_address:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    sub x16, x29, #96
    str x0, [x16]
    sub x9, x29, #96
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #136
    bl _lb_net_SocketHandle_require
    sub x15, x29, #136
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L4_2
    b L4_1
L4_2:
    add x14, x15, #8
    sub x19, x29, #88
    add x12, x19, #24
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_3:
L4_1:
    ldrsw x14, [x15]
    mov x0, x14
    movz x1, #1
    sub x8, x29, #192
    bl _lb_net_14socket_address
    sub x12, x29, #192
    add x14, x12, #48
    ldrb w14, [x14]
    cbnz w14, L4_5
    b L4_4
L4_5:
    add x14, x12, #24
    sub x19, x29, #88
    add x15, x19, #24
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_6:
L4_4:
    sub x19, x29, #88
    mov x10, x12
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #48
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_7:
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Connection_shutdown
    .no_dead_strip _lb_net_Connection_shutdown
_lb_net_Connection_shutdown:
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
    ldr x14, [x9]
    mov x0, x14
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
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldrsw x19, [x15]
    sub x14, x29, #104
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w12, eq
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    cbnz w12, L5_7
    b L5_21
L5_21:
    mov w15, w12
    b L5_8
L5_7:
    movz x10, #1
    cmp w14, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
L5_8:
    and w12, w15, #255
    cbnz w12, L5_9
    b L5_22
L5_22:
    mov w15, w12
    b L5_10
L5_9:
    movz x10, #2
    cmp w14, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
L5_10:
    and w12, w15, #255
    cbnz w12, L5_4
    b L5_5
L5_4:
    sub x19, x29, #80
    adrp x14, _lb_net_15invalid_options@PAGE
    add x14, x14, _lb_net_15invalid_options@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_8@PAGE
    add x14, x14, l_text_8@PAGEOFF
    sub x15, x29, #160
    str x14, [x15]
    add x14, x15, #8
    movz x9, #33
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
L5_11:
    b L5_6
L5_5:
L5_6:
    mov w20, w14
    mov x0, x19
    mov x1, x20
    bl _shutdown
    mov w15, w0
    mov w21, w15
L5_12:
    mov x10, #0
    cmp w21, w10
    cset w14, lt
    cbnz w14, L5_15
    b L5_23
L5_23:
    mov w15, w14
    b L5_16
L5_15:
    bl _lb_net_12socket_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w15, eq
L5_16:
    and w14, w15, #255
    cbnz w14, L5_13
    b L5_14
L5_13:
    mov x0, x19
    mov x1, x20
    bl _shutdown
    mov w21, w0
    b L5_12
L5_14:
    mov x10, #0
    cmp w21, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L5_18
L5_17:
    sub x19, x29, #80
    bl _lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl _lb_net_12socket_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_9@PAGE
    add x14, x14, l_text_9@PAGEOFF
    sub x15, x29, #176
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
L5_20:
    b L5_19
L5_18:
L5_19:
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
    .globl _lb_net_Connection_guard
    .no_dead_strip _lb_net_Connection_guard
_lb_net_Connection_guard:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    str x21, [sp, #24]
    str x22, [sp, #16]
    sub x16, x29, #56
    str x0, [x16]
    sub x9, x29, #56
    ldr x15, [x9]
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, L6_1
    b L6_2
L6_1:
    ldrsw x19, [x15]
    b L6_3
L6_2:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    ldr x21, [sp, #24]
    ldr x22, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_4:
L6_3:
    add x20, x15, #12
    ldrb w14, [x20]
    cbnz w14, L6_5
    b L6_6
L6_5:
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    ldr x21, [sp, #24]
    ldr x22, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_8:
    b L6_7
L6_6:
L6_7:
    sub x21, x29, #60
    movz x9, #1
    str w9, [x21]
    mov x0, x19
    movz x1, #65535
    movz x2, #4130
    mov x3, x21
    movz x4, #4
    bl _setsockopt
    mov w14, w0
    mov w22, w14
L6_9:
    mov x10, #0
    cmp w22, w10
    cset w14, lt
    cbnz w14, L6_12
    b L6_18
L6_18:
    mov w15, w14
    b L6_13
L6_12:
    bl _lb_net_12socket_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w15, eq
L6_13:
    and w14, w15, #255
    cbnz w14, L6_10
    b L6_11
L6_10:
    mov x0, x19
    movz x1, #65535
    movz x2, #4130
    mov x3, x21
    movz x4, #4
    bl _setsockopt
    mov w22, w0
    b L6_9
L6_11:
    mov x10, #0
    cmp w22, w10
    b.ne L6_15
L6_14:
    movz x9, #1
    strb w9, [x20]
    b L6_16
L6_15:
L6_16:
    ldrb w14, [x20]
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    ldr x21, [sp, #24]
    ldr x22, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_17:
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Connection_write
    .no_dead_strip _lb_net_Connection_write
_lb_net_Connection_write:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #192]
    str x20, [sp, #184]
    str x21, [sp, #176]
    str x22, [sp, #168]
    str x23, [sp, #160]
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #112
    ldr x19, [x9]
    mov x0, x19
    sub x8, x29, #168
    bl _lb_net_SocketHandle_require
    sub x15, x29, #168
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L7_2
    b L7_1
L7_2:
    add x14, x15, #8
    sub x19, x29, #104
    add x12, x19, #8
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x22, [sp, #168]
    ldr x23, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_3:
L7_1:
    ldrsw x20, [x15]
    sub x21, x29, #128
    add x14, x21, #8
    ldr x22, [x14]
    mov x10, #0
    cmp x22, x10
    b.ne L7_5
L7_4:
    sub x14, x29, #104
    mov x9, #0
    str x9, [x14]
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    ldr x23, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_7:
    b L7_6
L7_5:
L7_6:
    mov x0, x19
    bl _lb_net_Connection_guard
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L7_9
L7_8:
    sub x19, x29, #104
    add x14, x19, #8
    adrp x15, _lb_net_closed@PAGE
    add x15, x15, _lb_net_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_11@PAGE
    add x15, x15, l_text_11@PAGEOFF
    sub x12, x29, #184
    str x15, [x12]
    add x15, x12, #8
    movz x9, #21
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x22, [sp, #168]
    ldr x23, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_11:
    b L7_10
L7_9:
L7_10:
    movz x10, #16384, lsl #16
    cmp x22, x10
    b.hs L7_13
L7_12:
    mov x19, x22
    b L7_14
L7_13:
    movz x9, #16384, lsl #16
    mov x19, x9
L7_14:
    ldr x22, [x21]
    mov x0, x20
    mov x1, x22
    mov x2, x19
    mov x3, #0
    bl _lb_net_send
    mov x14, x0
    mov x23, x14
L7_15:
    mov x10, #0
    cmp x23, x10
    cset w21, lt
    cbnz w21, L7_18
    b L7_29
L7_29:
    mov w14, w21
    b L7_19
L7_18:
    bl _lb_net_12socket_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w14, eq
L7_19:
    and w15, w14, #255
    cbnz w15, L7_16
    b L7_17
L7_16:
    mov x0, x20
    mov x1, x22
    mov x2, x19
    mov x3, #0
    bl _lb_net_send
    mov x23, x0
    b L7_15
L7_17:
    cbnz w21, L7_20
    b L7_21
L7_20:
    sub x19, x29, #104
    add x20, x19, #8
    bl _lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl _lb_net_12socket_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_12@PAGE
    add x14, x14, l_text_12@PAGEOFF
    sub x15, x29, #200
    str x14, [x15]
    add x14, x15, #8
    movz x9, #34
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x22, [sp, #168]
    ldr x23, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_23:
    b L7_22
L7_21:
L7_22:
    mov x10, #0
    cmp x23, x10
    b.ne L7_25
L7_24:
    sub x19, x29, #104
    add x14, x19, #8
    adrp x15, _lb_io_11no_progress@PAGE
    add x15, x15, _lb_io_11no_progress@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_13@PAGE
    add x15, x15, l_text_13@PAGEOFF
    sub x12, x29, #216
    str x15, [x12]
    add x15, x12, #8
    movz x9, #37
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x22, [sp, #168]
    ldr x23, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_27:
    b L7_26
L7_25:
L7_26:
    sub x14, x29, #104
    str x23, [x14]
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    ldr x23, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_28:
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Connection_read
    .no_dead_strip _lb_net_Connection_read
_lb_net_Connection_read:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    str x21, [sp, #144]
    str x22, [sp, #136]
    str x23, [sp, #128]
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #112
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #168
    bl _lb_net_SocketHandle_require
    sub x15, x29, #168
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L8_2
    b L8_1
L8_2:
    add x14, x15, #8
    sub x19, x29, #104
    add x12, x19, #8
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    ldr x22, [sp, #136]
    ldr x23, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_3:
L8_1:
    ldrsw x19, [x15]
    sub x14, x29, #128
    add x12, x14, #8
    ldr x12, [x12]
    mov x10, #0
    cmp x12, x10
    b.ne L8_5
L8_4:
    sub x14, x29, #104
    mov x9, #0
    str x9, [x14]
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    ldr x22, [sp, #136]
    ldr x23, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_7:
    b L8_6
L8_5:
L8_6:
    movz x10, #16384, lsl #16
    cmp x12, x10
    b.hs L8_9
L8_8:
    mov x20, x12
    b L8_10
L8_9:
    movz x9, #16384, lsl #16
    mov x20, x9
L8_10:
    ldr x21, [x14]
    mov x0, x19
    mov x1, x21
    mov x2, x20
    mov x3, #0
    bl _lb_net_recv
    mov x15, x0
    mov x22, x15
L8_11:
    mov x10, #0
    cmp x22, x10
    cset w23, lt
    cbnz w23, L8_14
    b L8_21
L8_21:
    mov w14, w23
    b L8_15
L8_14:
    bl _lb_net_12socket_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w14, eq
L8_15:
    and w15, w14, #255
    cbnz w15, L8_12
    b L8_13
L8_12:
    mov x0, x19
    mov x1, x21
    mov x2, x20
    mov x3, #0
    bl _lb_net_recv
    mov x22, x0
    b L8_11
L8_13:
    cbnz w23, L8_16
    b L8_17
L8_16:
    sub x19, x29, #104
    add x20, x19, #8
    bl _lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl _lb_net_12socket_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_15@PAGE
    add x14, x14, l_text_15@PAGEOFF
    sub x15, x29, #184
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    ldr x22, [sp, #136]
    ldr x23, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_19:
    b L8_18
L8_17:
L8_18:
    sub x14, x29, #104
    str x22, [x14]
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    ldr x22, [sp, #136]
    ldr x23, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_20:
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Connection_12set_no_delay
    .no_dead_strip _lb_net_Connection_12set_no_delay
_lb_net_Connection_12set_no_delay:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    sub x16, x29, #72
    str x0, [x16]
    sub x16, x29, #88
    str w1, [x16]
    sub x9, x29, #72
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #128
    bl _lb_net_SocketHandle_require
    sub x15, x29, #128
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L9_2
    b L9_1
L9_2:
    add x14, x15, #8
    sub x19, x29, #64
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_3:
L9_1:
    ldrsw x14, [x15]
    sub x12, x29, #88
    ldrb w12, [x12]
    cbnz w12, L9_4
    b L9_5
L9_4:
    movz x9, #1
    mov w15, w9
    b L9_6
L9_5:
    mov x9, #0
    mov w15, w9
L9_6:
    mov x0, x14
    movz x1, #6
    movz x2, #1
    mov x3, x15
    sub x8, x29, #160
    bl _lb_net_18set_socket_integer
    sub x13, x29, #160
    add x12, x13, #24
    ldrb w12, [x12]
    cbnz w12, L9_8
    b L9_7
L9_8:
    sub x19, x29, #64
    mov x10, x13
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_9:
L9_7:
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_Connection_8no_delay
    .no_dead_strip _lb_net_Connection_8no_delay
_lb_net_Connection_8no_delay:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    sub x16, x29, #80
    str x0, [x16]
    sub x9, x29, #80
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #120
    bl _lb_net_SocketHandle_require
    sub x15, x29, #120
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L10_2
    b L10_1
L10_2:
    add x14, x15, #8
    sub x19, x29, #72
    add x12, x19, #8
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_3:
L10_1:
    ldrsw x14, [x15]
    mov x0, x14
    movz x1, #6
    movz x2, #1
    sub x8, x29, #160
    bl _lb_net_18get_socket_integer
    sub x12, x29, #160
    add x14, x12, #32
    ldrb w14, [x14]
    cbnz w14, L10_5
    b L10_4
L10_5:
    add x14, x12, #8
    sub x19, x29, #72
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_6:
L10_4:
    ldrsw x14, [x12]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    sub x15, x29, #72
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_7:
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Connection_13set_keepalive
    .no_dead_strip _lb_net_Connection_13set_keepalive
_lb_net_Connection_13set_keepalive:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    sub x16, x29, #72
    str x0, [x16]
    sub x16, x29, #88
    str w1, [x16]
    sub x9, x29, #72
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #128
    bl _lb_net_SocketHandle_require
    sub x15, x29, #128
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L11_2
    b L11_1
L11_2:
    add x14, x15, #8
    sub x19, x29, #64
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_3:
L11_1:
    ldrsw x14, [x15]
    sub x12, x29, #88
    ldrb w12, [x12]
    cbnz w12, L11_4
    b L11_5
L11_4:
    movz x9, #1
    mov w15, w9
    b L11_6
L11_5:
    mov x9, #0
    mov w15, w9
L11_6:
    mov x0, x14
    movz x1, #65535
    movz x2, #8
    mov x3, x15
    sub x8, x29, #160
    bl _lb_net_18set_socket_integer
    sub x13, x29, #160
    add x12, x13, #24
    ldrb w12, [x12]
    cbnz w12, L11_8
    b L11_7
L11_8:
    sub x19, x29, #64
    mov x10, x13
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_9:
L11_7:
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_Connection_keepalive
    .no_dead_strip _lb_net_Connection_keepalive
_lb_net_Connection_keepalive:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    sub x16, x29, #80
    str x0, [x16]
    sub x9, x29, #80
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #120
    bl _lb_net_SocketHandle_require
    sub x15, x29, #120
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L12_2
    b L12_1
L12_2:
    add x14, x15, #8
    sub x19, x29, #72
    add x12, x19, #8
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_3:
L12_1:
    ldrsw x14, [x15]
    mov x0, x14
    movz x1, #65535
    movz x2, #8
    sub x8, x29, #160
    bl _lb_net_18get_socket_integer
    sub x12, x29, #160
    add x14, x12, #32
    ldrb w14, [x14]
    cbnz w14, L12_5
    b L12_4
L12_5:
    add x14, x12, #8
    sub x19, x29, #72
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_6:
L12_4:
    ldrsw x14, [x12]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    sub x15, x29, #72
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_7:
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Connection_wait
    .no_dead_strip _lb_net_Connection_wait
_lb_net_Connection_wait:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #176]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str w1, [x16]
    sub x16, x29, #112
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #128
    str x4, [x16]
    sub x9, x29, #80
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #168
    bl _lb_net_SocketHandle_require
    sub x15, x29, #168
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L13_2
    b L13_1
L13_2:
    add x14, x15, #8
    sub x19, x29, #72
    add x12, x19, #8
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_3:
L13_1:
    ldrsw x14, [x15]
    sub x12, x29, #96
    ldrb w12, [x12]
    sub x13, x29, #112
    sub x19, x29, #128
    ldr x19, [x19]
    mov x0, x14
    mov x1, x12
    mov x9, x13
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x19
    sub x8, x29, #208
    bl _lb_net_11wait_socket
    sub x12, x29, #208
    add x14, x12, #32
    ldrb w14, [x14]
    cbnz w14, L13_5
    b L13_4
L13_5:
    add x14, x12, #8
    sub x19, x29, #72
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_6:
L13_4:
    sub x19, x29, #72
    mov x10, x12
    mov x11, x19
    ldr w16, [x10, #0]
    str w16, [x11, #0]
    ldrb w16, [x10, #4]
    strb w16, [x11, #4]
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
    ldr x19, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_7:
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Connection_15set_nonblocking
    .no_dead_strip _lb_net_Connection_15set_nonblocking
_lb_net_Connection_15set_nonblocking:
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
    ldr x19, [x9]
    mov x0, x19
    sub x8, x29, #136
    bl _lb_net_SocketHandle_require
    sub x15, x29, #136
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L14_2
    b L14_1
L14_2:
    add x14, x15, #8
    sub x19, x29, #72
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
L14_3:
L14_1:
    ldrsw x14, [x15]
    sub x12, x29, #96
    ldrb w20, [x12]
    mov x0, x14
    mov x1, x20
    sub x8, x29, #168
    bl _lb_net_15set_nonblocking
    sub x12, x29, #168
    add x14, x12, #24
    ldrb w14, [x14]
    cbnz w14, L14_5
    b L14_4
L14_5:
    sub x19, x29, #72
    mov x10, x12
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
L14_6:
L14_4:
    add x14, x19, #8
    strb w20, [x14]
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
    .globl _lb_net_Connection_14is_nonblocking
    .no_dead_strip _lb_net_Connection_14is_nonblocking
_lb_net_Connection_14is_nonblocking:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    sub x16, x29, #80
    str x0, [x16]
    sub x9, x29, #80
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #120
    bl _lb_net_SocketHandle_require
    sub x15, x29, #120
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L15_2
    b L15_1
L15_2:
    add x14, x15, #8
    sub x19, x29, #72
    add x12, x19, #8
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L15_3:
L15_1:
    ldrsw x14, [x15]
    mov x0, x14
    sub x8, x29, #160
    bl _lb_net_19socket_status_flags
    sub x12, x29, #160
    add x14, x12, #32
    ldrb w14, [x14]
    cbnz w14, L15_5
    b L15_4
L15_5:
    add x14, x12, #8
    sub x19, x29, #72
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L15_6:
L15_4:
    ldrsw x14, [x12]
    movz x10, #4
    and w14, w14, w10
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    sub x15, x29, #72
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L15_7:
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Connection_18set_receive_buffer
    .no_dead_strip _lb_net_Connection_18set_receive_buffer
_lb_net_Connection_18set_receive_buffer:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    sub x16, x29, #72
    str x0, [x16]
    sub x16, x29, #88
    str w1, [x16]
    sub x9, x29, #72
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #128
    bl _lb_net_SocketHandle_require
    sub x15, x29, #128
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L16_2
    b L16_1
L16_2:
    add x14, x15, #8
    sub x19, x29, #64
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_3:
L16_1:
    ldrsw x14, [x15]
    sub x12, x29, #88
    ldrsw x12, [x12]
    mov x0, x14
    movz x1, #4098
    mov x2, x12
    sub x8, x29, #160
    bl _lb_net_17set_socket_buffer
    sub x12, x29, #160
    add x14, x12, #24
    ldrb w14, [x14]
    cbnz w14, L16_5
    b L16_4
L16_5:
    sub x19, x29, #64
    mov x10, x12
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_6:
L16_4:
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_Connection_14receive_buffer
    .no_dead_strip _lb_net_Connection_14receive_buffer
_lb_net_Connection_14receive_buffer:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    sub x16, x29, #80
    str x0, [x16]
    sub x9, x29, #80
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #120
    bl _lb_net_SocketHandle_require
    sub x15, x29, #120
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L17_2
    b L17_1
L17_2:
    add x14, x15, #8
    sub x19, x29, #72
    add x12, x19, #8
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_3:
L17_1:
    ldrsw x14, [x15]
    mov x0, x14
    movz x1, #65535
    movz x2, #4098
    sub x8, x29, #160
    bl _lb_net_18get_socket_integer
    sub x12, x29, #160
    add x14, x12, #32
    ldrb w14, [x14]
    cbnz w14, L17_5
    b L17_4
L17_5:
    add x14, x12, #8
    sub x19, x29, #72
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_6:
L17_4:
    ldrsw x14, [x12]
    sub x15, x29, #72
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_7:
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Connection_15set_send_buffer
    .no_dead_strip _lb_net_Connection_15set_send_buffer
_lb_net_Connection_15set_send_buffer:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    sub x16, x29, #72
    str x0, [x16]
    sub x16, x29, #88
    str w1, [x16]
    sub x9, x29, #72
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #128
    bl _lb_net_SocketHandle_require
    sub x15, x29, #128
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L18_2
    b L18_1
L18_2:
    add x14, x15, #8
    sub x19, x29, #64
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L18_3:
L18_1:
    ldrsw x14, [x15]
    sub x12, x29, #88
    ldrsw x12, [x12]
    mov x0, x14
    movz x1, #4097
    mov x2, x12
    sub x8, x29, #160
    bl _lb_net_17set_socket_buffer
    sub x12, x29, #160
    add x14, x12, #24
    ldrb w14, [x14]
    cbnz w14, L18_5
    b L18_4
L18_5:
    sub x19, x29, #64
    mov x10, x12
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L18_6:
L18_4:
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_Connection_11send_buffer
    .no_dead_strip _lb_net_Connection_11send_buffer
_lb_net_Connection_11send_buffer:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    sub x16, x29, #80
    str x0, [x16]
    sub x9, x29, #80
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #120
    bl _lb_net_SocketHandle_require
    sub x15, x29, #120
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L19_2
    b L19_1
L19_2:
    add x14, x15, #8
    sub x19, x29, #72
    add x12, x19, #8
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_3:
L19_1:
    ldrsw x14, [x15]
    mov x0, x14
    movz x1, #65535
    movz x2, #4097
    sub x8, x29, #160
    bl _lb_net_18get_socket_integer
    sub x12, x29, #160
    add x14, x12, #32
    ldrb w14, [x14]
    cbnz w14, L19_5
    b L19_4
L19_5:
    add x14, x12, #8
    sub x19, x29, #72
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_6:
L19_4:
    ldrsw x14, [x12]
    sub x15, x29, #72
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
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_7:
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Connection_descriptor
    .no_dead_strip _lb_net_Connection_descriptor
_lb_net_Connection_descriptor:
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
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L20_1:
    adrp x0, l_text_23@PAGE
    add x0, x0, l_text_23@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Connection_close
    .no_dead_strip _lb_net_Connection_close
_lb_net_Connection_close:
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
    cbnz w14, L21_2
    b L21_1
L21_2:
    sub x19, x29, #64
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
L21_3:
L21_1:
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
    .globl _lb_net_Connection_destroy
    .no_dead_strip _lb_net_Connection_destroy
_lb_net_Connection_destroy:
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
    .quad _lb_net_connection_0init

    .section __TEXT,__const
l_text_0:
    .asciz "the connection could not reach its peer"
l_text_1:
    .asciz "the pending connection failed"
l_text_2:
    .asciz "unreachable"
l_text_3:
    .asciz "src/std/net/connection.lucb:44:9"
l_text_4:
    .asciz "src/std/net/connection.lucb:54:9"
l_text_5:
    .asciz "src/std/net/connection.lucb:59:9"
l_text_6:
    .asciz "src/std/net/connection.lucb:63:9"
l_text_7:
    .asciz "src/std/net/connection.lucb:67:9"
l_text_8:
    .asciz "unknown socket shutdown direction"
l_text_9:
    .asciz "the connection could not be shut down"
l_text_10:
    .asciz "src/std/net/connection.lucb:100:9"
l_text_11:
    .asciz "the connection closed"
l_text_12:
    .asciz "the connection could not send data"
l_text_13:
    .asciz "the connection made no write progress"
l_text_14:
    .asciz "src/std/net/connection.lucb:119:9"
l_text_15:
    .asciz "the connection could not receive data"
l_text_16:
    .asciz "src/std/net/connection.lucb:133:9"
l_text_17:
    .asciz "src/std/net/connection.lucb:141:9"
l_text_18:
    .asciz "src/std/net/connection.lucb:149:9"
l_text_19:
    .asciz "src/std/net/connection.lucb:155:9"
l_text_20:
    .asciz "src/std/net/connection.lucb:167:9"
l_text_21:
    .asciz "src/std/net/connection.lucb:175:9"
l_text_22:
    .asciz "src/std/net/connection.lucb:183:9"
l_text_23:
    .asciz "src/std/net/connection.lucb:187:9"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
