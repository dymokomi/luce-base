    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_interop_transfer_0init
_lb_interop_transfer_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x19, x29, #32
    mov x11, x19
    str xzr, [x11, #0]
    adrp x14, _lb_interop_PacketBytes_text@GOTPAGE
    ldr x14, [x14, _lb_interop_PacketBytes_text@GOTPAGEOFF]
    str x14, [x19]
    adrp x14, _lb_interop_13text_transfer@PAGE
    add x14, x14, _lb_interop_13text_transfer@PAGEOFF
    mov x10, x19
    mov x11, x14
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    sub x19, x29, #40
    mov x11, x19
    str xzr, [x11, #0]
    adrp x14, _lb_interop_PacketBytes_copy@GOTPAGE
    ldr x14, [x14, _lb_interop_PacketBytes_copy@GOTPAGEOFF]
    str x14, [x19]
    adrp x14, _lb_interop_14bytes_transfer@PAGE
    add x14, x14, _lb_interop_14bytes_transfer@PAGEOFF
    mov x10, x19
    mov x11, x14
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_PacketBytes_drop
_lb_interop_PacketBytes_drop:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    str x21, [sp, #56]
    sub x16, x29, #56
    str x0, [x16]
    sub x14, x29, #56
    ldr x19, [x14]
    adrp x20, _lb_memory_heap@PAGE
    add x20, x20, _lb_memory_heap@PAGEOFF
    sub x14, x29, #72
    ldr x15, [x19]
    add x12, x19, #8
    ldr x12, [x12]
    str x15, [x14]
    add x15, x14, #8
    str x12, [x15]
    ldr x15, [x20]
    add x21, x20, #8
    ldr x12, [x21]
    cbnz x12, L1_2
    b L1_1
L1_2:
    add x13, x12, #16
    ldr x13, [x13]
    mov x17, x13
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L1_1:
    sub x14, x29, #88
    str x19, [x14]
    add x15, x14, #8
    movz x9, #16
    str x9, [x15]
    ldr x15, [x20]
    ldr x12, [x21]
    cbnz x12, L1_4
    b L1_3
L1_4:
    add x13, x12, #16
    ldr x13, [x13]
    mov x17, x13
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L1_3:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_PacketBytes_copy
_lb_interop_PacketBytes_copy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #448
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #416]
    str x20, [sp, #408]
    str x21, [sp, #400]
    str x22, [sp, #392]
    str x23, [sp, #384]
    str x24, [sp, #376]
    str x25, [sp, #368]
    sub x16, x29, #160
    str x0, [x16]
    str x1, [x16, #8]
    sub x21, x29, #176
    adrp x22, _lb_memory_heap@PAGE
    add x22, x22, _lb_memory_heap@PAGEOFF
    sub x19, x29, #160
    add x20, x19, #8
    ldr x23, [x20]
    sub x24, x29, #224
    movz x10, #16384, lsl #48
    cmp x23, x10
    b.ls L2_2
L2_1:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_1@PAGE
    add x15, x15, l_text_1@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b L2_3
L2_2:
    ldr x14, [x22]
    add x15, x22, #8
    ldr x15, [x15]
    cbnz x15, L2_4
    b L2_5
L2_5:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
L2_4:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x23
    movz x2, #1
    sub x8, x29, #248
    ldr x17, [sp], #16
    blr x17
    sub x25, x29, #248
    add x12, x25, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp x23, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, L2_6
    b L2_7
L2_6:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_4@PAGE
    add x15, x15, l_text_4@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b L2_3
L2_7:
    ldr x14, [x25]
    str x14, [x24]
    add x14, x24, #8
    str x23, [x14]
    add x14, x24, #40
    mov x9, #0
    strb w9, [x14]
L2_3:
    add x14, x24, #40
    ldrb w14, [x14]
    cbnz w14, L2_9
    b L2_8
L2_9:
    add x14, x24, #16
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #416]
    ldr x20, [sp, #408]
    ldr x21, [sp, #400]
    ldr x22, [sp, #392]
    ldr x23, [sp, #384]
    ldr x24, [sp, #376]
    ldr x25, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_10:
L2_8:
    mov x10, x24
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x14, [x20]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl _lb_memory_copy_0g1_u8
    sub x23, x29, #264
    mov x10, x22
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x25, x29, #304
    ldr x14, [x23]
    add x15, x23, #8
    ldr x15, [x15]
    cbnz x15, L2_11
    b L2_12
L2_12:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
L2_11:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #16
    movz x2, #8
    sub x8, x29, #328
    ldr x17, [sp], #16
    blr x17
    sub x13, x29, #328
    add x12, x13, #16
    ldrb w12, [x12]
    cbnz w12, L2_13
    b L2_14
L2_14:
    add x14, x25, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_4@PAGE
    add x15, x15, l_text_4@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x25, #32
    movz x9, #1
    strb w9, [x14]
    b L2_15
L2_13:
    ldr x19, [x13]
    sub x20, x29, #344
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    mov x10, x21
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x10, x20
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    str x19, [x25]
    add x14, x25, #32
    mov x9, #0
    strb w9, [x14]
L2_15:
    add x14, x25, #32
    ldrb w14, [x14]
    cbnz w14, L2_17
    b L2_16
L2_17:
    add x14, x25, #8
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
    sub x14, x29, #360
    ldr x15, [x21]
    add x12, x21, #8
    ldr x12, [x12]
    str x15, [x14]
    add x15, x14, #8
    str x12, [x15]
    ldr x15, [x22]
    add x12, x22, #8
    ldr x12, [x12]
    cbnz x12, L2_19
    b L2_18
L2_19:
    add x13, x12, #16
    ldr x13, [x13]
    mov x17, x13
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_18:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #416]
    ldr x20, [sp, #408]
    ldr x21, [sp, #400]
    ldr x22, [sp, #392]
    ldr x23, [sp, #384]
    ldr x24, [sp, #376]
    ldr x25, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_20:
L2_16:
    ldr x19, [x25]
    sub x22, x29, #392
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    adrp x20, _lb_interop_PacketBytes_drop@GOTPAGE
    ldr x20, [x20, _lb_interop_PacketBytes_drop@GOTPAGEOFF]
    mov x10, x21
    sub x11, x29, #408
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x10, x29, #424
    str x19, [x10]
    sub x10, x29, #440
    str x20, [x10]
    sub x14, x29, #408
    mov x10, x14
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x22, #16
    str x19, [x14]
    add x14, x22, #24
    str x20, [x14]
L2_22:
    sub x19, x29, #144
    mov x10, x22
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
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
    ldr x19, [sp, #416]
    ldr x20, [sp, #408]
    ldr x21, [sp, #400]
    ldr x22, [sp, #392]
    ldr x23, [sp, #384]
    ldr x24, [sp, #376]
    ldr x25, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_21:
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
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
    sub x16, x29, #136
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #168
    sub x14, x29, #136
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #232
    bl _lb_interop_PacketBytes_copy
    sub x15, x29, #232
    add x14, x15, #56
    ldrb w14, [x14]
    cbnz w14, L3_2
    b L3_1
L3_2:
    add x14, x15, #32
    sub x19, x29, #120
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_3:
L3_1:
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    sub x22, x29, #264
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    ldr x14, [x19]
    add x12, x19, #8
    ldr x12, [x12]
    sub x13, x29, #280
    str x14, [x13]
    add x14, x13, #8
    str x12, [x14]
    add x14, x19, #16
    ldr x20, [x14]
    add x14, x19, #24
    ldr x21, [x14]
    mov x10, x13
    sub x11, x29, #296
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x10, x29, #312
    str x20, [x10]
    sub x10, x29, #328
    str x21, [x10]
    sub x14, x29, #296
    mov x10, x14
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x22, #16
    str x20, [x14]
    add x14, x22, #24
    str x21, [x14]
L3_5:
    sub x19, x29, #120
    mov x10, x22
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_4:
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_copy_0g1_u8
    .weak_definition _lb_memory_copy_0g1_u8
    .no_dead_strip _lb_memory_copy_0g1_u8
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
    cbnz w14, L4_11
    b L4_4
L4_11:
    mov w15, w14
    b L4_5
L4_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L4_5:
    and w14, w15, #255
    cbnz w14, L4_1
    b L4_2
L4_1:
    adrp x14, l_text_9@PAGE
    add x14, x14, l_text_9@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L4_3
L4_2:
L4_3:
    mov x10, #0
    cmp x19, x10
    b.ls L4_7
L4_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memcpy
    mov x14, x0
    cbnz x14, L4_9
    b L4_10
L4_10:
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_12@PAGE
    add x1, x1, l_text_12@PAGEOFF
    bl _lb_core_7trap_at
L4_9:
    b L4_8
L4_7:
L4_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Packet_0g1_u8_0c_init
    .weak_definition _lb_interop_Packet_0g1_u8_0c_init
    .no_dead_strip _lb_interop_Packet_0g1_u8_0c_init
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
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    .no_dead_strip _lb_interop_Packet_0g1_str_init
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
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    .quad _lb_interop_transfer_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/interop/transfer.lucb:36:9"
l_text_1:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_2:
    .asciz "memory.unset"
l_text_3:
    .asciz "src/std/interop/transfer.lucb:40:9"
l_text_4:
    .asciz "memory.exhausted"
l_text_5:
    .asciz "src/std/interop/transfer.lucb:43:9"
l_text_6:
    .asciz "unreachable"
l_text_7:
    .asciz "src/std/interop/transfer.lucb:44:9"
l_text_8:
    .asciz "src/std/interop/transfer.lucb:48:9"
l_text_9:
    .asciz "index out of bounds"
l_text_10:
    .asciz "src/std/memory.lucb:328:9"
l_text_11:
    .asciz "src/std/memory.lucb:330:9"
l_text_12:
    .asciz "null_foreign"

    .section __DATA,__const
    .p2align 3
    .globl _lb_interop_13text_transfer
    .no_dead_strip _lb_interop_13text_transfer
    .zerofill __DATA,__bss,_lb_interop_13text_transfer,8,3
    .globl _lb_interop_14bytes_transfer
    .no_dead_strip _lb_interop_14bytes_transfer
    .zerofill __DATA,__bss,_lb_interop_14bytes_transfer,8,3

.subsections_via_symbols
