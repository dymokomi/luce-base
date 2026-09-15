    .text

    .p2align 2
    .globl lb_net_19websocket_handshake_0init
    .type lb_net_19websocket_handshake_0init, %function
lb_net_19websocket_handshake_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    adrp x14, lb_net_17websocket_invalid
    add x14, x14, :lo12:lb_net_17websocket_invalid
    movz x9, #83
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_15websocket_limit
    add x14, x14, :lo12:lb_net_15websocket_limit
    movz x9, #84
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, .Ltext_0
    add x14, x14, :lo12:.Ltext_0
    sub x15, x29, #32
    str x14, [x15]
    add x14, x15, #8
    movz x9, #64
    str x9, [x14]
    adrp x14, lb_net_18websocket_alphabet
    add x14, x14, :lo12:lb_net_18websocket_alphabet
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, .Ltext_1
    add x14, x14, :lo12:.Ltext_1
    sub x15, x29, #48
    str x14, [x15]
    add x14, x15, #8
    movz x9, #36
    str x9, [x14]
    adrp x14, lb_net_14websocket_guid
    add x14, x14, :lo12:lb_net_14websocket_guid
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_19websocket_handshake_0init, .-lb_net_19websocket_handshake_0init

    .p2align 2
    .globl lb_net_17websocket_entropy
    .type lb_net_17websocket_entropy, %function
lb_net_17websocket_entropy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    sub x15, x29, #48
    ldr x15, [x15]
    sub x12, x29, #88
    str x14, [x12]
    add x14, x12, #8
    str x15, [x14]
    mov x9, x12
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #120
    bl lb_os_12random_bytes
    sub x15, x29, #120
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L1_4
    b .L1_3
.L1_4:
    sub x14, x29, #72
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L1_1
.L1_3:
    b .L1_2
.L1_1:
    movn x9, #0
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_5:
.L1_2:
    mov x9, #0
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_6:
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_2
    add x1, x1, :lo12:.Ltext_2
    bl lb_core_7trap_at

    .size lb_net_17websocket_entropy, .-lb_net_17websocket_entropy

    .p2align 2
    .globl lb_net_16websocket_sextet
    .type lb_net_16websocket_sextet, %function
lb_net_16websocket_sextet:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #56
    str w0, [x16]
    adrp x14, lb_net_18websocket_alphabet
    add x14, x14, :lo12:lb_net_18websocket_alphabet
    add x15, x14, #8
    sub x12, x29, #56
    ldrb w12, [x12]
    mov x9, #0
    mov x13, x9
.L2_1:
    movz x10, #64
    cmp x13, x10
    b.ge .L2_4
.L2_2:
    ldr x19, [x14]
    ldr x20, [x15]
    cmp x13, x20
    b.lo 1f
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x19, x19, x13
    ldrb w19, [x19]
    cmp w19, w12
    b.ne .L2_6
.L2_5:
    and w14, w13, #255
    sub x15, x29, #58
    strb w14, [x15]
    add x14, x15, #1
    movz x9, #1
    strb w9, [x14]
    sub x19, x29, #34
    mov x10, x15
    mov x11, x19
    ldrh w16, [x10, #0]
    strh w16, [x11, #0]
    mov x16, x19
    ldrh w0, [x16, #0]
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_8:
    b .L2_7
.L2_6:
.L2_7:
.L2_3:
    add x19, x13, #1
    mov x13, x19
    b .L2_1
.L2_4:
    sub x19, x29, #60
    mov x11, x19
    strh wzr, [x11, #0]
    sub x20, x29, #34
    mov x10, x19
    mov x11, x20
    ldrh w16, [x10, #0]
    strh w16, [x11, #0]
    mov x16, x20
    ldrh w0, [x16, #0]
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_9:
    adrp x0, .Ltext_5
    add x0, x0, :lo12:.Ltext_5
    adrp x1, .Ltext_2
    add x1, x1, :lo12:.Ltext_2
    bl lb_core_7trap_at

    .size lb_net_16websocket_sextet, .-lb_net_16websocket_sextet

    .p2align 2
    .globl lb_net_19websocket_key_valid
    .type lb_net_19websocket_key_valid, %function
lb_net_19websocket_key_valid:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    str x21, [sp, #56]
    str x22, [sp, #48]
    sub x16, x29, #64
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #64
    add x15, x14, #8
    ldr x19, [x15]
    movz x10, #24
    cmp x19, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    cbnz w15, .L3_24
    b .L3_4
.L3_24:
    mov w12, w15
    b .L3_5
.L3_4:
    ldr x15, [x14]
    movz x9, #22
    cmp x9, x19
    b.lo 1f
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x15, x15, #22
    ldrb w15, [x15]
    movz x10, #61
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w12, eq
.L3_5:
    and w15, w12, #255
    cbnz w15, .L3_25
    b .L3_6
.L3_25:
    mov w12, w15
    b .L3_7
.L3_6:
    ldr x15, [x14]
    movz x9, #23
    cmp x9, x19
    b.lo 1f
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x15, x15, #23
    ldrb w15, [x15]
    movz x10, #61
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w12, eq
.L3_7:
    and w15, w12, #255
    cbnz w15, .L3_1
    b .L3_2
.L3_1:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    ldr x22, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_2:
.L3_3:
    ldr x20, [x14]
    add x15, x19, #1
    mov x9, #0
    cmp x9, x15
    b.lo 1f
    adrp x0, .Ltext_7
    add x0, x0, :lo12:.Ltext_7
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    movz x9, #22
    cmp x9, x15
    b.lo 1f
    adrp x0, .Ltext_7
    add x0, x0, :lo12:.Ltext_7
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
.L3_13:
    sub x14, x29, #80
    str x20, [x14]
    add x14, x14, #8
    movz x9, #22
    str x9, [x14]
    sub x14, x29, #82
    add x21, x14, #1
    mov x9, #0
    mov x22, x9
.L3_9:
    movz x10, #22
    cmp x22, x10
    b.hs .L3_12
.L3_10:
    add x14, x20, x22
    ldrb w14, [x14]
    and w14, w14, #255
    mov x0, x14
    bl lb_net_16websocket_sextet
    sub x16, x29, #82
    strh w0, [x16, #0]
    ldrb w14, [x21]
    mov x10, #0
    cmp w14, w10
    b.ne .L3_16
.L3_15:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    ldr x22, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_16:
.L3_17:
.L3_11:
    add x14, x22, #1
    mov x22, x14
    b .L3_9
.L3_12:
    movz x9, #21
    cmp x9, x19
    b.lo 1f
    adrp x0, .Ltext_9
    add x0, x0, :lo12:.Ltext_9
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x14, x20, #21
    ldrb w14, [x14]
    mov x0, x14
    bl lb_net_16websocket_sextet
    sub x16, x29, #84
    strh w0, [x16, #0]
    sub x15, x29, #84
    add x14, x15, #1
    ldrb w14, [x14]
    cbnz w14, .L3_19
    b .L3_20
.L3_19:
    ldrb w14, [x15]
    b .L3_21
.L3_20:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    ldr x22, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_21:
    and w15, w14, #255
    and w15, w15, #255
    movz x10, #15
    and w15, w15, w10
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    and w15, w15, #255
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    ldr x22, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_19websocket_key_valid, .-lb_net_19websocket_key_valid

    .p2align 2
    .globl lb_net_16websocket_base64
    .type lb_net_16websocket_base64, %function
lb_net_16websocket_base64:
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
    str x25, [sp, #192]
    str x26, [sp, #184]
    str x27, [sp, #176]
    str x28, [sp, #168]
    sub x16, x29, #168
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #184
    str x2, [x16]
    str x3, [x16, #8]
    sub x14, x29, #168
    add x15, x14, #8
    ldr x9, [x15]
    str x9, [sp, #32]
    ldr x9, [sp, #32]
    movz x10, #2
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_11
    add x0, x0, :lo12:.Ltext_11
    adrp x1, .Ltext_99
    add x1, x1, :lo12:.Ltext_99
    bl lb_core_7trap_at
1:
    mov x12, x9
.L4_2:
    movz x10, #3
    udiv x13, x12, x10
    mov x9, x13
    movz x10, #4
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_11
    add x0, x0, :lo12:.Ltext_11
    adrp x1, .Ltext_99
    add x1, x1, :lo12:.Ltext_99
    bl lb_core_7trap_at
1:
    mov x13, x9
    sub x9, x29, #184
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    add x20, x9, #8
    ldr x20, [x20]
    cmp x20, x13
    b.hs .L4_4
.L4_3:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, lb_io_full
    add x15, x15, :lo12:lb_io_full
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_13
    add x15, x15, :lo12:.Ltext_13
    sub x12, x29, #200
    str x15, [x12]
    add x15, x12, #8
    movz x9, #36
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    ldr x25, [sp, #192]
    ldr x26, [sp, #184]
    ldr x27, [sp, #176]
    ldr x28, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_4:
.L4_5:
    ldr x9, [x14]
    str x9, [sp, #16]
    ldr x9, [sp, #24]
    ldr x13, [x9]
    adrp x21, lb_net_18websocket_alphabet
    add x21, x21, :lo12:lb_net_18websocket_alphabet
    add x22, x21, #8
    mov x9, #0
    str x9, [sp, #8]
    mov x9, #0
    mov x24, x9
.L4_7:
    ldr x9, [sp, #8]
    ldr x10, [sp, #32]
    cmp x9, x10
    b.hs .L4_9
.L4_8:
    ldr x9, [sp, #32]
    ldr x10, [sp, #8]
    sub x14, x9, x10
    ldr x9, [sp, #16]
    ldr x10, [sp, #8]
    add x25, x9, x10
    ldrb w25, [x25]
    movz x10, #1
    cmp x14, x10
    cset w26, hi
    cbnz w26, .L4_10
    b .L4_11
.L4_10:
    ldr x9, [sp, #8]
    add x27, x9, #1
    ldr x10, [sp, #32]
    cmp x27, x10
    b.lo 1f
    adrp x0, .Ltext_16
    add x0, x0, :lo12:.Ltext_16
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    ldr x9, [sp, #16]
    add x27, x9, x27
    ldrb w27, [x27]
    b .L4_12
.L4_11:
    mov x9, #0
    mov w27, w9
.L4_12:
    and w28, w27, #255
    movz x10, #2
    cmp x14, x10
    cset w19, hi
    cbnz w19, .L4_13
    b .L4_14
.L4_13:
    ldr x9, [sp, #8]
    movz x10, #2
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_17
    add x0, x0, :lo12:.Ltext_17
    adrp x1, .Ltext_99
    add x1, x1, :lo12:.Ltext_99
    bl lb_core_7trap_at
1:
    mov x14, x9
    ldr x10, [sp, #32]
    cmp x14, x10
    b.lo 1f
    adrp x0, .Ltext_17
    add x0, x0, :lo12:.Ltext_17
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    ldr x9, [sp, #16]
    add x14, x9, x14
    ldrb w14, [x14]
    b .L4_15
.L4_14:
    mov x9, #0
    mov w14, w9
.L4_15:
    and w27, w14, #255
    cmp x24, x20
    b.lo 1f
    adrp x0, .Ltext_18
    add x0, x0, :lo12:.Ltext_18
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x15, x13, x24
    and w12, w25, #255
.L4_17:
    lsr w14, w12, #2
    and w14, w14, #255
    mov w14, w14
    ldr x25, [x21]
    ldr x23, [x22]
    cmp x14, x23
    b.lo 1f
    adrp x0, .Ltext_18
    add x0, x0, :lo12:.Ltext_18
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x14, x14, x25
    ldrb w14, [x14]
    strb w14, [x15]
    add x14, x24, #1
    cmp x14, x20
    b.lo 1f
    adrp x0, .Ltext_20
    add x0, x0, :lo12:.Ltext_20
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x14, x13, x14
    movz x10, #3
    and w23, w12, w10
.L4_19:
    lsl w15, w23, #4
    and w15, w15, #255
    and w12, w28, #255
.L4_21:
    lsr w23, w12, #4
    and w23, w23, #255
    orr w23, w23, w15
    mov w23, w23
    ldr x25, [x21]
    ldr x28, [x22]
    cmp x23, x28
    b.lo 1f
    adrp x0, .Ltext_20
    add x0, x0, :lo12:.Ltext_20
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x23, x23, x25
    ldrb w23, [x23]
    strb w23, [x14]
    mov x9, x24
    movz x10, #2
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_99
    add x1, x1, :lo12:.Ltext_99
    bl lb_core_7trap_at
1:
    mov x23, x9
    cmp x23, x20
    b.lo 1f
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x23, x13, x23
    cbnz w26, .L4_22
    b .L4_23
.L4_22:
    movz x10, #15
    and w14, w12, w10
.L4_26:
    lsl w15, w14, #2
    and w15, w15, #255
    and w12, w27, #255
.L4_28:
    lsr w14, w12, #6
    and w14, w14, #255
    orr w14, w14, w15
    mov w14, w14
    ldr x25, [x21]
    ldr x26, [x22]
    cmp x14, x26
    b.lo 1f
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x14, x14, x25
    ldrb w14, [x14]
    b .L4_24
.L4_23:
    movz x9, #61
    mov w14, w9
.L4_24:
    and w15, w14, #255
    strb w15, [x23]
    mov x9, x24
    movz x10, #3
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_22
    add x0, x0, :lo12:.Ltext_22
    adrp x1, .Ltext_99
    add x1, x1, :lo12:.Ltext_99
    bl lb_core_7trap_at
1:
    mov x15, x9
    cmp x15, x20
    b.lo 1f
    adrp x0, .Ltext_22
    add x0, x0, :lo12:.Ltext_22
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x15, x13, x15
    cbnz w19, .L4_29
    b .L4_30
.L4_29:
    and w14, w27, #255
    movz x10, #63
    and w14, w14, w10
    mov w14, w14
    ldr x12, [x21]
    ldr x19, [x22]
    cmp x14, x19
    b.lo 1f
    adrp x0, .Ltext_22
    add x0, x0, :lo12:.Ltext_22
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x14, x14, x12
    ldrb w14, [x14]
    b .L4_31
.L4_30:
    movz x9, #61
    mov w14, w9
.L4_31:
    and w12, w14, #255
    strb w12, [x15]
    ldr x9, [sp, #8]
    movz x10, #3
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_23
    add x0, x0, :lo12:.Ltext_23
    adrp x1, .Ltext_99
    add x1, x1, :lo12:.Ltext_99
    bl lb_core_7trap_at
1:
    mov x12, x9
    mov x9, x24
    movz x10, #4
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_24
    add x0, x0, :lo12:.Ltext_24
    adrp x1, .Ltext_99
    add x1, x1, :lo12:.Ltext_99
    bl lb_core_7trap_at
1:
    mov x19, x9
    mov x9, x12
    str x9, [sp, #8]
    mov x24, x19
    b .L4_7
.L4_9:
    ldr x9, [sp, #24]
    ldr x15, [x9]
    add x14, x20, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    cmp x24, x14
    b.lo 1f
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x24
    b.ls .L4_32
.L4_33:
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
.L4_32:
    sub x14, x29, #216
    str x15, [x14]
    add x14, x14, #8
    str x24, [x14]
    sub x14, x29, #232
    str x15, [x14]
    add x12, x14, #8
    str x24, [x12]
    sub x19, x29, #152
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    ldr x25, [sp, #192]
    ldr x26, [sp, #184]
    ldr x27, [sp, #176]
    ldr x28, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_16websocket_base64, .-lb_net_16websocket_base64

    .p2align 2
    .globl lb_net_20websocket_client_key
    .type lb_net_20websocket_client_key, %function
lb_net_20websocket_client_key:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #192]
    str x20, [sp, #184]
    sub x16, x29, #104
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #104
    add x14, x19, #8
    ldr x14, [x14]
    movz x10, #24
    cmp x14, x10
    b.hs .L5_2
.L5_1:
    sub x19, x29, #88
    add x14, x19, #16
    adrp x15, lb_io_full
    add x15, x15, :lo12:lb_io_full
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_26
    add x15, x15, :lo12:.Ltext_26
    sub x12, x29, #120
    str x15, [x12]
    add x15, x12, #8
    movz x9, #35
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_4:
    b .L5_3
.L5_2:
.L5_3:
    sub x20, x29, #136
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    mov x0, x20
    movz x1, #16
    bl lb_net_17websocket_entropy
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L5_6
.L5_5:
    sub x19, x29, #88
    add x14, x19, #16
    adrp x15, lb_net_failed
    add x15, x15, :lo12:lb_net_failed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_28
    add x15, x15, :lo12:.Ltext_28
    sub x12, x29, #152
    str x15, [x12]
    add x15, x12, #8
    movz x9, #41
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_8:
    b .L5_7
.L5_6:
.L5_7:
    sub x14, x29, #168
    str x20, [x14]
    add x15, x14, #8
    movz x9, #16
    str x9, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #216
    bl lb_net_16websocket_base64
    sub x15, x29, #216
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, .L5_10
    b .L5_9
.L5_10:
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_11:
.L5_9:
    sub x19, x29, #88
    mov x10, x15
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_12:
    adrp x0, .Ltext_29
    add x0, x0, :lo12:.Ltext_29
    adrp x1, .Ltext_2
    add x1, x1, :lo12:.Ltext_2
    bl lb_core_7trap_at

    .size lb_net_20websocket_client_key, .-lb_net_20websocket_client_key

    .p2align 2
    .globl lb_net_16websocket_rotate
    .type lb_net_16websocket_rotate, %function
lb_net_16websocket_rotate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #40
    str w0, [x16]
    sub x16, x29, #56
    str w1, [x16]
    sub x14, x29, #40
    ldr w15, [x14]
    sub x14, x29, #56
    ldr w12, [x14]
    mov w14, w12
    movz x10, #32
    cmp x14, x10
    b.lo .L6_2
.L6_1:
    adrp x0, .Ltext_30
    add x0, x0, :lo12:.Ltext_30
    adrp x1, .Ltext_19
    add x1, x1, :lo12:.Ltext_19
    bl lb_core_7trap_at
.L6_2:
    lsl w13, w15, w12
    movz x9, #32
    mov w10, w12
    subs w9, w9, w10
    b.cs 1f
    adrp x0, .Ltext_30
    add x0, x0, :lo12:.Ltext_30
    adrp x1, .Ltext_99
    add x1, x1, :lo12:.Ltext_99
    bl lb_core_7trap_at
1:
    mov w19, w9
    mov w14, w19
    movz x10, #32
    cmp x14, x10
    b.lo .L6_4
.L6_3:
    adrp x0, .Ltext_30
    add x0, x0, :lo12:.Ltext_30
    adrp x1, .Ltext_19
    add x1, x1, :lo12:.Ltext_19
    bl lb_core_7trap_at
.L6_4:
    lsr w14, w15, w19
    orr w14, w14, w13
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_5:
    adrp x0, .Ltext_30
    add x0, x0, :lo12:.Ltext_30
    adrp x1, .Ltext_2
    add x1, x1, :lo12:.Ltext_2
    bl lb_core_7trap_at

    .size lb_net_16websocket_rotate, .-lb_net_16websocket_rotate

    .p2align 2
    .globl lb_net_20websocket_accept_key
    .type lb_net_20websocket_accept_key, %function
lb_net_20websocket_accept_key:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #912
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #880]
    str x20, [sp, #872]
    str x21, [sp, #864]
    str x22, [sp, #856]
    str x23, [sp, #848]
    str x24, [sp, #840]
    str x25, [sp, #832]
    str x26, [sp, #824]
    str x27, [sp, #816]
    str x28, [sp, #808]
    sub x16, x29, #168
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #184
    str x2, [x16]
    str x3, [x16, #8]
    sub x19, x29, #168
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_net_19websocket_key_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L7_2
.L7_1:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, lb_net_17websocket_invalid
    add x15, x15, :lo12:lb_net_17websocket_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_31
    add x15, x15, :lo12:.Ltext_31
    sub x12, x29, #200
    str x15, [x12]
    add x15, x12, #8
    movz x9, #42
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
    ldr x19, [sp, #880]
    ldr x20, [sp, #872]
    ldr x21, [sp, #864]
    ldr x22, [sp, #856]
    ldr x23, [sp, #848]
    ldr x24, [sp, #840]
    ldr x25, [sp, #832]
    ldr x26, [sp, #824]
    ldr x27, [sp, #816]
    ldr x28, [sp, #808]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_2:
.L7_3:
    sub x9, x29, #184
    str x9, [sp, #80]
    ldr x9, [sp, #80]
    add x14, x9, #8
    ldr x14, [x14]
    movz x10, #28
    cmp x14, x10
    b.hs .L7_6
.L7_5:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, lb_io_full
    add x15, x15, :lo12:lb_io_full
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_32
    add x15, x15, :lo12:.Ltext_32
    sub x12, x29, #216
    str x15, [x12]
    add x15, x12, #8
    movz x9, #38
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
    ldr x19, [sp, #880]
    ldr x20, [sp, #872]
    ldr x21, [sp, #864]
    ldr x22, [sp, #856]
    ldr x23, [sp, #848]
    ldr x24, [sp, #840]
    ldr x25, [sp, #832]
    ldr x26, [sp, #824]
    ldr x27, [sp, #816]
    ldr x28, [sp, #808]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_6:
.L7_7:
    sub x9, x29, #344
    str x9, [sp, #72]
    ldr x11, [sp, #72]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    stp xzr, xzr, [x11, #112]
    sub x14, x29, #360
    ldr x9, [sp, #72]
    str x9, [x14]
    add x15, x14, #8
    movz x9, #128
    str x9, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    movz x4, #24
    bl lb_memory_copy_0g1_u8
.L7_9:
    ldr x9, [sp, #72]
    add x14, x9, #24
    sub x15, x29, #376
    str x14, [x15]
    add x14, x15, #8
    movz x9, #104
    str x9, [x14]
    adrp x14, lb_net_14websocket_guid
    add x14, x14, :lo12:lb_net_14websocket_guid
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    movz x4, #36
    bl lb_memory_copy_0g1_u8
    ldr x9, [sp, #72]
    add x14, x9, #60
    movz x9, #128
    strb w9, [x14]
    ldr x9, [sp, #72]
    add x14, x9, #126
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #72]
    add x14, x9, #127
    movz x9, #224
    strb w9, [x14]
    sub x19, x29, #396
    sub x14, x29, #416
    movz x9, #8961
    movk x9, #26437, lsl #16
    str w9, [x14]
    add x15, x14, #4
    movz x9, #43913
    movk x9, #61389, lsl #16
    str w9, [x15]
    add x15, x14, #8
    movz x9, #56574
    movk x9, #39098, lsl #16
    str w9, [x15]
    add x15, x14, #12
    movz x9, #21622
    movk x9, #4146, lsl #16
    str w9, [x15]
    add x15, x14, #16
    movz x9, #57840
    movk x9, #50130, lsl #16
    str w9, [x15]
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr w16, [x10, #16]
    str w16, [x11, #16]
    sub x9, x29, #736
    str x9, [sp, #64]
    add x23, x19, #4
    add x9, x19, #8
    str x9, [sp, #56]
    add x9, x19, #12
    str x9, [sp, #48]
    add x9, x19, #16
    str x9, [sp, #40]
    mov x9, #0
    str x9, [sp, #24]
.L7_11:
    ldr x9, [sp, #24]
    movz x10, #2
    cmp x9, x10
    b.ge .L7_14
.L7_12:
    ldr x0, [sp, #64]
    mov x1, #0
    movz x2, #320
    bl _memset
    mov x9, #0
    mov x14, x9
.L7_15:
    movz x10, #16
    cmp x14, x10
    b.ge .L7_18
.L7_16:
    ldr x9, [sp, #24]
    movz x10, #64
    smulh x11, x9, x10
    mul x9, x9, x10
    cmp x11, x9, asr #63
    b.eq 1f
    adrp x0, .Ltext_37
    add x0, x0, :lo12:.Ltext_37
    adrp x1, .Ltext_99
    add x1, x1, :lo12:.Ltext_99
    bl lb_core_7trap_at
1:
    mov x15, x9
    mov x9, x14
    movz x10, #4
    smulh x11, x9, x10
    mul x9, x9, x10
    cmp x11, x9, asr #63
    b.eq 1f
    adrp x0, .Ltext_37
    add x0, x0, :lo12:.Ltext_37
    adrp x1, .Ltext_99
    add x1, x1, :lo12:.Ltext_99
    bl lb_core_7trap_at
1:
    mov x12, x9
    mov x9, x15
    mov x10, x12
    adds x9, x9, x10
    b.vc 1f
    adrp x0, .Ltext_37
    add x0, x0, :lo12:.Ltext_37
    adrp x1, .Ltext_99
    add x1, x1, :lo12:.Ltext_99
    bl lb_core_7trap_at
1:
    mov x15, x9
    movz x10, #80
    cmp x14, x10
    b.lo 1f
    adrp x0, .Ltext_38
    add x0, x0, :lo12:.Ltext_38
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    lsl x12, x14, #2
    ldr x9, [sp, #64]
    add x13, x9, x12
    movz x10, #128
    cmp x15, x10
    b.lo 1f
    adrp x0, .Ltext_38
    add x0, x0, :lo12:.Ltext_38
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    ldr x9, [sp, #72]
    add x12, x9, x15
    ldrb w12, [x12]
    mov w12, w12
.L7_20:
    lsl w20, w12, #24
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.vc 1f
    adrp x0, .Ltext_38
    add x0, x0, :lo12:.Ltext_38
    adrp x1, .Ltext_99
    add x1, x1, :lo12:.Ltext_99
    bl lb_core_7trap_at
1:
    mov x28, x9
    movz x10, #128
    cmp x28, x10
    b.lo 1f
    adrp x0, .Ltext_38
    add x0, x0, :lo12:.Ltext_38
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    ldr x9, [sp, #72]
    add x28, x9, x28
    ldrb w28, [x28]
    mov w28, w28
.L7_22:
    lsl w12, w28, #16
    orr w27, w12, w20
    mov x9, x15
    movz x10, #2
    adds x9, x9, x10
    b.vc 1f
    adrp x0, .Ltext_38
    add x0, x0, :lo12:.Ltext_38
    adrp x1, .Ltext_99
    add x1, x1, :lo12:.Ltext_99
    bl lb_core_7trap_at
1:
    mov x12, x9
    movz x10, #128
    cmp x12, x10
    b.lo 1f
    adrp x0, .Ltext_38
    add x0, x0, :lo12:.Ltext_38
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    ldr x9, [sp, #72]
    add x12, x9, x12
    ldrb w12, [x12]
    mov w12, w12
.L7_24:
    lsl w20, w12, #8
    orr w20, w20, w27
    mov x9, x15
    movz x10, #3
    adds x9, x9, x10
    b.vc 1f
    adrp x0, .Ltext_38
    add x0, x0, :lo12:.Ltext_38
    adrp x1, .Ltext_99
    add x1, x1, :lo12:.Ltext_99
    bl lb_core_7trap_at
1:
    mov x28, x9
    movz x10, #128
    cmp x28, x10
    b.lo 1f
    adrp x0, .Ltext_38
    add x0, x0, :lo12:.Ltext_38
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    ldr x9, [sp, #72]
    add x28, x9, x28
    ldrb w28, [x28]
    mov w28, w28
    orr w20, w20, w28
    str w20, [x13]
.L7_17:
    add x15, x14, #1
    mov x14, x15
    b .L7_15
.L7_18:
    movz x9, #16
    mov x20, x9
.L7_25:
    movz x10, #80
    cmp x20, x10
    b.ge .L7_28
.L7_26:
    movz x10, #80
    cmp x20, x10
    b.lo 1f
    adrp x0, .Ltext_39
    add x0, x0, :lo12:.Ltext_39
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    lsl x14, x20, #2
    ldr x9, [sp, #64]
    add x27, x9, x14
    mov x9, x20
    movz x10, #3
    subs x9, x9, x10
    b.vc 1f
    adrp x0, .Ltext_39
    add x0, x0, :lo12:.Ltext_39
    adrp x1, .Ltext_99
    add x1, x1, :lo12:.Ltext_99
    bl lb_core_7trap_at
1:
    mov x14, x9
    movz x10, #80
    cmp x14, x10
    b.lo 1f
    adrp x0, .Ltext_39
    add x0, x0, :lo12:.Ltext_39
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    lsl x14, x14, #2
    ldr x9, [sp, #64]
    add x14, x9, x14
    ldr w14, [x14]
    mov x9, x20
    movz x10, #8
    subs x9, x9, x10
    b.vc 1f
    adrp x0, .Ltext_39
    add x0, x0, :lo12:.Ltext_39
    adrp x1, .Ltext_99
    add x1, x1, :lo12:.Ltext_99
    bl lb_core_7trap_at
1:
    mov x15, x9
    movz x10, #80
    cmp x15, x10
    b.lo 1f
    adrp x0, .Ltext_39
    add x0, x0, :lo12:.Ltext_39
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    lsl x15, x15, #2
    ldr x9, [sp, #64]
    add x15, x9, x15
    ldr w15, [x15]
    eor w14, w14, w15
    mov x9, x20
    movz x10, #14
    subs x9, x9, x10
    b.vc 1f
    adrp x0, .Ltext_39
    add x0, x0, :lo12:.Ltext_39
    adrp x1, .Ltext_99
    add x1, x1, :lo12:.Ltext_99
    bl lb_core_7trap_at
1:
    mov x15, x9
    movz x10, #80
    cmp x15, x10
    b.lo 1f
    adrp x0, .Ltext_39
    add x0, x0, :lo12:.Ltext_39
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    lsl x15, x15, #2
    ldr x9, [sp, #64]
    add x15, x9, x15
    ldr w15, [x15]
    eor w14, w14, w15
    mov x9, x20
    movz x10, #16
    subs x9, x9, x10
    b.vc 1f
    adrp x0, .Ltext_39
    add x0, x0, :lo12:.Ltext_39
    adrp x1, .Ltext_99
    add x1, x1, :lo12:.Ltext_99
    bl lb_core_7trap_at
1:
    mov x15, x9
    movz x10, #80
    cmp x15, x10
    b.lo 1f
    adrp x0, .Ltext_39
    add x0, x0, :lo12:.Ltext_39
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    lsl x15, x15, #2
    ldr x9, [sp, #64]
    add x15, x9, x15
    ldr w15, [x15]
    eor w14, w14, w15
    mov x0, x14
    movz x1, #1
    bl lb_net_16websocket_rotate
    mov w14, w0
    str w14, [x27]
.L7_27:
    add x14, x20, #1
    mov x20, x14
    b .L7_25
.L7_28:
    ldr w14, [x19]
    ldr w15, [x23]
    ldr x9, [sp, #56]
    ldr w12, [x9]
    ldr x9, [sp, #48]
    ldr w13, [x9]
    ldr x9, [sp, #40]
    ldr w9, [x9]
    str w9, [sp, #32]
    mov w27, w14
    mov w9, w15
    str w9, [sp, #16]
    mov w21, w12
    mov w22, w13
    ldr w9, [sp, #32]
    str w9, [sp, #8]
    mov x9, #0
    mov x20, x9
.L7_29:
    movz x10, #80
    cmp x20, x10
    b.ge .L7_32
.L7_30:
    movz x10, #20
    cmp x20, x10
    b.ge .L7_34
.L7_33:
    ldr w9, [sp, #16]
    and w14, w9, w21
    ldr w9, [sp, #16]
    movn x10, #0
    eor w15, w9, w10
    and w15, w15, w22
    orr w14, w14, w15
    mov w26, w14
    movz x9, #31129
    movk x9, #23170, lsl #16
    mov w25, w9
    b .L7_35
.L7_34:
    movz x10, #40
    cmp x20, x10
    b.ge .L7_37
.L7_36:
    ldr w9, [sp, #16]
    eor w14, w9, w21
    eor w14, w14, w22
    movz x9, #60321
    movk x9, #28377, lsl #16
    mov w15, w9
    b .L7_38
.L7_37:
    movz x10, #60
    cmp x20, x10
    b.ge .L7_40
.L7_39:
    ldr w9, [sp, #16]
    and w14, w9, w21
    ldr w9, [sp, #16]
    and w15, w9, w22
    orr w14, w14, w15
    and w15, w21, w22
    orr w14, w14, w15
    movz x9, #48348
    movk x9, #36635, lsl #16
    mov w15, w9
    b .L7_41
.L7_40:
    ldr w9, [sp, #16]
    eor w14, w9, w21
    eor w14, w14, w22
    movz x9, #49622
    movk x9, #51810, lsl #16
    mov w15, w9
.L7_41:
.L7_38:
    mov w26, w14
    mov w25, w15
.L7_35:
    mov x0, x27
    movz x1, #5
    bl lb_net_16websocket_rotate
    mov w14, w0
    add w14, w14, w26
    ldr w10, [sp, #8]
    add w14, w14, w10
    add w14, w14, w25
    movz x10, #80
    cmp x20, x10
    b.lo 1f
    adrp x0, .Ltext_45
    add x0, x0, :lo12:.Ltext_45
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    lsl x15, x20, #2
    ldr x9, [sp, #64]
    add x15, x9, x15
    ldr w15, [x15]
    add w24, w14, w15
    ldr x0, [sp, #16]
    movz x1, #30
    bl lb_net_16websocket_rotate
    mov w14, w0
.L7_31:
    add x15, x20, #1
    mov w12, w24
    mov w13, w27
    mov w25, w14
    mov w26, w21
    mov w28, w22
    mov w27, w12
    mov w9, w13
    str w9, [sp, #16]
    mov w21, w25
    mov w22, w26
    mov w9, w28
    str w9, [sp, #8]
    mov x20, x15
    b .L7_29
.L7_32:
    ldr w14, [x19]
    add w14, w14, w27
    str w14, [x19]
    ldr w14, [x23]
    ldr w10, [sp, #16]
    add w14, w14, w10
    str w14, [x23]
    ldr x9, [sp, #56]
    ldr w14, [x9]
    add w14, w14, w21
    ldr x10, [sp, #56]
    str w14, [x10]
    ldr x9, [sp, #48]
    ldr w14, [x9]
    add w14, w14, w22
    ldr x10, [sp, #48]
    str w14, [x10]
    ldr x9, [sp, #40]
    ldr w14, [x9]
    ldr w10, [sp, #8]
    add w14, w14, w10
    ldr x10, [sp, #40]
    str w14, [x10]
.L7_13:
    ldr x9, [sp, #24]
    add x14, x9, #1
    mov x9, x14
    str x9, [sp, #24]
    b .L7_11
.L7_14:
    sub x20, x29, #756
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    str wzr, [x11, #16]
    mov x9, #0
    mov x14, x9
.L7_42:
    movz x10, #5
    cmp x14, x10
    b.ge .L7_45
.L7_43:
    lsl x15, x14, #2
    add x15, x19, x15
    mov x9, #0
    mov x12, x9
.L7_46:
    movz x10, #4
    cmp x12, x10
    b.ge .L7_49
.L7_47:
    mov x9, x14
    movz x10, #4
    smulh x11, x9, x10
    mul x9, x9, x10
    cmp x11, x9, asr #63
    b.eq 1f
    adrp x0, .Ltext_51
    add x0, x0, :lo12:.Ltext_51
    adrp x1, .Ltext_99
    add x1, x1, :lo12:.Ltext_99
    bl lb_core_7trap_at
1:
    mov x13, x9
    mov x9, x13
    mov x10, x12
    adds x9, x9, x10
    b.vc 1f
    adrp x0, .Ltext_51
    add x0, x0, :lo12:.Ltext_51
    adrp x1, .Ltext_99
    add x1, x1, :lo12:.Ltext_99
    bl lb_core_7trap_at
1:
    mov x13, x9
    movz x10, #20
    cmp x13, x10
    b.lo 1f
    adrp x0, .Ltext_51
    add x0, x0, :lo12:.Ltext_51
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    add x21, x20, x13
    movz x10, #5
    cmp x14, x10
    b.lo 1f
    adrp x0, .Ltext_51
    add x0, x0, :lo12:.Ltext_51
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    ldr w22, [x15]
    movz x9, #3
    mov x10, x12
    subs x9, x9, x10
    b.vc 1f
    adrp x0, .Ltext_51
    add x0, x0, :lo12:.Ltext_51
    adrp x1, .Ltext_99
    add x1, x1, :lo12:.Ltext_99
    bl lb_core_7trap_at
1:
    mov x13, x9
    mov x9, x13
    movz x10, #8
    smulh x11, x9, x10
    mul x9, x9, x10
    cmp x11, x9, asr #63
    b.eq 1f
    adrp x0, .Ltext_51
    add x0, x0, :lo12:.Ltext_51
    adrp x1, .Ltext_99
    add x1, x1, :lo12:.Ltext_99
    bl lb_core_7trap_at
1:
    mov x23, x9
    mov w13, w23
    movz x10, #32
    cmp x13, x10
    b.lo .L7_51
.L7_50:
    adrp x0, .Ltext_51
    add x0, x0, :lo12:.Ltext_51
    adrp x1, .Ltext_19
    add x1, x1, :lo12:.Ltext_19
    bl lb_core_7trap_at
.L7_51:
    lsr w13, w22, w23
    mov w13, w13
    and w13, w13, #255
    strb w13, [x21]
.L7_48:
    add x13, x12, #1
    mov x12, x13
    b .L7_46
.L7_49:
.L7_44:
    add x15, x14, #1
    mov x14, x15
    b .L7_42
.L7_45:
    sub x14, x29, #776
    str x20, [x14]
    add x15, x14, #8
    movz x9, #20
    str x9, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #80]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #824
    bl lb_net_16websocket_base64
    sub x15, x29, #824
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, .L7_53
    b .L7_52
.L7_53:
    add x14, x15, #16
    sub x19, x29, #152
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
    ldr x19, [sp, #880]
    ldr x20, [sp, #872]
    ldr x21, [sp, #864]
    ldr x22, [sp, #856]
    ldr x23, [sp, #848]
    ldr x24, [sp, #840]
    ldr x25, [sp, #832]
    ldr x26, [sp, #824]
    ldr x27, [sp, #816]
    ldr x28, [sp, #808]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_52:
    sub x19, x29, #152
    mov x10, x15
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
    ldr x19, [sp, #880]
    ldr x20, [sp, #872]
    ldr x21, [sp, #864]
    ldr x22, [sp, #856]
    ldr x23, [sp, #848]
    ldr x24, [sp, #840]
    ldr x25, [sp, #832]
    ldr x26, [sp, #824]
    ldr x27, [sp, #816]
    ldr x28, [sp, #808]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_20websocket_accept_key, .-lb_net_20websocket_accept_key

    .p2align 2
    .globl lb_net_23websocket_check_request
    .type lb_net_23websocket_check_request, %function
lb_net_23websocket_check_request:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #736
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #704]
    str x20, [sp, #696]
    str x21, [sp, #688]
    str x22, [sp, #680]
    str x23, [sp, #672]
    sub x16, x29, #208
    str x0, [x16]
    sub x0, x29, #208
    ldr x1, [x0]
    movz x2, #96
    bl _memcpy
    sub x19, x29, #208
    add x14, x19, #48
    ldrh w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L8_63
    b .L8_4
.L8_63:
    mov w15, w14
    b .L8_5
.L8_4:
    adrp x14, .Ltext_53
    add x14, x14, :lo12:.Ltext_53
    sub x15, x29, #224
    str x14, [x15]
    add x15, x15, #8
    movz x9, #3
    str x9, [x15]
    add x15, x19, #8
    ldr x15, [x15]
    movz x10, #3
    cmp x15, x10
    cset w12, eq
    cbnz w12, .L8_6
    b .L8_64
.L8_64:
    mov w14, w12
    b .L8_7
.L8_6:
    ldr x12, [x19]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl memcmp
    mov w12, w0
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov w14, w12
.L8_7:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    cset w15, eq
.L8_5:
    and w14, w15, #255
    cbnz w14, .L8_65
    b .L8_8
.L8_65:
    mov w15, w14
    b .L8_9
.L8_8:
    add x13, x19, #32
    adrp x14, .Ltext_54
    add x14, x14, :lo12:.Ltext_54
    sub x15, x29, #240
    str x14, [x15]
    add x15, x15, #8
    movz x9, #8
    str x9, [x15]
    add x15, x13, #8
    ldr x15, [x15]
    movz x10, #8
    cmp x15, x10
    cset w12, eq
    cbnz w12, .L8_10
    b .L8_66
.L8_66:
    mov w14, w12
    b .L8_11
.L8_10:
    ldr x12, [x13]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl memcmp
    mov w12, w0
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov w14, w12
.L8_11:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    cset w15, eq
.L8_9:
    and w14, w15, #255
    cbnz w14, .L8_67
    b .L8_12
.L8_67:
    mov w15, w14
    b .L8_13
.L8_12:
    adrp x14, .Ltext_55
    add x14, x14, :lo12:.Ltext_55
    sub x15, x29, #256
    str x14, [x15]
    add x14, x15, #8
    movz x9, #4
    str x9, [x14]
    mov x0, x19
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_net_HttpHead_11field_count
    mov x14, x0
    movz x10, #1
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L8_13:
    and w14, w15, #255
    cbnz w14, .L8_1
    b .L8_2
.L8_1:
    sub x19, x29, #112
    add x14, x19, #16
    adrp x15, lb_net_17websocket_invalid
    add x15, x15, :lo12:lb_net_17websocket_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_56
    add x15, x15, :lo12:.Ltext_56
    sub x12, x29, #272
    str x15, [x12]
    add x15, x12, #8
    movz x9, #48
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
    ldr x19, [sp, #704]
    ldr x20, [sp, #696]
    ldr x21, [sp, #688]
    ldr x22, [sp, #680]
    ldr x23, [sp, #672]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_14:
    b .L8_3
.L8_2:
.L8_3:
    adrp x14, .Ltext_57
    add x14, x14, :lo12:.Ltext_57
    sub x15, x29, #288
    str x14, [x15]
    add x14, x15, #8
    movz x9, #10
    str x9, [x14]
    adrp x20, .Ltext_58
    add x20, x20, :lo12:.Ltext_58
    sub x14, x29, #304
    str x20, [x14]
    add x12, x14, #8
    movz x9, #7
    str x9, [x12]
    mov x0, x19
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x9, x14
    ldr x3, [x9]
    ldr x4, [x9, #8]
    sub x8, x29, #344
    bl lb_net_HttpHead_9has_token
    sub x15, x29, #344
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L8_19
    b .L8_18
.L8_19:
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #704]
    ldr x20, [sp, #696]
    ldr x21, [sp, #688]
    ldr x22, [sp, #680]
    ldr x23, [sp, #672]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_20:
.L8_18:
    ldrb w14, [x15]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L8_68
    b .L8_21
.L8_68:
    mov w15, w14
    b .L8_22
.L8_21:
    sub x14, x29, #360
    str x20, [x14]
    add x15, x14, #8
    movz x9, #7
    str x9, [x15]
    adrp x15, .Ltext_59
    add x15, x15, :lo12:.Ltext_59
    sub x12, x29, #376
    str x15, [x12]
    add x15, x12, #8
    movz x9, #9
    str x9, [x15]
    mov x0, x19
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x9, x12
    ldr x3, [x9]
    ldr x4, [x9, #8]
    sub x8, x29, #416
    bl lb_net_HttpHead_9has_token
    sub x15, x29, #416
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L8_24
    b .L8_23
.L8_24:
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #704]
    ldr x20, [sp, #696]
    ldr x21, [sp, #688]
    ldr x22, [sp, #680]
    ldr x23, [sp, #672]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_25:
.L8_23:
    ldrb w14, [x15]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov w15, w14
.L8_22:
    and w14, w15, #255
    cbnz w14, .L8_15
    b .L8_16
.L8_15:
    sub x19, x29, #112
    add x14, x19, #16
    adrp x15, lb_net_17websocket_invalid
    add x15, x15, :lo12:lb_net_17websocket_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_60
    add x15, x15, :lo12:.Ltext_60
    sub x12, x29, #432
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
    ldr x19, [sp, #704]
    ldr x20, [sp, #696]
    ldr x21, [sp, #688]
    ldr x22, [sp, #680]
    ldr x23, [sp, #672]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_26:
    b .L8_17
.L8_16:
.L8_17:
    adrp x20, .Ltext_61
    add x20, x20, :lo12:.Ltext_61
    sub x14, x29, #448
    str x20, [x14]
    add x15, x14, #8
    movz x9, #21
    str x9, [x15]
    mov x0, x19
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_net_HttpHead_11field_count
    mov x14, x0
    movz x10, #1
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L8_69
    b .L8_30
.L8_69:
    mov w15, w14
    b .L8_31
.L8_30:
    sub x14, x29, #464
    str x20, [x14]
    add x15, x14, #8
    movz x9, #21
    str x9, [x15]
    mov x0, x19
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #488
    bl lb_net_HttpHead_field
    sub x22, x29, #488
    adrp x21, .Ltext_62
    add x21, x21, :lo12:.Ltext_62
    sub x14, x29, #504
    str x21, [x14]
    add x15, x14, #8
    movz x9, #2
    str x9, [x15]
    sub x23, x29, #528
    mov x10, x14
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x23, #16
    movz x9, #1
    strb w9, [x14]
    add x15, x22, #16
    ldrb w15, [x15]
    ldrb w14, [x14]
    cmp w15, w14
    cset w12, eq
    and w14, w15, w14
    cbnz w14, .L8_32
    b .L8_70
.L8_70:
    mov w14, w12
    b .L8_33
.L8_32:
    add x14, x22, #8
    ldr x14, [x14]
    movz x10, #2
    cmp x14, x10
    cset w15, eq
    cbnz w15, .L8_34
    b .L8_71
.L8_71:
    mov w14, w15
    b .L8_35
.L8_34:
    ldr x15, [x22]
    mov x0, x15
    mov x1, x21
    mov x2, x14
    bl memcmp
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
.L8_35:
    and w15, w14, #255
    mov w14, w15
.L8_33:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    cset w15, eq
.L8_31:
    and w14, w15, #255
    cbnz w14, .L8_27
    b .L8_28
.L8_27:
    sub x19, x29, #112
    add x14, x19, #16
    adrp x15, lb_net_17websocket_invalid
    add x15, x15, :lo12:lb_net_17websocket_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_63
    add x15, x15, :lo12:.Ltext_63
    sub x12, x29, #544
    str x15, [x12]
    add x15, x12, #8
    movz x9, #29
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
    ldr x19, [sp, #704]
    ldr x20, [sp, #696]
    ldr x21, [sp, #688]
    ldr x22, [sp, #680]
    ldr x23, [sp, #672]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_36:
    b .L8_29
.L8_28:
.L8_29:
    adrp x20, .Ltext_64
    add x20, x20, :lo12:.Ltext_64
    sub x14, x29, #560
    str x20, [x14]
    add x15, x14, #8
    movz x9, #17
    str x9, [x15]
    mov x0, x19
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_net_HttpHead_11field_count
    mov x14, x0
    movz x10, #1
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L8_38
.L8_37:
    sub x19, x29, #112
    add x14, x19, #16
    adrp x15, lb_net_17websocket_invalid
    add x15, x15, :lo12:lb_net_17websocket_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_65
    add x15, x15, :lo12:.Ltext_65
    sub x12, x29, #576
    str x15, [x12]
    add x15, x12, #8
    movz x9, #31
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
    ldr x19, [sp, #704]
    ldr x20, [sp, #696]
    ldr x21, [sp, #688]
    ldr x22, [sp, #680]
    ldr x23, [sp, #672]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_40:
    b .L8_39
.L8_38:
.L8_39:
    add x14, x19, #56
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #608
    bl lb_net_19websocket_protocols
    sub x15, x29, #608
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L8_42
    b .L8_41
.L8_42:
    sub x19, x29, #112
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
    ldr x19, [sp, #704]
    ldr x20, [sp, #696]
    ldr x21, [sp, #688]
    ldr x22, [sp, #680]
    ldr x23, [sp, #672]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_43:
.L8_41:
    sub x21, x29, #624
    sub x14, x29, #640
    str x20, [x14]
    add x15, x14, #8
    movz x9, #17
    str x9, [x15]
    mov x0, x19
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #664
    bl lb_net_HttpHead_field
    sub x15, x29, #664
    add x14, x15, #16
    ldrb w14, [x14]
    cbnz w14, .L8_44
    b .L8_45
.L8_44:
    sub x20, x29, #680
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L8_46
.L8_45:
    sub x19, x29, #112
    add x14, x19, #16
    adrp x15, lb_net_17websocket_invalid
    add x15, x15, :lo12:lb_net_17websocket_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_66
    add x15, x15, :lo12:.Ltext_66
    sub x12, x29, #696
    str x15, [x12]
    add x15, x12, #8
    movz x9, #21
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
    ldr x19, [sp, #704]
    ldr x20, [sp, #696]
    ldr x21, [sp, #688]
    ldr x22, [sp, #680]
    ldr x23, [sp, #672]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_47:
.L8_46:
    mov x10, x20
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_net_19websocket_key_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L8_49
.L8_48:
    sub x19, x29, #112
    add x14, x19, #16
    adrp x15, lb_net_17websocket_invalid
    add x15, x15, :lo12:lb_net_17websocket_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_67
    add x15, x15, :lo12:.Ltext_67
    sub x12, x29, #712
    str x15, [x12]
    add x15, x12, #8
    movz x9, #29
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
    ldr x19, [sp, #704]
    ldr x20, [sp, #696]
    ldr x21, [sp, #688]
    ldr x22, [sp, #680]
    ldr x23, [sp, #672]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_51:
    b .L8_50
.L8_49:
.L8_50:
    add x14, x19, #72
    ldrb w14, [x14]
    movz x10, #2
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L8_72
    b .L8_55
.L8_72:
    mov w12, w15
    b .L8_56
.L8_55:
    movz x10, #3
    cmp w14, w10
    cset w12, eq
.L8_56:
    and w15, w12, #255
    cbnz w15, .L8_73
    b .L8_57
.L8_73:
    mov w14, w15
    b .L8_58
.L8_57:
    movz x10, #1
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L8_59
    b .L8_74
.L8_74:
    mov w14, w15
    b .L8_60
.L8_59:
    add x14, x19, #80
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
.L8_60:
    and w15, w14, #255
    mov w14, w15
.L8_58:
    and w15, w14, #255
    cbnz w15, .L8_52
    b .L8_53
.L8_52:
    sub x19, x29, #112
    add x14, x19, #16
    adrp x15, lb_net_17websocket_invalid
    add x15, x15, :lo12:lb_net_17websocket_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_68
    add x15, x15, :lo12:.Ltext_68
    sub x12, x29, #728
    str x15, [x12]
    add x15, x12, #8
    movz x9, #45
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
    ldr x19, [sp, #704]
    ldr x20, [sp, #696]
    ldr x21, [sp, #688]
    ldr x22, [sp, #680]
    ldr x23, [sp, #672]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_61:
    b .L8_54
.L8_53:
.L8_54:
    sub x19, x29, #112
    mov x10, x21
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
    ldr x19, [sp, #704]
    ldr x20, [sp, #696]
    ldr x21, [sp, #688]
    ldr x22, [sp, #680]
    ldr x23, [sp, #672]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_62:
    adrp x0, .Ltext_69
    add x0, x0, :lo12:.Ltext_69
    adrp x1, .Ltext_2
    add x1, x1, :lo12:.Ltext_2
    bl lb_core_7trap_at

    .size lb_net_23websocket_check_request, .-lb_net_23websocket_check_request

    .p2align 2
    .globl lb_net_24websocket_check_response
    .type lb_net_24websocket_check_response, %function
lb_net_24websocket_check_response:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #864
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #832]
    str x20, [sp, #824]
    str x21, [sp, #816]
    str x22, [sp, #808]
    str x23, [sp, #800]
    str x24, [sp, #792]
    str x25, [sp, #784]
    str x26, [sp, #776]
    sub x16, x29, #232
    str x0, [x16]
    sub x16, x29, #248
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #264
    str x3, [x16]
    str x4, [x16, #8]
    sub x0, x29, #232
    ldr x1, [x0]
    movz x2, #96
    bl _memcpy
    sub x19, x29, #232
    add x14, x19, #48
    ldrh w14, [x14]
    movz x10, #101
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L9_57
    b .L9_4
.L9_57:
    mov w15, w14
    b .L9_5
.L9_4:
    add x13, x19, #32
    adrp x14, .Ltext_54
    add x14, x14, :lo12:.Ltext_54
    sub x15, x29, #280
    str x14, [x15]
    add x15, x15, #8
    movz x9, #8
    str x9, [x15]
    add x15, x13, #8
    ldr x15, [x15]
    movz x10, #8
    cmp x15, x10
    cset w12, eq
    cbnz w12, .L9_6
    b .L9_58
.L9_58:
    mov w14, w12
    b .L9_7
.L9_6:
    ldr x12, [x13]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl memcmp
    mov w12, w0
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov w14, w12
.L9_7:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    cset w15, eq
.L9_5:
    and w14, w15, #255
    cbnz w14, .L9_59
    b .L9_8
.L9_59:
    mov w15, w14
    b .L9_9
.L9_8:
    adrp x14, .Ltext_57
    add x14, x14, :lo12:.Ltext_57
    sub x15, x29, #296
    str x14, [x15]
    add x14, x15, #8
    movz x9, #10
    str x9, [x14]
    adrp x14, .Ltext_58
    add x14, x14, :lo12:.Ltext_58
    sub x12, x29, #312
    str x14, [x12]
    add x14, x12, #8
    movz x9, #7
    str x9, [x14]
    mov x0, x19
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x9, x12
    ldr x3, [x9]
    ldr x4, [x9, #8]
    sub x8, x29, #352
    bl lb_net_HttpHead_9has_token
    sub x15, x29, #352
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L9_11
    b .L9_10
.L9_11:
    add x14, x15, #8
    sub x19, x29, #136
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
    ldr x19, [sp, #832]
    ldr x20, [sp, #824]
    ldr x21, [sp, #816]
    ldr x22, [sp, #808]
    ldr x23, [sp, #800]
    ldr x24, [sp, #792]
    ldr x25, [sp, #784]
    ldr x26, [sp, #776]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_12:
.L9_10:
    ldrb w14, [x15]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov w15, w14
.L9_9:
    and w14, w15, #255
    cbnz w14, .L9_60
    b .L9_13
.L9_60:
    mov w15, w14
    b .L9_14
.L9_13:
    adrp x14, .Ltext_58
    add x14, x14, :lo12:.Ltext_58
    sub x15, x29, #368
    str x14, [x15]
    add x14, x15, #8
    movz x9, #7
    str x9, [x14]
    adrp x14, .Ltext_59
    add x14, x14, :lo12:.Ltext_59
    sub x12, x29, #384
    str x14, [x12]
    add x14, x12, #8
    movz x9, #9
    str x9, [x14]
    mov x0, x19
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x9, x12
    ldr x3, [x9]
    ldr x4, [x9, #8]
    sub x8, x29, #424
    bl lb_net_HttpHead_9has_token
    sub x15, x29, #424
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L9_16
    b .L9_15
.L9_16:
    add x14, x15, #8
    sub x19, x29, #136
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
    ldr x19, [sp, #832]
    ldr x20, [sp, #824]
    ldr x21, [sp, #816]
    ldr x22, [sp, #808]
    ldr x23, [sp, #800]
    ldr x24, [sp, #792]
    ldr x25, [sp, #784]
    ldr x26, [sp, #776]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_17:
.L9_15:
    ldrb w14, [x15]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov w15, w14
.L9_14:
    and w14, w15, #255
    cbnz w14, .L9_1
    b .L9_2
.L9_1:
    sub x19, x29, #136
    add x14, x19, #16
    adrp x15, lb_net_17websocket_invalid
    add x15, x15, :lo12:lb_net_17websocket_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_70
    add x15, x15, :lo12:.Ltext_70
    sub x12, x29, #440
    str x15, [x12]
    add x15, x12, #8
    movz x9, #34
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
    ldr x19, [sp, #832]
    ldr x20, [sp, #824]
    ldr x21, [sp, #816]
    ldr x22, [sp, #808]
    ldr x23, [sp, #800]
    ldr x24, [sp, #792]
    ldr x25, [sp, #784]
    ldr x26, [sp, #776]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_18:
    b .L9_3
.L9_2:
.L9_3:
    sub x20, x29, #468
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str wzr, [x11, #24]
    sub x21, x29, #488
    sub x14, x29, #248
    sub x15, x29, #504
    str x20, [x15]
    add x12, x15, #8
    movz x9, #28
    str x9, [x12]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #552
    bl lb_net_20websocket_accept_key
    sub x15, x29, #552
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, .L9_20
    b .L9_19
.L9_20:
    add x14, x15, #16
    sub x19, x29, #136
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
    ldr x19, [sp, #832]
    ldr x20, [sp, #824]
    ldr x21, [sp, #816]
    ldr x22, [sp, #808]
    ldr x23, [sp, #800]
    ldr x24, [sp, #792]
    ldr x25, [sp, #784]
    ldr x26, [sp, #776]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_21:
.L9_19:
    mov x10, x15
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x20, .Ltext_71
    add x20, x20, :lo12:.Ltext_71
    sub x14, x29, #568
    str x20, [x14]
    add x12, x14, #8
    movz x9, #20
    str x9, [x12]
    mov x0, x19
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_net_HttpHead_11field_count
    mov x14, x0
    movz x10, #1
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L9_61
    b .L9_25
.L9_61:
    mov w15, w14
    b .L9_26
.L9_25:
    sub x14, x29, #584
    str x20, [x14]
    add x15, x14, #8
    movz x9, #20
    str x9, [x15]
    mov x0, x19
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #608
    bl lb_net_HttpHead_field
    sub x22, x29, #608
    sub x23, x29, #632
    mov x10, x21
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x23, #16
    movz x9, #1
    strb w9, [x14]
    add x15, x22, #16
    ldrb w15, [x15]
    ldrb w14, [x14]
    cmp w15, w14
    cset w12, eq
    and w14, w15, w14
    cbnz w14, .L9_27
    b .L9_62
.L9_62:
    mov w14, w12
    b .L9_28
.L9_27:
    add x14, x22, #8
    ldr x14, [x14]
    add x15, x23, #8
    ldr x15, [x15]
    cmp x14, x15
    cset w15, eq
    cbnz w15, .L9_29
    b .L9_63
.L9_63:
    mov w14, w15
    b .L9_30
.L9_29:
    ldr x15, [x22]
    ldr x12, [x23]
    mov x0, x15
    mov x1, x12
    mov x2, x14
    bl memcmp
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
.L9_30:
    and w15, w14, #255
    mov w14, w15
.L9_28:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    cset w15, eq
.L9_26:
    and w14, w15, #255
    cbnz w14, .L9_22
    b .L9_23
.L9_22:
    sub x19, x29, #136
    add x14, x19, #16
    adrp x15, lb_net_17websocket_invalid
    add x15, x15, :lo12:lb_net_17websocket_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_72
    add x15, x15, :lo12:.Ltext_72
    sub x12, x29, #648
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #832]
    ldr x20, [sp, #824]
    ldr x21, [sp, #816]
    ldr x22, [sp, #808]
    ldr x23, [sp, #800]
    ldr x24, [sp, #792]
    ldr x25, [sp, #784]
    ldr x26, [sp, #776]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_31:
    b .L9_24
.L9_23:
.L9_24:
    adrp x14, .Ltext_73
    add x14, x14, :lo12:.Ltext_73
    sub x15, x29, #664
    str x14, [x15]
    add x14, x15, #8
    movz x9, #24
    str x9, [x14]
    mov x0, x19
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_net_HttpHead_11field_count
    mov x14, x0
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L9_64
    b .L9_35
.L9_64:
    mov w15, w14
    b .L9_36
.L9_35:
    adrp x14, .Ltext_74
    add x14, x14, :lo12:.Ltext_74
    sub x15, x29, #680
    str x14, [x15]
    add x14, x15, #8
    movz x9, #22
    str x9, [x14]
    mov x0, x19
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_net_HttpHead_11field_count
    mov x14, x0
    movz x10, #1
    cmp x14, x10
    cset w15, hi
.L9_36:
    and w14, w15, #255
    cbnz w14, .L9_32
    b .L9_33
.L9_32:
    sub x19, x29, #136
    add x14, x19, #16
    adrp x15, lb_net_17websocket_invalid
    add x15, x15, :lo12:lb_net_17websocket_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_75
    add x15, x15, :lo12:.Ltext_75
    sub x12, x29, #696
    str x15, [x12]
    add x15, x12, #8
    movz x9, #62
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
    ldr x19, [sp, #832]
    ldr x20, [sp, #824]
    ldr x21, [sp, #816]
    ldr x22, [sp, #808]
    ldr x23, [sp, #800]
    ldr x24, [sp, #792]
    ldr x25, [sp, #784]
    ldr x26, [sp, #776]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_37:
    b .L9_34
.L9_33:
.L9_34:
    sub x20, x29, #712
    adrp x14, .Ltext_74
    add x14, x14, :lo12:.Ltext_74
    sub x15, x29, #728
    str x14, [x15]
    add x14, x15, #8
    movz x9, #22
    str x9, [x14]
    mov x0, x19
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #752
    bl lb_net_HttpHead_field
    sub x15, x29, #752
    add x14, x15, #16
    ldrb w14, [x14]
    cbnz w14, .L9_38
    b .L9_39
.L9_38:
    sub x19, x29, #768
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L9_40
.L9_39:
    adrp x14, .Ltext_76
    add x14, x14, :lo12:.Ltext_76
    sub x15, x29, #784
    str x14, [x15]
    add x14, x15, #8
    mov x9, #0
    str x9, [x14]
    sub x19, x29, #136
    mov x10, x15
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
    ldr x19, [sp, #832]
    ldr x20, [sp, #824]
    ldr x21, [sp, #816]
    ldr x22, [sp, #808]
    ldr x23, [sp, #800]
    ldr x24, [sp, #792]
    ldr x25, [sp, #784]
    ldr x26, [sp, #776]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_41:
.L9_40:
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_net_10http_token
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L9_43
.L9_42:
    sub x19, x29, #136
    add x14, x19, #16
    adrp x15, lb_net_17websocket_invalid
    add x15, x15, :lo12:lb_net_17websocket_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_77
    add x15, x15, :lo12:.Ltext_77
    sub x12, x29, #800
    str x15, [x12]
    add x15, x12, #8
    movz x9, #38
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
    ldr x19, [sp, #832]
    ldr x20, [sp, #824]
    ldr x21, [sp, #816]
    ldr x22, [sp, #808]
    ldr x23, [sp, #800]
    ldr x24, [sp, #792]
    ldr x25, [sp, #784]
    ldr x26, [sp, #776]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_45:
    b .L9_44
.L9_43:
.L9_44:
    sub x19, x29, #808
    mov x9, #0
    str x9, [x19]
    sub x21, x29, #264
    sub x26, x29, #832
    add x22, x26, #16
    sub x23, x29, #848
    add x24, x23, #8
    add x25, x20, #8
.L9_46:
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x19
    sub x8, x29, #832
    bl lb_net_14http_list_next
    ldrb w14, [x22]
    cbnz w14, .L9_49
    b .L9_48
.L9_49:
    mov x10, x26
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
.L9_47:
    ldr x14, [x24]
    ldr x15, [x25]
    cmp x14, x15
    cset w15, eq
    cbnz w15, .L9_53
    b .L9_65
.L9_65:
    mov w14, w15
    b .L9_54
.L9_53:
    ldr x15, [x23]
    ldr x12, [x20]
    mov x0, x15
    mov x1, x12
    mov x2, x14
    bl memcmp
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
.L9_54:
    and w15, w14, #255
    cbnz w15, .L9_50
    b .L9_51
.L9_50:
    sub x19, x29, #136
    mov x10, x20
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
    ldr x19, [sp, #832]
    ldr x20, [sp, #824]
    ldr x21, [sp, #816]
    ldr x22, [sp, #808]
    ldr x23, [sp, #800]
    ldr x24, [sp, #792]
    ldr x25, [sp, #784]
    ldr x26, [sp, #776]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_55:
    b .L9_52
.L9_51:
.L9_52:
    b .L9_46
.L9_48:
    sub x19, x29, #136
    add x14, x19, #16
    adrp x15, lb_net_17websocket_invalid
    add x15, x15, :lo12:lb_net_17websocket_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_78
    add x15, x15, :lo12:.Ltext_78
    sub x12, x29, #864
    str x15, [x12]
    add x15, x12, #8
    movz x9, #60
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
    ldr x19, [sp, #832]
    ldr x20, [sp, #824]
    ldr x21, [sp, #816]
    ldr x22, [sp, #808]
    ldr x23, [sp, #800]
    ldr x24, [sp, #792]
    ldr x25, [sp, #784]
    ldr x26, [sp, #776]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_56:
    adrp x0, .Ltext_79
    add x0, x0, :lo12:.Ltext_79
    adrp x1, .Ltext_2
    add x1, x1, :lo12:.Ltext_2
    bl lb_core_7trap_at

    .size lb_net_24websocket_check_response, .-lb_net_24websocket_check_response

    .p2align 2
    .globl lb_net_24websocket_encode_request
    .type lb_net_24websocket_encode_request, %function
lb_net_24websocket_encode_request:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1136
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #1104]
    str x20, [sp, #1096]
    str x21, [sp, #1088]
    str x22, [sp, #1080]
    str x23, [sp, #1072]
    str x24, [sp, #1064]
    str x25, [sp, #1056]
    sub x16, x29, #144
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #160
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #176
    str x4, [x16]
    str x5, [x16, #8]
    sub x16, x29, #192
    str x6, [x16]
    str x7, [x16, #8]
    ldr x9, [x29, #16]
    sub x16, x29, #208
    str x9, [x16, #0]
    ldr x9, [x29, #24]
    sub x16, x29, #208
    str x9, [x16, #8]
    sub x19, x29, #192
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_net_19websocket_key_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L10_2
.L10_1:
    sub x19, x29, #128
    add x14, x19, #16
    adrp x15, lb_net_17websocket_invalid
    add x15, x15, :lo12:lb_net_17websocket_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_67
    add x15, x15, :lo12:.Ltext_67
    sub x12, x29, #224
    str x15, [x12]
    add x15, x12, #8
    movz x9, #29
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
    ldr x19, [sp, #1104]
    ldr x20, [sp, #1096]
    ldr x21, [sp, #1088]
    ldr x22, [sp, #1080]
    ldr x23, [sp, #1072]
    ldr x24, [sp, #1064]
    ldr x25, [sp, #1056]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_4:
    b .L10_3
.L10_2:
.L10_3:
    sub x20, x29, #384
    sub x21, x29, #544
    sub x22, x29, #576
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    adrp x14, .Ltext_80
    add x14, x14, :lo12:.Ltext_80
    sub x15, x29, #592
    str x14, [x15]
    add x14, x15, #8
    movz x9, #4
    str x9, [x14]
    mov x10, x15
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x14, x29, #160
    add x15, x22, #16
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x10, x22
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    sub x22, x29, #624
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    adrp x14, .Ltext_81
    add x14, x14, :lo12:.Ltext_81
    sub x15, x29, #640
    str x14, [x15]
    add x14, x15, #8
    movz x9, #7
    str x9, [x14]
    mov x10, x15
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, .Ltext_59
    add x14, x14, :lo12:.Ltext_59
    sub x15, x29, #656
    str x14, [x15]
    add x14, x15, #8
    movz x9, #9
    str x9, [x14]
    add x14, x22, #16
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x21, #32
    mov x10, x22
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    sub x22, x29, #688
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    adrp x14, .Ltext_82
    add x14, x14, :lo12:.Ltext_82
    sub x15, x29, #704
    str x14, [x15]
    add x14, x15, #8
    movz x9, #21
    str x9, [x14]
    mov x10, x15
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, .Ltext_62
    add x14, x14, :lo12:.Ltext_62
    sub x15, x29, #720
    str x14, [x15]
    add x14, x15, #8
    movz x9, #2
    str x9, [x14]
    add x14, x22, #16
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x21, #64
    mov x10, x22
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    sub x22, x29, #752
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    adrp x14, .Ltext_83
    add x14, x14, :lo12:.Ltext_83
    sub x15, x29, #768
    str x14, [x15]
    add x14, x15, #8
    movz x9, #17
    str x9, [x14]
    mov x10, x15
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x22, #16
    mov x10, x19
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x21, #96
    mov x10, x22
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    sub x22, x29, #800
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    adrp x14, .Ltext_84
    add x14, x14, :lo12:.Ltext_84
    sub x15, x29, #816
    str x14, [x15]
    add x14, x15, #8
    movz x9, #22
    str x9, [x14]
    mov x10, x15
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x23, x29, #208
    add x14, x22, #16
    mov x10, x23
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x21, #128
    mov x10, x22
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    mov x0, x20
    mov x1, x21
    movz x2, #160
    bl _memcpy
    add x14, x23, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls .L10_6
.L10_5:
    sub x19, x29, #824
    mov x9, #0
    str x9, [x19]
    sub x25, x29, #848
    add x21, x25, #16
    sub x22, x29, #864
    add x24, x22, #8
.L10_8:
    mov x9, x23
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x19
    sub x8, x29, #848
    bl lb_net_14http_list_next
    ldrb w14, [x21]
    cbnz w14, .L10_11
    b .L10_10
.L10_11:
    mov x10, x25
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
.L10_9:
    ldr x14, [x24]
    mov x10, #0
    cmp x14, x10
    cset w14, hi
    cbnz w14, .L10_15
    b .L10_29
.L10_29:
    mov w15, w14
    b .L10_16
.L10_15:
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_net_10http_token
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L10_16:
    and w14, w15, #255
    cbnz w14, .L10_12
    b .L10_13
.L10_12:
    sub x19, x29, #128
    add x14, x19, #16
    adrp x15, lb_net_17websocket_invalid
    add x15, x15, :lo12:lb_net_17websocket_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_85
    add x15, x15, :lo12:.Ltext_85
    sub x12, x29, #880
    str x15, [x12]
    add x15, x12, #8
    movz x9, #37
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
    ldr x19, [sp, #1104]
    ldr x20, [sp, #1096]
    ldr x21, [sp, #1088]
    ldr x22, [sp, #1080]
    ldr x23, [sp, #1072]
    ldr x24, [sp, #1064]
    ldr x25, [sp, #1056]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_17:
    b .L10_14
.L10_13:
.L10_14:
    b .L10_8
.L10_10:
    movz x9, #5
    mov x19, x9
    b .L10_7
.L10_6:
    movz x9, #4
    mov x19, x9
.L10_7:
    movz x10, #6
    cmp x19, x10
    b.lo 1f
    adrp x0, .Ltext_86
    add x0, x0, :lo12:.Ltext_86
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x19
    cset w21, ls
    cbnz w21, .L10_18
    b .L10_19
.L10_19:
    adrp x0, .Ltext_86
    add x0, x0, :lo12:.Ltext_86
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
.L10_18:
    sub x14, x29, #896
    str x20, [x14]
    add x15, x14, #8
    str x19, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #928
    bl lb_net_19websocket_protocols
    sub x15, x29, #928
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L10_21
    b .L10_20
.L10_21:
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
    ldr x19, [sp, #1104]
    ldr x20, [sp, #1096]
    ldr x21, [sp, #1088]
    ldr x22, [sp, #1080]
    ldr x23, [sp, #1072]
    ldr x24, [sp, #1064]
    ldr x25, [sp, #1056]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_22:
.L10_20:
    sub x14, x29, #144
    sub x22, x29, #944
    mov x10, x14
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x23, x29, #1040
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    adrp x14, .Ltext_53
    add x14, x14, :lo12:.Ltext_53
    sub x15, x29, #1056
    str x14, [x15]
    add x14, x15, #8
    movz x9, #3
    str x9, [x14]
    mov x10, x15
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x14, x29, #176
    add x15, x23, #16
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, .Ltext_54
    add x14, x14, :lo12:.Ltext_54
    sub x15, x29, #1072
    str x14, [x15]
    add x14, x15, #8
    movz x9, #8
    str x9, [x14]
    add x14, x23, #32
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    cbnz w21, .L10_23
    b .L10_24
.L10_24:
    adrp x0, .Ltext_87
    add x0, x0, :lo12:.Ltext_87
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
.L10_23:
    sub x14, x29, #1088
    str x20, [x14]
    add x15, x14, #8
    str x19, [x15]
    add x15, x23, #56
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x23, #72
    mov x9, #0
    strb w9, [x14]
    add x14, x23, #88
    movz x9, #1
    strb w9, [x14]
    add x14, x23, #90
    movz x9, #1
    strb w9, [x14]
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x23
    mov x2, x9
    sub x8, x29, #1136
    bl lb_net_16http_encode_head
    sub x15, x29, #1136
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, .L10_26
    b .L10_25
.L10_26:
    add x14, x15, #16
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
    ldr x19, [sp, #1104]
    ldr x20, [sp, #1096]
    ldr x21, [sp, #1088]
    ldr x22, [sp, #1080]
    ldr x23, [sp, #1072]
    ldr x24, [sp, #1064]
    ldr x25, [sp, #1056]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_27:
.L10_25:
    sub x19, x29, #128
    mov x10, x15
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
    ldr x19, [sp, #1104]
    ldr x20, [sp, #1096]
    ldr x21, [sp, #1088]
    ldr x22, [sp, #1080]
    ldr x23, [sp, #1072]
    ldr x24, [sp, #1064]
    ldr x25, [sp, #1056]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_28:
    adrp x0, .Ltext_87
    add x0, x0, :lo12:.Ltext_87
    adrp x1, .Ltext_2
    add x1, x1, :lo12:.Ltext_2
    bl lb_core_7trap_at

    .size lb_net_24websocket_encode_request, .-lb_net_24websocket_encode_request

    .p2align 2
    .globl lb_net_25websocket_encode_response
    .type lb_net_25websocket_encode_response, %function
lb_net_25websocket_encode_response:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1216
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #1184]
    str x20, [sp, #1176]
    str x21, [sp, #1168]
    str x22, [sp, #1160]
    str x23, [sp, #1152]
    str x24, [sp, #1144]
    str x25, [sp, #1136]
    str x26, [sp, #1128]
    str x27, [sp, #1120]
    str x28, [sp, #1112]
    sub x16, x29, #168
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #264
    str x2, [x16]
    sub x16, x29, #280
    str x3, [x16]
    str x4, [x16, #8]
    sub x0, x29, #264
    ldr x1, [x0]
    movz x2, #96
    bl _memcpy
    sub x9, x29, #296
    str x9, [sp, #16]
    sub x19, x29, #264
    mov x9, x19
    mov x0, x9
    sub x8, x29, #344
    bl lb_net_23websocket_check_request
    sub x15, x29, #344
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, .L11_2
    b .L11_1
.L11_2:
    add x14, x15, #16
    sub x19, x29, #152
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
    ldr x19, [sp, #1184]
    ldr x20, [sp, #1176]
    ldr x21, [sp, #1168]
    ldr x22, [sp, #1160]
    ldr x23, [sp, #1152]
    ldr x24, [sp, #1144]
    ldr x25, [sp, #1136]
    ldr x26, [sp, #1128]
    ldr x27, [sp, #1120]
    ldr x28, [sp, #1112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_3:
.L11_1:
    mov x10, x15
    ldr x11, [sp, #16]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x9, x29, #280
    str x9, [sp, #64]
    ldr x9, [sp, #64]
    add x9, x9, #8
    str x9, [sp, #56]
    ldr x9, [sp, #56]
    ldr x14, [x9]
    mov x10, #0
    cmp x14, x10
    b.ls .L11_5
.L11_4:
    ldr x9, [sp, #64]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_net_10http_token
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L11_8
.L11_7:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, lb_net_17websocket_invalid
    add x15, x15, :lo12:lb_net_17websocket_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_77
    add x15, x15, :lo12:.Ltext_77
    sub x12, x29, #360
    str x15, [x12]
    add x15, x12, #8
    movz x9, #38
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
    ldr x19, [sp, #1184]
    ldr x20, [sp, #1176]
    ldr x21, [sp, #1168]
    ldr x22, [sp, #1160]
    ldr x23, [sp, #1152]
    ldr x24, [sp, #1144]
    ldr x25, [sp, #1136]
    ldr x26, [sp, #1128]
    ldr x27, [sp, #1120]
    ldr x28, [sp, #1112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_10:
    b .L11_9
.L11_8:
.L11_9:
    add x14, x19, #56
    ldr x23, [x14]
    add x14, x14, #8
    ldr x24, [x14]
    sub x25, x29, #392
    adrp x26, .Ltext_74
    add x26, x26, :lo12:.Ltext_74
    sub x27, x29, #408
    add x28, x27, #8
    sub x20, x29, #416
    add x9, x25, #16
    str x9, [sp, #48]
    sub x22, x29, #440
    add x9, x22, #16
    str x9, [sp, #40]
    sub x9, x29, #456
    str x9, [sp, #32]
    ldr x9, [sp, #32]
    add x9, x9, #8
    str x9, [sp, #24]
    mov x9, #0
    str w9, [sp, #8]
    mov x9, #0
    mov x21, x9
.L11_11:
    cmp x21, x24
    b.hs .L11_14
.L11_12:
    lsl x14, x21, #5
    add x14, x23, x14
    mov x10, x14
    mov x11, x25
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    str x26, [x27]
    movz x9, #22
    str x9, [x28]
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x27
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl lb_net_10http_equal
    mov w14, w0
    cbnz w14, .L11_15
    b .L11_16
.L11_15:
    mov x9, #0
    str x9, [x20]
    ldr w9, [sp, #8]
    mov w19, w9
.L11_18:
    ldr x9, [sp, #48]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x20
    sub x8, x29, #440
    bl lb_net_14http_list_next
    ldr x9, [sp, #40]
    ldrb w14, [x9]
    cbnz w14, .L11_21
    b .L11_20
.L11_21:
    mov x10, x22
    ldr x11, [sp, #32]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
.L11_19:
    ldr x9, [sp, #24]
    ldr x14, [x9]
    ldr x9, [sp, #56]
    ldr x15, [x9]
    cmp x14, x15
    cset w15, eq
    cbnz w15, .L11_25
    b .L11_43
.L11_43:
    mov w14, w15
    b .L11_26
.L11_25:
    ldr x9, [sp, #32]
    ldr x15, [x9]
    ldr x9, [sp, #64]
    ldr x12, [x9]
    mov x0, x15
    mov x1, x12
    mov x2, x14
    bl memcmp
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
.L11_26:
    and w15, w14, #255
    cbnz w15, .L11_22
    b .L11_23
.L11_22:
    movz x9, #1
    mov w19, w9
    b .L11_24
.L11_23:
.L11_24:
    b .L11_18
.L11_20:
    mov w14, w19
    b .L11_17
.L11_16:
    ldr w9, [sp, #8]
    mov w14, w9
.L11_17:
.L11_13:
    add x15, x21, #1
    mov w9, w14
    str w9, [sp, #8]
    mov x21, x15
    b .L11_11
.L11_14:
    ldr w9, [sp, #8]
    and w14, w9, #255
    mov x10, #0
    cmp w14, w10
    b.ne .L11_28
.L11_27:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, lb_net_17websocket_invalid
    add x15, x15, :lo12:lb_net_17websocket_invalid
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_88
    add x15, x15, :lo12:.Ltext_88
    sub x12, x29, #472
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1184]
    ldr x20, [sp, #1176]
    ldr x21, [sp, #1168]
    ldr x22, [sp, #1160]
    ldr x23, [sp, #1152]
    ldr x24, [sp, #1144]
    ldr x25, [sp, #1136]
    ldr x26, [sp, #1128]
    ldr x27, [sp, #1120]
    ldr x28, [sp, #1112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_30:
    b .L11_29
.L11_28:
.L11_29:
    b .L11_6
.L11_5:
.L11_6:
    sub x19, x29, #500
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str wzr, [x11, #24]
    sub x20, x29, #520
    sub x14, x29, #536
    str x19, [x14]
    add x15, x14, #8
    movz x9, #28
    str x9, [x15]
    ldr x9, [sp, #16]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #584
    bl lb_net_20websocket_accept_key
    sub x15, x29, #584
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, .L11_32
    b .L11_31
.L11_32:
    add x14, x15, #16
    sub x19, x29, #152
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
    ldr x19, [sp, #1184]
    ldr x20, [sp, #1176]
    ldr x21, [sp, #1168]
    ldr x22, [sp, #1160]
    ldr x23, [sp, #1152]
    ldr x24, [sp, #1144]
    ldr x25, [sp, #1136]
    ldr x26, [sp, #1128]
    ldr x27, [sp, #1120]
    ldr x28, [sp, #1112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_33:
.L11_31:
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x19, x29, #680
    sub x21, x29, #776
    sub x22, x29, #808
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    adrp x14, .Ltext_81
    add x14, x14, :lo12:.Ltext_81
    sub x12, x29, #824
    str x14, [x12]
    add x14, x12, #8
    movz x9, #7
    str x9, [x14]
    mov x10, x12
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, .Ltext_59
    add x14, x14, :lo12:.Ltext_59
    sub x12, x29, #840
    str x14, [x12]
    add x14, x12, #8
    movz x9, #9
    str x9, [x14]
    add x14, x22, #16
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x10, x22
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    sub x22, x29, #872
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    adrp x14, .Ltext_89
    add x14, x14, :lo12:.Ltext_89
    sub x12, x29, #888
    str x14, [x12]
    add x14, x12, #8
    movz x9, #20
    str x9, [x14]
    mov x10, x12
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x22, #16
    mov x10, x20
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x21, #32
    mov x10, x22
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    sub x22, x29, #920
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    adrp x14, .Ltext_84
    add x14, x14, :lo12:.Ltext_84
    sub x12, x29, #936
    str x14, [x12]
    add x14, x12, #8
    movz x9, #22
    str x9, [x14]
    mov x10, x12
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x22, #16
    ldr x10, [sp, #64]
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x21, #64
    mov x10, x22
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    mov x10, x21
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldp x16, x17, [x10, #64]
    stp x16, x17, [x11, #64]
    ldp x16, x17, [x10, #80]
    stp x16, x17, [x11, #80]
    ldr x9, [sp, #56]
    ldr x14, [x9]
    mov x10, #0
    cmp x14, x10
    b.ls .L11_35
.L11_34:
    movz x9, #3
    mov x20, x9
    b .L11_36
.L11_35:
    movz x9, #2
    mov x20, x9
.L11_36:
    sub x14, x29, #168
    sub x21, x29, #952
    mov x10, x14
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x22, x29, #1048
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    adrp x14, .Ltext_53
    add x14, x14, :lo12:.Ltext_53
    sub x15, x29, #1064
    str x14, [x15]
    add x14, x15, #8
    movz x9, #3
    str x9, [x14]
    mov x10, x15
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, .Ltext_54
    add x14, x14, :lo12:.Ltext_54
    sub x15, x29, #1080
    str x14, [x15]
    add x14, x15, #8
    movz x9, #8
    str x9, [x14]
    add x14, x22, #32
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x22, #48
    movz x9, #101
    strh w9, [x14]
    movz x10, #4
    cmp x20, x10
    b.lo 1f
    adrp x0, .Ltext_90
    add x0, x0, :lo12:.Ltext_90
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x20
    b.ls .L11_37
.L11_38:
    adrp x0, .Ltext_90
    add x0, x0, :lo12:.Ltext_90
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
.L11_37:
    sub x14, x29, #1096
    str x19, [x14]
    add x15, x14, #8
    str x20, [x15]
    add x15, x22, #56
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x22, #72
    mov x9, #0
    strb w9, [x14]
    add x14, x22, #88
    movz x9, #1
    strb w9, [x14]
    add x14, x22, #90
    movz x9, #1
    strb w9, [x14]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x22
    mov x2, x9
    sub x8, x29, #1144
    bl lb_net_16http_encode_head
    sub x15, x29, #1144
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, .L11_40
    b .L11_39
.L11_40:
    add x14, x15, #16
    sub x19, x29, #152
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
    ldr x19, [sp, #1184]
    ldr x20, [sp, #1176]
    ldr x21, [sp, #1168]
    ldr x22, [sp, #1160]
    ldr x23, [sp, #1152]
    ldr x24, [sp, #1144]
    ldr x25, [sp, #1136]
    ldr x26, [sp, #1128]
    ldr x27, [sp, #1120]
    ldr x28, [sp, #1112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_41:
.L11_39:
    sub x19, x29, #152
    mov x10, x15
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
    ldr x19, [sp, #1184]
    ldr x20, [sp, #1176]
    ldr x21, [sp, #1168]
    ldr x22, [sp, #1160]
    ldr x23, [sp, #1152]
    ldr x24, [sp, #1144]
    ldr x25, [sp, #1136]
    ldr x26, [sp, #1128]
    ldr x27, [sp, #1120]
    ldr x28, [sp, #1112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_42:
    adrp x0, .Ltext_90
    add x0, x0, :lo12:.Ltext_90
    adrp x1, .Ltext_2
    add x1, x1, :lo12:.Ltext_2
    bl lb_core_7trap_at

    .size lb_net_25websocket_encode_response, .-lb_net_25websocket_encode_response

    .p2align 2
    .globl lb_net_19websocket_protocols
    .type lb_net_19websocket_protocols, %function
lb_net_19websocket_protocols:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #2464
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #2432]
    str x20, [sp, #2424]
    str x21, [sp, #2416]
    str x22, [sp, #2408]
    str x23, [sp, #2400]
    str x24, [sp, #2392]
    str x25, [sp, #2384]
    str x26, [sp, #2376]
    str x27, [sp, #2368]
    str x28, [sp, #2360]
    sub x16, x29, #152
    str x0, [x16]
    str x1, [x16, #8]
    sub x9, x29, #2200
    str x9, [sp, #80]
    ldr x0, [sp, #80]
    mov x1, #0
    movz x2, #2048
    bl _memset
    sub x14, x29, #152
    ldr x9, [x14]
    str x9, [sp, #72]
    add x14, x14, #8
    ldr x21, [x14]
    sub x22, x29, #2232
    adrp x23, .Ltext_74
    add x23, x23, :lo12:.Ltext_74
    sub x24, x29, #2248
    add x25, x24, #8
    sub x26, x29, #2256
    add x9, x22, #16
    str x9, [sp, #64]
    sub x27, x29, #2280
    add x9, x27, #16
    str x9, [sp, #56]
    sub x9, x29, #2296
    str x9, [sp, #48]
    ldr x9, [sp, #48]
    add x9, x9, #8
    str x9, [sp, #40]
    sub x9, x29, #2328
    str x9, [sp, #32]
    ldr x9, [sp, #32]
    add x9, x9, #8
    str x9, [sp, #24]
    sub x9, x29, #2344
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    add x9, x9, #8
    str x9, [sp, #8]
    mov x9, #0
    mov x19, x9
    mov x9, #0
    mov x28, x9
.L12_1:
    cmp x28, x21
    b.hs .L12_4
.L12_2:
    lsl x14, x28, #5
    ldr x9, [sp, #72]
    add x14, x9, x14
    mov x10, x14
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    str x23, [x24]
    movz x9, #22
    str x9, [x25]
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x24
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl lb_net_10http_equal
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L12_6
.L12_5:
    mov x14, x19
    b .L12_3
.L12_8:
    b .L12_7
.L12_6:
.L12_7:
    mov x9, #0
    str x9, [x26]
    mov x20, x19
.L12_9:
    ldr x9, [sp, #64]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x26
    sub x8, x29, #2280
    bl lb_net_14http_list_next
    ldr x9, [sp, #56]
    ldrb w14, [x9]
    cbnz w14, .L12_12
    b .L12_11
.L12_12:
    mov x10, x27
    ldr x11, [sp, #48]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
.L12_10:
    ldr x9, [sp, #40]
    ldr x14, [x9]
    mov x10, #0
    cmp x14, x10
    b.ne .L12_14
.L12_13:
    b .L12_9
.L12_16:
    b .L12_15
.L12_14:
.L12_15:
    ldr x9, [sp, #48]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_net_10http_token
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L12_18
.L12_17:
    sub x19, x29, #136
    adrp x14, lb_net_17websocket_invalid
    add x14, x14, :lo12:lb_net_17websocket_invalid
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_85
    add x14, x14, :lo12:.Ltext_85
    sub x15, x29, #2312
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
    ldr x19, [sp, #2432]
    ldr x20, [sp, #2424]
    ldr x21, [sp, #2416]
    ldr x22, [sp, #2408]
    ldr x23, [sp, #2400]
    ldr x24, [sp, #2392]
    ldr x25, [sp, #2384]
    ldr x26, [sp, #2376]
    ldr x27, [sp, #2368]
    ldr x28, [sp, #2360]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L12_20:
    b .L12_19
.L12_18:
.L12_19:
    movz x10, #129
    cmp x20, x10
    b.lo 1f
    adrp x0, .Ltext_91
    add x0, x0, :lo12:.Ltext_91
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x20
    b.ls .L12_25
.L12_26:
    adrp x0, .Ltext_91
    add x0, x0, :lo12:.Ltext_91
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
.L12_25:
    ldr x9, [sp, #80]
    ldr x10, [sp, #32]
    str x9, [x10]
    ldr x10, [sp, #24]
    str x20, [x10]
    mov x9, #0
    mov x19, x9
.L12_21:
    cmp x19, x20
    b.hs .L12_24
.L12_22:
    lsl x14, x19, #4
    ldr x9, [sp, #80]
    add x14, x9, x14
    mov x10, x14
    ldr x11, [sp, #16]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x9, [sp, #40]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    cmp x14, x15
    cset w15, eq
    cbnz w15, .L12_30
    b .L12_37
.L12_37:
    mov w14, w15
    b .L12_31
.L12_30:
    ldr x9, [sp, #48]
    ldr x15, [x9]
    ldr x9, [sp, #16]
    ldr x12, [x9]
    mov x0, x15
    mov x1, x12
    mov x2, x14
    bl memcmp
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
.L12_31:
    and w15, w14, #255
    cbnz w15, .L12_27
    b .L12_28
.L12_27:
    sub x19, x29, #136
    adrp x14, lb_net_17websocket_invalid
    add x14, x14, :lo12:lb_net_17websocket_invalid
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_92
    add x14, x14, :lo12:.Ltext_92
    sub x15, x29, #2360
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2432]
    ldr x20, [sp, #2424]
    ldr x21, [sp, #2416]
    ldr x22, [sp, #2408]
    ldr x23, [sp, #2400]
    ldr x24, [sp, #2392]
    ldr x25, [sp, #2384]
    ldr x26, [sp, #2376]
    ldr x27, [sp, #2368]
    ldr x28, [sp, #2360]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L12_32:
    b .L12_29
.L12_28:
.L12_29:
.L12_23:
    add x14, x19, #1
    mov x19, x14
    b .L12_21
.L12_24:
    movz x10, #128
    cmp x20, x10
    b.ne .L12_34
.L12_33:
    sub x19, x29, #136
    adrp x14, lb_net_15websocket_limit
    add x14, x14, :lo12:lb_net_15websocket_limit
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_93
    add x14, x14, :lo12:.Ltext_93
    sub x15, x29, #2376
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #2432]
    ldr x20, [sp, #2424]
    ldr x21, [sp, #2416]
    ldr x22, [sp, #2408]
    ldr x23, [sp, #2400]
    ldr x24, [sp, #2392]
    ldr x25, [sp, #2384]
    ldr x26, [sp, #2376]
    ldr x27, [sp, #2368]
    ldr x28, [sp, #2360]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L12_36:
    b .L12_35
.L12_34:
.L12_35:
    movz x10, #128
    cmp x20, x10
    b.lo 1f
    adrp x0, .Ltext_94
    add x0, x0, :lo12:.Ltext_94
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
1:
    lsl x14, x20, #4
    ldr x9, [sp, #80]
    add x14, x9, x14
    ldr x10, [sp, #48]
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #1
    mov x20, x14
    b .L12_9
.L12_11:
    mov x14, x20
.L12_3:
    add x15, x28, #1
    mov x19, x14
    mov x28, x15
    b .L12_1
.L12_4:
    sub x14, x29, #136
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
    ldr x19, [sp, #2432]
    ldr x20, [sp, #2424]
    ldr x21, [sp, #2416]
    ldr x22, [sp, #2408]
    ldr x23, [sp, #2400]
    ldr x24, [sp, #2392]
    ldr x25, [sp, #2384]
    ldr x26, [sp, #2376]
    ldr x27, [sp, #2368]
    ldr x28, [sp, #2360]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_19websocket_protocols, .-lb_net_19websocket_protocols

    .p2align 2
    .weak lb_memory_copy_0g1_u8
    .type lb_memory_copy_0g1_u8, %function
lb_memory_copy_0g1_u8:
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
    cbnz w14, .L13_11
    b .L13_4
.L13_11:
    mov w15, w14
    b .L13_5
.L13_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
.L13_5:
    and w14, w15, #255
    cbnz w14, .L13_1
    b .L13_2
.L13_1:
    adrp x14, .Ltext_8
    add x14, x14, :lo12:.Ltext_8
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, .Ltext_96
    add x14, x14, :lo12:.Ltext_96
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    b .L13_3
.L13_2:
.L13_3:
    mov x10, #0
    cmp x19, x10
    b.ls .L13_7
.L13_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl memcpy
    mov x14, x0
    cbnz x14, .L13_9
    b .L13_10
.L13_10:
    adrp x0, .Ltext_97
    add x0, x0, :lo12:.Ltext_97
    adrp x1, .Ltext_98
    add x1, x1, :lo12:.Ltext_98
    bl lb_core_7trap_at
.L13_9:
    b .L13_8
.L13_7:
.L13_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_copy_0g1_u8, .-lb_memory_copy_0g1_u8

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_19websocket_handshake_0init

    .section .rodata
.Ltext_0:
    .asciz "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
.Ltext_1:
    .asciz "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"
.Ltext_2:
    .asciz "unreachable"
.Ltext_3:
    .asciz "src/std/net/websocket/handshake.lucb:9:5"
.Ltext_4:
    .asciz "src/std/net/websocket/handshake.lucb:16:9"
.Ltext_5:
    .asciz "src/std/net/websocket/handshake.lucb:18:5"
.Ltext_6:
    .asciz "src/std/net/websocket/handshake.lucb:21:5"
.Ltext_7:
    .asciz "src/std/net/websocket/handshake.lucb:23:5"
.Ltext_8:
    .asciz "index out of bounds"
.Ltext_9:
    .asciz "src/std/net/websocket/handshake.lucb:26:5"
.Ltext_10:
    .asciz "src/std/net/websocket/handshake.lucb:27:5"
.Ltext_11:
    .asciz "src/std/net/websocket/handshake.lucb:30:5"
.Ltext_12:
    .asciz "division by zero"
.Ltext_13:
    .asciz "WebSocket base64 output is too small"
.Ltext_14:
    .asciz "src/std/net/websocket/handshake.lucb:36:9"
.Ltext_15:
    .asciz "src/std/net/websocket/handshake.lucb:37:9"
.Ltext_16:
    .asciz "src/std/net/websocket/handshake.lucb:38:9"
.Ltext_17:
    .asciz "src/std/net/websocket/handshake.lucb:39:9"
.Ltext_18:
    .asciz "src/std/net/websocket/handshake.lucb:40:9"
.Ltext_19:
    .asciz "shift count out of range"
.Ltext_20:
    .asciz "src/std/net/websocket/handshake.lucb:41:9"
.Ltext_21:
    .asciz "src/std/net/websocket/handshake.lucb:42:9"
.Ltext_22:
    .asciz "src/std/net/websocket/handshake.lucb:43:9"
.Ltext_23:
    .asciz "src/std/net/websocket/handshake.lucb:44:9"
.Ltext_24:
    .asciz "src/std/net/websocket/handshake.lucb:45:9"
.Ltext_25:
    .asciz "src/std/net/websocket/handshake.lucb:46:5"
.Ltext_26:
    .asciz "WebSocket key output needs 24 bytes"
.Ltext_27:
    .asciz "src/std/net/websocket/handshake.lucb:54:5"
.Ltext_28:
    .asciz "WebSocket nonce randomness is unavailable"
.Ltext_29:
    .asciz "src/std/net/websocket/handshake.lucb:56:5"
.Ltext_30:
    .asciz "src/std/net/websocket/handshake.lucb:59:5"
.Ltext_31:
    .asciz "WebSocket key must encode exactly 16 bytes"
.Ltext_32:
    .asciz "WebSocket accept output needs 28 bytes"
.Ltext_33:
    .asciz "src/std/net/websocket/handshake.lucb:71:5"
.Ltext_34:
    .asciz "src/std/net/websocket/handshake.lucb:72:5"
.Ltext_35:
    .asciz "src/std/net/websocket/handshake.lucb:73:5"
.Ltext_36:
    .asciz "src/std/net/websocket/handshake.lucb:74:5"
.Ltext_37:
    .asciz "src/std/net/websocket/handshake.lucb:79:13"
.Ltext_38:
    .asciz "src/std/net/websocket/handshake.lucb:80:13"
.Ltext_39:
    .asciz "src/std/net/websocket/handshake.lucb:82:13"
.Ltext_40:
    .asciz "src/std/net/websocket/handshake.lucb:83:9"
.Ltext_41:
    .asciz "src/std/net/websocket/handshake.lucb:84:9"
.Ltext_42:
    .asciz "src/std/net/websocket/handshake.lucb:85:9"
.Ltext_43:
    .asciz "src/std/net/websocket/handshake.lucb:86:9"
.Ltext_44:
    .asciz "src/std/net/websocket/handshake.lucb:87:9"
.Ltext_45:
    .asciz "src/std/net/websocket/handshake.lucb:103:13"
.Ltext_46:
    .asciz "src/std/net/websocket/handshake.lucb:109:9"
.Ltext_47:
    .asciz "src/std/net/websocket/handshake.lucb:110:9"
.Ltext_48:
    .asciz "src/std/net/websocket/handshake.lucb:111:9"
.Ltext_49:
    .asciz "src/std/net/websocket/handshake.lucb:112:9"
.Ltext_50:
    .asciz "src/std/net/websocket/handshake.lucb:113:9"
.Ltext_51:
    .asciz "src/std/net/websocket/handshake.lucb:117:13"
.Ltext_52:
    .asciz "src/std/net/websocket/handshake.lucb:118:5"
.Ltext_53:
    .asciz "GET"
.Ltext_54:
    .asciz "HTTP/1.1"
.Ltext_55:
    .asciz "host"
.Ltext_56:
    .asciz "WebSocket upgrade requires HTTP/1.1 GET and Host"
.Ltext_57:
    .asciz "connection"
.Ltext_58:
    .asciz "upgrade"
.Ltext_59:
    .asciz "websocket"
.Ltext_60:
    .asciz "missing WebSocket upgrade tokens"
.Ltext_61:
    .asciz "sec-websocket-version"
.Ltext_62:
    .asciz "13"
.Ltext_63:
    .asciz "unsupported WebSocket version"
.Ltext_64:
    .asciz "sec-websocket-key"
.Ltext_65:
    .asciz "WebSocket upgrade needs one key"
.Ltext_66:
    .asciz "missing WebSocket key"
.Ltext_67:
    .asciz "invalid WebSocket request key"
.Ltext_68:
    .asciz "WebSocket upgrade request cannot carry a body"
.Ltext_69:
    .asciz "src/std/net/websocket/handshake.lucb:137:5"
.Ltext_70:
    .asciz "invalid WebSocket upgrade response"
.Ltext_71:
    .asciz "sec-websocket-accept"
.Ltext_72:
    .asciz "WebSocket accept does not match the client key"
.Ltext_73:
    .asciz "sec-websocket-extensions"
.Ltext_74:
    .asciz "sec-websocket-protocol"
.Ltext_75:
    .asciz "unsupported WebSocket extension or multiple selected protocols"
.Ltext_76:
    .asciz ""
.Ltext_77:
    .asciz "invalid selected WebSocket subprotocol"
.Ltext_78:
    .asciz "server selected a WebSocket subprotocol that was not offered"
.Ltext_79:
    .asciz "src/std/net/websocket/handshake.lucb:158:5"
.Ltext_80:
    .asciz "Host"
.Ltext_81:
    .asciz "Upgrade"
.Ltext_82:
    .asciz "Sec-WebSocket-Version"
.Ltext_83:
    .asciz "Sec-WebSocket-Key"
.Ltext_84:
    .asciz "Sec-WebSocket-Protocol"
.Ltext_85:
    .asciz "invalid offered WebSocket subprotocol"
.Ltext_86:
    .asciz "src/std/net/websocket/handshake.lucb:173:5"
.Ltext_87:
    .asciz "src/std/net/websocket/handshake.lucb:174:5"
.Ltext_88:
    .asciz "selected WebSocket subprotocol was not offered"
.Ltext_89:
    .asciz "Sec-WebSocket-Accept"
.Ltext_90:
    .asciz "src/std/net/websocket/handshake.lucb:196:5"
.Ltext_91:
    .asciz "src/std/net/websocket/handshake.lucb:212:13"
.Ltext_92:
    .asciz "duplicate offered WebSocket subprotocol"
.Ltext_93:
    .asciz "too many offered WebSocket subprotocols"
.Ltext_94:
    .asciz "src/std/net/websocket/handshake.lucb:217:13"
.Ltext_95:
    .asciz "src/std/net/websocket/handshake.lucb:218:13"
.Ltext_96:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_97:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_98:
    .asciz "null_foreign"
.Ltext_99:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_net_17websocket_invalid
    .type lb_net_17websocket_invalid, %object
    .p2align 2
lb_net_17websocket_invalid:
    .zero 4

    .bss
    .globl lb_net_15websocket_limit
    .type lb_net_15websocket_limit, %object
    .p2align 2
lb_net_15websocket_limit:
    .zero 4

    .bss
    .globl lb_net_18websocket_alphabet
    .type lb_net_18websocket_alphabet, %object
    .p2align 3
lb_net_18websocket_alphabet:
    .zero 16

    .bss
    .globl lb_net_14websocket_guid
    .type lb_net_14websocket_guid, %object
    .p2align 3
lb_net_14websocket_guid:
    .zero 16


    .section .note.GNU-stack,"",%progbits
