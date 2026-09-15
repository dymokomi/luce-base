    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_net_11http_syntax_0init
_lb_net_11http_syntax_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_10http_equal
    .no_dead_strip _lb_net_10http_equal
_lb_net_10http_equal:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    str x21, [sp, #56]
    str x22, [sp, #48]
    str x23, [sp, #40]
    str x24, [sp, #32]
    sub x16, x29, #80
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #96
    str x2, [x16]
    str x3, [x16, #8]
    sub x14, x29, #80
    add x15, x14, #8
    ldr x15, [x15]
    sub x12, x29, #96
    add x13, x12, #8
    ldr x13, [x13]
    cmp x15, x13
    cset w19, eq
    mov x10, #0
    cmp w19, w10
    b.ne L1_2
L1_1:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    ldr x22, [sp, #48]
    ldr x23, [sp, #40]
    ldr x24, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_4:
    b L1_3
L1_2:
L1_3:
    ldr x19, [x14]
    ldr x20, [x12]
    mov x9, #0
    mov x21, x9
L1_5:
    cmp x21, x15
    b.hs L1_8
L1_6:
    add x14, x19, x21
    ldrb w14, [x14]
    cmp x21, x13
    b.lo 1f
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x12, x20, x21
    ldrb w12, [x12]
    and w14, w14, #255
    movz x10, #65
    cmp w14, w10
    cset w22, hs
    cbnz w22, L1_12
    b L1_28
L1_28:
    mov w23, w22
    b L1_13
L1_12:
    movz x10, #90
    cmp w14, w10
    cset w23, ls
L1_13:
    and w22, w23, #255
    cbnz w22, L1_9
    b L1_10
L1_9:
    add w23, w14, #32
    and w22, w23, #255
    cmp w22, w23
    b.eq L1_14
L1_15:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
L1_14:
    mov w14, w23
    b L1_11
L1_10:
L1_11:
    and w22, w14, #255
    and w23, w12, #255
    movz x10, #65
    cmp w23, w10
    cset w24, hs
    cbnz w24, L1_19
    b L1_29
L1_29:
    mov w14, w24
    b L1_20
L1_19:
    movz x10, #90
    cmp w23, w10
    cset w14, ls
L1_20:
    and w12, w14, #255
    cbnz w12, L1_16
    b L1_17
L1_16:
    add w12, w23, #32
    and w14, w12, #255
    cmp w14, w12
    b.eq L1_21
L1_22:
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
L1_21:
    mov w14, w12
    b L1_18
L1_17:
    mov w14, w23
L1_18:
    and w12, w14, #255
    and w23, w22, #255
    and w12, w12, #255
    cmp w23, w12
    cset w12, eq
    mov x10, #0
    cmp w12, w10
    b.ne L1_24
L1_23:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    ldr x22, [sp, #48]
    ldr x23, [sp, #40]
    ldr x24, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_26:
    b L1_25
L1_24:
L1_25:
L1_7:
    add x14, x21, #1
    mov x21, x14
    b L1_5
L1_8:
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    ldr x22, [sp, #48]
    ldr x23, [sp, #40]
    ldr x24, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_27:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_10http_token
    .no_dead_strip _lb_net_10http_token
_lb_net_10http_token:
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
    mov x10, #0
    cmp x15, x10
    b.ne L2_2
L2_1:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_4:
    b L2_3
L2_2:
L2_3:
    ldr x12, [x14]
    mov x9, #0
    mov x13, x9
L2_5:
    cmp x13, x15
    b.hs L2_8
L2_6:
    add x14, x12, x13
    ldrb w14, [x14]
    and w14, w14, #255
    movz x10, #97
    cmp w14, w10
    cset w19, hs
    cbnz w19, L2_12
    b L2_57
L2_57:
    mov w20, w19
    b L2_13
L2_12:
    movz x10, #122
    cmp w14, w10
    cset w20, ls
L2_13:
    and w19, w20, #255
    cbnz w19, L2_58
    b L2_14
L2_58:
    mov w20, w19
    b L2_15
L2_14:
    movz x10, #65
    cmp w14, w10
    cset w19, hs
    cbnz w19, L2_16
    b L2_59
L2_59:
    mov w20, w19
    b L2_17
L2_16:
    movz x10, #90
    cmp w14, w10
    cset w20, ls
L2_17:
    and w19, w20, #255
    mov w20, w19
L2_15:
    and w19, w20, #255
    cbnz w19, L2_60
    b L2_18
L2_60:
    mov w20, w19
    b L2_19
L2_18:
    movz x10, #48
    cmp w14, w10
    cset w19, hs
    cbnz w19, L2_20
    b L2_61
L2_61:
    mov w20, w19
    b L2_21
L2_20:
    movz x10, #57
    cmp w14, w10
    cset w20, ls
L2_21:
    and w19, w20, #255
    mov w20, w19
L2_19:
    and w19, w20, #255
    cbnz w19, L2_9
    b L2_10
L2_9:
    b L2_7
L2_22:
    b L2_11
L2_10:
L2_11:
    movz x10, #33
    cmp w14, w10
    cset w19, eq
    cbnz w19, L2_62
    b L2_26
L2_62:
    mov w20, w19
    b L2_27
L2_26:
    movz x10, #35
    cmp w14, w10
    cset w20, eq
L2_27:
    and w19, w20, #255
    cbnz w19, L2_63
    b L2_28
L2_63:
    mov w20, w19
    b L2_29
L2_28:
    movz x10, #36
    cmp w14, w10
    cset w20, eq
L2_29:
    and w19, w20, #255
    cbnz w19, L2_64
    b L2_30
L2_64:
    mov w20, w19
    b L2_31
L2_30:
    movz x10, #37
    cmp w14, w10
    cset w20, eq
L2_31:
    and w19, w20, #255
    cbnz w19, L2_65
    b L2_32
L2_65:
    mov w20, w19
    b L2_33
L2_32:
    movz x10, #38
    cmp w14, w10
    cset w20, eq
L2_33:
    and w19, w20, #255
    cbnz w19, L2_66
    b L2_34
L2_66:
    mov w20, w19
    b L2_35
L2_34:
    movz x10, #39
    cmp w14, w10
    cset w20, eq
L2_35:
    and w19, w20, #255
    cbnz w19, L2_67
    b L2_36
L2_67:
    mov w20, w19
    b L2_37
L2_36:
    movz x10, #42
    cmp w14, w10
    cset w20, eq
L2_37:
    and w19, w20, #255
    cbnz w19, L2_68
    b L2_38
L2_68:
    mov w20, w19
    b L2_39
L2_38:
    movz x10, #43
    cmp w14, w10
    cset w20, eq
L2_39:
    and w19, w20, #255
    cbnz w19, L2_69
    b L2_40
L2_69:
    mov w20, w19
    b L2_41
L2_40:
    movz x10, #45
    cmp w14, w10
    cset w20, eq
L2_41:
    and w19, w20, #255
    cbnz w19, L2_70
    b L2_42
L2_70:
    mov w20, w19
    b L2_43
L2_42:
    movz x10, #46
    cmp w14, w10
    cset w20, eq
L2_43:
    and w19, w20, #255
    cbnz w19, L2_71
    b L2_44
L2_71:
    mov w20, w19
    b L2_45
L2_44:
    movz x10, #94
    cmp w14, w10
    cset w20, eq
L2_45:
    and w19, w20, #255
    cbnz w19, L2_72
    b L2_46
L2_72:
    mov w20, w19
    b L2_47
L2_46:
    movz x10, #95
    cmp w14, w10
    cset w20, eq
L2_47:
    and w19, w20, #255
    cbnz w19, L2_73
    b L2_48
L2_73:
    mov w20, w19
    b L2_49
L2_48:
    movz x10, #96
    cmp w14, w10
    cset w20, eq
L2_49:
    and w19, w20, #255
    cbnz w19, L2_74
    b L2_50
L2_74:
    mov w20, w19
    b L2_51
L2_50:
    movz x10, #124
    cmp w14, w10
    cset w20, eq
L2_51:
    and w19, w20, #255
    cbnz w19, L2_75
    b L2_52
L2_75:
    mov w14, w19
    b L2_53
L2_52:
    movz x10, #126
    cmp w14, w10
    cset w19, eq
    mov w14, w19
L2_53:
    and w19, w14, #255
    cbnz w19, L2_23
    b L2_24
L2_23:
    b L2_7
L2_54:
    b L2_25
L2_24:
L2_25:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_55:
L2_7:
    add x14, x13, #1
    mov x13, x14
    b L2_5
L2_8:
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_56:
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_8http_ows
    .no_dead_strip _lb_net_8http_ows
_lb_net_8http_ows:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    sub x16, x29, #72
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #72
    add x15, x14, #8
    ldr x15, [x15]
    ldr x12, [x14]
    mov x9, #0
    mov x13, x9
L3_1:
    cmp x13, x15
    cset w19, lo
    cbnz w19, L3_4
    b L3_18
L3_18:
    mov w20, w19
    b L3_5
L3_4:
    add x19, x12, x13
    ldrb w20, [x19]
    movz x10, #32
    cmp w20, w10
    cset w20, eq
    cbnz w20, L3_19
    b L3_6
L3_19:
    mov w19, w20
    b L3_7
L3_6:
    ldrb w20, [x19]
    movz x10, #9
    cmp w20, w10
    cset w20, eq
    mov w19, w20
L3_7:
    and w20, w19, #255
L3_5:
    and w19, w20, #255
    cbnz w19, L3_2
    b L3_3
L3_2:
    mov x9, x13
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x19, x9
    mov x13, x19
    b L3_1
L3_3:
    ldr x12, [x14]
    mov x19, x15
L3_8:
    cmp x19, x13
    cset w20, hi
    cbnz w20, L3_11
    b L3_20
L3_20:
    mov w21, w20
    b L3_12
L3_11:
    mov x9, x19
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    cmp x20, x15
    b.lo 1f
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x20, x20, x12
    ldrb w21, [x20]
    movz x10, #32
    cmp w21, w10
    cset w21, eq
    cbnz w21, L3_21
    b L3_13
L3_21:
    mov w20, w21
    b L3_14
L3_13:
    ldrb w21, [x20]
    movz x10, #9
    cmp w21, w10
    cset w21, eq
    mov w20, w21
L3_14:
    and w21, w20, #255
L3_12:
    and w20, w21, #255
    cbnz w20, L3_9
    b L3_10
L3_9:
    mov x9, x19
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    mov x19, x20
    b L3_8
L3_10:
    ldr x20, [x14]
    add x12, x15, #1
    cmp x13, x12
    b.lo 1f
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x19, x12
    b.lo 1f
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x13, x19
    b.ls L3_15
L3_16:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
L3_15:
    add x14, x13, x20
    sub x15, x19, x13
    sub x12, x29, #88
    str x14, [x12]
    add x12, x12, #8
    str x15, [x12]
    sub x12, x29, #104
    str x14, [x12]
    add x14, x12, #8
    str x15, [x14]
    sub x21, x29, #56
    mov x10, x12
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x21
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_17:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_14http_list_next
    .no_dead_strip _lb_net_14http_list_next
_lb_net_14http_list_next:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #176]
    str x20, [sp, #168]
    str x21, [sp, #160]
    str x22, [sp, #152]
    sub x16, x29, #96
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #112
    str x2, [x16]
    sub x14, x29, #112
    ldr x14, [x14]
    ldr x15, [x14]
    sub x12, x29, #96
    add x13, x12, #8
    ldr x13, [x13]
    cmp x15, x13
    b.ls L4_2
L4_1:
    sub x19, x29, #136
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #80
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_4:
    b L4_3
L4_2:
L4_3:
    ldr x15, [x14]
    ldr x19, [x12]
L4_5:
    ldr x20, [x14]
    cmp x20, x13
    cset w20, lo
    cbnz w20, L4_8
    b L4_13
L4_13:
    mov w21, w20
    b L4_9
L4_8:
    ldr x20, [x14]
    cmp x20, x13
    b.lo 1f
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x20, x20, x19
    ldrb w20, [x20]
    movz x10, #44
    cmp w20, w10
    cset w20, eq
    mov x10, #0
    cmp w20, w10
    cset w21, eq
L4_9:
    and w20, w21, #255
    cbnz w20, L4_6
    b L4_7
L4_6:
    ldr x20, [x14]
    mov x9, x20
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    str x20, [x14]
    b L4_5
L4_7:
    ldr x19, [x14]
    ldr x20, [x14]
    mov x9, x20
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    str x20, [x14]
    ldr x21, [x12]
    add x20, x13, #1
    cmp x15, x20
    b.lo 1f
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x19, x20
    b.lo 1f
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x15, x19
    b.ls L4_10
L4_11:
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
L4_10:
    add x14, x15, x21
    sub x12, x19, x15
    sub x13, x29, #152
    str x14, [x13]
    add x13, x13, #8
    str x12, [x13]
    sub x13, x29, #168
    str x14, [x13]
    add x14, x13, #8
    str x12, [x14]
    mov x9, x13
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_net_8http_ows
    sub x16, x29, #184
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #184
    sub x20, x29, #208
    mov x10, x14
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #16
    movz x9, #1
    strb w9, [x14]
    sub x22, x29, #80
    mov x10, x20
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_12:
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_11http_number
    .no_dead_strip _lb_net_11http_number
_lb_net_11http_number:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    str x21, [sp, #112]
    sub x16, x29, #104
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #104
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ne L5_2
L5_1:
    sub x19, x29, #88
    add x14, x19, #8
    adrp x15, _lb_net_12http_invalid@PAGE
    add x15, x15, _lb_net_12http_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_18@PAGE
    add x15, x15, l_text_18@PAGEOFF
    sub x12, x29, #120
    str x15, [x12]
    add x15, x12, #8
    movz x9, #17
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_2:
L5_3:
    ldr x12, [x14]
    mov x9, #0
    mov x13, x9
    mov x9, #0
    mov x19, x9
L5_5:
    cmp x19, x15
    b.hs L5_8
L5_6:
    add x14, x12, x19
    ldrb w14, [x14]
    and w14, w14, #255
    movz x10, #48
    cmp w14, w10
    cset w20, lo
    cbnz w20, L5_24
    b L5_12
L5_24:
    mov w21, w20
    b L5_13
L5_12:
    movz x10, #57
    cmp w14, w10
    cset w21, hi
L5_13:
    and w20, w21, #255
    cbnz w20, L5_9
    b L5_10
L5_9:
    sub x19, x29, #88
    add x14, x19, #8
    adrp x15, _lb_net_12http_invalid@PAGE
    add x15, x15, _lb_net_12http_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_19@PAGE
    add x15, x15, l_text_19@PAGEOFF
    sub x12, x29, #136
    str x15, [x12]
    add x15, x12, #8
    movz x9, #19
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_10:
L5_11:
    sub w21, w14, #48
    and w20, w21, #255
    cmp w20, w21
    b.eq L5_15
L5_16:
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
L5_15:
    mov w14, w21
    movn x9, #0
    sub x20, x9, x14
L5_21:
    movz x10, #10
    udiv x21, x20, x10
    cmp x13, x21
    b.ls L5_18
L5_17:
    sub x19, x29, #88
    add x14, x19, #8
    adrp x15, _lb_net_10http_limit@PAGE
    add x15, x15, _lb_net_10http_limit@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_23@PAGE
    add x15, x15, l_text_23@PAGEOFF
    sub x12, x29, #152
    str x15, [x12]
    add x15, x12, #8
    movz x9, #25
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_18:
L5_19:
    mov x9, x13
    movz x10, #10
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    mov x9, x14
    mov x10, x20
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
L5_7:
    add x14, x19, #1
    mov x13, x20
    mov x19, x14
    b L5_5
L5_8:
    sub x14, x29, #88
    str x13, [x14]
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_16http_field_valid
    .no_dead_strip _lb_net_16http_field_valid
_lb_net_16http_field_valid:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #64
    str x0, [x16]
    sub x0, x29, #64
    ldr x1, [x0]
    movz x2, #32
    bl _memcpy
    sub x19, x29, #64
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_net_10http_token
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L6_2
L6_1:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_4:
    b L6_3
L6_2:
L6_3:
    add x14, x19, #16
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x9, #0
    mov x12, x9
L6_5:
    cmp x12, x14
    b.hs L6_8
L6_6:
    add x13, x15, x12
    ldrb w13, [x13]
    and w13, w13, #255
    movz x10, #32
    cmp w13, w10
    cset w19, lo
    cbnz w19, L6_12
    b L6_18
L6_18:
    mov w20, w19
    b L6_13
L6_12:
    movz x10, #9
    cmp w13, w10
    cset w19, eq
    mov x10, #0
    cmp w19, w10
    cset w20, eq
L6_13:
    and w19, w20, #255
    cbnz w19, L6_19
    b L6_14
L6_19:
    mov w13, w19
    b L6_15
L6_14:
    movz x10, #127
    cmp w13, w10
    cset w19, eq
    mov w13, w19
L6_15:
    and w19, w13, #255
    cbnz w19, L6_9
    b L6_10
L6_9:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_16:
    b L6_11
L6_10:
L6_11:
L6_7:
    add x13, x12, #1
    mov x12, x13
    b L6_5
L6_8:
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_17:
    adrp x0, l_text_26@PAGE
    add x0, x0, l_text_26@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_13http_head_end
    .no_dead_strip _lb_net_13http_head_end
_lb_net_13http_head_end:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    sub x16, x29, #64
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #80
    str x2, [x16]
    sub x14, x29, #80
    ldr x14, [x14]
    sub x15, x29, #64
    add x12, x15, #8
    ldr x12, [x12]
    ldr x15, [x15]
L7_1:
    cmp x14, x12
    cset w13, lo
    cbnz w13, L7_4
    b L7_17
L7_17:
    mov w19, w13
    b L7_5
L7_4:
    sub x13, x12, x14
    movz x10, #4
    cmp x13, x10
    cset w19, hs
L7_5:
    and w13, w19, #255
    cbnz w13, L7_2
    b L7_3
L7_2:
    cmp x14, x12
    b.lo 1f
    adrp x0, l_text_28@PAGE
    add x0, x0, l_text_28@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x13, x15, x14
    ldrb w13, [x13]
    movz x10, #13
    cmp w13, w10
    cset w13, eq
    cbnz w13, L7_9
    b L7_18
L7_18:
    mov w19, w13
    b L7_10
L7_9:
    add x13, x14, #1
    cmp x13, x12
    b.lo 1f
    adrp x0, l_text_28@PAGE
    add x0, x0, l_text_28@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x13, x15, x13
    ldrb w13, [x13]
    movz x10, #10
    cmp w13, w10
    cset w19, eq
L7_10:
    and w13, w19, #255
    cbnz w13, L7_11
    b L7_19
L7_19:
    mov w19, w13
    b L7_12
L7_11:
    mov x9, x14
    movz x10, #2
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_28@PAGE
    add x0, x0, l_text_28@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x13, x9
    cmp x13, x12
    b.lo 1f
    adrp x0, l_text_28@PAGE
    add x0, x0, l_text_28@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x13, x15, x13
    ldrb w13, [x13]
    movz x10, #13
    cmp w13, w10
    cset w19, eq
L7_12:
    and w13, w19, #255
    cbnz w13, L7_13
    b L7_20
L7_20:
    mov w19, w13
    b L7_14
L7_13:
    mov x9, x14
    movz x10, #3
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_28@PAGE
    add x0, x0, l_text_28@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x13, x9
    cmp x13, x12
    b.lo 1f
    adrp x0, l_text_28@PAGE
    add x0, x0, l_text_28@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x13, x15, x13
    ldrb w13, [x13]
    movz x10, #10
    cmp w13, w10
    cset w19, eq
L7_14:
    and w13, w19, #255
    cbnz w13, L7_6
    b L7_7
L7_6:
    mov x9, x14
    movz x10, #4
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_29@PAGE
    add x0, x0, l_text_29@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    sub x12, x29, #96
    str x15, [x12]
    add x15, x12, #8
    movz x9, #1
    strb w9, [x15]
    sub x19, x29, #48
    mov x10, x12
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_15:
    b L7_8
L7_7:
L7_8:
    add x13, x14, #1
    mov x14, x13
    b L7_1
L7_3:
    sub x19, x29, #112
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    sub x20, x29, #48
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_16:
    adrp x0, l_text_31@PAGE
    add x0, x0, l_text_31@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_9http_line
    .no_dead_strip _lb_net_9http_line
_lb_net_9http_line:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #176]
    str x20, [sp, #168]
    str x21, [sp, #160]
    sub x16, x29, #112
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #128
    str x2, [x16]
    sub x14, x29, #128
    ldr x14, [x14]
    ldr x15, [x14]
    sub x12, x29, #112
    add x13, x12, #8
    ldr x13, [x13]
    ldr x12, [x12]
L8_1:
    ldr x19, [x14]
    cmp x19, x13
    b.hs L8_3
L8_2:
    ldr x19, [x14]
    cmp x19, x13
    b.lo 1f
    adrp x0, l_text_32@PAGE
    add x0, x0, l_text_32@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x19, x19, x12
    ldrb w19, [x19]
    and w19, w19, #255
    movz x10, #10
    cmp w19, w10
    b.ne L8_5
L8_4:
    sub x19, x29, #96
    add x14, x19, #16
    adrp x15, _lb_net_12http_invalid@PAGE
    add x15, x15, _lb_net_12http_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_33@PAGE
    add x15, x15, l_text_33@PAGEOFF
    sub x12, x29, #144
    str x15, [x12]
    add x15, x12, #8
    movz x9, #23
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_7:
    b L8_6
L8_5:
L8_6:
    movz x10, #13
    cmp w19, w10
    b.ne L8_9
L8_8:
    ldr x19, [x14]
    mov x9, x13
    mov x10, x19
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_34@PAGE
    add x0, x0, l_text_34@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x19, x9
    movz x10, #2
    cmp x19, x10
    cset w19, lo
    cbnz w19, L8_21
    b L8_14
L8_21:
    mov w20, w19
    b L8_15
L8_14:
    ldr x19, [x14]
    mov x9, x19
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_34@PAGE
    add x0, x0, l_text_34@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x19, x9
    cmp x19, x13
    b.lo 1f
    adrp x0, l_text_34@PAGE
    add x0, x0, l_text_34@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x19, x12, x19
    ldrb w19, [x19]
    movz x10, #10
    cmp w19, w10
    cset w19, eq
    mov x10, #0
    cmp w19, w10
    cset w20, eq
L8_15:
    and w19, w20, #255
    cbnz w19, L8_11
    b L8_12
L8_11:
    sub x19, x29, #96
    add x14, x19, #16
    adrp x15, _lb_net_12http_invalid@PAGE
    add x15, x15, _lb_net_12http_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_33@PAGE
    add x15, x15, l_text_33@PAGEOFF
    sub x12, x29, #160
    str x15, [x12]
    add x15, x12, #8
    movz x9, #23
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_16:
    b L8_13
L8_12:
L8_13:
    ldr x19, [x14]
    ldr x20, [x14]
    mov x9, x20
    movz x10, #2
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    str x20, [x14]
    add x20, x13, #1
    cmp x15, x20
    b.lo 1f
    adrp x0, l_text_36@PAGE
    add x0, x0, l_text_36@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x19, x20
    b.lo 1f
    adrp x0, l_text_36@PAGE
    add x0, x0, l_text_36@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x15, x19
    b.ls L8_17
L8_18:
    adrp x0, l_text_36@PAGE
    add x0, x0, l_text_36@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
L8_17:
    add x14, x15, x12
    sub x13, x19, x15
    sub x20, x29, #176
    str x14, [x20]
    add x20, x20, #8
    str x13, [x20]
    sub x20, x29, #192
    str x14, [x20]
    add x14, x20, #8
    str x13, [x14]
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_19:
    b L8_10
L8_9:
L8_10:
    ldr x19, [x14]
    mov x9, x19
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_37@PAGE
    add x0, x0, l_text_37@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x19, x9
    str x19, [x14]
    b L8_1
L8_3:
    sub x19, x29, #96
    add x14, x19, #16
    adrp x15, _lb_net_12http_invalid@PAGE
    add x15, x15, _lb_net_12http_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_38@PAGE
    add x15, x15, l_text_38@PAGEOFF
    sub x12, x29, #208
    str x15, [x12]
    add x15, x12, #8
    movz x9, #20
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_20:
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_15http_uri_letter
_lb_net_15http_uri_letter:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    sub x14, x29, #32
    ldrb w14, [x14]
    movz x10, #97
    cmp w14, w10
    cset w15, hs
    cbnz w15, L9_1
    b L9_8
L9_8:
    mov w12, w15
    b L9_2
L9_1:
    movz x10, #122
    cmp w14, w10
    cset w12, ls
L9_2:
    and w15, w12, #255
    cbnz w15, L9_9
    b L9_3
L9_9:
    mov w14, w15
    b L9_4
L9_3:
    movz x10, #65
    cmp w14, w10
    cset w15, hs
    cbnz w15, L9_5
    b L9_10
L9_10:
    mov w14, w15
    b L9_6
L9_5:
    movz x10, #90
    cmp w14, w10
    cset w15, ls
    mov w14, w15
L9_6:
    and w15, w14, #255
    mov w14, w15
L9_4:
    and w15, w14, #255
    and w15, w15, #255
    mov x9, x15
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_7:
    adrp x0, l_text_40@PAGE
    add x0, x0, l_text_40@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_13http_uri_name
_lb_net_13http_uri_name:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str w0, [x16]
    sub x14, x29, #40
    ldrb w19, [x14]
    mov x0, x19
    bl _lb_net_15http_uri_letter
    mov w14, w0
    cbnz w14, L10_36
    b L10_1
L10_36:
    mov w15, w14
    b L10_2
L10_1:
    movz x10, #48
    cmp w19, w10
    cset w14, hs
    cbnz w14, L10_3
    b L10_37
L10_37:
    mov w15, w14
    b L10_4
L10_3:
    movz x10, #57
    cmp w19, w10
    cset w15, ls
L10_4:
    and w14, w15, #255
    mov w15, w14
L10_2:
    and w14, w15, #255
    cbnz w14, L10_38
    b L10_5
L10_38:
    mov w15, w14
    b L10_6
L10_5:
    movz x10, #45
    cmp w19, w10
    cset w15, eq
L10_6:
    and w14, w15, #255
    cbnz w14, L10_39
    b L10_7
L10_39:
    mov w15, w14
    b L10_8
L10_7:
    movz x10, #46
    cmp w19, w10
    cset w15, eq
L10_8:
    and w14, w15, #255
    cbnz w14, L10_40
    b L10_9
L10_40:
    mov w15, w14
    b L10_10
L10_9:
    movz x10, #95
    cmp w19, w10
    cset w15, eq
L10_10:
    and w14, w15, #255
    cbnz w14, L10_41
    b L10_11
L10_41:
    mov w15, w14
    b L10_12
L10_11:
    movz x10, #126
    cmp w19, w10
    cset w15, eq
L10_12:
    and w14, w15, #255
    cbnz w14, L10_42
    b L10_13
L10_42:
    mov w15, w14
    b L10_14
L10_13:
    movz x10, #33
    cmp w19, w10
    cset w15, eq
L10_14:
    and w14, w15, #255
    cbnz w14, L10_43
    b L10_15
L10_43:
    mov w15, w14
    b L10_16
L10_15:
    movz x10, #36
    cmp w19, w10
    cset w15, eq
L10_16:
    and w14, w15, #255
    cbnz w14, L10_44
    b L10_17
L10_44:
    mov w15, w14
    b L10_18
L10_17:
    movz x10, #38
    cmp w19, w10
    cset w15, eq
L10_18:
    and w14, w15, #255
    cbnz w14, L10_45
    b L10_19
L10_45:
    mov w15, w14
    b L10_20
L10_19:
    movz x10, #39
    cmp w19, w10
    cset w15, eq
L10_20:
    and w14, w15, #255
    cbnz w14, L10_46
    b L10_21
L10_46:
    mov w15, w14
    b L10_22
L10_21:
    movz x10, #40
    cmp w19, w10
    cset w15, eq
L10_22:
    and w14, w15, #255
    cbnz w14, L10_47
    b L10_23
L10_47:
    mov w15, w14
    b L10_24
L10_23:
    movz x10, #41
    cmp w19, w10
    cset w15, eq
L10_24:
    and w14, w15, #255
    cbnz w14, L10_48
    b L10_25
L10_48:
    mov w15, w14
    b L10_26
L10_25:
    movz x10, #42
    cmp w19, w10
    cset w15, eq
L10_26:
    and w14, w15, #255
    cbnz w14, L10_49
    b L10_27
L10_49:
    mov w15, w14
    b L10_28
L10_27:
    movz x10, #43
    cmp w19, w10
    cset w15, eq
L10_28:
    and w14, w15, #255
    cbnz w14, L10_50
    b L10_29
L10_50:
    mov w15, w14
    b L10_30
L10_29:
    movz x10, #44
    cmp w19, w10
    cset w15, eq
L10_30:
    and w14, w15, #255
    cbnz w14, L10_51
    b L10_31
L10_51:
    mov w15, w14
    b L10_32
L10_31:
    movz x10, #59
    cmp w19, w10
    cset w15, eq
L10_32:
    and w14, w15, #255
    cbnz w14, L10_52
    b L10_33
L10_52:
    mov w15, w14
    b L10_34
L10_33:
    movz x10, #61
    cmp w19, w10
    cset w15, eq
L10_34:
    and w14, w15, #255
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_35:
    adrp x0, l_text_41@PAGE
    add x0, x0, l_text_41@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_25http_request_target_valid
    .no_dead_strip _lb_net_25http_request_target_valid
_lb_net_25http_request_target_valid:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #256
    str x19, [sp, #232]
    str x20, [sp, #224]
    str x21, [sp, #216]
    str x22, [sp, #208]
    str x23, [sp, #200]
    str x24, [sp, #192]
    str x25, [sp, #184]
    str x26, [sp, #176]
    sub x16, x29, #96
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #112
    str x2, [x16]
    str x3, [x16, #8]
    sub x19, x29, #112
    mov x10, x19
    sub x11, x29, #240
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x20, x29, #240
    add x14, x20, #8
    ldr x21, [x14]
    mov x10, #0
    cmp x21, x10
    b.ne L11_78
L11_77:
    mov x9, #0
    sub x10, x29, #256
    str w9, [x10]
    mov x9, #0
    mov w14, w9
    b L11_113
L11_80:
    b L11_79
L11_78:
L11_79:
    sub x14, x29, #242
    add x22, x14, #1
    sub x14, x29, #244
    add x23, x14, #1
    mov x9, #0
    mov x24, x9
L11_81:
    cmp x24, x21
    b.hs L11_83
L11_82:
    ldr x25, [x20]
    add x14, x25, x24
    ldrb w14, [x14]
    and w26, w14, #255
    movz x10, #37
    cmp w26, w10
    b.ne L11_85
L11_84:
    sub x14, x21, x24
    movz x10, #3
    cmp x14, x10
    cset w14, lo
    cbnz w14, L11_114
    b L11_90
L11_114:
    mov w15, w14
    b L11_91
L11_90:
    add x14, x24, #1
    cmp x14, x21
    b.lo 1f
    adrp x0, l_text_43@PAGE
    add x0, x0, l_text_43@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x25, x14
    ldrb w14, [x14]
    mov x0, x14
    bl _lb_net_8http_hex
    sub x16, x29, #242
    strh w0, [x16, #0]
    ldrb w14, [x22]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L11_91:
    and w14, w15, #255
    cbnz w14, L11_115
    b L11_92
L11_115:
    mov w15, w14
    b L11_93
L11_92:
    mov x9, x24
    movz x10, #2
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_43@PAGE
    add x0, x0, l_text_43@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    cmp x14, x21
    b.lo 1f
    adrp x0, l_text_43@PAGE
    add x0, x0, l_text_43@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x25, x14
    ldrb w14, [x14]
    mov x0, x14
    bl _lb_net_8http_hex
    sub x16, x29, #244
    strh w0, [x16, #0]
    ldrb w14, [x23]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L11_93:
    and w14, w15, #255
    cbnz w14, L11_87
    b L11_88
L11_87:
    mov x9, #0
    sub x10, x29, #256
    str w9, [x10]
    mov x9, #0
    mov w14, w9
    b L11_113
L11_94:
    b L11_89
L11_88:
L11_89:
    mov x9, x24
    movz x10, #3
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_44@PAGE
    add x0, x0, l_text_44@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x24, x14
    b L11_81
L11_95:
    b L11_86
L11_85:
L11_86:
    mov x0, x26
    bl _lb_net_13http_uri_name
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L11_99
    b L11_116
L11_116:
    mov w15, w14
    b L11_100
L11_99:
    movz x10, #58
    cmp w26, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L11_100:
    and w14, w15, #255
    cbnz w14, L11_101
    b L11_117
L11_117:
    mov w15, w14
    b L11_102
L11_101:
    movz x10, #47
    cmp w26, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L11_102:
    and w14, w15, #255
    cbnz w14, L11_103
    b L11_118
L11_118:
    mov w15, w14
    b L11_104
L11_103:
    movz x10, #63
    cmp w26, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L11_104:
    and w14, w15, #255
    cbnz w14, L11_105
    b L11_119
L11_119:
    mov w15, w14
    b L11_106
L11_105:
    movz x10, #64
    cmp w26, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L11_106:
    and w14, w15, #255
    cbnz w14, L11_107
    b L11_120
L11_120:
    mov w15, w14
    b L11_108
L11_107:
    movz x10, #91
    cmp w26, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L11_108:
    and w14, w15, #255
    cbnz w14, L11_109
    b L11_121
L11_121:
    mov w15, w14
    b L11_110
L11_109:
    movz x10, #93
    cmp w26, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L11_110:
    and w14, w15, #255
    cbnz w14, L11_96
    b L11_97
L11_96:
    mov x9, #0
    sub x10, x29, #256
    str w9, [x10]
    mov x9, #0
    mov w14, w9
    b L11_113
L11_111:
    b L11_98
L11_97:
L11_98:
    add x14, x24, #1
    mov x24, x14
    b L11_81
L11_83:
    movz x9, #1
    sub x10, x29, #256
    str w9, [x10]
    movz x9, #1
    mov w14, w9
    b L11_113
L11_112:
    adrp x0, l_text_46@PAGE
    add x0, x0, l_text_46@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at
L11_113:
    mov x10, #0
    cmp w14, w10
    b.ne L11_2
L11_1:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #232]
    ldr x20, [sp, #224]
    ldr x21, [sp, #216]
    ldr x22, [sp, #208]
    ldr x23, [sp, #200]
    ldr x24, [sp, #192]
    ldr x25, [sp, #184]
    ldr x26, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_4:
    b L11_3
L11_2:
L11_3:
    sub x22, x29, #96
    adrp x14, l_text_47@PAGE
    add x14, x14, l_text_47@PAGEOFF
    sub x15, x29, #128
    str x14, [x15]
    add x15, x15, #8
    movz x9, #7
    str x9, [x15]
    add x15, x22, #8
    ldr x20, [x15]
    movz x10, #7
    cmp x20, x10
    cset w21, eq
    cbnz w21, L11_8
    b L11_122
L11_122:
    mov w14, w21
    b L11_9
L11_8:
    ldr x15, [x22]
    mov x0, x15
    mov x1, x14
    mov x2, x20
    bl _memcmp
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L11_9:
    and w15, w14, #255
    cbnz w15, L11_5
    b L11_6
L11_5:
    sub x20, x29, #144
    sub x21, x29, #160
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    mov x10, x21
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #8
    ldr x21, [x14]
    sub x22, x29, #176
    add x23, x22, #8
    mov x9, #0
    mov x24, x9
    mov x9, #0
    mov x14, x9
L11_10:
    cmp x24, x21
    b.hs L11_13
L11_11:
    ldr x15, [x19]
    add x15, x15, x24
    ldrb w15, [x15]
    movz x10, #58
    cmp w15, w10
    b.ne L11_15
L11_14:
    str x24, [x22]
    movz x9, #1
    strb w9, [x23]
    mov x10, x22
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x14, x24
    b L11_16
L11_15:
L11_16:
L11_12:
    add x15, x24, #1
    mov x24, x15
    b L11_10
L11_13:
    add x15, x20, #8
    ldrb w15, [x15]
    cbnz w15, L11_17
    b L11_18
L11_17:
    b L11_19
L11_18:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #232]
    ldr x20, [sp, #224]
    ldr x21, [sp, #216]
    ldr x22, [sp, #208]
    ldr x23, [sp, #200]
    ldr x24, [sp, #192]
    ldr x25, [sp, #184]
    ldr x26, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_20:
L11_19:
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_49@PAGE
    add x0, x0, l_text_49@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    cmp x21, x15
    b.ne L11_22
L11_21:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #232]
    ldr x20, [sp, #224]
    ldr x21, [sp, #216]
    ldr x22, [sp, #208]
    ldr x23, [sp, #200]
    ldr x24, [sp, #192]
    ldr x25, [sp, #184]
    ldr x26, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_24:
    b L11_23
L11_22:
L11_23:
    ldr x12, [x19]
    add x14, x21, #1
    cmp x15, x14
    b.lo 1f
    adrp x0, l_text_50@PAGE
    add x0, x0, l_text_50@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x21, x14
    b.lo 1f
    adrp x0, l_text_50@PAGE
    add x0, x0, l_text_50@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x15, x21
    b.ls L11_29
L11_30:
    adrp x0, l_text_50@PAGE
    add x0, x0, l_text_50@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
L11_29:
    add x14, x15, x12
    sub x13, x21, x15
    sub x20, x29, #192
    str x14, [x20]
    add x20, x20, #8
    str x13, [x20]
    mov x9, #0
    mov x20, x9
L11_25:
    cmp x20, x13
    b.hs L11_28
L11_26:
    add x15, x14, x20
    ldrb w15, [x15]
    and w15, w15, #255
    movz x10, #48
    cmp w15, w10
    cset w12, lo
    cbnz w12, L11_123
    b L11_34
L11_123:
    mov w15, w12
    b L11_35
L11_34:
    movz x10, #57
    cmp w15, w10
    cset w12, hi
    mov w15, w12
L11_35:
    and w12, w15, #255
    cbnz w12, L11_31
    b L11_32
L11_31:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #232]
    ldr x20, [sp, #224]
    ldr x21, [sp, #216]
    ldr x22, [sp, #208]
    ldr x23, [sp, #200]
    ldr x24, [sp, #192]
    ldr x25, [sp, #184]
    ldr x26, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_36:
    b L11_33
L11_32:
L11_33:
L11_27:
    add x15, x20, #1
    mov x20, x15
    b L11_25
L11_28:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_net_15http_host_valid
    mov w14, w0
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #232]
    ldr x20, [sp, #224]
    ldr x21, [sp, #216]
    ldr x22, [sp, #208]
    ldr x23, [sp, #200]
    ldr x24, [sp, #192]
    ldr x25, [sp, #184]
    ldr x26, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_37:
    b L11_7
L11_6:
L11_7:
    adrp x14, l_text_51@PAGE
    add x14, x14, l_text_51@PAGEOFF
    sub x15, x29, #208
    str x14, [x15]
    add x15, x15, #8
    movz x9, #1
    str x9, [x15]
    add x23, x19, #8
    ldr x15, [x23]
    movz x10, #1
    cmp x15, x10
    cset w12, eq
    cbnz w12, L11_41
    b L11_124
L11_124:
    mov w14, w12
    b L11_42
L11_41:
    ldr x12, [x19]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl _memcmp
    mov w12, w0
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov w14, w12
L11_42:
    and w15, w14, #255
    cbnz w15, L11_38
    b L11_39
L11_38:
    adrp x14, l_text_52@PAGE
    add x14, x14, l_text_52@PAGEOFF
    sub x15, x29, #224
    str x14, [x15]
    add x15, x15, #8
    movz x9, #7
    str x9, [x15]
    cbnz w21, L11_43
    b L11_125
L11_125:
    mov w14, w21
    b L11_44
L11_43:
    ldr x15, [x22]
    mov x0, x15
    mov x1, x14
    mov x2, x20
    bl _memcmp
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L11_44:
    and w15, w14, #255
    and w15, w15, #255
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #232]
    ldr x20, [sp, #224]
    ldr x21, [sp, #216]
    ldr x22, [sp, #208]
    ldr x23, [sp, #200]
    ldr x24, [sp, #192]
    ldr x25, [sp, #184]
    ldr x26, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_45:
    b L11_40
L11_39:
L11_40:
    ldr x14, [x19]
    ldr x15, [x23]
    mov x9, #0
    cmp x9, x15
    b.lo 1f
    adrp x0, l_text_53@PAGE
    add x0, x0, l_text_53@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldrb w15, [x14]
    movz x10, #47
    cmp w15, w10
    b.ne L11_47
L11_46:
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #232]
    ldr x20, [sp, #224]
    ldr x21, [sp, #216]
    ldr x22, [sp, #208]
    ldr x23, [sp, #200]
    ldr x24, [sp, #192]
    ldr x25, [sp, #184]
    ldr x26, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_49:
    b L11_48
L11_47:
L11_48:
    ldrb w15, [x14]
    mov x0, x15
    bl _lb_net_15http_uri_letter
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    b.ne L11_51
L11_50:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #232]
    ldr x20, [sp, #224]
    ldr x21, [sp, #216]
    ldr x22, [sp, #208]
    ldr x23, [sp, #200]
    ldr x24, [sp, #192]
    ldr x25, [sp, #184]
    ldr x26, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_53:
    b L11_52
L11_51:
L11_52:
    ldr x20, [x23]
    movz x9, #1
    mov x21, x9
L11_54:
    cmp x21, x20
    b.hs L11_57
L11_55:
    ldr x14, [x19]
    ldr x15, [x23]
    cmp x21, x15
    b.lo 1f
    adrp x0, l_text_55@PAGE
    add x0, x0, l_text_55@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x14, x21
    ldrb w14, [x14]
    and w22, w14, #255
    movz x10, #58
    cmp w22, w10
    b.ne L11_59
L11_58:
    add x14, x21, #1
    cmp x14, x15
    cset w14, lo
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #232]
    ldr x20, [sp, #224]
    ldr x21, [sp, #216]
    ldr x22, [sp, #208]
    ldr x23, [sp, #200]
    ldr x24, [sp, #192]
    ldr x25, [sp, #184]
    ldr x26, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_61:
    b L11_60
L11_59:
L11_60:
    mov x0, x22
    bl _lb_net_15http_uri_letter
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L11_65
    b L11_126
L11_126:
    mov w15, w14
    b L11_66
L11_65:
    movz x10, #48
    cmp w22, w10
    cset w14, hs
    cbnz w14, L11_67
    b L11_127
L11_127:
    mov w15, w14
    b L11_68
L11_67:
    movz x10, #57
    cmp w22, w10
    cset w15, ls
L11_68:
    and w14, w15, #255
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov w15, w14
L11_66:
    and w14, w15, #255
    cbnz w14, L11_69
    b L11_128
L11_128:
    mov w15, w14
    b L11_70
L11_69:
    movz x10, #43
    cmp w22, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L11_70:
    and w14, w15, #255
    cbnz w14, L11_71
    b L11_129
L11_129:
    mov w15, w14
    b L11_72
L11_71:
    movz x10, #45
    cmp w22, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L11_72:
    and w14, w15, #255
    cbnz w14, L11_73
    b L11_130
L11_130:
    mov w15, w14
    b L11_74
L11_73:
    movz x10, #46
    cmp w22, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L11_74:
    and w14, w15, #255
    cbnz w14, L11_62
    b L11_63
L11_62:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #232]
    ldr x20, [sp, #224]
    ldr x21, [sp, #216]
    ldr x22, [sp, #208]
    ldr x23, [sp, #200]
    ldr x24, [sp, #192]
    ldr x25, [sp, #184]
    ldr x26, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_75:
    b L11_64
L11_63:
L11_64:
L11_56:
    add x14, x21, #1
    mov x21, x14
    b L11_54
L11_57:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #232]
    ldr x20, [sp, #224]
    ldr x21, [sp, #216]
    ldr x22, [sp, #208]
    ldr x23, [sp, #200]
    ldr x24, [sp, #192]
    ldr x25, [sp, #184]
    ldr x26, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_76:
    adrp x0, l_text_57@PAGE
    add x0, x0, l_text_57@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_15http_host_valid
    .no_dead_strip _lb_net_15http_host_valid
_lb_net_15http_host_valid:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #272
    str x19, [sp, #248]
    str x20, [sp, #240]
    str x21, [sp, #232]
    str x22, [sp, #224]
    str x23, [sp, #216]
    str x24, [sp, #208]
    str x25, [sp, #200]
    str x26, [sp, #192]
    sub x16, x29, #96
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #96
    add x20, x19, #8
    ldr x21, [x20]
    mov x10, #0
    cmp x21, x10
    b.ne L12_2
L12_1:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #248]
    ldr x20, [sp, #240]
    ldr x21, [sp, #232]
    ldr x22, [sp, #224]
    ldr x23, [sp, #216]
    ldr x24, [sp, #208]
    ldr x25, [sp, #200]
    ldr x26, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_4:
    b L12_3
L12_2:
L12_3:
    ldr x14, [x19]
    mov x9, #0
    cmp x9, x21
    b.lo 1f
    adrp x0, l_text_58@PAGE
    add x0, x0, l_text_58@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldrb w14, [x14]
    movz x10, #91
    cmp w14, w10
    b.ne L12_6
L12_5:
    adrp x14, l_text_59@PAGE
    add x14, x14, l_text_59@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #1
    str x9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_strings_find
    sub x16, x29, #128
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #128
    add x14, x15, #8
    ldrb w14, [x14]
    cbnz w14, L12_8
    b L12_9
L12_8:
    ldr x22, [x15]
    b L12_10
L12_9:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #248]
    ldr x20, [sp, #240]
    ldr x21, [sp, #232]
    ldr x22, [sp, #224]
    ldr x23, [sp, #216]
    ldr x24, [sp, #208]
    ldr x25, [sp, #200]
    ldr x26, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_11:
L12_10:
    sub x23, x29, #144
    ldr x15, [x19]
    ldr x14, [x20]
    add x14, x14, #1
    movz x9, #1
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_60@PAGE
    add x0, x0, l_text_60@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x22, x14
    b.lo 1f
    adrp x0, l_text_60@PAGE
    add x0, x0, l_text_60@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x9, #1
    cmp x9, x22
    b.ls L12_12
L12_13:
    adrp x0, l_text_60@PAGE
    add x0, x0, l_text_60@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
L12_12:
    add x14, x15, #1
    sub x12, x22, #1
    sub x13, x29, #160
    str x14, [x13]
    add x13, x13, #8
    str x12, [x13]
    sub x13, x29, #176
    str x14, [x13]
    add x14, x13, #8
    str x12, [x14]
    mov x10, x13
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x10, x23
    sub x11, x29, #216
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x24, x29, #216
    mov x9, x24
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #234
    bl _lb_net_IpAddress_parse
    sub x12, x29, #234
    add x14, x12, #17
    ldrb w14, [x14]
    cbnz w14, L12_68
    b L12_66
L12_68:
    sub x23, x29, #251
    mov x10, x12
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldrb w16, [x10, #16]
    strb w16, [x11, #16]
L12_65:
    ldrb w14, [x23]
    movz x10, #1
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    sub x10, x29, #264
    str w14, [x10]
    b L12_101
L12_69:
    b L12_67
L12_66:
L12_67:
    add x23, x24, #8
    ldr x14, [x23]
    movz x10, #4
    cmp x14, x10
    cset w15, lo
    cbnz w15, L12_102
    b L12_73
L12_102:
    mov w14, w15
    b L12_74
L12_73:
    ldr x15, [x24]
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_71@PAGE
    add x0, x0, l_text_71@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldrb w12, [x15]
    movz x10, #118
    cmp w12, w10
    cset w12, eq
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    cbnz w12, L12_75
    b L12_103
L12_103:
    mov w14, w12
    b L12_76
L12_75:
    ldrb w14, [x15]
    movz x10, #86
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L12_76:
    and w15, w14, #255
    mov w14, w15
L12_74:
    and w15, w14, #255
    cbnz w15, L12_70
    b L12_71
L12_70:
    mov x9, #0
    sub x10, x29, #264
    str w9, [x10]
    mov x9, #0
    mov w14, w9
    b L12_101
L12_77:
    b L12_72
L12_71:
L12_72:
    sub x14, x29, #253
    add x25, x14, #1
    movz x9, #1
    mov x26, x9
L12_78:
    ldr x14, [x23]
    cmp x26, x14
    cset w14, lo
    cbnz w14, L12_81
    b L12_104
L12_104:
    mov w15, w14
    b L12_82
L12_81:
    ldr x14, [x24]
    add x14, x14, x26
    ldrb w14, [x14]
    mov x0, x14
    bl _lb_net_8http_hex
    sub x16, x29, #253
    strh w0, [x16, #0]
    ldrb w14, [x25]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L12_82:
    and w14, w15, #255
    cbnz w14, L12_79
    b L12_80
L12_79:
    mov x9, x26
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_73@PAGE
    add x0, x0, l_text_73@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x26, x14
    b L12_78
L12_80:
    movz x10, #1
    cmp x26, x10
    cset w14, eq
    cbnz w14, L12_105
    b L12_86
L12_105:
    mov w15, w14
    b L12_87
L12_86:
    mov x9, x26
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_74@PAGE
    add x0, x0, l_text_74@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    ldr x15, [x23]
    cmp x14, x15
    cset w15, hs
L12_87:
    and w14, w15, #255
    cbnz w14, L12_106
    b L12_88
L12_106:
    mov w15, w14
    b L12_89
L12_88:
    ldr x14, [x24]
    ldr x15, [x23]
    cmp x26, x15
    b.lo 1f
    adrp x0, l_text_74@PAGE
    add x0, x0, l_text_74@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x14, x26
    ldrb w14, [x14]
    movz x10, #46
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L12_89:
    and w14, w15, #255
    cbnz w14, L12_83
    b L12_84
L12_83:
    mov x9, #0
    sub x10, x29, #264
    str w9, [x10]
    mov x9, #0
    mov w14, w9
    b L12_101
L12_90:
    b L12_85
L12_84:
L12_85:
    mov x9, x26
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_75@PAGE
    add x0, x0, l_text_75@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x25, x14
L12_91:
    ldr x14, [x23]
    cmp x25, x14
    b.hs L12_93
L12_92:
    ldr x14, [x24]
    add x14, x14, x25
    ldrb w14, [x14]
    mov x0, x14
    bl _lb_net_13http_uri_name
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L12_97
    b L12_107
L12_107:
    mov w15, w14
    b L12_98
L12_97:
    ldr x14, [x24]
    ldr x15, [x23]
    cmp x25, x15
    b.lo 1f
    adrp x0, l_text_76@PAGE
    add x0, x0, l_text_76@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x14, x25
    ldrb w14, [x14]
    movz x10, #58
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L12_98:
    and w14, w15, #255
    cbnz w14, L12_94
    b L12_95
L12_94:
    mov x9, #0
    sub x10, x29, #264
    str w9, [x10]
    mov x9, #0
    mov w14, w9
    b L12_101
L12_99:
    b L12_96
L12_95:
L12_96:
    add x14, x25, #1
    mov x25, x14
    b L12_91
L12_93:
    movz x9, #1
    sub x10, x29, #264
    str w9, [x10]
    movz x9, #1
    mov w14, w9
    b L12_101
L12_100:
    adrp x0, l_text_78@PAGE
    add x0, x0, l_text_78@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at
L12_101:
    mov x10, #0
    cmp w14, w10
    b.ne L12_15
L12_14:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #248]
    ldr x20, [sp, #240]
    ldr x21, [sp, #232]
    ldr x22, [sp, #224]
    ldr x23, [sp, #216]
    ldr x24, [sp, #208]
    ldr x25, [sp, #200]
    ldr x26, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_17:
    b L12_16
L12_15:
L12_16:
    add x14, x22, #1
    ldr x15, [x20]
    cmp x14, x15
    b.hs L12_19
L12_18:
    ldr x12, [x19]
    add x12, x14, x12
    ldrb w12, [x12]
    movz x10, #58
    cmp w12, w10
    cset w12, eq
    mov x10, #0
    cmp w12, w10
    b.ne L12_22
L12_21:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #248]
    ldr x20, [sp, #240]
    ldr x21, [sp, #232]
    ldr x22, [sp, #224]
    ldr x23, [sp, #216]
    ldr x24, [sp, #208]
    ldr x25, [sp, #200]
    ldr x26, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_24:
    b L12_23
L12_22:
L12_23:
    mov x9, x22
    movz x10, #2
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_63@PAGE
    add x0, x0, l_text_63@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    b L12_20
L12_19:
    mov x14, x21
L12_20:
    mov x12, x14
    mov x13, x15
    b L12_7
L12_6:
    sub x14, x29, #178
    add x22, x14, #1
    sub x14, x29, #180
    add x23, x14, #1
    mov x9, #0
    mov x24, x9
L12_25:
    ldr x13, [x20]
    cmp x24, x13
    b.lo L12_26
L12_108:
    mov x14, x21
    b L12_27
L12_26:
    ldr x14, [x19]
    add x15, x14, x24
    ldrb w15, [x15]
    and w15, w15, #255
    movz x10, #58
    cmp w15, w10
    b.ne L12_29
L12_28:
    mov x10, #0
    cmp x24, x10
    b.ne L12_32
L12_31:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #248]
    ldr x20, [sp, #240]
    ldr x21, [sp, #232]
    ldr x22, [sp, #224]
    ldr x23, [sp, #216]
    ldr x24, [sp, #208]
    ldr x25, [sp, #200]
    ldr x26, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_34:
    b L12_33
L12_32:
L12_33:
    add x14, x24, #1
    b L12_27
L12_35:
    b L12_30
L12_29:
L12_30:
    movz x10, #37
    cmp w15, w10
    b.ne L12_37
L12_36:
    sub x15, x13, x24
    movz x10, #3
    cmp x15, x10
    cset w15, lo
    cbnz w15, L12_109
    b L12_42
L12_109:
    mov w14, w15
    b L12_43
L12_42:
    add x15, x24, #1
    cmp x15, x13
    b.lo 1f
    adrp x0, l_text_66@PAGE
    add x0, x0, l_text_66@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x15, x14, x15
    ldrb w15, [x15]
    mov x0, x15
    bl _lb_net_8http_hex
    sub x16, x29, #178
    strh w0, [x16, #0]
    ldrb w15, [x22]
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L12_43:
    and w15, w14, #255
    cbnz w15, L12_110
    b L12_44
L12_110:
    mov w14, w15
    b L12_45
L12_44:
    mov x9, x24
    movz x10, #2
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_66@PAGE
    add x0, x0, l_text_66@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    ldr x15, [x19]
    ldr x12, [x20]
    cmp x14, x12
    b.lo 1f
    adrp x0, l_text_66@PAGE
    add x0, x0, l_text_66@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x14, x15
    ldrb w14, [x14]
    mov x0, x14
    bl _lb_net_8http_hex
    sub x16, x29, #180
    strh w0, [x16, #0]
    ldrb w14, [x23]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L12_45:
    and w15, w14, #255
    cbnz w15, L12_39
    b L12_40
L12_39:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #248]
    ldr x20, [sp, #240]
    ldr x21, [sp, #232]
    ldr x22, [sp, #224]
    ldr x23, [sp, #216]
    ldr x24, [sp, #208]
    ldr x25, [sp, #200]
    ldr x26, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_46:
    b L12_41
L12_40:
L12_41:
    mov x9, x24
    movz x10, #3
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_67@PAGE
    add x0, x0, l_text_67@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x24, x14
    b L12_25
L12_47:
    b L12_38
L12_37:
L12_38:
    mov x0, x15
    bl _lb_net_13http_uri_name
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L12_49
L12_48:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #248]
    ldr x20, [sp, #240]
    ldr x21, [sp, #232]
    ldr x22, [sp, #224]
    ldr x23, [sp, #216]
    ldr x24, [sp, #208]
    ldr x25, [sp, #200]
    ldr x26, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_51:
    b L12_50
L12_49:
L12_50:
    add x14, x24, #1
    mov x24, x14
    b L12_25
L12_27:
    mov x12, x14
L12_7:
    ldr x15, [x19]
    add x14, x13, #1
    cmp x12, x14
    b.lo 1f
    adrp x0, l_text_69@PAGE
    add x0, x0, l_text_69@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x13, x14
    b.lo 1f
    adrp x0, l_text_69@PAGE
    add x0, x0, l_text_69@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x12, x13
    b.ls L12_56
L12_57:
    adrp x0, l_text_69@PAGE
    add x0, x0, l_text_69@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
L12_56:
    add x14, x12, x15
    sub x19, x13, x12
    sub x20, x29, #200
    str x14, [x20]
    add x20, x20, #8
    str x19, [x20]
    mov x9, #0
    mov x20, x9
L12_52:
    cmp x20, x19
    b.hs L12_55
L12_53:
    add x15, x14, x20
    ldrb w15, [x15]
    and w15, w15, #255
    movz x10, #48
    cmp w15, w10
    cset w12, lo
    cbnz w12, L12_111
    b L12_61
L12_111:
    mov w15, w12
    b L12_62
L12_61:
    movz x10, #57
    cmp w15, w10
    cset w12, hi
    mov w15, w12
L12_62:
    and w12, w15, #255
    cbnz w12, L12_58
    b L12_59
L12_58:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #248]
    ldr x20, [sp, #240]
    ldr x21, [sp, #232]
    ldr x22, [sp, #224]
    ldr x23, [sp, #216]
    ldr x24, [sp, #208]
    ldr x25, [sp, #200]
    ldr x26, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_63:
    b L12_60
L12_59:
L12_60:
L12_54:
    add x15, x20, #1
    mov x20, x15
    b L12_52
L12_55:
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #248]
    ldr x20, [sp, #240]
    ldr x21, [sp, #232]
    ldr x22, [sp, #224]
    ldr x23, [sp, #216]
    ldr x24, [sp, #208]
    ldr x25, [sp, #200]
    ldr x26, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_64:
    adrp x0, l_text_70@PAGE
    add x0, x0, l_text_70@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_net_11http_syntax_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/net/http/syntax.lucb:6:9"
l_text_1:
    .asciz "src/std/net/http/syntax.lucb:7:9"
l_text_2:
    .asciz "integer overflow"
l_text_3:
    .asciz "src/std/net/http/syntax.lucb:8:9"
l_text_4:
    .asciz "src/std/net/http/syntax.lucb:9:9"
l_text_5:
    .asciz "unreachable"
l_text_6:
    .asciz "src/std/net/http/syntax.lucb:12:5"
l_text_7:
    .asciz "src/std/net/http/syntax.lucb:23:5"
l_text_8:
    .asciz "src/std/net/http/syntax.lucb:28:5"
l_text_9:
    .asciz "src/std/net/http/syntax.lucb:29:9"
l_text_10:
    .asciz "src/std/net/http/syntax.lucb:30:5"
l_text_11:
    .asciz "src/std/net/http/syntax.lucb:31:9"
l_text_12:
    .asciz "src/std/net/http/syntax.lucb:32:5"
l_text_13:
    .asciz "index out of bounds"
l_text_14:
    .asciz "src/std/net/http/syntax.lucb:38:5"
l_text_15:
    .asciz "src/std/net/http/syntax.lucb:39:9"
l_text_16:
    .asciz "src/std/net/http/syntax.lucb:41:5"
l_text_17:
    .asciz "src/std/net/http/syntax.lucb:42:5"
l_text_18:
    .asciz "empty HTTP length"
l_text_19:
    .asciz "invalid HTTP length"
l_text_20:
    .asciz "src/std/net/http/syntax.lucb:51:9"
l_text_21:
    .asciz "src/std/net/http/syntax.lucb:52:9"
l_text_22:
    .asciz "division by zero"
l_text_23:
    .asciz "HTTP length overflows u64"
l_text_24:
    .asciz "src/std/net/http/syntax.lucb:54:9"
l_text_25:
    .asciz "src/std/net/http/syntax.lucb:55:5"
l_text_26:
    .asciz "src/std/net/http/syntax.lucb:63:5"
l_text_27:
    .asciz "src/std/net/http/syntax.lucb:70:5"
l_text_28:
    .asciz "src/std/net/http/syntax.lucb:71:9"
l_text_29:
    .asciz "src/std/net/http/syntax.lucb:72:13"
l_text_30:
    .asciz "src/std/net/http/syntax.lucb:73:9"
l_text_31:
    .asciz "src/std/net/http/syntax.lucb:74:5"
l_text_32:
    .asciz "src/std/net/http/syntax.lucb:79:9"
l_text_33:
    .asciz "HTTP lines require CRLF"
l_text_34:
    .asciz "src/std/net/http/syntax.lucb:83:13"
l_text_35:
    .asciz "src/std/net/http/syntax.lucb:86:13"
l_text_36:
    .asciz "src/std/net/http/syntax.lucb:87:13"
l_text_37:
    .asciz "src/std/net/http/syntax.lucb:88:9"
l_text_38:
    .asciz "incomplete HTTP line"
l_text_39:
    .asciz "src/std/net/http/syntax.lucb:89:5"
l_text_40:
    .asciz "src/std/net/http/syntax.lucb:92:5"
l_text_41:
    .asciz "src/std/net/http/syntax.lucb:95:5"
l_text_42:
    .asciz "src/std/net/http/syntax.lucb:102:9"
l_text_43:
    .asciz "src/std/net/http/syntax.lucb:104:13"
l_text_44:
    .asciz "src/std/net/http/syntax.lucb:106:13"
l_text_45:
    .asciz "src/std/net/http/syntax.lucb:110:9"
l_text_46:
    .asciz "src/std/net/http/syntax.lucb:111:5"
l_text_47:
    .asciz "CONNECT"
l_text_48:
    .asciz "src/std/net/http/syntax.lucb:119:13"
l_text_49:
    .asciz "src/std/net/http/syntax.lucb:122:9"
l_text_50:
    .asciz "src/std/net/http/syntax.lucb:124:9"
l_text_51:
    .asciz "*"
l_text_52:
    .asciz "OPTIONS"
l_text_53:
    .asciz "src/std/net/http/syntax.lucb:130:5"
l_text_54:
    .asciz "src/std/net/http/syntax.lucb:134:5"
l_text_55:
    .asciz "src/std/net/http/syntax.lucb:137:9"
l_text_56:
    .asciz "src/std/net/http/syntax.lucb:139:13"
l_text_57:
    .asciz "src/std/net/http/syntax.lucb:142:5"
l_text_58:
    .asciz "src/std/net/http/syntax.lucb:148:5"
l_text_59:
    .asciz "]"
l_text_60:
    .asciz "src/std/net/http/syntax.lucb:150:9"
l_text_61:
    .asciz "src/std/net/http/syntax.lucb:153:9"
l_text_62:
    .asciz "src/std/net/http/syntax.lucb:154:13"
l_text_63:
    .asciz "src/std/net/http/syntax.lucb:156:13"
l_text_64:
    .asciz "src/std/net/http/syntax.lucb:160:13"
l_text_65:
    .asciz "src/std/net/http/syntax.lucb:164:17"
l_text_66:
    .asciz "src/std/net/http/syntax.lucb:167:17"
l_text_67:
    .asciz "src/std/net/http/syntax.lucb:169:17"
l_text_68:
    .asciz "src/std/net/http/syntax.lucb:173:13"
l_text_69:
    .asciz "src/std/net/http/syntax.lucb:174:5"
l_text_70:
    .asciz "src/std/net/http/syntax.lucb:177:5"
l_text_71:
    .asciz "src/std/net/http/syntax.lucb:183:5"
l_text_72:
    .asciz "src/std/net/http/syntax.lucb:186:5"
l_text_73:
    .asciz "src/std/net/http/syntax.lucb:187:9"
l_text_74:
    .asciz "src/std/net/http/syntax.lucb:188:5"
l_text_75:
    .asciz "src/std/net/http/syntax.lucb:190:5"
l_text_76:
    .asciz "src/std/net/http/syntax.lucb:192:9"
l_text_77:
    .asciz "src/std/net/http/syntax.lucb:194:9"
l_text_78:
    .asciz "src/std/net/http/syntax.lucb:195:5"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
