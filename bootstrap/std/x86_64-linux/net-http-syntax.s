    .text

    .p2align 4
    .globl lb_net_11http_syntax_0init
    .type lb_net_11http_syntax_0init, @function
lb_net_11http_syntax_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_10http_equal
    .type lb_net_10http_equal, @function
lb_net_10http_equal:
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
    leaq -56(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -80(%rbp)
    leaq -72(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -88(%rbp)
    movq -80(%rbp), %rax
    movq -88(%rbp), %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L1_2
.L1_1:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_4:
    jmp .L1_3
.L1_2:
.L1_3:
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -96(%rbp)
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -104(%rbp)
    movq $0, %rax
    movq %rax, -112(%rbp)
.L1_5:
    movq -112(%rbp), %rax
    movq -80(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L1_8
.L1_6:
    movq -96(%rbp), %rax
    movq -112(%rbp), %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq -112(%rbp), %rax
    movq -88(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -104(%rbp), %rax
    movq -112(%rbp), %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movzbl %bl, %ebx
    movl $65, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_12
    jmp .L1_28
.L1_28:
    movl %r12d, %r15d
    jmp .L1_13
.L1_12:
    movl $90, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r15d
.L1_13:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L1_9
    jmp .L1_10
.L1_9:
    movl $32, %ecx
    movl %ebx, %r15d
    addl %ecx, %r15d
    movzbl %r15b, %r12d
    cmpl %r15d, %r12d
    je .L1_14
.L1_15:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_14:
    movl %r15d, %ebx
    jmp .L1_11
.L1_10:
.L1_11:
    movzbl %bl, %r12d
    movzbl %r13b, %r15d
    movl $65, %ecx
    cmpl %ecx, %r15d
    setae %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_19
    jmp .L1_29
.L1_29:
    movl %r14d, %ebx
    jmp .L1_20
.L1_19:
    movl $90, %ecx
    cmpl %ecx, %r15d
    setbe %al
    movzbl %al, %ebx
.L1_20:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L1_16
    jmp .L1_17
.L1_16:
    movl $32, %ecx
    movl %r15d, %r13d
    addl %ecx, %r13d
    movzbl %r13b, %ebx
    cmpl %r13d, %ebx
    je .L1_21
.L1_22:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_21:
    movl %r13d, %ebx
    jmp .L1_18
.L1_17:
    movl %r15d, %ebx
.L1_18:
    movzbl %bl, %r13d
    movzbl %r12b, %r14d
    movzbl %r13b, %r13d
    cmpl %r13d, %r14d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L1_24
.L1_23:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_26:
    jmp .L1_25
.L1_24:
.L1_25:
.L1_7:
    movq -112(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, -112(%rbp)
    jmp .L1_5
.L1_8:
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_27:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_10http_token
    .type lb_net_10http_token, @function
lb_net_10http_token:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -56(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -56(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -64(%rbp)
    movq -64(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L2_2
.L2_1:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_4:
    jmp .L2_3
.L2_2:
.L2_3:
    movq %rbx, %r10
    movq (%r10), %r13
    movq $0, %rax
    movq %rax, %r14
.L2_5:
    movq -64(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L2_8
.L2_6:
    movq %r13, %rbx
    addq %r14, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movzbl %bl, %ebx
    movl $97, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L2_12
    jmp .L2_57
.L2_57:
    movl %r15d, %r12d
    jmp .L2_13
.L2_12:
    movl $122, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r12d
.L2_13:
    movzbl %r12b, %r15d
    testl %r15d, %r15d
    jne .L2_58
    jmp .L2_14
.L2_58:
    movl %r15d, %r12d
    jmp .L2_15
.L2_14:
    movl $65, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L2_16
    jmp .L2_59
.L2_59:
    movl %r12d, %r15d
    jmp .L2_17
.L2_16:
    movl $90, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r15d
.L2_17:
    movzbl %r15b, %r12d
.L2_15:
    movzbl %r12b, %r15d
    testl %r15d, %r15d
    jne .L2_60
    jmp .L2_18
.L2_60:
    movl %r15d, %r12d
    jmp .L2_19
.L2_18:
    movl $48, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L2_20
    jmp .L2_61
.L2_61:
    movl %r12d, %r15d
    jmp .L2_21
.L2_20:
    movl $57, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r15d
.L2_21:
    movzbl %r15b, %r12d
.L2_19:
    movzbl %r12b, %r15d
    testl %r15d, %r15d
    jne .L2_9
    jmp .L2_10
.L2_9:
    jmp .L2_7
.L2_22:
    jmp .L2_11
.L2_10:
.L2_11:
    movl $33, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L2_62
    jmp .L2_26
.L2_62:
    movl %r12d, %r15d
    jmp .L2_27
.L2_26:
    movl $35, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r15d
.L2_27:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L2_63
    jmp .L2_28
.L2_63:
    movl %r12d, %r15d
    jmp .L2_29
.L2_28:
    movl $36, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r15d
.L2_29:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L2_64
    jmp .L2_30
.L2_64:
    movl %r12d, %r15d
    jmp .L2_31
.L2_30:
    movl $37, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r15d
.L2_31:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L2_65
    jmp .L2_32
.L2_65:
    movl %r12d, %r15d
    jmp .L2_33
.L2_32:
    movl $38, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r15d
.L2_33:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L2_66
    jmp .L2_34
.L2_66:
    movl %r12d, %r15d
    jmp .L2_35
.L2_34:
    movl $39, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r15d
.L2_35:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L2_67
    jmp .L2_36
.L2_67:
    movl %r12d, %r15d
    jmp .L2_37
.L2_36:
    movl $42, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r15d
.L2_37:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L2_68
    jmp .L2_38
.L2_68:
    movl %r12d, %r15d
    jmp .L2_39
.L2_38:
    movl $43, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r15d
.L2_39:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L2_69
    jmp .L2_40
.L2_69:
    movl %r12d, %r15d
    jmp .L2_41
.L2_40:
    movl $45, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r15d
.L2_41:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L2_70
    jmp .L2_42
.L2_70:
    movl %r12d, %r15d
    jmp .L2_43
.L2_42:
    movl $46, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r15d
.L2_43:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L2_71
    jmp .L2_44
.L2_71:
    movl %r12d, %r15d
    jmp .L2_45
.L2_44:
    movl $94, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r15d
.L2_45:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L2_72
    jmp .L2_46
.L2_72:
    movl %r12d, %r15d
    jmp .L2_47
.L2_46:
    movl $95, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r15d
.L2_47:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L2_73
    jmp .L2_48
.L2_73:
    movl %r12d, %r15d
    jmp .L2_49
.L2_48:
    movl $96, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r15d
.L2_49:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L2_74
    jmp .L2_50
.L2_74:
    movl %r12d, %r15d
    jmp .L2_51
.L2_50:
    movl $124, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r15d
.L2_51:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L2_75
    jmp .L2_52
.L2_75:
    movl %r12d, %ebx
    jmp .L2_53
.L2_52:
    movl $126, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L2_53:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L2_23
    jmp .L2_24
.L2_23:
    jmp .L2_7
.L2_54:
    jmp .L2_25
.L2_24:
.L2_25:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_55:
.L2_7:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r14
    jmp .L2_5
.L2_8:
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_56:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_8http_ows
    .type lb_net_8http_ows, @function
lb_net_8http_ows:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -72(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -72(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -112(%rbp)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $0, %rax
    movq %rax, -120(%rbp)
.L3_1:
    movq -120(%rbp), %rax
    movq -112(%rbp), %rcx
    cmpq %rcx, %rax
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L3_4
    jmp .L3_18
.L3_18:
    movl %r15d, %r12d
    jmp .L3_5
.L3_4:
    movq -120(%rbp), %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r15d
    movl $32, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L3_19
    jmp .L3_6
.L3_19:
    movl %r15d, %r12d
    jmp .L3_7
.L3_6:
    movq %r12, %r10
    movzbl (%r10), %r15d
    movl $9, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl %r15d, %r12d
.L3_7:
    movzbl %r12b, %r15d
    movl %r15d, %r12d
.L3_5:
    movzbl %r12b, %r15d
    testl %r15d, %r15d
    jne .L3_2
    jmp .L3_3
.L3_2:
    movq -120(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %rax
    movq %rax, -120(%rbp)
    jmp .L3_1
.L3_3:
    movq %rbx, %r10
    movq (%r10), %r12
    movq -112(%rbp), %rax
    movq %rax, %r13
.L3_8:
    movq -120(%rbp), %rcx
    cmpq %rcx, %r13
    seta %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L3_11
    jmp .L3_20
.L3_20:
    movl %r15d, %r14d
    jmp .L3_12
.L3_11:
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq -112(%rbp), %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    addq %r12, %r14
    movq %r14, %r10
    movzbl (%r10), %r15d
    movl $32, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L3_21
    jmp .L3_13
.L3_21:
    movl %r15d, %r14d
    jmp .L3_14
.L3_13:
    movq %r14, %r10
    movzbl (%r10), %r15d
    movl $9, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl %r15d, %r14d
.L3_14:
    movzbl %r14b, %r15d
    movl %r15d, %r14d
.L3_12:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L3_9
    jmp .L3_10
.L3_9:
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r14, %r13
    jmp .L3_8
.L3_10:
    movq %rbx, %r10
    movq (%r10), %r14
    movq -112(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq -120(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -120(%rbp), %rax
    cmpq %r13, %rax
    jbe .L3_15
.L3_16:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_15:
    movq -120(%rbp), %rax
    movq %rax, %rbx
    addq %r14, %rbx
    movq -120(%rbp), %rcx
    movq %r13, %r12
    subq %rcx, %r12
    leaq -88(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq %r12, (%r10)
    leaq -104(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq -56(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_17:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_14http_list_next
    .type lb_net_14http_list_next, @function
lb_net_14http_list_next:
    pushq %rbp
    movq %rsp, %rbp
    subq $224, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -88(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movq %rcx, -104(%rbp)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    leaq -88(%rbp), %rax
    movq %rax, -208(%rbp)
    movq -208(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r12
    jbe .L4_2
.L4_1:
    leaq -128(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -72(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $24, %rdx
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
.L4_4:
    jmp .L4_3
.L4_2:
.L4_3:
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -216(%rbp)
    movq -208(%rbp), %r10
    movq (%r10), %r15
.L4_5:
    movq %rbx, %r10
    movq (%r10), %r12
    cmpq %r14, %r12
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L4_8
    jmp .L4_13
.L4_13:
    movl %r12d, %r13d
    jmp .L4_9
.L4_8:
    movq %rbx, %r10
    movq (%r10), %r12
    cmpq %r14, %r12
    jb 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    addq %r15, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $44, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L4_9:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L4_6
    jmp .L4_7
.L4_6:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    jmp .L4_5
.L4_7:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %rbx, %r10
    movq %r13, (%r10)
    movq -208(%rbp), %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq -216(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -216(%rbp), %rax
    cmpq %r12, %rax
    jbe .L4_10
.L4_11:
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_10:
    movq -216(%rbp), %rax
    movq %rax, %rbx
    addq %r15, %rbx
    movq -216(%rbp), %rcx
    movq %r12, %r13
    subq %rcx, %r13
    leaq -144(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    leaq -160(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_net_8http_ows@PLT
    leaq -176(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -176(%rbp), %rbx
    leaq -200(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -72(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $24, %rdx
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
.L4_12:
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_11http_number
    .type lb_net_11http_number, @function
lb_net_11http_number:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -104(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -104(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -160(%rbp)
    movq -160(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L5_2
.L5_1:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_18(%rip), %r13
    leaq -120(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $17, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
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
.L5_2:
.L5_3:
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -168(%rbp)
    movq $0, %rax
    movq %rax, %r14
    movq $0, %rax
    movq %rax, %r15
.L5_5:
    movq -160(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L5_8
.L5_6:
    movq -168(%rbp), %rax
    movq %rax, %rbx
    addq %r15, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movzbl %bl, %ebx
    movl $48, %ecx
    cmpl %ecx, %ebx
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L5_24
    jmp .L5_12
.L5_24:
    movl %r12d, %r13d
    jmp .L5_13
.L5_12:
    movl $57, %ecx
    cmpl %ecx, %ebx
    seta %al
    movzbl %al, %r13d
.L5_13:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L5_9
    jmp .L5_10
.L5_9:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_19(%rip), %r13
    leaq -136(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
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
.L5_10:
.L5_11:
    movl $48, %ecx
    movl %ebx, %r13d
    subl %ecx, %r13d
    movzbl %r13b, %r12d
    cmpl %r13d, %r12d
    je .L5_15
.L5_16:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_15:
    movl %r13d, %ebx
    movq $-1, %rax
    movq %rax, %r12
    subq %rbx, %r12
.L5_21:
    movq $10, %rcx
    movq %r12, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %r13
    cmpq %r13, %r14
    jbe .L5_18
.L5_17:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_10http_limit(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_23(%rip), %r13
    leaq -152(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $25, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
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
.L5_18:
.L5_19:
    movq %r14, %rax
    movq $10, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %rbx, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
.L5_7:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %r12, %r14
    movq %rbx, %r15
    jmp .L5_5
.L5_8:
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
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
    .globl lb_net_16http_field_valid
    .type lb_net_16http_field_valid, @function
lb_net_16http_field_valid:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq 16(%rbp), %r10
    leaq -72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_net_10http_token@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L6_2
.L6_1:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_4:
    jmp .L6_3
.L6_2:
.L6_3:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -80(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L6_5:
    movq -80(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L6_8
.L6_6:
    movq %r13, %rbx
    addq %r14, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movzbl %bl, %ebx
    movl $32, %ecx
    cmpl %ecx, %ebx
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L6_12
    jmp .L6_18
.L6_18:
    movl %r15d, %r12d
    jmp .L6_13
.L6_12:
    movl $9, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L6_13:
    movzbl %r12b, %r15d
    testl %r15d, %r15d
    jne .L6_19
    jmp .L6_14
.L6_19:
    movl %r15d, %ebx
    jmp .L6_15
.L6_14:
    movl $127, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L6_15:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L6_9
    jmp .L6_10
.L6_9:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_16:
    jmp .L6_11
.L6_10:
.L6_11:
.L6_7:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r14
    jmp .L6_5
.L6_8:
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_17:
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_13http_head_end
    .type lb_net_13http_head_end, @function
lb_net_13http_head_end:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -72(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    movq %rdx, -88(%rbp)
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -72(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq (%r10), %r12
.L7_1:
    cmpq %r13, %rbx
    setb %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L7_4
    jmp .L7_17
.L7_17:
    movl %r14d, %r15d
    jmp .L7_5
.L7_4:
    movq %r13, %r14
    subq %rbx, %r14
    movq $4, %rcx
    cmpq %rcx, %r14
    setae %al
    movzbl %al, %r15d
.L7_5:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L7_2
    jmp .L7_3
.L7_2:
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r12, %r14
    addq %rbx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $13, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L7_9
    jmp .L7_18
.L7_18:
    movl %r14d, %r15d
    jmp .L7_10
.L7_9:
    movq $1, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    cmpq %r13, %r14
    jb 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r14, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $10, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L7_10:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L7_11
    jmp .L7_19
.L7_19:
    movl %r14d, %r15d
    jmp .L7_12
.L7_11:
    movq %rbx, %rax
    movq $2, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    cmpq %r13, %r14
    jb 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r14, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $13, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L7_12:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L7_13
    jmp .L7_20
.L7_20:
    movl %r14d, %r15d
    jmp .L7_14
.L7_13:
    movq %rbx, %rax
    movq $3, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    cmpq %r13, %r14
    jb 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r14, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $10, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L7_14:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L7_6
    jmp .L7_7
.L7_6:
    movq %rbx, %rax
    movq $4, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    leaq -104(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -56(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_15:
    jmp .L7_8
.L7_7:
.L7_8:
    movq $1, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %rbx
    jmp .L7_1
.L7_3:
    leaq -120(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -56(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_16:
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_9http_line
    .type lb_net_9http_line, @function
lb_net_9http_line:
    pushq %rbp
    movq %rsp, %rbp
    subq $224, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -112(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movq %rcx, -128(%rbp)
    leaq -128(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -216(%rbp)
    leaq -112(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %r10
    movq (%r10), %r13
.L8_1:
    movq %rbx, %r10
    movq (%r10), %r15
    cmpq %r14, %r15
    jae .L8_3
.L8_2:
    movq %rbx, %r10
    movq (%r10), %r15
    cmpq %r14, %r15
    jb 1f
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    addq %r13, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movzbl %r15b, %r15d
    movl $10, %ecx
    cmpl %ecx, %r15d
    jne .L8_5
.L8_4:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_33(%rip), %r13
    leaq -144(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $23, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $48, %rdx
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
.L8_7:
    jmp .L8_6
.L8_5:
.L8_6:
    movl $13, %ecx
    cmpl %ecx, %r15d
    jne .L8_9
.L8_8:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r14, %rax
    movq %r12, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq $2, %rcx
    cmpq %rcx, %r12
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L8_21
    jmp .L8_14
.L8_21:
    movl %r12d, %r15d
    jmp .L8_15
.L8_14:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    cmpq %r14, %r12
    jb 1f
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r12, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $10, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r15d
.L8_15:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L8_11
    jmp .L8_12
.L8_11:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_33(%rip), %r13
    leaq -160(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $23, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $48, %rdx
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
.L8_16:
    jmp .L8_13
.L8_12:
.L8_13:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $2, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $1, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq -216(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r15, %r12
    jb 1f
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -216(%rbp), %rax
    cmpq %r12, %rax
    jbe .L8_17
.L8_18:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
.L8_17:
    movq -216(%rbp), %rax
    movq %rax, %rbx
    addq %r13, %rbx
    movq -216(%rbp), %rcx
    movq %r12, %r14
    subq %rcx, %r14
    leaq -176(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    leaq -192(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    leaq -96(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $48, %rdx
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
.L8_19:
    jmp .L8_10
.L8_9:
.L8_10:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    jmp .L8_1
.L8_3:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_38(%rip), %r13
    leaq -208(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $20, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $48, %rdx
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
.L8_20:
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_15http_uri_letter
    .type lb_net_15http_uri_letter, @function
lb_net_15http_uri_letter:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movl %edi, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $97, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L9_1
    jmp .L9_8
.L9_8:
    movl %r12d, %r13d
    jmp .L9_2
.L9_1:
    movl $122, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L9_2:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L9_9
    jmp .L9_3
.L9_9:
    movl %r12d, %ebx
    jmp .L9_4
.L9_3:
    movl $65, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L9_5
    jmp .L9_10
.L9_10:
    movl %r12d, %ebx
    jmp .L9_6
.L9_5:
    movl $90, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L9_6:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L9_4:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L9_7:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_13http_uri_name
    .type lb_net_13http_uri_name, @function
lb_net_13http_uri_name:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movl %edi, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl %ebx, %edi
    call lb_net_15http_uri_letter@PLT
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L10_36
    jmp .L10_1
.L10_36:
    movl %r12d, %r13d
    jmp .L10_2
.L10_1:
    movl $48, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L10_3
    jmp .L10_37
.L10_37:
    movl %r12d, %r13d
    jmp .L10_4
.L10_3:
    movl $57, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L10_4:
    movzbl %r13b, %r12d
    movl %r12d, %r13d
.L10_2:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L10_38
    jmp .L10_5
.L10_38:
    movl %r12d, %r13d
    jmp .L10_6
.L10_5:
    movl $45, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L10_6:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L10_39
    jmp .L10_7
.L10_39:
    movl %r12d, %r13d
    jmp .L10_8
.L10_7:
    movl $46, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L10_8:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L10_40
    jmp .L10_9
.L10_40:
    movl %r12d, %r13d
    jmp .L10_10
.L10_9:
    movl $95, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L10_10:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L10_41
    jmp .L10_11
.L10_41:
    movl %r12d, %r13d
    jmp .L10_12
.L10_11:
    movl $126, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L10_12:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L10_42
    jmp .L10_13
.L10_42:
    movl %r12d, %r13d
    jmp .L10_14
.L10_13:
    movl $33, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L10_14:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L10_43
    jmp .L10_15
.L10_43:
    movl %r12d, %r13d
    jmp .L10_16
.L10_15:
    movl $36, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L10_16:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L10_44
    jmp .L10_17
.L10_44:
    movl %r12d, %r13d
    jmp .L10_18
.L10_17:
    movl $38, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L10_18:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L10_45
    jmp .L10_19
.L10_45:
    movl %r12d, %r13d
    jmp .L10_20
.L10_19:
    movl $39, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L10_20:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L10_46
    jmp .L10_21
.L10_46:
    movl %r12d, %r13d
    jmp .L10_22
.L10_21:
    movl $40, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L10_22:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L10_47
    jmp .L10_23
.L10_47:
    movl %r12d, %r13d
    jmp .L10_24
.L10_23:
    movl $41, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L10_24:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L10_48
    jmp .L10_25
.L10_48:
    movl %r12d, %r13d
    jmp .L10_26
.L10_25:
    movl $42, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L10_26:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L10_49
    jmp .L10_27
.L10_49:
    movl %r12d, %r13d
    jmp .L10_28
.L10_27:
    movl $43, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L10_28:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L10_50
    jmp .L10_29
.L10_50:
    movl %r12d, %r13d
    jmp .L10_30
.L10_29:
    movl $44, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L10_30:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L10_51
    jmp .L10_31
.L10_51:
    movl %r12d, %r13d
    jmp .L10_32
.L10_31:
    movl $59, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L10_32:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L10_52
    jmp .L10_33
.L10_52:
    movl %r12d, %ebx
    jmp .L10_34
.L10_33:
    movl $61, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L10_34:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_35:
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_25http_request_target_valid
    .type lb_net_25http_request_target_valid, @function
lb_net_25http_request_target_valid:
    pushq %rbp
    movq %rsp, %rbp
    subq $336, %rsp
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
    leaq -72(%rbp), %rax
    movq %rax, -224(%rbp)
    movq -224(%rbp), %r10
    leaq -200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -200(%rbp), %rax
    movq %rax, -280(%rbp)
    movq -280(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L11_78
.L11_77:
    movl $0, %eax
    leaq -216(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, -328(%rbp)
    jmp .L11_113
.L11_80:
    jmp .L11_79
.L11_78:
.L11_79:
    leaq -202(%rbp), %r14
    movq $1, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -312(%rbp)
    leaq -204(%rbp), %r15
    movq $1, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -320(%rbp)
    movq $0, %rax
    movq %rax, %rbx
.L11_81:
    cmpq %r13, %rbx
    jae .L11_83
.L11_82:
    movq -280(%rbp), %r10
    movq (%r10), %r15
    movq %r15, %rax
    addq %rbx, %rax
    movq %rax, -288(%rbp)
    movq -288(%rbp), %r10
    movzbl (%r10), %eax
    movl %eax, -296(%rbp)
    movl -296(%rbp), %eax
    movzbl %al, %eax
    movl %eax, -304(%rbp)
    movl -304(%rbp), %eax
    movl $37, %ecx
    cmpl %ecx, %eax
    jne .L11_85
.L11_84:
    movq %r13, %r14
    subq %rbx, %r14
    movq $3, %rcx
    cmpq %rcx, %r14
    setb %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L11_114
    jmp .L11_90
.L11_114:
    movl %r14d, %r12d
    jmp .L11_91
.L11_90:
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r12, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl %r12d, %edi
    call lb_net_8http_hex@PLT
    leaq -202(%rbp), %r10
    movw %ax, 0(%r10)
    movq -312(%rbp), %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L11_91:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L11_115
    jmp .L11_92
.L11_115:
    movl %r14d, %r12d
    jmp .L11_93
.L11_92:
    movq %rbx, %rax
    movq $2, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r12, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl %r12d, %edi
    call lb_net_8http_hex@PLT
    leaq -204(%rbp), %r10
    movw %ax, 0(%r10)
    movq -320(%rbp), %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L11_93:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L11_87
    jmp .L11_88
.L11_87:
    movl $0, %eax
    leaq -216(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, -328(%rbp)
    jmp .L11_113
.L11_94:
    jmp .L11_89
.L11_88:
.L11_89:
    movq %rbx, %rax
    movq $3, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %rbx
    jmp .L11_81
.L11_95:
    jmp .L11_86
.L11_85:
.L11_86:
    movl -304(%rbp), %edi
    call lb_net_13http_uri_name@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L11_99
    jmp .L11_116
.L11_116:
    movl %r12d, %r14d
    jmp .L11_100
.L11_99:
    movl -304(%rbp), %eax
    movl $58, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L11_100:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L11_101
    jmp .L11_117
.L11_117:
    movl %r12d, %r14d
    jmp .L11_102
.L11_101:
    movl -304(%rbp), %eax
    movl $47, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L11_102:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L11_103
    jmp .L11_118
.L11_118:
    movl %r12d, %r14d
    jmp .L11_104
.L11_103:
    movl -304(%rbp), %eax
    movl $63, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L11_104:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L11_105
    jmp .L11_119
.L11_119:
    movl %r12d, %r14d
    jmp .L11_106
.L11_105:
    movl -304(%rbp), %eax
    movl $64, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L11_106:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L11_107
    jmp .L11_120
.L11_120:
    movl %r12d, %r14d
    jmp .L11_108
.L11_107:
    movl -304(%rbp), %eax
    movl $91, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L11_108:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L11_109
    jmp .L11_121
.L11_121:
    movl %r12d, %r14d
    jmp .L11_110
.L11_109:
    movl -304(%rbp), %eax
    movl $93, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L11_110:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L11_96
    jmp .L11_97
.L11_96:
    movl $0, %eax
    leaq -216(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, -328(%rbp)
    jmp .L11_113
.L11_111:
    jmp .L11_98
.L11_97:
.L11_98:
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %rbx
    jmp .L11_81
.L11_83:
    movl $1, %eax
    leaq -216(%rbp), %r10
    movl %eax, (%r10)
    movl $1, %eax
    movl %eax, -328(%rbp)
    jmp .L11_113
.L11_112:
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_113:
    movl -328(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jne .L11_2
.L11_1:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_4:
    jmp .L11_3
.L11_2:
.L11_3:
    leaq -56(%rbp), %r14
    leaq .Ltext_47(%rip), %rbx
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $7, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $7, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %eax
    movl %eax, -232(%rbp)
    movl -232(%rbp), %eax
    testl %eax, %eax
    jne .L11_8
    jmp .L11_122
.L11_122:
    movl -232(%rbp), %eax
    movl %eax, %ebx
    jmp .L11_9
.L11_8:
    movq %r14, %r10
    movq (%r10), %r15
    movq %r15, %rdi
    movq %rbx, %rsi
    movq %r12, %rdx
    call memcmp@PLT
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl %r15d, %ebx
.L11_9:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L11_5
    jmp .L11_6
.L11_5:
    leaq -104(%rbp), %rax
    movq %rax, -240(%rbp)
    leaq -120(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq -240(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -224(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -136(%rbp), %rax
    movq %rax, -248(%rbp)
    movq -248(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq $0, %rax
    movq %rax, %r15
    movq $0, %rax
    movq %rax, -336(%rbp)
.L11_10:
    cmpq %r12, %r15
    jae .L11_13
.L11_11:
    movq -224(%rbp), %r10
    movq (%r10), %rbx
    addq %r15, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $58, %ecx
    cmpl %ecx, %ebx
    jne .L11_15
.L11_14:
    movq -248(%rbp), %r10
    movq %r15, (%r10)
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq -248(%rbp), %r10
    movq -240(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r15, %rbx
    jmp .L11_16
.L11_15:
    movq -336(%rbp), %rax
    movq %rax, %rbx
.L11_16:
.L11_12:
    movq $1, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r15
    movq %rbx, %rax
    movq %rax, -336(%rbp)
    jmp .L11_10
.L11_13:
    movq -240(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_17
    jmp .L11_18
.L11_17:
    jmp .L11_19
.L11_18:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_20:
.L11_19:
    movq -336(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    cmpq %rbx, %r12
    jne .L11_22
.L11_21:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_24:
    jmp .L11_23
.L11_22:
.L11_23:
    movq -224(%rbp), %r10
    movq (%r10), %r14
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %rbx
    jbe .L11_29
.L11_30:
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_29:
    movq %rbx, %r13
    addq %r14, %r13
    movq %r12, %rax
    subq %rbx, %rax
    movq %rax, -256(%rbp)
    leaq -152(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq -256(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %rax, %r15
.L11_25:
    movq -256(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L11_28
.L11_26:
    movq %r13, %rbx
    addq %r15, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movzbl %bl, %ebx
    movl $48, %ecx
    cmpl %ecx, %ebx
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L11_123
    jmp .L11_34
.L11_123:
    movl %r12d, %ebx
    jmp .L11_35
.L11_34:
    movl $57, %ecx
    cmpl %ecx, %ebx
    seta %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L11_35:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L11_31
    jmp .L11_32
.L11_31:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_36:
    jmp .L11_33
.L11_32:
.L11_33:
.L11_27:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r15
    jmp .L11_25
.L11_28:
    movq -224(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_net_15http_host_valid@PLT
    movl %eax, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_37:
    jmp .L11_7
.L11_6:
.L11_7:
    leaq .Ltext_51(%rip), %rbx
    leaq -168(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -264(%rbp)
    movq $1, %rax
    movq -264(%rbp), %r10
    movq %rax, (%r10)
    movq -224(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -272(%rbp)
    movq -272(%rbp), %r10
    movq (%r10), %r15
    movq $1, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L11_41
    jmp .L11_124
.L11_124:
    movl %r13d, %ebx
    jmp .L11_42
.L11_41:
    movq -224(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r15, %rdx
    call memcmp@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L11_42:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L11_38
    jmp .L11_39
.L11_38:
    leaq .Ltext_52(%rip), %rbx
    leaq -184(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq $7, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movl -232(%rbp), %eax
    testl %eax, %eax
    jne .L11_43
    jmp .L11_125
.L11_125:
    movl -232(%rbp), %eax
    movl %eax, %ebx
    jmp .L11_44
.L11_43:
    movq %r14, %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r12, %rdx
    call memcmp@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L11_44:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_45:
    jmp .L11_40
.L11_39:
.L11_40:
    movq -224(%rbp), %r10
    movq (%r10), %rbx
    movq -272(%rbp), %r10
    movq (%r10), %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rbx, %r10
    movzbl (%r10), %r12d
    movl $47, %ecx
    cmpl %ecx, %r12d
    jne .L11_47
.L11_46:
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_49:
    jmp .L11_48
.L11_47:
.L11_48:
    movq %rbx, %r10
    movzbl (%r10), %r12d
    movl %r12d, %edi
    call lb_net_15http_uri_letter@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L11_51
.L11_50:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_53:
    jmp .L11_52
.L11_51:
.L11_52:
    movq -272(%rbp), %r10
    movq (%r10), %rbx
    movq $1, %rax
    movq %rax, %r12
.L11_54:
    cmpq %rbx, %r12
    jae .L11_57
.L11_55:
    movq -224(%rbp), %r10
    movq (%r10), %r13
    movq -272(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r12
    jb 1f
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    addq %r12, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movzbl %r13b, %r13d
    movl $58, %ecx
    cmpl %ecx, %r13d
    jne .L11_59
.L11_58:
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    cmpq %r14, %rbx
    setb %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_61:
    jmp .L11_60
.L11_59:
.L11_60:
    movl %r13d, %edi
    call lb_net_15http_uri_letter@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L11_65
    jmp .L11_126
.L11_126:
    movl %r14d, %r15d
    jmp .L11_66
.L11_65:
    movl $48, %ecx
    cmpl %ecx, %r13d
    setae %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L11_67
    jmp .L11_127
.L11_127:
    movl %r14d, %r15d
    jmp .L11_68
.L11_67:
    movl $57, %ecx
    cmpl %ecx, %r13d
    setbe %al
    movzbl %al, %r15d
.L11_68:
    movzbl %r15b, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r15d
.L11_66:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L11_69
    jmp .L11_128
.L11_128:
    movl %r14d, %r15d
    jmp .L11_70
.L11_69:
    movl $43, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L11_70:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L11_71
    jmp .L11_129
.L11_129:
    movl %r14d, %r15d
    jmp .L11_72
.L11_71:
    movl $45, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L11_72:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L11_73
    jmp .L11_130
.L11_130:
    movl %r14d, %r13d
    jmp .L11_74
.L11_73:
    movl $46, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r13d
.L11_74:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L11_62
    jmp .L11_63
.L11_62:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_75:
    jmp .L11_64
.L11_63:
.L11_64:
.L11_56:
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r12
    jmp .L11_54
.L11_57:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_76:
    leaq .Ltext_57(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_15http_host_valid
    .type lb_net_15http_host_valid, @function
lb_net_15http_host_valid:
    pushq %rbp
    movq %rsp, %rbp
    subq $320, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -56(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -56(%rbp), %rax
    movq %rax, -232(%rbp)
    movq -232(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -248(%rbp)
    movq -248(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L12_2
.L12_1:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_4:
    jmp .L12_3
.L12_2:
.L12_3:
    movq -232(%rbp), %r10
    movq (%r10), %r14
    movq $0, %rax
    movq -248(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_58(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $91, %ecx
    cmpl %ecx, %r14d
    jne .L12_6
.L12_5:
    leaq .Ltext_59(%rip), %r14
    leaq -72(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $1, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq -232(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r15, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_strings_find@PLT
    leaq -88(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -88(%rbp), %r15
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L12_8
    jmp .L12_9
.L12_8:
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, -256(%rbp)
    jmp .L12_10
.L12_9:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_11:
.L12_10:
    leaq -104(%rbp), %rax
    movq %rax, -304(%rbp)
    movq -232(%rbp), %r10
    movq (%r10), %r13
    movq -240(%rbp), %r10
    movq (%r10), %r15
    movq $1, %rcx
    addq %rcx, %r15
    movq $1, %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -256(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $1, %rax
    movq -256(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L12_12
.L12_13:
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_12:
    movq $1, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq -256(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    subq %rcx, %rbx
    leaq -120(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq -136(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movq -304(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -304(%rbp), %r10
    leaq -176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -176(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -194(%rbp), %rdi
    call lb_net_IpAddress_parse@PLT
    leaq -194(%rbp), %r15
    movq $17, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L12_68
    jmp .L12_66
.L12_68:
    leaq -211(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
.L12_65:
    movq %rbx, %r10
    movzbl (%r10), %r12d
    movl $1, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movzbl %r12b, %r12d
    leaq -224(%rbp), %r10
    movl %r12d, (%r10)
    movl %r12d, %eax
    movl %eax, -312(%rbp)
    jmp .L12_101
.L12_69:
    jmp .L12_67
.L12_66:
.L12_67:
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -288(%rbp)
    movq -288(%rbp), %r10
    movq (%r10), %r13
    movq $4, %rcx
    cmpq %rcx, %r13
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L12_102
    jmp .L12_73
.L12_102:
    movl %r15d, %r13d
    jmp .L12_74
.L12_73:
    movq %rbx, %r10
    movq (%r10), %r15
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_71(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r15, %r10
    movzbl (%r10), %r14d
    movl $118, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L12_75
    jmp .L12_103
.L12_103:
    movl %r14d, %r13d
    jmp .L12_76
.L12_75:
    movq %r15, %r10
    movzbl (%r10), %r13d
    movl $86, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
.L12_76:
    movzbl %r13b, %r14d
    movl %r14d, %r13d
.L12_74:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L12_70
    jmp .L12_71
.L12_70:
    movl $0, %eax
    leaq -224(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, -312(%rbp)
    jmp .L12_101
.L12_77:
    jmp .L12_72
.L12_71:
.L12_72:
    leaq -213(%rbp), %r13
    movq $1, %rcx
    addq %rcx, %r13
    movq $1, %rax
    movq %rax, %r14
.L12_78:
    movq -288(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L12_81
    jmp .L12_104
.L12_104:
    movl %r15d, %r12d
    jmp .L12_82
.L12_81:
    movq %rbx, %r10
    movq (%r10), %r12
    addq %r14, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl %r12d, %edi
    call lb_net_8http_hex@PLT
    leaq -213(%rbp), %r10
    movw %ax, 0(%r10)
    movq %r13, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L12_82:
    movzbl %r12b, %r15d
    testl %r15d, %r15d
    jne .L12_79
    jmp .L12_80
.L12_79:
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_73(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %r14
    jmp .L12_78
.L12_80:
    movq $1, %rcx
    cmpq %rcx, %r14
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L12_105
    jmp .L12_86
.L12_105:
    movl %r12d, %r13d
    jmp .L12_87
.L12_86:
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_74(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -288(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    setae %al
    movzbl %al, %r13d
.L12_87:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L12_106
    jmp .L12_88
.L12_106:
    movl %r12d, %r13d
    jmp .L12_89
.L12_88:
    movq %rbx, %r10
    movq (%r10), %r12
    movq -288(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r14
    jb 1f
    leaq .Ltext_74(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    addq %r14, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $46, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L12_89:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L12_83
    jmp .L12_84
.L12_83:
    movl $0, %eax
    leaq -224(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, -312(%rbp)
    jmp .L12_101
.L12_90:
    jmp .L12_85
.L12_84:
.L12_85:
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_75(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
.L12_91:
    movq -288(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jae .L12_93
.L12_92:
    movq %rbx, %r10
    movq (%r10), %r13
    addq %r12, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl %r13d, %edi
    call lb_net_13http_uri_name@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L12_97
    jmp .L12_107
.L12_107:
    movl %r13d, %r14d
    jmp .L12_98
.L12_97:
    movq %rbx, %r10
    movq (%r10), %r13
    movq -288(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r12
    jb 1f
    leaq .Ltext_76(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    addq %r12, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $58, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L12_98:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L12_94
    jmp .L12_95
.L12_94:
    movl $0, %eax
    leaq -224(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, -312(%rbp)
    jmp .L12_101
.L12_99:
    jmp .L12_96
.L12_95:
.L12_96:
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r12
    jmp .L12_91
.L12_93:
    movl $1, %eax
    leaq -224(%rbp), %r10
    movl %eax, (%r10)
    movl $1, %eax
    movl %eax, -312(%rbp)
    jmp .L12_101
.L12_100:
    leaq .Ltext_78(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_101:
    movl -312(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jne .L12_15
.L12_14:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_17:
    jmp .L12_16
.L12_15:
.L12_16:
    movq -256(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -240(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jae .L12_19
.L12_18:
    movq -232(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $58, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L12_22
.L12_21:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_24:
    jmp .L12_23
.L12_22:
.L12_23:
    movq -256(%rbp), %rax
    movq $2, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    jmp .L12_20
.L12_19:
    movq -248(%rbp), %rax
    movq %rax, %rbx
.L12_20:
    movq %rbx, %r13
    movq %r12, %r14
    jmp .L12_7
.L12_6:
    leaq -138(%rbp), %rbx
    movq $1, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -264(%rbp)
    leaq -140(%rbp), %r12
    movq $1, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -272(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L12_25:
    movq -240(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jb .L12_26
.L12_108:
    movq -248(%rbp), %rax
    movq %rax, -296(%rbp)
    jmp .L12_27
.L12_26:
    movq -232(%rbp), %r10
    movq (%r10), %r15
    movq %r15, %r12
    addq %r13, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movzbl %r12b, %r12d
    movl $58, %ecx
    cmpl %ecx, %r12d
    jne .L12_29
.L12_28:
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L12_32
.L12_31:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_34:
    jmp .L12_33
.L12_32:
.L12_33:
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, -296(%rbp)
    jmp .L12_27
.L12_35:
    jmp .L12_30
.L12_29:
.L12_30:
    movl $37, %ecx
    cmpl %ecx, %r12d
    jne .L12_37
.L12_36:
    movq %r14, %rbx
    subq %r13, %rbx
    movq $3, %rcx
    cmpq %rcx, %rbx
    setb %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L12_109
    jmp .L12_42
.L12_109:
    movl %ebx, %r12d
    jmp .L12_43
.L12_42:
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_66(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rbx, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl %ebx, %edi
    call lb_net_8http_hex@PLT
    leaq -138(%rbp), %r10
    movw %ax, 0(%r10)
    movq -264(%rbp), %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L12_43:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L12_110
    jmp .L12_44
.L12_110:
    movl %ebx, %r12d
    jmp .L12_45
.L12_44:
    movq %r13, %rax
    movq $2, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_66(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -232(%rbp), %r10
    movq (%r10), %r12
    movq -240(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_66(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    addq %r12, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl %ebx, %edi
    call lb_net_8http_hex@PLT
    leaq -140(%rbp), %r10
    movw %ax, 0(%r10)
    movq -272(%rbp), %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L12_45:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L12_39
    jmp .L12_40
.L12_39:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_46:
    jmp .L12_41
.L12_40:
.L12_41:
    movq %r13, %rax
    movq $3, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_67(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %rbx, %r13
    jmp .L12_25
.L12_47:
    jmp .L12_38
.L12_37:
.L12_38:
    movl %r12d, %edi
    call lb_net_13http_uri_name@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L12_49
.L12_48:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_51:
    jmp .L12_50
.L12_49:
.L12_50:
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r13
    jmp .L12_25
.L12_27:
    movq -296(%rbp), %rax
    movq %rax, %r13
.L12_7:
    movq -232(%rbp), %r10
    movq (%r10), %r12
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_69(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r14
    jb 1f
    leaq .Ltext_69(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r14, %r13
    jbe .L12_56
.L12_57:
    leaq .Ltext_69(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_56:
    movq %r13, %rbx
    addq %r12, %rbx
    movq %r14, %rax
    subq %r13, %rax
    movq %rax, -280(%rbp)
    leaq -160(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq -280(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %rax, %r15
.L12_52:
    movq -280(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L12_55
.L12_53:
    movq %rbx, %r12
    addq %r15, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movzbl %r12b, %r12d
    movl $48, %ecx
    cmpl %ecx, %r12d
    setb %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L12_111
    jmp .L12_61
.L12_111:
    movl %r13d, %r12d
    jmp .L12_62
.L12_61:
    movl $57, %ecx
    cmpl %ecx, %r12d
    seta %al
    movzbl %al, %r13d
    movl %r13d, %r12d
.L12_62:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L12_58
    jmp .L12_59
.L12_58:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_63:
    jmp .L12_60
.L12_59:
.L12_60:
.L12_54:
    movq $1, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r15
    jmp .L12_52
.L12_55:
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_64:
    leaq .Ltext_70(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_11http_syntax_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/net/http/syntax.lucb:6:9"
.Ltext_1:
    .asciz "src/std/net/http/syntax.lucb:7:9"
.Ltext_2:
    .asciz "integer overflow"
.Ltext_3:
    .asciz "src/std/net/http/syntax.lucb:8:9"
.Ltext_4:
    .asciz "src/std/net/http/syntax.lucb:9:9"
.Ltext_5:
    .asciz "unreachable"
.Ltext_6:
    .asciz "src/std/net/http/syntax.lucb:12:5"
.Ltext_7:
    .asciz "src/std/net/http/syntax.lucb:23:5"
.Ltext_8:
    .asciz "src/std/net/http/syntax.lucb:28:5"
.Ltext_9:
    .asciz "src/std/net/http/syntax.lucb:29:9"
.Ltext_10:
    .asciz "src/std/net/http/syntax.lucb:30:5"
.Ltext_11:
    .asciz "src/std/net/http/syntax.lucb:31:9"
.Ltext_12:
    .asciz "src/std/net/http/syntax.lucb:32:5"
.Ltext_13:
    .asciz "index out of bounds"
.Ltext_14:
    .asciz "src/std/net/http/syntax.lucb:38:5"
.Ltext_15:
    .asciz "src/std/net/http/syntax.lucb:39:9"
.Ltext_16:
    .asciz "src/std/net/http/syntax.lucb:41:5"
.Ltext_17:
    .asciz "src/std/net/http/syntax.lucb:42:5"
.Ltext_18:
    .asciz "empty HTTP length"
.Ltext_19:
    .asciz "invalid HTTP length"
.Ltext_20:
    .asciz "src/std/net/http/syntax.lucb:51:9"
.Ltext_21:
    .asciz "src/std/net/http/syntax.lucb:52:9"
.Ltext_22:
    .asciz "division by zero"
.Ltext_23:
    .asciz "HTTP length overflows u64"
.Ltext_24:
    .asciz "src/std/net/http/syntax.lucb:54:9"
.Ltext_25:
    .asciz "src/std/net/http/syntax.lucb:55:5"
.Ltext_26:
    .asciz "src/std/net/http/syntax.lucb:63:5"
.Ltext_27:
    .asciz "src/std/net/http/syntax.lucb:70:5"
.Ltext_28:
    .asciz "src/std/net/http/syntax.lucb:71:9"
.Ltext_29:
    .asciz "src/std/net/http/syntax.lucb:72:13"
.Ltext_30:
    .asciz "src/std/net/http/syntax.lucb:73:9"
.Ltext_31:
    .asciz "src/std/net/http/syntax.lucb:74:5"
.Ltext_32:
    .asciz "src/std/net/http/syntax.lucb:79:9"
.Ltext_33:
    .asciz "HTTP lines require CRLF"
.Ltext_34:
    .asciz "src/std/net/http/syntax.lucb:83:13"
.Ltext_35:
    .asciz "src/std/net/http/syntax.lucb:86:13"
.Ltext_36:
    .asciz "src/std/net/http/syntax.lucb:87:13"
.Ltext_37:
    .asciz "src/std/net/http/syntax.lucb:88:9"
.Ltext_38:
    .asciz "incomplete HTTP line"
.Ltext_39:
    .asciz "src/std/net/http/syntax.lucb:89:5"
.Ltext_40:
    .asciz "src/std/net/http/syntax.lucb:92:5"
.Ltext_41:
    .asciz "src/std/net/http/syntax.lucb:95:5"
.Ltext_42:
    .asciz "src/std/net/http/syntax.lucb:102:9"
.Ltext_43:
    .asciz "src/std/net/http/syntax.lucb:104:13"
.Ltext_44:
    .asciz "src/std/net/http/syntax.lucb:106:13"
.Ltext_45:
    .asciz "src/std/net/http/syntax.lucb:110:9"
.Ltext_46:
    .asciz "src/std/net/http/syntax.lucb:111:5"
.Ltext_47:
    .asciz "CONNECT"
.Ltext_48:
    .asciz "src/std/net/http/syntax.lucb:119:13"
.Ltext_49:
    .asciz "src/std/net/http/syntax.lucb:122:9"
.Ltext_50:
    .asciz "src/std/net/http/syntax.lucb:124:9"
.Ltext_51:
    .asciz "*"
.Ltext_52:
    .asciz "OPTIONS"
.Ltext_53:
    .asciz "src/std/net/http/syntax.lucb:130:5"
.Ltext_54:
    .asciz "src/std/net/http/syntax.lucb:134:5"
.Ltext_55:
    .asciz "src/std/net/http/syntax.lucb:137:9"
.Ltext_56:
    .asciz "src/std/net/http/syntax.lucb:139:13"
.Ltext_57:
    .asciz "src/std/net/http/syntax.lucb:142:5"
.Ltext_58:
    .asciz "src/std/net/http/syntax.lucb:148:5"
.Ltext_59:
    .asciz "]"
.Ltext_60:
    .asciz "src/std/net/http/syntax.lucb:150:9"
.Ltext_61:
    .asciz "src/std/net/http/syntax.lucb:153:9"
.Ltext_62:
    .asciz "src/std/net/http/syntax.lucb:154:13"
.Ltext_63:
    .asciz "src/std/net/http/syntax.lucb:156:13"
.Ltext_64:
    .asciz "src/std/net/http/syntax.lucb:160:13"
.Ltext_65:
    .asciz "src/std/net/http/syntax.lucb:164:17"
.Ltext_66:
    .asciz "src/std/net/http/syntax.lucb:167:17"
.Ltext_67:
    .asciz "src/std/net/http/syntax.lucb:169:17"
.Ltext_68:
    .asciz "src/std/net/http/syntax.lucb:173:13"
.Ltext_69:
    .asciz "src/std/net/http/syntax.lucb:174:5"
.Ltext_70:
    .asciz "src/std/net/http/syntax.lucb:177:5"
.Ltext_71:
    .asciz "src/std/net/http/syntax.lucb:183:5"
.Ltext_72:
    .asciz "src/std/net/http/syntax.lucb:186:5"
.Ltext_73:
    .asciz "src/std/net/http/syntax.lucb:187:9"
.Ltext_74:
    .asciz "src/std/net/http/syntax.lucb:188:5"
.Ltext_75:
    .asciz "src/std/net/http/syntax.lucb:190:5"
.Ltext_76:
    .asciz "src/std/net/http/syntax.lucb:192:9"
.Ltext_77:
    .asciz "src/std/net/http/syntax.lucb:194:9"
.Ltext_78:
    .asciz "src/std/net/http/syntax.lucb:195:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
