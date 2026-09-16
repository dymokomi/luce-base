    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_net_handles_0init
_lb_net_handles_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_net_14transfer_limit@PAGE
    add x14, x14, _lb_net_14transfer_limit@PAGEOFF
    movz x9, #16384, lsl #16
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_SocketHandle_create
    .no_dead_strip _lb_net_SocketHandle_create
_lb_net_SocketHandle_create:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    sub x16, x29, #104
    str w0, [x16]
    sub x16, x29, #120
    str w1, [x16]
    sub x14, x29, #120
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    b.ne L1_2
L1_1:
    movz x9, #2
    mov w14, w9
    b L1_3
L1_2:
    movz x9, #30
    mov w14, w9
L1_3:
    sub x15, x29, #104
    ldrsw x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    bl _socket
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    b.ge L1_5
L1_4:
    sub x19, x29, #88
    add x20, x19, #16
    bl _lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl _lb_net_12socket_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_0@PAGE
    add x14, x14, l_text_0@PAGEOFF
    sub x15, x29, #136
    str x14, [x15]
    add x14, x15, #8
    movz x9, #29
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_7:
    b L1_6
L1_5:
L1_6:
    mov x0, x15
    sub x8, x29, #184
    bl _lb_net_SocketHandle_adopt
    sub x12, x29, #184
    add x14, x12, #40
    ldrb w14, [x14]
    cbnz w14, L1_9
    b L1_8
L1_9:
    add x14, x12, #16
    sub x19, x29, #88
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_10:
L1_8:
    sub x19, x29, #88
    mov x10, x12
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    ldr w16, [x10, #8]
    str w16, [x11, #8]
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_11:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_SocketHandle_adopt
    .no_dead_strip _lb_net_SocketHandle_adopt
_lb_net_SocketHandle_adopt:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    str x21, [sp, #144]
    sub x16, x29, #112
    str w0, [x16]
    sub x14, x29, #112
    ldrsw x19, [x14]
    mov x10, #0
    cmp w19, w10
    b.ge L2_2
L2_1:
    sub x19, x29, #96
    add x14, x19, #16
    adrp x15, _lb_net_closed@PAGE
    add x15, x15, _lb_net_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_3@PAGE
    add x15, x15, l_text_3@PAGEOFF
    sub x12, x29, #128
    str x15, [x12]
    add x15, x12, #8
    movz x9, #32
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_4:
    b L2_3
L2_2:
L2_3:
    mov x0, x19
    movz x1, #1
    bl _fcntl
    mov w14, w0
    mov w20, w14
L2_5:
    mov x10, #0
    cmp w20, w10
    cset w21, lt
    cbnz w21, L2_8
    b L2_27
L2_27:
    mov w14, w21
    b L2_9
L2_8:
    bl _lb_net_12socket_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w14, eq
L2_9:
    and w15, w14, #255
    cbnz w15, L2_6
    b L2_7
L2_6:
    mov x0, x19
    movz x1, #1
    bl _fcntl
    mov w20, w0
    b L2_5
L2_7:
    cbnz w21, L2_10
    b L2_11
L2_10:
    bl _lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl _lb_net_12socket_error
    mov w20, w0
    mov x0, x19
    bl _lb_net_close
    mov w14, w0
    sub x21, x29, #96
    add x14, x21, #16
    str w20, [x14]
    adrp x15, l_text_4@PAGE
    add x15, x15, l_text_4@PAGEOFF
    sub x12, x29, #144
    str x15, [x12]
    add x15, x12, #8
    movz x9, #44
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_13:
    b L2_12
L2_11:
L2_12:
    movz x10, #1
    and w14, w20, w10
    mov x10, #0
    cmp w14, w10
    b.ne L2_15
L2_14:
    movz x10, #1
    orr w21, w20, w10
    movz x16, #16
    sub sp, sp, x16
    mov w9, w21
    str x9, [sp, #0]
    mov x0, x19
    movz x1, #2
    bl _fcntl
    movz x16, #16
    add sp, sp, x16
    mov w14, w0
L2_17:
    mov x10, #0
    cmp w14, w10
    cset w20, lt
    cbnz w20, L2_20
    b L2_28
L2_28:
    mov w14, w20
    b L2_21
L2_20:
    bl _lb_net_12socket_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w14, eq
L2_21:
    and w15, w14, #255
    cbnz w15, L2_18
    b L2_19
L2_18:
    movz x16, #16
    sub sp, sp, x16
    mov w9, w21
    str x9, [sp, #0]
    mov x0, x19
    movz x1, #2
    bl _fcntl
    movz x16, #16
    add sp, sp, x16
    mov w14, w0
    b L2_17
L2_19:
    cbnz w20, L2_22
    b L2_23
L2_22:
    bl _lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl _lb_net_12socket_error
    mov w20, w0
    mov x0, x19
    bl _lb_net_close
    mov w14, w0
    sub x21, x29, #96
    add x14, x21, #16
    str w20, [x14]
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
    sub x12, x29, #160
    str x15, [x12]
    add x15, x12, #8
    movz x9, #44
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_25:
    b L2_24
L2_23:
L2_24:
    b L2_16
L2_15:
L2_16:
    sub x20, x29, #176
    mov x11, x20
    str xzr, [x11, #0]
    str wzr, [x11, #8]
    sub x14, x29, #184
    str w19, [x14]
    add x15, x14, #4
    movz x9, #1
    strb w9, [x15]
    mov x10, x14
    mov x11, x20
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    sub x21, x29, #96
    mov x10, x20
    mov x11, x21
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    ldr w16, [x10, #8]
    str w16, [x11, #8]
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_26:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_SocketHandle_require
    .no_dead_strip _lb_net_SocketHandle_require
_lb_net_SocketHandle_require:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #64]
    sub x16, x29, #80
    str x0, [x16]
    sub x9, x29, #80
    ldr x15, [x9]
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, L3_1
    b L3_2
L3_1:
    ldrsw x14, [x15]
    b L3_3
L3_2:
    sub x19, x29, #72
    add x14, x19, #8
    adrp x15, _lb_net_closed@PAGE
    add x15, x15, _lb_net_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_7@PAGE
    add x15, x15, l_text_7@PAGEOFF
    sub x12, x29, #96
    str x15, [x12]
    add x15, x12, #8
    movz x9, #20
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
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_4:
L3_3:
    sub x15, x29, #72
    str w14, [x15]
    add x12, x15, #32
    mov x9, #0
    strb w9, [x12]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_5:
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_SocketHandle_close
    .no_dead_strip _lb_net_SocketHandle_close
_lb_net_SocketHandle_close:
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
    cbnz w14, L4_1
    b L4_2
L4_1:
    ldrsw x20, [x19]
    b L4_3
L4_2:
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
L4_4:
L4_3:
    sub x21, x29, #96
    mov x11, x21
    str xzr, [x11, #0]
    mov x10, x21
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    mov x0, x20
    bl _lb_net_close
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L4_6
L4_5:
    sub x19, x29, #80
    bl _lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl _lb_net_12socket_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_9@PAGE
    add x14, x14, l_text_9@PAGEOFF
    sub x15, x29, #112
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
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    ldr x21, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_8:
    b L4_7
L4_6:
L4_7:
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

    .p2align 2
    .globl _lb_net_SocketHandle_destroy
    .no_dead_strip _lb_net_SocketHandle_destroy
_lb_net_SocketHandle_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #80
    bl _lb_net_SocketHandle_close
    sub x15, x29, #80
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L5_4
    b L5_3
L5_4:
    sub x14, x29, #48
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b L5_1
L5_3:
    b L5_2
L5_1:
L5_2:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_14socket_address
    .no_dead_strip _lb_net_14socket_address
_lb_net_14socket_address:
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
    sub x16, x29, #136
    str w0, [x16]
    sub x16, x29, #152
    str w1, [x16]
    sub x19, x29, #180
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str wzr, [x11, #24]
    sub x20, x29, #184
    movz x9, #28
    str w9, [x20]
    sub x14, x29, #136
    ldrsw x21, [x14]
    sub x14, x29, #152
    ldrb w22, [x14]
    mov x0, x21
    mov x1, x19
    mov x2, x20
    mov x3, x22
    bl _lb_net_13query_address
    mov w14, w0
    mov w23, w14
L6_1:
    mov x10, #0
    cmp w23, w10
    cset w14, lt
    cbnz w14, L6_4
    b L6_18
L6_18:
    mov w15, w14
    b L6_5
L6_4:
    bl _lb_net_12socket_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w15, eq
L6_5:
    and w14, w15, #255
    cbnz w14, L6_2
    b L6_3
L6_2:
    movz x9, #28
    str w9, [x20]
    mov x0, x21
    mov x1, x19
    mov x2, x20
    mov x3, x22
    bl _lb_net_13query_address
    mov w23, w0
    b L6_1
L6_3:
    mov x10, #0
    cmp w23, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L6_7
L6_6:
    sub x19, x29, #120
    add x20, x19, #24
    bl _lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl _lb_net_12socket_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
    sub x15, x29, #200
    str x14, [x15]
    add x14, x15, #8
    movz x9, #39
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_9:
    b L6_8
L6_7:
L6_8:
    ldr w14, [x20]
    movz x10, #28
    cmp w14, w10
    b.ls L6_11
L6_10:
    sub x19, x29, #120
    add x14, x19, #24
    adrp x15, _lb_net_failed@PAGE
    add x15, x15, _lb_net_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_11@PAGE
    add x15, x15, l_text_11@PAGEOFF
    sub x12, x29, #216
    str x15, [x12]
    add x15, x12, #8
    movz x9, #51
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_13:
    b L6_12
L6_11:
L6_12:
    mov x0, x19
    mov x1, x14
    sub x8, x29, #272
    bl _lb_net_14decode_address
    sub x12, x29, #272
    add x15, x12, #48
    ldrb w15, [x15]
    cbnz w15, L6_15
    b L6_14
L6_15:
    add x14, x12, #24
    sub x19, x29, #120
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_16:
L6_14:
    sub x19, x29, #120
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_17:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_13query_address
_lb_net_13query_address:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    sub x16, x29, #32
    str w0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x16, x29, #64
    str x2, [x16]
    sub x16, x29, #80
    str w3, [x16]
    sub x14, x29, #80
    ldrb w14, [x14]
    cbnz w14, L7_1
    b L7_2
L7_1:
    sub x14, x29, #32
    ldrsw x14, [x14]
    sub x15, x29, #48
    ldr x15, [x15]
    sub x12, x29, #64
    ldr x12, [x12]
    mov x0, x14
    mov x1, x15
    mov x2, x12
    bl _getpeername
    mov w14, w0
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_4:
    b L7_3
L7_2:
L7_3:
    sub x14, x29, #32
    ldrsw x14, [x14]
    sub x15, x29, #48
    ldr x15, [x15]
    sub x12, x29, #64
    ldr x12, [x12]
    mov x0, x14
    mov x1, x15
    mov x2, x12
    bl _getsockname
    mov w14, w0
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_5:
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_18set_socket_integer
    .no_dead_strip _lb_net_18set_socket_integer
_lb_net_18set_socket_integer:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    str x20, [sp, #136]
    str x21, [sp, #128]
    str x22, [sp, #120]
    str x23, [sp, #112]
    sub x16, x29, #112
    str w0, [x16]
    sub x16, x29, #128
    str w1, [x16]
    sub x16, x29, #144
    str w2, [x16]
    sub x16, x29, #160
    str w3, [x16]
    sub x14, x29, #112
    ldrsw x19, [x14]
    sub x14, x29, #128
    ldrsw x20, [x14]
    sub x14, x29, #144
    ldrsw x21, [x14]
    sub x22, x29, #160
    mov x0, x19
    mov x1, x20
    mov x2, x21
    mov x3, x22
    movz x4, #4
    bl _setsockopt
    mov w14, w0
    mov w23, w14
L8_1:
    mov x10, #0
    cmp w23, w10
    cset w14, lt
    cbnz w14, L8_4
    b L8_10
L8_10:
    mov w15, w14
    b L8_5
L8_4:
    bl _lb_net_12socket_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w15, eq
L8_5:
    and w14, w15, #255
    cbnz w14, L8_2
    b L8_3
L8_2:
    mov x0, x19
    mov x1, x20
    mov x2, x21
    mov x3, x22
    movz x4, #4
    bl _setsockopt
    mov w23, w0
    b L8_1
L8_3:
    mov x10, #0
    cmp w23, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L8_7
L8_6:
    sub x19, x29, #96
    bl _lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl _lb_net_12socket_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_14@PAGE
    add x14, x14, l_text_14@PAGEOFF
    sub x15, x29, #176
    str x14, [x15]
    add x14, x15, #8
    movz x9, #34
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
    ldr x22, [sp, #120]
    ldr x23, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_9:
    b L8_8
L8_7:
L8_8:
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    ldr x22, [sp, #120]
    ldr x23, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_net_handles_0init

    .section __TEXT,__const
l_text_0:
    .asciz "a socket could not be created"
l_text_1:
    .asciz "unreachable"
l_text_2:
    .asciz "src/std/net/handles.lucb:25:13"
l_text_3:
    .asciz "the socket descriptor is invalid"
l_text_4:
    .asciz "socket descriptor flags could not be queried"
l_text_5:
    .asciz "the socket could not be marked close-on-exec"
l_text_6:
    .asciz "src/std/net/handles.lucb:56:9"
l_text_7:
    .asciz "the socket is closed"
l_text_8:
    .asciz "src/std/net/handles.lucb:60:9"
l_text_9:
    .asciz "the socket could not be closed"
l_text_10:
    .asciz "the socket address could not be queried"
l_text_11:
    .asciz "the socket address exceeds the supported IP storage"
l_text_12:
    .asciz "src/std/net/handles.lucb:83:5"
l_text_13:
    .asciz "src/std/net/handles.lucb:88:5"
l_text_14:
    .asciz "the socket option could not be set"

    .section __DATA,__const
    .p2align 3
    .globl _lb_net_14transfer_limit
    .no_dead_strip _lb_net_14transfer_limit
    .zerofill __DATA,__bss,_lb_net_14transfer_limit,8,3

.subsections_via_symbols
