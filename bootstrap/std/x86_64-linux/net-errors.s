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
    movq %r14, -32(%rbp)
    movl %edi, -48(%rbp)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %r12
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_4
    jmp .L1_5
.L1_4:
    movl $35, %eax
    movl %eax, %r13d
    jmp .L1_6
.L1_5:
    movl $11, %eax
    movl %eax, %r13d
.L1_6:
    cmpl %r13d, %r12d
    jne .L1_2
.L1_1:
    leaq lb_io_11would_block(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_7:
    jmp .L1_3
.L1_2:
.L1_3:
    movl $9, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L1_181
    jmp .L1_11
.L1_181:
    movl %r13d, %r14d
    jmp .L1_12
.L1_11:
    movl $32, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L1_12:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L1_182
    jmp .L1_13
.L1_182:
    movl %r13d, %r14d
    jmp .L1_14
.L1_13:
    testl %ebx, %ebx
    jne .L1_15
    jmp .L1_16
.L1_15:
    movl $54, %eax
    movl %eax, %r13d
    jmp .L1_17
.L1_16:
    movl $104, %eax
    movl %eax, %r13d
.L1_17:
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r14d
.L1_14:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L1_183
    jmp .L1_18
.L1_183:
    movl %r13d, %r14d
    jmp .L1_19
.L1_18:
    testl %ebx, %ebx
    jne .L1_20
    jmp .L1_21
.L1_20:
    movl $57, %eax
    movl %eax, %r13d
    jmp .L1_22
.L1_21:
    movl $107, %eax
    movl %eax, %r13d
.L1_22:
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r14d
.L1_19:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L1_184
    jmp .L1_23
.L1_184:
    movl %r13d, %r14d
    jmp .L1_24
.L1_23:
    testl %ebx, %ebx
    jne .L1_25
    jmp .L1_26
.L1_25:
    movl $58, %eax
    movl %eax, %r13d
    jmp .L1_27
.L1_26:
    movl $108, %eax
    movl %eax, %r13d
.L1_27:
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r14d
.L1_24:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L1_185
    jmp .L1_28
.L1_185:
    movl %r13d, %r14d
    jmp .L1_29
.L1_28:
    testl %ebx, %ebx
    jne .L1_30
    jmp .L1_31
.L1_30:
    movl $52, %eax
    movl %eax, %r13d
    jmp .L1_32
.L1_31:
    movl $102, %eax
    movl %eax, %r13d
.L1_32:
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r14d
.L1_29:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L1_8
    jmp .L1_9
.L1_8:
    leaq lb_net_closed(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_33:
    jmp .L1_10
.L1_9:
.L1_10:
    testl %ebx, %ebx
    jne .L1_37
    jmp .L1_38
.L1_37:
    movl $60, %eax
    movl %eax, %r13d
    jmp .L1_39
.L1_38:
    movl $110, %eax
    movl %eax, %r13d
.L1_39:
    cmpl %r13d, %r12d
    jne .L1_35
.L1_34:
    leaq lb_net_9timed_out(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_40:
    jmp .L1_36
.L1_35:
.L1_36:
    testl %ebx, %ebx
    jne .L1_44
    jmp .L1_45
.L1_44:
    movl $89, %eax
    movl %eax, %r13d
    jmp .L1_46
.L1_45:
    movl $125, %eax
    movl %eax, %r13d
.L1_46:
    cmpl %r13d, %r12d
    jne .L1_42
.L1_41:
    leaq lb_net_cancelled(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_47:
    jmp .L1_43
.L1_42:
.L1_43:
    testl %ebx, %ebx
    jne .L1_51
    jmp .L1_52
.L1_51:
    movl $61, %eax
    movl %eax, %r13d
    jmp .L1_53
.L1_52:
    movl $111, %eax
    movl %eax, %r13d
.L1_53:
    cmpl %r13d, %r12d
    jne .L1_49
.L1_48:
    leaq lb_net_18connection_refused(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_54:
    jmp .L1_50
.L1_49:
.L1_50:
    testl %ebx, %ebx
    jne .L1_58
    jmp .L1_59
.L1_58:
    movl $50, %eax
    movl %eax, %r13d
    jmp .L1_60
.L1_59:
    movl $100, %eax
    movl %eax, %r13d
.L1_60:
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_186
    jmp .L1_61
.L1_186:
    movl %r14d, %r13d
    jmp .L1_62
.L1_61:
    testl %ebx, %ebx
    jne .L1_63
    jmp .L1_64
.L1_63:
    movl $51, %eax
    movl %eax, %r13d
    jmp .L1_65
.L1_64:
    movl $101, %eax
    movl %eax, %r13d
.L1_65:
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r13d
.L1_62:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L1_187
    jmp .L1_66
.L1_187:
    movl %r14d, %r13d
    jmp .L1_67
.L1_66:
    testl %ebx, %ebx
    jne .L1_68
    jmp .L1_69
.L1_68:
    movl $64, %eax
    movl %eax, %r13d
    jmp .L1_70
.L1_69:
    movl $112, %eax
    movl %eax, %r13d
.L1_70:
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r13d
.L1_67:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L1_188
    jmp .L1_71
.L1_188:
    movl %r14d, %r13d
    jmp .L1_72
.L1_71:
    testl %ebx, %ebx
    jne .L1_73
    jmp .L1_74
.L1_73:
    movl $65, %eax
    movl %eax, %r13d
    jmp .L1_75
.L1_74:
    movl $113, %eax
    movl %eax, %r13d
.L1_75:
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r13d
.L1_72:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L1_55
    jmp .L1_56
.L1_55:
    leaq lb_net_19network_unreachable(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_76:
    jmp .L1_57
.L1_56:
.L1_57:
    testl %ebx, %ebx
    jne .L1_80
    jmp .L1_81
.L1_80:
    movl $48, %eax
    movl %eax, %r13d
    jmp .L1_82
.L1_81:
    movl $98, %eax
    movl %eax, %r13d
.L1_82:
    cmpl %r13d, %r12d
    jne .L1_78
.L1_77:
    leaq lb_net_14address_in_use(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_83:
    jmp .L1_79
.L1_78:
.L1_79:
    testl %ebx, %ebx
    jne .L1_87
    jmp .L1_88
.L1_87:
    movl $49, %eax
    movl %eax, %r13d
    jmp .L1_89
.L1_88:
    movl $99, %eax
    movl %eax, %r13d
.L1_89:
    cmpl %r13d, %r12d
    jne .L1_85
.L1_84:
    leaq lb_net_19address_unavailable(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_90:
    jmp .L1_86
.L1_85:
.L1_86:
    movl $1, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L1_189
    jmp .L1_94
.L1_189:
    movl %r13d, %r14d
    jmp .L1_95
.L1_94:
    movl $13, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L1_95:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L1_91
    jmp .L1_92
.L1_91:
    leaq lb_net_17permission_denied(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_96:
    jmp .L1_93
.L1_92:
.L1_93:
    movl $12, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L1_190
    jmp .L1_100
.L1_190:
    movl %r13d, %r14d
    jmp .L1_101
.L1_100:
    movl $23, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L1_101:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L1_191
    jmp .L1_102
.L1_191:
    movl %r13d, %r14d
    jmp .L1_103
.L1_102:
    movl $24, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L1_103:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L1_192
    jmp .L1_104
.L1_192:
    movl %r13d, %r14d
    jmp .L1_105
.L1_104:
    testl %ebx, %ebx
    jne .L1_106
    jmp .L1_107
.L1_106:
    movl $55, %eax
    movl %eax, %r13d
    jmp .L1_108
.L1_107:
    movl $105, %eax
    movl %eax, %r13d
.L1_108:
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r14d
.L1_105:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L1_97
    jmp .L1_98
.L1_97:
    leaq lb_net_18resource_exhausted(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_109:
    jmp .L1_99
.L1_98:
.L1_99:
    testl %ebx, %ebx
    jne .L1_113
    jmp .L1_114
.L1_113:
    movl $53, %eax
    movl %eax, %r13d
    jmp .L1_115
.L1_114:
    movl $103, %eax
    movl %eax, %r13d
.L1_115:
    cmpl %r13d, %r12d
    jne .L1_111
.L1_110:
    leaq lb_net_18connection_aborted(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_116:
    jmp .L1_112
.L1_111:
.L1_112:
    testl %ebx, %ebx
    jne .L1_120
    jmp .L1_121
.L1_120:
    movl $40, %eax
    movl %eax, %r13d
    jmp .L1_122
.L1_121:
    movl $90, %eax
    movl %eax, %r13d
.L1_122:
    cmpl %r13d, %r12d
    jne .L1_118
.L1_117:
    leaq lb_net_17message_too_large(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_123:
    jmp .L1_119
.L1_118:
.L1_119:
    movl $22, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L1_193
    jmp .L1_127
.L1_193:
    movl %r13d, %r14d
    jmp .L1_128
.L1_127:
    testl %ebx, %ebx
    jne .L1_129
    jmp .L1_130
.L1_129:
    movl $38, %eax
    movl %eax, %r13d
    jmp .L1_131
.L1_130:
    movl $88, %eax
    movl %eax, %r13d
.L1_131:
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r14d
.L1_128:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L1_194
    jmp .L1_132
.L1_194:
    movl %r13d, %r14d
    jmp .L1_133
.L1_132:
    testl %ebx, %ebx
    jne .L1_134
    jmp .L1_135
.L1_134:
    movl $39, %eax
    movl %eax, %r13d
    jmp .L1_136
.L1_135:
    movl $89, %eax
    movl %eax, %r13d
.L1_136:
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r14d
.L1_133:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L1_195
    jmp .L1_137
.L1_195:
    movl %r13d, %r14d
    jmp .L1_138
.L1_137:
    testl %ebx, %ebx
    jne .L1_139
    jmp .L1_140
.L1_139:
    movl $41, %eax
    movl %eax, %r13d
    jmp .L1_141
.L1_140:
    movl $91, %eax
    movl %eax, %r13d
.L1_141:
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r14d
.L1_138:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L1_124
    jmp .L1_125
.L1_124:
    leaq lb_net_15invalid_options(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_142:
    jmp .L1_126
.L1_125:
.L1_126:
    testl %ebx, %ebx
    jne .L1_146
    jmp .L1_147
.L1_146:
    movl $42, %eax
    movl %eax, %r13d
    jmp .L1_148
.L1_147:
    movl $92, %eax
    movl %eax, %r13d
.L1_148:
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_196
    jmp .L1_149
.L1_196:
    movl %r14d, %r13d
    jmp .L1_150
.L1_149:
    testl %ebx, %ebx
    jne .L1_151
    jmp .L1_152
.L1_151:
    movl $43, %eax
    movl %eax, %r13d
    jmp .L1_153
.L1_152:
    movl $93, %eax
    movl %eax, %r13d
.L1_153:
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r13d
.L1_150:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L1_197
    jmp .L1_154
.L1_197:
    movl %r14d, %r13d
    jmp .L1_155
.L1_154:
    testl %ebx, %ebx
    jne .L1_156
    jmp .L1_157
.L1_156:
    movl $44, %eax
    movl %eax, %r13d
    jmp .L1_158
.L1_157:
    movl $94, %eax
    movl %eax, %r13d
.L1_158:
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r13d
.L1_155:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L1_198
    jmp .L1_159
.L1_198:
    movl %r14d, %r13d
    jmp .L1_160
.L1_159:
    testl %ebx, %ebx
    jne .L1_161
    jmp .L1_162
.L1_161:
    movl $45, %eax
    movl %eax, %r13d
    jmp .L1_163
.L1_162:
    movl $95, %eax
    movl %eax, %r13d
.L1_163:
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r13d
.L1_160:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L1_199
    jmp .L1_164
.L1_199:
    movl %r14d, %r13d
    jmp .L1_165
.L1_164:
    testl %ebx, %ebx
    jne .L1_166
    jmp .L1_167
.L1_166:
    movl $46, %eax
    movl %eax, %r13d
    jmp .L1_168
.L1_167:
    movl $96, %eax
    movl %eax, %r13d
.L1_168:
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r13d
.L1_165:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L1_200
    jmp .L1_169
.L1_200:
    movl %r14d, %r13d
    jmp .L1_170
.L1_169:
    testl %ebx, %ebx
    jne .L1_171
    jmp .L1_172
.L1_171:
    movl $47, %eax
    movl %eax, %r13d
    jmp .L1_173
.L1_172:
    movl $97, %eax
    movl %eax, %r13d
.L1_173:
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r13d
.L1_170:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L1_201
    jmp .L1_174
.L1_201:
    movl %r14d, %ebx
    jmp .L1_175
.L1_174:
    testl %ebx, %ebx
    jne .L1_176
    jmp .L1_177
.L1_176:
    movl $78, %eax
    movl %eax, %ebx
    jmp .L1_178
.L1_177:
    movl $38, %eax
    movl %eax, %ebx
.L1_178:
    cmpl %ebx, %r12d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L1_175:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L1_143
    jmp .L1_144
.L1_143:
    leaq lb_net_unsupported(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_179:
    jmp .L1_145
.L1_144:
.L1_145:
    leaq lb_net_failed(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_180:
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
    movq %r14, -32(%rbp)
    movl %edi, -48(%rbp)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %r12
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_4
    jmp .L2_5
.L2_4:
    movl $2, %eax
    movl %eax, %r13d
    jmp .L2_6
.L2_5:
    movl $4294967293, %eax
    movl %eax, %r13d
.L2_6:
    cmpl %r13d, %r12d
    jne .L2_2
.L2_1:
    leaq lb_net_20resolution_temporary(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_7:
    jmp .L2_3
.L2_2:
.L2_3:
    testl %ebx, %ebx
    jne .L2_11
    jmp .L2_12
.L2_11:
    movl $6, %eax
    movl %eax, %r13d
    jmp .L2_13
.L2_12:
    movl $4294967286, %eax
    movl %eax, %r13d
.L2_13:
    cmpl %r13d, %r12d
    jne .L2_9
.L2_8:
    leaq lb_net_18resource_exhausted(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_14:
    jmp .L2_10
.L2_9:
.L2_10:
    testl %ebx, %ebx
    jne .L2_18
    jmp .L2_19
.L2_18:
    movl $11, %eax
    movl %eax, %r13d
    jmp .L2_20
.L2_19:
    movl $4294967285, %eax
    movl %eax, %r13d
.L2_20:
    cmpl %r13d, %r12d
    jne .L2_16
.L2_15:
    call lb_net_12socket_errno@PLT
    movl %eax, %ebx
    movl %ebx, %edi
    call lb_net_12socket_error@PLT
    movl %eax, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_21:
    jmp .L2_17
.L2_16:
.L2_17:
    testl %ebx, %ebx
    jne .L2_25
    jmp .L2_26
.L2_25:
    movl $8, %eax
    movl %eax, %r13d
    jmp .L2_27
.L2_26:
    movl $4294967294, %eax
    movl %eax, %r13d
.L2_27:
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L2_64
    jmp .L2_28
.L2_64:
    movl %r14d, %r13d
    jmp .L2_29
.L2_28:
    testl %ebx, %ebx
    jne .L2_30
    jmp .L2_31
.L2_30:
    movl $7, %eax
    movl %eax, %r13d
    jmp .L2_32
.L2_31:
    movl $4294967291, %eax
    movl %eax, %r13d
.L2_32:
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r13d
.L2_29:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L2_65
    jmp .L2_33
.L2_65:
    movl %r14d, %r13d
    jmp .L2_34
.L2_33:
    testl %ebx, %ebx
    jne .L2_35
    jmp .L2_36
.L2_35:
    movl $1, %eax
    movl %eax, %r13d
    jmp .L2_37
.L2_36:
    movl $4294967287, %eax
    movl %eax, %r13d
.L2_37:
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r13d
.L2_34:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L2_22
    jmp .L2_23
.L2_22:
    leaq lb_net_12unknown_host(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_38:
    jmp .L2_24
.L2_23:
.L2_24:
    testl %ebx, %ebx
    jne .L2_42
    jmp .L2_43
.L2_42:
    movl $5, %eax
    movl %eax, %r13d
    jmp .L2_44
.L2_43:
    movl $4294967290, %eax
    movl %eax, %r13d
.L2_44:
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L2_66
    jmp .L2_45
.L2_66:
    movl %r14d, %r13d
    jmp .L2_46
.L2_45:
    testl %ebx, %ebx
    jne .L2_47
    jmp .L2_48
.L2_47:
    movl $10, %eax
    movl %eax, %r13d
    jmp .L2_49
.L2_48:
    movl $4294967289, %eax
    movl %eax, %r13d
.L2_49:
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r13d
.L2_46:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L2_39
    jmp .L2_40
.L2_39:
    leaq lb_net_unsupported(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_50:
    jmp .L2_41
.L2_40:
.L2_41:
    testl %ebx, %ebx
    jne .L2_54
    jmp .L2_55
.L2_54:
    movl $3, %eax
    movl %eax, %r13d
    jmp .L2_56
.L2_55:
    movl $4294967295, %eax
    movl %eax, %r13d
.L2_56:
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L2_67
    jmp .L2_57
.L2_67:
    movl %r14d, %ebx
    jmp .L2_58
.L2_57:
    testl %ebx, %ebx
    jne .L2_59
    jmp .L2_60
.L2_59:
    movl $9, %eax
    movl %eax, %ebx
    jmp .L2_61
.L2_60:
    movl $4294967288, %eax
    movl %eax, %ebx
.L2_61:
    cmpl %ebx, %r12d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L2_58:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L2_51
    jmp .L2_52
.L2_51:
    leaq lb_net_15invalid_options(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_62:
    jmp .L2_53
.L2_52:
.L2_53:
    leaq lb_net_failed(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_63:
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
    .weak lb_net_failed
    .p2align 2
lb_net_failed:
    .zero 4

    .bss
    .globl lb_net_closed
    .type lb_net_closed, @object
    .weak lb_net_closed
    .p2align 2
lb_net_closed:
    .zero 4

    .bss
    .globl lb_net_12unknown_host
    .type lb_net_12unknown_host, @object
    .weak lb_net_12unknown_host
    .p2align 2
lb_net_12unknown_host:
    .zero 4

    .bss
    .globl lb_net_15invalid_options
    .type lb_net_15invalid_options, @object
    .weak lb_net_15invalid_options
    .p2align 2
lb_net_15invalid_options:
    .zero 4

    .bss
    .globl lb_net_17message_too_large
    .type lb_net_17message_too_large, @object
    .weak lb_net_17message_too_large
    .p2align 2
lb_net_17message_too_large:
    .zero 4

    .bss
    .globl lb_net_cancelled
    .type lb_net_cancelled, @object
    .weak lb_net_cancelled
    .p2align 2
lb_net_cancelled:
    .zero 4

    .bss
    .globl lb_net_9timed_out
    .type lb_net_9timed_out, @object
    .weak lb_net_9timed_out
    .p2align 2
lb_net_9timed_out:
    .zero 4

    .bss
    .globl lb_net_18connection_refused
    .type lb_net_18connection_refused, @object
    .weak lb_net_18connection_refused
    .p2align 2
lb_net_18connection_refused:
    .zero 4

    .bss
    .globl lb_net_19network_unreachable
    .type lb_net_19network_unreachable, @object
    .weak lb_net_19network_unreachable
    .p2align 2
lb_net_19network_unreachable:
    .zero 4

    .bss
    .globl lb_net_14address_in_use
    .type lb_net_14address_in_use, @object
    .weak lb_net_14address_in_use
    .p2align 2
lb_net_14address_in_use:
    .zero 4

    .bss
    .globl lb_net_19address_unavailable
    .type lb_net_19address_unavailable, @object
    .weak lb_net_19address_unavailable
    .p2align 2
lb_net_19address_unavailable:
    .zero 4

    .bss
    .globl lb_net_17permission_denied
    .type lb_net_17permission_denied, @object
    .weak lb_net_17permission_denied
    .p2align 2
lb_net_17permission_denied:
    .zero 4

    .bss
    .globl lb_net_18resource_exhausted
    .type lb_net_18resource_exhausted, @object
    .weak lb_net_18resource_exhausted
    .p2align 2
lb_net_18resource_exhausted:
    .zero 4

    .bss
    .globl lb_net_18connection_aborted
    .type lb_net_18connection_aborted, @object
    .weak lb_net_18connection_aborted
    .p2align 2
lb_net_18connection_aborted:
    .zero 4

    .bss
    .globl lb_net_unsupported
    .type lb_net_unsupported, @object
    .weak lb_net_unsupported
    .p2align 2
lb_net_unsupported:
    .zero 4

    .bss
    .globl lb_net_20resolution_temporary
    .type lb_net_20resolution_temporary, @object
    .weak lb_net_20resolution_temporary
    .p2align 2
lb_net_20resolution_temporary:
    .zero 4

    .section .note.GNU-stack,"",@progbits
