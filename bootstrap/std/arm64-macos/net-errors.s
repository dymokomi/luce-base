    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_net_errors_0init
_lb_net_errors_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_net_failed@PAGE
    add x14, x14, _lb_net_failed@PAGEOFF
    movz x9, #9
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_closed@PAGE
    add x14, x14, _lb_net_closed@PAGEOFF
    movz x9, #10
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_12unknown_host@PAGE
    add x14, x14, _lb_net_12unknown_host@PAGEOFF
    movz x9, #11
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_15invalid_options@PAGE
    add x14, x14, _lb_net_15invalid_options@PAGEOFF
    movz x9, #35
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_17message_too_large@PAGE
    add x14, x14, _lb_net_17message_too_large@PAGEOFF
    movz x9, #36
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_cancelled@PAGE
    add x14, x14, _lb_net_cancelled@PAGEOFF
    movz x9, #37
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_9timed_out@PAGE
    add x14, x14, _lb_net_9timed_out@PAGEOFF
    movz x9, #38
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_18connection_refused@PAGE
    add x14, x14, _lb_net_18connection_refused@PAGEOFF
    movz x9, #39
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_19network_unreachable@PAGE
    add x14, x14, _lb_net_19network_unreachable@PAGEOFF
    movz x9, #40
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_14address_in_use@PAGE
    add x14, x14, _lb_net_14address_in_use@PAGEOFF
    movz x9, #41
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_19address_unavailable@PAGE
    add x14, x14, _lb_net_19address_unavailable@PAGEOFF
    movz x9, #42
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_17permission_denied@PAGE
    add x14, x14, _lb_net_17permission_denied@PAGEOFF
    movz x9, #43
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_18resource_exhausted@PAGE
    add x14, x14, _lb_net_18resource_exhausted@PAGEOFF
    movz x9, #44
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_18connection_aborted@PAGE
    add x14, x14, _lb_net_18connection_aborted@PAGEOFF
    movz x9, #45
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_unsupported@PAGE
    add x14, x14, _lb_net_unsupported@PAGEOFF
    movz x9, #46
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_20resolution_temporary@PAGE
    add x14, x14, _lb_net_20resolution_temporary@PAGEOFF
    movz x9, #47
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_12socket_error
    .no_dead_strip _lb_net_12socket_error
_lb_net_12socket_error:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    sub x14, x29, #32
    ldrsw x14, [x14]
    movz x10, #35
    cmp w14, w10
    b.ne L1_2
L1_1:
    adrp x14, _lb_io_11would_block@PAGE
    add x14, x14, _lb_io_11would_block@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_2:
L1_3:
    movz x10, #9
    cmp w14, w10
    cset w15, eq
    cbnz w15, L1_106
    b L1_8
L1_106:
    mov w12, w15
    b L1_9
L1_8:
    movz x10, #32
    cmp w14, w10
    cset w12, eq
L1_9:
    and w15, w12, #255
    cbnz w15, L1_107
    b L1_10
L1_107:
    mov w12, w15
    b L1_11
L1_10:
    movz x10, #54
    cmp w14, w10
    cset w12, eq
L1_11:
    and w15, w12, #255
    cbnz w15, L1_108
    b L1_12
L1_108:
    mov w12, w15
    b L1_13
L1_12:
    movz x10, #57
    cmp w14, w10
    cset w12, eq
L1_13:
    and w15, w12, #255
    cbnz w15, L1_109
    b L1_14
L1_109:
    mov w12, w15
    b L1_15
L1_14:
    movz x10, #58
    cmp w14, w10
    cset w12, eq
L1_15:
    and w15, w12, #255
    cbnz w15, L1_110
    b L1_16
L1_110:
    mov w12, w15
    b L1_17
L1_16:
    movz x10, #52
    cmp w14, w10
    cset w12, eq
L1_17:
    and w15, w12, #255
    cbnz w15, L1_5
    b L1_6
L1_5:
    adrp x14, _lb_net_closed@PAGE
    add x14, x14, _lb_net_closed@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_6:
L1_7:
    movz x10, #60
    cmp w14, w10
    b.ne L1_20
L1_19:
    adrp x14, _lb_net_9timed_out@PAGE
    add x14, x14, _lb_net_9timed_out@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_20:
L1_21:
    movz x10, #89
    cmp w14, w10
    b.ne L1_24
L1_23:
    adrp x14, _lb_net_cancelled@PAGE
    add x14, x14, _lb_net_cancelled@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_24:
L1_25:
    movz x10, #61
    cmp w14, w10
    b.ne L1_28
L1_27:
    adrp x14, _lb_net_18connection_refused@PAGE
    add x14, x14, _lb_net_18connection_refused@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_28:
L1_29:
    movz x10, #50
    cmp w14, w10
    cset w15, eq
    cbnz w15, L1_111
    b L1_34
L1_111:
    mov w12, w15
    b L1_35
L1_34:
    movz x10, #51
    cmp w14, w10
    cset w12, eq
L1_35:
    and w15, w12, #255
    cbnz w15, L1_112
    b L1_36
L1_112:
    mov w12, w15
    b L1_37
L1_36:
    movz x10, #64
    cmp w14, w10
    cset w12, eq
L1_37:
    and w15, w12, #255
    cbnz w15, L1_113
    b L1_38
L1_113:
    mov w12, w15
    b L1_39
L1_38:
    movz x10, #65
    cmp w14, w10
    cset w12, eq
L1_39:
    and w15, w12, #255
    cbnz w15, L1_31
    b L1_32
L1_31:
    adrp x14, _lb_net_19network_unreachable@PAGE
    add x14, x14, _lb_net_19network_unreachable@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_32:
L1_33:
    movz x10, #48
    cmp w14, w10
    b.ne L1_42
L1_41:
    adrp x14, _lb_net_14address_in_use@PAGE
    add x14, x14, _lb_net_14address_in_use@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_42:
L1_43:
    movz x10, #49
    cmp w14, w10
    b.ne L1_46
L1_45:
    adrp x14, _lb_net_19address_unavailable@PAGE
    add x14, x14, _lb_net_19address_unavailable@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_46:
L1_47:
    movz x10, #1
    cmp w14, w10
    cset w15, eq
    cbnz w15, L1_114
    b L1_52
L1_114:
    mov w12, w15
    b L1_53
L1_52:
    movz x10, #13
    cmp w14, w10
    cset w12, eq
L1_53:
    and w15, w12, #255
    cbnz w15, L1_49
    b L1_50
L1_49:
    adrp x14, _lb_net_17permission_denied@PAGE
    add x14, x14, _lb_net_17permission_denied@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_50:
L1_51:
    movz x10, #12
    cmp w14, w10
    cset w15, eq
    cbnz w15, L1_115
    b L1_58
L1_115:
    mov w12, w15
    b L1_59
L1_58:
    movz x10, #23
    cmp w14, w10
    cset w12, eq
L1_59:
    and w15, w12, #255
    cbnz w15, L1_116
    b L1_60
L1_116:
    mov w12, w15
    b L1_61
L1_60:
    movz x10, #24
    cmp w14, w10
    cset w12, eq
L1_61:
    and w15, w12, #255
    cbnz w15, L1_117
    b L1_62
L1_117:
    mov w12, w15
    b L1_63
L1_62:
    movz x10, #55
    cmp w14, w10
    cset w12, eq
L1_63:
    and w15, w12, #255
    cbnz w15, L1_55
    b L1_56
L1_55:
    adrp x14, _lb_net_18resource_exhausted@PAGE
    add x14, x14, _lb_net_18resource_exhausted@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_56:
L1_57:
    movz x10, #53
    cmp w14, w10
    b.ne L1_66
L1_65:
    adrp x14, _lb_net_18connection_aborted@PAGE
    add x14, x14, _lb_net_18connection_aborted@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_66:
L1_67:
    movz x10, #40
    cmp w14, w10
    b.ne L1_70
L1_69:
    adrp x14, _lb_net_17message_too_large@PAGE
    add x14, x14, _lb_net_17message_too_large@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_70:
L1_71:
    movz x10, #22
    cmp w14, w10
    cset w15, eq
    cbnz w15, L1_118
    b L1_76
L1_118:
    mov w12, w15
    b L1_77
L1_76:
    movz x10, #38
    cmp w14, w10
    cset w12, eq
L1_77:
    and w15, w12, #255
    cbnz w15, L1_119
    b L1_78
L1_119:
    mov w12, w15
    b L1_79
L1_78:
    movz x10, #39
    cmp w14, w10
    cset w12, eq
L1_79:
    and w15, w12, #255
    cbnz w15, L1_120
    b L1_80
L1_120:
    mov w12, w15
    b L1_81
L1_80:
    movz x10, #41
    cmp w14, w10
    cset w12, eq
L1_81:
    and w15, w12, #255
    cbnz w15, L1_73
    b L1_74
L1_73:
    adrp x14, _lb_net_15invalid_options@PAGE
    add x14, x14, _lb_net_15invalid_options@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_74:
L1_75:
    movz x10, #42
    cmp w14, w10
    cset w15, eq
    cbnz w15, L1_121
    b L1_86
L1_121:
    mov w12, w15
    b L1_87
L1_86:
    movz x10, #43
    cmp w14, w10
    cset w12, eq
L1_87:
    and w15, w12, #255
    cbnz w15, L1_122
    b L1_88
L1_122:
    mov w12, w15
    b L1_89
L1_88:
    movz x10, #44
    cmp w14, w10
    cset w12, eq
L1_89:
    and w15, w12, #255
    cbnz w15, L1_123
    b L1_90
L1_123:
    mov w12, w15
    b L1_91
L1_90:
    movz x10, #45
    cmp w14, w10
    cset w12, eq
L1_91:
    and w15, w12, #255
    cbnz w15, L1_124
    b L1_92
L1_124:
    mov w12, w15
    b L1_93
L1_92:
    movz x10, #46
    cmp w14, w10
    cset w12, eq
L1_93:
    and w15, w12, #255
    cbnz w15, L1_125
    b L1_94
L1_125:
    mov w12, w15
    b L1_95
L1_94:
    movz x10, #47
    cmp w14, w10
    cset w12, eq
L1_95:
    and w15, w12, #255
    cbnz w15, L1_126
    b L1_96
L1_126:
    mov w12, w15
    b L1_97
L1_96:
    movz x10, #78
    cmp w14, w10
    cset w12, eq
L1_97:
    and w15, w12, #255
    cbnz w15, L1_83
    b L1_84
L1_83:
    adrp x14, _lb_net_unsupported@PAGE
    add x14, x14, _lb_net_unsupported@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_84:
L1_85:
L1_102:
    movz x10, #102
    cmp w14, w10
    cset w15, eq
L1_103:
    and w14, w15, #255
    cbnz w14, L1_99
    b L1_100
L1_99:
    adrp x14, _lb_net_unsupported@PAGE
    add x14, x14, _lb_net_unsupported@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_100:
L1_101:
    adrp x14, _lb_net_failed@PAGE
    add x14, x14, _lb_net_failed@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_14resolver_error
    .no_dead_strip _lb_net_14resolver_error
_lb_net_14resolver_error:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    sub x14, x29, #32
    ldrsw x14, [x14]
    movz x10, #2
    cmp w14, w10
    b.ne L2_2
L2_1:
    adrp x14, _lb_net_20resolution_temporary@PAGE
    add x14, x14, _lb_net_20resolution_temporary@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_4:
    b L2_3
L2_2:
L2_3:
    movz x10, #6
    cmp w14, w10
    b.ne L2_6
L2_5:
    adrp x14, _lb_net_18resource_exhausted@PAGE
    add x14, x14, _lb_net_18resource_exhausted@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_8:
    b L2_7
L2_6:
L2_7:
    movz x10, #11
    cmp w14, w10
    b.ne L2_10
L2_9:
    bl _lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl _lb_net_12socket_error
    mov w14, w0
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_12:
    b L2_11
L2_10:
L2_11:
    movz x10, #8
    cmp w14, w10
    cset w15, eq
    cbnz w15, L2_34
    b L2_16
L2_34:
    mov w12, w15
    b L2_17
L2_16:
    movz x10, #7
    cmp w14, w10
    cset w12, eq
L2_17:
    and w15, w12, #255
    cbnz w15, L2_35
    b L2_18
L2_35:
    mov w12, w15
    b L2_19
L2_18:
    movz x10, #1
    cmp w14, w10
    cset w12, eq
L2_19:
    and w15, w12, #255
    cbnz w15, L2_13
    b L2_14
L2_13:
    adrp x14, _lb_net_12unknown_host@PAGE
    add x14, x14, _lb_net_12unknown_host@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_20:
    b L2_15
L2_14:
L2_15:
    movz x10, #5
    cmp w14, w10
    cset w15, eq
    cbnz w15, L2_36
    b L2_24
L2_36:
    mov w12, w15
    b L2_25
L2_24:
    movz x10, #10
    cmp w14, w10
    cset w12, eq
L2_25:
    and w15, w12, #255
    cbnz w15, L2_21
    b L2_22
L2_21:
    adrp x14, _lb_net_unsupported@PAGE
    add x14, x14, _lb_net_unsupported@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_26:
    b L2_23
L2_22:
L2_23:
    movz x10, #3
    cmp w14, w10
    cset w15, eq
    cbnz w15, L2_37
    b L2_30
L2_37:
    mov w14, w15
    b L2_31
L2_30:
    movz x10, #9
    cmp w14, w10
    cset w15, eq
    mov w14, w15
L2_31:
    and w15, w14, #255
    cbnz w15, L2_27
    b L2_28
L2_27:
    adrp x14, _lb_net_15invalid_options@PAGE
    add x14, x14, _lb_net_15invalid_options@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_32:
    b L2_29
L2_28:
L2_29:
    adrp x14, _lb_net_failed@PAGE
    add x14, x14, _lb_net_failed@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_33:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_net_errors_0init

    .section __TEXT,__const
l_text_0:
    .asciz "unreachable"
l_text_1:
    .asciz "src/std/net/errors.lucb:71:5"
l_text_2:
    .asciz "src/std/net/errors.lucb:94:5"

    .section __DATA,__const
    .p2align 3
    .globl _lb_net_failed
    .no_dead_strip _lb_net_failed
    .zerofill __DATA,__bss,_lb_net_failed,4,2
    .globl _lb_net_closed
    .no_dead_strip _lb_net_closed
    .zerofill __DATA,__bss,_lb_net_closed,4,2
    .globl _lb_net_12unknown_host
    .no_dead_strip _lb_net_12unknown_host
    .zerofill __DATA,__bss,_lb_net_12unknown_host,4,2
    .globl _lb_net_15invalid_options
    .no_dead_strip _lb_net_15invalid_options
    .zerofill __DATA,__bss,_lb_net_15invalid_options,4,2
    .globl _lb_net_17message_too_large
    .no_dead_strip _lb_net_17message_too_large
    .zerofill __DATA,__bss,_lb_net_17message_too_large,4,2
    .globl _lb_net_cancelled
    .no_dead_strip _lb_net_cancelled
    .zerofill __DATA,__bss,_lb_net_cancelled,4,2
    .globl _lb_net_9timed_out
    .no_dead_strip _lb_net_9timed_out
    .zerofill __DATA,__bss,_lb_net_9timed_out,4,2
    .globl _lb_net_18connection_refused
    .no_dead_strip _lb_net_18connection_refused
    .zerofill __DATA,__bss,_lb_net_18connection_refused,4,2
    .globl _lb_net_19network_unreachable
    .no_dead_strip _lb_net_19network_unreachable
    .zerofill __DATA,__bss,_lb_net_19network_unreachable,4,2
    .globl _lb_net_14address_in_use
    .no_dead_strip _lb_net_14address_in_use
    .zerofill __DATA,__bss,_lb_net_14address_in_use,4,2
    .globl _lb_net_19address_unavailable
    .no_dead_strip _lb_net_19address_unavailable
    .zerofill __DATA,__bss,_lb_net_19address_unavailable,4,2
    .globl _lb_net_17permission_denied
    .no_dead_strip _lb_net_17permission_denied
    .zerofill __DATA,__bss,_lb_net_17permission_denied,4,2
    .globl _lb_net_18resource_exhausted
    .no_dead_strip _lb_net_18resource_exhausted
    .zerofill __DATA,__bss,_lb_net_18resource_exhausted,4,2
    .globl _lb_net_18connection_aborted
    .no_dead_strip _lb_net_18connection_aborted
    .zerofill __DATA,__bss,_lb_net_18connection_aborted,4,2
    .globl _lb_net_unsupported
    .no_dead_strip _lb_net_unsupported
    .zerofill __DATA,__bss,_lb_net_unsupported,4,2
    .globl _lb_net_20resolution_temporary
    .no_dead_strip _lb_net_20resolution_temporary
    .zerofill __DATA,__bss,_lb_net_20resolution_temporary,4,2

.subsections_via_symbols
