    .text

    .p2align 4
    .globl lb_gpu_canvas_0init
    .type lb_gpu_canvas_0init, @function
lb_gpu_canvas_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_gpu_Canvas_count
    .type lb_gpu_Canvas_count, @function
lb_gpu_Canvas_count:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -16(%rbp)
    leaq -16(%rbp), %r10
    movq (%r10), %rbx
    movq $32, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_1:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_gpu_Canvas_clear
    .type lb_gpu_Canvas_clear, @function
lb_gpu_Canvas_clear:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -24(%rbp)
    leaq -24(%rbp), %r10
    movq (%r10), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $64, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_gpu_Canvas_triangles
    .type lb_gpu_Canvas_triangles, @function
lb_gpu_Canvas_triangles:
    pushq %rbp
    movq %rsp, %rbp
    subq $1104, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    leaq -104(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -120(%rbp), %r10
    movq %r8, 0(%r10)
    movq %r9, 8(%r10)
    movq 16(%rbp), %rax
    movl %eax, -136(%rbp)
    leaq 24(%rbp), %r10
    leaq -176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    leaq -88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1048(%rbp)
    leaq -104(%rbp), %rax
    movq %rax, -688(%rbp)
    movq -688(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -696(%rbp)
    movq -696(%rbp), %r10
    movq (%r10), %r14
.L3_5:
    movq $3, %rcx
    movq %r14, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rdx, %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L3_2
.L3_1:
    leaq -80(%rbp), %rbx
    leaq lb_gpu_16invalid_geometry(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_4(%rip), %r12
    leaq -192(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $56, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_2:
.L3_3:
    movq -688(%rbp), %r10
    movq (%r10), %r15
    leaq -224(%rbp), %rax
    movq %rax, -704(%rbp)
    leaq -672(%rbp), %rax
    movq %rax, -888(%rbp)
    movq -888(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, -896(%rbp)
    movq -888(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -904(%rbp)
    movq -888(%rbp), %rax
    movq $12, %rcx
    addq %rcx, %rax
    movq %rax, -912(%rbp)
    movq -888(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -920(%rbp)
    movl $0, %eax
    movd %eax, %xmm8
    movss %xmm8, -928(%rbp)
    movq -888(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -936(%rbp)
    movl $1065353216, %eax
    movd %eax, %xmm8
    movss %xmm8, -944(%rbp)
    movq -888(%rbp), %rax
    movq $20, %rcx
    addq %rcx, %rax
    movq %rax, -952(%rbp)
    movl $0, %eax
    movd %eax, %xmm8
    movss %xmm8, -960(%rbp)
    movq -888(%rbp), %rax
    movq $20, %rcx
    addq %rcx, %rax
    movq %rax, -968(%rbp)
    movl $1065353216, %eax
    movd %eax, %xmm8
    movss %xmm8, -976(%rbp)
    movq -888(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -984(%rbp)
    movl $0, %eax
    movd %eax, %xmm8
    movss %xmm8, -992(%rbp)
    movq -888(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -1000(%rbp)
    movl $1065353216, %eax
    movd %eax, %xmm8
    movss %xmm8, -1008(%rbp)
    movq -888(%rbp), %rax
    movq $28, %rcx
    addq %rcx, %rax
    movq %rax, -1016(%rbp)
    movl $0, %eax
    movd %eax, %xmm8
    movss %xmm8, -1024(%rbp)
    movq -888(%rbp), %rax
    movq $28, %rcx
    addq %rcx, %rax
    movq %rax, -1032(%rbp)
    movl $1065353216, %eax
    movd %eax, %xmm8
    movss %xmm8, -1040(%rbp)
    movq $0, %rax
    movq %rax, %r12
.L3_7:
    cmpq %r14, %r12
    jae .L3_10
.L3_8:
    movq $32, %rcx
    movq %r12, %rbx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq -704(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq -704(%rbp), %r10
    leaq -672(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq -888(%rbp), %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    call lb_math32_9is_finite@PLT
    movl %eax, %ebx
    testl %ebx, %ebx
    jne .L3_101
    jmp .L3_125
.L3_125:
    movl %ebx, %r13d
    jmp .L3_102
.L3_101:
    movq -896(%rbp), %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    call lb_math32_9is_finite@PLT
    movl %eax, %r13d
.L3_102:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L3_103
    jmp .L3_126
.L3_126:
    movl %ebx, %r13d
    jmp .L3_104
.L3_103:
    movq -904(%rbp), %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    call lb_math32_9is_finite@PLT
    movl %eax, %r13d
.L3_104:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L3_105
    jmp .L3_127
.L3_127:
    movl %ebx, %r13d
    jmp .L3_106
.L3_105:
    movq -912(%rbp), %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    call lb_math32_9is_finite@PLT
    movl %eax, %r13d
.L3_106:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L3_107
    jmp .L3_128
.L3_128:
    movl %ebx, %r13d
    jmp .L3_108
.L3_107:
    movq -920(%rbp), %r10
    movss (%r10), %xmm12
    movss -928(%rbp), %xmm9
    ucomiss %xmm9, %xmm12
    setae %al
    movzbl %al, %r13d
.L3_108:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L3_109
    jmp .L3_129
.L3_129:
    movl %ebx, %r13d
    jmp .L3_110
.L3_109:
    movq -936(%rbp), %r10
    movss (%r10), %xmm12
    movss -944(%rbp), %xmm9
    ucomiss %xmm12, %xmm9
    setae %al
    movzbl %al, %r13d
.L3_110:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L3_111
    jmp .L3_130
.L3_130:
    movl %ebx, %r13d
    jmp .L3_112
.L3_111:
    movq -952(%rbp), %r10
    movss (%r10), %xmm12
    movss -960(%rbp), %xmm9
    ucomiss %xmm9, %xmm12
    setae %al
    movzbl %al, %r13d
.L3_112:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L3_113
    jmp .L3_131
.L3_131:
    movl %ebx, %r13d
    jmp .L3_114
.L3_113:
    movq -968(%rbp), %r10
    movss (%r10), %xmm12
    movss -976(%rbp), %xmm9
    ucomiss %xmm12, %xmm9
    setae %al
    movzbl %al, %r13d
.L3_114:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L3_115
    jmp .L3_132
.L3_132:
    movl %ebx, %r13d
    jmp .L3_116
.L3_115:
    movq -984(%rbp), %r10
    movss (%r10), %xmm12
    movss -992(%rbp), %xmm9
    ucomiss %xmm9, %xmm12
    setae %al
    movzbl %al, %r13d
.L3_116:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L3_117
    jmp .L3_133
.L3_133:
    movl %ebx, %r13d
    jmp .L3_118
.L3_117:
    movq -1000(%rbp), %r10
    movss (%r10), %xmm12
    movss -1008(%rbp), %xmm9
    ucomiss %xmm12, %xmm9
    setae %al
    movzbl %al, %r13d
.L3_118:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L3_119
    jmp .L3_134
.L3_134:
    movl %ebx, %r13d
    jmp .L3_120
.L3_119:
    movq -1016(%rbp), %r10
    movss (%r10), %xmm12
    movss -1024(%rbp), %xmm9
    ucomiss %xmm9, %xmm12
    setae %al
    movzbl %al, %r13d
.L3_120:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L3_121
    jmp .L3_135
.L3_135:
    movl %ebx, %r13d
    jmp .L3_122
.L3_121:
    movq -1032(%rbp), %r10
    movss (%r10), %xmm12
    movss -1040(%rbp), %xmm9
    ucomiss %xmm12, %xmm9
    setae %al
    movzbl %al, %r13d
.L3_122:
    movzbl %r13b, %ebx
    movzbl %bl, %ebx
    leaq -680(%rbp), %r10
    movl %ebx, (%r10)
.L3_124:
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L3_12
.L3_11:
    leaq -80(%rbp), %rbx
    leaq lb_gpu_16invalid_geometry(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_5(%rip), %r12
    leaq -240(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $56, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_12:
.L3_13:
.L3_9:
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r12
    jmp .L3_7
.L3_10:
    leaq -176(%rbp), %rax
    movq %rax, -1056(%rbp)
    movq -1056(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_18
    jmp .L3_16
.L3_18:
    leaq -272(%rbp), %rbx
    movq -1056(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L3_15:
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movabsq $4670232813583204352, %rax
    movq %rax, %xmm13
    movq %xmm13, %rax
    btcq $63, %rax
    movq %rax, %xmm14
    ucomisd %xmm14, %xmm12
    setae %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L3_22
    jmp .L3_136
.L3_136:
    movl %r13d, %r14d
    jmp .L3_23
.L3_22:
    ucomisd %xmm12, %xmm13
    setae %al
    movzbl %al, %r14d
.L3_23:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L3_24
    jmp .L3_137
.L3_137:
    movl %r13d, %r14d
    jmp .L3_25
.L3_24:
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    ucomisd %xmm14, %xmm12
    setae %al
    movzbl %al, %r14d
.L3_25:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L3_26
    jmp .L3_138
.L3_138:
    movl %r13d, %r14d
    jmp .L3_27
.L3_26:
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    ucomisd %xmm12, %xmm13
    setae %al
    movzbl %al, %r14d
.L3_27:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L3_28
    jmp .L3_139
.L3_139:
    movl %r13d, %r14d
    jmp .L3_29
.L3_28:
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    movq $0, %rax
    movq %rax, %xmm14
    ucomisd %xmm14, %xmm12
    setae %al
    movzbl %al, %r14d
.L3_29:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L3_30
    jmp .L3_140
.L3_140:
    movl %r13d, %r14d
    jmp .L3_31
.L3_30:
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    ucomisd %xmm12, %xmm13
    setae %al
    movzbl %al, %r14d
.L3_31:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L3_32
    jmp .L3_141
.L3_141:
    movl %r13d, %r14d
    jmp .L3_33
.L3_32:
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    movq $0, %rax
    movq %rax, %xmm14
    ucomisd %xmm14, %xmm12
    setae %al
    movzbl %al, %r14d
.L3_33:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L3_34
    jmp .L3_142
.L3_142:
    movl %r13d, %r14d
    jmp .L3_35
.L3_34:
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    ucomisd %xmm12, %xmm13
    setae %al
    movzbl %al, %r14d
.L3_35:
    movzbl %r14b, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L3_20
.L3_19:
    leaq -80(%rbp), %rbx
    leaq lb_gpu_16invalid_geometry(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_6(%rip), %r12
    leaq -288(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $77, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_20:
.L3_21:
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    movq $0, %rax
    movq %rax, %xmm13
    ucomisd %xmm13, %xmm12
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L3_143
    jmp .L3_40
.L3_143:
    movl %r13d, %ebx
    jmp .L3_41
.L3_40:
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    ucomisd %xmm12, %xmm13
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L3_41:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L3_37
    jmp .L3_38
.L3_37:
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_38:
.L3_39:
    jmp .L3_17
.L3_16:
.L3_17:
    movq -696(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L3_144
    jmp .L3_46
.L3_144:
    movl %r13d, %r14d
    jmp .L3_47
.L3_46:
    leaq -120(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L3_47:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L3_145
    jmp .L3_48
.L3_145:
    movl %r13d, %r14d
    jmp .L3_49
.L3_48:
    leaq -120(%rbp), %r13
    movq $12, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L3_49:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L3_43
    jmp .L3_44
.L3_43:
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_44:
.L3_45:
    movq -1048(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -712(%rbp)
    movq -712(%rbp), %r10
    movq (%r10), %r14
    movq $1048576, %rax
    movq %r14, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_32(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    cmpq %r15, %rbx
    seta %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L3_146
    jmp .L3_54
.L3_146:
    movl %r15d, %r12d
    jmp .L3_55
.L3_54:
    movq -1048(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $4096, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r12d
.L3_55:
    movzbl %r12b, %r15d
    testl %r15d, %r15d
    jne .L3_51
    jmp .L3_52
.L3_51:
    leaq -80(%rbp), %rbx
    leaq lb_gpu_13command_limit(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_8(%rip), %r12
    leaq -304(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $57, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_52:
.L3_53:
    movq %rbx, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_32(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -720(%rbp)
    movq -1048(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -728(%rbp)
    movq -728(%rbp), %r10
    movq (%r10), %r15
    movq -720(%rbp), %rax
    cmpq %r15, %rax
    jbe .L3_58
.L3_57:
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_32(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq $256, %rdi
    movq %rbx, %rsi
    call lb_gpu_10canvas_max@PLT
    movq %rax, %rbx
    movq $1048576, %rdi
    movq %rbx, %rsi
    call lb_gpu_10canvas_min@PLT
    movq %rax, %rbx
    movq -720(%rbp), %rdi
    movq %rbx, %rsi
    call lb_gpu_10canvas_max@PLT
    movq %rax, -736(%rbp)
    leaq -320(%rbp), %rax
    movq %rax, -1064(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -1072(%rbp)
    leaq -368(%rbp), %rax
    movq %rax, -1080(%rbp)
    movq -736(%rbp), %rax
    movabsq $144115188075855872, %rcx
    cmpq %rcx, %rax
    jbe .L3_61
.L3_60:
    movq -1080(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_11(%rip), %r13
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -1080(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L3_62
.L3_61:
    movq -736(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq -1072(%rbp), %r10
    movq (%r10), %r13
    movq -1072(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L3_63
    jmp .L3_64
.L3_64:
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_63:
    movq %r15, %r10
    movq (%r10), %rbx
    movq %r13, %rsi
    movq %r12, %rdx
    movq $4, %rcx
    leaq -392(%rbp), %rdi
    movq %rbx, %r11
    call *%r11
    leaq -392(%rbp), %r14
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, -744(%rbp)
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl -744(%rbp), %eax
    movl %ebx, %ecx
    movl %eax, %ebx
    andl %ecx, %ebx
    testl %ebx, %ebx
    jne .L3_65
    jmp .L3_66
.L3_65:
    movq -1080(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_14(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $16, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -1080(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L3_62
.L3_66:
    movq %r14, %r10
    movq (%r10), %rbx
    movq -1080(%rbp), %r10
    movq %rbx, (%r10)
    movq -1080(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -736(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -1080(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L3_62:
    movq -1080(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_68
    jmp .L3_67
.L3_68:
    movq -1080(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_67:
    movq -1080(%rbp), %r10
    movq -1064(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -712(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L3_71
.L3_70:
    movq -1064(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -1048(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %rbx, %r8
    call lb_memory_copy_0g1_gpu_Vertex@PLT
    jmp .L3_72
.L3_71:
.L3_72:
    movq -728(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L3_74
.L3_73:
    leaq -408(%rbp), %r12
    movq -1048(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %rax
    movq $32, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_32(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq -1072(%rbp), %r10
    movq (%r10), %r13
    movq -1072(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L3_77
    jmp .L3_76
.L3_77:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r13, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L3_76:
    jmp .L3_75
.L3_74:
.L3_75:
    movq -1064(%rbp), %r10
    movq -1048(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L3_59
.L3_58:
.L3_59:
    movq -1048(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -752(%rbp)
    movq -752(%rbp), %r10
    movq (%r10), %r12
    movq -1048(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -760(%rbp)
    movq -760(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -768(%rbp)
    movq -768(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r12
    jne .L3_79
.L3_78:
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_32(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq $16, %rdi
    movq %r12, %rsi
    call lb_gpu_10canvas_max@PLT
    movq %rax, -776(%rbp)
    leaq -424(%rbp), %rax
    movq %rax, -1088(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -1096(%rbp)
    leaq -472(%rbp), %rax
    movq %rax, -1104(%rbp)
    movq -776(%rbp), %rax
    movabsq $41175768021673106, %rcx
    cmpq %rcx, %rax
    jbe .L3_82
.L3_81:
    movq -1104(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_11(%rip), %r14
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $16, %rcx
    addq %rcx, %r12
    movq $47, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -1104(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L3_83
.L3_82:
    movq -776(%rbp), %rax
    movq $112, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq -1096(%rbp), %r10
    movq (%r10), %r14
    movq -1096(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L3_84
    jmp .L3_85
.L3_85:
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_84:
    movq %r15, %r10
    movq (%r10), %rbx
    movq %r14, %rsi
    movq %r13, %rdx
    movq $8, %rcx
    leaq -496(%rbp), %rdi
    movq %rbx, %r11
    call *%r11
    leaq -496(%rbp), %r12
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq $0, %rcx
    cmpq %rcx, %r13
    setne %al
    movzbl %al, %eax
    movl %eax, -784(%rbp)
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl -784(%rbp), %eax
    movl %ebx, %ecx
    movl %eax, %ebx
    andl %ecx, %ebx
    testl %ebx, %ebx
    jne .L3_86
    jmp .L3_87
.L3_86:
    movq -1104(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_14(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $16, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -1104(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L3_83
.L3_87:
    movq %r12, %r10
    movq (%r10), %rbx
    movq -1104(%rbp), %r10
    movq %rbx, (%r10)
    movq -1104(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -776(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -1104(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L3_83:
    movq -1104(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_89
    jmp .L3_88
.L3_89:
    movq -1104(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_88:
    movq -1104(%rbp), %r10
    movq -1088(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -752(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L3_92
.L3_91:
    movq -1088(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -760(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %rbx, %r8
    call lb_memory_copy_0g1_gpu_Draw@PLT
    jmp .L3_93
.L3_92:
.L3_93:
    movq -768(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L3_95
.L3_94:
    leaq -512(%rbp), %r12
    movq -760(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %rax
    movq $112, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_32(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq -1096(%rbp), %r10
    movq (%r10), %r13
    movq -1096(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L3_98
    jmp .L3_97
.L3_98:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r13, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L3_97:
    jmp .L3_96
.L3_95:
.L3_96:
    movq -1088(%rbp), %r10
    movq -760(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L3_80
.L3_79:
.L3_80:
    movq -1048(%rbp), %r10
    movq (%r10), %r12
    movq -728(%rbp), %r10
    movq (%r10), %r13
    movq -712(%rbp), %r10
    movq (%r10), %r14
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    cmpq %rbx, %r14
    jb 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r13, %r14
    jbe .L3_99
.L3_100:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_99:
    movq $32, %rcx
    movq %r14, %rax
    imulq %rcx, %rax
    movq %rax, -792(%rbp)
    movq -792(%rbp), %rax
    addq %r12, %rax
    movq %rax, -800(%rbp)
    movq %r13, %rax
    subq %r14, %rax
    movq %rax, -808(%rbp)
    leaq -528(%rbp), %rax
    movq %rax, -816(%rbp)
    movq -800(%rbp), %rax
    movq -816(%rbp), %r10
    movq %rax, (%r10)
    movq -816(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -824(%rbp)
    movq -808(%rbp), %rax
    movq -824(%rbp), %r10
    movq %rax, (%r10)
    movq -696(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -832(%rbp)
    movq -816(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -688(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -832(%rbp), %r8
    call lb_memory_copy_0g1_gpu_Vertex@PLT
    movq -752(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -840(%rbp)
    movq -760(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -848(%rbp)
    movq -768(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -856(%rbp)
    movq -840(%rbp), %rax
    movq -856(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -840(%rbp), %rax
    movq $112, %rcx
    imulq %rcx, %rax
    movq %rax, -864(%rbp)
    movq -848(%rbp), %rax
    movq -864(%rbp), %rcx
    addq %rcx, %rax
    movq %rax, -872(%rbp)
    leaq -640(%rbp), %rax
    movq %rax, -880(%rbp)
    movq -880(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movups %xmm8, 80(%r11)
    movups %xmm8, 96(%r11)
    movq -712(%rbp), %r10
    movq (%r10), %rbx
    movq -880(%rbp), %r10
    movq %rbx, (%r10)
    movq -696(%rbp), %r10
    movq (%r10), %rbx
    movq -880(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    leaq -120(%rbp), %rbx
    movq -880(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -136(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq -880(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movb %bl, (%r10)
    movq -880(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -1056(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq -880(%rbp), %r10
    movq -872(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movups 64(%r10), %xmm8
    movups %xmm8, 64(%r11)
    movups 80(%r10), %xmm8
    movups %xmm8, 80(%r11)
    movups 96(%r10), %xmm8
    movups %xmm8, 96(%r11)
    movq -720(%rbp), %rax
    movq -712(%rbp), %r10
    movq %rax, (%r10)
    movq -752(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_32(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -752(%rbp), %r10
    movq %rbx, (%r10)
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $0, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_gpu_Canvas_destroy
    .type lb_gpu_Canvas_destroy, @function
lb_gpu_Canvas_destroy:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -48(%rbp)
    leaq -48(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -192(%rbp)
    movq -192(%rbp), %rax
    movq $48, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L4_2
.L4_1:
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -176(%rbp)
    leaq -64(%rbp), %r15
    movq %rbx, %r10
    movq (%r10), %r14
    movq %r12, %rax
    movq $4, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_32(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq -176(%rbp), %r10
    movq (%r10), %r13
    movq -176(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L4_5
    jmp .L4_4
.L4_5:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r13, %rdi
    movq %r15, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L4_4:
    jmp .L4_3
.L4_2:
.L4_3:
    movq -192(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L4_7
.L4_6:
    leaq lb_memory_heap(%rip), %r12
    leaq -80(%rbp), %r13
    movq -192(%rbp), %r10
    movq (%r10), %r14
    movq %rbx, %rax
    movq $32, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_32(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L4_10
    jmp .L4_9
.L4_10:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L4_9:
    jmp .L4_8
.L4_7:
.L4_8:
    movq -192(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L4_12
.L4_11:
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -184(%rbp)
    leaq -96(%rbp), %r14
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r12, %rax
    movq $112, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_32(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq -184(%rbp), %r10
    movq (%r10), %r13
    movq -184(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L4_15
    jmp .L4_14
.L4_15:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L4_14:
    jmp .L4_13
.L4_12:
.L4_13:
    leaq -168(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movq $0, 64(%r11)
    movq %rbx, %r10
    movq -192(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq 64(%r10), %rax
    movq %rax, 64(%r11)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_gpu_10canvas_min
    .type lb_gpu_10canvas_min, @function
lb_gpu_10canvas_min:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    movq %rsi, -56(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jae .L5_2
.L5_1:
    movq %rbx, %r12
    jmp .L5_3
.L5_2:
.L5_3:
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_4:
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_gpu_10canvas_max
    .type lb_gpu_10canvas_max, @function
lb_gpu_10canvas_max:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    movq %rsi, -56(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jbe .L6_2
.L6_1:
    movq %rbx, %r12
    jmp .L6_3
.L6_2:
.L6_3:
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_4:
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .weak lb_memory_copy_0g1_gpu_Vertex
    .type lb_memory_copy_0g1_gpu_Vertex, @function
lb_memory_copy_0g1_gpu_Vertex:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -56(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -72(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movq %r8, -88(%rbp)
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -56(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L7_11
    jmp .L7_4
.L7_11:
    movl %r13d, %r14d
    jmp .L7_5
.L7_4:
    leaq -72(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L7_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L7_1
    jmp .L7_2
.L7_1:
    leaq .Ltext_20(%rip), %r13
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_29(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L7_3
.L7_2:
.L7_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L7_7
.L7_6:
    movq %r12, %r10
    movq (%r10), %r13
    leaq -72(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %rax
    movq $32, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_32(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %r13, %rdi
    movq %r14, %rsi
    movq %r15, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L7_9
    jmp .L7_10
.L7_10:
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_31(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_9:
    jmp .L7_8
.L7_7:
.L7_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .weak lb_memory_copy_0g1_gpu_Draw
    .type lb_memory_copy_0g1_gpu_Draw, @function
lb_memory_copy_0g1_gpu_Draw:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -56(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -72(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movq %r8, -88(%rbp)
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -56(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L8_11
    jmp .L8_4
.L8_11:
    movl %r13d, %r14d
    jmp .L8_5
.L8_4:
    leaq -72(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L8_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L8_1
    jmp .L8_2
.L8_1:
    leaq .Ltext_20(%rip), %r13
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_29(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L8_3
.L8_2:
.L8_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L8_7
.L8_6:
    movq %r12, %r10
    movq (%r10), %r13
    leaq -72(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %rax
    movq $112, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_32(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %r13, %rdi
    movq %r14, %rsi
    movq %r15, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L8_9
    jmp .L8_10
.L8_10:
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_31(%rip), %rsi
    call lb_core_7trap_at@PLT
.L8_9:
    jmp .L8_8
.L8_7:
.L8_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_gpu_canvas_0init
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
    .asciz "src/std/gpu/canvas.lucb:50:9"
.Ltext_2:
    .asciz "division by zero"
.Ltext_3:
    .asciz "src/std/gpu/canvas.lucb:61:9"
.Ltext_4:
    .asciz "triangle input must contain a multiple of three vertices"
.Ltext_5:
    .asciz "vertices need finite positions and linear colors in 0..1"
.Ltext_6:
    .asciz "GPU viewport origins must be finite and in -16384..16384; extents in 0..16384"
.Ltext_7:
    .asciz "src/std/gpu/canvas.lucb:73:9"
.Ltext_8:
    .asciz "a canvas supports at most 1048576 vertices and 4096 draws"
.Ltext_9:
    .asciz "src/std/gpu/canvas.lucb:75:9"
.Ltext_10:
    .asciz "src/std/gpu/canvas.lucb:77:13"
.Ltext_11:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_12:
    .asciz "memory.unset"
.Ltext_13:
    .asciz "src/std/gpu/canvas.lucb:78:13"
.Ltext_14:
    .asciz "memory.exhausted"
.Ltext_15:
    .asciz "src/std/gpu/canvas.lucb:82:17"
.Ltext_16:
    .asciz "src/std/gpu/canvas.lucb:85:13"
.Ltext_17:
    .asciz "src/std/gpu/canvas.lucb:86:13"
.Ltext_18:
    .asciz "src/std/gpu/canvas.lucb:90:17"
.Ltext_19:
    .asciz "src/std/gpu/canvas.lucb:92:9"
.Ltext_20:
    .asciz "index out of bounds"
.Ltext_21:
    .asciz "src/std/gpu/canvas.lucb:93:9"
.Ltext_22:
    .asciz "src/std/gpu/canvas.lucb:95:9"
.Ltext_23:
    .asciz "src/std/gpu/canvas.lucb:99:13"
.Ltext_24:
    .asciz "src/std/gpu/canvas.lucb:101:13"
.Ltext_25:
    .asciz "src/std/gpu/canvas.lucb:103:13"
.Ltext_26:
    .asciz "src/std/gpu/canvas.lucb:107:5"
.Ltext_27:
    .asciz "src/std/gpu/canvas.lucb:110:5"
.Ltext_28:
    .asciz "src/std/gpu/canvas.lucb:113:5"
.Ltext_29:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_30:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_31:
    .asciz "null_foreign"
.Ltext_32:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
