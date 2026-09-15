    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_interop_0init
_lb_interop_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    str x19, [sp, #216]
    adrp x14, _lb_interop_invalid@PAGE
    add x14, x14, _lb_interop_invalid@PAGEOFF
    movz x9, #101
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_interop_12wrong_thread@PAGE
    add x14, x14, _lb_interop_12wrong_thread@PAGEOFF
    movz x9, #102
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_interop_expired@PAGE
    add x14, x14, _lb_interop_expired@PAGEOFF
    movz x9, #103
    movk x9, #3178, lsl #16
    str w9, [x14]
    sub x19, x29, #80
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    adrp x14, l_text_0@PAGE
    add x14, x14, l_text_0@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #12
    str x9, [x14]
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #16
    movz x9, #104
    str x9, [x14]
    add x14, x19, #24
    mov x9, #0
    str x9, [x14]
    adrp x14, _lb_interop_10drop_lease@GOTPAGE
    ldr x14, [x14, _lb_interop_10drop_lease@GOTPAGEOFF]
    add x15, x19, #32
    str x14, [x15]
    adrp x14, _lb_interop_11trace_lease@GOTPAGE
    ldr x14, [x14, _lb_interop_11trace_lease@GOTPAGEOFF]
    add x15, x19, #40
    str x14, [x15]
    add x14, x19, #48
    mov x9, #0
    str x9, [x14]
    adrp x14, _lb_interop_10lease_info@PAGE
    add x14, x14, _lb_interop_10lease_info@PAGEOFF
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    adrp x14, _lb_interop_8no_error@PAGE
    add x14, x14, _lb_interop_8no_error@PAGEOFF
    movz x9, #3178, lsl #16
    str w9, [x14]
    sub x19, x29, #152
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    adrp x14, l_text_1@PAGE
    add x14, x14, l_text_1@PAGEOFF
    sub x15, x29, #168
    str x14, [x15]
    add x14, x15, #8
    movz x9, #17
    str x9, [x14]
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #16
    mov x9, #0
    str x9, [x14]
    add x14, x19, #24
    mov x9, #0
    str x9, [x14]
    adrp x14, _lb_interop_9drop_text@GOTPAGE
    ldr x14, [x14, _lb_interop_9drop_text@GOTPAGEOFF]
    add x15, x19, #32
    str x14, [x15]
    adrp x14, _lb_interop_10trace_text@GOTPAGE
    ldr x14, [x14, _lb_interop_10trace_text@GOTPAGEOFF]
    add x15, x19, #40
    str x14, [x15]
    add x14, x19, #48
    mov x9, #0
    str x9, [x14]
    adrp x14, _lb_interop_9text_info@PAGE
    add x14, x14, _lb_interop_9text_info@PAGEOFF
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    sub x19, x29, #208
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    adrp x14, l_text_2@PAGE
    add x14, x14, l_text_2@PAGEOFF
    sub x15, x29, #224
    str x14, [x15]
    add x14, x15, #8
    movz x9, #10
    str x9, [x14]
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_interop_Connection_destroy@GOTPAGE
    ldr x14, [x14, _lb_interop_Connection_destroy@GOTPAGEOFF]
    add x15, x19, #16
    str x14, [x15]
    adrp x14, _lb_interop_Connection_trace@GOTPAGE
    ldr x14, [x14, _lb_interop_Connection_trace@GOTPAGEOFF]
    add x15, x19, #24
    str x14, [x15]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    add x14, x19, #33
    mov x9, #0
    strb w9, [x14]
    adrp x14, _lb_interop_15connection_type@PAGE
    add x14, x14, _lb_interop_15connection_type@PAGEOFF
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    sub x19, x29, #232
    mov x11, x19
    str xzr, [x11, #0]
    adrp x14, _lb_interop_PacketBytes_text@GOTPAGE
    ldr x14, [x14, _lb_interop_PacketBytes_text@GOTPAGEOFF]
    str x14, [x19]
    adrp x14, _lb_interop_13text_transfer@PAGE
    add x14, x14, _lb_interop_13text_transfer@PAGEOFF
    mov x10, x19
    mov x11, x14
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x19, x29, #240
    mov x11, x19
    str xzr, [x11, #0]
    adrp x14, _lb_interop_PacketBytes_copy@GOTPAGE
    ldr x14, [x14, _lb_interop_PacketBytes_copy@GOTPAGEOFF]
    str x14, [x19]
    adrp x14, _lb_interop_14bytes_transfer@PAGE
    add x14, x14, _lb_interop_14bytes_transfer@PAGEOFF
    mov x10, x19
    mov x11, x14
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    adrp x0, _lb_interop_26active_worker_cancellation@TLVPPAGE
    ldr x0, [x0, _lb_interop_26active_worker_cancellation@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    adrp x14, _lb_interop_13worker_closed@PAGE
    add x14, x14, _lb_interop_13worker_closed@PAGEOFF
    movz x9, #104
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_interop_11worker_busy@PAGE
    add x14, x14, _lb_interop_11worker_busy@PAGEOFF
    movz x9, #105
    movk x9, #3178, lsl #16
    str w9, [x14]
    ldr x19, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_10drop_lease
_lb_interop_10drop_lease:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    add x14, x14, #64
    ldr x14, [x14]
    mov x0, x14
    bl _lb_ownership_release
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_11trace_lease
_lb_interop_11trace_lease:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x16, x29, #72
    str x2, [x16]
    sub x14, x29, #56
    ldr x14, [x14]
    sub x15, x29, #40
    ldr x15, [x15]
    add x15, x15, #64
    ldr x15, [x15]
    sub x19, x29, #72
    ldr x19, [x19]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x15
    mov x1, x19
    ldr x17, [sp], #16
    blr x17
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Lease_init
_lb_interop_Lease_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #192]
    str x20, [sp, #184]
    str x21, [sp, #176]
    str x22, [sp, #168]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    sub x16, x29, #128
    str x2, [x16]
    sub x16, x29, #144
    str x3, [x16]
    sub x16, x29, #160
    str x4, [x16]
    sub x9, x29, #96
    ldr x22, [x9]
    sub x14, x29, #112
    ldr x19, [x14]
    mov x0, x19
    bl _lb_ownership_11check_alive
    adrp x20, _lb_interop_10lease_info@PAGE
    add x20, x20, _lb_interop_10lease_info@PAGEOFF
    sub x21, x29, #176
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    mov x0, x20
    movz x1, #104
    mov x9, x21
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #216
    bl _lb_ownership_reserve
    sub x15, x29, #216
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_2
    b L3_1
L3_2:
    add x14, x15, #8
    sub x19, x29, #88
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_3:
L3_1:
    ldr x20, [x15]
    add x21, x20, #64
    mov x0, x19
    bl _lb_ownership_retain
    mov x14, x0
    str x14, [x21]
    add x14, x20, #72
    sub x21, x29, #128
    ldr x21, [x21]
    str x21, [x14]
    add x14, x20, #80
    sub x21, x29, #144
    ldr x21, [x21]
    str x21, [x14]
    add x14, x20, #88
    sub x21, x29, #160
    ldr x21, [x21]
    str x21, [x14]
    add x14, x20, #96
    movz x9, #1
    strb w9, [x14]
    str x20, [x22]
    add x14, x22, #8
    add x20, x20, #24
    ldr x20, [x20]
    str x20, [x14]
    sub x14, x29, #88
    add x20, x14, #24
    mov x9, #0
    strb w9, [x20]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
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

    .p2align 2
    .globl _lb_interop_Lease_alive
_lb_interop_Lease_alive:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #32
    str x0, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    ldr x14, [x19]
    mov x0, x14
    bl _lb_ownership_11check_alive
    add x14, x19, #8
    ldr x14, [x14]
    ldr x15, [x19]
    add x15, x15, #24
    ldr x15, [x15]
    cmp x14, x15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L4_2
L4_1:
    adrp x14, l_text_3@PAGE
    add x14, x14, l_text_3@PAGEOFF
    sub x15, x29, #48
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
    str x9, [x14]
    adrp x14, l_text_4@PAGE
    add x14, x14, l_text_4@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L4_3
L4_2:
L4_3:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Lease_clone
_lb_interop_Lease_clone:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #56
    str x0, [x16]
    sub x9, x29, #56
    ldr x20, [x9]
    mov x0, x20
    bl _lb_interop_Lease_alive
    ldr x14, [x20]
    mov x0, x14
    bl _lb_ownership_retain
    mov x14, x0
    sub x19, x29, #48
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_1:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Lease_release
_lb_interop_Lease_release:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #8]
    sub x16, x29, #32
    str x0, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    mov x0, x19
    bl _lb_interop_Lease_alive
    ldr x14, [x19]
    mov x0, x14
    bl _lb_ownership_release
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Lease_invalidate
_lb_interop_Lease_invalidate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #8]
    sub x16, x29, #32
    str x0, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    mov x0, x19
    bl _lb_interop_Lease_alive
    ldr x14, [x19]
    add x14, x14, #96
    mov x9, #0
    strb w9, [x14]
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Lease_enter
_lb_interop_Lease_enter:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    str x20, [sp, #136]
    sub x16, x29, #80
    str x0, [x16]
    sub x9, x29, #80
    ldr x19, [x9]
    mov x0, x19
    bl _lb_interop_Lease_alive
    ldr x14, [x19]
    add x15, x14, #96
    ldrb w15, [x15]
    cbnz w15, L8_8
    b L8_13
L8_13:
    mov w14, w15
    b L8_9
L8_8:
    add x15, x14, #72
    ldr x15, [x15]
    add x20, x14, #64
    ldr x20, [x20]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x20
    ldr x17, [sp], #16
    blr x17
    mov w15, w0
    mov w14, w15
L8_9:
    and w15, w14, #255
    and w15, w15, #255
    sub x10, x29, #168
    str w15, [x10]
    b L8_11
L8_10:
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at
L8_11:
    mov x10, #0
    cmp w15, w10
    b.ne L8_5
L8_4:
    sub x20, x29, #144
    adrp x14, _lb_interop_expired@PAGE
    add x14, x14, _lb_interop_expired@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_8@PAGE
    add x14, x14, l_text_8@PAGEOFF
    sub x15, x29, #160
    str x14, [x15]
    add x14, x15, #8
    movz x9, #25
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #112
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L8_12
L8_7:
    b L8_6
L8_5:
L8_6:
    sub x14, x29, #144
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #112
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L8_12:
    sub x15, x29, #112
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L8_2
    b L8_1
L8_2:
    sub x19, x29, #72
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_3:
L8_1:
    ldr x14, [x19]
    mov x0, x14
    bl _lb_ownership_retain
    mov x14, x0
    ldr x14, [x19]
    add x15, x14, #80
    ldr x15, [x15]
    add x14, x14, #64
    ldr x14, [x14]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    ldr x17, [sp], #16
    blr x17
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
    .globl _lb_interop_Lease_leave
_lb_interop_Lease_leave:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #8]
    sub x16, x29, #32
    str x0, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    mov x0, x19
    bl _lb_interop_Lease_alive
    ldr x14, [x19]
    add x15, x14, #88
    ldr x15, [x15]
    add x14, x14, #64
    ldr x14, [x14]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    ldr x17, [sp], #16
    blr x17
    ldr x14, [x19]
    mov x0, x14
    bl _lb_ownership_release
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Lease_trace
_lb_interop_Lease_trace:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x16, x29, #64
    str x2, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    ldr x14, [x19]
    mov x0, x14
    bl _lb_ownership_12check_thread
    sub x14, x29, #48
    ldr x14, [x14]
    ldr x15, [x19]
    sub x19, x29, #64
    ldr x19, [x19]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x15
    mov x1, x19
    ldr x17, [sp], #16
    blr x17
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_9drop_text
_lb_interop_9drop_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    sub x14, x29, #32
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_10trace_text
_lb_interop_10trace_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x16, x29, #64
    str x2, [x16]
    sub x14, x29, #32
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_9copy_text
_lb_interop_9copy_text:
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
    sub x16, x29, #144
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #144
    add x20, x19, #8
    ldr x14, [x20]
    sub x21, x29, #152
    movz x0, #64
    mov x1, x14
    movz x2, #64
    mov x3, x21
    bl _lb_core_6qadd_u
    mov w14, w0
    sub x15, x29, #168
    ldr x21, [x21]
    str x21, [x15]
    add x15, x15, #8
    strb w14, [x15]
    ldrb w14, [x15]
    cbnz w14, L13_1
    b L13_2
L13_1:
    b L13_3
L13_2:
    sub x19, x29, #128
    add x14, x19, #24
    adrp x15, _lb_memory_exhausted@PAGE
    add x15, x15, _lb_memory_exhausted@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_9@PAGE
    add x15, x15, l_text_9@PAGEOFF
    sub x20, x29, #184
    str x15, [x20]
    add x15, x20, #8
    movz x9, #23
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_4:
L13_3:
    adrp x22, _lb_interop_9text_info@PAGE
    add x22, x22, _lb_interop_9text_info@PAGEOFF
    sub x23, x29, #200
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    mov x0, x22
    mov x1, x21
    mov x9, x23
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #240
    bl _lb_ownership_reserve
    sub x15, x29, #240
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L13_6
    b L13_5
L13_6:
    add x14, x15, #8
    sub x19, x29, #128
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_7:
L13_5:
    ldr x21, [x15]
    sub x22, x29, #256
    add x14, x21, #64
    ldr x23, [x20]
    sub x24, x29, #272
    str x14, [x24]
    add x14, x24, #8
    str x23, [x14]
    mov x10, x24
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x23
    bl _lb_memory_copy_0g1_u8
    sub x23, x29, #296
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    ldr x14, [x22]
    add x22, x22, #8
    ldr x22, [x22]
    sub x24, x29, #312
    str x14, [x24]
    add x14, x24, #8
    str x22, [x14]
    mov x10, x24
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x23, #16
    str x21, [x14]
    sub x21, x29, #128
    mov x10, x23
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #48
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_8:
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Connection_init
_lb_interop_Connection_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x16, x29, #72
    str x2, [x16]
    sub x16, x29, #88
    str x3, [x16]
    sub x16, x29, #104
    str x4, [x16]
    sub x9, x29, #40
    ldr x20, [x9]
    sub x14, x29, #56
    ldr x14, [x14]
    str x14, [x20]
    add x15, x20, #8
    sub x19, x29, #72
    ldr x19, [x19]
    str x19, [x15]
    add x15, x20, #16
    sub x19, x29, #88
    ldr x19, [x19]
    str x19, [x15]
    add x15, x20, #24
    sub x19, x29, #104
    ldr x19, [x19]
    str x19, [x15]
    mov x0, x14
    bl _lb_ownership_retain
    mov x14, x0
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Connection_12is_connected
_lb_interop_Connection_12is_connected:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    str x20, [sp, #16]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x19, [x9]
    ldr x20, [x19]
    cbnz x20, L15_1
    b L15_2
L15_1:
    b L15_3
L15_2:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L15_4:
L15_3:
    mov x0, x20
    bl _lb_ownership_11check_alive
    add x14, x19, #24
    ldr x14, [x14]
    add x15, x19, #8
    ldr x15, [x15]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x20
    mov x1, x15
    ldr x17, [sp], #16
    blr x17
    mov w14, w0
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L15_5:
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Connection_destroy
_lb_interop_Connection_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    str x20, [sp, #16]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x14, [x9]
    ldr x19, [x14]
    cbnz x19, L16_1
    b L16_2
L16_1:
    b L16_3
L16_2:
    b L16_5
L16_4:
L16_3:
    mov x9, #0
    str x9, [x14]
    add x15, x14, #16
    ldr x15, [x15]
    add x20, x14, #8
    ldr x20, [x20]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x19
    mov x1, x20
    ldr x17, [sp], #16
    blr x17
    mov x0, x19
    bl _lb_ownership_release
L16_5:
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Connection_trace
_lb_interop_Connection_trace:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x16, x29, #64
    str x2, [x16]
    sub x9, x29, #32
    ldr x14, [x9]
    ldr x19, [x14]
    cbnz x19, L17_4
    b L17_2
L17_4:
L17_1:
    mov x0, x19
    bl _lb_ownership_12check_thread
    sub x14, x29, #48
    ldr x14, [x14]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    mov x1, x15
    ldr x17, [sp], #16
    blr x17
    b L17_3
L17_2:
L17_3:
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_PacketBytes_drop
_lb_interop_PacketBytes_drop:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    str x22, [sp, #64]
    str x23, [sp, #56]
    sub x16, x29, #72
    str x0, [x16]
    sub x14, x29, #72
    ldr x19, [x14]
    adrp x20, _lb_memory_heap@PAGE
    add x20, x20, _lb_memory_heap@PAGEOFF
    sub x14, x29, #88
    ldr x15, [x19]
    add x21, x19, #8
    ldr x21, [x21]
    str x15, [x14]
    add x15, x14, #8
    str x21, [x15]
    ldr x15, [x20]
    add x21, x20, #8
    ldr x22, [x21]
    cbnz x22, L18_2
    b L18_1
L18_2:
    add x23, x22, #16
    ldr x23, [x23]
    mov x17, x23
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L18_1:
    sub x14, x29, #104
    str x19, [x14]
    add x15, x14, #8
    movz x9, #16
    str x9, [x15]
    ldr x15, [x20]
    ldr x22, [x21]
    cbnz x22, L18_4
    b L18_3
L18_4:
    add x19, x22, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L18_3:
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    ldr x23, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_PacketBytes_copy
_lb_interop_PacketBytes_copy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #464
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #432]
    str x20, [sp, #424]
    str x21, [sp, #416]
    str x22, [sp, #408]
    str x23, [sp, #400]
    str x24, [sp, #392]
    str x25, [sp, #384]
    str x26, [sp, #376]
    str x27, [sp, #368]
    sub x16, x29, #176
    str x0, [x16]
    str x1, [x16, #8]
    sub x21, x29, #192
    adrp x22, _lb_memory_heap@PAGE
    add x22, x22, _lb_memory_heap@PAGEOFF
    sub x19, x29, #176
    add x20, x19, #8
    ldr x23, [x20]
    sub x24, x29, #240
    movz x10, #16384, lsl #48
    cmp x23, x10
    b.ls L19_2
L19_1:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_13@PAGE
    add x15, x15, l_text_13@PAGEOFF
    add x23, x14, #8
    str x15, [x23]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b L19_3
L19_2:
    ldr x14, [x22]
    add x15, x22, #8
    ldr x15, [x15]
    cbnz x15, L19_4
    b L19_5
L19_5:
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L19_4:
    ldr x25, [x15]
    mov x17, x25
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x23
    movz x2, #1
    sub x8, x29, #264
    ldr x17, [sp], #16
    blr x17
    sub x27, x29, #264
    add x25, x27, #16
    ldrb w25, [x25]
    mov x10, #0
    cmp x23, x10
    cset w26, ne
    mov x10, #0
    cmp w25, w10
    cset w25, eq
    and w25, w26, w25
    cbnz w25, L19_6
    b L19_7
L19_6:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_16@PAGE
    add x15, x15, l_text_16@PAGEOFF
    add x23, x14, #8
    str x15, [x23]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b L19_3
L19_7:
    ldr x14, [x27]
    str x14, [x24]
    add x14, x24, #8
    str x23, [x14]
    add x14, x24, #40
    mov x9, #0
    strb w9, [x14]
L19_3:
    add x14, x24, #40
    ldrb w14, [x14]
    cbnz w14, L19_9
    b L19_8
L19_9:
    add x14, x24, #16
    sub x19, x29, #160
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
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr x24, [sp, #392]
    ldr x25, [sp, #384]
    ldr x26, [sp, #376]
    ldr x27, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_10:
L19_8:
    mov x10, x24
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x20]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl _lb_memory_copy_0g1_u8
    sub x23, x29, #280
    mov x10, x22
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x25, x29, #320
    ldr x14, [x23]
    add x15, x23, #8
    ldr x15, [x15]
    cbnz x15, L19_11
    b L19_12
L19_12:
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L19_11:
    ldr x19, [x15]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #16
    movz x2, #8
    sub x8, x29, #344
    ldr x17, [sp], #16
    blr x17
    sub x20, x29, #344
    add x19, x20, #16
    ldrb w19, [x19]
    cbnz w19, L19_13
    b L19_14
L19_14:
    add x14, x25, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_16@PAGE
    add x15, x15, l_text_16@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x25, #32
    movz x9, #1
    strb w9, [x14]
    b L19_15
L19_13:
    ldr x19, [x20]
    sub x23, x29, #360
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    mov x10, x21
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x23
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    str x19, [x25]
    add x14, x25, #32
    mov x9, #0
    strb w9, [x14]
L19_15:
    add x14, x25, #32
    ldrb w14, [x14]
    cbnz w14, L19_17
    b L19_16
L19_17:
    add x14, x25, #8
    sub x19, x29, #160
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
    sub x14, x29, #376
    ldr x15, [x21]
    add x20, x21, #8
    ldr x20, [x20]
    str x15, [x14]
    add x15, x14, #8
    str x20, [x15]
    ldr x15, [x22]
    add x20, x22, #8
    ldr x20, [x20]
    cbnz x20, L19_19
    b L19_18
L19_19:
    add x21, x20, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L19_18:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr x24, [sp, #392]
    ldr x25, [sp, #384]
    ldr x26, [sp, #376]
    ldr x27, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_20:
L19_16:
    ldr x19, [x25]
    sub x22, x29, #408
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    adrp x20, _lb_interop_PacketBytes_drop@GOTPAGE
    ldr x20, [x20, _lb_interop_PacketBytes_drop@GOTPAGEOFF]
    mov x10, x21
    sub x11, x29, #424
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x10, x29, #440
    str x19, [x10]
    sub x10, x29, #456
    str x20, [x10]
    sub x14, x29, #424
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #16
    str x19, [x14]
    add x14, x22, #24
    str x20, [x14]
L19_22:
    sub x19, x29, #160
    mov x10, x22
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    add x14, x19, #56
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #432]
    ldr x20, [sp, #424]
    ldr x21, [sp, #416]
    ldr x22, [sp, #408]
    ldr x23, [sp, #400]
    ldr x24, [sp, #392]
    ldr x25, [sp, #384]
    ldr x26, [sp, #376]
    ldr x27, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_21:
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_PacketBytes_text
_lb_interop_PacketBytes_text:
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
    sub x16, x29, #144
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #176
    sub x14, x29, #144
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #240
    bl _lb_interop_PacketBytes_copy
    sub x15, x29, #240
    add x14, x15, #56
    ldrb w14, [x14]
    cbnz w14, L20_2
    b L20_1
L20_2:
    add x14, x15, #32
    sub x19, x29, #128
    add x20, x19, #32
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L20_3:
L20_1:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    sub x23, x29, #272
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    ldr x14, [x19]
    add x20, x19, #8
    ldr x20, [x20]
    sub x21, x29, #288
    str x14, [x21]
    add x14, x21, #8
    str x20, [x14]
    add x14, x19, #16
    ldr x20, [x14]
    add x14, x19, #24
    ldr x22, [x14]
    mov x10, x21
    sub x11, x29, #304
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x10, x29, #320
    str x20, [x10]
    sub x10, x29, #336
    str x22, [x10]
    sub x14, x29, #304
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x23, #16
    str x20, [x14]
    add x14, x23, #24
    str x22, [x14]
L20_5:
    sub x19, x29, #128
    mov x10, x23
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    add x14, x19, #56
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L20_4:
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_19worker_cancellation
_lb_interop_19worker_cancellation:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    adrp x0, _lb_interop_26active_worker_cancellation@TLVPPAGE
    ldr x0, [x0, _lb_interop_26active_worker_cancellation@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x14, [x14]
    cbnz x14, L21_1
    b L21_2
L21_1:
    b L21_3
L21_2:
    adrp x14, l_text_20@PAGE
    add x14, x14, l_text_20@PAGEOFF
    sub x15, x29, #32
    str x14, [x15]
    add x14, x15, #8
    movz x9, #45
    str x9, [x14]
    adrp x14, l_text_21@PAGE
    add x14, x14, l_text_21@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at
L21_3:
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L21_4:
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_copy_0g1_u8
    .weak_definition _lb_memory_copy_0g1_u8
_lb_memory_copy_0g1_u8:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    sub x16, x29, #48
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #64
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #80
    str x4, [x16]
    sub x14, x29, #80
    ldr x19, [x14]
    sub x20, x29, #48
    add x14, x20, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w14, hi
    cbnz w14, L22_11
    b L22_4
L22_11:
    mov w15, w14
    b L22_5
L22_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L22_5:
    and w14, w15, #255
    cbnz w14, L22_1
    b L22_2
L22_1:
    adrp x14, l_text_22@PAGE
    add x14, x14, l_text_22@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_23@PAGE
    add x14, x14, l_text_23@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L22_3
L22_2:
L22_3:
    mov x10, #0
    cmp x19, x10
    b.ls L22_7
L22_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memcpy
    mov x14, x0
    cbnz x14, L22_9
    b L22_10
L22_10:
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_25@PAGE
    add x1, x1, l_text_25@PAGEOFF
    bl _lb_core_7trap_at
L22_9:
    b L22_8
L22_7:
L22_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Packet_0g1_u8_0c_init
    .weak_definition _lb_interop_Packet_0g1_u8_0c_init
_lb_interop_Packet_0g1_u8_0c_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #64
    str x3, [x16]
    sub x16, x29, #80
    str x4, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    sub x14, x29, #48
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #16
    sub x15, x29, #64
    ldr x15, [x15]
    str x15, [x14]
    add x14, x19, #24
    sub x15, x29, #80
    ldr x15, [x15]
    str x15, [x14]
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Packet_0g1_str_init
    .weak_definition _lb_interop_Packet_0g1_str_init
_lb_interop_Packet_0g1_str_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #64
    str x3, [x16]
    sub x16, x29, #80
    str x4, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    sub x14, x29, #48
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #16
    sub x15, x29, #64
    ldr x15, [x15]
    str x15, [x14]
    add x14, x19, #24
    sub x15, x29, #80
    ldr x15, [x15]
    str x15, [x14]
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_interop_0init

    .section __TEXT,__const
l_text_0:
    .asciz "native lease"
l_text_1:
    .asciz "native owned text"
l_text_2:
    .asciz "Connection"
l_text_3:
    .asciz "a native lease has a stale generation"
l_text_4:
    .asciz "src/std/interop/lease.lucb:40:13"
l_text_5:
    .asciz "unreachable"
l_text_6:
    .asciz "src/std/interop/lease.lucb:45:9"
l_text_7:
    .asciz "src/std/interop/lease.lucb:57:9"
l_text_8:
    .asciz "a native view has expired"
l_text_9:
    .asciz "owned text is too large"
l_text_10:
    .asciz "src/std/interop/result.lucb:77:5"
l_text_11:
    .asciz "src/std/interop/connection.lucb:27:9"
l_text_12:
    .asciz "src/std/interop/transfer.lucb:36:9"
l_text_13:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_14:
    .asciz "memory.unset"
l_text_15:
    .asciz "src/std/interop/transfer.lucb:40:9"
l_text_16:
    .asciz "memory.exhausted"
l_text_17:
    .asciz "src/std/interop/transfer.lucb:43:9"
l_text_18:
    .asciz "src/std/interop/transfer.lucb:44:9"
l_text_19:
    .asciz "src/std/interop/transfer.lucb:48:9"
l_text_20:
    .asciz "this operation requires an application worker"
l_text_21:
    .asciz "src/std/interop/worker_entry.lucb:24:5"
l_text_22:
    .asciz "index out of bounds"
l_text_23:
    .asciz "src/std/memory.lucb:326:9"
l_text_24:
    .asciz "src/std/memory.lucb:328:9"
l_text_25:
    .asciz "null_foreign"

    .section __DATA,__const
    .p2align 3
    .globl _lb_interop_invalid
    .zerofill __DATA,__bss,_lb_interop_invalid,4,2
    .globl _lb_interop_12wrong_thread
    .zerofill __DATA,__bss,_lb_interop_12wrong_thread,4,2
    .globl _lb_interop_expired
    .zerofill __DATA,__bss,_lb_interop_expired,4,2
    .globl _lb_interop_10lease_info
    .zerofill __DATA,__bss,_lb_interop_10lease_info,56,3
    .globl _lb_interop_8no_error
    .zerofill __DATA,__bss,_lb_interop_8no_error,4,2
    .globl _lb_interop_9text_info
    .zerofill __DATA,__bss,_lb_interop_9text_info,56,3
    .globl _lb_interop_15connection_type
    .zerofill __DATA,__bss,_lb_interop_15connection_type,40,3
    .globl _lb_interop_13text_transfer
    .zerofill __DATA,__bss,_lb_interop_13text_transfer,8,3
    .globl _lb_interop_14bytes_transfer
    .zerofill __DATA,__bss,_lb_interop_14bytes_transfer,8,3

    .section __DATA,__thread_bss,thread_local_zerofill
    .p2align 4
_lb_interop_26active_worker_cancellation$tlv$init:
    .space 8
    .section __DATA,__thread_vars,thread_local_variables
    .globl _lb_interop_26active_worker_cancellation
_lb_interop_26active_worker_cancellation:
    .quad __tlv_bootstrap
    .quad 0
    .quad _lb_interop_26active_worker_cancellation$tlv$init
    .globl _lb_interop_13worker_closed
    .zerofill __DATA,__bss,_lb_interop_13worker_closed,4,2
    .globl _lb_interop_11worker_busy
    .zerofill __DATA,__bss,_lb_interop_11worker_busy,4,2

