    .text

    .p2align 2
    .globl lb_net_errors_0init
    .type lb_net_errors_0init, %function
lb_net_errors_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_net_failed
    add x14, x14, :lo12:lb_net_failed
    movz x9, #9
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_closed
    add x14, x14, :lo12:lb_net_closed
    movz x9, #10
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_12unknown_host
    add x14, x14, :lo12:lb_net_12unknown_host
    movz x9, #11
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_15invalid_options
    add x14, x14, :lo12:lb_net_15invalid_options
    movz x9, #35
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_17message_too_large
    add x14, x14, :lo12:lb_net_17message_too_large
    movz x9, #36
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_cancelled
    add x14, x14, :lo12:lb_net_cancelled
    movz x9, #37
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_9timed_out
    add x14, x14, :lo12:lb_net_9timed_out
    movz x9, #38
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_18connection_refused
    add x14, x14, :lo12:lb_net_18connection_refused
    movz x9, #39
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_19network_unreachable
    add x14, x14, :lo12:lb_net_19network_unreachable
    movz x9, #40
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_14address_in_use
    add x14, x14, :lo12:lb_net_14address_in_use
    movz x9, #41
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_19address_unavailable
    add x14, x14, :lo12:lb_net_19address_unavailable
    movz x9, #42
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_17permission_denied
    add x14, x14, :lo12:lb_net_17permission_denied
    movz x9, #43
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_18resource_exhausted
    add x14, x14, :lo12:lb_net_18resource_exhausted
    movz x9, #44
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_18connection_aborted
    add x14, x14, :lo12:lb_net_18connection_aborted
    movz x9, #45
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_unsupported
    add x14, x14, :lo12:lb_net_unsupported
    movz x9, #46
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_20resolution_temporary
    add x14, x14, :lo12:lb_net_20resolution_temporary
    movz x9, #47
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_errors_0init, .-lb_net_errors_0init

    .p2align 2
    .globl lb_net_12socket_error
    .type lb_net_12socket_error, %function
lb_net_12socket_error:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    sub x14, x29, #32
    ldrsw x14, [x14]
    movz x10, #11
    cmp w14, w10
    b.ne .L1_2
.L1_1:
    adrp x14, lb_io_11would_block
    add x14, x14, :lo12:lb_io_11would_block
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_4:
    b .L1_3
.L1_2:
.L1_3:
    movz x10, #9
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L1_100
    b .L1_8
.L1_100:
    mov w12, w15
    b .L1_9
.L1_8:
    movz x10, #32
    cmp w14, w10
    cset w12, eq
.L1_9:
    and w15, w12, #255
    cbnz w15, .L1_101
    b .L1_10
.L1_101:
    mov w12, w15
    b .L1_11
.L1_10:
    movz x10, #104
    cmp w14, w10
    cset w12, eq
.L1_11:
    and w15, w12, #255
    cbnz w15, .L1_102
    b .L1_12
.L1_102:
    mov w12, w15
    b .L1_13
.L1_12:
    movz x10, #107
    cmp w14, w10
    cset w12, eq
.L1_13:
    and w15, w12, #255
    cbnz w15, .L1_103
    b .L1_14
.L1_103:
    mov w12, w15
    b .L1_15
.L1_14:
    movz x10, #108
    cmp w14, w10
    cset w12, eq
.L1_15:
    and w15, w12, #255
    cbnz w15, .L1_104
    b .L1_16
.L1_104:
    mov w12, w15
    b .L1_17
.L1_16:
    movz x10, #102
    cmp w14, w10
    cset w12, eq
.L1_17:
    and w15, w12, #255
    cbnz w15, .L1_5
    b .L1_6
.L1_5:
    adrp x14, lb_net_closed
    add x14, x14, :lo12:lb_net_closed
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_18:
    b .L1_7
.L1_6:
.L1_7:
    movz x10, #110
    cmp w14, w10
    b.ne .L1_20
.L1_19:
    adrp x14, lb_net_9timed_out
    add x14, x14, :lo12:lb_net_9timed_out
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_22:
    b .L1_21
.L1_20:
.L1_21:
    movz x10, #125
    cmp w14, w10
    b.ne .L1_24
.L1_23:
    adrp x14, lb_net_cancelled
    add x14, x14, :lo12:lb_net_cancelled
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_26:
    b .L1_25
.L1_24:
.L1_25:
    movz x10, #111
    cmp w14, w10
    b.ne .L1_28
.L1_27:
    adrp x14, lb_net_18connection_refused
    add x14, x14, :lo12:lb_net_18connection_refused
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_30:
    b .L1_29
.L1_28:
.L1_29:
    movz x10, #100
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L1_105
    b .L1_34
.L1_105:
    mov w12, w15
    b .L1_35
.L1_34:
    movz x10, #101
    cmp w14, w10
    cset w12, eq
.L1_35:
    and w15, w12, #255
    cbnz w15, .L1_106
    b .L1_36
.L1_106:
    mov w12, w15
    b .L1_37
.L1_36:
    movz x10, #112
    cmp w14, w10
    cset w12, eq
.L1_37:
    and w15, w12, #255
    cbnz w15, .L1_107
    b .L1_38
.L1_107:
    mov w12, w15
    b .L1_39
.L1_38:
    movz x10, #113
    cmp w14, w10
    cset w12, eq
.L1_39:
    and w15, w12, #255
    cbnz w15, .L1_31
    b .L1_32
.L1_31:
    adrp x14, lb_net_19network_unreachable
    add x14, x14, :lo12:lb_net_19network_unreachable
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_40:
    b .L1_33
.L1_32:
.L1_33:
    movz x10, #98
    cmp w14, w10
    b.ne .L1_42
.L1_41:
    adrp x14, lb_net_14address_in_use
    add x14, x14, :lo12:lb_net_14address_in_use
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_44:
    b .L1_43
.L1_42:
.L1_43:
    movz x10, #99
    cmp w14, w10
    b.ne .L1_46
.L1_45:
    adrp x14, lb_net_19address_unavailable
    add x14, x14, :lo12:lb_net_19address_unavailable
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_48:
    b .L1_47
.L1_46:
.L1_47:
    movz x10, #1
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L1_108
    b .L1_52
.L1_108:
    mov w12, w15
    b .L1_53
.L1_52:
    movz x10, #13
    cmp w14, w10
    cset w12, eq
.L1_53:
    and w15, w12, #255
    cbnz w15, .L1_49
    b .L1_50
.L1_49:
    adrp x14, lb_net_17permission_denied
    add x14, x14, :lo12:lb_net_17permission_denied
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_54:
    b .L1_51
.L1_50:
.L1_51:
    movz x10, #12
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L1_109
    b .L1_58
.L1_109:
    mov w12, w15
    b .L1_59
.L1_58:
    movz x10, #23
    cmp w14, w10
    cset w12, eq
.L1_59:
    and w15, w12, #255
    cbnz w15, .L1_110
    b .L1_60
.L1_110:
    mov w12, w15
    b .L1_61
.L1_60:
    movz x10, #24
    cmp w14, w10
    cset w12, eq
.L1_61:
    and w15, w12, #255
    cbnz w15, .L1_111
    b .L1_62
.L1_111:
    mov w12, w15
    b .L1_63
.L1_62:
    movz x10, #105
    cmp w14, w10
    cset w12, eq
.L1_63:
    and w15, w12, #255
    cbnz w15, .L1_55
    b .L1_56
.L1_55:
    adrp x14, lb_net_18resource_exhausted
    add x14, x14, :lo12:lb_net_18resource_exhausted
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_64:
    b .L1_57
.L1_56:
.L1_57:
    movz x10, #103
    cmp w14, w10
    b.ne .L1_66
.L1_65:
    adrp x14, lb_net_18connection_aborted
    add x14, x14, :lo12:lb_net_18connection_aborted
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_68:
    b .L1_67
.L1_66:
.L1_67:
    movz x10, #90
    cmp w14, w10
    b.ne .L1_70
.L1_69:
    adrp x14, lb_net_17message_too_large
    add x14, x14, :lo12:lb_net_17message_too_large
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_72:
    b .L1_71
.L1_70:
.L1_71:
    movz x10, #22
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L1_112
    b .L1_76
.L1_112:
    mov w12, w15
    b .L1_77
.L1_76:
    movz x10, #88
    cmp w14, w10
    cset w12, eq
.L1_77:
    and w15, w12, #255
    cbnz w15, .L1_113
    b .L1_78
.L1_113:
    mov w12, w15
    b .L1_79
.L1_78:
    movz x10, #89
    cmp w14, w10
    cset w12, eq
.L1_79:
    and w15, w12, #255
    cbnz w15, .L1_114
    b .L1_80
.L1_114:
    mov w12, w15
    b .L1_81
.L1_80:
    movz x10, #91
    cmp w14, w10
    cset w12, eq
.L1_81:
    and w15, w12, #255
    cbnz w15, .L1_73
    b .L1_74
.L1_73:
    adrp x14, lb_net_15invalid_options
    add x14, x14, :lo12:lb_net_15invalid_options
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_82:
    b .L1_75
.L1_74:
.L1_75:
    movz x10, #92
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L1_115
    b .L1_86
.L1_115:
    mov w12, w15
    b .L1_87
.L1_86:
    movz x10, #93
    cmp w14, w10
    cset w12, eq
.L1_87:
    and w15, w12, #255
    cbnz w15, .L1_116
    b .L1_88
.L1_116:
    mov w12, w15
    b .L1_89
.L1_88:
    movz x10, #94
    cmp w14, w10
    cset w12, eq
.L1_89:
    and w15, w12, #255
    cbnz w15, .L1_117
    b .L1_90
.L1_117:
    mov w12, w15
    b .L1_91
.L1_90:
    movz x10, #95
    cmp w14, w10
    cset w12, eq
.L1_91:
    and w15, w12, #255
    cbnz w15, .L1_118
    b .L1_92
.L1_118:
    mov w12, w15
    b .L1_93
.L1_92:
    movz x10, #96
    cmp w14, w10
    cset w12, eq
.L1_93:
    and w15, w12, #255
    cbnz w15, .L1_119
    b .L1_94
.L1_119:
    mov w12, w15
    b .L1_95
.L1_94:
    movz x10, #97
    cmp w14, w10
    cset w12, eq
.L1_95:
    and w15, w12, #255
    cbnz w15, .L1_120
    b .L1_96
.L1_120:
    mov w14, w15
    b .L1_97
.L1_96:
    movz x10, #38
    cmp w14, w10
    cset w15, eq
    mov w14, w15
.L1_97:
    and w15, w14, #255
    cbnz w15, .L1_83
    b .L1_84
.L1_83:
    adrp x14, lb_net_unsupported
    add x14, x14, :lo12:lb_net_unsupported
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_98:
    b .L1_85
.L1_84:
.L1_85:
    adrp x14, lb_net_failed
    add x14, x14, :lo12:lb_net_failed
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_99:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_net_12socket_error, .-lb_net_12socket_error

    .p2align 2
    .globl lb_net_14resolver_error
    .type lb_net_14resolver_error, %function
lb_net_14resolver_error:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    sub x14, x29, #32
    ldrsw x14, [x14]
    movn x10, #2
    cmp w14, w10
    b.ne .L2_2
.L2_1:
    adrp x14, lb_net_20resolution_temporary
    add x14, x14, :lo12:lb_net_20resolution_temporary
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_4:
    b .L2_3
.L2_2:
.L2_3:
    movn x10, #9
    cmp w14, w10
    b.ne .L2_6
.L2_5:
    adrp x14, lb_net_18resource_exhausted
    add x14, x14, :lo12:lb_net_18resource_exhausted
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_8:
    b .L2_7
.L2_6:
.L2_7:
    movn x10, #10
    cmp w14, w10
    b.ne .L2_10
.L2_9:
    bl lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl lb_net_12socket_error
    mov w14, w0
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_12:
    b .L2_11
.L2_10:
.L2_11:
    movn x10, #1
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L2_34
    b .L2_16
.L2_34:
    mov w12, w15
    b .L2_17
.L2_16:
    movn x10, #4
    cmp w14, w10
    cset w12, eq
.L2_17:
    and w15, w12, #255
    cbnz w15, .L2_35
    b .L2_18
.L2_35:
    mov w12, w15
    b .L2_19
.L2_18:
    movn x10, #8
    cmp w14, w10
    cset w12, eq
.L2_19:
    and w15, w12, #255
    cbnz w15, .L2_13
    b .L2_14
.L2_13:
    adrp x14, lb_net_12unknown_host
    add x14, x14, :lo12:lb_net_12unknown_host
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_20:
    b .L2_15
.L2_14:
.L2_15:
    movn x10, #5
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L2_36
    b .L2_24
.L2_36:
    mov w12, w15
    b .L2_25
.L2_24:
    movn x10, #6
    cmp w14, w10
    cset w12, eq
.L2_25:
    and w15, w12, #255
    cbnz w15, .L2_21
    b .L2_22
.L2_21:
    adrp x14, lb_net_unsupported
    add x14, x14, :lo12:lb_net_unsupported
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_26:
    b .L2_23
.L2_22:
.L2_23:
    movn x10, #0
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L2_37
    b .L2_30
.L2_37:
    mov w14, w15
    b .L2_31
.L2_30:
    movn x10, #7
    cmp w14, w10
    cset w15, eq
    mov w14, w15
.L2_31:
    and w15, w14, #255
    cbnz w15, .L2_27
    b .L2_28
.L2_27:
    adrp x14, lb_net_15invalid_options
    add x14, x14, :lo12:lb_net_15invalid_options
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_32:
    b .L2_29
.L2_28:
.L2_29:
    adrp x14, lb_net_failed
    add x14, x14, :lo12:lb_net_failed
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_33:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_net_14resolver_error, .-lb_net_14resolver_error

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_errors_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/net/errors.lucb:71:5"
.Ltext_2:
    .asciz "src/std/net/errors.lucb:94:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_net_failed
    .type lb_net_failed, %object
    .p2align 2
lb_net_failed:
    .zero 4

    .bss
    .globl lb_net_closed
    .type lb_net_closed, %object
    .p2align 2
lb_net_closed:
    .zero 4

    .bss
    .globl lb_net_12unknown_host
    .type lb_net_12unknown_host, %object
    .p2align 2
lb_net_12unknown_host:
    .zero 4

    .bss
    .globl lb_net_15invalid_options
    .type lb_net_15invalid_options, %object
    .p2align 2
lb_net_15invalid_options:
    .zero 4

    .bss
    .globl lb_net_17message_too_large
    .type lb_net_17message_too_large, %object
    .p2align 2
lb_net_17message_too_large:
    .zero 4

    .bss
    .globl lb_net_cancelled
    .type lb_net_cancelled, %object
    .p2align 2
lb_net_cancelled:
    .zero 4

    .bss
    .globl lb_net_9timed_out
    .type lb_net_9timed_out, %object
    .p2align 2
lb_net_9timed_out:
    .zero 4

    .bss
    .globl lb_net_18connection_refused
    .type lb_net_18connection_refused, %object
    .p2align 2
lb_net_18connection_refused:
    .zero 4

    .bss
    .globl lb_net_19network_unreachable
    .type lb_net_19network_unreachable, %object
    .p2align 2
lb_net_19network_unreachable:
    .zero 4

    .bss
    .globl lb_net_14address_in_use
    .type lb_net_14address_in_use, %object
    .p2align 2
lb_net_14address_in_use:
    .zero 4

    .bss
    .globl lb_net_19address_unavailable
    .type lb_net_19address_unavailable, %object
    .p2align 2
lb_net_19address_unavailable:
    .zero 4

    .bss
    .globl lb_net_17permission_denied
    .type lb_net_17permission_denied, %object
    .p2align 2
lb_net_17permission_denied:
    .zero 4

    .bss
    .globl lb_net_18resource_exhausted
    .type lb_net_18resource_exhausted, %object
    .p2align 2
lb_net_18resource_exhausted:
    .zero 4

    .bss
    .globl lb_net_18connection_aborted
    .type lb_net_18connection_aborted, %object
    .p2align 2
lb_net_18connection_aborted:
    .zero 4

    .bss
    .globl lb_net_unsupported
    .type lb_net_unsupported, %object
    .p2align 2
lb_net_unsupported:
    .zero 4

    .bss
    .globl lb_net_20resolution_temporary
    .type lb_net_20resolution_temporary, %object
    .p2align 2
lb_net_20resolution_temporary:
    .zero 4


    .section .note.GNU-stack,"",%progbits
