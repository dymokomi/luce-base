    .text

    .p2align 4
    .globl lb_net_10ip_address_0init
    .type lb_net_10ip_address_0init, @function
lb_net_10ip_address_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_IpAddress_9from_ipv4
    .type lb_net_IpAddress_9from_ipv4, @function
lb_net_IpAddress_9from_ipv4:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movl %esi, -88(%rbp)
    leaq -105(%rbp), %rax
    movq %rax, -120(%rbp)
    movq -120(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movb $0, 16(%r11)
    movq -120(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    leaq -88(%rbp), %r13
    movq %r13, %r10
    movl (%r10), %r14d
    movq $0, %rax
    movq %rax, %r13
.L1_1:
    movq $4, %rcx
    cmpq %rcx, %r13
    jae .L1_3
.L1_2:
    movq %r12, %rax
    addq %r13, %rax
    movq %rax, -128(%rbp)
    movq $3, %rax
    movq %rax, %r15
    subq %r13, %r15
    movq %r15, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movl %ebx, %r15d
    movq $32, %rcx
    cmpq %rcx, %r15
    jb .L1_5
.L1_4:
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_5:
    movl %ebx, %ecx
    movl %r14d, %r15d
    shrl %cl, %r15d
    movl $255, %ecx
    andl %ecx, %r15d
    movl %r15d, %r15d
    movzbl %r15b, %r15d
    movq -128(%rbp), %r10
    movb %r15b, (%r10)
    movq $1, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r13
    jmp .L1_1
.L1_3:
    leaq -65(%rbp), %rbx
    movq -120(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $17, %rdx
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
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_IpAddress_10from_bytes
    .type lb_net_IpAddress_10from_bytes, @function
lb_net_IpAddress_10from_bytes:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -120(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -120(%rbp), %rax
    movq %rax, -200(%rbp)
    movq -200(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -208(%rbp)
    movq -208(%rbp), %rax
    movq $4, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L2_4
    jmp .L2_11
.L2_11:
    movl %r14d, %r15d
    jmp .L2_5
.L2_4:
    movq -208(%rbp), %rax
    movq $16, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L2_5:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L2_1
    jmp .L2_2
.L2_1:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_5(%rip), %r13
    leaq -136(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $42, %rax
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
.L2_6:
    jmp .L2_3
.L2_2:
.L2_3:
    leaq -153(%rbp), %r14
    leaq -170(%rbp), %r15
    movq %r15, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movb $0, 16(%r11)
    testl %r13d, %r13d
    jne .L2_7
    jmp .L2_8
.L2_7:
    movl $0, %eax
    movl %eax, %r13d
    jmp .L2_9
.L2_8:
    movl $1, %eax
    movl %eax, %r13d
.L2_9:
    movzbl %r13b, %ebx
    movq %r15, %r10
    movb %bl, (%r10)
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -192(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $16, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -200(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -208(%rbp), %r8
    call lb_memory_copy_0g1_u8@PLT
    leaq -104(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
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
.L2_10:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_IpAddress_parse
    .type lb_net_IpAddress_parse, @function
lb_net_IpAddress_parse:
    pushq %rbp
    movq %rsp, %rbp
    subq $240, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -88(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -88(%rbp), %rax
    movq %rax, -216(%rbp)
    movq -216(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -224(%rbp)
    movq -224(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L3_40
    jmp .L3_4
.L3_40:
    movl %r13d, %r14d
    jmp .L3_5
.L3_4:
    movq -224(%rbp), %rax
    movq $45, %rcx
    cmpq %rcx, %rax
    seta %al
    movzbl %al, %r14d
.L3_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L3_1
    jmp .L3_2
.L3_1:
    leaq -106(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movw $0, 16(%r11)
    leaq -66(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzwl 16(%r10), %eax
    movw %ax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $18, %rdx
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
    jmp .L3_3
.L3_2:
.L3_3:
    movl $0, %eax
    movl %eax, -232(%rbp)
    movq $0, %rax
    movq %rax, -240(%rbp)
.L3_7:
    movq -240(%rbp), %rax
    movq -224(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L3_9
.L3_8:
    movq -216(%rbp), %r10
    movq (%r10), %r15
    movq -240(%rbp), %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movzbl %r15b, %r15d
    movl $48, %ecx
    cmpl %ecx, %r15d
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L3_10
    jmp .L3_41
.L3_41:
    movl %r12d, %ebx
    jmp .L3_11
.L3_10:
    movl $57, %ecx
    cmpl %ecx, %r15d
    setbe %al
    movzbl %al, %ebx
.L3_11:
    movzbl %bl, %r12d
    movl $97, %ecx
    cmpl %ecx, %r15d
    setae %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L3_12
    jmp .L3_42
.L3_42:
    movl %r14d, %ebx
    jmp .L3_13
.L3_12:
    movl $102, %ecx
    cmpl %ecx, %r15d
    setbe %al
    movzbl %al, %ebx
.L3_13:
    movzbl %bl, %r14d
    testl %r14d, %r14d
    jne .L3_43
    jmp .L3_14
.L3_43:
    movl %r14d, %ebx
    jmp .L3_15
.L3_14:
    movl $65, %ecx
    cmpl %ecx, %r15d
    setae %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L3_16
    jmp .L3_44
.L3_44:
    movl %ebx, %r14d
    jmp .L3_17
.L3_16:
    movl $70, %ecx
    cmpl %ecx, %r15d
    setbe %al
    movzbl %al, %r14d
.L3_17:
    movzbl %r14b, %ebx
.L3_15:
    movzbl %bl, %r14d
    movzbl %r12b, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L3_21
    jmp .L3_45
.L3_45:
    movl %r13d, %ebx
    jmp .L3_22
.L3_21:
    movzbl %r14b, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L3_22:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L3_23
    jmp .L3_46
.L3_46:
    movl %r12d, %ebx
    jmp .L3_24
.L3_23:
    movl $58, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L3_24:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L3_25
    jmp .L3_47
.L3_47:
    movl %r12d, %ebx
    jmp .L3_26
.L3_25:
    movl $46, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L3_26:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L3_18
    jmp .L3_19
.L3_18:
    leaq -124(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movw $0, 16(%r11)
    leaq -66(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzwl 16(%r10), %eax
    movw %ax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $18, %rdx
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
.L3_27:
    jmp .L3_20
.L3_19:
.L3_20:
    movl $58, %ecx
    cmpl %ecx, %r15d
    jne .L3_29
.L3_28:
    movl $1, %eax
    movl %eax, %ebx
    jmp .L3_30
.L3_29:
    movl -232(%rbp), %eax
    movl %eax, %ebx
.L3_30:
    movq -240(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl %ebx, %eax
    movl %eax, -232(%rbp)
    movq %r12, %rax
    movq %rax, -240(%rbp)
    jmp .L3_7
.L3_9:
    movl -232(%rbp), %eax
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L3_32
.L3_31:
    movq -216(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_net_17parse_ipv4_number@PLT
    leaq -132(%rbp), %r10
    movq %rax, 0(%r10)
    leaq -132(%rbp), %r12
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_34
    jmp .L3_35
.L3_34:
    movq %r12, %r10
    movl (%r10), %ebx
    jmp .L3_36
.L3_35:
    leaq -150(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movw $0, 16(%r11)
    leaq -66(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzwl 16(%r10), %eax
    movw %ax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $18, %rdx
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
.L3_36:
    movl %ebx, %esi
    leaq -167(%rbp), %rdi
    call lb_net_IpAddress_9from_ipv4@PLT
    leaq -167(%rbp), %r12
    leaq -185(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    movq $17, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -66(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzwl 16(%r10), %eax
    movw %ax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $18, %rdx
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
    jmp .L3_33
.L3_32:
.L3_33:
    movq -216(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -203(%rbp), %rdi
    call lb_net_10parse_ipv6@PLT
    leaq -203(%rbp), %rbx
    leaq -66(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzwl 16(%r10), %eax
    movw %ax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $18, %rdx
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
.L3_39:
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_IpAddress_version
    .type lb_net_IpAddress_version, @function
lb_net_IpAddress_version:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -16(%rbp)
    leaq -16(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_1:
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_IpAddress_11ipv4_number
    .type lb_net_IpAddress_11ipv4_number, @function
lb_net_IpAddress_11ipv4_number:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq -56(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L5_2
.L5_1:
    leaq -64(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    leaq -48(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_2:
.L5_3:
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %r13d
    movl %r13d, %r13d
.L5_6:
    movl $24, %ecx
    movl %r13d, %r14d
    shll %cl, %r14d
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl %r12d, %r12d
.L5_8:
    movl $16, %ecx
    movl %r12d, %r13d
    shll %cl, %r13d
    movl %r13d, %r15d
    orl %r14d, %r15d
    movq $2, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl %r13d, %r13d
.L5_10:
    movl $8, %ecx
    movl %r13d, %r12d
    shll %cl, %r12d
    orl %r15d, %r12d
    movq $3, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl %r14d, %r14d
    orl %r14d, %r12d
    leaq -72(%rbp), %r14
    movq %r14, %r10
    movl %r12d, (%r10)
    movq $4, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -48(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_IpAddress_14is_ipv4_mapped
    .type lb_net_IpAddress_14is_ipv4_mapped, @function
lb_net_IpAddress_14is_ipv4_mapped:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -40(%rbp)
    leaq -40(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %r10
    movzbl (%r10), %ebx
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L6_2
.L6_1:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_4:
    jmp .L6_3
.L6_2:
.L6_3:
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rax, %r13
.L6_5:
    movq $10, %rcx
    cmpq %rcx, %r13
    jae .L6_7
.L6_6:
    movq %rbx, %r14
    addq %r13, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L6_9
.L6_8:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_11:
    jmp .L6_10
.L6_9:
.L6_10:
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r13
    jmp .L6_5
.L6_7:
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $10, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $255, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L6_12
    jmp .L6_15
.L6_15:
    movl %r13d, %ebx
    jmp .L6_13
.L6_12:
    movq $11, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $255, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L6_13:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_14:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_IpAddress_equals
    .type lb_net_IpAddress_equals, @function
lb_net_IpAddress_equals:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -48(%rbp)
    leaq 16(%rbp), %r10
    leaq -72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    leaq -48(%rbp), %r10
    movq (%r10), %r14
    movq %r14, %r10
    movzbl (%r10), %ebx
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L7_2
.L7_1:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_4:
    jmp .L7_3
.L7_2:
.L7_3:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %rax, %r15
.L7_5:
    movq $16, %rcx
    cmpq %rcx, %r15
    jae .L7_7
.L7_6:
    movq %rbx, %r12
    addq %r15, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq %r13, %r14
    addq %r15, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    cmpl %r14d, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L7_9
.L7_8:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_11:
    jmp .L7_10
.L7_9:
.L7_10:
    movq $1, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r15
    jmp .L7_5
.L7_7:
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_12:
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_IpAddress_12write_octets
    .type lb_net_IpAddress_12write_octets, @function
lb_net_IpAddress_12write_octets:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    leaq -112(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -96(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L8_2
.L8_1:
    movq $4, %rax
    movq %rax, %rbx
    jmp .L8_3
.L8_2:
    movq $16, %rax
    movq %rax, %rbx
.L8_3:
    leaq -112(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %rbx, %r14
    jae .L8_5
.L8_4:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_full(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_18(%rip), %r13
    leaq -128(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $49, %rax
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
.L8_7:
    jmp .L8_6
.L8_5:
.L8_6:
    movq $1, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq $17, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %rbx, %rax
    jbe .L8_8
.L8_9:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
.L8_8:
    leaq -144(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %rbx, %r8
    call lb_memory_move_0g1_u8@PLT
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r12, %rsi
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
.L8_10:
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_IpAddress_format
    .type lb_net_IpAddress_format, @function
lb_net_IpAddress_format:
    pushq %rbp
    movq %rsp, %rbp
    subq $560, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -104(%rbp)
    leaq -120(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -104(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -496(%rbp)
    leaq -159(%rbp), %rax
    movq %rax, -424(%rbp)
    movq -424(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movl $0, 32(%r11)
    movw $0, 36(%r11)
    movb $0, 38(%r11)
    movq -496(%rbp), %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L9_2
.L9_1:
    movq -496(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
.L9_4:
    leaq -176(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $4, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq -192(%rbp), %r14
    movq -424(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $39, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r14, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq $0, %r8
    call lb_net_11render_ipv4@PLT
    movq %rax, %r13
    movq %r13, %rax
    movq %rax, -560(%rbp)
    jmp .L9_3
.L9_2:
    movq -496(%rbp), %rdi
    call lb_net_IpAddress_14is_ipv4_mapped@PLT
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L9_6
    jmp .L9_7
.L9_6:
    leaq -208(%rbp), %r12
    movq -424(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq $39, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq .Ltext_23(%rip), %r14
    leaq -224(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $7, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r15, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq $7, %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -496(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
.L9_9:
    movq $12, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    leaq -240(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $4, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq -256(%rbp), %r13
    movq -424(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $39, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r13, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq $7, %r8
    call lb_net_11render_ipv4@PLT
    movq %rax, %r13
    movq %r13, %rax
    movq %rax, -552(%rbp)
    jmp .L9_8
.L9_7:
    movq $8, %rax
    movq %rax, -504(%rbp)
    movq $1, %rax
    movq %rax, -512(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L9_11:
    movq $8, %rcx
    cmpq %rcx, %r15
    jae .L9_13
.L9_12:
    movq -496(%rbp), %rdi
    movq %r15, %rsi
    call lb_net_IpAddress_word@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L9_15
.L9_14:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r15
    jmp .L9_11
.L9_15:
.L9_16:
    movq %r15, %rbx
.L9_18:
    movq $8, %rcx
    cmpq %rcx, %rbx
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L9_21
    jmp .L9_59
.L9_59:
    movl %r12d, %r14d
    jmp .L9_22
.L9_21:
    movq -496(%rbp), %rdi
    movq %rbx, %rsi
    call lb_net_IpAddress_word@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L9_22:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L9_19
    jmp .L9_20
.L9_19:
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %rbx
    jmp .L9_18
.L9_20:
    movq %rbx, %rax
    movq %r15, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -512(%rbp), %rcx
    cmpq %rcx, %r12
    jbe .L9_24
.L9_23:
    movq %r15, %r14
    movq %r12, %r13
    jmp .L9_25
.L9_24:
    movq -504(%rbp), %rax
    movq %rax, %r14
    movq -512(%rbp), %rax
    movq %rax, %r13
.L9_25:
    movq %r14, %rax
    movq %rax, -504(%rbp)
    movq %r13, %rax
    movq %rax, -512(%rbp)
    movq %rbx, %r15
    jmp .L9_11
.L9_13:
    leaq -272(%rbp), %rax
    movq %rax, -440(%rbp)
    movq -440(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -448(%rbp)
    leaq -400(%rbp), %rax
    movq %rax, -456(%rbp)
    leaq .Ltext_63(%rip), %rax
    movq %rax, -464(%rbp)
    leaq -416(%rbp), %rax
    movq %rax, -472(%rbp)
    movq -472(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -480(%rbp)
    leaq -352(%rbp), %rax
    movq %rax, -488(%rbp)
    leaq -368(%rbp), %r13
    movq $0, %rax
    movq %rax, -520(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L9_26:
    movq $8, %rcx
    cmpq %rcx, %r14
    jae .L9_28
.L9_27:
    movq -504(%rbp), %rax
    cmpq %r14, %rax
    jne .L9_30
.L9_29:
    movq -520(%rbp), %rax
    movq $39, %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -424(%rbp), %rax
    movq -520(%rbp), %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movl $58, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq -520(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq $39, %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -424(%rbp), %rax
    movq %r15, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movl $58, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq -520(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq -512(%rbp), %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r15, %rax
    movq %rax, -520(%rbp)
    movq %r12, %r14
    jmp .L9_26
.L9_30:
.L9_31:
    movq -520(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    seta %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L9_36
    jmp .L9_60
.L9_60:
    movl %r12d, %r15d
    jmp .L9_37
.L9_36:
    movq -520(%rbp), %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq $39, %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -424(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $58, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r15d
.L9_37:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L9_33
    jmp .L9_34
.L9_33:
    movq -520(%rbp), %rax
    movq $39, %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -424(%rbp), %rax
    movq -520(%rbp), %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $58, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -520(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    jmp .L9_35
.L9_34:
    movq -520(%rbp), %rax
    movq %rax, %r12
.L9_35:
    movq -496(%rbp), %rdi
    movq %r14, %rsi
    call lb_net_IpAddress_word@PLT
    movl %eax, -432(%rbp)
    movq -424(%rbp), %rax
    movq -440(%rbp), %r10
    movq %rax, (%r10)
    movq $39, %rax
    movq -448(%rbp), %r10
    movq %rax, (%r10)
    movl -432(%rbp), %eax
    leaq -352(%rbp), %r10
    movl %eax, (%r10)
    movq -440(%rbp), %r10
    leaq -368(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -384(%rbp), %r10
    movq %r12, (%r10)
    movq -464(%rbp), %rax
    movq -472(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq -480(%rbp), %r10
    movq %rax, (%r10)
    movq -472(%rbp), %r10
    movq -456(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -488(%rbp), %r10
    movzwl (%r10), %eax
    movl %eax, -544(%rbp)
    movq %r12, %rax
    movq %rax, -528(%rbp)
    movl $12, %eax
    movl %eax, %r15d
    movl $0, %eax
    movl %eax, -536(%rbp)
.L9_45:
    movl $0, %ecx
    cmpl %ecx, %r15d
    jl .L9_47
.L9_46:
    movl %r15d, %r12d
    movq $16, %rcx
    cmpq %rcx, %r12
    jb .L9_49
.L9_48:
    leaq .Ltext_64(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_49:
    movl %r15d, %ecx
    movl -544(%rbp), %eax
    movl %eax, %r12d
    shrl %cl, %r12d
    movzwl %r12w, %r12d
    movl $15, %ecx
    andl %ecx, %r12d
    movl %r12d, %r12d
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L9_61
    jmp .L9_53
.L9_61:
    movl %ebx, %r13d
    jmp .L9_54
.L9_53:
    movl -536(%rbp), %eax
    movzbl %al, %r13d
.L9_54:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L9_62
    jmp .L9_55
.L9_62:
    movl %ebx, %r13d
    jmp .L9_56
.L9_55:
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r13d
.L9_56:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L9_50
    jmp .L9_51
.L9_50:
    movq -528(%rbp), %rax
    movq $39, %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_65(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -424(%rbp), %rax
    movq -528(%rbp), %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -464(%rbp), %rax
    movq %rax, %r13
    addq %r12, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq %rbx, %r10
    movb %r13b, (%r10)
    movq -528(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movl %eax, %r13d
    jmp .L9_52
.L9_51:
    movq -528(%rbp), %rax
    movq %rax, %rbx
    movl -536(%rbp), %eax
    movl %eax, %r13d
.L9_52:
    movl %r15d, %eax
    movl $4, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_67(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
    movq %rbx, %rax
    movq %rax, -528(%rbp)
    movl %r12d, %r15d
    movl %r13d, %eax
    movl %eax, -536(%rbp)
    jmp .L9_45
.L9_47:
.L9_58:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq -528(%rbp), %rax
    movq %rax, -520(%rbp)
    movq %rbx, %r14
    jmp .L9_26
.L9_28:
    movq -520(%rbp), %rax
    movq %rax, -552(%rbp)
.L9_8:
    movq -552(%rbp), %rax
    movq %rax, -560(%rbp)
.L9_3:
    leaq -120(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq -560(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L9_39
.L9_38:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_full(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_37(%rip), %r13
    leaq -288(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $52, %rax
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
.L9_39:
.L9_40:
    leaq -304(%rbp), %r13
    movq -424(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $39, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r13, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -560(%rbp), %r8
    call lb_memory_move_0g1_u8@PLT
    movq %rbx, %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq (%r10), %r13
    movq $1, %rcx
    addq %rcx, %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -560(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -560(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L9_42
.L9_43:
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_42:
    leaq -320(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq -560(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -336(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -560(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -96(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
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

    .p2align 4
    .globl lb_net_IpAddress_word
    .type lb_net_IpAddress_word, @function
lb_net_IpAddress_word:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -48(%rbp)
    movq %rsi, -64(%rbp)
    leaq -48(%rbp), %r10
    movq (%r10), %r12
    leaq -64(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq $1, %rcx
    addq %rcx, %r12
    movq $16, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rbx, %r13
    addq %r12, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl %r13d, %r13d
    movzwl %r13w, %r13d
.L10_2:
    movl $8, %ecx
    movl %r13d, %r14d
    shll %cl, %r14d
    movzwl %r14w, %r14d
    movq $1, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq $16, %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r15, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movl %r15d, %r15d
    movzwl %r15w, %r15d
    orl %r15d, %r14d
    movzwl %r14w, %r14d
    movl %r14d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_17parse_ipv4_number
    .type lb_net_17parse_ipv4_number, @function
lb_net_17parse_ipv4_number:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -64(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -64(%rbp), %rax
    movq %rax, -120(%rbp)
    movq -120(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -128(%rbp)
    movq -120(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -136(%rbp)
    movq -120(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -144(%rbp)
    movq -120(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -152(%rbp)
    movq -120(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -160(%rbp)
    movq -120(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -168(%rbp)
    movl $0, %eax
    movl %eax, -176(%rbp)
    movq $0, %rax
    movq %rax, -184(%rbp)
    movq $0, %rax
    movq %rax, -192(%rbp)
.L11_1:
    movq -192(%rbp), %rax
    movq $4, %rcx
    cmpq %rcx, %rax
    jae .L11_3
.L11_2:
    movq -184(%rbp), %rax
    movq %rax, %r14
    movl $0, %eax
    movl %eax, -200(%rbp)
.L11_4:
    movq -128(%rbp), %rcx
    cmpq %rcx, %r14
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L11_7
    jmp .L11_45
.L11_45:
    movl %r15d, %ebx
    jmp .L11_8
.L11_7:
    movq -136(%rbp), %rax
    movq %rax, %rbx
    addq %r14, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $48, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %ebx
.L11_8:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L11_9
    jmp .L11_46
.L11_46:
    movl %r15d, %ebx
    jmp .L11_10
.L11_9:
    movq -128(%rbp), %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -144(%rbp), %rax
    movq %rax, %rbx
    addq %r14, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $57, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %ebx
.L11_10:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L11_5
    jmp .L11_6
.L11_5:
    movq %r14, %rax
    movq -184(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq $3, %rcx
    cmpq %rcx, %rbx
    jne .L11_12
.L11_11:
    leaq -72(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    leaq -48(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_12:
.L11_13:
    movl -200(%rbp), %eax
    movl $10, %ecx
    mull %ecx
    jnc 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r15d
    movq -128(%rbp), %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -152(%rbp), %rax
    movq %rax, %rbx
    addq %r14, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $48, %ecx
    movl %ebx, %r13d
    subl %ecx, %r13d
    movzbl %r13b, %ebx
    cmpl %r13d, %ebx
    je .L11_15
.L11_16:
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_15:
    movl %r13d, %ebx
    movl %ebx, %eax
    movl %r15d, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %ebx
    movq $1, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r14
    movl %ebx, %eax
    movl %eax, -200(%rbp)
    jmp .L11_4
.L11_6:
    movq -184(%rbp), %rax
    cmpq %r14, %rax
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L11_47
    jmp .L11_20
.L11_47:
    movl %ebx, %r12d
    jmp .L11_21
.L11_20:
    movl -200(%rbp), %eax
    movl $255, %ecx
    cmpl %ecx, %eax
    seta %al
    movzbl %al, %r12d
.L11_21:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L11_17
    jmp .L11_18
.L11_17:
    leaq -80(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    leaq -48(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_18:
.L11_19:
    movq %r14, %rax
    movq -184(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq $1, %rcx
    cmpq %rcx, %rbx
    seta %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L11_26
    jmp .L11_48
.L11_48:
    movl %ebx, %r12d
    jmp .L11_27
.L11_26:
    movq -184(%rbp), %rax
    movq -128(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -160(%rbp), %rax
    movq -184(%rbp), %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $48, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L11_27:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L11_23
    jmp .L11_24
.L11_23:
    leaq -88(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    leaq -48(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_24:
.L11_25:
.L11_30:
    movl $8, %ecx
    movl -176(%rbp), %eax
    movl %eax, %ebx
    shll %cl, %ebx
    movl -200(%rbp), %ecx
    orl %ecx, %ebx
    movq -192(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq $4, %rcx
    cmpq %rcx, %r12
    jae .L11_32
.L11_31:
    movq -128(%rbp), %rax
    cmpq %r14, %rax
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L11_49
    jmp .L11_37
.L11_49:
    movl %r13d, %r15d
    jmp .L11_38
.L11_37:
    movq -128(%rbp), %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -168(%rbp), %rax
    movq %rax, %r13
    addq %r14, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $46, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r15d
.L11_38:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L11_34
    jmp .L11_35
.L11_34:
    leaq -96(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    leaq -48(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_35:
.L11_36:
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    jmp .L11_33
.L11_32:
    movq %r14, %r13
.L11_33:
    movl %ebx, %eax
    movl %eax, -176(%rbp)
    movq %r13, %rax
    movq %rax, -184(%rbp)
    movq %r12, %rax
    movq %rax, -192(%rbp)
    jmp .L11_1
.L11_3:
    leaq -64(%rbp), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq -184(%rbp), %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L11_41
.L11_40:
    leaq -104(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    leaq -48(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_41:
.L11_42:
    leaq -112(%rbp), %rbx
    movl -176(%rbp), %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq $4, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -48(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_11render_ipv4
    .type lb_net_11render_ipv4, @function
lb_net_11render_ipv4:
    pushq %rbp
    movq %rsp, %rbp
    subq $240, %rsp
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
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -96(%rbp)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -104(%rbp)
    leaq -56(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -112(%rbp)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -120(%rbp)
    leaq -72(%rbp), %rax
    movq %rax, -136(%rbp)
    movq -136(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -144(%rbp)
    movq -136(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -152(%rbp)
    movq -152(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -160(%rbp)
    leaq -72(%rbp), %rax
    movq %rax, -168(%rbp)
    movq -168(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -176(%rbp)
    movq -168(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -184(%rbp)
    movq -184(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -192(%rbp)
    leaq -72(%rbp), %rax
    movq %rax, -200(%rbp)
    movq -200(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -208(%rbp)
    movq -200(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -216(%rbp)
    movq -216(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -224(%rbp)
    movq %rbx, %rax
    movq %rax, -232(%rbp)
    movq $0, %rax
    movq %rax, -240(%rbp)
.L12_1:
    movq -240(%rbp), %rax
    movq $4, %rcx
    cmpq %rcx, %rax
    jae .L12_3
.L12_2:
    movq -240(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jbe .L12_5
.L12_4:
    movq -232(%rbp), %rax
    movq -104(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -96(%rbp), %rax
    movq -232(%rbp), %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $46, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq -232(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    jmp .L12_6
.L12_5:
    movq -232(%rbp), %rax
    movq %rax, %r14
.L12_6:
    movq -240(%rbp), %rax
    movq -120(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -112(%rbp), %rax
    movq -240(%rbp), %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movzbl %bl, %eax
    movl %eax, -128(%rbp)
    movl -128(%rbp), %eax
    movl $100, %ecx
    cmpl %ecx, %eax
    jb .L12_8
.L12_7:
    movq -160(%rbp), %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -144(%rbp), %rax
    movq %rax, %r12
    addq %r14, %r12
.L12_11:
    movl $100, %ecx
    movl -128(%rbp), %eax
    xorl %edx, %edx
    divl %ecx
    movl %eax, %r13d
    movzbl %r13b, %r13d
    movl $48, %ecx
    movl %r13d, %r15d
    addl %ecx, %r15d
    movzbl %r15b, %r13d
    cmpl %r15d, %r13d
    je .L12_12
.L12_13:
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_12:
    movq %r12, %r10
    movb %r15b, (%r10)
    movq $1, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    jmp .L12_9
.L12_8:
    movq %r14, %r13
.L12_9:
    movl -128(%rbp), %eax
    movl $10, %ecx
    cmpl %ecx, %eax
    jb .L12_15
.L12_14:
    movq -192(%rbp), %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_57(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -176(%rbp), %rax
    movq %rax, %r12
    addq %r13, %r12
.L12_18:
    movl $10, %ecx
    movl -128(%rbp), %eax
    xorl %edx, %edx
    divl %ecx
    movl %eax, %r14d
    movzbl %r14b, %r14d
.L12_20:
    movl $10, %ecx
    movl %r14d, %eax
    xorl %edx, %edx
    divl %ecx
    movl %edx, %r15d
    movzbl %r15b, %r15d
    movl $48, %ecx
    movl %r15d, %ebx
    addl %ecx, %ebx
    movzbl %bl, %r15d
    cmpl %ebx, %r15d
    je .L12_21
.L12_22:
    leaq .Ltext_57(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_21:
    movq %r12, %r10
    movb %bl, (%r10)
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    jmp .L12_16
.L12_15:
    movq %r13, %r14
.L12_16:
    movq -224(%rbp), %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -208(%rbp), %rax
    movq %rax, %rbx
    addq %r14, %rbx
.L12_24:
    movl $10, %ecx
    movl -128(%rbp), %eax
    xorl %edx, %edx
    divl %ecx
    movl %edx, %r12d
    movzbl %r12b, %r12d
    movl $48, %ecx
    movl %r12d, %r13d
    addl %ecx, %r13d
    movzbl %r13b, %r12d
    cmpl %r13d, %r12d
    je .L12_25
.L12_26:
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_25:
    movq %rbx, %r10
    movb %r13b, (%r10)
    movq $1, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq -240(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r12, %rax
    movq %rax, -232(%rbp)
    movq %r15, %rax
    movq %rax, -240(%rbp)
    jmp .L12_1
.L12_3:
    movq -232(%rbp), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_10parse_ipv6
    .type lb_net_10parse_ipv6, @function
lb_net_10parse_ipv6:
    pushq %rbp
    movq %rsp, %rbp
    subq $592, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -88(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -105(%rbp), %rax
    movq %rax, -448(%rbp)
    leaq -122(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movb $0, 16(%r11)
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq -448(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    leaq -144(%rbp), %rax
    movq %rax, -456(%rbp)
    leaq -160(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq -456(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -88(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -464(%rbp)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -472(%rbp)
    movq $0, %rax
    movq -472(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_69(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -464(%rbp), %r10
    movzbl (%r10), %r15d
    movl $58, %ecx
    cmpl %ecx, %r15d
    jne .L13_2
.L13_1:
    movq -472(%rbp), %rax
    movq $2, %rcx
    cmpq %rcx, %rax
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L13_107
    jmp .L13_7
.L13_107:
    movl %r15d, %ebx
    jmp .L13_8
.L13_7:
    movq $1, %rax
    movq -472(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_70(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -464(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $58, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L13_8:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L13_4
    jmp .L13_5
.L13_4:
    leaq -178(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movw $0, 16(%r11)
    leaq -66(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzwl 16(%r10), %eax
    movw %ax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $18, %rdx
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
.L13_5:
.L13_6:
    leaq -200(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    movq -456(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $2, %rax
    movq %rax, %rbx
    jmp .L13_3
.L13_2:
    movq $0, %rax
    movq %rax, %rbx
.L13_3:
    movq -448(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    movq %rax, -496(%rbp)
    movq -456(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -504(%rbp)
    leaq -384(%rbp), %rax
    movq %rax, -512(%rbp)
    movq -512(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -520(%rbp)
    movq %rbx, %rax
    movq %rax, -544(%rbp)
    movq $0, %rax
    movq %rax, -552(%rbp)
    movq $0, %rax
    movq %rax, -592(%rbp)
.L13_10:
    movq -544(%rbp), %rax
    movq -472(%rbp), %rcx
    cmpq %rcx, %rax
    jb .L13_11
.L13_108:
    movq -552(%rbp), %rax
    movq %rax, -584(%rbp)
    jmp .L13_12
.L13_11:
    movq -552(%rbp), %rax
    movq $8, %rcx
    cmpq %rcx, %rax
    jb .L13_14
.L13_13:
    leaq -218(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movw $0, 16(%r11)
    leaq -66(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzwl 16(%r10), %eax
    movw %ax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $18, %rdx
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
.L13_14:
.L13_15:
    movq -544(%rbp), %rax
    movq %rax, -560(%rbp)
    movl $0, %eax
    movl %eax, -568(%rbp)
.L13_17:
    movq -560(%rbp), %rax
    movq -472(%rbp), %rcx
    cmpq %rcx, %rax
    setb %al
    movzbl %al, %eax
    movl %eax, -480(%rbp)
    movl -480(%rbp), %eax
    testl %eax, %eax
    jne .L13_20
    jmp .L13_109
.L13_109:
    movl -480(%rbp), %eax
    movl %eax, %r12d
    jmp .L13_21
.L13_20:
    movq -464(%rbp), %rax
    movq -560(%rbp), %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $58, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L13_21:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L13_22
    jmp .L13_110
.L13_110:
    movl %r14d, %r12d
    jmp .L13_23
.L13_22:
    movq -560(%rbp), %rax
    movq -472(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_71(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -464(%rbp), %rax
    movq -560(%rbp), %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $46, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L13_23:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L13_18
    jmp .L13_19
.L13_18:
    movq -560(%rbp), %rax
    movq -544(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_72(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq $4, %rcx
    cmpq %rcx, %r12
    jne .L13_25
.L13_24:
    leaq -236(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movw $0, 16(%r11)
    leaq -66(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzwl 16(%r10), %eax
    movw %ax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $18, %rdx
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
.L13_25:
.L13_26:
    movq -560(%rbp), %rax
    movq -472(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_73(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -464(%rbp), %rax
    movq -560(%rbp), %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movzbl %r12b, %r12d
    movl $57, %ecx
    cmpl %ecx, %r12d
    ja .L13_29
.L13_28:
    movl $48, %ecx
    movl %r12d, %r15d
    subl %ecx, %r15d
    movzbl %r15b, %r14d
    cmpl %r15d, %r14d
    je .L13_31
.L13_32:
    leaq .Ltext_74(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_31:
    movl %r15d, %r12d
    movzwl %r12w, %r12d
    jmp .L13_30
.L13_29:
    movl $70, %ecx
    cmpl %ecx, %r12d
    ja .L13_34
.L13_33:
    movl $65, %ecx
    movl %r12d, %r15d
    subl %ecx, %r15d
    movzbl %r15b, %r14d
    cmpl %r15d, %r14d
    je .L13_36
.L13_37:
    leaq .Ltext_74(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_36:
    movl $10, %ecx
    movl %r15d, %r14d
    addl %ecx, %r14d
    movzbl %r14b, %r12d
    cmpl %r14d, %r12d
    je .L13_38
.L13_39:
    leaq .Ltext_74(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_38:
    movl %r14d, %r12d
    movzwl %r12w, %r12d
    jmp .L13_35
.L13_34:
    movl $97, %ecx
    movl %r12d, %r15d
    subl %ecx, %r15d
    movzbl %r15b, %r14d
    cmpl %r15d, %r14d
    je .L13_40
.L13_41:
    leaq .Ltext_74(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_40:
    movl $10, %ecx
    movl %r15d, %r14d
    addl %ecx, %r14d
    movzbl %r14b, %r12d
    cmpl %r14d, %r12d
    je .L13_42
.L13_43:
    leaq .Ltext_74(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_42:
    movl %r14d, %r12d
    movzwl %r12w, %r12d
.L13_35:
    movzwl %r12w, %r14d
    movl %r14d, %r12d
.L13_30:
    movzwl %r12w, %r14d
    movl -568(%rbp), %eax
    movzwl %ax, %r15d
.L13_45:
    movl $4, %ecx
    movl %r15d, %r12d
    shll %cl, %r12d
    movzwl %r12w, %r12d
    movzwl %r14w, %r13d
    orl %r13d, %r12d
    movq -560(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %rax
    movq %rax, -560(%rbp)
    movl %r12d, %eax
    movl %eax, -568(%rbp)
    jmp .L13_17
.L13_19:
    movl -480(%rbp), %eax
    testl %eax, %eax
    jne .L13_49
    jmp .L13_111
.L13_111:
    movl -480(%rbp), %eax
    movl %eax, %r12d
    jmp .L13_50
.L13_49:
    movq -464(%rbp), %rax
    movq -560(%rbp), %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $46, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L13_50:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L13_46
    jmp .L13_47
.L13_46:
    movq -552(%rbp), %rax
    movq $6, %rcx
    cmpq %rcx, %rax
    jbe .L13_52
.L13_51:
    leaq -254(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movw $0, 16(%r11)
    leaq -66(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzwl 16(%r10), %eax
    movw %ax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $18, %rdx
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
.L13_52:
.L13_53:
    movq -472(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -544(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_78(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -472(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_78(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -544(%rbp), %rax
    movq -472(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L13_55
.L13_56:
    leaq .Ltext_78(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_55:
    movq -464(%rbp), %rax
    movq -544(%rbp), %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -472(%rbp), %rax
    movq -544(%rbp), %rcx
    movq %rax, %r12
    subq %rcx, %r12
    leaq -272(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq -288(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_net_17parse_ipv4_number@PLT
    leaq -296(%rbp), %r10
    movq %rax, 0(%r10)
    leaq -296(%rbp), %r12
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_57
    jmp .L13_58
.L13_57:
    movq %r12, %r10
    movl (%r10), %eax
    movl %eax, -488(%rbp)
    jmp .L13_59
.L13_58:
    leaq -314(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movw $0, 16(%r11)
    leaq -66(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzwl 16(%r10), %eax
    movw %ax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $18, %rdx
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
.L13_59:
    movq -552(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq -448(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %rax, %r14
.L13_61:
    movq $4, %rcx
    cmpq %rcx, %r14
    jae .L13_63
.L13_62:
    movq %r12, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_79(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq $16, %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_79(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r15, %rax
    addq %r13, %rax
    movq %rax, -576(%rbp)
    movq $3, %rax
    movq %rax, %r15
    subq %r14, %r15
    movq %r15, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_79(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movl %ebx, %r15d
    movq $32, %rcx
    cmpq %rcx, %r15
    jb .L13_65
.L13_64:
    leaq .Ltext_79(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_65:
    movl %ebx, %ecx
    movl -488(%rbp), %eax
    movl %eax, %r15d
    shrl %cl, %r15d
    movl $255, %ecx
    andl %ecx, %r15d
    movl %r15d, %r15d
    movzbl %r15b, %r15d
    movq -576(%rbp), %r10
    movb %r15b, (%r10)
    movq $1, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r14
    jmp .L13_61
.L13_63:
    movq -552(%rbp), %rax
    movq $2, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, -584(%rbp)
    jmp .L13_12
.L13_47:
.L13_48:
    movq -544(%rbp), %rax
    movq -560(%rbp), %rcx
    cmpq %rcx, %rax
    jne .L13_68
.L13_67:
    leaq -332(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movw $0, 16(%r11)
    leaq -66(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzwl 16(%r10), %eax
    movw %ax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $18, %rdx
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
.L13_68:
.L13_69:
    movq -552(%rbp), %rax
    movq $2, %rcx
    movq %rax, %rbx
    imulq %rcx, %rbx
    movq $16, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_82(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -496(%rbp), %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl -568(%rbp), %eax
    movzwl %ax, %r13d
.L13_72:
    movl $8, %ecx
    movl %r13d, %r14d
    shrl %cl, %r14d
    movzwl %r14w, %r14d
    movl %r14d, %r14d
    movzbl %r14b, %r14d
    movq %r12, %r10
    movb %r14b, (%r10)
    movq $1, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq $16, %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_83(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -496(%rbp), %rax
    movq %r14, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $255, %ecx
    movl %r13d, %r15d
    andl %ecx, %r15d
    movl %r15d, %r15d
    movzbl %r15b, %r15d
    movq %r14, %r10
    movb %r15b, (%r10)
    movq -552(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq -472(%rbp), %rax
    movq -560(%rbp), %rcx
    cmpq %rcx, %rax
    jne .L13_74
.L13_73:
    movq %r14, %rax
    movq %rax, -584(%rbp)
    jmp .L13_12
.L13_74:
.L13_75:
    movq -560(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_85(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -472(%rbp), %rax
    cmpq %rbx, %rax
    jne .L13_78
.L13_77:
    leaq -350(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movw $0, 16(%r11)
    leaq -66(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzwl 16(%r10), %eax
    movw %ax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $18, %rdx
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
.L13_78:
.L13_79:
    movq -472(%rbp), %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_86(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -464(%rbp), %rax
    movq %rax, %r12
    addq %rbx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $58, %ecx
    cmpl %ecx, %r12d
    jne .L13_82
.L13_81:
    movq -504(%rbp), %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L13_85
.L13_84:
    leaq -368(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movw $0, 16(%r11)
    leaq -66(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzwl 16(%r10), %eax
    movw %ax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $18, %rdx
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
.L13_85:
.L13_86:
    movq -512(%rbp), %r10
    movq %r14, (%r10)
    movl $1, %eax
    movq -520(%rbp), %r10
    movb %al, (%r10)
    movq -512(%rbp), %r10
    movq -456(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r13
    jmp .L13_83
.L13_82:
    movq %rbx, %r12
    movq -592(%rbp), %rax
    movq %rax, %r13
.L13_83:
    movq %r12, %rax
    movq %rax, -544(%rbp)
    movq %r14, %rax
    movq %rax, -552(%rbp)
    movq %r13, %rax
    movq %rax, -592(%rbp)
    jmp .L13_10
.L13_12:
    movq -456(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_91
    jmp .L13_89
.L13_91:
.L13_88:
    movq -584(%rbp), %rax
    movq $8, %rcx
    cmpq %rcx, %rax
    jb .L13_93
.L13_92:
    leaq -402(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movw $0, 16(%r11)
    leaq -66(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzwl 16(%r10), %eax
    movw %ax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $18, %rdx
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
.L13_93:
.L13_94:
    movq $8, %rax
    movq -584(%rbp), %rcx
    movq %rax, %rbx
    subq %rcx, %rbx
    movq %rbx, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_88(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -584(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq -448(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
.L13_96:
    movq -592(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_90(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -528(%rbp)
    movq -528(%rbp), %rcx
    cmpq %rcx, %r12
    jbe .L13_98
.L13_97:
    movq %r12, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_91(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -536(%rbp)
    movq %rbx, %rax
    movq -536(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_92(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq $16, %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_92(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    addq %r13, %r15
    movq -536(%rbp), %rax
    movq $16, %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_92(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -536(%rbp), %rax
    movq %rax, %r14
    addq %r13, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq %r15, %r10
    movb %r14b, (%r10)
    movq -536(%rbp), %rax
    movq %rax, %r12
    jmp .L13_96
.L13_98:
    movq -448(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq -528(%rbp), %rax
    movq %rax, %r13
.L13_99:
    movq %rbx, %rax
    movq -528(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_94(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    cmpq %r14, %r13
    jae .L13_101
.L13_100:
    movq $16, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_95(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r12, %r14
    addq %r13, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r13
    jmp .L13_99
.L13_101:
    jmp .L13_90
.L13_89:
    movq -584(%rbp), %rax
    movq $8, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L13_103
.L13_102:
    leaq -420(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movw $0, 16(%r11)
    leaq -66(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzwl 16(%r10), %eax
    movw %ax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $18, %rdx
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
.L13_103:
.L13_104:
.L13_90:
    leaq -438(%rbp), %rbx
    movq -448(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    movq $17, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -66(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzwl 16(%r10), %eax
    movw %ax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $18, %rdx
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
    .weak lb_memory_copy_0g1_u8
    .type lb_memory_copy_0g1_u8, @function
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
    jne .L14_11
    jmp .L14_4
.L14_11:
    movl %r13d, %r14d
    jmp .L14_5
.L14_4:
    leaq -64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L14_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L14_1
    jmp .L14_2
.L14_1:
    leaq .Ltext_20(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_98(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L14_3
.L14_2:
.L14_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L14_7
.L14_6:
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
    jne .L14_9
    jmp .L14_10
.L14_10:
    leaq .Ltext_99(%rip), %rdi
    leaq .Ltext_100(%rip), %rsi
    call lb_core_7trap_at@PLT
.L14_9:
    jmp .L14_8
.L14_7:
.L14_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .weak lb_memory_move_0g1_u8
    .type lb_memory_move_0g1_u8, @function
lb_memory_move_0g1_u8:
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
    jne .L15_11
    jmp .L15_4
.L15_11:
    movl %r13d, %r14d
    jmp .L15_5
.L15_4:
    leaq -64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L15_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L15_1
    jmp .L15_2
.L15_1:
    leaq .Ltext_20(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_101(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L15_3
.L15_2:
.L15_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L15_7
.L15_6:
    movq %r12, %r10
    movq (%r10), %r13
    leaq -64(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %rdi
    movq %r14, %rsi
    movq %rbx, %rdx
    call memmove@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L15_9
    jmp .L15_10
.L15_10:
    leaq .Ltext_102(%rip), %rdi
    leaq .Ltext_100(%rip), %rsi
    call lb_core_7trap_at@PLT
.L15_9:
    jmp .L15_8
.L15_7:
.L15_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_10ip_address_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/net/ip_address.lucb:16:13"
.Ltext_1:
    .asciz "shift count out of range"
.Ltext_2:
    .asciz "src/std/net/ip_address.lucb:17:13"
.Ltext_3:
    .asciz "unreachable"
.Ltext_4:
    .asciz "src/std/net/ip_address.lucb:18:9"
.Ltext_5:
    .asciz "an IP address needs four or sixteen octets"
.Ltext_6:
    .asciz "src/std/net/ip_address.lucb:26:9"
.Ltext_7:
    .asciz "src/std/net/ip_address.lucb:37:13"
.Ltext_8:
    .asciz "src/std/net/ip_address.lucb:45:13"
.Ltext_9:
    .asciz "src/std/net/ip_address.lucb:49:9"
.Ltext_10:
    .asciz "src/std/net/ip_address.lucb:52:9"
.Ltext_11:
    .asciz "src/std/net/ip_address.lucb:58:9"
.Ltext_12:
    .asciz "src/std/net/ip_address.lucb:65:13"
.Ltext_13:
    .asciz "src/std/net/ip_address.lucb:67:13"
.Ltext_14:
    .asciz "src/std/net/ip_address.lucb:68:9"
.Ltext_15:
    .asciz "src/std/net/ip_address.lucb:76:13"
.Ltext_16:
    .asciz "src/std/net/ip_address.lucb:78:13"
.Ltext_17:
    .asciz "src/std/net/ip_address.lucb:79:9"
.Ltext_18:
    .asciz "the destination cannot hold the IP address octets"
.Ltext_19:
    .asciz "src/std/net/ip_address.lucb:87:9"
.Ltext_20:
    .asciz "index out of bounds"
.Ltext_21:
    .asciz "src/std/net/ip_address.lucb:88:9"
.Ltext_22:
    .asciz "src/std/net/ip_address.lucb:99:13"
.Ltext_23:
    .asciz "::ffff:"
.Ltext_24:
    .asciz "src/std/net/ip_address.lucb:102:13"
.Ltext_25:
    .asciz "src/std/net/ip_address.lucb:109:21"
.Ltext_26:
    .asciz "src/std/net/ip_address.lucb:113:21"
.Ltext_27:
    .asciz "src/std/net/ip_address.lucb:114:17"
.Ltext_28:
    .asciz "src/std/net/ip_address.lucb:116:21"
.Ltext_29:
    .asciz "src/std/net/ip_address.lucb:120:21"
.Ltext_30:
    .asciz "src/std/net/ip_address.lucb:121:21"
.Ltext_31:
    .asciz "src/std/net/ip_address.lucb:122:21"
.Ltext_32:
    .asciz "src/std/net/ip_address.lucb:123:21"
.Ltext_33:
    .asciz "src/std/net/ip_address.lucb:125:17"
.Ltext_34:
    .asciz "src/std/net/ip_address.lucb:126:21"
.Ltext_35:
    .asciz "src/std/net/ip_address.lucb:127:21"
.Ltext_36:
    .asciz "src/std/net/ip_address.lucb:129:17"
.Ltext_37:
    .asciz "the destination cannot hold the formatted IP address"
.Ltext_38:
    .asciz "src/std/net/ip_address.lucb:133:9"
.Ltext_39:
    .asciz "src/std/net/ip_address.lucb:136:9"
.Ltext_40:
    .asciz "src/std/net/ip_address.lucb:145:9"
.Ltext_41:
    .asciz "src/std/net/ip_address.lucb:146:13"
.Ltext_42:
    .asciz "src/std/net/ip_address.lucb:148:13"
.Ltext_43:
    .asciz "integer overflow"
.Ltext_44:
    .asciz "src/std/net/ip_address.lucb:149:13"
.Ltext_45:
    .asciz "src/std/net/ip_address.lucb:152:9"
.Ltext_46:
    .asciz "src/std/net/ip_address.lucb:154:9"
.Ltext_47:
    .asciz "src/std/net/ip_address.lucb:155:9"
.Ltext_48:
    .asciz "src/std/net/ip_address.lucb:157:13"
.Ltext_49:
    .asciz "src/std/net/ip_address.lucb:159:13"
.Ltext_50:
    .asciz "src/std/net/ip_address.lucb:162:5"
.Ltext_51:
    .asciz "src/std/net/ip_address.lucb:169:13"
.Ltext_52:
    .asciz "src/std/net/ip_address.lucb:170:13"
.Ltext_53:
    .asciz "src/std/net/ip_address.lucb:171:9"
.Ltext_54:
    .asciz "src/std/net/ip_address.lucb:173:13"
.Ltext_55:
    .asciz "division by zero"
.Ltext_56:
    .asciz "src/std/net/ip_address.lucb:174:13"
.Ltext_57:
    .asciz "src/std/net/ip_address.lucb:176:13"
.Ltext_58:
    .asciz "src/std/net/ip_address.lucb:177:13"
.Ltext_59:
    .asciz "src/std/net/ip_address.lucb:178:9"
.Ltext_60:
    .asciz "src/std/net/ip_address.lucb:179:9"
.Ltext_61:
    .asciz "src/std/net/ip_address.lucb:180:9"
.Ltext_62:
    .asciz "src/std/net/ip_address.lucb:181:5"
.Ltext_63:
    .asciz "0123456789abcdef"
.Ltext_64:
    .asciz "src/std/net/ip_address.lucb:189:9"
.Ltext_65:
    .asciz "src/std/net/ip_address.lucb:191:13"
.Ltext_66:
    .asciz "src/std/net/ip_address.lucb:192:13"
.Ltext_67:
    .asciz "src/std/net/ip_address.lucb:194:9"
.Ltext_68:
    .asciz "src/std/net/ip_address.lucb:195:5"
.Ltext_69:
    .asciz "src/std/net/ip_address.lucb:204:5"
.Ltext_70:
    .asciz "src/std/net/ip_address.lucb:205:9"
.Ltext_71:
    .asciz "src/std/net/ip_address.lucb:214:9"
.Ltext_72:
    .asciz "src/std/net/ip_address.lucb:215:13"
.Ltext_73:
    .asciz "src/std/net/ip_address.lucb:217:13"
.Ltext_74:
    .asciz "src/std/net/ip_address.lucb:218:13"
.Ltext_75:
    .asciz "src/std/net/ip_address.lucb:219:13"
.Ltext_76:
    .asciz "src/std/net/ip_address.lucb:220:13"
.Ltext_77:
    .asciz "src/std/net/ip_address.lucb:221:9"
.Ltext_78:
    .asciz "src/std/net/ip_address.lucb:224:13"
.Ltext_79:
    .asciz "src/std/net/ip_address.lucb:227:17"
.Ltext_80:
    .asciz "src/std/net/ip_address.lucb:228:17"
.Ltext_81:
    .asciz "src/std/net/ip_address.lucb:229:13"
.Ltext_82:
    .asciz "src/std/net/ip_address.lucb:234:9"
.Ltext_83:
    .asciz "src/std/net/ip_address.lucb:235:9"
.Ltext_84:
    .asciz "src/std/net/ip_address.lucb:236:9"
.Ltext_85:
    .asciz "src/std/net/ip_address.lucb:239:9"
.Ltext_86:
    .asciz "src/std/net/ip_address.lucb:242:9"
.Ltext_87:
    .asciz "src/std/net/ip_address.lucb:246:13"
.Ltext_88:
    .asciz "src/std/net/ip_address.lucb:250:9"
.Ltext_89:
    .asciz "src/std/net/ip_address.lucb:251:9"
.Ltext_90:
    .asciz "src/std/net/ip_address.lucb:252:9"
.Ltext_91:
    .asciz "src/std/net/ip_address.lucb:253:13"
.Ltext_92:
    .asciz "src/std/net/ip_address.lucb:254:13"
.Ltext_93:
    .asciz "src/std/net/ip_address.lucb:255:9"
.Ltext_94:
    .asciz "src/std/net/ip_address.lucb:256:9"
.Ltext_95:
    .asciz "src/std/net/ip_address.lucb:257:13"
.Ltext_96:
    .asciz "src/std/net/ip_address.lucb:258:13"
.Ltext_97:
    .asciz "src/std/net/ip_address.lucb:261:5"
.Ltext_98:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_99:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_100:
    .asciz "null_foreign"
.Ltext_101:
    .asciz "src/std/memory.lucb:334:9"
.Ltext_102:
    .asciz "src/std/memory.lucb:336:9"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
