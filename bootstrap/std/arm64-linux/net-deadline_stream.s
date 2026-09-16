    .text

    .p2align 2
    .globl lb_net_15deadline_stream_0init
    .type lb_net_15deadline_stream_0init, %function
lb_net_15deadline_stream_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_net_14dont_wait_flag
    add x14, x14, :lo12:lb_net_14dont_wait_flag
    movz x9, #64
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_15deadline_stream_0init, .-lb_net_15deadline_stream_0init

    .p2align 2
    .globl lb_net_DeadlineStream_over
    .type lb_net_DeadlineStream_over, %function
lb_net_DeadlineStream_over:
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
    bl lb_net_19require_nonblocking
    sub x15, x29, #192
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L1_2
    b .L1_1
.L1_2:
    sub x19, x29, #112
    add x14, x19, #32
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_3:
.L1_1:
    sub x20, x29, #224
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str x19, [x20]
    sub x14, x29, #144
    add x15, x20, #8
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x14, x29, #160
    ldr x14, [x14]
    add x15, x20, #24
    str x14, [x15]
    sub x21, x29, #112
    mov x10, x20
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    add x14, x21, #56
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_4:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_net_DeadlineStream_over, .-lb_net_DeadlineStream_over

    .p2align 2
    .globl lb_net_DeadlineStream_read
    .type lb_net_DeadlineStream_read, %function
lb_net_DeadlineStream_read:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #320
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #288]
    str x20, [sp, #280]
    str x21, [sp, #272]
    str x22, [sp, #264]
    str x23, [sp, #256]
    str x24, [sp, #248]
    str x25, [sp, #240]
    str x26, [sp, #232]
    str x27, [sp, #224]
    str x28, [sp, #216]
    sub x16, x29, #152
    str x0, [x16]
    sub x16, x29, #168
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #152
    ldr x19, [x9]
    ldr x20, [x19]
    cbnz x20, .L2_1
    b .L2_2
.L2_1:
    b .L2_3
.L2_2:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, lb_net_closed
    add x15, x15, :lo12:lb_net_closed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_2
    add x15, x15, :lo12:.Ltext_2
    sub x12, x29, #184
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    ldr x26, [sp, #232]
    ldr x27, [sp, #224]
    ldr x28, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_3:
    mov x0, x20
    sub x8, x29, #224
    bl lb_net_SocketHandle_require
    sub x15, x29, #224
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L2_6
    b .L2_5
.L2_6:
    add x14, x15, #8
    sub x19, x29, #144
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    ldr x26, [sp, #232]
    ldr x27, [sp, #224]
    ldr x28, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_5:
    ldrsw x21, [x15]
    sub x22, x29, #168
    add x14, x22, #8
    ldr x23, [x14]
    mov x10, #0
    cmp x23, x10
    b.ne .L2_9
.L2_8:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    ldr x26, [sp, #232]
    ldr x27, [sp, #224]
    ldr x28, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_9:
.L2_10:
    mov x0, x20
    sub x8, x29, #256
    bl lb_net_19require_nonblocking
    sub x15, x29, #256
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L2_13
    b .L2_12
.L2_13:
    sub x19, x29, #144
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    ldr x26, [sp, #232]
    ldr x27, [sp, #224]
    ldr x28, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_12:
    movz x10, #16384, lsl #16
    cmp x23, x10
    b.hs .L2_16
.L2_15:
    mov x20, x23
    b .L2_17
.L2_16:
    movz x9, #16384, lsl #16
    mov x20, x9
.L2_17:
    add x23, x19, #8
    add x24, x19, #24
    sub x27, x29, #288
    add x25, x27, #24
    sub x28, x29, #320
    add x26, x28, #24
.L2_18:
.L2_19:
    ldr x14, [x24]
    mov x9, x23
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    sub x8, x29, #288
    bl lb_net_15check_operation
    ldrb w14, [x25]
    cbnz w14, .L2_22
    b .L2_21
.L2_22:
    sub x19, x29, #144
    add x14, x19, #8
    mov x10, x27
    mov x11, x14
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    ldr x26, [sp, #232]
    ldr x27, [sp, #224]
    ldr x28, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_21:
    ldr x14, [x22]
    mov x0, x21
    mov x1, x14
    mov x2, x20
    movz x3, #64
    bl lb_net_recv
    mov x14, x0
    mov x10, #0
    cmp x14, x10
    b.lt .L2_25
.L2_24:
    sub x15, x29, #144
    str x14, [x15]
    add x12, x15, #32
    mov x9, #0
    strb w9, [x12]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    ldr x26, [sp, #232]
    ldr x27, [sp, #224]
    ldr x28, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_25:
.L2_26:
    bl lb_net_12socket_errno
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
    bl lb_net_20await_transfer_retry
    ldrb w14, [x26]
    cbnz w14, .L2_29
    b .L2_28
.L2_29:
    sub x19, x29, #144
    add x14, x19, #8
    mov x10, x28
    mov x11, x14
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    ldr x26, [sp, #232]
    ldr x27, [sp, #224]
    ldr x28, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_28:
    b .L2_18

    .size lb_net_DeadlineStream_read, .-lb_net_DeadlineStream_read

    .p2align 2
    .globl lb_net_DeadlineStream_write
    .type lb_net_DeadlineStream_write, %function
lb_net_DeadlineStream_write:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #384
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #352]
    str x20, [sp, #344]
    str x21, [sp, #336]
    str x22, [sp, #328]
    str x23, [sp, #320]
    str x24, [sp, #312]
    str x25, [sp, #304]
    str x26, [sp, #296]
    str x27, [sp, #288]
    sub x16, x29, #144
    str x0, [x16]
    sub x16, x29, #160
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #144
    ldr x19, [x9]
    ldr x20, [x19]
    cbnz x20, .L3_1
    b .L3_2
.L3_1:
    b .L3_3
.L3_2:
    sub x19, x29, #136
    add x14, x19, #8
    adrp x15, lb_net_closed
    add x15, x15, :lo12:lb_net_closed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_2
    add x15, x15, :lo12:.Ltext_2
    sub x12, x29, #176
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_3:
    mov x0, x20
    sub x8, x29, #216
    bl lb_net_SocketHandle_require
    sub x15, x29, #216
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L3_6
    b .L3_5
.L3_6:
    add x14, x15, #8
    sub x19, x29, #136
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
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_5:
    ldrsw x21, [x15]
    sub x22, x29, #160
    add x14, x22, #8
    ldr x23, [x14]
    mov x10, #0
    cmp x23, x10
    b.ne .L3_9
.L3_8:
    sub x14, x29, #136
    mov x9, #0
    str x9, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_9:
.L3_10:
    mov x0, x20
    sub x8, x29, #248
    bl lb_net_19require_nonblocking
    sub x15, x29, #248
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L3_13
    b .L3_12
.L3_13:
    sub x19, x29, #136
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_12:
    add x24, x19, #8
    add x25, x19, #24
    ldr x14, [x25]
    mov x9, x24
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    sub x8, x29, #280
    bl lb_net_15check_operation
    sub x15, x29, #280
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L3_16
    b .L3_15
.L3_16:
    sub x19, x29, #136
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_15:
    mov x0, x20
    bl lb_net_Connection_guard
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L3_19
.L3_18:
    sub x19, x29, #136
    add x14, x19, #8
    adrp x15, lb_net_closed
    add x15, x15, :lo12:lb_net_closed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_4
    add x15, x15, :lo12:.Ltext_4
    sub x12, x29, #296
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_19:
.L3_20:
    movz x10, #16384, lsl #16
    cmp x23, x10
    b.hs .L3_23
.L3_22:
    mov x19, x23
    b .L3_24
.L3_23:
    movz x9, #16384, lsl #16
    mov x19, x9
.L3_24:
    sub x26, x29, #328
    add x20, x26, #24
    sub x27, x29, #376
    add x23, x27, #24
.L3_25:
.L3_26:
    ldr x14, [x25]
    mov x9, x24
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    sub x8, x29, #328
    bl lb_net_15check_operation
    ldrb w14, [x20]
    cbnz w14, .L3_29
    b .L3_28
.L3_29:
    sub x19, x29, #136
    add x14, x19, #8
    mov x10, x26
    mov x11, x14
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
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_28:
    ldr x14, [x22]
    mov x0, x21
    mov x1, x14
    mov x2, x19
    movz x3, #16448
    bl lb_net_send
    mov x14, x0
    mov x10, #0
    cmp x14, x10
    b.le .L3_32
.L3_31:
    sub x15, x29, #136
    str x14, [x15]
    add x12, x15, #32
    mov x9, #0
    strb w9, [x12]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_32:
.L3_33:
    mov x10, #0
    cmp x14, x10
    b.ne .L3_36
.L3_35:
    sub x19, x29, #136
    add x14, x19, #8
    adrp x15, lb_io_11no_progress
    add x15, x15, :lo12:lb_io_11no_progress
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_5
    add x15, x15, :lo12:.Ltext_5
    sub x12, x29, #344
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_36:
.L3_37:
    bl lb_net_12socket_errno
    mov w14, w0
    ldr x15, [x25]
    mov x0, x21
    movz x1, #1
    mov x2, x14
    mov x9, x24
    ldr x3, [x9]
    ldr x4, [x9, #8]
    mov x5, x15
    sub x8, x29, #376
    bl lb_net_20await_transfer_retry
    ldrb w14, [x23]
    cbnz w14, .L3_40
    b .L3_39
.L3_40:
    sub x19, x29, #136
    add x14, x19, #8
    mov x10, x27
    mov x11, x14
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
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_39:
    b .L3_25

    .size lb_net_DeadlineStream_write, .-lb_net_DeadlineStream_write

    .p2align 2
    .globl lb_net_20await_transfer_retry
    .type lb_net_20await_transfer_retry, %function
lb_net_20await_transfer_retry:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #176]
    sub x16, x29, #80
    str w0, [x16]
    sub x16, x29, #96
    str w1, [x16]
    sub x16, x29, #112
    str w2, [x16]
    sub x16, x29, #128
    str x3, [x16]
    str x4, [x16, #8]
    sub x16, x29, #144
    str x5, [x16]
    sub x14, x29, #112
    ldrsw x14, [x14]
    movz x10, #4
    cmp w14, w10
    b.ne .L4_2
.L4_1:
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
    ldr x19, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_4:
    b .L4_3
.L4_2:
.L4_3:
    mov x0, x14
    bl lb_net_12socket_error
    mov w15, w0
    adrp x12, lb_io_11would_block
    add x12, x12, :lo12:lb_io_11would_block
    ldr w12, [x12]
    cmp w15, w12
    cset w12, eq
    mov x10, #0
    cmp w12, w10
    b.ne .L4_6
.L4_5:
    sub x19, x29, #64
    str w15, [x19]
    adrp x14, .Ltext_7
    add x14, x14, :lo12:.Ltext_7
    sub x12, x29, #160
    str x14, [x12]
    add x14, x12, #8
    movz x9, #35
    str x9, [x14]
    add x14, x19, #8
    mov x10, x12
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
    ldr x19, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_8:
    b .L4_7
.L4_6:
.L4_7:
    sub x14, x29, #80
    ldrsw x14, [x14]
    sub x15, x29, #96
    ldrb w15, [x15]
    sub x12, x29, #128
    sub x13, x29, #144
    ldr x13, [x13]
    mov x0, x14
    mov x1, x15
    mov x9, x12
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x13
    sub x8, x29, #200
    bl lb_net_11wait_socket
    sub x15, x29, #200
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L4_10
    b .L4_9
.L4_10:
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
    ldr x19, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_11:
.L4_9:
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
    ldr x19, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_20await_transfer_retry, .-lb_net_20await_transfer_retry

    .p2align 2
    .globl lb_net_19require_nonblocking
    .type lb_net_19require_nonblocking, %function
lb_net_19require_nonblocking:
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
    bl lb_net_Connection_14is_nonblocking
    sub x15, x29, #120
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L5_5
    b .L5_4
.L5_5:
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
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_6:
.L5_4:
    ldrb w14, [x15]
    mov x10, #0
    cmp w14, w10
    b.ne .L5_2
.L5_1:
    sub x19, x29, #64
    adrp x14, lb_net_15invalid_options
    add x14, x14, :lo12:lb_net_15invalid_options
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_8
    add x14, x14, :lo12:.Ltext_8
    sub x15, x29, #136
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
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_7:
    b .L5_3
.L5_2:
.L5_3:
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
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_19require_nonblocking, .-lb_net_19require_nonblocking

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_15deadline_stream_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/net/deadline_stream.lucb:17:9"
.Ltext_2:
    .asciz "the deadline stream has no connection"
.Ltext_3:
    .asciz "src/std/net/deadline_stream.lucb:35:13"
.Ltext_4:
    .asciz "the connection closed"
.Ltext_5:
    .asciz "the connection made no write progress"
.Ltext_6:
    .asciz "src/std/net/deadline_stream.lucb:57:13"
.Ltext_7:
    .asciz "the deadline stream transfer failed"
.Ltext_8:
    .asciz "a deadline stream requires a nonblocking connection"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_net_14dont_wait_flag
    .type lb_net_14dont_wait_flag, %object
    .p2align 2
lb_net_14dont_wait_flag:
    .zero 4


    .section .note.GNU-stack,"",%progbits
