    .text

    .p2align 2
    .globl lb_net_readiness_0init
    .type lb_net_readiness_0init, %function
lb_net_readiness_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_readiness_0init, .-lb_net_readiness_0init

    .p2align 2
    .globl lb_net_Deadline_after
    .type lb_net_Deadline_after, %function
lb_net_Deadline_after:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #192]
    str x20, [sp, #184]
    str x21, [sp, #176]
    sub x16, x29, #112
    str x0, [x16]
    sub x8, x29, #152
    bl lb_net_21monotonic_nanoseconds
    sub x15, x29, #152
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L1_2
    b .L1_1
.L1_2:
    add x14, x15, #8
    sub x19, x29, #96
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_3:
.L1_1:
    ldr x14, [x15]
    sub x12, x29, #112
    ldr x12, [x12]
    sub x19, x29, #160
    mov x0, x14
    mov x1, x12
    movz x2, #64
    mov x3, x19
    bl lb_core_6qadd_u
    mov w14, w0
    sub x12, x29, #176
    ldr x19, [x19]
    str x19, [x12]
    add x12, x12, #8
    strb w14, [x12]
    ldrb w14, [x12]
    cbnz w14, .L1_4
    b .L1_5
.L1_4:
    b .L1_6
.L1_5:
    sub x19, x29, #96
    add x14, x19, #16
    adrp x15, lb_net_15invalid_options
    add x15, x15, :lo12:lb_net_15invalid_options
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_0
    add x15, x15, :lo12:.Ltext_0
    sub x12, x29, #192
    str x15, [x12]
    add x15, x12, #8
    movz x9, #46
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_7:
.L1_6:
    sub x20, x29, #208
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    sub x14, x29, #224
    str x19, [x14]
    add x15, x14, #8
    movz x9, #1
    strb w9, [x15]
    mov x10, x14
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x21, x29, #96
    mov x10, x20
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_8:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_net_Deadline_after, .-lb_net_Deadline_after

    .p2align 2
    .globl lb_net_Deadline_at
    .type lb_net_Deadline_at, %function
lb_net_Deadline_at:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    sub x16, x29, #64
    str x0, [x16]
    sub x19, x29, #80
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x14, x29, #64
    ldr x14, [x14]
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #1
    strb w9, [x14]
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x20, x29, #48
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_1:
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_net_Deadline_at, .-lb_net_Deadline_at

    .p2align 2
    .globl lb_net_Cancellation_request
    .type lb_net_Cancellation_request, %function
lb_net_Cancellation_request:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    movz x9, #1
    mov x10, x14
    stlr w9, [x10]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_Cancellation_request, .-lb_net_Cancellation_request

    .p2align 2
    .globl lb_net_Cancellation_12is_requested
    .type lb_net_Cancellation_12is_requested, %function
lb_net_Cancellation_12is_requested:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    mov x9, x14
    ldar w9, [x9]
    mov w14, w9
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_1:
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_net_Cancellation_12is_requested, .-lb_net_Cancellation_12is_requested

    .p2align 2
    .globl lb_net_Poller_create
    .type lb_net_Poller_create, %function
lb_net_Poller_create:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #304
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #272]
    str x20, [sp, #264]
    str x21, [sp, #256]
    str x22, [sp, #248]
    str x23, [sp, #240]
    str x24, [sp, #232]
    str x25, [sp, #224]
    sub x16, x29, #160
    str x0, [x16]
    sub x14, x29, #160
    ldr x19, [x14]
    mov x10, #0
    cmp x19, x10
    cset w14, eq
    cbnz w14, .L5_21
    b .L5_4
.L5_21:
    mov w15, w14
    b .L5_5
.L5_4:
    movz x10, #65535
    movk x10, #32767, lsl #16
    cmp x19, x10
    cset w15, hi
.L5_5:
    and w14, w15, #255
    cbnz w14, .L5_1
    b .L5_2
.L5_1:
    sub x19, x29, #144
    add x14, x19, #32
    adrp x15, lb_net_15invalid_options
    add x15, x15, :lo12:lb_net_15invalid_options
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_5
    add x15, x15, :lo12:.Ltext_5
    sub x12, x29, #176
    str x15, [x12]
    add x15, x12, #8
    movz x9, #51
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    ldr x23, [sp, #240]
    ldr x24, [sp, #232]
    ldr x25, [sp, #224]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_6:
    b .L5_3
.L5_2:
.L5_3:
    sub x20, x29, #192
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x21, x0
    sub x22, x29, #240
    movz x10, #2048, lsl #48
    cmp x19, x10
    b.ls .L5_8
.L5_7:
    add x14, x22, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_6
    add x15, x15, :lo12:.Ltext_6
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    b .L5_9
.L5_8:
    lsl x23, x19, #3
    ldr x14, [x21]
    add x15, x21, #8
    ldr x15, [x15]
    cbnz x15, .L5_10
    b .L5_11
.L5_11:
    adrp x0, .Ltext_8
    add x0, x0, :lo12:.Ltext_8
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
.L5_10:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x23
    movz x2, #4
    sub x8, x29, #264
    ldr x17, [sp], #16
    blr x17
    sub x24, x29, #264
    add x12, x24, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp x23, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, .L5_12
    b .L5_13
.L5_12:
    add x14, x22, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_9
    add x15, x15, :lo12:.Ltext_9
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    b .L5_9
.L5_13:
    ldr x14, [x24]
    str x14, [x22]
    add x14, x22, #8
    str x19, [x14]
    add x14, x22, #40
    mov x9, #0
    strb w9, [x14]
.L5_9:
    add x14, x22, #40
    ldrb w14, [x14]
    cbnz w14, .L5_15
    b .L5_14
.L5_15:
    add x14, x22, #16
    sub x19, x29, #144
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    ldr x23, [sp, #240]
    ldr x24, [sp, #232]
    ldr x25, [sp, #224]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_16:
.L5_14:
    mov x10, x22
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x23, x20, #8
    sub x24, x29, #272
    mov x9, #0
    mov x25, x9
.L5_17:
    cmp x25, x19
    b.hs .L5_19
.L5_18:
    ldr x14, [x20]
    ldr x15, [x23]
    cmp x25, x15
    b.lo 1f
    adrp x0, .Ltext_10
    add x0, x0, :lo12:.Ltext_10
    adrp x1, .Ltext_48
    add x1, x1, :lo12:.Ltext_48
    bl lb_core_7trap_at
1:
    lsl x15, x25, #3
    add x22, x14, x15
    mov x11, x24
    str xzr, [x11, #0]
    movn x9, #0
    str w9, [x24]
    mov x10, x24
    mov x11, x22
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    add x14, x25, #1
    mov x25, x14
    b .L5_17
.L5_19:
    sub x19, x29, #304
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    mov x10, x20
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #16
    mov x10, x21
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x22, x29, #144
    mov x10, x19
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    add x14, x22, #56
    mov x9, #0
    strb w9, [x14]
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    ldr x23, [sp, #240]
    ldr x24, [sp, #232]
    ldr x25, [sp, #224]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_20:
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_net_Poller_create, .-lb_net_Poller_create

    .p2align 2
    .globl lb_net_Poller_capacity
    .type lb_net_Poller_capacity, %function
lb_net_Poller_capacity:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    add x14, x14, #8
    ldr x14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_1:
    adrp x0, .Ltext_13
    add x0, x0, :lo12:.Ltext_13
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_net_Poller_capacity, .-lb_net_Poller_capacity

    .p2align 2
    .globl lb_net_Poller_watch
    .type lb_net_Poller_watch, %function
lb_net_Poller_watch:
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
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    sub x16, x29, #144
    str w2, [x16]
    sub x16, x29, #160
    str w3, [x16]
    sub x9, x29, #112
    ldr x20, [x9]
    sub x14, x29, #128
    ldr x19, [x14]
    mov x0, x20
    mov x1, x19
    sub x8, x29, #192
    bl lb_net_Poller_10check_slot
    sub x15, x29, #192
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L7_2
    b .L7_1
.L7_2:
    sub x19, x29, #104
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_3:
.L7_1:
    sub x14, x29, #144
    ldrsw x21, [x14]
    mov x10, #0
    cmp w21, w10
    b.ge .L7_5
.L7_4:
    sub x19, x29, #104
    adrp x14, lb_net_15invalid_options
    add x14, x14, :lo12:lb_net_15invalid_options
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_14
    add x14, x14, :lo12:.Ltext_14
    sub x15, x29, #208
    str x14, [x15]
    add x14, x15, #8
    movz x9, #40
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_7:
    b .L7_6
.L7_5:
.L7_6:
    sub x14, x29, #160
    ldrb w14, [x14]
    mov x0, x14
    sub x8, x29, #248
    bl lb_net_13poll_interest
    sub x15, x29, #248
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L7_9
    b .L7_8
.L7_9:
    add x14, x15, #8
    sub x19, x29, #104
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_10:
.L7_8:
    ldrsh w22, [x15]
    add x14, x20, #8
    mov x9, #0
    mov x12, x9
.L7_11:
    ldr x15, [x14]
    cmp x12, x15
    b.hs .L7_13
.L7_12:
    cmp x19, x12
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    cbnz w15, .L7_17
    b .L7_20
.L7_20:
    mov w13, w15
    b .L7_18
.L7_17:
    ldr x15, [x20]
    lsl x13, x12, #3
    add x15, x15, x13
    ldrsw x15, [x15]
    cmp w21, w15
    cset w13, eq
.L7_18:
    and w15, w13, #255
    cbnz w15, .L7_14
    b .L7_15
.L7_14:
    sub x19, x29, #104
    adrp x14, lb_net_15invalid_options
    add x14, x14, :lo12:lb_net_15invalid_options
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_16
    add x14, x14, :lo12:.Ltext_16
    sub x15, x29, #264
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_19:
    b .L7_16
.L7_15:
.L7_16:
    add x15, x12, #1
    mov x12, x15
    b .L7_11
.L7_13:
    ldr x14, [x20]
    cmp x19, x15
    b.lo 1f
    adrp x0, .Ltext_18
    add x0, x0, :lo12:.Ltext_18
    adrp x1, .Ltext_48
    add x1, x1, :lo12:.Ltext_48
    bl lb_core_7trap_at
1:
    lsl x12, x19, #3
    add x23, x14, x12
    sub x24, x29, #272
    mov x11, x24
    str xzr, [x11, #0]
    str w21, [x24]
    sxth w14, w22
    add x12, x24, #4
    strh w14, [x12]
    mov x10, x24
    mov x11, x23
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    sub x14, x29, #104
    add x12, x14, #24
    mov x9, #0
    strb w9, [x12]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_Poller_watch, .-lb_net_Poller_watch

    .p2align 2
    .globl lb_net_Poller_disable
    .type lb_net_Poller_disable, %function
lb_net_Poller_disable:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    str x21, [sp, #112]
    str x22, [sp, #104]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    sub x9, x29, #96
    ldr x20, [x9]
    sub x14, x29, #112
    ldr x19, [x14]
    mov x0, x20
    mov x1, x19
    sub x8, x29, #144
    bl lb_net_Poller_10check_slot
    sub x15, x29, #144
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L8_2
    b .L8_1
.L8_2:
    sub x19, x29, #88
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    ldr x22, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_3:
.L8_1:
    ldr x14, [x20]
    add x15, x20, #8
    ldr x15, [x15]
    cmp x19, x15
    b.lo 1f
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_48
    add x1, x1, :lo12:.Ltext_48
    bl lb_core_7trap_at
1:
    lsl x15, x19, #3
    add x21, x14, x15
    sub x22, x29, #152
    mov x11, x22
    str xzr, [x11, #0]
    movn x9, #0
    str w9, [x22]
    mov x10, x22
    mov x11, x21
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    sub x14, x29, #88
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
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    ldr x22, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_Poller_disable, .-lb_net_Poller_disable

    .p2align 2
    .globl lb_net_Poller_wait
    .type lb_net_Poller_wait, %function
lb_net_Poller_wait:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #112
    str x3, [x16]
    sub x9, x29, #80
    ldr x15, [x9]
    add x14, x15, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ne .L9_2
.L9_1:
    sub x19, x29, #72
    add x14, x19, #8
    adrp x15, lb_net_closed
    add x15, x15, :lo12:lb_net_closed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_20
    add x15, x15, :lo12:.Ltext_20
    sub x12, x29, #128
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_4:
    b .L9_3
.L9_2:
.L9_3:
    sub x14, x29, #96
    sub x12, x29, #112
    ldr x12, [x12]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x12
    sub x8, x29, #168
    bl lb_net_9wait_poll
    sub x12, x29, #168
    add x14, x12, #32
    ldrb w14, [x14]
    cbnz w14, .L9_6
    b .L9_5
.L9_6:
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
    ldr x19, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_7:
.L9_5:
    ldr x14, [x12]
    sub x15, x29, #72
    str x14, [x15]
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
    ldr x19, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_8:
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_net_Poller_wait, .-lb_net_Poller_wait

    .p2align 2
    .globl lb_net_Poller_readiness
    .type lb_net_Poller_readiness, %function
lb_net_Poller_readiness:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    str x21, [sp, #112]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    sub x9, x29, #96
    ldr x20, [x9]
    sub x14, x29, #112
    ldr x19, [x14]
    mov x0, x20
    mov x1, x19
    sub x8, x29, #144
    bl lb_net_Poller_10check_slot
    sub x15, x29, #144
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L10_2
    b .L10_1
.L10_2:
    sub x19, x29, #88
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_3:
.L10_1:
    ldr x14, [x20]
    add x15, x20, #8
    ldr x15, [x15]
    cmp x19, x15
    b.lo 1f
    adrp x0, .Ltext_22
    add x0, x0, :lo12:.Ltext_22
    adrp x1, .Ltext_48
    add x1, x1, :lo12:.Ltext_48
    bl lb_core_7trap_at
1:
    lsl x15, x19, #3
    add x14, x14, x15
    add x14, x14, #6
    ldrsh w14, [x14]
    mov x0, x14
    bl lb_net_14poll_readiness
    sub x16, x29, #149
    str w0, [x16, #0]
    lsr x17, x0, #32
    strb w17, [x16, #4]
    sub x14, x29, #149
    sub x21, x29, #88
    mov x10, x14
    mov x11, x21
    ldr w16, [x10, #0]
    str w16, [x11, #0]
    ldrb w16, [x10, #4]
    strb w16, [x11, #4]
    add x14, x21, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_4:
    adrp x0, .Ltext_22
    add x0, x0, :lo12:.Ltext_22
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_net_Poller_readiness, .-lb_net_Poller_readiness

    .p2align 2
    .globl lb_net_Poller_destroy
    .type lb_net_Poller_destroy, %function
lb_net_Poller_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #136]
    str x20, [sp, #128]
    str x21, [sp, #120]
    str x22, [sp, #112]
    str x23, [sp, #104]
    sub x16, x29, #64
    str x0, [x16]
    sub x9, x29, #64
    ldr x20, [x9]
    add x14, x20, #8
    ldr x19, [x14]
    mov x10, #0
    cmp x19, x10
    b.ls .L11_2
.L11_1:
    sub x22, x29, #80
    add x14, x20, #16
    ldr x21, [x14]
    cbnz x21, .L11_4
    b .L11_5
.L11_4:
    sub x23, x29, #96
    mov x10, x14
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L11_6
.L11_5:
    adrp x14, .Ltext_23
    add x14, x14, :lo12:.Ltext_23
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #29
    str x9, [x14]
    adrp x14, .Ltext_24
    add x14, x14, :lo12:.Ltext_24
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    adrp x0, .Ltext_24
    add x0, x0, :lo12:.Ltext_24
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at
.L11_6:
    mov x10, x23
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x14, x29, #128
    ldr x15, [x20]
    mov x9, x19
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_49
    add x1, x1, :lo12:.Ltext_49
    bl lb_core_7trap_at
1:
    mov x12, x9
    str x15, [x14]
    add x15, x14, #8
    str x12, [x15]
    add x15, x22, #8
    ldr x15, [x15]
    cbnz x15, .L11_8
    b .L11_7
.L11_8:
    add x12, x15, #16
    ldr x12, [x12]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L11_7:
    b .L11_3
.L11_2:
.L11_3:
    sub x19, x29, #144
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x19, x20, #16
    sub x21, x29, #160
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    mov x10, x21
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    ldr x23, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_Poller_destroy, .-lb_net_Poller_destroy

    .p2align 2
    .globl lb_net_Poller_10check_slot
    .type lb_net_Poller_10check_slot, %function
lb_net_Poller_10check_slot:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    sub x16, x29, #72
    str x0, [x16]
    sub x16, x29, #88
    str x1, [x16]
    sub x9, x29, #72
    ldr x14, [x9]
    add x14, x14, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ne .L12_2
.L12_1:
    sub x19, x29, #64
    adrp x14, lb_net_closed
    add x14, x14, :lo12:lb_net_closed
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_20
    add x14, x14, :lo12:.Ltext_20
    sub x15, x29, #104
    str x14, [x15]
    add x14, x15, #8
    movz x9, #20
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
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L12_4:
    b .L12_3
.L12_2:
.L12_3:
    sub x15, x29, #88
    ldr x15, [x15]
    cmp x15, x14
    b.lo .L12_6
.L12_5:
    sub x19, x29, #64
    adrp x14, lb_net_15invalid_options
    add x14, x14, :lo12:lb_net_15invalid_options
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_26
    add x14, x14, :lo12:.Ltext_26
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #39
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
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L12_8:
    b .L12_7
.L12_6:
.L12_7:
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
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_Poller_10check_slot, .-lb_net_Poller_10check_slot

    .p2align 2
    .globl lb_net_13poll_interest
    .type lb_net_13poll_interest, %function
lb_net_13poll_interest:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    sub x16, x29, #88
    str w0, [x16]
    sub x14, x29, #88
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    b.ne .L13_2
.L13_1:
    sub x14, x29, #72
    movz x9, #1
    strh w9, [x14]
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_4:
    b .L13_3
.L13_2:
.L13_3:
    movz x10, #1
    cmp w14, w10
    b.ne .L13_6
.L13_5:
    sub x14, x29, #72
    movz x9, #4
    strh w9, [x14]
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_8:
    b .L13_7
.L13_6:
.L13_7:
    movz x10, #2
    cmp w14, w10
    b.ne .L13_10
.L13_9:
    sub x14, x29, #72
    movz x9, #5
    strh w9, [x14]
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_12:
    b .L13_11
.L13_10:
.L13_11:
    sub x19, x29, #72
    add x14, x19, #8
    adrp x15, lb_net_15invalid_options
    add x15, x15, :lo12:lb_net_15invalid_options
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_27
    add x15, x15, :lo12:.Ltext_27
    sub x12, x29, #104
    str x15, [x12]
    add x15, x12, #8
    movz x9, #26
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_13:
    adrp x0, .Ltext_28
    add x0, x0, :lo12:.Ltext_28
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_net_13poll_interest, .-lb_net_13poll_interest

    .p2align 2
    .globl lb_net_14poll_readiness
    .type lb_net_14poll_readiness, %function
lb_net_14poll_readiness:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #56
    str w0, [x16]
    sub x19, x29, #61
    mov x11, x19
    str wzr, [x11, #0]
    strb wzr, [x11, #4]
    sub x14, x29, #56
    ldrsh w14, [x14]
    movz x10, #1
    and w15, w14, w10
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    strb w15, [x19]
    movz x10, #4
    and w15, w14, w10
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    add x12, x19, #1
    strb w15, [x12]
    movz x10, #16
    and w15, w14, w10
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    add x12, x19, #2
    strb w15, [x12]
    movz x10, #8
    and w15, w14, w10
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    add x12, x19, #3
    strb w15, [x12]
    movz x10, #32
    and w14, w14, w10
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    add x15, x19, #4
    strb w14, [x15]
    sub x20, x29, #37
    mov x10, x19
    mov x11, x20
    ldr w16, [x10, #0]
    str w16, [x11, #0]
    ldrb w16, [x10, #4]
    strb w16, [x11, #4]
    mov x16, x20
    ldrb w17, [x16, #4]
    ldr w0, [x16, #0]
    lsl x17, x17, #32
    orr x0, x0, x17
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L14_1:
    adrp x0, .Ltext_29
    add x0, x0, :lo12:.Ltext_29
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_net_14poll_readiness, .-lb_net_14poll_readiness

    .p2align 2
    .globl lb_net_10clear_poll
    .type lb_net_10clear_poll, %function
lb_net_10clear_poll:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #32
    add x15, x14, #8
    ldr x15, [x15]
    ldr x14, [x14]
    mov x9, #0
    mov x12, x9
.L15_1:
    cmp x12, x15
    b.hs .L15_3
.L15_2:
    lsl x13, x12, #3
    add x13, x14, x13
    add x13, x13, #6
    mov x9, #0
    strh w9, [x13]
    add x13, x12, #1
    mov x12, x13
    b .L15_1
.L15_3:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_10clear_poll, .-lb_net_10clear_poll

    .p2align 2
    .globl lb_net_18check_cancellation
    .type lb_net_18check_cancellation, %function
lb_net_18check_cancellation:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #64]
    sub x16, x29, #80
    str x0, [x16]
    sub x14, x29, #80
    ldr x14, [x14]
    cbnz x14, .L16_4
    b .L16_2
.L16_4:
.L16_1:
    mov x0, x14
    bl lb_net_Cancellation_12is_requested
    mov w15, w0
    cbnz w15, .L16_5
    b .L16_6
.L16_5:
    sub x19, x29, #64
    adrp x14, lb_net_cancelled
    add x14, x14, :lo12:lb_net_cancelled
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_32
    add x14, x14, :lo12:.Ltext_32
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #32
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
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L16_8:
    b .L16_7
.L16_6:
.L16_7:
    b .L16_3
.L16_2:
.L16_3:
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
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_18check_cancellation, .-lb_net_18check_cancellation

    .p2align 2
    .globl lb_net_9wait_poll
    .type lb_net_9wait_poll, %function
lb_net_9wait_poll:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #416
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #384]
    str x20, [sp, #376]
    str x21, [sp, #368]
    str x22, [sp, #360]
    str x23, [sp, #352]
    str x24, [sp, #344]
    str x25, [sp, #336]
    str x26, [sp, #328]
    str x27, [sp, #320]
    str x28, [sp, #312]
    sub x16, x29, #160
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #176
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #192
    str x4, [x16]
    sub x19, x29, #160
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_net_10clear_poll
    sub x9, x29, #192
    str x9, [sp, #56]
    sub x27, x29, #224
    add x9, x27, #24
    str x9, [sp, #48]
    sub x28, x29, #176
    add x9, x28, #8
    str x9, [sp, #40]
    sub x26, x29, #264
    add x23, x26, #32
    add x24, x19, #8
    sub x9, x29, #296
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    add x9, x9, #24
    str x9, [sp, #32]
    sub x9, x29, #352
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #32
    str x9, [sp, #24]
.L17_1:
.L17_2:
    ldr x9, [sp, #56]
    ldr x25, [x9]
    mov x0, x25
    sub x8, x29, #224
    bl lb_net_18check_cancellation
    ldr x9, [sp, #48]
    ldrb w14, [x9]
    cbnz w14, .L17_5
    b .L17_4
.L17_5:
    sub x20, x29, #144
    add x14, x20, #8
    mov x10, x27
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_net_10clear_poll
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    ldr x26, [sp, #328]
    ldr x27, [sp, #320]
    ldr x28, [sp, #312]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L17_4:
    ldr x9, [sp, #40]
    ldrb w20, [x9]
    cbnz w20, .L17_10
    b .L17_8
.L17_10:
    ldr x21, [x28]
.L17_7:
    sub x8, x29, #264
    bl lb_net_21monotonic_nanoseconds
    ldrb w14, [x23]
    cbnz w14, .L17_12
    b .L17_11
.L17_12:
    add x14, x26, #8
    sub x20, x29, #144
    add x15, x20, #8
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_net_10clear_poll
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    ldr x26, [sp, #328]
    ldr x27, [sp, #320]
    ldr x28, [sp, #312]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L17_11:
    ldr x14, [x26]
    cmp x21, x14
    b.ls .L17_15
.L17_14:
    sub x15, x21, x14
    b .L17_16
.L17_15:
    mov x9, #0
    mov x15, x9
.L17_16:
.L17_18:
    movz x10, #16960
    movk x10, #15, lsl #16
    udiv x14, x15, x10
.L17_23:
    movz x10, #16960
    movk x10, #15, lsl #16
    udiv x11, x15, x10
    msub x12, x11, x10, x15
    mov x10, #0
    cmp x12, x10
    cset w12, eq
    mov x10, #0
    cmp w12, w10
    b.ne .L17_20
.L17_19:
    movz x9, #1
    mov x15, x9
    b .L17_21
.L17_20:
    mov x9, #0
    mov x15, x9
.L17_21:
    mov x9, x14
    mov x10, x15
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_35
    add x0, x0, :lo12:.Ltext_35
    adrp x1, .Ltext_49
    add x1, x1, :lo12:.Ltext_49
    bl lb_core_7trap_at
1:
    mov x12, x9
    movz x10, #65535
    movk x10, #32767, lsl #16
    cmp x12, x10
    b.hs .L17_25
.L17_24:
    mov w14, w12
    b .L17_26
.L17_25:
    movz x9, #65535
    movk x9, #32767, lsl #16
    mov w14, w9
.L17_26:
    mov w15, w14
    b .L17_9
.L17_8:
    movn x9, #0
    mov w15, w9
.L17_9:
    mov x10, #0
    cmp x25, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L17_30
    b .L17_60
.L17_60:
    mov w12, w14
    b .L17_31
.L17_30:
    mov x10, #0
    cmp w15, w10
    cset w14, lt
    cbnz w14, .L17_61
    b .L17_32
.L17_61:
    mov w12, w14
    b .L17_33
.L17_32:
    movz x10, #10
    cmp w15, w10
    cset w12, gt
.L17_33:
    and w14, w12, #255
    mov w12, w14
.L17_31:
    and w14, w12, #255
    cbnz w14, .L17_27
    b .L17_28
.L17_27:
    movz x9, #10
    mov w21, w9
    b .L17_29
.L17_28:
    mov w21, w15
.L17_29:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_net_10clear_poll
    ldr x14, [x19]
    ldr x15, [x24]
    mov x0, x14
    mov x1, x15
    mov x2, x21
    bl poll
    mov w22, w0
    mov x0, x25
    sub x8, x29, #296
    bl lb_net_18check_cancellation
    ldr x9, [sp, #32]
    ldrb w14, [x9]
    cbnz w14, .L17_35
    b .L17_34
.L17_35:
    sub x20, x29, #144
    add x14, x20, #8
    ldr x10, [sp, #16]
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_net_10clear_poll
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    ldr x26, [sp, #328]
    ldr x27, [sp, #320]
    ldr x28, [sp, #312]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L17_34:
    mov x10, #0
    cmp w22, w10
    b.ge .L17_38
.L17_37:
    bl lb_net_12socket_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    b.ne .L17_41
.L17_40:
    b .L17_1
.L17_41:
.L17_42:
    sub x20, x29, #144
    add x21, x20, #8
    bl lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl lb_net_12socket_error
    mov w14, w0
    str w14, [x21]
    adrp x14, .Ltext_36
    add x14, x14, :lo12:.Ltext_36
    sub x15, x29, #312
    str x14, [x15]
    add x14, x15, #8
    movz x9, #25
    str x9, [x14]
    add x14, x21, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_net_10clear_poll
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    ldr x26, [sp, #328]
    ldr x27, [sp, #320]
    ldr x28, [sp, #312]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L17_38:
.L17_39:
    mov x10, #0
    cmp w22, w10
    b.le .L17_46
.L17_45:
    sxtw x14, w22
    sub x15, x29, #144
    str x14, [x15]
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
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    ldr x26, [sp, #328]
    ldr x27, [sp, #320]
    ldr x28, [sp, #312]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L17_46:
.L17_47:
    cbnz w20, .L17_52
    b .L17_50
.L17_52:
    ldr x20, [x28]
.L17_49:
    sub x8, x29, #352
    bl lb_net_21monotonic_nanoseconds
    ldr x9, [sp, #24]
    ldrb w14, [x9]
    cbnz w14, .L17_57
    b .L17_56
.L17_57:
    ldr x9, [sp, #8]
    add x14, x9, #8
    sub x20, x29, #144
    add x15, x20, #8
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_net_10clear_poll
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    ldr x26, [sp, #328]
    ldr x27, [sp, #320]
    ldr x28, [sp, #312]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L17_56:
    ldr x9, [sp, #8]
    ldr x14, [x9]
    cmp x14, x20
    b.lo .L17_54
.L17_53:
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
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    ldr x26, [sp, #328]
    ldr x27, [sp, #320]
    ldr x28, [sp, #312]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L17_54:
.L17_55:
    b .L17_51
.L17_50:
.L17_51:
    b .L17_1

    .size lb_net_9wait_poll, .-lb_net_9wait_poll

    .p2align 2
    .globl lb_net_11wait_socket
    .type lb_net_11wait_socket, %function
lb_net_11wait_socket:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #304
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #272]
    str x20, [sp, #264]
    sub x16, x29, #96
    str w0, [x16]
    sub x16, x29, #112
    str w1, [x16]
    sub x16, x29, #128
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #144
    str x4, [x16]
    sub x19, x29, #152
    mov x11, x19
    str xzr, [x11, #0]
    sub x20, x29, #160
    mov x11, x20
    str xzr, [x11, #0]
    sub x14, x29, #96
    ldrsw x14, [x14]
    str w14, [x20]
    sub x14, x29, #112
    ldrb w14, [x14]
    mov x0, x14
    sub x8, x29, #200
    bl lb_net_13poll_interest
    sub x15, x29, #200
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L18_2
    b .L18_1
.L18_2:
    add x14, x15, #8
    sub x19, x29, #80
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L18_3:
.L18_1:
    ldrsh w14, [x15]
    add x12, x20, #4
    strh w14, [x12]
    mov x10, x20
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    sub x14, x29, #216
    str x19, [x14]
    add x12, x14, #8
    movz x9, #1
    str x9, [x12]
    sub x12, x29, #128
    sub x13, x29, #144
    ldr x13, [x13]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x12
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x13
    sub x8, x29, #256
    bl lb_net_9wait_poll
    sub x12, x29, #256
    add x14, x12, #32
    ldrb w14, [x14]
    cbnz w14, .L18_8
    b .L18_7
.L18_8:
    add x14, x12, #8
    sub x19, x29, #80
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L18_9:
.L18_7:
    ldr x14, [x12]
    mov x10, #0
    cmp x14, x10
    b.ne .L18_5
.L18_4:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, lb_net_9timed_out
    add x15, x15, :lo12:lb_net_9timed_out
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_39
    add x15, x15, :lo12:.Ltext_39
    sub x12, x29, #272
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L18_10:
    b .L18_6
.L18_5:
.L18_6:
    sub x20, x29, #277
    add x14, x19, #6
    ldrsh w14, [x14]
    mov x0, x14
    bl lb_net_14poll_readiness
    sub x16, x29, #282
    str w0, [x16, #0]
    lsr x17, x0, #32
    strb w17, [x16, #4]
    sub x14, x29, #282
    mov x10, x14
    mov x11, x20
    ldr w16, [x10, #0]
    str w16, [x11, #0]
    ldrb w16, [x10, #4]
    strb w16, [x11, #4]
    add x14, x20, #4
    ldrb w14, [x14]
    cbnz w14, .L18_11
    b .L18_12
.L18_11:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, lb_net_closed
    add x15, x15, :lo12:lb_net_closed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_41
    add x15, x15, :lo12:.Ltext_41
    sub x12, x29, #304
    str x15, [x12]
    add x15, x12, #8
    movz x9, #39
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L18_14:
    b .L18_13
.L18_12:
.L18_13:
    sub x19, x29, #80
    mov x10, x20
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L18_15:
    adrp x0, .Ltext_42
    add x0, x0, :lo12:.Ltext_42
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_net_11wait_socket, .-lb_net_11wait_socket

    .p2align 2
    .globl lb_net_21monotonic_nanoseconds
    .type lb_net_21monotonic_nanoseconds, %function
lb_net_21monotonic_nanoseconds:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #176]
    str x20, [sp, #168]
    sub x19, x29, #96
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    movz x0, #1
    mov x1, x19
    bl clock_gettime
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L19_2
.L19_1:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, lb_net_failed
    add x15, x15, :lo12:lb_net_failed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_43
    add x15, x15, :lo12:.Ltext_43
    sub x12, x29, #112
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L19_4:
    b .L19_3
.L19_2:
.L19_3:
    ldr x14, [x19]
    mov x10, #0
    cmp x14, x10
    cset w15, lt
    cbnz w15, .L19_22
    b .L19_8
.L19_22:
    mov w12, w15
    b .L19_9
.L19_8:
    add x15, x19, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    cset w12, lt
.L19_9:
    and w15, w12, #255
    cbnz w15, .L19_23
    b .L19_10
.L19_23:
    mov w12, w15
    b .L19_11
.L19_10:
    add x15, x19, #8
    ldr x15, [x15]
    movz x10, #51712
    movk x10, #15258, lsl #16
    cmp x15, x10
    cset w12, ge
.L19_11:
    and w15, w12, #255
    cbnz w15, .L19_5
    b .L19_6
.L19_5:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, lb_net_failed
    add x15, x15, :lo12:lb_net_failed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_44
    add x15, x15, :lo12:.Ltext_44
    sub x12, x29, #128
    str x15, [x12]
    add x15, x12, #8
    movz x9, #49
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L19_12:
    b .L19_7
.L19_6:
.L19_7:
    sub x20, x29, #136
    mov x0, x14
    movz x1, #51712
    movk x1, #15258, lsl #16
    movz x2, #64
    mov x3, x20
    bl lb_core_6qmul_u
    mov w15, w0
    sub x13, x29, #152
    ldr x12, [x20]
    str x12, [x13]
    add x13, x13, #8
    strb w15, [x13]
    ldrb w15, [x13]
    cbnz w15, .L19_13
    b .L19_14
.L19_13:
    b .L19_15
.L19_14:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, lb_net_failed
    add x15, x15, :lo12:lb_net_failed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_45
    add x15, x15, :lo12:.Ltext_45
    sub x12, x29, #168
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L19_16:
.L19_15:
    add x14, x19, #8
    ldr x14, [x14]
    sub x20, x29, #176
    mov x0, x12
    mov x1, x14
    movz x2, #64
    mov x3, x20
    bl lb_core_6qadd_u
    mov w14, w0
    sub x13, x29, #192
    ldr x15, [x20]
    str x15, [x13]
    add x13, x13, #8
    strb w14, [x13]
    ldrb w14, [x13]
    cbnz w14, .L19_17
    b .L19_18
.L19_17:
    b .L19_19
.L19_18:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, lb_net_failed
    add x15, x15, :lo12:lb_net_failed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_45
    add x15, x15, :lo12:.Ltext_45
    sub x12, x29, #208
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L19_20:
.L19_19:
    sub x14, x29, #80
    str x15, [x14]
    add x12, x14, #32
    mov x9, #0
    strb w9, [x12]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L19_21:
    adrp x0, .Ltext_46
    add x0, x0, :lo12:.Ltext_46
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_net_21monotonic_nanoseconds, .-lb_net_21monotonic_nanoseconds

    .p2align 2
    .globl lb_net_15check_operation
    .type lb_net_15check_operation, %function
lb_net_15check_operation:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    sub x16, x29, #80
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #96
    str x2, [x16]
    sub x14, x29, #96
    ldr x14, [x14]
    mov x0, x14
    sub x8, x29, #128
    bl lb_net_18check_cancellation
    sub x15, x29, #128
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L20_2
    b .L20_1
.L20_2:
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
    ldr x19, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L20_3:
.L20_1:
    sub x15, x29, #80
    add x14, x15, #8
    ldrb w14, [x14]
    cbnz w14, .L20_7
    b .L20_5
.L20_7:
    ldr x19, [x15]
.L20_4:
    sub x8, x29, #168
    bl lb_net_21monotonic_nanoseconds
    sub x15, x29, #168
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L20_12
    b .L20_11
.L20_12:
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
    ldr x19, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L20_13:
.L20_11:
    ldr x14, [x15]
    cmp x14, x19
    b.lo .L20_9
.L20_8:
    sub x19, x29, #64
    adrp x14, lb_net_9timed_out
    add x14, x14, :lo12:lb_net_9timed_out
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_47
    add x14, x14, :lo12:.Ltext_47
    sub x15, x29, #184
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
    ldr x19, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L20_14:
    b .L20_10
.L20_9:
.L20_10:
    b .L20_6
.L20_5:
.L20_6:
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
    ldr x19, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_15check_operation, .-lb_net_15check_operation

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_readiness_0init

    .section .rodata
.Ltext_0:
    .asciz "the deadline exceeds the monotonic clock range"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/net/readiness.lucb:26:9"
.Ltext_3:
    .asciz "src/std/net/readiness.lucb:30:9"
.Ltext_4:
    .asciz "src/std/net/readiness.lucb:42:9"
.Ltext_5:
    .asciz "poller capacity must be between one and i32 maximum"
.Ltext_6:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_7:
    .asciz "memory.unset"
.Ltext_8:
    .asciz "src/std/net/readiness.lucb:70:9"
.Ltext_9:
    .asciz "memory.exhausted"
.Ltext_10:
    .asciz "src/std/net/readiness.lucb:73:13"
.Ltext_11:
    .asciz "src/std/net/readiness.lucb:74:13"
.Ltext_12:
    .asciz "src/std/net/readiness.lucb:75:9"
.Ltext_13:
    .asciz "src/std/net/readiness.lucb:78:9"
.Ltext_14:
    .asciz "a watched descriptor must be nonnegative"
.Ltext_15:
    .asciz "src/std/net/readiness.lucb:90:13"
.Ltext_16:
    .asciz "the descriptor already occupies another poller slot"
.Ltext_17:
    .asciz "src/std/net/readiness.lucb:92:13"
.Ltext_18:
    .asciz "src/std/net/readiness.lucb:93:9"
.Ltext_19:
    .asciz "src/std/net/readiness.lucb:97:9"
.Ltext_20:
    .asciz "the poller is closed"
.Ltext_21:
    .asciz "src/std/net/readiness.lucb:110:9"
.Ltext_22:
    .asciz "src/std/net/readiness.lucb:116:9"
.Ltext_23:
    .asciz "the poller lost its allocator"
.Ltext_24:
    .asciz "src/std/net/readiness.lucb:120:13"
.Ltext_25:
    .asciz "src/std/net/readiness.lucb:121:13"
.Ltext_26:
    .asciz "the poller slot is outside its capacity"
.Ltext_27:
    .asciz "unknown readiness interest"
.Ltext_28:
    .asciz "src/std/net/readiness.lucb:144:5"
.Ltext_29:
    .asciz "src/std/net/readiness.lucb:149:5"
.Ltext_30:
    .asciz "src/std/net/readiness.lucb:154:9"
.Ltext_31:
    .asciz "src/std/net/readiness.lucb:155:9"
.Ltext_32:
    .asciz "the readiness wait was cancelled"
.Ltext_33:
    .asciz "src/std/net/readiness.lucb:170:13"
.Ltext_34:
    .asciz "division by zero"
.Ltext_35:
    .asciz "src/std/net/readiness.lucb:172:13"
.Ltext_36:
    .asciz "the readiness wait failed"
.Ltext_37:
    .asciz "src/std/net/readiness.lucb:193:17"
.Ltext_38:
    .asciz "src/std/net/readiness.lucb:197:5"
.Ltext_39:
    .asciz "the socket readiness deadline expired"
.Ltext_40:
    .asciz "src/std/net/readiness.lucb:200:5"
.Ltext_41:
    .asciz "the socket descriptor is no longer open"
.Ltext_42:
    .asciz "src/std/net/readiness.lucb:203:5"
.Ltext_43:
    .asciz "the monotonic clock could not be read"
.Ltext_44:
    .asciz "the monotonic clock returned an invalid timestamp"
.Ltext_45:
    .asciz "the monotonic clock exceeds its range"
.Ltext_46:
    .asciz "src/std/net/readiness.lucb:212:5"
.Ltext_47:
    .asciz "the operation deadline expired"
.Ltext_48:
    .asciz "index out of bounds"
.Ltext_49:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
