    .text

    .p2align 4
    .globl lb_net_errors_0init
    .type lb_net_errors_0init, @function
lb_net_errors_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    leaq lb_net_failed(%rip), %rbx
    movl $208273417, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_closed(%rip), %rbx
    movl $208273418, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_12unknown_host(%rip), %rbx
    movl $208273419, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_15invalid_options(%rip), %rbx
    movl $208273443, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_17message_too_large(%rip), %rbx
    movl $208273444, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_cancelled(%rip), %rbx
    movl $208273445, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_9timed_out(%rip), %rbx
    movl $208273446, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_18connection_refused(%rip), %rbx
    movl $208273447, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_19network_unreachable(%rip), %rbx
    movl $208273448, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_14address_in_use(%rip), %rbx
    movl $208273449, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_19address_unavailable(%rip), %rbx
    movl $208273450, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_17permission_denied(%rip), %rbx
    movl $208273451, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_18resource_exhausted(%rip), %rbx
    movl $208273452, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_18connection_aborted(%rip), %rbx
    movl $208273453, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_unsupported(%rip), %rbx
    movl $208273454, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_20resolution_temporary(%rip), %rbx
    movl $208273455, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_12socket_error
    .type lb_net_12socket_error, @function
lb_net_12socket_error:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movl %edi, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $11, %ecx
    cmpl %ecx, %ebx
    jne .L1_2
.L1_1:
    leaq lb_io_11would_block(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_4:
    jmp .L1_3
.L1_2:
.L1_3:
    movl $9, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_100
    jmp .L1_8
.L1_100:
    movl %r12d, %r13d
    jmp .L1_9
.L1_8:
    movl $32, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L1_9:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_101
    jmp .L1_10
.L1_101:
    movl %r12d, %r13d
    jmp .L1_11
.L1_10:
    movl $104, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L1_11:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_102
    jmp .L1_12
.L1_102:
    movl %r12d, %r13d
    jmp .L1_13
.L1_12:
    movl $107, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L1_13:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_103
    jmp .L1_14
.L1_103:
    movl %r12d, %r13d
    jmp .L1_15
.L1_14:
    movl $108, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L1_15:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_104
    jmp .L1_16
.L1_104:
    movl %r12d, %r13d
    jmp .L1_17
.L1_16:
    movl $102, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L1_17:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_5
    jmp .L1_6
.L1_5:
    leaq lb_net_closed(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_18:
    jmp .L1_7
.L1_6:
.L1_7:
    movl $110, %ecx
    cmpl %ecx, %ebx
    jne .L1_20
.L1_19:
    leaq lb_net_9timed_out(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_22:
    jmp .L1_21
.L1_20:
.L1_21:
    movl $125, %ecx
    cmpl %ecx, %ebx
    jne .L1_24
.L1_23:
    leaq lb_net_cancelled(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_26:
    jmp .L1_25
.L1_24:
.L1_25:
    movl $111, %ecx
    cmpl %ecx, %ebx
    jne .L1_28
.L1_27:
    leaq lb_net_18connection_refused(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_30:
    jmp .L1_29
.L1_28:
.L1_29:
    movl $100, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_105
    jmp .L1_34
.L1_105:
    movl %r12d, %r13d
    jmp .L1_35
.L1_34:
    movl $101, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L1_35:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_106
    jmp .L1_36
.L1_106:
    movl %r12d, %r13d
    jmp .L1_37
.L1_36:
    movl $112, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L1_37:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_107
    jmp .L1_38
.L1_107:
    movl %r12d, %r13d
    jmp .L1_39
.L1_38:
    movl $113, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L1_39:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_31
    jmp .L1_32
.L1_31:
    leaq lb_net_19network_unreachable(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_40:
    jmp .L1_33
.L1_32:
.L1_33:
    movl $98, %ecx
    cmpl %ecx, %ebx
    jne .L1_42
.L1_41:
    leaq lb_net_14address_in_use(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_44:
    jmp .L1_43
.L1_42:
.L1_43:
    movl $99, %ecx
    cmpl %ecx, %ebx
    jne .L1_46
.L1_45:
    leaq lb_net_19address_unavailable(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_48:
    jmp .L1_47
.L1_46:
.L1_47:
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_108
    jmp .L1_52
.L1_108:
    movl %r12d, %r13d
    jmp .L1_53
.L1_52:
    movl $13, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L1_53:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_49
    jmp .L1_50
.L1_49:
    leaq lb_net_17permission_denied(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_54:
    jmp .L1_51
.L1_50:
.L1_51:
    movl $12, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_109
    jmp .L1_58
.L1_109:
    movl %r12d, %r13d
    jmp .L1_59
.L1_58:
    movl $23, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L1_59:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_110
    jmp .L1_60
.L1_110:
    movl %r12d, %r13d
    jmp .L1_61
.L1_60:
    movl $24, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L1_61:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_111
    jmp .L1_62
.L1_111:
    movl %r12d, %r13d
    jmp .L1_63
.L1_62:
    movl $105, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L1_63:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_55
    jmp .L1_56
.L1_55:
    leaq lb_net_18resource_exhausted(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_64:
    jmp .L1_57
.L1_56:
.L1_57:
    movl $103, %ecx
    cmpl %ecx, %ebx
    jne .L1_66
.L1_65:
    leaq lb_net_18connection_aborted(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_68:
    jmp .L1_67
.L1_66:
.L1_67:
    movl $90, %ecx
    cmpl %ecx, %ebx
    jne .L1_70
.L1_69:
    leaq lb_net_17message_too_large(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_72:
    jmp .L1_71
.L1_70:
.L1_71:
    movl $22, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_112
    jmp .L1_76
.L1_112:
    movl %r12d, %r13d
    jmp .L1_77
.L1_76:
    movl $88, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L1_77:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_113
    jmp .L1_78
.L1_113:
    movl %r12d, %r13d
    jmp .L1_79
.L1_78:
    movl $89, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L1_79:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_114
    jmp .L1_80
.L1_114:
    movl %r12d, %r13d
    jmp .L1_81
.L1_80:
    movl $91, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L1_81:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_73
    jmp .L1_74
.L1_73:
    leaq lb_net_15invalid_options(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_82:
    jmp .L1_75
.L1_74:
.L1_75:
    movl $92, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_115
    jmp .L1_86
.L1_115:
    movl %r12d, %r13d
    jmp .L1_87
.L1_86:
    movl $93, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L1_87:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_116
    jmp .L1_88
.L1_116:
    movl %r12d, %r13d
    jmp .L1_89
.L1_88:
    movl $94, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L1_89:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_117
    jmp .L1_90
.L1_117:
    movl %r12d, %r13d
    jmp .L1_91
.L1_90:
    movl $95, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L1_91:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_118
    jmp .L1_92
.L1_118:
    movl %r12d, %r13d
    jmp .L1_93
.L1_92:
    movl $96, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L1_93:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_119
    jmp .L1_94
.L1_119:
    movl %r12d, %r13d
    jmp .L1_95
.L1_94:
    movl $97, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L1_95:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_120
    jmp .L1_96
.L1_120:
    movl %r12d, %ebx
    jmp .L1_97
.L1_96:
    movl $38, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L1_97:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L1_83
    jmp .L1_84
.L1_83:
    leaq lb_net_unsupported(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_98:
    jmp .L1_85
.L1_84:
.L1_85:
    leaq lb_net_failed(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_99:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_14resolver_error
    .type lb_net_14resolver_error, @function
lb_net_14resolver_error:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movl %edi, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $4294967293, %ecx
    cmpl %ecx, %ebx
    jne .L2_2
.L2_1:
    leaq lb_net_20resolution_temporary(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_4:
    jmp .L2_3
.L2_2:
.L2_3:
    movl $4294967286, %ecx
    cmpl %ecx, %ebx
    jne .L2_6
.L2_5:
    leaq lb_net_18resource_exhausted(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_8:
    jmp .L2_7
.L2_6:
.L2_7:
    movl $4294967285, %ecx
    cmpl %ecx, %ebx
    jne .L2_10
.L2_9:
    call lb_net_12socket_errno@PLT
    movl %eax, %ebx
    movl %ebx, %edi
    call lb_net_12socket_error@PLT
    movl %eax, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_12:
    jmp .L2_11
.L2_10:
.L2_11:
    movl $4294967294, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L2_34
    jmp .L2_16
.L2_34:
    movl %r12d, %r13d
    jmp .L2_17
.L2_16:
    movl $4294967291, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L2_17:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L2_35
    jmp .L2_18
.L2_35:
    movl %r12d, %r13d
    jmp .L2_19
.L2_18:
    movl $4294967287, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L2_19:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L2_13
    jmp .L2_14
.L2_13:
    leaq lb_net_12unknown_host(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_20:
    jmp .L2_15
.L2_14:
.L2_15:
    movl $4294967290, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L2_36
    jmp .L2_24
.L2_36:
    movl %r12d, %r13d
    jmp .L2_25
.L2_24:
    movl $4294967289, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L2_25:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L2_21
    jmp .L2_22
.L2_21:
    leaq lb_net_unsupported(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_26:
    jmp .L2_23
.L2_22:
.L2_23:
    movl $4294967295, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L2_37
    jmp .L2_30
.L2_37:
    movl %r12d, %ebx
    jmp .L2_31
.L2_30:
    movl $4294967288, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L2_31:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L2_27
    jmp .L2_28
.L2_27:
    leaq lb_net_15invalid_options(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_32:
    jmp .L2_29
.L2_28:
.L2_29:
    leaq lb_net_failed(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_33:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_errors_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
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
    .type lb_net_failed, @object
    .p2align 2
lb_net_failed:
    .zero 4

    .bss
    .globl lb_net_closed
    .type lb_net_closed, @object
    .p2align 2
lb_net_closed:
    .zero 4

    .bss
    .globl lb_net_12unknown_host
    .type lb_net_12unknown_host, @object
    .p2align 2
lb_net_12unknown_host:
    .zero 4

    .bss
    .globl lb_net_15invalid_options
    .type lb_net_15invalid_options, @object
    .p2align 2
lb_net_15invalid_options:
    .zero 4

    .bss
    .globl lb_net_17message_too_large
    .type lb_net_17message_too_large, @object
    .p2align 2
lb_net_17message_too_large:
    .zero 4

    .bss
    .globl lb_net_cancelled
    .type lb_net_cancelled, @object
    .p2align 2
lb_net_cancelled:
    .zero 4

    .bss
    .globl lb_net_9timed_out
    .type lb_net_9timed_out, @object
    .p2align 2
lb_net_9timed_out:
    .zero 4

    .bss
    .globl lb_net_18connection_refused
    .type lb_net_18connection_refused, @object
    .p2align 2
lb_net_18connection_refused:
    .zero 4

    .bss
    .globl lb_net_19network_unreachable
    .type lb_net_19network_unreachable, @object
    .p2align 2
lb_net_19network_unreachable:
    .zero 4

    .bss
    .globl lb_net_14address_in_use
    .type lb_net_14address_in_use, @object
    .p2align 2
lb_net_14address_in_use:
    .zero 4

    .bss
    .globl lb_net_19address_unavailable
    .type lb_net_19address_unavailable, @object
    .p2align 2
lb_net_19address_unavailable:
    .zero 4

    .bss
    .globl lb_net_17permission_denied
    .type lb_net_17permission_denied, @object
    .p2align 2
lb_net_17permission_denied:
    .zero 4

    .bss
    .globl lb_net_18resource_exhausted
    .type lb_net_18resource_exhausted, @object
    .p2align 2
lb_net_18resource_exhausted:
    .zero 4

    .bss
    .globl lb_net_18connection_aborted
    .type lb_net_18connection_aborted, @object
    .p2align 2
lb_net_18connection_aborted:
    .zero 4

    .bss
    .globl lb_net_unsupported
    .type lb_net_unsupported, @object
    .p2align 2
lb_net_unsupported:
    .zero 4

    .bss
    .globl lb_net_20resolution_temporary
    .type lb_net_20resolution_temporary, @object
    .p2align 2
lb_net_20resolution_temporary:
    .zero 4

    .section .note.GNU-stack,"",@progbits
