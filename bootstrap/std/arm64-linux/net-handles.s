    .text

    .p2align 2
    .globl lb_net_handles_0init
    .type lb_net_handles_0init, %function
lb_net_handles_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_net_14transfer_limit
    add x14, x14, :lo12:lb_net_14transfer_limit
    movz x9, #16384, lsl #16
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_handles_0init, .-lb_net_handles_0init

    .p2align 2
    .globl lb_net_SocketHandle_create
    .type lb_net_SocketHandle_create, %function
lb_net_SocketHandle_create:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    str x20, [sp, #136]
    str x21, [sp, #128]
    sub x16, x29, #112
    str w0, [x16]
    sub x16, x29, #128
    str w1, [x16]
    adrp x14, lb_platform_macos
    add x14, x14, :lo12:lb_platform_macos
    ldrb w14, [x14]
    cbnz w14, .L1_1
    b .L1_2
.L1_1:
    mov x9, #0
    mov w14, w9
    b .L1_3
.L1_2:
    adrp x14, lb_net_20socket_close_on_exec
    add x14, x14, :lo12:lb_net_20socket_close_on_exec
    ldrsw x14, [x14]
.L1_3:
    sub x15, x29, #128
    ldrb w15, [x15]
    mov x10, #0
    cmp w15, w10
    b.ne .L1_5
.L1_4:
    adrp x15, lb_net_inet
    add x15, x15, :lo12:lb_net_inet
    ldrsw x15, [x15]
    b .L1_6
.L1_5:
    adrp x15, lb_net_inet6
    add x15, x15, :lo12:lb_net_inet6
    ldrsw x15, [x15]
.L1_6:
    sub x19, x29, #112
    ldrsw x19, [x19]
    orr w19, w19, w14
    mov x0, x15
    mov x1, x19
    mov x2, #0
    bl socket
    mov w19, w0
    mov x10, #0
    cmp w19, w10
    b.ge .L1_8
.L1_7:
    sub x19, x29, #96
    add x20, x19, #16
    bl lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl lb_net_12socket_error
    mov w14, w0
    str w14, [x20]
    adrp x14, .Ltext_0
    add x14, x14, :lo12:.Ltext_0
    sub x15, x29, #144
    str x14, [x15]
    add x14, x15, #8
    movz x9, #29
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_10:
    b .L1_9
.L1_8:
.L1_9:
    sub x20, x29, #160
    mov x11, x20
    str xzr, [x11, #0]
    str wzr, [x11, #8]
    sub x14, x29, #168
    str w19, [x14]
    add x15, x14, #4
    movz x9, #1
    strb w9, [x15]
    mov x10, x14
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x21, x29, #96
    mov x10, x20
    mov x11, x21
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldr w12, [x10, #8]
    str w12, [x11, #8]
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_11:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_net_SocketHandle_create, .-lb_net_SocketHandle_create

    .p2align 2
    .globl lb_net_SocketHandle_adopt
    .type lb_net_SocketHandle_adopt, %function
lb_net_SocketHandle_adopt:
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
    str x24, [sp, #136]
    sub x16, x29, #136
    str w0, [x16]
    sub x14, x29, #136
    ldrsw x19, [x14]
    mov x10, #0
    cmp w19, w10
    b.ge .L2_2
.L2_1:
    sub x19, x29, #120
    add x14, x19, #16
    adrp x15, lb_net_closed
    add x15, x15, :lo12:lb_net_closed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_3
    add x15, x15, :lo12:.Ltext_3
    sub x20, x29, #152
    str x15, [x20]
    add x15, x20, #8
    movz x9, #32
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    ldr x23, [sp, #144]
    ldr x24, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_4:
    b .L2_3
.L2_2:
.L2_3:
    adrp x20, lb_net_20get_descriptor_flags
    add x20, x20, :lo12:lb_net_20get_descriptor_flags
    ldrsw x14, [x20]
    mov x0, x19
    mov x1, x14
    bl fcntl
    mov w14, w0
    adrp x21, lb_net_18socket_interrupted
    add x21, x21, :lo12:lb_net_18socket_interrupted
    mov w22, w14
.L2_5:
    mov x10, #0
    cmp w22, w10
    cset w23, lt
    cbnz w23, .L2_8
    b .L2_27
.L2_27:
    mov w14, w23
    b .L2_9
.L2_8:
    bl lb_net_12socket_errno
    mov w14, w0
    ldrsw x15, [x21]
    cmp w14, w15
    cset w14, eq
.L2_9:
    and w15, w14, #255
    cbnz w15, .L2_6
    b .L2_7
.L2_6:
    ldrsw x14, [x20]
    mov x0, x19
    mov x1, x14
    bl fcntl
    mov w22, w0
    b .L2_5
.L2_7:
    cbnz w23, .L2_10
    b .L2_11
.L2_10:
    bl lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl lb_net_12socket_error
    mov w20, w0
    mov x0, x19
    bl lb_net_close
    mov w14, w0
    sub x21, x29, #120
    add x14, x21, #16
    str w20, [x14]
    adrp x15, .Ltext_4
    add x15, x15, :lo12:.Ltext_4
    sub x20, x29, #168
    str x15, [x20]
    add x15, x20, #8
    movz x9, #44
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    ldr x23, [sp, #144]
    ldr x24, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_13:
    b .L2_12
.L2_11:
.L2_12:
    adrp x20, lb_net_24descriptor_close_on_exec
    add x20, x20, :lo12:lb_net_24descriptor_close_on_exec
    ldrsw x14, [x20]
    and w15, w14, w22
    mov x10, #0
    cmp w15, w10
    b.ne .L2_15
.L2_14:
    adrp x21, lb_net_20set_descriptor_flags
    add x21, x21, :lo12:lb_net_20set_descriptor_flags
    ldrsw x15, [x21]
    orr w23, w14, w22
    mov x0, x19
    mov x1, x15
    mov x2, x23
    bl fcntl
    mov w15, w0
    adrp x23, lb_net_18socket_interrupted
    add x23, x23, :lo12:lb_net_18socket_interrupted
.L2_17:
    mov x10, #0
    cmp w15, w10
    cset w24, lt
    cbnz w24, .L2_20
    b .L2_28
.L2_28:
    mov w14, w24
    b .L2_21
.L2_20:
    bl lb_net_12socket_errno
    mov w14, w0
    ldrsw x15, [x23]
    cmp w14, w15
    cset w14, eq
.L2_21:
    and w15, w14, #255
    cbnz w15, .L2_18
    b .L2_19
.L2_18:
    ldrsw x14, [x21]
    ldrsw x15, [x20]
    orr w15, w15, w22
    mov x0, x19
    mov x1, x14
    mov x2, x15
    bl fcntl
    mov w15, w0
    b .L2_17
.L2_19:
    cbnz w24, .L2_22
    b .L2_23
.L2_22:
    bl lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl lb_net_12socket_error
    mov w20, w0
    mov x0, x19
    bl lb_net_close
    mov w14, w0
    sub x21, x29, #120
    add x14, x21, #16
    str w20, [x14]
    adrp x15, .Ltext_5
    add x15, x15, :lo12:.Ltext_5
    sub x20, x29, #184
    str x15, [x20]
    add x15, x20, #8
    movz x9, #44
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    ldr x23, [sp, #144]
    ldr x24, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_25:
    b .L2_24
.L2_23:
.L2_24:
    b .L2_16
.L2_15:
.L2_16:
    sub x20, x29, #200
    mov x11, x20
    str xzr, [x11, #0]
    str wzr, [x11, #8]
    sub x14, x29, #208
    str w19, [x14]
    add x15, x14, #4
    movz x9, #1
    strb w9, [x15]
    mov x10, x14
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x21, x29, #120
    mov x10, x20
    mov x11, x21
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldr w12, [x10, #8]
    str w12, [x11, #8]
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    ldr x23, [sp, #144]
    ldr x24, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_26:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_net_SocketHandle_adopt, .-lb_net_SocketHandle_adopt

    .p2align 2
    .globl lb_net_SocketHandle_require
    .type lb_net_SocketHandle_require, %function
lb_net_SocketHandle_require:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    str x20, [sp, #72]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x15, [x9]
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, .L3_1
    b .L3_2
.L3_1:
    ldrsw x14, [x15]
    b .L3_3
.L3_2:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, lb_net_closed
    add x15, x15, :lo12:lb_net_closed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_7
    add x15, x15, :lo12:.Ltext_7
    sub x20, x29, #104
    str x15, [x20]
    add x15, x20, #8
    movz x9, #20
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
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_4:
.L3_3:
    sub x15, x29, #80
    str w14, [x15]
    add x19, x15, #32
    mov x9, #0
    strb w9, [x19]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_5:
    adrp x0, .Ltext_8
    add x0, x0, :lo12:.Ltext_8
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_net_SocketHandle_require, .-lb_net_SocketHandle_require

    .p2align 2
    .globl lb_net_SocketHandle_close
    .type lb_net_SocketHandle_close, %function
lb_net_SocketHandle_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    str x20, [sp, #72]
    str x21, [sp, #64]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x19, [x9]
    add x14, x19, #4
    ldrb w14, [x14]
    cbnz w14, .L4_1
    b .L4_2
.L4_1:
    ldrsw x20, [x19]
    b .L4_3
.L4_2:
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
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    ldr x21, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_4:
.L4_3:
    sub x21, x29, #96
    mov x11, x21
    str xzr, [x11, #0]
    mov x10, x21
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x0, x20
    bl lb_net_close
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L4_6
.L4_5:
    sub x19, x29, #80
    bl lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl lb_net_12socket_error
    mov w14, w0
    str w14, [x19]
    adrp x14, .Ltext_9
    add x14, x14, :lo12:.Ltext_9
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #30
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
    ldr x21, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_8:
    b .L4_7
.L4_6:
.L4_7:
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
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    ldr x21, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_SocketHandle_close, .-lb_net_SocketHandle_close

    .p2align 2
    .globl lb_net_SocketHandle_destroy
    .type lb_net_SocketHandle_destroy, %function
lb_net_SocketHandle_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #80
    bl lb_net_SocketHandle_close
    sub x15, x29, #80
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L5_4
    b .L5_3
.L5_4:
    sub x14, x29, #48
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b .L5_1
.L5_3:
    b .L5_2
.L5_1:
.L5_2:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_SocketHandle_destroy, .-lb_net_SocketHandle_destroy

    .p2align 2
    .globl lb_net_14socket_address
    .type lb_net_14socket_address, %function
lb_net_14socket_address:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #288
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #256]
    str x20, [sp, #248]
    str x21, [sp, #240]
    str x22, [sp, #232]
    str x23, [sp, #224]
    str x24, [sp, #216]
    sub x16, x29, #144
    str w0, [x16]
    sub x16, x29, #160
    str w1, [x16]
    sub x19, x29, #188
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str wzr, [x11, #24]
    sub x20, x29, #192
    movz x9, #28
    str w9, [x20]
    sub x14, x29, #144
    ldrsw x21, [x14]
    sub x14, x29, #160
    ldrb w22, [x14]
    mov x0, x21
    mov x1, x19
    mov x2, x20
    mov x3, x22
    bl lb_net_13query_address
    mov w14, w0
    adrp x23, lb_net_18socket_interrupted
    add x23, x23, :lo12:lb_net_18socket_interrupted
    mov w24, w14
.L6_1:
    mov x10, #0
    cmp w24, w10
    cset w14, lt
    cbnz w14, .L6_4
    b .L6_18
.L6_18:
    mov w15, w14
    b .L6_5
.L6_4:
    bl lb_net_12socket_errno
    mov w14, w0
    ldrsw x15, [x23]
    cmp w14, w15
    cset w15, eq
.L6_5:
    and w14, w15, #255
    cbnz w14, .L6_2
    b .L6_3
.L6_2:
    movz x9, #28
    str w9, [x20]
    mov x0, x21
    mov x1, x19
    mov x2, x20
    mov x3, x22
    bl lb_net_13query_address
    mov w24, w0
    b .L6_1
.L6_3:
    mov x10, #0
    cmp w24, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L6_7
.L6_6:
    sub x19, x29, #128
    add x20, x19, #24
    bl lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl lb_net_12socket_error
    mov w14, w0
    str w14, [x20]
    adrp x14, .Ltext_10
    add x14, x14, :lo12:.Ltext_10
    sub x15, x29, #208
    str x14, [x15]
    add x14, x15, #8
    movz x9, #39
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
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
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_9:
    b .L6_8
.L6_7:
.L6_8:
    ldr w14, [x20]
    movz x10, #28
    cmp w14, w10
    b.ls .L6_11
.L6_10:
    sub x19, x29, #128
    add x14, x19, #24
    adrp x15, lb_net_failed
    add x15, x15, :lo12:lb_net_failed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_11
    add x15, x15, :lo12:.Ltext_11
    sub x20, x29, #224
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_13:
    b .L6_12
.L6_11:
.L6_12:
    mov x0, x19
    mov x1, x14
    sub x8, x29, #280
    bl lb_net_14decode_address
    sub x20, x29, #280
    add x15, x20, #48
    ldrb w15, [x15]
    cbnz w15, .L6_15
    b .L6_14
.L6_15:
    add x14, x20, #24
    sub x19, x29, #128
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_16:
.L6_14:
    sub x19, x29, #128
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_17:
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_net_14socket_address, .-lb_net_14socket_address

    .p2align 2
    .globl lb_net_13query_address
    .type lb_net_13query_address, %function
lb_net_13query_address:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    sub x16, x29, #40
    str w0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x16, x29, #72
    str x2, [x16]
    sub x16, x29, #88
    str w3, [x16]
    sub x14, x29, #88
    ldrb w14, [x14]
    cbnz w14, .L7_1
    b .L7_2
.L7_1:
    sub x14, x29, #40
    ldrsw x14, [x14]
    sub x15, x29, #56
    ldr x15, [x15]
    sub x19, x29, #72
    ldr x19, [x19]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl getpeername
    mov w14, w0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_4:
    b .L7_3
.L7_2:
.L7_3:
    sub x14, x29, #40
    ldrsw x14, [x14]
    sub x15, x29, #56
    ldr x15, [x15]
    sub x19, x29, #72
    ldr x19, [x19]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl getsockname
    mov w14, w0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_5:
    adrp x0, .Ltext_13
    add x0, x0, :lo12:.Ltext_13
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_net_13query_address, .-lb_net_13query_address

    .p2align 2
    .globl lb_net_18set_socket_integer
    .type lb_net_18set_socket_integer, %function
lb_net_18set_socket_integer:
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
    str x24, [sp, #120]
    sub x16, x29, #120
    str w0, [x16]
    sub x16, x29, #136
    str w1, [x16]
    sub x16, x29, #152
    str w2, [x16]
    sub x16, x29, #168
    str w3, [x16]
    sub x14, x29, #120
    ldrsw x19, [x14]
    sub x14, x29, #136
    ldrsw x20, [x14]
    sub x14, x29, #152
    ldrsw x21, [x14]
    sub x22, x29, #168
    mov x0, x19
    mov x1, x20
    mov x2, x21
    mov x3, x22
    movz x4, #4
    bl setsockopt
    mov w14, w0
    adrp x23, lb_net_18socket_interrupted
    add x23, x23, :lo12:lb_net_18socket_interrupted
    mov w24, w14
.L8_1:
    mov x10, #0
    cmp w24, w10
    cset w14, lt
    cbnz w14, .L8_4
    b .L8_10
.L8_10:
    mov w15, w14
    b .L8_5
.L8_4:
    bl lb_net_12socket_errno
    mov w14, w0
    ldrsw x15, [x23]
    cmp w14, w15
    cset w15, eq
.L8_5:
    and w14, w15, #255
    cbnz w14, .L8_2
    b .L8_3
.L8_2:
    mov x0, x19
    mov x1, x20
    mov x2, x21
    mov x3, x22
    movz x4, #4
    bl setsockopt
    mov w24, w0
    b .L8_1
.L8_3:
    mov x10, #0
    cmp w24, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L8_7
.L8_6:
    sub x19, x29, #104
    bl lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl lb_net_12socket_error
    mov w14, w0
    str w14, [x19]
    adrp x14, .Ltext_14
    add x14, x14, :lo12:.Ltext_14
    sub x15, x29, #184
    str x14, [x15]
    add x14, x15, #8
    movz x9, #34
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    ldr x22, [sp, #136]
    ldr x23, [sp, #128]
    ldr x24, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_9:
    b .L8_8
.L8_7:
.L8_8:
    sub x14, x29, #104
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    ldr x22, [sp, #136]
    ldr x23, [sp, #128]
    ldr x24, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_18set_socket_integer, .-lb_net_18set_socket_integer

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_handles_0init

    .section .rodata
.Ltext_0:
    .asciz "a socket could not be created"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/net/handles.lucb:26:9"
.Ltext_3:
    .asciz "the socket descriptor is invalid"
.Ltext_4:
    .asciz "socket descriptor flags could not be queried"
.Ltext_5:
    .asciz "the socket could not be marked close-on-exec"
.Ltext_6:
    .asciz "src/std/net/handles.lucb:56:9"
.Ltext_7:
    .asciz "the socket is closed"
.Ltext_8:
    .asciz "src/std/net/handles.lucb:60:9"
.Ltext_9:
    .asciz "the socket could not be closed"
.Ltext_10:
    .asciz "the socket address could not be queried"
.Ltext_11:
    .asciz "the socket address exceeds the supported IP storage"
.Ltext_12:
    .asciz "src/std/net/handles.lucb:83:5"
.Ltext_13:
    .asciz "src/std/net/handles.lucb:88:5"
.Ltext_14:
    .asciz "the socket option could not be set"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_net_14transfer_limit
    .type lb_net_14transfer_limit, %object
    .p2align 3
lb_net_14transfer_limit:
    .zero 8


    .section .note.GNU-stack,"",%progbits
