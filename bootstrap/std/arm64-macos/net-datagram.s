    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_net_datagram_0init
_lb_net_datagram_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_Datagram_bind
    .no_dead_strip _lb_net_Datagram_bind
_lb_net_Datagram_bind:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #400
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #368]
    str x20, [sp, #360]
    str x21, [sp, #352]
    str x22, [sp, #344]
    str x23, [sp, #336]
    str x24, [sp, #328]
    sub x16, x29, #144
    str x0, [x16]
    sub x16, x29, #160
    str w1, [x16]
    sub x0, x29, #144
    ldr x1, [x0]
    movz x2, #24
    bl _memcpy
    sub x19, x29, #188
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str wzr, [x11, #24]
    sub x20, x29, #144
    mov x0, x20
    mov x1, x19
    sub x8, x29, #232
    bl _lb_net_SocketAddress_12write_native
    sub x15, x29, #232
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_2
    b L1_1
L1_2:
    add x14, x15, #8
    sub x19, x29, #120
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_3:
L1_1:
    ldr w21, [x15]
    sub x22, x29, #248
    adrp x14, _lb_net_datagram@PAGE
    add x14, x14, _lb_net_datagram@PAGEOFF
    ldrsw x14, [x14]
    ldrb w12, [x20]
    mov x0, x14
    mov x1, x12
    sub x8, x29, #296
    bl _lb_net_SocketHandle_create
    sub x12, x29, #296
    add x14, x12, #40
    ldrb w14, [x14]
    cbnz w14, L1_5
    b L1_4
L1_5:
    add x14, x12, #16
    sub x19, x29, #120
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_6:
L1_4:
    mov x10, x12
    mov x11, x22
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    ldr w16, [x10, #8]
    str w16, [x11, #8]
    mov x0, x22
    sub x8, x29, #336
    bl _lb_net_SocketHandle_require
    sub x15, x29, #336
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_8
    b L1_7
L1_8:
    add x14, x15, #8
    sub x19, x29, #120
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
    mov x0, x22
    bl _lb_net_SocketHandle_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_9:
L1_7:
    ldrsw x23, [x15]
    ldrb w14, [x20]
    movz x10, #1
    cmp w14, w10
    b.ne L1_11
L1_10:
    adrp x14, _lb_net_10ipv6_level@PAGE
    add x14, x14, _lb_net_10ipv6_level@PAGEOFF
    ldrsw x14, [x14]
    adrp x15, _lb_net_16ipv6_only_option@PAGE
    add x15, x15, _lb_net_16ipv6_only_option@PAGEOFF
    ldrsw x15, [x15]
    sub x12, x29, #160
    ldrb w12, [x12]
    cbnz w12, L1_13
    b L1_14
L1_13:
    movz x9, #1
    mov w12, w9
    b L1_15
L1_14:
    mov x9, #0
    mov w12, w9
L1_15:
    mov x0, x23
    mov x1, x14
    mov x2, x15
    mov x3, x12
    sub x8, x29, #368
    bl _lb_net_18set_socket_integer
    sub x24, x29, #368
    add x13, x24, #24
    ldrb w13, [x13]
    cbnz w13, L1_17
    b L1_16
L1_17:
    sub x19, x29, #120
    add x14, x19, #16
    mov x10, x24
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x0, x22
    bl _lb_net_SocketHandle_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_18:
L1_16:
    b L1_12
L1_11:
L1_12:
    mov x0, x23
    mov x1, x19
    mov x2, x21
    bl _bind
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L1_20
L1_19:
    sub x19, x29, #120
    add x20, x19, #16
    bl _lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl _lb_net_12socket_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_0@PAGE
    add x14, x14, l_text_0@PAGEOFF
    sub x15, x29, #384
    str x14, [x15]
    add x14, x15, #8
    movz x9, #46
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x0, x22
    bl _lb_net_SocketHandle_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_22:
    b L1_21
L1_20:
L1_21:
    sub x19, x29, #400
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    mov x10, x22
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    ldr w16, [x10, #8]
    str w16, [x11, #8]
    ldrb w14, [x20]
    add x15, x19, #12
    strb w14, [x15]
    sub x21, x29, #120
    mov x10, x19
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x21, #40
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_23:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Datagram_address
    .no_dead_strip _lb_net_Datagram_address
_lb_net_Datagram_address:
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
    cbnz w14, L2_2
    b L2_1
L2_2:
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
L2_3:
L2_1:
    ldrsw x14, [x15]
    mov x0, x14
    mov x1, #0
    sub x8, x29, #192
    bl _lb_net_14socket_address
    sub x12, x29, #192
    add x14, x12, #48
    ldrb w14, [x14]
    cbnz w14, L2_5
    b L2_4
L2_5:
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
L2_6:
L2_4:
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
L2_7:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Datagram_7send_to
    .no_dead_strip _lb_net_Datagram_7send_to
_lb_net_Datagram_7send_to:
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
    str x25, [sp, #272]
    str x26, [sp, #264]
    sub x16, x29, #128
    str x0, [x16]
    sub x16, x29, #144
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #168
    str x3, [x16]
    sub x0, x29, #168
    ldr x1, [x0]
    movz x2, #24
    bl _memcpy
    sub x9, x29, #128
    ldr x19, [x9]
    mov x0, x19
    sub x8, x29, #208
    bl _lb_net_SocketHandle_require
    sub x15, x29, #208
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_2
    b L3_1
L3_2:
    add x14, x15, #8
    sub x19, x29, #120
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    ldr x25, [sp, #272]
    ldr x26, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_3:
L3_1:
    ldrsw x20, [x15]
    sub x21, x29, #168
    ldrb w14, [x21]
    add x12, x19, #12
    ldrb w12, [x12]
    cmp w14, w12
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L3_5
L3_4:
    sub x19, x29, #120
    adrp x14, _lb_net_15invalid_options@PAGE
    add x14, x14, _lb_net_15invalid_options@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_4@PAGE
    add x14, x14, l_text_4@PAGEOFF
    sub x15, x29, #224
    str x14, [x15]
    add x14, x15, #8
    movz x9, #51
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    ldr x25, [sp, #272]
    ldr x26, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_7:
    b L3_6
L3_5:
L3_6:
    mov x10, #0
    cmp w12, w10
    b.ne L3_9
L3_8:
    movz x9, #65507
    mov x14, x9
    b L3_10
L3_9:
    movz x9, #65527
    mov x14, x9
L3_10:
    sub x19, x29, #144
    add x15, x19, #8
    ldr x22, [x15]
    cmp x22, x14
    b.ls L3_12
L3_11:
    sub x19, x29, #120
    adrp x14, _lb_net_17message_too_large@PAGE
    add x14, x14, _lb_net_17message_too_large@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_5@PAGE
    add x14, x14, l_text_5@PAGEOFF
    sub x15, x29, #240
    str x14, [x15]
    add x14, x15, #8
    movz x9, #48
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    ldr x25, [sp, #272]
    ldr x26, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_14:
    b L3_13
L3_12:
L3_13:
    sub x23, x29, #268
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str wzr, [x11, #24]
    mov x0, x21
    mov x1, x23
    sub x8, x29, #312
    bl _lb_net_SocketAddress_12write_native
    sub x15, x29, #312
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_16
    b L3_15
L3_16:
    add x14, x15, #8
    sub x19, x29, #120
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    ldr x25, [sp, #272]
    ldr x26, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_17:
L3_15:
    ldr w21, [x15]
    ldr x24, [x19]
    mov x0, x20
    mov x1, x24
    mov x2, x22
    mov x3, #0
    mov x4, x23
    mov x5, x21
    bl _lb_net_sendto
    mov x14, x0
    adrp x25, _lb_net_18socket_interrupted@PAGE
    add x25, x25, _lb_net_18socket_interrupted@PAGEOFF
    mov x26, x14
L3_18:
    mov x10, #0
    cmp x26, x10
    cset w19, lt
    cbnz w19, L3_21
    b L3_31
L3_31:
    mov w14, w19
    b L3_22
L3_21:
    bl _lb_net_12socket_errno
    mov w14, w0
    ldrsw x15, [x25]
    cmp w14, w15
    cset w14, eq
L3_22:
    and w15, w14, #255
    cbnz w15, L3_19
    b L3_20
L3_19:
    mov x0, x20
    mov x1, x24
    mov x2, x22
    mov x3, #0
    mov x4, x23
    mov x5, x21
    bl _lb_net_sendto
    mov x26, x0
    b L3_18
L3_20:
    cbnz w19, L3_23
    b L3_24
L3_23:
    sub x19, x29, #120
    bl _lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl _lb_net_12socket_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_6@PAGE
    add x14, x14, l_text_6@PAGEOFF
    sub x15, x29, #328
    str x14, [x15]
    add x14, x15, #8
    movz x9, #30
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    ldr x25, [sp, #272]
    ldr x26, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_26:
    b L3_25
L3_24:
L3_25:
    cmp x22, x26
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L3_28
L3_27:
    sub x19, x29, #120
    adrp x14, _lb_net_failed@PAGE
    add x14, x14, _lb_net_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_7@PAGE
    add x14, x14, l_text_7@PAGEOFF
    sub x15, x29, #344
    str x14, [x15]
    add x14, x15, #8
    movz x9, #53
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    ldr x25, [sp, #272]
    ldr x26, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_30:
    b L3_29
L3_28:
L3_29:
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    ldr x25, [sp, #272]
    ldr x26, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_Datagram_12receive_from
    .no_dead_strip _lb_net_Datagram_12receive_from
_lb_net_Datagram_12receive_from:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #560
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #528]
    str x20, [sp, #520]
    str x21, [sp, #512]
    str x22, [sp, #504]
    str x23, [sp, #496]
    str x24, [sp, #488]
    str x25, [sp, #480]
    str x26, [sp, #472]
    str x27, [sp, #464]
    str x28, [sp, #456]
    sub x16, x29, #176
    str x0, [x16]
    sub x16, x29, #192
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #176
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #232
    bl _lb_net_SocketHandle_require
    sub x15, x29, #232
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L4_2
    b L4_1
L4_2:
    add x14, x15, #8
    sub x19, x29, #168
    add x12, x19, #32
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #56
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #528]
    ldr x20, [sp, #520]
    ldr x21, [sp, #512]
    ldr x22, [sp, #504]
    ldr x23, [sp, #496]
    ldr x24, [sp, #488]
    ldr x25, [sp, #480]
    ldr x26, [sp, #472]
    ldr x27, [sp, #464]
    ldr x28, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_1:
    ldrsw x19, [x15]
    sub x20, x29, #260
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str wzr, [x11, #24]
    sub x21, x29, #261
    mov x11, x21
    strb wzr, [x11, #0]
    sub x22, x29, #280
    sub x23, x29, #296
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    sub x14, x29, #192
    ldr x12, [x14]
    str x12, [x23]
    add x14, x14, #8
    ldr x9, [x14]
    str x9, [sp, #8]
    add x14, x23, #8
    ldr x9, [sp, #8]
    str x9, [x14]
    mov x10, x23
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x9, [sp, #8]
    mov x10, #0
    cmp x9, x10
    b.ne L4_5
L4_4:
    sub x23, x29, #312
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    str x21, [x23]
    add x14, x23, #8
    movz x9, #1
    str x9, [x14]
    mov x10, x23
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L4_6
L4_5:
L4_6:
    sub x21, x29, #360
    sub x23, x29, #408
    add x25, x23, #8
    add x26, x23, #16
    add x27, x23, #24
    add x28, x21, #8
    add x24, x21, #44
    adrp x9, _lb_net_18socket_interrupted@PAGE
    add x9, x9, _lb_net_18socket_interrupted@PAGEOFF
    str x9, [sp, #0]
L4_7:
L4_8:
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str x20, [x23]
    movz x9, #28
    str w9, [x25]
    str x22, [x26]
    movz x9, #1
    str w9, [x27]
    mov x10, x23
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    mov x0, x19
    mov x1, x21
    mov x2, #0
    bl _recvmsg
    mov x14, x0
    ldr w15, [x28]
    ldrsw x12, [x24]
    mov x10, #0
    cmp x14, x10
    b.ge L4_11
L4_10:
    bl _lb_net_12socket_errno
    mov w14, w0
    ldr x9, [sp, #0]
    ldrsw x15, [x9]
    cmp w14, w15
    b.ne L4_14
L4_13:
    b L4_7
L4_14:
L4_15:
    sub x19, x29, #168
    add x20, x19, #32
    mov x0, x14
    bl _lb_net_12socket_error
    mov w15, w0
    str w15, [x20]
    adrp x15, l_text_9@PAGE
    add x15, x15, l_text_9@PAGEOFF
    sub x12, x29, #424
    str x15, [x12]
    add x15, x12, #8
    movz x9, #34
    str x9, [x15]
    add x15, x20, #8
    mov x10, x12
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x15, x19, #56
    movz x9, #1
    strb w9, [x15]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #528]
    ldr x20, [sp, #520]
    ldr x21, [sp, #512]
    ldr x22, [sp, #504]
    ldr x23, [sp, #496]
    ldr x24, [sp, #488]
    ldr x25, [sp, #480]
    ldr x26, [sp, #472]
    ldr x27, [sp, #464]
    ldr x28, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_11:
L4_12:
    adrp x13, _lb_platform_macos@PAGE
    add x13, x13, _lb_platform_macos@PAGEOFF
    ldrb w13, [x13]
    cbnz w13, L4_18
    b L4_19
L4_18:
    movz x9, #16
    mov w13, w9
    b L4_20
L4_19:
    movz x9, #32
    mov w13, w9
L4_20:
    and w19, w12, w13
    mov x10, #0
    cmp w19, w10
    cset w19, eq
    mov x10, #0
    cmp w19, w10
    cset w19, eq
    cbnz w19, L4_35
    b L4_24
L4_35:
    mov w12, w19
    b L4_25
L4_24:
    ldr x10, [sp, #8]
    cmp x14, x10
    cset w12, hi
L4_25:
    and w13, w12, #255
    cbnz w13, L4_21
    b L4_22
L4_21:
    sub x19, x29, #168
    add x14, x19, #32
    adrp x15, _lb_net_17message_too_large@PAGE
    add x15, x15, _lb_net_17message_too_large@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_10@PAGE
    add x15, x15, l_text_10@PAGEOFF
    sub x12, x29, #440
    str x15, [x12]
    add x15, x12, #8
    movz x9, #49
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #56
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #528]
    ldr x20, [sp, #520]
    ldr x21, [sp, #512]
    ldr x22, [sp, #504]
    ldr x23, [sp, #496]
    ldr x24, [sp, #488]
    ldr x25, [sp, #480]
    ldr x26, [sp, #472]
    ldr x27, [sp, #464]
    ldr x28, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_22:
L4_23:
    movz x10, #28
    cmp w15, w10
    b.ls L4_28
L4_27:
    sub x19, x29, #168
    add x14, x19, #32
    adrp x15, _lb_net_failed@PAGE
    add x15, x15, _lb_net_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_11@PAGE
    add x15, x15, l_text_11@PAGEOFF
    sub x12, x29, #456
    str x15, [x12]
    add x15, x12, #8
    movz x9, #57
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #56
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #528]
    ldr x20, [sp, #520]
    ldr x21, [sp, #512]
    ldr x22, [sp, #504]
    ldr x23, [sp, #496]
    ldr x24, [sp, #488]
    ldr x25, [sp, #480]
    ldr x26, [sp, #472]
    ldr x27, [sp, #464]
    ldr x28, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_28:
L4_29:
    sub x19, x29, #488
    str x14, [x19]
    mov x0, x20
    mov x1, x15
    sub x8, x29, #544
    bl _lb_net_14decode_address
    sub x13, x29, #544
    add x12, x13, #48
    ldrb w12, [x12]
    cbnz w12, L4_32
    b L4_31
L4_32:
    add x14, x13, #24
    sub x19, x29, #168
    add x15, x19, #32
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #56
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #528]
    ldr x20, [sp, #520]
    ldr x21, [sp, #512]
    ldr x22, [sp, #504]
    ldr x23, [sp, #496]
    ldr x24, [sp, #488]
    ldr x25, [sp, #480]
    ldr x26, [sp, #472]
    ldr x27, [sp, #464]
    ldr x28, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_31:
    add x14, x19, #8
    mov x10, x13
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    sub x20, x29, #168
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    add x14, x20, #56
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #528]
    ldr x20, [sp, #520]
    ldr x21, [sp, #512]
    ldr x22, [sp, #504]
    ldr x23, [sp, #496]
    ldr x24, [sp, #488]
    ldr x25, [sp, #480]
    ldr x26, [sp, #472]
    ldr x27, [sp, #464]
    ldr x28, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_Datagram_wait
    .no_dead_strip _lb_net_Datagram_wait
_lb_net_Datagram_wait:
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
    cbnz w14, L5_2
    b L5_1
L5_2:
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
L5_3:
L5_1:
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
    cbnz w14, L5_5
    b L5_4
L5_5:
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
L5_6:
L5_4:
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
L5_7:
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Datagram_15set_nonblocking
    .no_dead_strip _lb_net_Datagram_15set_nonblocking
_lb_net_Datagram_15set_nonblocking:
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
    cbnz w14, L6_2
    b L6_1
L6_2:
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
L6_3:
L6_1:
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
    cbnz w14, L6_5
    b L6_4
L6_5:
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
L6_6:
L6_4:
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
    .globl _lb_net_Datagram_14is_nonblocking
    .no_dead_strip _lb_net_Datagram_14is_nonblocking
_lb_net_Datagram_14is_nonblocking:
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
    cbnz w14, L7_2
    b L7_1
L7_2:
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
L7_3:
L7_1:
    ldrsw x14, [x15]
    mov x0, x14
    sub x8, x29, #160
    bl _lb_net_19socket_status_flags
    sub x12, x29, #160
    add x14, x12, #32
    ldrb w14, [x14]
    cbnz w14, L7_5
    b L7_4
L7_5:
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
L7_6:
L7_4:
    ldrsw x14, [x12]
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
L7_7:
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Datagram_18set_receive_buffer
    .no_dead_strip _lb_net_Datagram_18set_receive_buffer
_lb_net_Datagram_18set_receive_buffer:
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
    cbnz w14, L8_2
    b L8_1
L8_2:
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
L8_3:
L8_1:
    ldrsw x14, [x15]
    adrp x12, _lb_net_21receive_buffer_option@PAGE
    add x12, x12, _lb_net_21receive_buffer_option@PAGEOFF
    ldrsw x12, [x12]
    sub x13, x29, #88
    ldrsw x13, [x13]
    mov x0, x14
    mov x1, x12
    mov x2, x13
    sub x8, x29, #160
    bl _lb_net_17set_socket_buffer
    sub x12, x29, #160
    add x14, x12, #24
    ldrb w14, [x14]
    cbnz w14, L8_5
    b L8_4
L8_5:
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
L8_6:
L8_4:
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
    .globl _lb_net_Datagram_14receive_buffer
    .no_dead_strip _lb_net_Datagram_14receive_buffer
_lb_net_Datagram_14receive_buffer:
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
    cbnz w14, L9_2
    b L9_1
L9_2:
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
L9_3:
L9_1:
    ldrsw x14, [x15]
    adrp x12, _lb_net_12socket_level@PAGE
    add x12, x12, _lb_net_12socket_level@PAGEOFF
    ldrsw x12, [x12]
    adrp x13, _lb_net_21receive_buffer_option@PAGE
    add x13, x13, _lb_net_21receive_buffer_option@PAGEOFF
    ldrsw x13, [x13]
    mov x0, x14
    mov x1, x12
    mov x2, x13
    sub x8, x29, #160
    bl _lb_net_18get_socket_integer
    sub x12, x29, #160
    add x14, x12, #32
    ldrb w14, [x14]
    cbnz w14, L9_5
    b L9_4
L9_5:
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
L9_6:
L9_4:
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
L9_7:
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Datagram_15set_send_buffer
    .no_dead_strip _lb_net_Datagram_15set_send_buffer
_lb_net_Datagram_15set_send_buffer:
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
    cbnz w14, L10_2
    b L10_1
L10_2:
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
L10_3:
L10_1:
    ldrsw x14, [x15]
    adrp x12, _lb_net_18send_buffer_option@PAGE
    add x12, x12, _lb_net_18send_buffer_option@PAGEOFF
    ldrsw x12, [x12]
    sub x13, x29, #88
    ldrsw x13, [x13]
    mov x0, x14
    mov x1, x12
    mov x2, x13
    sub x8, x29, #160
    bl _lb_net_17set_socket_buffer
    sub x12, x29, #160
    add x14, x12, #24
    ldrb w14, [x14]
    cbnz w14, L10_5
    b L10_4
L10_5:
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
L10_6:
L10_4:
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
    .globl _lb_net_Datagram_11send_buffer
    .no_dead_strip _lb_net_Datagram_11send_buffer
_lb_net_Datagram_11send_buffer:
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
    cbnz w14, L11_2
    b L11_1
L11_2:
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
L11_3:
L11_1:
    ldrsw x14, [x15]
    adrp x12, _lb_net_12socket_level@PAGE
    add x12, x12, _lb_net_12socket_level@PAGEOFF
    ldrsw x12, [x12]
    adrp x13, _lb_net_18send_buffer_option@PAGE
    add x13, x13, _lb_net_18send_buffer_option@PAGEOFF
    ldrsw x13, [x13]
    mov x0, x14
    mov x1, x12
    mov x2, x13
    sub x8, x29, #160
    bl _lb_net_18get_socket_integer
    sub x12, x29, #160
    add x14, x12, #32
    ldrb w14, [x14]
    cbnz w14, L11_5
    b L11_4
L11_5:
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
L11_6:
L11_4:
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
L11_7:
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Datagram_descriptor
    .no_dead_strip _lb_net_Datagram_descriptor
_lb_net_Datagram_descriptor:
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
L12_1:
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Datagram_close
    .no_dead_strip _lb_net_Datagram_close
_lb_net_Datagram_close:
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
    cbnz w14, L13_2
    b L13_1
L13_2:
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
L13_3:
L13_1:
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
    .globl _lb_net_Datagram_destroy
    .no_dead_strip _lb_net_Datagram_destroy
_lb_net_Datagram_destroy:
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
    .quad _lb_net_datagram_0init

    .section __TEXT,__const
l_text_0:
    .asciz "the datagram socket could not bind its address"
l_text_1:
    .asciz "unreachable"
l_text_2:
    .asciz "src/std/net/datagram.lucb:19:9"
l_text_3:
    .asciz "src/std/net/datagram.lucb:23:9"
l_text_4:
    .asciz "the datagram destination has a different IP version"
l_text_5:
    .asciz "the UDP payload exceeds the IP version's maximum"
l_text_6:
    .asciz "the datagram could not be sent"
l_text_7:
    .asciz "the datagram send did not confirm the complete packet"
l_text_8:
    .asciz "src/std/net/datagram.lucb:61:13"
l_text_9:
    .asciz "the datagram could not be received"
l_text_10:
    .asciz "the receive buffer was too small for the datagram"
l_text_11:
    .asciz "the datagram sender address exceeds the supported storage"
l_text_12:
    .asciz "src/std/net/datagram.lucb:86:13"
l_text_13:
    .asciz "src/std/net/datagram.lucb:92:9"
l_text_14:
    .asciz "src/std/net/datagram.lucb:104:9"
l_text_15:
    .asciz "src/std/net/datagram.lucb:112:9"
l_text_16:
    .asciz "src/std/net/datagram.lucb:120:9"
l_text_17:
    .asciz "src/std/net/datagram.lucb:124:9"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
