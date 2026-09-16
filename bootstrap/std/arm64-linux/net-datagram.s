    .text

    .p2align 2
    .globl lb_net_datagram_0init
    .type lb_net_datagram_0init, %function
lb_net_datagram_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_datagram_0init, .-lb_net_datagram_0init

    .p2align 2
    .globl lb_net_Datagram_bind
    .type lb_net_Datagram_bind, %function
lb_net_Datagram_bind:
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
    sub x16, x29, #136
    str x0, [x16]
    sub x16, x29, #152
    str w1, [x16]
    sub x0, x29, #136
    ldr x1, [x0]
    movz x2, #24
    bl memcpy
    sub x19, x29, #180
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str wzr, [x11, #24]
    sub x20, x29, #136
    mov x0, x20
    mov x1, x19
    sub x8, x29, #224
    bl lb_net_SocketAddress_12write_native
    sub x15, x29, #224
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L1_2
    b .L1_1
.L1_2:
    add x14, x15, #8
    sub x19, x29, #112
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_3:
.L1_1:
    ldr w21, [x15]
    sub x22, x29, #240
    ldrb w14, [x20]
    movz x0, #2
    mov x1, x14
    sub x8, x29, #288
    bl lb_net_SocketHandle_create
    sub x12, x29, #288
    add x14, x12, #40
    ldrb w14, [x14]
    cbnz w14, .L1_5
    b .L1_4
.L1_5:
    add x14, x12, #16
    sub x19, x29, #112
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_6:
.L1_4:
    mov x10, x12
    mov x11, x22
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    ldr w16, [x10, #8]
    str w16, [x11, #8]
    mov x0, x22
    sub x8, x29, #328
    bl lb_net_SocketHandle_require
    sub x15, x29, #328
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L1_8
    b .L1_7
.L1_8:
    add x14, x15, #8
    sub x19, x29, #112
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
    bl lb_net_SocketHandle_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_9:
.L1_7:
    ldrsw x23, [x15]
    ldrb w14, [x20]
    movz x10, #1
    cmp w14, w10
    b.ne .L1_11
.L1_10:
    sub x14, x29, #152
    ldrb w14, [x14]
    cbnz w14, .L1_13
    b .L1_14
.L1_13:
    movz x9, #1
    mov w14, w9
    b .L1_15
.L1_14:
    mov x9, #0
    mov w14, w9
.L1_15:
    mov x0, x23
    movz x1, #41
    movz x2, #26
    mov x3, x14
    sub x8, x29, #360
    bl lb_net_18set_socket_integer
    sub x12, x29, #360
    add x15, x12, #24
    ldrb w15, [x15]
    cbnz w15, .L1_17
    b .L1_16
.L1_17:
    sub x19, x29, #112
    add x14, x19, #16
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x0, x22
    bl lb_net_SocketHandle_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_18:
.L1_16:
    b .L1_12
.L1_11:
.L1_12:
    mov x0, x23
    mov x1, x19
    mov x2, x21
    bl bind
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L1_20
.L1_19:
    sub x19, x29, #112
    add x20, x19, #16
    bl lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl lb_net_12socket_error
    mov w14, w0
    str w14, [x20]
    adrp x14, .Ltext_0
    add x14, x14, :lo12:.Ltext_0
    sub x15, x29, #376
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
    bl lb_net_SocketHandle_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_22:
    b .L1_21
.L1_20:
.L1_21:
    sub x19, x29, #392
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
    sub x21, x29, #112
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_23:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_net_Datagram_bind, .-lb_net_Datagram_bind

    .p2align 2
    .globl lb_net_Datagram_address
    .type lb_net_Datagram_address, %function
lb_net_Datagram_address:
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
    bl lb_net_SocketHandle_require
    sub x15, x29, #136
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L2_2
    b .L2_1
.L2_2:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_3:
.L2_1:
    ldrsw x14, [x15]
    mov x0, x14
    mov x1, #0
    sub x8, x29, #192
    bl lb_net_14socket_address
    sub x12, x29, #192
    add x14, x12, #48
    ldrb w14, [x14]
    cbnz w14, .L2_5
    b .L2_4
.L2_5:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_6:
.L2_4:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_7:
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_net_Datagram_address, .-lb_net_Datagram_address

    .p2align 2
    .globl lb_net_Datagram_7send_to
    .type lb_net_Datagram_7send_to, %function
lb_net_Datagram_7send_to:
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
    sub x16, x29, #120
    str x0, [x16]
    sub x16, x29, #136
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #160
    str x3, [x16]
    sub x0, x29, #160
    ldr x1, [x0]
    movz x2, #24
    bl memcpy
    sub x9, x29, #120
    ldr x19, [x9]
    mov x0, x19
    sub x8, x29, #200
    bl lb_net_SocketHandle_require
    sub x15, x29, #200
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L3_2
    b .L3_1
.L3_2:
    add x14, x15, #8
    sub x19, x29, #112
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_3:
.L3_1:
    ldrsw x20, [x15]
    sub x21, x29, #160
    ldrb w14, [x21]
    add x12, x19, #12
    ldrb w12, [x12]
    cmp w14, w12
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L3_5
.L3_4:
    sub x19, x29, #112
    adrp x14, lb_net_15invalid_options
    add x14, x14, :lo12:lb_net_15invalid_options
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_4
    add x14, x14, :lo12:.Ltext_4
    sub x15, x29, #216
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_7:
    b .L3_6
.L3_5:
.L3_6:
    mov x10, #0
    cmp w12, w10
    b.ne .L3_9
.L3_8:
    movz x9, #65507
    mov x14, x9
    b .L3_10
.L3_9:
    movz x9, #65527
    mov x14, x9
.L3_10:
    sub x19, x29, #136
    add x15, x19, #8
    ldr x22, [x15]
    cmp x22, x14
    b.ls .L3_12
.L3_11:
    sub x19, x29, #112
    adrp x14, lb_net_17message_too_large
    add x14, x14, :lo12:lb_net_17message_too_large
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_5
    add x14, x14, :lo12:.Ltext_5
    sub x15, x29, #232
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_14:
    b .L3_13
.L3_12:
.L3_13:
    sub x23, x29, #260
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str wzr, [x11, #24]
    mov x0, x21
    mov x1, x23
    sub x8, x29, #304
    bl lb_net_SocketAddress_12write_native
    sub x15, x29, #304
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L3_16
    b .L3_15
.L3_16:
    add x14, x15, #8
    sub x19, x29, #112
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_17:
.L3_15:
    ldr w21, [x15]
    ldr x24, [x19]
    mov x0, x20
    mov x1, x24
    mov x2, x22
    mov x3, #0
    mov x4, x23
    mov x5, x21
    bl lb_net_sendto
    mov x14, x0
    mov x25, x14
.L3_18:
    mov x10, #0
    cmp x25, x10
    cset w19, lt
    cbnz w19, .L3_21
    b .L3_31
.L3_31:
    mov w14, w19
    b .L3_22
.L3_21:
    bl lb_net_12socket_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w14, eq
.L3_22:
    and w15, w14, #255
    cbnz w15, .L3_19
    b .L3_20
.L3_19:
    mov x0, x20
    mov x1, x24
    mov x2, x22
    mov x3, #0
    mov x4, x23
    mov x5, x21
    bl lb_net_sendto
    mov x25, x0
    b .L3_18
.L3_20:
    cbnz w19, .L3_23
    b .L3_24
.L3_23:
    sub x19, x29, #112
    bl lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl lb_net_12socket_error
    mov w14, w0
    str w14, [x19]
    adrp x14, .Ltext_6
    add x14, x14, :lo12:.Ltext_6
    sub x15, x29, #320
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_26:
    b .L3_25
.L3_24:
.L3_25:
    cmp x22, x25
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L3_28
.L3_27:
    sub x19, x29, #112
    adrp x14, lb_net_failed
    add x14, x14, :lo12:lb_net_failed
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_7
    add x14, x14, :lo12:.Ltext_7
    sub x15, x29, #336
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_30:
    b .L3_29
.L3_28:
.L3_29:
    sub x14, x29, #112
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_Datagram_7send_to, .-lb_net_Datagram_7send_to

    .p2align 2
    .globl lb_net_Datagram_12receive_from
    .type lb_net_Datagram_12receive_from, %function
lb_net_Datagram_12receive_from:
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
    sub x16, x29, #176
    str x0, [x16]
    sub x16, x29, #192
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #176
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #232
    bl lb_net_SocketHandle_require
    sub x15, x29, #232
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L4_2
    b .L4_1
.L4_2:
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
    bl memcpy
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
.L4_1:
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
    b.ne .L4_5
.L4_4:
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
    b .L4_6
.L4_5:
.L4_6:
    sub x21, x29, #368
    sub x23, x29, #424
    add x25, x23, #8
    add x26, x23, #16
    add x27, x23, #24
    add x28, x21, #8
    add x24, x21, #48
.L4_7:
.L4_8:
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    str x20, [x23]
    movz x9, #28
    str w9, [x25]
    str x22, [x26]
    movz x9, #1
    str x9, [x27]
    mov x10, x23
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldr x16, [x10, #48]
    str x16, [x11, #48]
    mov x0, x19
    mov x1, x21
    mov x2, #0
    bl recvmsg
    mov x14, x0
    ldr w15, [x28]
    ldrsw x12, [x24]
    mov x10, #0
    cmp x14, x10
    b.ge .L4_11
.L4_10:
    bl lb_net_12socket_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    b.ne .L4_14
.L4_13:
    b .L4_7
.L4_14:
.L4_15:
    sub x19, x29, #168
    add x20, x19, #32
    mov x0, x14
    bl lb_net_12socket_error
    mov w15, w0
    str w15, [x20]
    adrp x15, .Ltext_9
    add x15, x15, :lo12:.Ltext_9
    sub x12, x29, #440
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
    bl memcpy
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
.L4_11:
.L4_12:
    movz x10, #32
    and w13, w12, w10
    mov x10, #0
    cmp w13, w10
    cset w13, eq
    mov x10, #0
    cmp w13, w10
    cset w13, eq
    cbnz w13, .L4_32
    b .L4_21
.L4_32:
    mov w12, w13
    b .L4_22
.L4_21:
    ldr x10, [sp, #8]
    cmp x14, x10
    cset w12, hi
.L4_22:
    and w13, w12, #255
    cbnz w13, .L4_18
    b .L4_19
.L4_18:
    sub x19, x29, #168
    add x14, x19, #32
    adrp x15, lb_net_17message_too_large
    add x15, x15, :lo12:lb_net_17message_too_large
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_10
    add x15, x15, :lo12:.Ltext_10
    sub x12, x29, #456
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
    bl memcpy
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
.L4_19:
.L4_20:
    movz x10, #28
    cmp w15, w10
    b.ls .L4_25
.L4_24:
    sub x19, x29, #168
    add x14, x19, #32
    adrp x15, lb_net_failed
    add x15, x15, :lo12:lb_net_failed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_11
    add x15, x15, :lo12:.Ltext_11
    sub x12, x29, #472
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
    bl memcpy
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
.L4_25:
.L4_26:
    sub x19, x29, #504
    str x14, [x19]
    mov x0, x20
    mov x1, x15
    sub x8, x29, #560
    bl lb_net_14decode_address
    sub x13, x29, #560
    add x12, x13, #48
    ldrb w12, [x12]
    cbnz w12, .L4_29
    b .L4_28
.L4_29:
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
    bl memcpy
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
.L4_28:
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
    bl memcpy
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

    .size lb_net_Datagram_12receive_from, .-lb_net_Datagram_12receive_from

    .p2align 2
    .globl lb_net_Datagram_wait
    .type lb_net_Datagram_wait, %function
lb_net_Datagram_wait:
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
    bl lb_net_SocketHandle_require
    sub x15, x29, #168
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L5_2
    b .L5_1
.L5_2:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_3:
.L5_1:
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
    bl lb_net_11wait_socket
    sub x12, x29, #208
    add x14, x12, #32
    ldrb w14, [x14]
    cbnz w14, .L5_5
    b .L5_4
.L5_5:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_6:
.L5_4:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_7:
    adrp x0, .Ltext_13
    add x0, x0, :lo12:.Ltext_13
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_net_Datagram_wait, .-lb_net_Datagram_wait

    .p2align 2
    .globl lb_net_Datagram_15set_nonblocking
    .type lb_net_Datagram_15set_nonblocking, %function
lb_net_Datagram_15set_nonblocking:
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
    bl lb_net_SocketHandle_require
    sub x15, x29, #136
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L6_2
    b .L6_1
.L6_2:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_3:
.L6_1:
    ldrsw x14, [x15]
    sub x12, x29, #96
    ldrb w20, [x12]
    mov x0, x14
    mov x1, x20
    sub x8, x29, #168
    bl lb_net_15set_nonblocking
    sub x12, x29, #168
    add x14, x12, #24
    ldrb w14, [x14]
    cbnz w14, .L6_5
    b .L6_4
.L6_5:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_6:
.L6_4:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_Datagram_15set_nonblocking, .-lb_net_Datagram_15set_nonblocking

    .p2align 2
    .globl lb_net_Datagram_14is_nonblocking
    .type lb_net_Datagram_14is_nonblocking, %function
lb_net_Datagram_14is_nonblocking:
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
    bl lb_net_SocketHandle_require
    sub x15, x29, #120
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L7_2
    b .L7_1
.L7_2:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_3:
.L7_1:
    ldrsw x14, [x15]
    mov x0, x14
    sub x8, x29, #160
    bl lb_net_19socket_status_flags
    sub x12, x29, #160
    add x14, x12, #32
    ldrb w14, [x14]
    cbnz w14, .L7_5
    b .L7_4
.L7_5:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_6:
.L7_4:
    ldrsw x14, [x12]
    movz x10, #2048
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_7:
    adrp x0, .Ltext_14
    add x0, x0, :lo12:.Ltext_14
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_net_Datagram_14is_nonblocking, .-lb_net_Datagram_14is_nonblocking

    .p2align 2
    .globl lb_net_Datagram_18set_receive_buffer
    .type lb_net_Datagram_18set_receive_buffer, %function
lb_net_Datagram_18set_receive_buffer:
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
    bl lb_net_SocketHandle_require
    sub x15, x29, #128
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L8_2
    b .L8_1
.L8_2:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_3:
.L8_1:
    ldrsw x14, [x15]
    sub x12, x29, #88
    ldrsw x12, [x12]
    mov x0, x14
    movz x1, #8
    mov x2, x12
    sub x8, x29, #160
    bl lb_net_17set_socket_buffer
    sub x12, x29, #160
    add x14, x12, #24
    ldrb w14, [x14]
    cbnz w14, .L8_5
    b .L8_4
.L8_5:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_6:
.L8_4:
    sub x14, x29, #64
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_Datagram_18set_receive_buffer, .-lb_net_Datagram_18set_receive_buffer

    .p2align 2
    .globl lb_net_Datagram_14receive_buffer
    .type lb_net_Datagram_14receive_buffer, %function
lb_net_Datagram_14receive_buffer:
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
    bl lb_net_SocketHandle_require
    sub x15, x29, #120
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L9_2
    b .L9_1
.L9_2:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_3:
.L9_1:
    ldrsw x14, [x15]
    mov x0, x14
    movz x1, #1
    movz x2, #8
    sub x8, x29, #160
    bl lb_net_18get_socket_integer
    sub x12, x29, #160
    add x14, x12, #32
    ldrb w14, [x14]
    cbnz w14, .L9_5
    b .L9_4
.L9_5:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_6:
.L9_4:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_7:
    adrp x0, .Ltext_15
    add x0, x0, :lo12:.Ltext_15
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_net_Datagram_14receive_buffer, .-lb_net_Datagram_14receive_buffer

    .p2align 2
    .globl lb_net_Datagram_15set_send_buffer
    .type lb_net_Datagram_15set_send_buffer, %function
lb_net_Datagram_15set_send_buffer:
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
    bl lb_net_SocketHandle_require
    sub x15, x29, #128
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L10_2
    b .L10_1
.L10_2:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_3:
.L10_1:
    ldrsw x14, [x15]
    sub x12, x29, #88
    ldrsw x12, [x12]
    mov x0, x14
    movz x1, #7
    mov x2, x12
    sub x8, x29, #160
    bl lb_net_17set_socket_buffer
    sub x12, x29, #160
    add x14, x12, #24
    ldrb w14, [x14]
    cbnz w14, .L10_5
    b .L10_4
.L10_5:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_6:
.L10_4:
    sub x14, x29, #64
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_Datagram_15set_send_buffer, .-lb_net_Datagram_15set_send_buffer

    .p2align 2
    .globl lb_net_Datagram_11send_buffer
    .type lb_net_Datagram_11send_buffer, %function
lb_net_Datagram_11send_buffer:
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
    bl lb_net_SocketHandle_require
    sub x15, x29, #120
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L11_2
    b .L11_1
.L11_2:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_3:
.L11_1:
    ldrsw x14, [x15]
    mov x0, x14
    movz x1, #1
    movz x2, #7
    sub x8, x29, #160
    bl lb_net_18get_socket_integer
    sub x12, x29, #160
    add x14, x12, #32
    ldrb w14, [x14]
    cbnz w14, .L11_5
    b .L11_4
.L11_5:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_6:
.L11_4:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_7:
    adrp x0, .Ltext_16
    add x0, x0, :lo12:.Ltext_16
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_net_Datagram_11send_buffer, .-lb_net_Datagram_11send_buffer

    .p2align 2
    .globl lb_net_Datagram_descriptor
    .type lb_net_Datagram_descriptor, %function
lb_net_Datagram_descriptor:
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
.L12_1:
    adrp x0, .Ltext_17
    add x0, x0, :lo12:.Ltext_17
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_net_Datagram_descriptor, .-lb_net_Datagram_descriptor

    .p2align 2
    .globl lb_net_Datagram_close
    .type lb_net_Datagram_close, %function
lb_net_Datagram_close:
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
    bl lb_net_SocketHandle_close
    sub x15, x29, #104
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L13_2
    b .L13_1
.L13_2:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_3:
.L13_1:
    sub x14, x29, #64
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_Datagram_close, .-lb_net_Datagram_close

    .p2align 2
    .globl lb_net_Datagram_destroy
    .type lb_net_Datagram_destroy, %function
lb_net_Datagram_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    mov x0, x14
    bl lb_net_SocketHandle_destroy
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_Datagram_destroy, .-lb_net_Datagram_destroy

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_datagram_0init

    .section .rodata
.Ltext_0:
    .asciz "the datagram socket could not bind its address"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/net/datagram.lucb:19:9"
.Ltext_3:
    .asciz "src/std/net/datagram.lucb:23:9"
.Ltext_4:
    .asciz "the datagram destination has a different IP version"
.Ltext_5:
    .asciz "the UDP payload exceeds the IP version's maximum"
.Ltext_6:
    .asciz "the datagram could not be sent"
.Ltext_7:
    .asciz "the datagram send did not confirm the complete packet"
.Ltext_8:
    .asciz "src/std/net/datagram.lucb:61:13"
.Ltext_9:
    .asciz "the datagram could not be received"
.Ltext_10:
    .asciz "the receive buffer was too small for the datagram"
.Ltext_11:
    .asciz "the datagram sender address exceeds the supported storage"
.Ltext_12:
    .asciz "src/std/net/datagram.lucb:86:13"
.Ltext_13:
    .asciz "src/std/net/datagram.lucb:92:9"
.Ltext_14:
    .asciz "src/std/net/datagram.lucb:104:9"
.Ltext_15:
    .asciz "src/std/net/datagram.lucb:112:9"
.Ltext_16:
    .asciz "src/std/net/datagram.lucb:120:9"
.Ltext_17:
    .asciz "src/std/net/datagram.lucb:124:9"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
