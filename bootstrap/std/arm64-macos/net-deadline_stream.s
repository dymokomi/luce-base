    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_net_15deadline_stream_0init
_lb_net_15deadline_stream_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_platform_windows@PAGE
    add x14, x14, _lb_platform_windows@PAGEOFF
    ldrb w14, [x14]
    cbnz w14, L0_1
    b L0_2
L0_1:
    mov x9, #0
    mov w14, w9
    b L0_3
L0_2:
    adrp x14, _lb_platform_macos@PAGE
    add x14, x14, _lb_platform_macos@PAGEOFF
    ldrb w14, [x14]
    cbnz w14, L0_4
    b L0_5
L0_4:
    movz x9, #128
    mov w14, w9
    b L0_6
L0_5:
    movz x9, #64
    mov w14, w9
L0_6:
L0_3:
    adrp x15, _lb_net_14dont_wait_flag@PAGE
    add x15, x15, _lb_net_14dont_wait_flag@PAGEOFF
    str w14, [x15]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_DeadlineStream_over
    .no_dead_strip _lb_net_DeadlineStream_over
_lb_net_DeadlineStream_over:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #192]
    str x20, [sp, #184]
    str x21, [sp, #176]
    sub x16, x29, #128
    str x0, [x16]
    sub x16, x29, #144
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #160
    str x3, [x16]
    sub x14, x29, #128
    ldr x19, [x14]
    mov x0, x19
    sub x8, x29, #192
    bl _lb_net_19require_nonblocking
    sub x15, x29, #192
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_2
    b L1_1
L1_2:
    sub x19, x29, #112
    add x14, x19, #32
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_3:
L1_1:
    sub x20, x29, #224
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str x19, [x20]
    sub x14, x29, #144
    add x15, x20, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #160
    ldr x14, [x14]
    add x15, x20, #24
    str x14, [x15]
    sub x21, x29, #112
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    add x14, x21, #56
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_4:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_DeadlineStream_read
    .no_dead_strip _lb_net_DeadlineStream_read
_lb_net_DeadlineStream_read:
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
    str x27, [sp, #240]
    str x28, [sp, #232]
    sub x16, x29, #152
    str x0, [x16]
    sub x16, x29, #168
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #152
    ldr x19, [x9]
    ldr x20, [x19]
    cbnz x20, L2_1
    b L2_2
L2_1:
    b L2_3
L2_2:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, _lb_net_closed@PAGE
    add x15, x15, _lb_net_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    sub x20, x29, #184
    str x15, [x20]
    add x15, x20, #8
    movz x9, #37
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    ldr x26, [sp, #248]
    ldr x27, [sp, #240]
    ldr x28, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_3:
    mov x0, x20
    sub x8, x29, #224
    bl _lb_net_SocketHandle_require
    sub x15, x29, #224
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L2_6
    b L2_5
L2_6:
    add x14, x15, #8
    sub x19, x29, #144
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    ldr x26, [sp, #248]
    ldr x27, [sp, #240]
    ldr x28, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_5:
    ldrsw x21, [x15]
    sub x22, x29, #168
    add x14, x22, #8
    ldr x23, [x14]
    mov x10, #0
    cmp x23, x10
    b.ne L2_9
L2_8:
    sub x14, x29, #144
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    ldr x26, [sp, #248]
    ldr x27, [sp, #240]
    ldr x28, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_9:
L2_10:
    mov x0, x20
    sub x8, x29, #256
    bl _lb_net_19require_nonblocking
    sub x15, x29, #256
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_13
    b L2_12
L2_13:
    sub x19, x29, #144
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    ldr x26, [sp, #248]
    ldr x27, [sp, #240]
    ldr x28, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_12:
    adrp x14, _lb_net_14transfer_limit@PAGE
    add x14, x14, _lb_net_14transfer_limit@PAGEOFF
    ldr x14, [x14]
    cmp x23, x14
    b.hs L2_16
L2_15:
    mov x20, x23
    b L2_17
L2_16:
    mov x20, x14
L2_17:
    add x23, x19, #8
    add x24, x19, #24
    sub x28, x29, #288
    add x25, x28, #24
    adrp x26, _lb_net_14dont_wait_flag@PAGE
    add x26, x26, _lb_net_14dont_wait_flag@PAGEOFF
    sub x27, x29, #320
    add x9, x27, #24
    str x9, [sp, #8]
L2_18:
L2_19:
    ldr x14, [x24]
    mov x9, x23
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    sub x8, x29, #288
    bl _lb_net_15check_operation
    ldrb w14, [x25]
    cbnz w14, L2_22
    b L2_21
L2_22:
    sub x19, x29, #144
    add x14, x19, #8
    mov x10, x28
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    ldr x26, [sp, #248]
    ldr x27, [sp, #240]
    ldr x28, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_21:
    ldr x14, [x22]
    ldrsw x15, [x26]
    mov x0, x21
    mov x1, x14
    mov x2, x20
    mov x3, x15
    bl _lb_net_recv
    mov x14, x0
    mov x10, #0
    cmp x14, x10
    b.lt L2_25
L2_24:
    sub x15, x29, #144
    str x14, [x15]
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    ldr x26, [sp, #248]
    ldr x27, [sp, #240]
    ldr x28, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_25:
L2_26:
    bl _lb_net_12socket_errno
    mov w14, w0
    ldr x15, [x24]
    mov x0, x21
    mov x1, #0
    mov x2, x14
    mov x9, x23
    ldr x3, [x9]
    ldr x4, [x9, #8]
    mov x5, x15
    sub x8, x29, #320
    bl _lb_net_20await_transfer_retry
    ldr x9, [sp, #8]
    ldrb w14, [x9]
    cbnz w14, L2_29
    b L2_28
L2_29:
    sub x19, x29, #144
    add x14, x19, #8
    mov x10, x27
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    ldr x26, [sp, #248]
    ldr x27, [sp, #240]
    ldr x28, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_28:
    b L2_18

    .p2align 2
    .globl _lb_net_DeadlineStream_write
    .no_dead_strip _lb_net_DeadlineStream_write
_lb_net_DeadlineStream_write:
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
    str x25, [sp, #320]
    str x26, [sp, #312]
    str x27, [sp, #304]
    str x28, [sp, #296]
    sub x16, x29, #152
    str x0, [x16]
    sub x16, x29, #168
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #152
    ldr x19, [x9]
    ldr x20, [x19]
    cbnz x20, L3_1
    b L3_2
L3_1:
    b L3_3
L3_2:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, _lb_net_closed@PAGE
    add x15, x15, _lb_net_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    sub x20, x29, #184
    str x15, [x20]
    add x15, x20, #8
    movz x9, #37
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    ldr x25, [sp, #320]
    ldr x26, [sp, #312]
    ldr x27, [sp, #304]
    ldr x28, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_3:
    mov x0, x20
    sub x8, x29, #224
    bl _lb_net_SocketHandle_require
    sub x15, x29, #224
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_6
    b L3_5
L3_6:
    add x14, x15, #8
    sub x19, x29, #144
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    ldr x25, [sp, #320]
    ldr x26, [sp, #312]
    ldr x27, [sp, #304]
    ldr x28, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_5:
    ldrsw x21, [x15]
    sub x22, x29, #168
    add x14, x22, #8
    ldr x23, [x14]
    mov x10, #0
    cmp x23, x10
    b.ne L3_9
L3_8:
    sub x14, x29, #144
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    ldr x25, [sp, #320]
    ldr x26, [sp, #312]
    ldr x27, [sp, #304]
    ldr x28, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_9:
L3_10:
    mov x0, x20
    sub x8, x29, #256
    bl _lb_net_19require_nonblocking
    sub x15, x29, #256
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L3_13
    b L3_12
L3_13:
    sub x19, x29, #144
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    ldr x25, [sp, #320]
    ldr x26, [sp, #312]
    ldr x27, [sp, #304]
    ldr x28, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_12:
    add x24, x19, #8
    add x25, x19, #24
    ldr x14, [x25]
    mov x9, x24
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    sub x8, x29, #288
    bl _lb_net_15check_operation
    sub x15, x29, #288
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L3_16
    b L3_15
L3_16:
    sub x19, x29, #144
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    ldr x25, [sp, #320]
    ldr x26, [sp, #312]
    ldr x27, [sp, #304]
    ldr x28, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_15:
    mov x0, x20
    bl _lb_net_Connection_guard
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L3_19
L3_18:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, _lb_net_closed@PAGE
    add x15, x15, _lb_net_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_4@PAGE
    add x15, x15, l_text_4@PAGEOFF
    sub x20, x29, #304
    str x15, [x20]
    add x15, x20, #8
    movz x9, #21
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    ldr x25, [sp, #320]
    ldr x26, [sp, #312]
    ldr x27, [sp, #304]
    ldr x28, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_19:
L3_20:
    adrp x14, _lb_net_14transfer_limit@PAGE
    add x14, x14, _lb_net_14transfer_limit@PAGEOFF
    ldr x14, [x14]
    cmp x23, x14
    b.hs L3_23
L3_22:
    mov x19, x23
    b L3_24
L3_23:
    mov x19, x14
L3_24:
    sub x28, x29, #336
    add x9, x28, #24
    str x9, [sp, #8]
    adrp x23, _lb_net_10send_flags@PAGE
    add x23, x23, _lb_net_10send_flags@PAGEOFF
    adrp x26, _lb_net_14dont_wait_flag@PAGE
    add x26, x26, _lb_net_14dont_wait_flag@PAGEOFF
    sub x27, x29, #384
    add x9, x27, #24
    str x9, [sp, #0]
L3_25:
L3_26:
    ldr x14, [x25]
    mov x9, x24
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    sub x8, x29, #336
    bl _lb_net_15check_operation
    ldr x9, [sp, #8]
    ldrb w14, [x9]
    cbnz w14, L3_29
    b L3_28
L3_29:
    sub x19, x29, #144
    add x14, x19, #8
    mov x10, x28
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    ldr x25, [sp, #320]
    ldr x26, [sp, #312]
    ldr x27, [sp, #304]
    ldr x28, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_28:
    ldr x14, [x22]
    ldrsw x15, [x23]
    ldrsw x20, [x26]
    orr w15, w15, w20
    mov x0, x21
    mov x1, x14
    mov x2, x19
    mov x3, x15
    bl _lb_net_send
    mov x14, x0
    mov x10, #0
    cmp x14, x10
    b.le L3_32
L3_31:
    sub x15, x29, #144
    str x14, [x15]
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    ldr x25, [sp, #320]
    ldr x26, [sp, #312]
    ldr x27, [sp, #304]
    ldr x28, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_32:
L3_33:
    mov x10, #0
    cmp x14, x10
    b.ne L3_36
L3_35:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, _lb_io_11no_progress@PAGE
    add x15, x15, _lb_io_11no_progress@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
    sub x20, x29, #352
    str x15, [x20]
    add x15, x20, #8
    movz x9, #37
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    ldr x25, [sp, #320]
    ldr x26, [sp, #312]
    ldr x27, [sp, #304]
    ldr x28, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_36:
L3_37:
    bl _lb_net_12socket_errno
    mov w14, w0
    ldr x15, [x25]
    mov x0, x21
    movz x1, #1
    mov x2, x14
    mov x9, x24
    ldr x3, [x9]
    ldr x4, [x9, #8]
    mov x5, x15
    sub x8, x29, #384
    bl _lb_net_20await_transfer_retry
    ldr x9, [sp, #0]
    ldrb w14, [x9]
    cbnz w14, L3_40
    b L3_39
L3_40:
    sub x19, x29, #144
    add x14, x19, #8
    mov x10, x27
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    ldr x25, [sp, #320]
    ldr x26, [sp, #312]
    ldr x27, [sp, #304]
    ldr x28, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_39:
    b L3_25

    .p2align 2
    .globl _lb_net_20await_transfer_retry
_lb_net_20await_transfer_retry:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #176]
    str x20, [sp, #168]
    sub x16, x29, #88
    str w0, [x16]
    sub x16, x29, #104
    str w1, [x16]
    sub x16, x29, #120
    str w2, [x16]
    sub x16, x29, #136
    str x3, [x16]
    str x4, [x16, #8]
    sub x16, x29, #152
    str x5, [x16]
    sub x14, x29, #120
    ldrsw x14, [x14]
    adrp x15, _lb_net_18socket_interrupted@PAGE
    add x15, x15, _lb_net_18socket_interrupted@PAGEOFF
    ldrsw x15, [x15]
    cmp w14, w15
    b.ne L4_2
L4_1:
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_4:
    b L4_3
L4_2:
L4_3:
    mov x0, x14
    bl _lb_net_12socket_error
    mov w15, w0
    adrp x19, _lb_io_11would_block@PAGE
    add x19, x19, _lb_io_11would_block@PAGEOFF
    ldr w19, [x19]
    cmp w15, w19
    cset w19, eq
    mov x10, #0
    cmp w19, w10
    b.ne L4_6
L4_5:
    sub x19, x29, #72
    str w15, [x19]
    adrp x14, l_text_7@PAGE
    add x14, x14, l_text_7@PAGEOFF
    sub x20, x29, #168
    str x14, [x20]
    add x14, x20, #8
    movz x9, #35
    str x9, [x14]
    add x14, x19, #8
    mov x10, x20
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_8:
    b L4_7
L4_6:
L4_7:
    sub x14, x29, #88
    ldrsw x14, [x14]
    sub x15, x29, #104
    ldrb w15, [x15]
    sub x19, x29, #136
    sub x20, x29, #152
    ldr x20, [x20]
    mov x0, x14
    mov x1, x15
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x20
    sub x8, x29, #208
    bl _lb_net_11wait_socket
    sub x15, x29, #208
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L4_10
    b L4_9
L4_10:
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_11:
L4_9:
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_19require_nonblocking
_lb_net_19require_nonblocking:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    sub x16, x29, #80
    str x0, [x16]
    sub x14, x29, #80
    ldr x14, [x14]
    mov x0, x14
    sub x8, x29, #120
    bl _lb_net_Connection_14is_nonblocking
    sub x15, x29, #120
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L5_5
    b L5_4
L5_5:
    add x14, x15, #8
    sub x19, x29, #64
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
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_6:
L5_4:
    ldrb w14, [x15]
    mov x10, #0
    cmp w14, w10
    b.ne L5_2
L5_1:
    sub x19, x29, #64
    adrp x14, _lb_net_15invalid_options@PAGE
    add x14, x14, _lb_net_15invalid_options@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_8@PAGE
    add x14, x14, l_text_8@PAGEOFF
    sub x15, x29, #136
    str x14, [x15]
    add x14, x15, #8
    movz x9, #51
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
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_7:
    b L5_3
L5_2:
L5_3:
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
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_net_15deadline_stream_0init

    .section __TEXT,__const
l_text_0:
    .asciz "unreachable"
l_text_1:
    .asciz "src/std/net/deadline_stream.lucb:17:9"
l_text_2:
    .asciz "the deadline stream has no connection"
l_text_3:
    .asciz "src/std/net/deadline_stream.lucb:35:13"
l_text_4:
    .asciz "the connection closed"
l_text_5:
    .asciz "the connection made no write progress"
l_text_6:
    .asciz "src/std/net/deadline_stream.lucb:57:13"
l_text_7:
    .asciz "the deadline stream transfer failed"
l_text_8:
    .asciz "a deadline stream requires a nonblocking connection"

    .section __DATA,__const
    .p2align 3
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_14dont_wait_flag
    .weak_definition _lb_net_14dont_wait_flag
_lb_net_14dont_wait_flag:
    .zero 4

.subsections_via_symbols
