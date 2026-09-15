    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_net_readiness_0init
_lb_net_readiness_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_Deadline_after
    .no_dead_strip _lb_net_Deadline_after
_lb_net_Deadline_after:
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
    bl _lb_net_21monotonic_nanoseconds
    sub x15, x29, #152
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_2
    b L1_1
L1_2:
    add x14, x15, #8
    sub x19, x29, #96
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_3:
L1_1:
    ldr x14, [x15]
    sub x19, x29, #112
    ldr x19, [x19]
    sub x20, x29, #160
    mov x0, x14
    mov x1, x19
    movz x2, #64
    mov x3, x20
    bl _lb_core_6qadd_u
    mov w14, w0
    sub x21, x29, #176
    ldr x19, [x20]
    str x19, [x21]
    add x20, x21, #8
    strb w14, [x20]
    ldrb w14, [x20]
    cbnz w14, L1_4
    b L1_5
L1_4:
    b L1_6
L1_5:
    sub x19, x29, #96
    add x14, x19, #16
    adrp x15, _lb_net_15invalid_options@PAGE
    add x15, x15, _lb_net_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_0@PAGE
    add x15, x15, l_text_0@PAGEOFF
    sub x20, x29, #192
    str x15, [x20]
    add x15, x20, #8
    movz x9, #46
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_7:
L1_6:
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
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x21, x29, #96
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_8:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Deadline_at
    .no_dead_strip _lb_net_Deadline_at
_lb_net_Deadline_at:
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
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x20, x29, #48
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_1:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Cancellation_request
    .no_dead_strip _lb_net_Cancellation_request
_lb_net_Cancellation_request:
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

    .p2align 2
    .globl _lb_net_Cancellation_12is_requested
    .no_dead_strip _lb_net_Cancellation_12is_requested
_lb_net_Cancellation_12is_requested:
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
L4_1:
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Poller_create
    .no_dead_strip _lb_net_Poller_create
_lb_net_Poller_create:
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
    sub x16, x29, #168
    str x0, [x16]
    sub x14, x29, #168
    ldr x19, [x14]
    mov x10, #0
    cmp x19, x10
    cset w14, eq
    cbnz w14, L5_21
    b L5_4
L5_21:
    mov w15, w14
    b L5_5
L5_4:
    movz x10, #65535
    movk x10, #32767, lsl #16
    cmp x19, x10
    cset w15, hi
L5_5:
    and w14, w15, #255
    cbnz w14, L5_1
    b L5_2
L5_1:
    sub x19, x29, #152
    add x14, x19, #32
    adrp x15, _lb_net_15invalid_options@PAGE
    add x15, x15, _lb_net_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
    sub x20, x29, #184
    str x15, [x20]
    add x15, x20, #8
    movz x9, #51
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    ldr x26, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_6:
    b L5_3
L5_2:
L5_3:
    sub x20, x29, #200
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x21, x0
    sub x22, x29, #248
    movz x10, #2048, lsl #48
    cmp x19, x10
    b.ls L5_8
L5_7:
    add x14, x22, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_6@PAGE
    add x15, x15, l_text_6@PAGEOFF
    add x23, x14, #8
    str x15, [x23]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    b L5_9
L5_8:
    lsl x23, x19, #3
    ldr x14, [x21]
    add x15, x21, #8
    ldr x15, [x15]
    cbnz x15, L5_10
    b L5_11
L5_11:
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_7@PAGE
    add x1, x1, l_text_7@PAGEOFF
    bl _lb_core_7trap_at
L5_10:
    ldr x24, [x15]
    mov x17, x24
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x23
    movz x2, #4
    sub x8, x29, #272
    ldr x17, [sp], #16
    blr x17
    sub x26, x29, #272
    add x24, x26, #16
    ldrb w24, [x24]
    mov x10, #0
    cmp x23, x10
    cset w25, ne
    mov x10, #0
    cmp w24, w10
    cset w24, eq
    and w24, w25, w24
    cbnz w24, L5_12
    b L5_13
L5_12:
    add x14, x22, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_9@PAGE
    add x15, x15, l_text_9@PAGEOFF
    add x23, x14, #8
    str x15, [x23]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    b L5_9
L5_13:
    ldr x14, [x26]
    str x14, [x22]
    add x14, x22, #8
    str x19, [x14]
    add x14, x22, #40
    mov x9, #0
    strb w9, [x14]
L5_9:
    add x14, x22, #40
    ldrb w14, [x14]
    cbnz w14, L5_15
    b L5_14
L5_15:
    add x14, x22, #16
    sub x19, x29, #152
    add x15, x19, #32
    mov x10, x14
    mov x11, x15
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    ldr x26, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_16:
L5_14:
    mov x10, x22
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x23, x20, #8
    sub x24, x29, #280
    mov x9, #0
    mov x25, x9
L5_17:
    cmp x25, x19
    b.hs L5_19
L5_18:
    ldr x14, [x20]
    ldr x15, [x23]
    cmp x25, x15
    b.lo 1f
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x25, #3
    add x22, x14, x15
    mov x11, x24
    str xzr, [x11, #0]
    movn x9, #0
    str w9, [x24]
    mov x10, x24
    mov x11, x22
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x25, #1
    mov x25, x14
    b L5_17
L5_19:
    sub x19, x29, #312
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #16
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x22, x29, #152
    mov x10, x19
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    add x14, x22, #56
    mov x9, #0
    strb w9, [x14]
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_20:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Poller_capacity
    .no_dead_strip _lb_net_Poller_capacity
_lb_net_Poller_capacity:
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
L6_1:
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Poller_watch
    .no_dead_strip _lb_net_Poller_watch
_lb_net_Poller_watch:
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
    str x25, [sp, #208]
    sub x16, x29, #120
    str x0, [x16]
    sub x16, x29, #136
    str x1, [x16]
    sub x16, x29, #152
    str w2, [x16]
    sub x16, x29, #168
    str w3, [x16]
    sub x9, x29, #120
    ldr x20, [x9]
    sub x14, x29, #136
    ldr x19, [x14]
    mov x0, x20
    mov x1, x19
    sub x8, x29, #200
    bl _lb_net_Poller_10check_slot
    sub x15, x29, #200
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L7_2
    b L7_1
L7_2:
    sub x19, x29, #112
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    ldr x25, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_3:
L7_1:
    sub x14, x29, #152
    ldrsw x21, [x14]
    mov x10, #0
    cmp w21, w10
    b.ge L7_5
L7_4:
    sub x19, x29, #112
    adrp x14, _lb_net_15invalid_options@PAGE
    add x14, x14, _lb_net_15invalid_options@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_14@PAGE
    add x14, x14, l_text_14@PAGEOFF
    sub x15, x29, #216
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    ldr x25, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_7:
    b L7_6
L7_5:
L7_6:
    sub x14, x29, #168
    ldrb w14, [x14]
    mov x0, x14
    sub x8, x29, #256
    bl _lb_net_13poll_interest
    sub x15, x29, #256
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L7_9
    b L7_8
L7_9:
    add x14, x15, #8
    sub x19, x29, #112
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    ldr x25, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_10:
L7_8:
    ldrsh w22, [x15]
    add x14, x20, #8
    mov x9, #0
    mov x23, x9
L7_11:
    ldr x15, [x14]
    cmp x23, x15
    b.hs L7_13
L7_12:
    cmp x19, x23
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    cbnz w15, L7_17
    b L7_20
L7_20:
    mov w24, w15
    b L7_18
L7_17:
    ldr x15, [x20]
    lsl x24, x23, #3
    add x15, x15, x24
    ldrsw x15, [x15]
    cmp w21, w15
    cset w24, eq
L7_18:
    and w15, w24, #255
    cbnz w15, L7_14
    b L7_15
L7_14:
    sub x19, x29, #112
    adrp x14, _lb_net_15invalid_options@PAGE
    add x14, x14, _lb_net_15invalid_options@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_16@PAGE
    add x14, x14, l_text_16@PAGEOFF
    sub x15, x29, #272
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    ldr x25, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_19:
    b L7_16
L7_15:
L7_16:
    add x15, x23, #1
    mov x23, x15
    b L7_11
L7_13:
    ldr x14, [x20]
    cmp x19, x15
    b.lo 1f
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x23, x19, #3
    add x23, x14, x23
    sub x24, x29, #280
    mov x11, x24
    str xzr, [x11, #0]
    str w21, [x24]
    sxth w14, w22
    add x25, x24, #4
    strh w14, [x25]
    mov x10, x24
    mov x11, x23
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x14, x29, #112
    add x23, x14, #24
    mov x9, #0
    strb w9, [x23]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    ldr x25, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_Poller_disable
    .no_dead_strip _lb_net_Poller_disable
_lb_net_Poller_disable:
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
    bl _lb_net_Poller_10check_slot
    sub x15, x29, #144
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L8_2
    b L8_1
L8_2:
    sub x19, x29, #88
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    ldr x22, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_3:
L8_1:
    ldr x14, [x20]
    add x15, x20, #8
    ldr x15, [x15]
    cmp x19, x15
    b.lo 1f
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
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
    ldr x12, [x10, #0]
    str x12, [x11, #0]
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    ldr x22, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_Poller_wait
    .no_dead_strip _lb_net_Poller_wait
_lb_net_Poller_wait:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    str x20, [sp, #136]
    sub x16, x29, #88
    str x0, [x16]
    sub x16, x29, #104
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #120
    str x3, [x16]
    sub x9, x29, #88
    ldr x15, [x9]
    add x14, x15, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ne L9_2
L9_1:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_net_closed@PAGE
    add x15, x15, _lb_net_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_20@PAGE
    add x15, x15, l_text_20@PAGEOFF
    sub x20, x29, #136
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_4:
    b L9_3
L9_2:
L9_3:
    sub x14, x29, #104
    sub x19, x29, #120
    ldr x19, [x19]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x19
    sub x8, x29, #176
    bl _lb_net_9wait_poll
    sub x19, x29, #176
    add x14, x19, #32
    ldrb w14, [x14]
    cbnz w14, L9_6
    b L9_5
L9_6:
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
L9_7:
L9_5:
    ldr x14, [x19]
    sub x15, x29, #80
    str x14, [x15]
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
L9_8:
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Poller_readiness
    .no_dead_strip _lb_net_Poller_readiness
_lb_net_Poller_readiness:
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
    bl _lb_net_Poller_10check_slot
    sub x15, x29, #144
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L10_2
    b L10_1
L10_2:
    sub x19, x29, #88
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_3:
L10_1:
    ldr x14, [x20]
    add x15, x20, #8
    ldr x15, [x15]
    cmp x19, x15
    b.lo 1f
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_48@PAGE
    add x1, x1, l_text_48@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x19, #3
    add x14, x14, x15
    add x14, x14, #6
    ldrsh w14, [x14]
    mov x0, x14
    bl _lb_net_14poll_readiness
    sub x16, x29, #149
    str w0, [x16, #0]
    lsr x17, x0, #32
    strb w17, [x16, #4]
    sub x14, x29, #149
    sub x21, x29, #88
    mov x10, x14
    mov x11, x21
    ldr w12, [x10, #0]
    str w12, [x11, #0]
    ldrb w12, [x10, #4]
    strb w12, [x11, #4]
    add x14, x21, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_4:
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_Poller_destroy
    .no_dead_strip _lb_net_Poller_destroy
_lb_net_Poller_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    str x19, [sp, #152]
    str x20, [sp, #144]
    str x21, [sp, #136]
    str x22, [sp, #128]
    str x23, [sp, #120]
    str x24, [sp, #112]
    sub x16, x29, #72
    str x0, [x16]
    sub x9, x29, #72
    ldr x20, [x9]
    add x14, x20, #8
    ldr x19, [x14]
    mov x10, #0
    cmp x19, x10
    b.ls L11_2
L11_1:
    sub x22, x29, #88
    add x14, x20, #16
    ldr x21, [x14]
    cbnz x21, L11_4
    b L11_5
L11_4:
    sub x23, x29, #104
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L11_6
L11_5:
    adrp x14, l_text_23@PAGE
    add x14, x14, l_text_23@PAGEOFF
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #29
    str x9, [x14]
    adrp x14, l_text_24@PAGE
    add x14, x14, l_text_24@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L11_6:
    mov x10, x23
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #136
    ldr x15, [x20]
    mov x9, x19
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x24, x9
    str x15, [x14]
    add x15, x14, #8
    str x24, [x15]
    add x15, x22, #8
    ldr x15, [x15]
    cbnz x15, L11_8
    b L11_7
L11_8:
    add x19, x15, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L11_7:
    b L11_3
L11_2:
L11_3:
    sub x19, x29, #152
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x19, x20, #16
    sub x21, x29, #168
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    mov x10, x21
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x19, [sp, #152]
    ldr x20, [sp, #144]
    ldr x21, [sp, #136]
    ldr x22, [sp, #128]
    ldr x23, [sp, #120]
    ldr x24, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_Poller_10check_slot
_lb_net_Poller_10check_slot:
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
    b.ne L12_2
L12_1:
    sub x19, x29, #64
    adrp x14, _lb_net_closed@PAGE
    add x14, x14, _lb_net_closed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_20@PAGE
    add x14, x14, l_text_20@PAGEOFF
    sub x15, x29, #104
    str x14, [x15]
    add x14, x15, #8
    movz x9, #20
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
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_4:
    b L12_3
L12_2:
L12_3:
    sub x15, x29, #88
    ldr x15, [x15]
    cmp x15, x14
    b.lo L12_6
L12_5:
    sub x19, x29, #64
    adrp x14, _lb_net_15invalid_options@PAGE
    add x14, x14, _lb_net_15invalid_options@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_26@PAGE
    add x14, x14, l_text_26@PAGEOFF
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #39
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
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_8:
    b L12_7
L12_6:
L12_7:
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
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_13poll_interest
_lb_net_13poll_interest:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    str x20, [sp, #72]
    sub x16, x29, #96
    str w0, [x16]
    sub x14, x29, #96
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    b.ne L13_2
L13_1:
    sub x14, x29, #80
    movz x9, #1
    strh w9, [x14]
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
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_4:
    b L13_3
L13_2:
L13_3:
    movz x10, #1
    cmp w14, w10
    b.ne L13_6
L13_5:
    sub x14, x29, #80
    movz x9, #4
    strh w9, [x14]
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
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_8:
    b L13_7
L13_6:
L13_7:
    movz x10, #2
    cmp w14, w10
    b.ne L13_10
L13_9:
    sub x14, x29, #80
    movz x9, #5
    strh w9, [x14]
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
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_12:
    b L13_11
L13_10:
L13_11:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_net_15invalid_options@PAGE
    add x15, x15, _lb_net_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_27@PAGE
    add x15, x15, l_text_27@PAGEOFF
    sub x20, x29, #112
    str x15, [x20]
    add x15, x20, #8
    movz x9, #26
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
L13_13:
    adrp x0, l_text_28@PAGE
    add x0, x0, l_text_28@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_14poll_readiness
_lb_net_14poll_readiness:
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
    add x20, x19, #1
    strb w15, [x20]
    movz x10, #16
    and w15, w14, w10
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    add x20, x19, #2
    strb w15, [x20]
    movz x10, #8
    and w15, w14, w10
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    add x20, x19, #3
    strb w15, [x20]
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
    ldr w12, [x10, #0]
    str w12, [x11, #0]
    ldrb w12, [x10, #4]
    strb w12, [x11, #4]
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
L14_1:
    adrp x0, l_text_29@PAGE
    add x0, x0, l_text_29@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_10clear_poll
_lb_net_10clear_poll:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    str x20, [sp, #16]
    sub x16, x29, #48
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #48
    add x15, x14, #8
    ldr x15, [x15]
    ldr x14, [x14]
    mov x9, #0
    mov x19, x9
L15_1:
    cmp x19, x15
    b.hs L15_3
L15_2:
    lsl x20, x19, #3
    add x20, x14, x20
    add x20, x20, #6
    mov x9, #0
    strh w9, [x20]
    add x20, x19, #1
    mov x19, x20
    b L15_1
L15_3:
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_18check_cancellation
_lb_net_18check_cancellation:
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
    cbnz x14, L16_4
    b L16_2
L16_4:
L16_1:
    mov x0, x14
    bl _lb_net_Cancellation_12is_requested
    mov w15, w0
    cbnz w15, L16_5
    b L16_6
L16_5:
    sub x19, x29, #64
    adrp x14, _lb_net_cancelled@PAGE
    add x14, x14, _lb_net_cancelled@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_32@PAGE
    add x14, x14, l_text_32@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #32
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
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_8:
    b L16_7
L16_6:
L16_7:
    b L16_3
L16_2:
L16_3:
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
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_9wait_poll
_lb_net_9wait_poll:
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
    bl _lb_net_10clear_poll
    sub x9, x29, #192
    str x9, [sp, #56]
    sub x28, x29, #224
    add x9, x28, #24
    str x9, [sp, #48]
    sub x27, x29, #176
    add x9, x27, #8
    str x9, [sp, #40]
    sub x26, x29, #264
    add x23, x26, #32
    add x24, x19, #8
    sub x9, x29, #296
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #24
    str x9, [sp, #32]
    sub x9, x29, #352
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    add x9, x9, #32
    str x9, [sp, #16]
    adrp x9, _lb_net_18socket_interrupted@PAGE
    add x9, x9, _lb_net_18socket_interrupted@PAGEOFF
    str x9, [sp, #24]
L17_1:
L17_2:
    ldr x9, [sp, #56]
    ldr x25, [x9]
    mov x0, x25
    sub x8, x29, #224
    bl _lb_net_18check_cancellation
    ldr x9, [sp, #48]
    ldrb w14, [x9]
    cbnz w14, L17_5
    b L17_4
L17_5:
    sub x20, x29, #144
    add x14, x20, #8
    mov x10, x28
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_net_10clear_poll
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
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
L17_4:
    ldr x9, [sp, #40]
    ldrb w20, [x9]
    cbnz w20, L17_10
    b L17_8
L17_10:
    ldr x21, [x27]
L17_7:
    sub x8, x29, #264
    bl _lb_net_21monotonic_nanoseconds
    ldrb w14, [x23]
    cbnz w14, L17_12
    b L17_11
L17_12:
    add x14, x26, #8
    sub x20, x29, #144
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
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_net_10clear_poll
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
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
L17_11:
    ldr x14, [x26]
    cmp x21, x14
    b.ls L17_15
L17_14:
    sub x15, x21, x14
    b L17_16
L17_15:
    mov x9, #0
    mov x15, x9
L17_16:
L17_18:
    movz x10, #16960
    movk x10, #15, lsl #16
    udiv x14, x15, x10
L17_23:
    movz x10, #16960
    movk x10, #15, lsl #16
    udiv x11, x15, x10
    msub x21, x11, x10, x15
    mov x10, #0
    cmp x21, x10
    cset w21, eq
    mov x10, #0
    cmp w21, w10
    b.ne L17_20
L17_19:
    movz x9, #1
    mov x15, x9
    b L17_21
L17_20:
    mov x9, #0
    mov x15, x9
L17_21:
    mov x9, x14
    mov x10, x15
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_49@PAGE
    add x1, x1, l_text_49@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    movz x10, #65535
    movk x10, #32767, lsl #16
    cmp x21, x10
    b.hs L17_25
L17_24:
    mov w14, w21
    b L17_26
L17_25:
    movz x9, #65535
    movk x9, #32767, lsl #16
    mov w14, w9
L17_26:
    mov w15, w14
    b L17_9
L17_8:
    movn x9, #0
    mov w15, w9
L17_9:
    mov x10, #0
    cmp x25, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L17_30
    b L17_60
L17_60:
    mov w21, w14
    b L17_31
L17_30:
    mov x10, #0
    cmp w15, w10
    cset w14, lt
    cbnz w14, L17_61
    b L17_32
L17_61:
    mov w21, w14
    b L17_33
L17_32:
    movz x10, #10
    cmp w15, w10
    cset w21, gt
L17_33:
    and w14, w21, #255
    mov w21, w14
L17_31:
    and w14, w21, #255
    cbnz w14, L17_27
    b L17_28
L17_27:
    movz x9, #10
    mov w21, w9
    b L17_29
L17_28:
    mov w21, w15
L17_29:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_net_10clear_poll
    ldr x14, [x19]
    ldr x15, [x24]
    mov x0, x14
    mov x1, x15
    mov x2, x21
    bl _poll
    mov w22, w0
    mov x0, x25
    sub x8, x29, #296
    bl _lb_net_18check_cancellation
    ldr x9, [sp, #32]
    ldrb w14, [x9]
    cbnz w14, L17_35
    b L17_34
L17_35:
    sub x20, x29, #144
    add x14, x20, #8
    ldr x10, [sp, #8]
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_net_10clear_poll
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
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
L17_34:
    mov x10, #0
    cmp w22, w10
    b.ge L17_38
L17_37:
    bl _lb_net_12socket_errno
    mov w14, w0
    ldr x9, [sp, #24]
    ldrsw x15, [x9]
    cmp w14, w15
    b.ne L17_41
L17_40:
    b L17_1
L17_41:
L17_42:
    sub x20, x29, #144
    add x21, x20, #8
    bl _lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl _lb_net_12socket_error
    mov w14, w0
    str w14, [x21]
    adrp x14, l_text_36@PAGE
    add x14, x14, l_text_36@PAGEOFF
    sub x15, x29, #312
    str x14, [x15]
    add x14, x15, #8
    movz x9, #25
    str x9, [x14]
    add x14, x21, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_net_10clear_poll
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
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
L17_38:
L17_39:
    mov x10, #0
    cmp w22, w10
    b.le L17_46
L17_45:
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
    bl _memcpy
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
L17_46:
L17_47:
    cbnz w20, L17_52
    b L17_50
L17_52:
    ldr x20, [x27]
L17_49:
    sub x8, x29, #352
    bl _lb_net_21monotonic_nanoseconds
    ldr x9, [sp, #16]
    ldrb w14, [x9]
    cbnz w14, L17_57
    b L17_56
L17_57:
    ldr x9, [sp, #0]
    add x14, x9, #8
    sub x20, x29, #144
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
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_net_10clear_poll
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
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
L17_56:
    ldr x9, [sp, #0]
    ldr x14, [x9]
    cmp x14, x20
    b.lo L17_54
L17_53:
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
L17_54:
L17_55:
    b L17_51
L17_50:
L17_51:
    b L17_1

    .p2align 2
    .globl _lb_net_11wait_socket
    .no_dead_strip _lb_net_11wait_socket
_lb_net_11wait_socket:
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
    str w0, [x16]
    sub x16, x29, #128
    str w1, [x16]
    sub x16, x29, #144
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #160
    str x4, [x16]
    sub x19, x29, #168
    mov x11, x19
    str xzr, [x11, #0]
    sub x20, x29, #176
    mov x11, x20
    str xzr, [x11, #0]
    sub x14, x29, #112
    ldrsw x14, [x14]
    str w14, [x20]
    sub x14, x29, #128
    ldrb w14, [x14]
    mov x0, x14
    sub x8, x29, #216
    bl _lb_net_13poll_interest
    sub x15, x29, #216
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L18_2
    b L18_1
L18_2:
    add x14, x15, #8
    sub x19, x29, #96
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L18_3:
L18_1:
    ldrsh w14, [x15]
    add x21, x20, #4
    strh w14, [x21]
    mov x10, x20
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x14, x29, #232
    str x19, [x14]
    add x21, x14, #8
    movz x9, #1
    str x9, [x21]
    sub x21, x29, #144
    sub x22, x29, #160
    ldr x22, [x22]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x21
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x22
    sub x8, x29, #272
    bl _lb_net_9wait_poll
    sub x21, x29, #272
    add x14, x21, #32
    ldrb w14, [x14]
    cbnz w14, L18_8
    b L18_7
L18_8:
    add x14, x21, #8
    sub x19, x29, #96
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L18_9:
L18_7:
    ldr x14, [x21]
    mov x10, #0
    cmp x14, x10
    b.ne L18_5
L18_4:
    sub x19, x29, #96
    add x14, x19, #8
    adrp x15, _lb_net_9timed_out@PAGE
    add x15, x15, _lb_net_9timed_out@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_39@PAGE
    add x15, x15, l_text_39@PAGEOFF
    sub x20, x29, #288
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L18_10:
    b L18_6
L18_5:
L18_6:
    sub x20, x29, #293
    add x14, x19, #6
    ldrsh w14, [x14]
    mov x0, x14
    bl _lb_net_14poll_readiness
    sub x16, x29, #298
    str w0, [x16, #0]
    lsr x17, x0, #32
    strb w17, [x16, #4]
    sub x14, x29, #298
    mov x10, x14
    mov x11, x20
    ldr w12, [x10, #0]
    str w12, [x11, #0]
    ldrb w12, [x10, #4]
    strb w12, [x11, #4]
    add x14, x20, #4
    ldrb w14, [x14]
    cbnz w14, L18_11
    b L18_12
L18_11:
    sub x19, x29, #96
    add x14, x19, #8
    adrp x15, _lb_net_closed@PAGE
    add x15, x15, _lb_net_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_41@PAGE
    add x15, x15, l_text_41@PAGEOFF
    sub x20, x29, #320
    str x15, [x20]
    add x15, x20, #8
    movz x9, #39
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L18_14:
    b L18_13
L18_12:
L18_13:
    sub x19, x29, #96
    mov x10, x20
    mov x11, x19
    ldr w12, [x10, #0]
    str w12, [x11, #0]
    ldrb w12, [x10, #4]
    strb w12, [x11, #4]
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L18_15:
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_21monotonic_nanoseconds
_lb_net_21monotonic_nanoseconds:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #192]
    str x20, [sp, #184]
    str x21, [sp, #176]
    str x22, [sp, #168]
    sub x19, x29, #112
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    adrp x14, _lb_platform_macos@PAGE
    add x14, x14, _lb_platform_macos@PAGEOFF
    ldrb w14, [x14]
    cbnz w14, L19_4
    b L19_5
L19_4:
    movz x9, #6
    mov w14, w9
    b L19_6
L19_5:
    movz x9, #1
    mov w14, w9
L19_6:
    mov x0, x14
    mov x1, x19
    bl _clock_gettime
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L19_2
L19_1:
    sub x19, x29, #96
    add x14, x19, #8
    adrp x15, _lb_net_failed@PAGE
    add x15, x15, _lb_net_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_43@PAGE
    add x15, x15, l_text_43@PAGEOFF
    sub x20, x29, #128
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_7:
    b L19_3
L19_2:
L19_3:
    ldr x14, [x19]
    mov x10, #0
    cmp x14, x10
    cset w15, lt
    cbnz w15, L19_25
    b L19_11
L19_25:
    mov w20, w15
    b L19_12
L19_11:
    add x15, x19, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    cset w20, lt
L19_12:
    and w15, w20, #255
    cbnz w15, L19_26
    b L19_13
L19_26:
    mov w20, w15
    b L19_14
L19_13:
    add x15, x19, #8
    ldr x15, [x15]
    movz x10, #51712
    movk x10, #15258, lsl #16
    cmp x15, x10
    cset w20, ge
L19_14:
    and w15, w20, #255
    cbnz w15, L19_8
    b L19_9
L19_8:
    sub x19, x29, #96
    add x14, x19, #8
    adrp x15, _lb_net_failed@PAGE
    add x15, x15, _lb_net_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_44@PAGE
    add x15, x15, l_text_44@PAGEOFF
    sub x20, x29, #144
    str x15, [x20]
    add x15, x20, #8
    movz x9, #49
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_15:
    b L19_10
L19_9:
L19_10:
    sub x20, x29, #152
    mov x0, x14
    movz x1, #51712
    movk x1, #15258, lsl #16
    movz x2, #64
    mov x3, x20
    bl _lb_core_6qmul_u
    mov w15, w0
    sub x21, x29, #168
    ldr x20, [x20]
    str x20, [x21]
    add x21, x21, #8
    strb w15, [x21]
    ldrb w15, [x21]
    cbnz w15, L19_16
    b L19_17
L19_16:
    b L19_18
L19_17:
    sub x19, x29, #96
    add x14, x19, #8
    adrp x15, _lb_net_failed@PAGE
    add x15, x15, _lb_net_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_45@PAGE
    add x15, x15, l_text_45@PAGEOFF
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_19:
L19_18:
    add x14, x19, #8
    ldr x14, [x14]
    sub x21, x29, #192
    mov x0, x20
    mov x1, x14
    movz x2, #64
    mov x3, x21
    bl _lb_core_6qadd_u
    mov w14, w0
    sub x22, x29, #208
    ldr x15, [x21]
    str x15, [x22]
    add x21, x22, #8
    strb w14, [x21]
    ldrb w14, [x21]
    cbnz w14, L19_20
    b L19_21
L19_20:
    b L19_22
L19_21:
    sub x19, x29, #96
    add x14, x19, #8
    adrp x15, _lb_net_failed@PAGE
    add x15, x15, _lb_net_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_45@PAGE
    add x15, x15, l_text_45@PAGEOFF
    sub x20, x29, #224
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_23:
L19_22:
    sub x14, x29, #96
    str x15, [x14]
    add x19, x14, #32
    mov x9, #0
    strb w9, [x19]
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_24:
    adrp x0, l_text_46@PAGE
    add x0, x0, l_text_46@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_15check_operation
    .no_dead_strip _lb_net_15check_operation
_lb_net_15check_operation:
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
    bl _lb_net_18check_cancellation
    sub x15, x29, #128
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L20_2
    b L20_1
L20_2:
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
    ldr x19, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L20_3:
L20_1:
    sub x15, x29, #80
    add x14, x15, #8
    ldrb w14, [x14]
    cbnz w14, L20_7
    b L20_5
L20_7:
    ldr x19, [x15]
L20_4:
    sub x8, x29, #168
    bl _lb_net_21monotonic_nanoseconds
    sub x15, x29, #168
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L20_12
    b L20_11
L20_12:
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
    ldr x19, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L20_13:
L20_11:
    ldr x14, [x15]
    cmp x14, x19
    b.lo L20_9
L20_8:
    sub x19, x29, #64
    adrp x14, _lb_net_9timed_out@PAGE
    add x14, x14, _lb_net_9timed_out@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_47@PAGE
    add x14, x14, l_text_47@PAGEOFF
    sub x15, x29, #184
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
    ldr x19, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L20_14:
    b L20_10
L20_9:
L20_10:
    b L20_6
L20_5:
L20_6:
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
    ldr x19, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_net_readiness_0init

    .section __TEXT,__const
l_text_0:
    .asciz "the deadline exceeds the monotonic clock range"
l_text_1:
    .asciz "unreachable"
l_text_2:
    .asciz "src/std/net/readiness.lucb:26:9"
l_text_3:
    .asciz "src/std/net/readiness.lucb:30:9"
l_text_4:
    .asciz "src/std/net/readiness.lucb:42:9"
l_text_5:
    .asciz "poller capacity must be between one and i32 maximum"
l_text_6:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_7:
    .asciz "memory.unset"
l_text_8:
    .asciz "src/std/net/readiness.lucb:70:9"
l_text_9:
    .asciz "memory.exhausted"
l_text_10:
    .asciz "src/std/net/readiness.lucb:73:13"
l_text_11:
    .asciz "src/std/net/readiness.lucb:74:13"
l_text_12:
    .asciz "src/std/net/readiness.lucb:75:9"
l_text_13:
    .asciz "src/std/net/readiness.lucb:78:9"
l_text_14:
    .asciz "a watched descriptor must be nonnegative"
l_text_15:
    .asciz "src/std/net/readiness.lucb:90:13"
l_text_16:
    .asciz "the descriptor already occupies another poller slot"
l_text_17:
    .asciz "src/std/net/readiness.lucb:92:13"
l_text_18:
    .asciz "src/std/net/readiness.lucb:93:9"
l_text_19:
    .asciz "src/std/net/readiness.lucb:97:9"
l_text_20:
    .asciz "the poller is closed"
l_text_21:
    .asciz "src/std/net/readiness.lucb:110:9"
l_text_22:
    .asciz "src/std/net/readiness.lucb:116:9"
l_text_23:
    .asciz "the poller lost its allocator"
l_text_24:
    .asciz "src/std/net/readiness.lucb:120:13"
l_text_25:
    .asciz "src/std/net/readiness.lucb:121:13"
l_text_26:
    .asciz "the poller slot is outside its capacity"
l_text_27:
    .asciz "unknown readiness interest"
l_text_28:
    .asciz "src/std/net/readiness.lucb:144:5"
l_text_29:
    .asciz "src/std/net/readiness.lucb:149:5"
l_text_30:
    .asciz "src/std/net/readiness.lucb:154:9"
l_text_31:
    .asciz "src/std/net/readiness.lucb:155:9"
l_text_32:
    .asciz "the readiness wait was cancelled"
l_text_33:
    .asciz "src/std/net/readiness.lucb:170:13"
l_text_34:
    .asciz "division by zero"
l_text_35:
    .asciz "src/std/net/readiness.lucb:172:13"
l_text_36:
    .asciz "the readiness wait failed"
l_text_37:
    .asciz "src/std/net/readiness.lucb:193:17"
l_text_38:
    .asciz "src/std/net/readiness.lucb:197:5"
l_text_39:
    .asciz "the socket readiness deadline expired"
l_text_40:
    .asciz "src/std/net/readiness.lucb:200:5"
l_text_41:
    .asciz "the socket descriptor is no longer open"
l_text_42:
    .asciz "src/std/net/readiness.lucb:203:5"
l_text_43:
    .asciz "the monotonic clock could not be read"
l_text_44:
    .asciz "the monotonic clock returned an invalid timestamp"
l_text_45:
    .asciz "the monotonic clock exceeds its range"
l_text_46:
    .asciz "src/std/net/readiness.lucb:212:5"
l_text_47:
    .asciz "the operation deadline expired"
l_text_48:
    .asciz "index out of bounds"
l_text_49:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
