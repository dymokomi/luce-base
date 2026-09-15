    .text

    .p2align 4
    .globl lb_net_15websocket_frame_0init
    .type lb_net_15websocket_frame_0init, @function
lb_net_15websocket_frame_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_21websocket_parse_frame
    .type lb_net_21websocket_parse_frame, @function
lb_net_21websocket_parse_frame:
    pushq %rbp
    movq %rsp, %rbp
    subq $704, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -136(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movl %ecx, -152(%rbp)
    movq %r8, -168(%rbp)
    leaq -136(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $2, %rcx
    cmpq %rcx, %r12
    jae .L1_2
.L1_1:
    leaq -208(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq -120(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $64, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L1_2:
.L1_3:
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -600(%rbp)
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -600(%rbp), %r10
    movzbl (%r10), %r14d
    movl $112, %ecx
    andl %ecx, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L1_6
.L1_5:
    leaq -120(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_17websocket_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_1(%rip), %r13
    leaq -224(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $44, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L1_6:
.L1_7:
    movq -600(%rbp), %r10
    movzbl (%r10), %ebx
    movl $15, %ecx
    andl %ecx, %ebx
    movl %ebx, %esi
    leaq -264(%rbp), %rdi
    call lb_net_16websocket_opcode@PLT
    leaq -264(%rbp), %r14
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_10
    jmp .L1_9
.L1_10:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -120(%rbp), %r12
    movq $40, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $64, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L1_9:
    movq %r14, %r10
    movzbl (%r10), %eax
    movl %eax, -608(%rbp)
    movq -600(%rbp), %r10
    movzbl (%r10), %eax
    movl %eax, -616(%rbp)
    movl -616(%rbp), %eax
    movl $128, %ecx
    andl %ecx, %eax
    movl %eax, -624(%rbp)
    movl -624(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %eax
    movl %eax, -632(%rbp)
    movl -632(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %eax
    movl %eax, -640(%rbp)
    movq $1, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -600(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    movq %rax, -648(%rbp)
    movq -648(%rbp), %r10
    movzbl (%r10), %ebx
    movl $128, %ecx
    andl %ecx, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movzbl %bl, %eax
    movl %eax, -656(%rbp)
    leaq -152(%rbp), %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movl -656(%rbp), %eax
    cmpl %r15d, %eax
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L1_13
.L1_12:
    leaq -120(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_17websocket_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_5(%rip), %r13
    leaq -280(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $45, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L1_13:
.L1_14:
    movq -648(%rbp), %r10
    movzbl (%r10), %r14d
    movl $127, %ecx
    andl %ecx, %r14d
    movzbl %r14b, %r14d
    movl %r14d, %eax
    movq %rax, -664(%rbp)
    movl $126, %ecx
    cmpl %ecx, %r14d
    jne .L1_17
.L1_16:
    movq $4, %rcx
    cmpq %rcx, %r12
    jae .L1_20
.L1_19:
    leaq -320(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq -120(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $64, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L1_20:
.L1_21:
    movq $2, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -600(%rbp), %rax
    movq $2, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl %ebx, %ebx
.L1_24:
    movq $8, %rcx
    movq %rbx, %r14
    shlq %cl, %r14
    movq $3, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -600(%rbp), %rax
    movq $3, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movl %r15d, %r15d
    orq %r15, %r14
    movq $126, %rcx
    cmpq %rcx, %r14
    jae .L1_26
.L1_25:
    leaq -120(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_17websocket_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_9(%rip), %r13
    leaq -336(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $35, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L1_26:
.L1_27:
    movq $4, %rax
    movq %rax, %rbx
    movq %r14, %rax
    movq %rax, -704(%rbp)
    jmp .L1_18
.L1_17:
    movl $127, %ecx
    cmpl %ecx, %r14d
    jne .L1_30
.L1_29:
    movq $10, %rcx
    cmpq %rcx, %r12
    jae .L1_33
.L1_32:
    leaq -376(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq -120(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $64, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L1_33:
.L1_34:
    movq $2, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -600(%rbp), %rax
    movq $2, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $128, %ecx
    andl %ecx, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L1_37
.L1_36:
    leaq -120(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_17websocket_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_11(%rip), %r13
    leaq -392(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $45, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L1_37:
.L1_38:
    movq $0, %rax
    movq %rax, %rbx
    movq $2, %rax
    movq %rax, %r14
.L1_40:
    movq $10, %rcx
    cmpq %rcx, %r14
    jge .L1_43
.L1_41:
.L1_45:
    movq $8, %rcx
    movq %rbx, %rax
    shlq %cl, %rax
    movq %rax, -672(%rbp)
    cmpq %r12, %r14
    jb 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -600(%rbp), %rax
    movq %rax, %r15
    addq %r14, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movl %r15d, %r15d
    movq -672(%rbp), %rax
    movq %r15, %rcx
    movq %rax, %r15
    orq %rcx, %r15
.L1_42:
    movq $1, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r15, %rbx
    movq %r13, %r14
    jmp .L1_40
.L1_43:
    movq $65536, %rcx
    cmpq %rcx, %rbx
    jae .L1_47
.L1_46:
    leaq -120(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_17websocket_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_9(%rip), %r13
    leaq -408(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $35, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L1_47:
.L1_48:
    movq $10, %rax
    movq %rax, %r13
    movq %rbx, %r14
    jmp .L1_31
.L1_30:
    movq $2, %rax
    movq %rax, %r13
    movq -664(%rbp), %rax
    movq %rax, %r14
.L1_31:
    movq %r13, %rbx
    movq %r14, %rax
    movq %rax, -704(%rbp)
.L1_18:
    leaq -168(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq -704(%rbp), %rax
    cmpq %r13, %rax
    jbe .L1_51
.L1_50:
    leaq -120(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_15websocket_limit(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_13(%rip), %r13
    leaq -424(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $38, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L1_51:
.L1_52:
    movl -608(%rbp), %eax
    movzbl %al, %eax
    movl %eax, -680(%rbp)
    movl -680(%rbp), %eax
    movl %eax, %r14d
    movzbl %r14b, %r14d
    movl $8, %ecx
    cmpl %ecx, %r14d
    setae %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_57
    jmp .L1_72
.L1_72:
    movl %r14d, %r15d
    jmp .L1_58
.L1_57:
    movl -640(%rbp), %eax
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_73
    jmp .L1_59
.L1_73:
    movl %r14d, %r15d
    jmp .L1_60
.L1_59:
    movq -704(%rbp), %rax
    movq $125, %rcx
    cmpq %rcx, %rax
    seta %al
    movzbl %al, %r15d
.L1_60:
    movzbl %r15b, %r14d
    movl %r14d, %r15d
.L1_58:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L1_54
    jmp .L1_55
.L1_54:
    leaq -120(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_17websocket_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_14(%rip), %r13
    leaq -440(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $59, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L1_55:
.L1_56:
    leaq -444(%rbp), %rax
    movq %rax, -688(%rbp)
    movq -688(%rbp), %r11
    movl $0, 0(%r11)
    movl -656(%rbp), %eax
    testl %eax, %eax
    jne .L1_62
    jmp .L1_63
.L1_62:
    movq %r12, %rax
    movq %rbx, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_77(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq $4, %rcx
    cmpq %rcx, %r15
    jae .L1_66
.L1_65:
    leaq -488(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq -120(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $64, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L1_66:
.L1_67:
    leaq -504(%rbp), %rax
    movq %rax, -696(%rbp)
    movq -688(%rbp), %rax
    movq -696(%rbp), %r10
    movq %rax, (%r10)
    movq -696(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq $4, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %rbx
    jbe .L1_69
.L1_70:
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_69:
    movq -600(%rbp), %rax
    movq %rax, %r13
    addq %rbx, %r13
    movq %r12, %r14
    subq %rbx, %r14
    leaq -520(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq -696(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r15, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq $4, %r8
    call lb_memory_copy_0g1_u8@PLT
    movq %rbx, %rax
    movq $4, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_77(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    jmp .L1_64
.L1_63:
    movq %rbx, %r13
.L1_64:
    leaq -552(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movl -680(%rbp), %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movl -640(%rbp), %eax
    movzbl %al, %r12d
    movq $1, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movb %r12b, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -704(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -688(%rbp), %r10
    movq %r12, %r11
    movl 0(%r10), %eax
    movl %eax, 0(%r11)
    movq $28, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl -656(%rbp), %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -592(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -120(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
    .globl lb_net_16websocket_opcode
    .type lb_net_16websocket_opcode, @function
lb_net_16websocket_opcode:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movl %esi, -96(%rbp)
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    leaq -97(%rbp), %r12
    movq %r12, %r10
    movb %bl, (%r10)
    leaq -98(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movzbl 0(%r10), %eax
    movb %al, 0(%r11)
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    je .L2_2
.L2_4:
    jmp .L2_3
.L2_2:
    leaq -80(%rbp), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_5:
    jmp .L2_1
.L2_3:
    movl $1, %ecx
    cmpl %ecx, %ebx
    je .L2_6
.L2_8:
    jmp .L2_7
.L2_6:
    leaq -80(%rbp), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_9:
    jmp .L2_1
.L2_7:
    movl $2, %ecx
    cmpl %ecx, %ebx
    je .L2_10
.L2_12:
    jmp .L2_11
.L2_10:
    leaq -80(%rbp), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movb %al, (%r10)
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_13:
    jmp .L2_1
.L2_11:
    movl $8, %ecx
    cmpl %ecx, %ebx
    je .L2_14
.L2_16:
    jmp .L2_15
.L2_14:
    leaq -80(%rbp), %rbx
    movl $8, %eax
    movq %rbx, %r10
    movb %al, (%r10)
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_17:
    jmp .L2_1
.L2_15:
    movl $9, %ecx
    cmpl %ecx, %ebx
    je .L2_18
.L2_20:
    jmp .L2_19
.L2_18:
    leaq -80(%rbp), %rbx
    movl $9, %eax
    movq %rbx, %r10
    movb %al, (%r10)
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_21:
    jmp .L2_1
.L2_19:
    movl $10, %ecx
    cmpl %ecx, %ebx
    je .L2_22
.L2_24:
    jmp .L2_23
.L2_22:
    leaq -80(%rbp), %rbx
    movl $10, %eax
    movq %rbx, %r10
    movb %al, (%r10)
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_25:
    jmp .L2_1
.L2_23:
    jmp .L2_26
.L2_28:
    jmp .L2_27
.L2_26:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_17websocket_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_21(%rip), %r13
    leaq -120(%rbp), %r14
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_29:
    jmp .L2_1
.L2_27:
.L2_1:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_19(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_21websocket_check_close
    .type lb_net_21websocket_check_close, @function
lb_net_21websocket_check_close:
    pushq %rbp
    movq %rsp, %rbp
    subq $272, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -96(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -96(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L3_2
.L3_1:
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
.L3_2:
.L3_3:
    movq $2, %rcx
    cmpq %rcx, %r12
    setb %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L3_43
    jmp .L3_8
.L3_43:
    movl %r13d, %r14d
    jmp .L3_9
.L3_8:
    movq $125, %rcx
    cmpq %rcx, %r12
    seta %al
    movzbl %al, %r14d
.L3_9:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L3_5
    jmp .L3_6
.L3_5:
    leaq -80(%rbp), %rbx
    leaq lb_net_17websocket_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_23(%rip), %r12
    leaq -112(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $38, %rax
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
.L3_6:
.L3_7:
    movq %rbx, %r10
    movq (%r10), %r13
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r13, %r10
    movzbl (%r10), %r14d
    movl %r14d, %r14d
    movzwl %r14w, %r14d
.L3_12:
    movl $8, %ecx
    movl %r14d, %ebx
    shll %cl, %ebx
    movzwl %bx, %ebx
    movq $1, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $1, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movl %r15d, %r15d
    movzwl %r15w, %r15d
    orl %r15d, %ebx
    movzwl %bx, %ebx
    movl $1000, %ecx
    cmpl %ecx, %ebx
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L3_44
    jmp .L3_16
.L3_44:
    movl %r15d, %r14d
    jmp .L3_17
.L3_16:
    movl $5000, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r14d
.L3_17:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L3_45
    jmp .L3_18
.L3_45:
    movl %r15d, %r14d
    jmp .L3_19
.L3_18:
    movl $1004, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r14d
.L3_19:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L3_46
    jmp .L3_20
.L3_46:
    movl %r15d, %r14d
    jmp .L3_21
.L3_20:
    movl $1005, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r14d
.L3_21:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L3_47
    jmp .L3_22
.L3_47:
    movl %r15d, %r14d
    jmp .L3_23
.L3_22:
    movl $1006, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r14d
.L3_23:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L3_48
    jmp .L3_24
.L3_48:
    movl %r15d, %r14d
    jmp .L3_25
.L3_24:
    movl $1016, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L3_26
    jmp .L3_49
.L3_49:
    movl %r14d, %r15d
    jmp .L3_27
.L3_26:
    movl $3000, %ecx
    cmpl %ecx, %ebx
    setb %al
    movzbl %al, %r15d
.L3_27:
    movzbl %r15b, %r14d
.L3_25:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L3_50
    jmp .L3_28
.L3_50:
    movl %r15d, %ebx
    jmp .L3_29
.L3_28:
    movl $1015, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r14d
    movl %r14d, %ebx
.L3_29:
    movzbl %bl, %r14d
    testl %r14d, %r14d
    jne .L3_13
    jmp .L3_14
.L3_13:
    leaq -80(%rbp), %rbx
    leaq lb_net_17websocket_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_25(%rip), %r12
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $31, %rax
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
.L3_14:
.L3_15:
    leaq -136(%rbp), %rax
    movq %rax, -232(%rbp)
    movq -232(%rbp), %r11
    movq $0, 0(%r11)
    movq $1, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq $2, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r14, %r12
    jb 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $2, %rax
    cmpq %r12, %rax
    jbe .L3_35
.L3_36:
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_35:
    movq $2, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -240(%rbp)
    movq $2, %rcx
    movq %r12, %r15
    subq %rcx, %r15
    leaq -152(%rbp), %rax
    movq %rax, -248(%rbp)
    movq -240(%rbp), %rax
    movq -248(%rbp), %r10
    movq %rax, (%r10)
    movq -248(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -256(%rbp)
    movq -256(%rbp), %r10
    movq %r15, (%r10)
    leaq -192(%rbp), %r14
    movq $32, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -264(%rbp)
    movq $0, %rax
    movq %rax, %rbx
.L3_31:
    cmpq %r15, %rbx
    jae .L3_34
.L3_32:
    movq -240(%rbp), %rax
    movq %rax, %r12
    addq %rbx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movzbl %r12b, %r12d
    movq -232(%rbp), %rsi
    movl %r12d, %edx
    leaq -192(%rbp), %rdi
    call lb_utf8_Decoder_push@PLT
    movq -264(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_38
    jmp .L3_37
.L3_38:
    movq $8, %rcx
    movq %r14, %rbx
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
.L3_37:
.L3_33:
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %rbx
    jmp .L3_31
.L3_34:
    movq -232(%rbp), %rsi
    leaq -224(%rbp), %rdi
    call lb_utf8_Decoder_finish@PLT
    leaq -224(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_41
    jmp .L3_40
.L3_41:
    leaq -80(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
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
.L3_40:
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

    .p2align 4
    .globl lb_net_WebSocketSequence_begin
    .type lb_net_WebSocketSequence_begin, @function
lb_net_WebSocketSequence_begin:
    pushq %rbp
    movq %rsp, %rbp
    subq $240, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    leaq 16(%rbp), %r10
    leaq -120(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -88(%rbp), %r10
    movq (%r10), %r12
    movq $168, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_4
    jmp .L4_26
.L4_26:
    movl %ebx, %r13d
    jmp .L4_5
.L4_4:
    leaq -120(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl %ebx, %ebx
    movzbl %bl, %ebx
    movl $8, %ecx
    cmpl %ecx, %ebx
    setb %al
    movzbl %al, %r13d
.L4_5:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L4_1
    jmp .L4_2
.L4_1:
    leaq -80(%rbp), %rbx
    leaq lb_net_17websocket_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_27(%rip), %r12
    leaq -136(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $36, %rax
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
.L4_6:
    jmp .L4_3
.L4_2:
.L4_3:
    leaq -120(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %r13d
    movl %r13d, %r14d
    movzbl %r14b, %r14d
    movl $8, %ecx
    cmpl %ecx, %r14d
    jb .L4_8
.L4_7:
    movq $160, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
.L4_10:
    jmp .L4_9
.L4_8:
.L4_9:
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L4_12
.L4_11:
    movq %r12, %r10
    movzbl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L4_15
.L4_14:
    leaq -80(%rbp), %rbx
    leaq lb_net_17websocket_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_28(%rip), %r12
    leaq -152(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $43, %rax
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
.L4_17:
    jmp .L4_16
.L4_15:
.L4_16:
    jmp .L4_13
.L4_12:
    movq %r12, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L4_18
    jmp .L4_19
.L4_18:
    leaq -80(%rbp), %rbx
    leaq lb_net_17websocket_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_29(%rip), %r12
    leaq -168(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $46, %rax
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
.L4_21:
    jmp .L4_20
.L4_19:
.L4_20:
    movq $1, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $1, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r15d
    movq %r14, %r10
    movb %r15b, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq $0, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %rdi
    call lb_utf8_Decoder_reset@PLT
.L4_13:
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -192(%rbp)
    movq -192(%rbp), %r10
    movq (%r10), %r15
    movq %r14, %rax
    movq %r15, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_77(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    cmpq %r14, %r13
    jbe .L4_23
.L4_22:
    leaq -80(%rbp), %rbx
    leaq lb_net_15websocket_limit(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_31(%rip), %r12
    leaq -184(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $40, %rax
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
.L4_25:
    jmp .L4_24
.L4_23:
.L4_24:
    movq %r13, %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_77(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -200(%rbp)
    movq -200(%rbp), %rax
    movq -192(%rbp), %r10
    movq %rax, (%r10)
    movq $1, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -208(%rbp)
    movq -208(%rbp), %r10
    movzbl (%r10), %eax
    movl %eax, -216(%rbp)
    movl -216(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %eax
    movl %eax, -224(%rbp)
    movl -224(%rbp), %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -80(%rbp), %rax
    movq %rax, -232(%rbp)
    movq -232(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq -232(%rbp), %rsi
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
    .globl lb_net_WebSocketSequence_payload
    .type lb_net_WebSocketSequence_payload, @function
lb_net_WebSocketSequence_payload:
    pushq %rbp
    movq %rsp, %rbp
    subq $352, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    leaq -136(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movl %r8d, -152(%rbp)
    leaq 16(%rbp), %r10
    leaq -120(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -336(%rbp)
    leaq -120(%rbp), %rax
    movq %rax, -296(%rbp)
    movq -296(%rbp), %r10
    movzbl (%r10), %r12d
    movl %r12d, %r13d
    movzbl %r13b, %r13d
    movl $8, %ecx
    cmpl %ecx, %r13d
    jb .L5_2
.L5_1:
    movl $8, %ecx
    cmpl %ecx, %r12d
    jne .L5_5
.L5_4:
    movq -336(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq -336(%rbp), %rax
    movq $160, %rcx
    addq %rcx, %rax
    movq %rax, -304(%rbp)
    movq -304(%rbp), %r10
    movq (%r10), %r15
    movq $126, %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $125, %rcx
    cmpq %rcx, %r15
    jbe .L5_7
.L5_8:
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_7:
    movq %r13, %r12
    addq %r15, %r12
    movq $125, %rax
    subq %r15, %rax
    movq %rax, -312(%rbp)
    leaq -168(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -312(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -136(%rbp), %r12
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -320(%rbp)
    movq -320(%rbp), %r10
    movq (%r10), %r14
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r14, %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -304(%rbp), %r10
    movq (%r10), %rbx
    movq -320(%rbp), %r10
    movq (%r10), %r12
    movq %rbx, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_77(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -304(%rbp), %r10
    movq %rbx, (%r10)
    leaq -152(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L5_9
    jmp .L5_10
.L5_9:
    movq $126, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %rbx, %rax
    jbe .L5_12
.L5_13:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_12:
    leaq -184(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -216(%rbp), %rdi
    call lb_net_21websocket_check_close@PLT
    leaq -216(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L5_15
    jmp .L5_14
.L5_15:
    leaq -80(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
.L5_16:
.L5_14:
    movq -336(%rbp), %rax
    movq $168, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L5_11
.L5_10:
.L5_11:
    jmp .L5_6
.L5_5:
.L5_6:
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
.L5_17:
    jmp .L5_3
.L5_2:
.L5_3:
    movq -336(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_18
    jmp .L5_19
.L5_18:
    leaq -136(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq -336(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    leaq -256(%rbp), %rax
    movq %rax, -344(%rbp)
    movq -344(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -328(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L5_21:
    cmpq %rbx, %r15
    jae .L5_24
.L5_22:
    movq %r12, %r14
    addq %r15, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movzbl %r14b, %r14d
    movq %r13, %rsi
    movl %r14d, %edx
    leaq -256(%rbp), %rdi
    call lb_utf8_Decoder_push@PLT
    movq -328(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L5_26
    jmp .L5_25
.L5_26:
    movq -344(%rbp), %rax
    movq $8, %rcx
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
.L5_27:
.L5_25:
.L5_23:
    movq $1, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r15
    jmp .L5_21
.L5_24:
    leaq -152(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_31
    jmp .L5_36
.L5_36:
    movl %ebx, %r12d
    jmp .L5_32
.L5_31:
    movq -296(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
.L5_32:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L5_28
    jmp .L5_29
.L5_28:
    movq -336(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rsi
    leaq -288(%rbp), %rdi
    call lb_utf8_Decoder_finish@PLT
    leaq -288(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_34
    jmp .L5_33
.L5_34:
    leaq -80(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
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
.L5_35:
.L5_33:
    jmp .L5_30
.L5_29:
.L5_30:
    jmp .L5_20
.L5_19:
.L5_20:
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

    .p2align 4
    .globl lb_net_WebSocketDecoder_create
    .type lb_net_WebSocketDecoder_create, @function
lb_net_WebSocketDecoder_create:
    pushq %rbp
    movq %rsp, %rbp
    subq $816, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movl %esi, -328(%rbp)
    movq %rdx, -344(%rbp)
    movq %rcx, -360(%rbp)
    leaq -632(%rbp), %rbx
    movq %rbx, %rdi
    xorl %esi, %esi
    movq $272, %rdx
    call memset@PLT
    leaq -328(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq %rbx, %r10
    movb %r12b, (%r10)
    leaq -344(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq -808(%rbp), %r12
    movq %r12, %rdi
    xorl %esi, %esi
    movq $176, %rdx
    call memset@PLT
    leaq -360(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $88, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %rdi
    movq %r12, %rsi
    movq $176, %rdx
    call memcpy@PLT
    leaq -312(%rbp), %r12
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $272, %rdx
    call memcpy@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $272, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_1:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_19(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_WebSocketDecoder_consume
    .type lb_net_WebSocketDecoder_consume, @function
lb_net_WebSocketDecoder_consume:
    pushq %rbp
    movq %rsp, %rbp
    subq $304, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -112(%rbp)
    leaq -128(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -144(%rbp), %r10
    movq %r8, 0(%r10)
    movq %r9, 8(%r10)
    leaq -112(%rbp), %r10
    movq (%r10), %r13
    movq $264, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L7_1
    jmp .L7_2
.L7_1:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $268, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_37(%rip), %r14
    leaq -160(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $28, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L7_4:
    jmp .L7_3
.L7_2:
.L7_3:
    leaq -144(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    jne .L7_6
.L7_5:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_14invalid_buffer(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_38(%rip), %r13
    leaq -176(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $40, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L7_8:
    jmp .L7_7
.L7_6:
.L7_7:
    leaq -128(%rbp), %r14
    movq %r13, %rsi
    movq %r14, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r12, %r10
    movq 0(%r10), %r8
    movq 8(%r10), %r9
    leaq -280(%rbp), %rdi
    call lb_net_WebSocketDecoder_advance@PLT
    leaq -280(%rbp), %r15
    movq $48, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L7_12
    jmp .L7_11
.L7_12:
    movq $24, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq -224(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L7_9
.L7_11:
    leaq -200(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L7_10
.L7_9:
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $268, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -288(%rbp)
    movq %r14, %r10
    movl (%r10), %r15d
    movq -288(%rbp), %r10
    movl %r15d, (%r10)
    leaq -104(%rbp), %rax
    movq %rax, -296(%rbp)
    movq -296(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl %r15d, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $8, %rcx
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -296(%rbp), %rax
    movq $48, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -296(%rbp), %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L7_13:
.L7_10:
    leaq -104(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L7_14:
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_19(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_WebSocketDecoder_finish
    .type lb_net_WebSocketDecoder_finish, @function
lb_net_WebSocketDecoder_finish:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %r13
    movq $264, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L8_1
    jmp .L8_2
.L8_1:
    leaq -80(%rbp), %rbx
    movq $268, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_37(%rip), %r12
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $28, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r10
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
.L8_4:
    jmp .L8_3
.L8_2:
.L8_3:
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L8_13
    jmp .L8_8
.L8_13:
    movl %r12d, %r14d
    jmp .L8_9
.L8_8:
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L8_9:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L8_14
    jmp .L8_10
.L8_14:
    movl %r12d, %r14d
    jmp .L8_11
.L8_10:
    movq $88, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $168, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L8_11:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L8_5
    jmp .L8_6
.L8_5:
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $268, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq lb_io_14unexpected_eof(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r15d
    movq %r12, %r10
    movl %r15d, (%r10)
    leaq -80(%rbp), %r12
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_40(%rip), %r14
    leaq -120(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $46, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
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
.L8_12:
    jmp .L8_7
.L8_6:
.L8_7:
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

    .p2align 4
    .globl lb_net_WebSocketDecoder_advance
    .type lb_net_WebSocketDecoder_advance, @function
lb_net_WebSocketDecoder_advance:
    pushq %rbp
    movq %rsp, %rbp
    subq $672, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -112(%rbp)
    leaq -128(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -144(%rbp), %r10
    movq %r8, 0(%r10)
    movq %r9, 8(%r10)
    leaq -112(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -624(%rbp)
    movq -624(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -400(%rbp)
    leaq -128(%rbp), %r12
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -408(%rbp)
    movq -624(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq -624(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -416(%rbp)
    leaq -128(%rbp), %rax
    movq %rax, -424(%rbp)
    movq -424(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -432(%rbp)
    leaq -160(%rbp), %rax
    movq %rax, -440(%rbp)
    movq -440(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -448(%rbp)
    movq -624(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -456(%rbp)
    leaq -232(%rbp), %rax
    movq %rax, -656(%rbp)
    movq -656(%rbp), %rax
    movq $64, %rcx
    addq %rcx, %rax
    movq %rax, -464(%rbp)
    movq -656(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -472(%rbp)
    leaq -264(%rbp), %rax
    movq %rax, -480(%rbp)
    movq -624(%rbp), %rax
    movq $88, %rcx
    addq %rcx, %rax
    movq %rax, -488(%rbp)
    leaq -296(%rbp), %rax
    movq %rax, -664(%rbp)
    movq -664(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -496(%rbp)
    movq -624(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, -504(%rbp)
    movq -624(%rbp), %rax
    movq $80, %rcx
    addq %rcx, %rax
    movq %rax, -512(%rbp)
    movq $0, %rax
    movq %rax, -632(%rbp)
    movl $0, %eax
    movl %eax, -640(%rbp)
.L9_1:
    movq -400(%rbp), %r10
    movzbl (%r10), %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L9_4
    jmp .L9_50
.L9_50:
    movl %r15d, %ebx
    jmp .L9_5
.L9_4:
    movq -408(%rbp), %r10
    movq (%r10), %rbx
    movq -632(%rbp), %rax
    cmpq %rbx, %rax
    setb %al
    movzbl %al, %ebx
.L9_5:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L9_2
    jmp .L9_3
.L9_2:
    movq %r13, %r10
    movq (%r10), %rbx
    movq $14, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -416(%rbp), %rcx
    addq %rcx, %rbx
    movq -424(%rbp), %r10
    movq (%r10), %r12
    movq -432(%rbp), %r10
    movq (%r10), %r15
    movq -632(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -632(%rbp), %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq %rbx, %r10
    movb %r12b, (%r10)
    movq %r13, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_77(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %r13, %r10
    movq %rbx, (%r10)
    movq -632(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq $15, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %rbx, %rax
    jbe .L9_9
.L9_10:
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_9:
    movq -416(%rbp), %rax
    movq -440(%rbp), %r10
    movq %rax, (%r10)
    movq -448(%rbp), %r10
    movq %rbx, (%r10)
    movq -624(%rbp), %r10
    movzbl (%r10), %r14d
    movq -456(%rbp), %r10
    movq (%r10), %r15
    movq -440(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movl %r14d, %ecx
    movq %r15, %r8
    leaq -232(%rbp), %rdi
    call lb_net_21websocket_parse_frame@PLT
    movq -464(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L9_12
    jmp .L9_11
.L9_12:
    movq -656(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -104(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L9_11:
    movq -472(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L9_14
    jmp .L9_7
.L9_14:
    movq -656(%rbp), %r10
    movq -480(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L9_6:
    subq $32, %rsp
    movq -480(%rbp), %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq -488(%rbp), %rsi
    leaq -296(%rbp), %rdi
    call lb_net_WebSocketSequence_begin@PLT
    addq $32, %rsp
    movq -496(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L9_16
    jmp .L9_15
.L9_16:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -664(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L9_15:
    movq -480(%rbp), %r10
    movq -504(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movl $1, %eax
    movq -400(%rbp), %r10
    movb %al, (%r10)
    movq $0, %rax
    movq -512(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movl $1, %eax
    movl %eax, %ebx
    jmp .L9_8
.L9_7:
    movl -640(%rbp), %eax
    movl %eax, %ebx
.L9_8:
    movq %r12, %rax
    movq %rax, -632(%rbp)
    movl %ebx, %eax
    movl %eax, -640(%rbp)
    jmp .L9_1
.L9_3:
    testl %r15d, %r15d
    jne .L9_18
    jmp .L9_19
.L9_18:
    leaq -320(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq -632(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -104(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L9_19:
.L9_20:
    leaq -128(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -520(%rbp)
    movq -520(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -528(%rbp)
    movq -528(%rbp), %rax
    movq -632(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_77(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    leaq -144(%rbp), %rax
    movq %rax, -536(%rbp)
    movq -536(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -544(%rbp)
    movq -544(%rbp), %rcx
    cmpq %rcx, %r13
    jbe .L9_23
.L9_22:
    movq -544(%rbp), %rax
    movq %rax, %r13
    jmp .L9_24
.L9_23:
.L9_24:
    movq -624(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, -552(%rbp)
    movq -552(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -560(%rbp)
    movq -560(%rbp), %r10
    movq (%r10), %r12
    movq -624(%rbp), %rax
    movq $80, %rcx
    addq %rcx, %rax
    movq %rax, -568(%rbp)
    movq -568(%rbp), %r10
    movq (%r10), %r14
    movq %r12, %rax
    movq %r14, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_77(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    cmpq %r12, %r13
    jbe .L9_26
.L9_25:
    movq %r12, %rax
    movq %rax, -648(%rbp)
    jmp .L9_27
.L9_26:
    movq %r13, %rax
    movq %rax, -648(%rbp)
.L9_27:
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -576(%rbp)
    movq -536(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -584(%rbp)
    movq -552(%rbp), %rax
    movq $28, %rcx
    addq %rcx, %rax
    movq %rax, -592(%rbp)
    movq -552(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -600(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L9_28:
    movq -648(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L9_31
.L9_29:
    movq -632(%rbp), %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_77(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -528(%rbp), %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -576(%rbp), %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq -544(%rbp), %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -584(%rbp), %rax
    movq %rax, %r13
    addq %r14, %r13
    movq -592(%rbp), %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L9_32
    jmp .L9_33
.L9_32:
    movzbl %bl, %r12d
    movq -568(%rbp), %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_77(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
.L9_36:
    movq $4, %rcx
    movq %r15, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rdx, %rbx
    movq $4, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -600(%rbp), %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    xorl %r12d, %ebx
    jmp .L9_34
.L9_33:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L9_34:
    movzbl %bl, %r12d
    movq %r13, %r10
    movb %r12b, (%r10)
.L9_30:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r14
    jmp .L9_28
.L9_31:
    movq -568(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq -648(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_77(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -568(%rbp), %r10
    movq %rbx, (%r10)
    movq -560(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    sete %al
    movzbl %al, %ebx
    movq -624(%rbp), %rax
    movq $88, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq -536(%rbp), %r10
    movq (%r10), %r14
    movq -544(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -648(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -648(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L9_37
.L9_38:
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_37:
    leaq -336(%rbp), %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -608(%rbp)
    movq -648(%rbp), %rax
    movq -608(%rbp), %r10
    movq %rax, (%r10)
    movzbl %bl, %eax
    movl %eax, -616(%rbp)
    subq $32, %rsp
    movq -552(%rbp), %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq %r12, %rsi
    movq %r13, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movl -616(%rbp), %r8d
    leaq -368(%rbp), %rdi
    call lb_net_WebSocketSequence_payload@PLT
    addq $32, %rsp
    leaq -368(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L9_40
    jmp .L9_39
.L9_40:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L9_39:
    movl -616(%rbp), %eax
    testl %eax, %eax
    jne .L9_42
    jmp .L9_43
.L9_42:
    movl $0, %eax
    movq -400(%rbp), %r10
    movb %al, (%r10)
    jmp .L9_44
.L9_43:
.L9_44:
    leaq -392(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq -632(%rbp), %rax
    movq -648(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_77(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq -648(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -552(%rbp), %r10
    movzbl (%r10), %ebx
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movb %bl, (%r10)
    movl -640(%rbp), %eax
    movzbl %al, %r12d
    movq $17, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movb %r12b, (%r10)
    movq $18, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl -616(%rbp), %eax
    movq %r12, %r10
    movb %al, (%r10)
    movl -616(%rbp), %eax
    testl %eax, %eax
    jne .L9_45
    jmp .L9_51
.L9_51:
    movl -616(%rbp), %eax
    movl %eax, %r12d
    jmp .L9_46
.L9_45:
    movq -552(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
.L9_46:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L9_47
    jmp .L9_52
.L9_52:
    movl %r13d, %ebx
    jmp .L9_48
.L9_47:
    movl %ebx, %r12d
    movzbl %r12b, %r12d
    movl $8, %ecx
    cmpl %ecx, %r12d
    setb %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L9_48:
    movzbl %bl, %r12d
    movq $19, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movb %r12b, (%r10)
    leaq -104(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
    .globl lb_net_WebSocketEncoder_create
    .type lb_net_WebSocketEncoder_create, @function
lb_net_WebSocketEncoder_create:
    pushq %rbp
    movq %rsp, %rbp
    subq $672, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movl %esi, -256(%rbp)
    movq %rdx, -272(%rbp)
    movq %rcx, -288(%rbp)
    leaq -488(%rbp), %rbx
    movq %rbx, %rdi
    xorl %esi, %esi
    movq $200, %rdx
    call memset@PLT
    leaq -256(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq %rbx, %r10
    movb %r12b, (%r10)
    leaq -272(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq -664(%rbp), %r12
    movq %r12, %rdi
    xorl %esi, %esi
    movq $176, %rdx
    call memset@PLT
    leaq -288(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %rdi
    movq %r12, %rsi
    movq $176, %rdx
    call memcpy@PLT
    leaq -240(%rbp), %r12
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $200, %rdx
    call memcpy@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $200, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_1:
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_19(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_WebSocketEncoder_write
    .type lb_net_WebSocketEncoder_write, @function
lb_net_WebSocketEncoder_write:
    pushq %rbp
    movq %rsp, %rbp
    subq $240, %rsp
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
    movl %r8d, -120(%rbp)
    movl %r9d, -152(%rbp)
    leaq 16(%rbp), %r10
    leaq -136(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -88(%rbp), %r10
    movq (%r10), %r13
    movq $192, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -232(%rbp)
    movq -232(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L11_1
    jmp .L11_2
.L11_1:
    leaq -80(%rbp), %rbx
    movq $196, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_55(%rip), %r12
    leaq -168(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $28, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r10
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
.L11_4:
    jmp .L11_3
.L11_2:
.L11_3:
    leaq -104(%rbp), %r12
    leaq -120(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    leaq -136(%rbp), %r15
    leaq -152(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    subq $16, %rsp
    movq %r15, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movl %r14d, %r8d
    movl %ebx, %r9d
    leaq -224(%rbp), %rdi
    call lb_net_WebSocketEncoder_emit@PLT
    addq $16, %rsp
    leaq -224(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_8
    jmp .L11_7
.L11_8:
    leaq -192(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L11_5
.L11_7:
    jmp .L11_6
.L11_5:
    movl $1, %eax
    movq -232(%rbp), %r10
    movb %al, (%r10)
    movq $196, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %rbx, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movl %r14d, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
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
.L11_9:
.L11_6:
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

    .p2align 4
    .globl lb_net_WebSocketEncoder_emit
    .type lb_net_WebSocketEncoder_emit, @function
lb_net_WebSocketEncoder_emit:
    pushq %rbp
    movq %rsp, %rbp
    subq $4800, %rsp
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
    movl %r8d, -120(%rbp)
    movl %r9d, -152(%rbp)
    leaq 16(%rbp), %r10
    leaq -136(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -4752(%rbp)
    leaq -120(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl %ebx, %r12d
    movzbl %r12b, %eax
    movl %eax, -4656(%rbp)
    movl -4656(%rbp), %esi
    leaq -192(%rbp), %rdi
    call lb_net_16websocket_opcode@PLT
    leaq -192(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L12_2
    jmp .L12_1
.L12_2:
    movq $8, %rcx
    movq %r15, %rbx
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
.L12_1:
    leaq -136(%rbp), %rax
    movq %rax, -4664(%rbp)
    movq -4664(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4672(%rbp)
    movq -4672(%rbp), %r10
    movq (%r10), %r15
    movq -4752(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %r15
    jbe .L12_5
.L12_4:
    leaq -80(%rbp), %rbx
    leaq lb_net_15websocket_limit(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_13(%rip), %r12
    leaq -208(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $38, %rax
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
.L12_5:
.L12_6:
    movl -4656(%rbp), %eax
    movl $8, %ecx
    cmpl %ecx, %eax
    setae %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L12_11
    jmp .L12_77
.L12_77:
    movl %r13d, %r12d
    jmp .L12_12
.L12_11:
    leaq -152(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L12_78
    jmp .L12_13
.L12_78:
    movl %r12d, %r13d
    jmp .L12_14
.L12_13:
    movq $125, %rcx
    cmpq %rcx, %r15
    seta %al
    movzbl %al, %r13d
.L12_14:
    movzbl %r13b, %r12d
.L12_12:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L12_8
    jmp .L12_9
.L12_8:
    leaq -80(%rbp), %rbx
    leaq lb_net_17websocket_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_56(%rip), %r12
    leaq -224(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $31, %rax
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
.L12_9:
.L12_10:
    leaq -256(%rbp), %rax
    movq %rax, -4680(%rbp)
    leaq -288(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq %r13, %r10
    movb %bl, (%r10)
    leaq -152(%rbp), %rax
    movq %rax, -4688(%rbp)
    movq -4688(%rbp), %r10
    movzbl (%r10), %eax
    movl %eax, -4696(%rbp)
    movq $1, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl -4696(%rbp), %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq %r13, %r10
    movq -4680(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq -4752(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    subq $32, %rsp
    movq -4680(%rbp), %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq %r12, %rsi
    leaq -320(%rbp), %rdi
    call lb_net_WebSocketSequence_begin@PLT
    addq $32, %rsp
    leaq -320(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L12_17
    jmp .L12_16
.L12_17:
    leaq -80(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
.L12_16:
    subq $32, %rsp
    movq -4680(%rbp), %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq %r12, %rsi
    movq -4664(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movl $1, %r8d
    leaq -352(%rbp), %rdi
    call lb_net_WebSocketSequence_payload@PLT
    addq $32, %rsp
    leaq -352(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L12_20
    jmp .L12_19
.L12_20:
    leaq -80(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
.L12_19:
    leaq -368(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    movl $0, 8(%r11)
    movw $0, 12(%r11)
    movl -4696(%rbp), %eax
    testl %eax, %eax
    jne .L12_22
    jmp .L12_23
.L12_22:
    movl $128, %eax
    movl %eax, %r12d
    jmp .L12_24
.L12_23:
    movl $0, %eax
    movl %eax, %r12d
.L12_24:
    movzbl %r12b, %r13d
    movl -4656(%rbp), %eax
    movl %r13d, %ecx
    movl %eax, %r13d
    orl %ecx, %r13d
    movq %rbx, %r10
    movb %r13b, (%r10)
    movq -4672(%rbp), %r10
    movq (%r10), %r13
    movq $126, %rcx
    cmpq %rcx, %r13
    jae .L12_26
.L12_25:
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movzbl %r13b, %r14d
    movq %r12, %r10
    movb %r14b, (%r10)
    movq $2, %rax
    movq %rax, %r12
    jmp .L12_27
.L12_26:
    movq $65536, %rcx
    cmpq %rcx, %r13
    jae .L12_29
.L12_28:
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $126, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $2, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
.L12_32:
    movq $8, %rcx
    movq %r13, %r14
    shrq %cl, %r14
    movzbl %r14b, %r14d
    movq %r12, %r10
    movb %r14b, (%r10)
    movq $3, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movzbl %r13b, %r15d
    movq %r14, %r10
    movb %r15b, (%r10)
    movq $4, %rax
    movq %rax, -4768(%rbp)
    jmp .L12_30
.L12_29:
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $127, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $0, %rax
    movq %rax, %r12
.L12_33:
    movq $8, %rcx
    cmpq %rcx, %r12
    jge .L12_36
.L12_34:
    movq %r12, %rax
    movq $2, %rcx
    addq %rcx, %rax
    jno 1f
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_77(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq $14, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rbx, %rax
    addq %r13, %rax
    movq %rax, -4760(%rbp)
    movq -4672(%rbp), %r10
    movq (%r10), %r15
    movq $7, %rax
    movq %r12, %rcx
    subq %rcx, %rax
    jno 1f
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_77(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r13, %rax
    movq $8, %rcx
    imulq %rcx, %rax
    jno 1f
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_77(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq $64, %rcx
    cmpq %rcx, %r14
    jb .L12_38
.L12_37:
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_38:
    movq %r14, %rcx
    movq %r15, %r13
    shrq %cl, %r13
    movzbl %r13b, %r13d
    movq -4760(%rbp), %r10
    movb %r13b, (%r10)
.L12_35:
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r12
    jmp .L12_33
.L12_36:
    movq $10, %rax
    movq %rax, -4768(%rbp)
.L12_30:
    movq -4768(%rbp), %rax
    movq %rax, %r12
.L12_27:
    leaq -372(%rbp), %rax
    movq %rax, -4704(%rbp)
    movq -4704(%rbp), %r11
    movl $0, 0(%r11)
    movq -4752(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L12_39
    jmp .L12_40
.L12_39:
    movq -4704(%rbp), %rdi
    movq $4, %rsi
    call lb_net_17websocket_entropy@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L12_43
.L12_42:
    leaq -80(%rbp), %rbx
    leaq lb_net_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_65(%rip), %r12
    leaq -392(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $43, %rax
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
.L12_43:
.L12_44:
    movq $1, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r15d
    movl $128, %ecx
    orl %ecx, %r15d
    movq %r14, %r10
    movb %r15b, (%r10)
    movq $15, %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_67(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $14, %rcx
    cmpq %rcx, %r12
    jbe .L12_46
.L12_47:
    leaq .Ltext_67(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_46:
    movq %rbx, %r14
    addq %r12, %r14
    movq $14, %rax
    movq %rax, %r15
    subq %r12, %r15
    leaq -408(%rbp), %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    leaq -424(%rbp), %r14
    movq -4704(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $4, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r14, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq $4, %r8
    call lb_memory_copy_0g1_u8@PLT
    movq $4, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    jmp .L12_41
.L12_40:
    movq %r12, %r13
.L12_41:
    leaq -104(%rbp), %rax
    movq %rax, -4712(%rbp)
    movq $15, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_69(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r13, %rax
    jbe .L12_48
.L12_49:
    leaq .Ltext_69(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_48:
    leaq -440(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq -4712(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -472(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -472(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L12_51
    jmp .L12_50
.L12_51:
    leaq -80(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
.L12_50:
    movq -4752(%rbp), %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L12_54
.L12_53:
    movq -4712(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -4664(%rbp), %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -504(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -504(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L12_57
    jmp .L12_56
.L12_57:
    leaq -80(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
.L12_56:
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
.L12_54:
.L12_55:
    leaq -4600(%rbp), %rbx
    movq %rbx, %rdi
    xorl %esi, %esi
    movq $4096, %rdx
    call memset@PLT
    leaq -4616(%rbp), %rax
    movq %rax, -4728(%rbp)
    movq -4728(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4736(%rbp)
    leaq -4648(%rbp), %rax
    movq %rax, -4792(%rbp)
    movq -4792(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -4744(%rbp)
    movq $0, %rax
    movq %rax, -4776(%rbp)
.L12_60:
    movq -4672(%rbp), %r10
    movq (%r10), %r12
    movq -4776(%rbp), %rax
    cmpq %r12, %rax
    jae .L12_62
.L12_61:
    movq -4776(%rbp), %rcx
    movq %r12, %r14
    subq %rcx, %r14
    movq $4096, %rcx
    cmpq %rcx, %r14
    jae .L12_64
.L12_63:
    movq %r14, %rax
    movq %rax, -4784(%rbp)
    jmp .L12_65
.L12_64:
    movq $4096, %rax
    movq %rax, -4784(%rbp)
.L12_65:
    movq $0, %rax
    movq %rax, %r13
.L12_66:
    movq -4784(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L12_69
.L12_67:
    movq $4096, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_71(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rbx, %rax
    addq %r13, %rax
    movq %rax, -4800(%rbp)
    movq -4776(%rbp), %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_71(%rip), %rdi
    leaq .Ltext_77(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq -4664(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -4720(%rbp)
    movq -4672(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %r14
    jb 1f
    leaq .Ltext_71(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -4720(%rbp), %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
.L12_71:
    movq $4, %rcx
    movq %r14, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rdx, %r15
    movq $4, %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_71(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -4704(%rbp), %rax
    movq %r15, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    xorl %r12d, %r15d
    movq -4800(%rbp), %r10
    movb %r15b, (%r10)
.L12_68:
    movq $1, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r13
    jmp .L12_66
.L12_69:
    movq -4784(%rbp), %rax
    movq $4097, %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_72(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -4784(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L12_72
.L12_73:
    leaq .Ltext_72(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_72:
    movq -4728(%rbp), %r10
    movq %rbx, (%r10)
    movq -4784(%rbp), %rax
    movq -4736(%rbp), %r10
    movq %rax, (%r10)
    movq -4712(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -4728(%rbp), %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -4648(%rbp), %rdi
    call lb_io_9write_all@PLT
    movq -4744(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L12_75
    jmp .L12_74
.L12_75:
    leaq -80(%rbp), %rbx
    movq -4792(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
.L12_74:
    movq -4776(%rbp), %rax
    movq -4784(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_73(%rip), %rdi
    leaq .Ltext_77(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %rax
    movq %rax, -4776(%rbp)
    jmp .L12_60
.L12_62:
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

    .p2align 4
    .globl lb_memory_copy_0g1_u8
    .type lb_memory_copy_0g1_u8, @function
    .weak lb_memory_copy_0g1_u8
lb_memory_copy_0g1_u8:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    leaq -48(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -64(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movq %r8, -80(%rbp)
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -48(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L13_11
    jmp .L13_4
.L13_11:
    movl %r13d, %r14d
    jmp .L13_5
.L13_4:
    leaq -64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L13_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L13_1
    jmp .L13_2
.L13_1:
    leaq .Ltext_17(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_74(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L13_3
.L13_2:
.L13_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L13_7
.L13_6:
    movq %r12, %r10
    movq (%r10), %r13
    leaq -64(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %rdi
    movq %r14, %rsi
    movq %rbx, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L13_9
    jmp .L13_10
.L13_10:
    leaq .Ltext_75(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_9:
    jmp .L13_8
.L13_7:
.L13_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_15websocket_frame_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/net/websocket/frame.lucb:24:5"
.Ltext_1:
    .asciz "WebSocket reserved bits require an extension"
.Ltext_2:
    .asciz "src/std/net/websocket/frame.lucb:26:5"
.Ltext_3:
    .asciz "src/std/net/websocket/frame.lucb:27:5"
.Ltext_4:
    .asciz "src/std/net/websocket/frame.lucb:28:5"
.Ltext_5:
    .asciz "WebSocket masking is wrong for this direction"
.Ltext_6:
    .asciz "src/std/net/websocket/frame.lucb:31:5"
.Ltext_7:
    .asciz "src/std/net/websocket/frame.lucb:37:9"
.Ltext_8:
    .asciz "shift count out of range"
.Ltext_9:
    .asciz "nonminimal WebSocket payload length"
.Ltext_10:
    .asciz "src/std/net/websocket/frame.lucb:44:9"
.Ltext_11:
    .asciz "WebSocket payload length has its sign bit set"
.Ltext_12:
    .asciz "src/std/net/websocket/frame.lucb:48:13"
.Ltext_13:
    .asciz "WebSocket frame exceeds its byte limit"
.Ltext_14:
    .asciz "WebSocket control frame must be final and at most 125 bytes"
.Ltext_15:
    .asciz "src/std/net/websocket/frame.lucb:58:9"
.Ltext_16:
    .asciz "src/std/net/websocket/frame.lucb:60:9"
.Ltext_17:
    .asciz "index out of bounds"
.Ltext_18:
    .asciz "src/std/net/websocket/frame.lucb:61:9"
.Ltext_19:
    .asciz "unreachable"
.Ltext_20:
    .asciz "src/std/net/websocket/frame.lucb:62:5"
.Ltext_21:
    .asciz "reserved WebSocket opcode"
.Ltext_22:
    .asciz "src/std/net/websocket/frame.lucb:72:9"
.Ltext_23:
    .asciz "invalid WebSocket close payload length"
.Ltext_24:
    .asciz "src/std/net/websocket/frame.lucb:81:5"
.Ltext_25:
    .asciz "reserved WebSocket close status"
.Ltext_26:
    .asciz "src/std/net/websocket/frame.lucb:85:5"
.Ltext_27:
    .asciz "WebSocket data follows a close frame"
.Ltext_28:
    .asciz "WebSocket continuation has no initial frame"
.Ltext_29:
    .asciz "new WebSocket message interrupts fragmentation"
.Ltext_30:
    .asciz "src/std/net/websocket/frame.lucb:115:9"
.Ltext_31:
    .asciz "WebSocket message exceeds its byte limit"
.Ltext_32:
    .asciz "src/std/net/websocket/frame.lucb:117:9"
.Ltext_33:
    .asciz "src/std/net/websocket/frame.lucb:123:17"
.Ltext_34:
    .asciz "src/std/net/websocket/frame.lucb:124:17"
.Ltext_35:
    .asciz "src/std/net/websocket/frame.lucb:126:21"
.Ltext_36:
    .asciz "src/std/net/websocket/frame.lucb:162:9"
.Ltext_37:
    .asciz "WebSocket decoder has failed"
.Ltext_38:
    .asciz "WebSocket output buffer must be nonempty"
.Ltext_39:
    .asciz "src/std/net/websocket/frame.lucb:172:13"
.Ltext_40:
    .asciz "WebSocket ended without a complete close frame"
.Ltext_41:
    .asciz "src/std/net/websocket/frame.lucb:188:13"
.Ltext_42:
    .asciz "src/std/net/websocket/frame.lucb:189:13"
.Ltext_43:
    .asciz "src/std/net/websocket/frame.lucb:190:13"
.Ltext_44:
    .asciz "src/std/net/websocket/frame.lucb:191:13"
.Ltext_45:
    .asciz "src/std/net/websocket/frame.lucb:200:9"
.Ltext_46:
    .asciz "src/std/net/websocket/frame.lucb:203:9"
.Ltext_47:
    .asciz "src/std/net/websocket/frame.lucb:204:13"
.Ltext_48:
    .asciz "src/std/net/websocket/frame.lucb:206:13"
.Ltext_49:
    .asciz "src/std/net/websocket/frame.lucb:207:13"
.Ltext_50:
    .asciz "division by zero"
.Ltext_51:
    .asciz "src/std/net/websocket/frame.lucb:208:9"
.Ltext_52:
    .asciz "src/std/net/websocket/frame.lucb:210:9"
.Ltext_53:
    .asciz "src/std/net/websocket/frame.lucb:213:9"
.Ltext_54:
    .asciz "src/std/net/websocket/frame.lucb:226:9"
.Ltext_55:
    .asciz "WebSocket encoder has failed"
.Ltext_56:
    .asciz "invalid WebSocket control frame"
.Ltext_57:
    .asciz "src/std/net/websocket/frame.lucb:246:9"
.Ltext_58:
    .asciz "src/std/net/websocket/frame.lucb:249:13"
.Ltext_59:
    .asciz "src/std/net/websocket/frame.lucb:251:13"
.Ltext_60:
    .asciz "src/std/net/websocket/frame.lucb:252:13"
.Ltext_61:
    .asciz "src/std/net/websocket/frame.lucb:253:13"
.Ltext_62:
    .asciz "src/std/net/websocket/frame.lucb:256:13"
.Ltext_63:
    .asciz "src/std/net/websocket/frame.lucb:258:17"
.Ltext_64:
    .asciz "src/std/net/websocket/frame.lucb:262:13"
.Ltext_65:
    .asciz "WebSocket masking randomness is unavailable"
.Ltext_66:
    .asciz "src/std/net/websocket/frame.lucb:264:13"
.Ltext_67:
    .asciz "src/std/net/websocket/frame.lucb:265:13"
.Ltext_68:
    .asciz "src/std/net/websocket/frame.lucb:266:13"
.Ltext_69:
    .asciz "src/std/net/websocket/frame.lucb:267:9"
.Ltext_70:
    .asciz "src/std/net/websocket/frame.lucb:274:13"
.Ltext_71:
    .asciz "src/std/net/websocket/frame.lucb:276:17"
.Ltext_72:
    .asciz "src/std/net/websocket/frame.lucb:277:13"
.Ltext_73:
    .asciz "src/std/net/websocket/frame.lucb:278:13"
.Ltext_74:
    .asciz "src/std/memory.lucb:326:9"
.Ltext_75:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_76:
    .asciz "null_foreign"
.Ltext_77:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
