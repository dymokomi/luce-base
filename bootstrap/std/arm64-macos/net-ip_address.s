    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_net_10ip_address_0init
_lb_net_10ip_address_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_IpAddress_9from_ipv4
    .no_dead_strip _lb_net_IpAddress_9from_ipv4
_lb_net_IpAddress_9from_ipv4:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    str x20, [sp, #88]
    str x21, [sp, #80]
    str x22, [sp, #72]
    str x23, [sp, #64]
    sub x16, x29, #104
    str w0, [x16]
    sub x19, x29, #121
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    strb wzr, [x11, #16]
    add x14, x19, #1
    sub x15, x29, #104
    ldr w20, [x15]
    mov x9, #0
    mov x15, x9
L1_1:
    movz x10, #4
    cmp x15, x10
    b.hs L1_3
L1_2:
    add x22, x14, x15
    movz x9, #3
    sub x21, x9, x15
    mov x9, x21
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    mov w21, w23
    movz x10, #32
    cmp x21, x10
    b.lo L1_5
L1_4:
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L1_5:
    lsr w21, w20, w23
    movz x10, #255
    and w21, w21, w10
    mov w21, w21
    and w21, w21, #255
    strb w21, [x22]
    add x21, x15, #1
    mov x15, x21
    b L1_1
L1_3:
    sub x20, x29, #81
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrb w12, [x10, #16]
    strb w12, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #17
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    ldr x21, [sp, #80]
    ldr x22, [sp, #72]
    ldr x23, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_6:
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_IpAddress_10from_bytes
    .no_dead_strip _lb_net_IpAddress_10from_bytes
_lb_net_IpAddress_10from_bytes:
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
    sub x16, x29, #136
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #136
    add x14, x19, #8
    ldr x20, [x14]
    movz x10, #4
    cmp x20, x10
    cset w21, eq
    mov x10, #0
    cmp w21, w10
    cset w14, eq
    cbnz w14, L2_4
    b L2_11
L2_11:
    mov w15, w14
    b L2_5
L2_4:
    movz x10, #16
    cmp x20, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L2_5:
    and w14, w15, #255
    cbnz w14, L2_1
    b L2_2
L2_1:
    sub x19, x29, #120
    add x14, x19, #24
    adrp x15, _lb_net_15invalid_options@PAGE
    add x15, x15, _lb_net_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
    sub x20, x29, #152
    str x15, [x20]
    add x15, x20, #8
    movz x9, #42
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    ldr x23, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_6:
    b L2_3
L2_2:
L2_3:
    sub x22, x29, #169
    sub x23, x29, #186
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    strb wzr, [x11, #16]
    cbnz w21, L2_7
    b L2_8
L2_7:
    mov x9, #0
    mov w14, w9
    b L2_9
L2_8:
    movz x9, #1
    mov w14, w9
L2_9:
    and w15, w14, #255
    strb w15, [x23]
    mov x10, x23
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrb w12, [x10, #16]
    strb w12, [x11, #16]
    add x15, x22, #1
    sub x21, x29, #208
    str x15, [x21]
    add x15, x21, #8
    movz x9, #16
    str x9, [x15]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x20
    bl _lb_memory_copy_0g1_u8
    sub x21, x29, #120
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrb w12, [x10, #16]
    strb w12, [x11, #16]
    add x15, x21, #48
    mov x9, #0
    strb w9, [x15]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    ldr x23, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_10:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_IpAddress_parse
    .no_dead_strip _lb_net_IpAddress_parse
_lb_net_IpAddress_parse:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    str x21, [sp, #192]
    str x22, [sp, #184]
    str x23, [sp, #176]
    str x24, [sp, #168]
    str x25, [sp, #160]
    sub x16, x29, #120
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #120
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    cset w19, eq
    cbnz w19, L3_40
    b L3_4
L3_40:
    mov w20, w19
    b L3_5
L3_4:
    movz x10, #45
    cmp x15, x10
    cset w20, hi
L3_5:
    and w19, w20, #255
    cbnz w19, L3_1
    b L3_2
L3_1:
    sub x19, x29, #138
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    strh wzr, [x11, #16]
    sub x20, x29, #98
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrh w12, [x10, #16]
    strh w12, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #18
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    ldr x25, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_6:
    b L3_3
L3_2:
L3_3:
    mov x9, #0
    mov w19, w9
    mov x9, #0
    mov x20, x9
L3_7:
    cmp x20, x15
    b.hs L3_9
L3_8:
    ldr x21, [x14]
    add x21, x21, x20
    ldrb w21, [x21]
    and w21, w21, #255
    movz x10, #48
    cmp w21, w10
    cset w22, hs
    cbnz w22, L3_10
    b L3_41
L3_41:
    mov w23, w22
    b L3_11
L3_10:
    movz x10, #57
    cmp w21, w10
    cset w23, ls
L3_11:
    and w22, w23, #255
    movz x10, #97
    cmp w21, w10
    cset w24, hs
    cbnz w24, L3_12
    b L3_42
L3_42:
    mov w23, w24
    b L3_13
L3_12:
    movz x10, #102
    cmp w21, w10
    cset w23, ls
L3_13:
    and w24, w23, #255
    cbnz w24, L3_43
    b L3_14
L3_43:
    mov w23, w24
    b L3_15
L3_14:
    movz x10, #65
    cmp w21, w10
    cset w23, hs
    cbnz w23, L3_16
    b L3_44
L3_44:
    mov w24, w23
    b L3_17
L3_16:
    movz x10, #70
    cmp w21, w10
    cset w24, ls
L3_17:
    and w23, w24, #255
L3_15:
    and w24, w23, #255
    and w25, w22, #255
    mov x10, #0
    cmp w25, w10
    cset w25, eq
    cbnz w25, L3_21
    b L3_45
L3_45:
    mov w22, w25
    b L3_22
L3_21:
    and w22, w24, #255
    mov x10, #0
    cmp w22, w10
    cset w22, eq
L3_22:
    and w23, w22, #255
    cbnz w23, L3_23
    b L3_46
L3_46:
    mov w22, w23
    b L3_24
L3_23:
    movz x10, #58
    cmp w21, w10
    cset w22, eq
    mov x10, #0
    cmp w22, w10
    cset w22, eq
L3_24:
    and w23, w22, #255
    cbnz w23, L3_25
    b L3_47
L3_47:
    mov w22, w23
    b L3_26
L3_25:
    movz x10, #46
    cmp w21, w10
    cset w22, eq
    mov x10, #0
    cmp w22, w10
    cset w22, eq
L3_26:
    and w23, w22, #255
    cbnz w23, L3_18
    b L3_19
L3_18:
    sub x19, x29, #156
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    strh wzr, [x11, #16]
    sub x20, x29, #98
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrh w12, [x10, #16]
    strh w12, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #18
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    ldr x25, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_27:
    b L3_20
L3_19:
L3_20:
    movz x10, #58
    cmp w21, w10
    b.ne L3_29
L3_28:
    movz x9, #1
    mov w19, w9
    b L3_30
L3_29:
L3_30:
    add x21, x20, #1
    mov x20, x21
    b L3_7
L3_9:
    and w15, w19, #255
    mov x10, #0
    cmp w15, w10
    b.ne L3_32
L3_31:
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_net_17parse_ipv4_number
    sub x16, x29, #164
    str x0, [x16, #0]
    sub x19, x29, #164
    add x15, x19, #4
    ldrb w15, [x15]
    cbnz w15, L3_34
    b L3_35
L3_34:
    ldr w14, [x19]
    b L3_36
L3_35:
    sub x19, x29, #182
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    strh wzr, [x11, #16]
    sub x20, x29, #98
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrh w12, [x10, #16]
    strh w12, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #18
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    ldr x25, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_37:
L3_36:
    mov x0, x14
    sub x8, x29, #199
    bl _lb_net_IpAddress_9from_ipv4
    sub x15, x29, #199
    sub x19, x29, #217
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrb w12, [x10, #16]
    strb w12, [x11, #16]
    add x15, x19, #17
    movz x9, #1
    strb w9, [x15]
    sub x20, x29, #98
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrh w12, [x10, #16]
    strh w12, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #18
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    ldr x25, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_38:
    b L3_33
L3_32:
L3_33:
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #235
    bl _lb_net_10parse_ipv6
    sub x15, x29, #235
    sub x19, x29, #98
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrh w12, [x10, #16]
    strh w12, [x11, #16]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #18
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    ldr x25, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_39:
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_IpAddress_version
    .no_dead_strip _lb_net_IpAddress_version
_lb_net_IpAddress_version:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    ldrb w14, [x14]
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_1:
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_IpAddress_11ipv4_number
    .no_dead_strip _lb_net_IpAddress_11ipv4_number
_lb_net_IpAddress_11ipv4_number:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    str x21, [sp, #40]
    str x22, [sp, #32]
    sub x16, x29, #64
    str x0, [x16]
    sub x9, x29, #64
    ldr x15, [x9]
    ldrb w14, [x15]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L5_2
L5_1:
    sub x19, x29, #72
    mov x11, x19
    str xzr, [x11, #0]
    sub x20, x29, #56
    mov x10, x19
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    ldr x22, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_2:
L5_3:
    add x14, x15, #1
    ldrb w19, [x14]
    mov w19, w19
L5_6:
    lsl w20, w19, #24
    add x15, x14, #1
    ldrb w15, [x15]
    mov w15, w15
L5_8:
    lsl w19, w15, #16
    orr w21, w19, w20
    add x19, x14, #2
    ldrb w19, [x19]
    mov w19, w19
L5_10:
    lsl w15, w19, #8
    orr w15, w15, w21
    add x20, x14, #3
    ldrb w20, [x20]
    mov w20, w20
    orr w15, w15, w20
    sub x20, x29, #80
    str w15, [x20]
    add x15, x20, #4
    movz x9, #1
    strb w9, [x15]
    sub x22, x29, #56
    mov x10, x20
    mov x11, x22
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x22
    ldr x0, [x16, #0]
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    ldr x22, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_IpAddress_14is_ipv4_mapped
    .no_dead_strip _lb_net_IpAddress_14is_ipv4_mapped
_lb_net_IpAddress_14is_ipv4_mapped:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    str x20, [sp, #16]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x15, [x9]
    ldrb w14, [x15]
    movz x10, #1
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L6_2
L6_1:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_4:
    b L6_3
L6_2:
L6_3:
    add x14, x15, #1
    mov x9, #0
    mov x19, x9
L6_5:
    movz x10, #10
    cmp x19, x10
    b.hs L6_7
L6_6:
    add x20, x14, x19
    ldrb w20, [x20]
    mov x10, #0
    cmp w20, w10
    cset w20, eq
    mov x10, #0
    cmp w20, w10
    b.ne L6_9
L6_8:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_11:
    b L6_10
L6_9:
L6_10:
    add x20, x19, #1
    mov x19, x20
    b L6_5
L6_7:
    add x14, x15, #1
    add x19, x14, #10
    ldrb w19, [x19]
    movz x10, #255
    cmp w19, w10
    cset w19, eq
    cbnz w19, L6_12
    b L6_15
L6_15:
    mov w14, w19
    b L6_13
L6_12:
    add x15, x14, #11
    ldrb w15, [x15]
    movz x10, #255
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L6_13:
    and w15, w14, #255
    and w15, w15, #255
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_14:
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_IpAddress_equals
    .no_dead_strip _lb_net_IpAddress_equals
_lb_net_IpAddress_equals:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    str x21, [sp, #40]
    sub x16, x29, #48
    str x0, [x16]
    sub x16, x29, #72
    str x1, [x16]
    sub x0, x29, #72
    ldr x1, [x0]
    movz x2, #17
    bl _memcpy
    sub x9, x29, #48
    ldr x20, [x9]
    ldrb w14, [x20]
    sub x15, x29, #72
    ldrb w19, [x15]
    cmp w14, w19
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L7_2
L7_1:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_4:
    b L7_3
L7_2:
L7_3:
    add x14, x20, #1
    add x19, x15, #1
    mov x9, #0
    mov x21, x9
L7_5:
    movz x10, #16
    cmp x21, x10
    b.hs L7_7
L7_6:
    add x15, x14, x21
    ldrb w15, [x15]
    add x20, x19, x21
    ldrb w20, [x20]
    cmp w15, w20
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L7_9
L7_8:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_11:
    b L7_10
L7_9:
L7_10:
    add x15, x21, #1
    mov x21, x15
    b L7_5
L7_7:
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_12:
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_IpAddress_12write_octets
    .no_dead_strip _lb_net_IpAddress_12write_octets
_lb_net_IpAddress_12write_octets:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    str x20, [sp, #104]
    str x21, [sp, #96]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #96
    ldr x15, [x9]
    ldrb w14, [x15]
    mov x10, #0
    cmp w14, w10
    b.ne L8_2
L8_1:
    movz x9, #4
    mov x19, x9
    b L8_3
L8_2:
    movz x9, #16
    mov x19, x9
L8_3:
    sub x14, x29, #112
    add x20, x14, #8
    ldr x20, [x20]
    cmp x20, x19
    b.hs L8_5
L8_4:
    sub x19, x29, #88
    add x14, x19, #8
    adrp x15, _lb_io_full@PAGE
    add x15, x15, _lb_io_full@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_18@PAGE
    add x15, x15, l_text_18@PAGEOFF
    sub x20, x29, #128
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
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    ldr x21, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_7:
    b L8_6
L8_5:
L8_6:
    add x21, x15, #1
    movz x10, #17
    cmp x19, x10
    b.lo 1f
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x19
    b.ls L8_8
L8_9:
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
L8_8:
    sub x15, x29, #144
    str x21, [x15]
    add x20, x15, #8
    str x19, [x20]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x19
    bl _lb_memory_move_0g1_u8
    sub x15, x29, #88
    str x19, [x15]
    add x20, x15, #32
    mov x9, #0
    strb w9, [x20]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    ldr x21, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_10:
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_IpAddress_format
    .no_dead_strip _lb_net_IpAddress_format
_lb_net_IpAddress_format:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #560
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #528]
    str x20, [sp, #520]
    str x21, [sp, #512]
    str x22, [sp, #504]
    str x23, [sp, #496]
    str x24, [sp, #488]
    str x25, [sp, #480]
    str x26, [sp, #472]
    str x27, [sp, #464]
    str x28, [sp, #456]
    sub x16, x29, #160
    str x0, [x16]
    sub x16, x29, #176
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #160
    ldr x9, [x9]
    str x9, [sp, #48]
    sub x19, x29, #215
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str wzr, [x11, #32]
    strh wzr, [x11, #36]
    strb wzr, [x11, #38]
    ldr x9, [sp, #48]
    ldrb w14, [x9]
    mov x10, #0
    cmp w14, w10
    b.ne L9_2
L9_1:
    ldr x9, [sp, #48]
    add x14, x9, #1
L9_4:
    sub x15, x29, #232
    str x14, [x15]
    add x20, x15, #8
    movz x9, #4
    str x9, [x20]
    sub x20, x29, #248
    str x19, [x20]
    add x21, x20, #8
    movz x9, #39
    str x9, [x21]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x20
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    bl _lb_net_11render_ipv4
    mov x15, x0
    mov x9, x15
    str x9, [sp, #8]
    b L9_3
L9_2:
    ldr x0, [sp, #48]
    bl _lb_net_IpAddress_14is_ipv4_mapped
    mov w14, w0
    cbnz w14, L9_6
    b L9_7
L9_6:
    sub x14, x29, #264
    str x19, [x14]
    add x15, x14, #8
    movz x9, #39
    str x9, [x15]
    adrp x15, l_text_23@PAGE
    add x15, x15, l_text_23@PAGEOFF
    sub x21, x29, #280
    str x15, [x21]
    add x15, x21, #8
    movz x9, #7
    str x9, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x21
    ldr x2, [x9]
    ldr x3, [x9, #8]
    movz x4, #7
    bl _lb_memory_copy_0g1_u8
    ldr x9, [sp, #48]
    add x14, x9, #1
L9_9:
    add x15, x14, #12
    sub x20, x29, #296
    str x15, [x20]
    add x15, x20, #8
    movz x9, #4
    str x9, [x15]
    sub x15, x29, #312
    str x19, [x15]
    add x21, x15, #8
    movz x9, #39
    str x9, [x21]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    movz x4, #7
    bl _lb_net_11render_ipv4
    mov x15, x0
    b L9_8
L9_7:
    movz x9, #8
    str x9, [sp, #40]
    movz x9, #1
    str x9, [sp, #32]
    mov x9, #0
    mov x23, x9
L9_11:
    movz x10, #8
    cmp x23, x10
    b.hs L9_13
L9_12:
    ldr x0, [sp, #48]
    mov x1, x23
    bl _lb_net_IpAddress_word
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L9_15
L9_14:
    add x14, x23, #1
    mov x23, x14
    b L9_11
L9_15:
L9_16:
    mov x24, x23
L9_18:
    movz x10, #8
    cmp x24, x10
    cset w14, lo
    cbnz w14, L9_21
    b L9_59
L9_59:
    mov w15, w14
    b L9_22
L9_21:
    ldr x0, [sp, #48]
    mov x1, x24
    bl _lb_net_IpAddress_word
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L9_22:
    and w14, w15, #255
    cbnz w14, L9_19
    b L9_20
L9_19:
    mov x9, x24
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_26@PAGE
    add x0, x0, l_text_26@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x24, x14
    b L9_18
L9_20:
    mov x9, x24
    mov x10, x23
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_27@PAGE
    add x0, x0, l_text_27@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    ldr x10, [sp, #32]
    cmp x14, x10
    b.ls L9_24
L9_23:
    mov x15, x23
    mov x22, x14
    b L9_25
L9_24:
    ldr x9, [sp, #40]
    mov x15, x9
    ldr x9, [sp, #32]
    mov x22, x9
L9_25:
    mov x9, x15
    str x9, [sp, #40]
    mov x9, x22
    str x9, [sp, #32]
    mov x23, x24
    b L9_11
L9_13:
    sub x9, x29, #328
    str x9, [sp, #72]
    ldr x9, [sp, #72]
    add x24, x9, #8
    sub x9, x29, #456
    str x9, [sp, #64]
    adrp x26, l_text_63@PAGE
    add x26, x26, l_text_63@PAGEOFF
    sub x27, x29, #472
    add x28, x27, #8
    sub x9, x29, #408
    str x9, [sp, #56]
    sub x14, x29, #424
    mov x9, #0
    str x9, [sp, #24]
    mov x9, #0
    mov x25, x9
L9_26:
    movz x10, #8
    cmp x25, x10
    b.hs L9_28
L9_27:
    ldr x9, [sp, #40]
    cmp x9, x25
    b.ne L9_30
L9_29:
    ldr x9, [sp, #24]
    movz x10, #39
    cmp x9, x10
    b.lo 1f
    adrp x0, l_text_29@PAGE
    add x0, x0, l_text_29@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x10, [sp, #24]
    add x15, x19, x10
    movz x9, #58
    strb w9, [x15]
    ldr x9, [sp, #24]
    add x15, x9, #1
    movz x10, #39
    cmp x15, x10
    b.lo 1f
    adrp x0, l_text_30@PAGE
    add x0, x0, l_text_30@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x15, x19, x15
    movz x9, #58
    strb w9, [x15]
    ldr x9, [sp, #24]
    add x15, x9, #2
    ldr x9, [sp, #32]
    mov x10, x25
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_32@PAGE
    add x0, x0, l_text_32@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    mov x9, x15
    str x9, [sp, #24]
    mov x25, x21
    b L9_26
L9_30:
L9_31:
    ldr x9, [sp, #24]
    mov x10, #0
    cmp x9, x10
    cset w15, hi
    cbnz w15, L9_36
    b L9_60
L9_60:
    mov w21, w15
    b L9_37
L9_36:
    ldr x9, [sp, #24]
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    movz x10, #39
    cmp x15, x10
    b.lo 1f
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x15, x19, x15
    ldrb w15, [x15]
    movz x10, #58
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w21, eq
L9_37:
    and w15, w21, #255
    cbnz w15, L9_33
    b L9_34
L9_33:
    ldr x9, [sp, #24]
    movz x10, #39
    cmp x9, x10
    b.lo 1f
    adrp x0, l_text_34@PAGE
    add x0, x0, l_text_34@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x10, [sp, #24]
    add x15, x19, x10
    movz x9, #58
    strb w9, [x15]
    ldr x9, [sp, #24]
    add x15, x9, #1
    mov x21, x15
    b L9_35
L9_34:
    ldr x9, [sp, #24]
    mov x21, x9
L9_35:
    ldr x0, [sp, #48]
    mov x1, x25
    bl _lb_net_IpAddress_word
    str w0, [sp, #80]
    ldr x10, [sp, #72]
    str x19, [x10]
    movz x9, #39
    str x9, [x24]
    ldr w9, [sp, #80]
    sub x10, x29, #408
    str w9, [x10]
    ldr x10, [sp, #72]
    sub x11, x29, #424
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x10, x29, #440
    str x21, [x10]
    str x26, [x27]
    movz x9, #16
    str x9, [x28]
    mov x10, x27
    ldr x11, [sp, #64]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #56]
    ldrh w14, [x9]
    mov x9, x21
    str x9, [sp, #16]
    movz x9, #12
    mov w15, w9
    mov x9, #0
    mov w22, w9
L9_45:
    mov x10, #0
    cmp w15, w10
    b.lt L9_47
L9_46:
    mov w21, w15
    movz x10, #16
    cmp x21, x10
    b.lo L9_49
L9_48:
    adrp x0, l_text_64@PAGE
    add x0, x0, l_text_64@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L9_49:
    lsr w21, w14, w15
    and w21, w21, #65535
    movz x10, #15
    and w21, w21, w10
    mov w21, w21
    mov x10, #0
    cmp x21, x10
    cset w20, eq
    mov x10, #0
    cmp w20, w10
    cset w20, eq
    cbnz w20, L9_61
    b L9_53
L9_61:
    mov w23, w20
    b L9_54
L9_53:
    and w23, w22, #255
L9_54:
    and w20, w23, #255
    cbnz w20, L9_62
    b L9_55
L9_62:
    mov w23, w20
    b L9_56
L9_55:
    mov x10, #0
    cmp w15, w10
    cset w23, eq
L9_56:
    and w20, w23, #255
    cbnz w20, L9_50
    b L9_51
L9_50:
    ldr x9, [sp, #16]
    movz x10, #39
    cmp x9, x10
    b.lo 1f
    adrp x0, l_text_65@PAGE
    add x0, x0, l_text_65@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x10, [sp, #16]
    add x20, x19, x10
    add x22, x26, x21
    ldrb w22, [x22]
    strb w22, [x20]
    ldr x9, [sp, #16]
    add x20, x9, #1
    movz x9, #1
    mov w22, w9
    b L9_52
L9_51:
    ldr x9, [sp, #16]
    mov x20, x9
L9_52:
    mov w9, w15
    movz x10, #4
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_67@PAGE
    add x0, x0, l_text_67@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w21, w9
    mov x9, x20
    str x9, [sp, #16]
    mov w15, w21
    b L9_45
L9_47:
L9_58:
    add x14, x25, #1
    ldr x9, [sp, #16]
    str x9, [sp, #24]
    mov x25, x14
    b L9_26
L9_28:
    ldr x9, [sp, #24]
    mov x15, x9
L9_8:
    mov x9, x15
    str x9, [sp, #8]
L9_3:
    sub x20, x29, #176
    add x21, x20, #8
    ldr x14, [x21]
    ldr x10, [sp, #8]
    cmp x14, x10
    b.hs L9_39
L9_38:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, _lb_io_full@PAGE
    add x15, x15, _lb_io_full@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_37@PAGE
    add x15, x15, l_text_37@PAGEOFF
    sub x20, x29, #344
    str x15, [x20]
    add x15, x20, #8
    movz x9, #52
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
    ldr x19, [sp, #528]
    ldr x20, [sp, #520]
    ldr x21, [sp, #512]
    ldr x22, [sp, #504]
    ldr x23, [sp, #496]
    ldr x24, [sp, #488]
    ldr x25, [sp, #480]
    ldr x26, [sp, #472]
    ldr x27, [sp, #464]
    ldr x28, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_39:
L9_40:
    sub x14, x29, #360
    str x19, [x14]
    add x15, x14, #8
    movz x9, #39
    str x9, [x15]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    ldr x4, [sp, #8]
    bl _lb_memory_move_0g1_u8
    ldr x15, [x20]
    ldr x14, [x21]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #8]
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    ldr x10, [sp, #8]
    cmp x9, x10
    b.ls L9_42
L9_43:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
L9_42:
    sub x14, x29, #376
    str x15, [x14]
    add x14, x14, #8
    ldr x9, [sp, #8]
    str x9, [x14]
    sub x14, x29, #392
    str x15, [x14]
    add x19, x14, #8
    ldr x9, [sp, #8]
    str x9, [x19]
    sub x19, x29, #152
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #528]
    ldr x20, [sp, #520]
    ldr x21, [sp, #512]
    ldr x22, [sp, #504]
    ldr x23, [sp, #496]
    ldr x24, [sp, #488]
    ldr x25, [sp, #480]
    ldr x26, [sp, #472]
    ldr x27, [sp, #464]
    ldr x28, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_IpAddress_word
_lb_net_IpAddress_word:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    str x21, [sp, #24]
    sub x16, x29, #48
    str x0, [x16]
    sub x16, x29, #64
    str x1, [x16]
    sub x9, x29, #48
    ldr x15, [x9]
    sub x14, x29, #64
    ldr x14, [x14]
    mov x9, x14
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    add x15, x15, #1
    movz x10, #16
    cmp x14, x10
    b.lo 1f
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x19, x14, x15
    ldrb w19, [x19]
    mov w19, w19
    and w19, w19, #65535
L10_2:
    lsl w20, w19, #8
    and w20, w20, #65535
    add x21, x14, #1
    movz x10, #16
    cmp x21, x10
    b.lo 1f
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x21, x15, x21
    ldrb w21, [x21]
    mov w21, w21
    and w21, w21, #65535
    orr w20, w20, w21
    and w20, w20, #65535
    mov x9, x20
    mov x0, x9
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    ldr x21, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_17parse_ipv4_number
_lb_net_17parse_ipv4_number:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    str x19, [sp, #168]
    str x20, [sp, #160]
    str x21, [sp, #152]
    str x22, [sp, #144]
    str x23, [sp, #136]
    str x24, [sp, #128]
    str x25, [sp, #120]
    str x26, [sp, #112]
    str x27, [sp, #104]
    str x28, [sp, #96]
    sub x16, x29, #120
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #120
    add x15, x14, #8
    ldr x15, [x15]
    ldr x9, [x14]
    str x9, [sp, #16]
    ldr x20, [x14]
    ldr x21, [x14]
    ldr x22, [x14]
    ldr x9, [x14]
    str x9, [sp, #8]
    mov x9, #0
    mov w23, w9
    mov x9, #0
    mov x24, x9
    mov x9, #0
    mov x25, x9
L11_1:
    movz x10, #4
    cmp x25, x10
    b.hs L11_3
L11_2:
    mov x26, x24
    mov x9, #0
    mov w27, w9
L11_4:
    cmp x26, x15
    cset w28, lo
    cbnz w28, L11_7
    b L11_45
L11_45:
    mov w14, w28
    b L11_8
L11_7:
    ldr x9, [sp, #16]
    add x14, x9, x26
    ldrb w14, [x14]
    movz x10, #48
    cmp w14, w10
    cset w14, hs
L11_8:
    and w28, w14, #255
    cbnz w28, L11_9
    b L11_46
L11_46:
    mov w14, w28
    b L11_10
L11_9:
    cmp x26, x15
    b.lo 1f
    adrp x0, l_text_40@PAGE
    add x0, x0, l_text_40@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x20, x26
    ldrb w14, [x14]
    movz x10, #57
    cmp w14, w10
    cset w14, ls
L11_10:
    and w28, w14, #255
    cbnz w28, L11_5
    b L11_6
L11_5:
    mov x9, x26
    mov x10, x24
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_41@PAGE
    add x0, x0, l_text_41@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    movz x10, #3
    cmp x14, x10
    b.ne L11_12
L11_11:
    sub x19, x29, #128
    mov x11, x19
    str xzr, [x11, #0]
    sub x20, x29, #104
    mov x10, x19
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    ldr x22, [sp, #144]
    ldr x23, [sp, #136]
    ldr x24, [sp, #128]
    ldr x25, [sp, #120]
    ldr x26, [sp, #112]
    ldr x27, [sp, #104]
    ldr x28, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_12:
L11_13:
    mov w9, w27
    movz x10, #10
    mov w9, w9
    mov w10, w10
    mul x9, x9, x10
    cmp x9, w9, uxtw
    b.eq 1f
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w28, w9
    cmp x26, x15
    b.lo 1f
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x21, x26
    ldrb w14, [x14]
    sub w19, w14, #48
    and w14, w19, #255
    cmp w14, w19
    b.eq L11_15
L11_16:
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
L11_15:
    mov w14, w19
    mov w9, w14
    mov w10, w28
    adds w9, w9, w10
    b.cc 1f
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w27, w9
    add x14, x26, #1
    mov x26, x14
    b L11_4
L11_6:
    cmp x24, x26
    cset w14, eq
    cbnz w14, L11_47
    b L11_20
L11_47:
    mov w19, w14
    b L11_21
L11_20:
    movz x10, #255
    cmp w27, w10
    cset w19, hi
L11_21:
    and w14, w19, #255
    cbnz w14, L11_17
    b L11_18
L11_17:
    sub x19, x29, #136
    mov x11, x19
    str xzr, [x11, #0]
    sub x20, x29, #104
    mov x10, x19
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    ldr x22, [sp, #144]
    ldr x23, [sp, #136]
    ldr x24, [sp, #128]
    ldr x25, [sp, #120]
    ldr x26, [sp, #112]
    ldr x27, [sp, #104]
    ldr x28, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_18:
L11_19:
    mov x9, x26
    mov x10, x24
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_45@PAGE
    add x0, x0, l_text_45@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    movz x10, #1
    cmp x14, x10
    cset w14, hi
    cbnz w14, L11_26
    b L11_48
L11_48:
    mov w19, w14
    b L11_27
L11_26:
    cmp x24, x15
    b.lo 1f
    adrp x0, l_text_45@PAGE
    add x0, x0, l_text_45@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x22, x24
    ldrb w14, [x14]
    movz x10, #48
    cmp w14, w10
    cset w19, eq
L11_27:
    and w14, w19, #255
    cbnz w14, L11_23
    b L11_24
L11_23:
    sub x19, x29, #144
    mov x11, x19
    str xzr, [x11, #0]
    sub x20, x29, #104
    mov x10, x19
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    ldr x22, [sp, #144]
    ldr x23, [sp, #136]
    ldr x24, [sp, #128]
    ldr x25, [sp, #120]
    ldr x26, [sp, #112]
    ldr x27, [sp, #104]
    ldr x28, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_24:
L11_25:
L11_30:
    lsl w14, w23, #8
    orr w14, w14, w27
    add x19, x25, #1
    movz x10, #4
    cmp x19, x10
    b.hs L11_32
L11_31:
    cmp x15, x26
    cset w23, eq
    cbnz w23, L11_49
    b L11_37
L11_49:
    mov w24, w23
    b L11_38
L11_37:
    cmp x26, x15
    b.lo 1f
    adrp x0, l_text_48@PAGE
    add x0, x0, l_text_48@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #8]
    add x23, x9, x26
    ldrb w23, [x23]
    movz x10, #46
    cmp w23, w10
    cset w23, eq
    mov x10, #0
    cmp w23, w10
    cset w24, eq
L11_38:
    and w23, w24, #255
    cbnz w23, L11_34
    b L11_35
L11_34:
    sub x19, x29, #152
    mov x11, x19
    str xzr, [x11, #0]
    sub x20, x29, #104
    mov x10, x19
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    ldr x22, [sp, #144]
    ldr x23, [sp, #136]
    ldr x24, [sp, #128]
    ldr x25, [sp, #120]
    ldr x26, [sp, #112]
    ldr x27, [sp, #104]
    ldr x28, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_35:
L11_36:
    mov x9, x26
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_49@PAGE
    add x0, x0, l_text_49@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    mov x24, x23
    b L11_33
L11_32:
    mov x24, x26
L11_33:
    mov w23, w14
    mov x25, x19
    b L11_1
L11_3:
    sub x14, x29, #120
    add x14, x14, #8
    ldr x14, [x14]
    cmp x14, x24
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L11_41
L11_40:
    sub x19, x29, #160
    mov x11, x19
    str xzr, [x11, #0]
    sub x20, x29, #104
    mov x10, x19
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    ldr x22, [sp, #144]
    ldr x23, [sp, #136]
    ldr x24, [sp, #128]
    ldr x25, [sp, #120]
    ldr x26, [sp, #112]
    ldr x27, [sp, #104]
    ldr x28, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_41:
L11_42:
    sub x14, x29, #168
    str w23, [x14]
    add x15, x14, #4
    movz x9, #1
    strb w9, [x15]
    sub x19, x29, #104
    mov x10, x14
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    ldr x22, [sp, #144]
    ldr x23, [sp, #136]
    ldr x24, [sp, #128]
    ldr x25, [sp, #120]
    ldr x26, [sp, #112]
    ldr x27, [sp, #104]
    ldr x28, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_11render_ipv4
_lb_net_11render_ipv4:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    str x19, [sp, #168]
    str x20, [sp, #160]
    str x21, [sp, #152]
    str x22, [sp, #144]
    str x23, [sp, #136]
    str x24, [sp, #128]
    str x25, [sp, #120]
    str x26, [sp, #112]
    str x27, [sp, #104]
    str x28, [sp, #96]
    sub x16, x29, #112
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #128
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #144
    str x4, [x16]
    sub x14, x29, #144
    ldr x14, [x14]
    sub x15, x29, #128
    ldr x9, [x15]
    str x9, [sp, #40]
    add x15, x15, #8
    ldr x15, [x15]
    sub x20, x29, #112
    ldr x9, [x20]
    str x9, [sp, #32]
    add x20, x20, #8
    ldr x9, [x20]
    str x9, [sp, #24]
    sub x22, x29, #128
    ldr x23, [x22]
    add x22, x22, #8
    ldr x9, [x22]
    str x9, [sp, #16]
    sub x24, x29, #128
    ldr x25, [x24]
    add x24, x24, #8
    ldr x24, [x24]
    sub x26, x29, #128
    ldr x9, [x26]
    str x9, [sp, #8]
    add x26, x26, #8
    ldr x26, [x26]
    mov x9, #0
    mov x28, x9
L12_1:
    movz x10, #4
    cmp x28, x10
    b.hs L12_3
L12_2:
    mov x10, #0
    cmp x28, x10
    b.ls L12_5
L12_4:
    cmp x14, x15
    b.lo 1f
    adrp x0, l_text_51@PAGE
    add x0, x0, l_text_51@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #40]
    add x27, x9, x14
    movz x9, #46
    strb w9, [x27]
    add x27, x14, #1
    b L12_6
L12_5:
    mov x27, x14
L12_6:
    ldr x10, [sp, #24]
    cmp x28, x10
    b.lo 1f
    adrp x0, l_text_53@PAGE
    add x0, x0, l_text_53@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #32]
    add x14, x9, x28
    ldrb w14, [x14]
    and w14, w14, #255
    movz x10, #100
    cmp w14, w10
    b.lo L12_8
L12_7:
    ldr x10, [sp, #16]
    cmp x27, x10
    b.lo 1f
    adrp x0, l_text_54@PAGE
    add x0, x0, l_text_54@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x19, x23, x27
L12_11:
    movz x10, #100
    udiv w20, w14, w10
    and w20, w20, #255
    add w21, w20, #48
    and w20, w21, #255
    cmp w20, w21
    b.eq L12_12
L12_13:
    adrp x0, l_text_54@PAGE
    add x0, x0, l_text_54@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
L12_12:
    strb w21, [x19]
    add x20, x27, #1
    b L12_9
L12_8:
    mov x20, x27
L12_9:
    movz x10, #10
    cmp w14, w10
    b.lo L12_15
L12_14:
    cmp x20, x24
    b.lo 1f
    adrp x0, l_text_57@PAGE
    add x0, x0, l_text_57@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x19, x25, x20
L12_18:
    movz x10, #10
    udiv w21, w14, w10
    and w21, w21, #255
L12_20:
    movz x10, #10
    udiv w11, w21, w10
    msub w27, w11, w10, w21
    and w27, w27, #255
    add w22, w27, #48
    and w27, w22, #255
    cmp w27, w22
    b.eq L12_21
L12_22:
    adrp x0, l_text_57@PAGE
    add x0, x0, l_text_57@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
L12_21:
    strb w22, [x19]
    add x21, x20, #1
    b L12_16
L12_15:
    mov x21, x20
L12_16:
    cmp x21, x26
    b.lo 1f
    adrp x0, l_text_59@PAGE
    add x0, x0, l_text_59@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #8]
    add x19, x9, x21
L12_24:
    movz x10, #10
    udiv w11, w14, w10
    msub w20, w11, w10, w14
    and w20, w20, #255
    add w22, w20, #48
    and w20, w22, #255
    cmp w20, w22
    b.eq L12_25
L12_26:
    adrp x0, l_text_59@PAGE
    add x0, x0, l_text_59@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
L12_25:
    strb w22, [x19]
    add x14, x21, #1
    add x20, x28, #1
    mov x28, x20
    b L12_1
L12_3:
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #168]
    ldr x20, [sp, #160]
    ldr x21, [sp, #152]
    ldr x22, [sp, #144]
    ldr x23, [sp, #136]
    ldr x24, [sp, #128]
    ldr x25, [sp, #120]
    ldr x26, [sp, #112]
    ldr x27, [sp, #104]
    ldr x28, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_10parse_ipv6
_lb_net_10parse_ipv6:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #528
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #496]
    str x20, [sp, #488]
    str x21, [sp, #480]
    str x22, [sp, #472]
    str x23, [sp, #464]
    str x24, [sp, #456]
    str x25, [sp, #448]
    str x26, [sp, #440]
    str x27, [sp, #432]
    str x28, [sp, #424]
    sub x16, x29, #144
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #161
    sub x20, x29, #178
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    strb wzr, [x11, #16]
    movz x9, #1
    strb w9, [x20]
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrb w12, [x10, #16]
    strb w12, [x11, #16]
    sub x9, x29, #200
    str x9, [sp, #24]
    sub x21, x29, #216
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    mov x10, x21
    ldr x11, [sp, #24]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #144
    ldr x21, [x14]
    add x14, x14, #8
    ldr x22, [x14]
    mov x9, #0
    cmp x9, x22
    b.lo 1f
    adrp x0, l_text_69@PAGE
    add x0, x0, l_text_69@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldrb w14, [x21]
    movz x10, #58
    cmp w14, w10
    b.ne L13_2
L13_1:
    movz x10, #2
    cmp x22, x10
    cset w14, lo
    cbnz w14, L13_107
    b L13_7
L13_107:
    mov w15, w14
    b L13_8
L13_7:
    movz x9, #1
    cmp x9, x22
    b.lo 1f
    adrp x0, l_text_70@PAGE
    add x0, x0, l_text_70@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x21, #1
    ldrb w14, [x14]
    movz x10, #58
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L13_8:
    and w14, w15, #255
    cbnz w14, L13_4
    b L13_5
L13_4:
    sub x19, x29, #234
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    strh wzr, [x11, #16]
    sub x20, x29, #122
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrh w12, [x10, #16]
    strh w12, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #18
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_5:
L13_6:
    sub x14, x29, #256
    mov x9, #0
    str x9, [x14]
    add x15, x14, #8
    movz x9, #1
    strb w9, [x15]
    mov x10, x14
    ldr x11, [sp, #24]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x9, #2
    mov x14, x9
    b L13_3
L13_2:
    mov x9, #0
    mov x14, x9
L13_3:
    add x23, x19, #1
    ldr x9, [sp, #24]
    add x24, x9, #8
    sub x9, x29, #440
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    add x9, x9, #8
    str x9, [sp, #8]
    mov x15, x14
    mov x9, #0
    mov x27, x9
    mov x9, #0
    str x9, [sp, #0]
L13_10:
    cmp x15, x22
    b.lo L13_11
L13_108:
    mov x14, x27
    b L13_12
L13_11:
    movz x10, #8
    cmp x27, x10
    b.lo L13_14
L13_13:
    sub x19, x29, #274
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    strh wzr, [x11, #16]
    sub x20, x29, #122
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrh w12, [x10, #16]
    strh w12, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #18
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_14:
L13_15:
    mov x14, x15
    mov x9, #0
    mov w28, w9
L13_17:
    cmp x14, x22
    cset w20, lo
    cbnz w20, L13_20
    b L13_109
L13_109:
    mov w26, w20
    b L13_21
L13_20:
    add x26, x21, x14
    ldrb w26, [x26]
    movz x10, #58
    cmp w26, w10
    cset w26, eq
    mov x10, #0
    cmp w26, w10
    cset w26, eq
L13_21:
    and w25, w26, #255
    cbnz w25, L13_22
    b L13_110
L13_110:
    mov w26, w25
    b L13_23
L13_22:
    cmp x14, x22
    b.lo 1f
    adrp x0, l_text_71@PAGE
    add x0, x0, l_text_71@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x25, x21, x14
    ldrb w25, [x25]
    movz x10, #46
    cmp w25, w10
    cset w25, eq
    mov x10, #0
    cmp w25, w10
    cset w26, eq
L13_23:
    and w25, w26, #255
    cbnz w25, L13_18
    b L13_19
L13_18:
    mov x9, x14
    mov x10, x15
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_72@PAGE
    add x0, x0, l_text_72@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    movz x10, #4
    cmp x20, x10
    b.ne L13_25
L13_24:
    sub x19, x29, #292
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    strh wzr, [x11, #16]
    sub x20, x29, #122
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrh w12, [x10, #16]
    strh w12, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #18
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_25:
L13_26:
    cmp x14, x22
    b.lo 1f
    adrp x0, l_text_73@PAGE
    add x0, x0, l_text_73@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x20, x21, x14
    ldrb w20, [x20]
    and w20, w20, #255
    movz x10, #57
    cmp w20, w10
    b.hi L13_29
L13_28:
    sub w26, w20, #48
    and w25, w26, #255
    cmp w25, w26
    b.eq L13_31
L13_32:
    adrp x0, l_text_74@PAGE
    add x0, x0, l_text_74@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
L13_31:
    mov w20, w26
    and w20, w20, #65535
    b L13_30
L13_29:
    movz x10, #70
    cmp w20, w10
    b.hi L13_34
L13_33:
    sub w26, w20, #65
    and w25, w26, #255
    cmp w25, w26
    b.eq L13_36
L13_37:
    adrp x0, l_text_74@PAGE
    add x0, x0, l_text_74@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
L13_36:
    add w25, w26, #10
    and w20, w25, #255
    cmp w20, w25
    b.eq L13_38
L13_39:
    adrp x0, l_text_74@PAGE
    add x0, x0, l_text_74@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
L13_38:
    mov w20, w25
    and w20, w20, #65535
    b L13_35
L13_34:
    sub w26, w20, #97
    and w25, w26, #255
    cmp w25, w26
    b.eq L13_40
L13_41:
    adrp x0, l_text_74@PAGE
    add x0, x0, l_text_74@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
L13_40:
    add w25, w26, #10
    and w20, w25, #255
    cmp w20, w25
    b.eq L13_42
L13_43:
    adrp x0, l_text_74@PAGE
    add x0, x0, l_text_74@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
L13_42:
    mov w20, w25
    and w20, w20, #65535
L13_35:
    and w25, w20, #65535
    mov w20, w25
L13_30:
    and w25, w20, #65535
    and w26, w28, #65535
L13_45:
    lsl w20, w26, #4
    and w20, w20, #65535
    and w28, w25, #65535
    orr w28, w20, w28
    add x20, x14, #1
    mov x14, x20
    b L13_17
L13_19:
    cbnz w20, L13_49
    b L13_111
L13_111:
    mov w25, w20
    b L13_50
L13_49:
    add x20, x21, x14
    ldrb w20, [x20]
    movz x10, #46
    cmp w20, w10
    cset w25, eq
L13_50:
    and w20, w25, #255
    cbnz w20, L13_46
    b L13_47
L13_46:
    movz x10, #6
    cmp x27, x10
    b.ls L13_52
L13_51:
    sub x19, x29, #310
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    strh wzr, [x11, #16]
    sub x20, x29, #122
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrh w12, [x10, #16]
    strh w12, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #18
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_52:
L13_53:
    add x14, x22, #1
    cmp x15, x14
    b.lo 1f
    adrp x0, l_text_78@PAGE
    add x0, x0, l_text_78@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x22, x14
    b.lo 1f
    adrp x0, l_text_78@PAGE
    add x0, x0, l_text_78@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x15, x22
    b.ls L13_55
L13_56:
    adrp x0, l_text_78@PAGE
    add x0, x0, l_text_78@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
L13_55:
    add x14, x21, x15
    sub x20, x22, x15
    sub x23, x29, #328
    str x14, [x23]
    add x23, x23, #8
    str x20, [x23]
    sub x23, x29, #344
    str x14, [x23]
    add x14, x23, #8
    str x20, [x14]
    mov x9, x23
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_net_17parse_ipv4_number
    sub x16, x29, #352
    str x0, [x16, #0]
    sub x20, x29, #352
    add x14, x20, #4
    ldrb w14, [x14]
    cbnz w14, L13_57
    b L13_58
L13_57:
    ldr w14, [x20]
    b L13_59
L13_58:
    sub x19, x29, #370
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    strh wzr, [x11, #16]
    sub x20, x29, #122
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrh w12, [x10, #16]
    strh w12, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #18
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_59:
    lsl x15, x27, #1
    add x20, x19, #1
    mov x9, #0
    mov x21, x9
L13_61:
    movz x10, #4
    cmp x21, x10
    b.hs L13_63
L13_62:
    mov x9, x15
    mov x10, x21
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_79@PAGE
    add x0, x0, l_text_79@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    movz x10, #16
    cmp x22, x10
    b.lo 1f
    adrp x0, l_text_79@PAGE
    add x0, x0, l_text_79@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x23, x22, x20
    movz x9, #3
    sub x22, x9, x21
    mov x9, x22
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_79@PAGE
    add x0, x0, l_text_79@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x24, x9
    mov w22, w24
    movz x10, #32
    cmp x22, x10
    b.lo L13_65
L13_64:
    adrp x0, l_text_79@PAGE
    add x0, x0, l_text_79@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L13_65:
    lsr w22, w14, w24
    movz x10, #255
    and w22, w22, w10
    mov w22, w22
    and w22, w22, #255
    strb w22, [x23]
    add x22, x21, #1
    mov x21, x22
    b L13_61
L13_63:
    add x14, x27, #2
    b L13_12
L13_47:
L13_48:
    cmp x15, x14
    b.ne L13_68
L13_67:
    sub x19, x29, #388
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    strh wzr, [x11, #16]
    sub x20, x29, #122
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrh w12, [x10, #16]
    strh w12, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #18
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_68:
L13_69:
    lsl x15, x27, #1
    movz x10, #16
    cmp x15, x10
    b.lo 1f
    adrp x0, l_text_82@PAGE
    add x0, x0, l_text_82@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x20, x15, x23
    and w25, w28, #65535
L13_72:
    lsr w26, w25, #8
    and w26, w26, #65535
    mov w26, w26
    and w26, w26, #255
    strb w26, [x20]
    add x26, x15, #1
    movz x10, #16
    cmp x26, x10
    b.lo 1f
    adrp x0, l_text_83@PAGE
    add x0, x0, l_text_83@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x26, x23, x26
    movz x10, #255
    and w28, w25, w10
    mov w28, w28
    and w28, w28, #255
    strb w28, [x26]
    add x26, x27, #1
    cmp x22, x14
    b.ne L13_74
L13_73:
    mov x14, x26
    b L13_12
L13_74:
L13_75:
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_85@PAGE
    add x0, x0, l_text_85@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    cmp x22, x20
    b.ne L13_78
L13_77:
    sub x19, x29, #406
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    strh wzr, [x11, #16]
    sub x20, x29, #122
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrh w12, [x10, #16]
    strh w12, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #18
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_78:
L13_79:
    cmp x20, x22
    b.lo 1f
    adrp x0, l_text_86@PAGE
    add x0, x0, l_text_86@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x21, x20
    ldrb w14, [x14]
    movz x10, #58
    cmp w14, w10
    b.ne L13_82
L13_81:
    ldrb w14, [x24]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L13_85
L13_84:
    sub x19, x29, #424
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    strh wzr, [x11, #16]
    sub x20, x29, #122
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrh w12, [x10, #16]
    strh w12, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #18
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_85:
L13_86:
    ldr x10, [sp, #16]
    str x26, [x10]
    movz x9, #1
    ldr x10, [sp, #8]
    strb w9, [x10]
    ldr x10, [sp, #16]
    ldr x11, [sp, #24]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #1
    mov x25, x26
    b L13_83
L13_82:
    mov x14, x20
    ldr x9, [sp, #0]
    mov x25, x9
L13_83:
    mov x15, x14
    mov x27, x26
    mov x9, x25
    str x9, [sp, #0]
    b L13_10
L13_12:
    ldr x9, [sp, #24]
    add x15, x9, #8
    ldrb w15, [x15]
    cbnz w15, L13_91
    b L13_89
L13_91:
L13_88:
    movz x10, #8
    cmp x14, x10
    b.lo L13_93
L13_92:
    sub x19, x29, #458
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    strh wzr, [x11, #16]
    sub x20, x29, #122
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrh w12, [x10, #16]
    strh w12, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #18
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_93:
L13_94:
    movz x9, #8
    sub x15, x9, x14
    mov x9, x15
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_88@PAGE
    add x0, x0, l_text_88@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    lsl x20, x14, #1
    add x21, x19, #1
L13_96:
    ldr x9, [sp, #0]
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_90@PAGE
    add x0, x0, l_text_90@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    cmp x20, x14
    b.ls L13_98
L13_97:
    mov x9, x20
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_91@PAGE
    add x0, x0, l_text_91@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x15
    mov x10, x14
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_92@PAGE
    add x0, x0, l_text_92@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    movz x10, #16
    cmp x22, x10
    b.lo 1f
    adrp x0, l_text_92@PAGE
    add x0, x0, l_text_92@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x22, x22, x21
    movz x10, #16
    cmp x14, x10
    b.lo 1f
    adrp x0, l_text_92@PAGE
    add x0, x0, l_text_92@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x23, x14, x21
    ldrb w23, [x23]
    strb w23, [x22]
    mov x20, x14
    b L13_96
L13_98:
    add x20, x19, #1
    mov x21, x14
L13_99:
    mov x9, x15
    mov x10, x14
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_94@PAGE
    add x0, x0, l_text_94@PAGEOFF
    adrp x1, l_text_43@PAGE
    add x1, x1, l_text_43@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    cmp x21, x22
    b.hs L13_101
L13_100:
    movz x10, #16
    cmp x21, x10
    b.lo 1f
    adrp x0, l_text_95@PAGE
    add x0, x0, l_text_95@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x22, x20, x21
    mov x9, #0
    strb w9, [x22]
    add x22, x21, #1
    mov x21, x22
    b L13_99
L13_101:
    b L13_90
L13_89:
    movz x10, #8
    cmp x14, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L13_103
L13_102:
    sub x19, x29, #476
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    strh wzr, [x11, #16]
    sub x20, x29, #122
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrh w12, [x10, #16]
    strh w12, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #18
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_103:
L13_104:
L13_90:
    sub x20, x29, #494
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrb w12, [x10, #16]
    strb w12, [x11, #16]
    add x14, x20, #17
    movz x9, #1
    strb w9, [x14]
    sub x21, x29, #122
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldrh w12, [x10, #16]
    strh w12, [x11, #16]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #18
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

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
    cbnz w14, L14_11
    b L14_4
L14_11:
    mov w15, w14
    b L14_5
L14_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L14_5:
    and w14, w15, #255
    cbnz w14, L14_1
    b L14_2
L14_1:
    adrp x14, l_text_20@PAGE
    add x14, x14, l_text_20@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_98@PAGE
    add x14, x14, l_text_98@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L14_3
L14_2:
L14_3:
    mov x10, #0
    cmp x19, x10
    b.ls L14_7
L14_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memcpy
    mov x14, x0
    cbnz x14, L14_9
    b L14_10
L14_10:
    adrp x0, l_text_99@PAGE
    add x0, x0, l_text_99@PAGEOFF
    adrp x1, l_text_100@PAGE
    add x1, x1, l_text_100@PAGEOFF
    bl _lb_core_7trap_at
L14_9:
    b L14_8
L14_7:
L14_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_move_0g1_u8
    .weak_definition _lb_memory_move_0g1_u8
    .no_dead_strip _lb_memory_move_0g1_u8
_lb_memory_move_0g1_u8:
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
    cbnz w14, L15_11
    b L15_4
L15_11:
    mov w15, w14
    b L15_5
L15_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L15_5:
    and w14, w15, #255
    cbnz w14, L15_1
    b L15_2
L15_1:
    adrp x14, l_text_20@PAGE
    add x14, x14, l_text_20@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_101@PAGE
    add x14, x14, l_text_101@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L15_3
L15_2:
L15_3:
    mov x10, #0
    cmp x19, x10
    b.ls L15_7
L15_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memmove
    mov x14, x0
    cbnz x14, L15_9
    b L15_10
L15_10:
    adrp x0, l_text_102@PAGE
    add x0, x0, l_text_102@PAGEOFF
    adrp x1, l_text_100@PAGE
    add x1, x1, l_text_100@PAGEOFF
    bl _lb_core_7trap_at
L15_9:
    b L15_8
L15_7:
L15_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_net_10ip_address_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/net/ip_address.lucb:16:13"
l_text_1:
    .asciz "shift count out of range"
l_text_2:
    .asciz "src/std/net/ip_address.lucb:17:13"
l_text_3:
    .asciz "unreachable"
l_text_4:
    .asciz "src/std/net/ip_address.lucb:18:9"
l_text_5:
    .asciz "an IP address needs four or sixteen octets"
l_text_6:
    .asciz "src/std/net/ip_address.lucb:26:9"
l_text_7:
    .asciz "src/std/net/ip_address.lucb:37:13"
l_text_8:
    .asciz "src/std/net/ip_address.lucb:45:13"
l_text_9:
    .asciz "src/std/net/ip_address.lucb:49:9"
l_text_10:
    .asciz "src/std/net/ip_address.lucb:52:9"
l_text_11:
    .asciz "src/std/net/ip_address.lucb:58:9"
l_text_12:
    .asciz "src/std/net/ip_address.lucb:65:13"
l_text_13:
    .asciz "src/std/net/ip_address.lucb:67:13"
l_text_14:
    .asciz "src/std/net/ip_address.lucb:68:9"
l_text_15:
    .asciz "src/std/net/ip_address.lucb:76:13"
l_text_16:
    .asciz "src/std/net/ip_address.lucb:78:13"
l_text_17:
    .asciz "src/std/net/ip_address.lucb:79:9"
l_text_18:
    .asciz "the destination cannot hold the IP address octets"
l_text_19:
    .asciz "src/std/net/ip_address.lucb:87:9"
l_text_20:
    .asciz "index out of bounds"
l_text_21:
    .asciz "src/std/net/ip_address.lucb:88:9"
l_text_22:
    .asciz "src/std/net/ip_address.lucb:99:13"
l_text_23:
    .asciz "::ffff:"
l_text_24:
    .asciz "src/std/net/ip_address.lucb:102:13"
l_text_25:
    .asciz "src/std/net/ip_address.lucb:109:21"
l_text_26:
    .asciz "src/std/net/ip_address.lucb:113:21"
l_text_27:
    .asciz "src/std/net/ip_address.lucb:114:17"
l_text_28:
    .asciz "src/std/net/ip_address.lucb:116:21"
l_text_29:
    .asciz "src/std/net/ip_address.lucb:120:21"
l_text_30:
    .asciz "src/std/net/ip_address.lucb:121:21"
l_text_31:
    .asciz "src/std/net/ip_address.lucb:122:21"
l_text_32:
    .asciz "src/std/net/ip_address.lucb:123:21"
l_text_33:
    .asciz "src/std/net/ip_address.lucb:125:17"
l_text_34:
    .asciz "src/std/net/ip_address.lucb:126:21"
l_text_35:
    .asciz "src/std/net/ip_address.lucb:127:21"
l_text_36:
    .asciz "src/std/net/ip_address.lucb:129:17"
l_text_37:
    .asciz "the destination cannot hold the formatted IP address"
l_text_38:
    .asciz "src/std/net/ip_address.lucb:133:9"
l_text_39:
    .asciz "src/std/net/ip_address.lucb:136:9"
l_text_40:
    .asciz "src/std/net/ip_address.lucb:145:9"
l_text_41:
    .asciz "src/std/net/ip_address.lucb:146:13"
l_text_42:
    .asciz "src/std/net/ip_address.lucb:148:13"
l_text_43:
    .asciz "integer overflow"
l_text_44:
    .asciz "src/std/net/ip_address.lucb:149:13"
l_text_45:
    .asciz "src/std/net/ip_address.lucb:152:9"
l_text_46:
    .asciz "src/std/net/ip_address.lucb:154:9"
l_text_47:
    .asciz "src/std/net/ip_address.lucb:155:9"
l_text_48:
    .asciz "src/std/net/ip_address.lucb:157:13"
l_text_49:
    .asciz "src/std/net/ip_address.lucb:159:13"
l_text_50:
    .asciz "src/std/net/ip_address.lucb:162:5"
l_text_51:
    .asciz "src/std/net/ip_address.lucb:169:13"
l_text_52:
    .asciz "src/std/net/ip_address.lucb:170:13"
l_text_53:
    .asciz "src/std/net/ip_address.lucb:171:9"
l_text_54:
    .asciz "src/std/net/ip_address.lucb:173:13"
l_text_55:
    .asciz "division by zero"
l_text_56:
    .asciz "src/std/net/ip_address.lucb:174:13"
l_text_57:
    .asciz "src/std/net/ip_address.lucb:176:13"
l_text_58:
    .asciz "src/std/net/ip_address.lucb:177:13"
l_text_59:
    .asciz "src/std/net/ip_address.lucb:178:9"
l_text_60:
    .asciz "src/std/net/ip_address.lucb:179:9"
l_text_61:
    .asciz "src/std/net/ip_address.lucb:180:9"
l_text_62:
    .asciz "src/std/net/ip_address.lucb:181:5"
l_text_63:
    .asciz "0123456789abcdef"
l_text_64:
    .asciz "src/std/net/ip_address.lucb:189:9"
l_text_65:
    .asciz "src/std/net/ip_address.lucb:191:13"
l_text_66:
    .asciz "src/std/net/ip_address.lucb:192:13"
l_text_67:
    .asciz "src/std/net/ip_address.lucb:194:9"
l_text_68:
    .asciz "src/std/net/ip_address.lucb:195:5"
l_text_69:
    .asciz "src/std/net/ip_address.lucb:204:5"
l_text_70:
    .asciz "src/std/net/ip_address.lucb:205:9"
l_text_71:
    .asciz "src/std/net/ip_address.lucb:214:9"
l_text_72:
    .asciz "src/std/net/ip_address.lucb:215:13"
l_text_73:
    .asciz "src/std/net/ip_address.lucb:217:13"
l_text_74:
    .asciz "src/std/net/ip_address.lucb:218:13"
l_text_75:
    .asciz "src/std/net/ip_address.lucb:219:13"
l_text_76:
    .asciz "src/std/net/ip_address.lucb:220:13"
l_text_77:
    .asciz "src/std/net/ip_address.lucb:221:9"
l_text_78:
    .asciz "src/std/net/ip_address.lucb:224:13"
l_text_79:
    .asciz "src/std/net/ip_address.lucb:227:17"
l_text_80:
    .asciz "src/std/net/ip_address.lucb:228:17"
l_text_81:
    .asciz "src/std/net/ip_address.lucb:229:13"
l_text_82:
    .asciz "src/std/net/ip_address.lucb:234:9"
l_text_83:
    .asciz "src/std/net/ip_address.lucb:235:9"
l_text_84:
    .asciz "src/std/net/ip_address.lucb:236:9"
l_text_85:
    .asciz "src/std/net/ip_address.lucb:239:9"
l_text_86:
    .asciz "src/std/net/ip_address.lucb:242:9"
l_text_87:
    .asciz "src/std/net/ip_address.lucb:246:13"
l_text_88:
    .asciz "src/std/net/ip_address.lucb:250:9"
l_text_89:
    .asciz "src/std/net/ip_address.lucb:251:9"
l_text_90:
    .asciz "src/std/net/ip_address.lucb:252:9"
l_text_91:
    .asciz "src/std/net/ip_address.lucb:253:13"
l_text_92:
    .asciz "src/std/net/ip_address.lucb:254:13"
l_text_93:
    .asciz "src/std/net/ip_address.lucb:255:9"
l_text_94:
    .asciz "src/std/net/ip_address.lucb:256:9"
l_text_95:
    .asciz "src/std/net/ip_address.lucb:257:13"
l_text_96:
    .asciz "src/std/net/ip_address.lucb:258:13"
l_text_97:
    .asciz "src/std/net/ip_address.lucb:261:5"
l_text_98:
    .asciz "src/std/memory.lucb:326:9"
l_text_99:
    .asciz "src/std/memory.lucb:328:9"
l_text_100:
    .asciz "null_foreign"
l_text_101:
    .asciz "src/std/memory.lucb:332:9"
l_text_102:
    .asciz "src/std/memory.lucb:334:9"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
