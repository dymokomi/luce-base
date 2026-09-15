    .text

    .p2align 4
    .globl lb_net_address_0init
    .type lb_net_address_0init, @function
lb_net_address_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_SocketAddress_loopback
    .type lb_net_SocketAddress_loopback, @function
lb_net_SocketAddress_loopback:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movl %esi, -80(%rbp)
    movl %edx, -96(%rbp)
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L1_2
.L1_1:
    leaq -120(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $2130706433, %esi
    leaq -137(%rbp), %rdi
    call lb_net_IpAddress_9from_ipv4@PLT
    leaq -137(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movzwl (%r10), %r12d
    movq $18, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movw %r12w, (%r10)
    leaq -64(%rbp), %r12
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_4:
    jmp .L1_3
.L1_2:
.L1_3:
    leaq -154(%rbp), %r12
    leaq -171(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movb $0, 16(%r11)
    movq %r13, %r10
    movb %bl, (%r10)
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $15, %rcx
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -196(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movzwl (%r10), %r12d
    movq $18, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movw %r12w, (%r10)
    leaq -64(%rbp), %r12
    movq %r13, %r10
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_5:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_SocketAddress_any
    .type lb_net_SocketAddress_any, @function
lb_net_SocketAddress_any:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movl %esi, -72(%rbp)
    movl %edx, -88(%rbp)
    leaq -112(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -129(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movb $0, 16(%r11)
    leaq -88(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movzwl (%r10), %r12d
    movq $18, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movw %r12w, (%r10)
    leaq -56(%rbp), %r12
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_1:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_SocketAddress_parse
    .type lb_net_SocketAddress_parse, @function
lb_net_SocketAddress_parse:
    pushq %rbp
    movq %rsp, %rbp
    subq $608, %rsp
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
    movq (%r10), %rax
    movq %rax, -528(%rbp)
    movq -528(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L3_60
    jmp .L3_4
.L3_60:
    movl %r13d, %r14d
    jmp .L3_5
.L3_4:
    movq -528(%rbp), %rax
    movq $64, %rcx
    cmpq %rcx, %rax
    seta %al
    movzbl %al, %r14d
.L3_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L3_1
    jmp .L3_2
.L3_1:
    leaq -124(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    leaq -76(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $28, %rdx
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
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -536(%rbp)
    movq $0, %rax
    movq -528(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -536(%rbp), %r10
    movzbl (%r10), %r14d
    movl $91, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movzbl %r14b, %eax
    movl %eax, -544(%rbp)
    movl -544(%rbp), %eax
    testl %eax, %eax
    jne .L3_7
    jmp .L3_8
.L3_7:
    movq $1, %rax
    movq %rax, %rbx
.L3_10:
    movq -528(%rbp), %rcx
    cmpq %rcx, %rbx
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L3_13
    jmp .L3_61
.L3_61:
    movl %r15d, %r14d
    jmp .L3_14
.L3_13:
    movq -536(%rbp), %rax
    movq %rax, %r14
    addq %rbx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $93, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
.L3_14:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L3_11
    jmp .L3_12
.L3_11:
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r14, %rbx
    jmp .L3_10
.L3_12:
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq -528(%rbp), %rcx
    cmpq %rcx, %r14
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L3_62
    jmp .L3_18
.L3_62:
    movl %r15d, %r14d
    jmp .L3_19
.L3_18:
    movq -536(%rbp), %rax
    movq %rax, %r15
    addq %r14, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movl $58, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl %r15d, %r14d
.L3_19:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L3_15
    jmp .L3_16
.L3_15:
    leaq -152(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    leaq -76(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $28, %rdx
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
    jmp .L3_17
.L3_16:
.L3_17:
    movq %rbx, %rax
    movq $2, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -552(%rbp)
    movq $1, %rax
    movq %rax, -568(%rbp)
.L3_21:
    movq -568(%rbp), %rax
    cmpq %rbx, %rax
    jb .L3_22
.L3_63:
    movq %rbx, %r14
    movl $0, %eax
    movl %eax, -576(%rbp)
    jmp .L3_23
.L3_22:
    movq -568(%rbp), %rax
    movq -528(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -536(%rbp), %rax
    movq -568(%rbp), %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $37, %ecx
    cmpl %ecx, %r14d
    jne .L3_25
.L3_24:
    movq -568(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq -528(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r13
    jbe .L3_27
.L3_28:
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_27:
    movq -536(%rbp), %rax
    movq %rax, %r14
    addq %r13, %r14
    movq %rbx, %r12
    subq %r13, %r12
    leaq -168(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq %r12, (%r10)
    leaq -184(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq %r15, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movl $4294967295, %edx
    movq $10, %rcx
    call lb_net_21parse_endpoint_number@PLT
    leaq -192(%rbp), %r10
    movq %rax, 0(%r10)
    leaq -192(%rbp), %r14
    movq $4, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_29
    jmp .L3_30
.L3_29:
    movq %r14, %r10
    movl (%r10), %ebx
    jmp .L3_31
.L3_30:
    leaq -220(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    leaq -76(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $28, %rdx
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
.L3_32:
.L3_31:
    movq -568(%rbp), %rax
    movq %rax, %r14
    movl %ebx, %eax
    movl %eax, -576(%rbp)
    jmp .L3_23
.L3_33:
    jmp .L3_26
.L3_25:
.L3_26:
    movq -568(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %rax
    movq %rax, -568(%rbp)
    jmp .L3_21
.L3_23:
    movq $1, %rax
    movq %rax, %rbx
    movq %r14, %r12
    movq -552(%rbp), %rax
    movq %rax, -584(%rbp)
    movl -576(%rbp), %eax
    movl %eax, -592(%rbp)
    jmp .L3_9
.L3_8:
    movq $0, %rax
    movq %rax, %r12
.L3_34:
    movq -528(%rbp), %rcx
    cmpq %rcx, %r12
    setb %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L3_37
    jmp .L3_64
.L3_64:
    movl %ebx, %r13d
    jmp .L3_38
.L3_37:
    movq -536(%rbp), %rax
    movq %rax, %rbx
    addq %r12, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $58, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L3_38:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L3_35
    jmp .L3_36
.L3_35:
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %rbx, %r12
    jmp .L3_34
.L3_36:
    movq -528(%rbp), %rax
    cmpq %r12, %rax
    jne .L3_40
.L3_39:
    leaq -248(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    leaq -76(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $28, %rdx
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
.L3_42:
    jmp .L3_41
.L3_40:
.L3_41:
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq $0, %rax
    movq %rax, %rbx
    movq %r13, %rax
    movq %rax, -584(%rbp)
    movl $0, %eax
    movl %eax, -592(%rbp)
.L3_9:
    leaq -265(%rbp), %rax
    movq %rax, -600(%rbp)
    movq -528(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    movq %rax, -560(%rbp)
    movq -560(%rbp), %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -560(%rbp), %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %rbx
    jbe .L3_43
.L3_44:
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_43:
    movq -536(%rbp), %rax
    movq %rax, %r15
    addq %rbx, %r15
    movq %r12, %r14
    subq %rbx, %r14
    leaq -288(%rbp), %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    leaq -304(%rbp), %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -322(%rbp), %rdi
    call lb_net_IpAddress_parse@PLT
    leaq -322(%rbp), %r14
    movq $17, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L3_45
    jmp .L3_46
.L3_45:
    leaq -339(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    jmp .L3_47
.L3_46:
    leaq -368(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    leaq -76(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $28, %rdx
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
.L3_48:
.L3_47:
    movq %rbx, %r10
    movq -600(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    movq -600(%rbp), %r10
    movzbl (%r10), %r12d
    movl $1, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl -544(%rbp), %eax
    cmpl %r12d, %eax
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L3_50
.L3_49:
    leaq -396(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    leaq -76(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $28, %rdx
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
    jmp .L3_51
.L3_50:
.L3_51:
    movq -584(%rbp), %rax
    movq -560(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -528(%rbp), %rax
    movq -560(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -584(%rbp), %rax
    movq -528(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L3_53
.L3_54:
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_53:
    movq -536(%rbp), %rax
    movq -584(%rbp), %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -528(%rbp), %rax
    movq -584(%rbp), %rcx
    movq %rax, %r12
    subq %rcx, %r12
    leaq -416(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq -432(%rbp), %r13
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
    movl $65535, %edx
    movq $5, %rcx
    call lb_net_21parse_endpoint_number@PLT
    leaq -440(%rbp), %r10
    movq %rax, 0(%r10)
    leaq -440(%rbp), %r12
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_55
    jmp .L3_56
.L3_55:
    movq %r12, %r10
    movl (%r10), %ebx
    jmp .L3_57
.L3_56:
    leaq -468(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    leaq -76(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $28, %rdx
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
.L3_58:
.L3_57:
    leaq -492(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq -600(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    movl %ebx, %r13d
    movzwl %r13w, %r13d
    movq $18, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movw %r13w, (%r10)
    movq $20, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl -592(%rbp), %eax
    movq %r13, %r10
    movl %eax, (%r10)
    leaq -520(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -76(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $28, %rdx
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
.L3_59:
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_SocketAddress_equals
    .type lb_net_SocketAddress_equals, @function
lb_net_SocketAddress_equals:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -40(%rbp)
    leaq 16(%rbp), %r10
    leaq -64(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq -40(%rbp), %r10
    movq (%r10), %r13
    leaq -64(%rbp), %rbx
    subq $32, %rsp
    movq %rbx, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    movq %r13, %rdi
    call lb_net_IpAddress_equals@PLT
    addq $32, %rsp
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L4_1
    jmp .L4_6
.L4_6:
    movl %r12d, %r14d
    jmp .L4_2
.L4_1:
    movq $18, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzwl (%r10), %r12d
    movq $18, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzwl (%r10), %r14d
    cmpl %r14d, %r12d
    sete %al
    movzbl %al, %r14d
.L4_2:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L4_3
    jmp .L4_7
.L4_7:
    movl %r12d, %ebx
    jmp .L4_4
.L4_3:
    movq $20, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq $20, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    cmpl %r14d, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L4_4:
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
.L4_5:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_SocketAddress_format
    .type lb_net_SocketAddress_format, @function
lb_net_SocketAddress_format:
    pushq %rbp
    movq %rsp, %rbp
    subq $512, %rsp
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
    movq (%r10), %r12
    movq %r12, %rsi
    leaq -152(%rbp), %rdi
    call lb_net_SocketAddress_validate@PLT
    leaq -152(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_2
    jmp .L5_1
.L5_2:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
.L5_1:
    leaq -210(%rbp), %rax
    movq %rax, -480(%rbp)
    movq -480(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movw $0, 56(%r11)
    movq %r12, %r10
    movzbl (%r10), %r13d
    movl $1, %ecx
    cmpl %ecx, %r13d
    jne .L5_5
.L5_4:
    movl $91, %eax
    movq -480(%rbp), %r10
    movb %al, (%r10)
    leaq -232(%rbp), %r13
.L5_7:
    movq -480(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    leaq -248(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $39, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r12, %rsi
    movq %r15, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -296(%rbp), %rdi
    call lb_net_IpAddress_format@PLT
    leaq -296(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L5_10
    jmp .L5_9
.L5_10:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq -96(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
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
.L5_9:
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq $20, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -488(%rbp)
    movq -488(%rbp), %r10
    movl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L5_13
.L5_12:
    movq $58, %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -480(%rbp), %rax
    movq %rax, %rbx
    addq %r14, %rbx
    movl $37, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -488(%rbp), %r10
    movl (%r10), %ebx
    leaq -312(%rbp), %r13
    movq -480(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $58, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $1, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movl %ebx, %edi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %rcx
    call lb_net_22render_endpoint_number@PLT
    movq %rax, %rbx
    jmp .L5_14
.L5_13:
    movq %r14, %rbx
.L5_14:
    movq $58, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -480(%rbp), %rax
    movq %rax, %r13
    addq %rbx, %r13
    movl $93, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $1, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    jmp .L5_6
.L5_5:
    leaq -328(%rbp), %rbx
.L5_15:
    leaq -344(%rbp), %r13
    movq -480(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $39, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r12, %rsi
    movq %r13, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -392(%rbp), %rdi
    call lb_net_IpAddress_format@PLT
    leaq -392(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L5_18
    jmp .L5_17
.L5_18:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -96(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
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
.L5_17:
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
.L5_6:
    movq $58, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -480(%rbp), %rax
    movq %rax, %rbx
    addq %r13, %rbx
    movl $58, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $18, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
    movl %ebx, %ebx
    leaq -408(%rbp), %r14
    movq -480(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -496(%rbp)
    movq $58, %rax
    movq -496(%rbp), %r10
    movq %rax, (%r10)
    movq $1, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -504(%rbp)
    movl %ebx, %edi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -504(%rbp), %rcx
    call lb_net_22render_endpoint_number@PLT
    movq %rax, %rbx
    leaq -120(%rbp), %r14
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -512(%rbp)
    movq -512(%rbp), %r10
    movq (%r10), %r15
    cmpq %rbx, %r15
    jae .L5_21
.L5_20:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_full(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_30(%rip), %r13
    leaq -424(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $56, %rax
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
.L5_21:
.L5_22:
    leaq -440(%rbp), %r12
    movq -480(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $58, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %rbx, %r8
    call lb_memory_move_0g1_u8@PLT
    movq %r14, %r10
    movq (%r10), %r13
    movq -512(%rbp), %r10
    movq (%r10), %r12
    movq $1, %rcx
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %rbx
    jb 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %rbx, %rax
    jbe .L5_24
.L5_25:
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_24:
    leaq -456(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq -472(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    leaq -96(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r14, %rsi
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
    .globl lb_net_SocketAddress_validate
    .type lb_net_SocketAddress_validate, @function
lb_net_SocketAddress_validate:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -80(%rbp)
    leaq -80(%rbp), %r10
    movq (%r10), %r14
    movq %r14, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L6_4
    jmp .L6_13
.L6_13:
    movl %r13d, %ebx
    jmp .L6_5
.L6_4:
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L6_5:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L6_1
    jmp .L6_2
.L6_1:
    leaq -72(%rbp), %rbx
    leaq lb_net_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_32(%rip), %r12
    leaq -96(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $26, %rax
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_6:
    jmp .L6_3
.L6_2:
.L6_3:
    testl %r12d, %r12d
    jne .L6_10
    jmp .L6_14
.L6_14:
    movl %r12d, %ebx
    jmp .L6_11
.L6_10:
    movq $20, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L6_11:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L6_7
    jmp .L6_8
.L6_7:
    leaq -72(%rbp), %rbx
    leaq lb_net_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_33(%rip), %r12
    leaq -112(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $45, %rax
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_12:
    jmp .L6_9
.L6_8:
.L6_9:
    leaq -72(%rbp), %rbx
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
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_SocketAddress_12write_native
    .type lb_net_SocketAddress_12write_native, @function
lb_net_SocketAddress_12write_native:
    pushq %rbp
    movq %rsp, %rbp
    subq $272, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    movq %rdx, -112(%rbp)
    leaq -96(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rsi
    leaq -144(%rbp), %rdi
    call lb_net_SocketAddress_validate@PLT
    leaq -144(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_2
    jmp .L7_1
.L7_2:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
.L7_1:
    movq %r12, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L7_5
.L7_4:
    movq %r12, %rdi
    call lb_net_IpAddress_11ipv4_number@PLT
    leaq -152(%rbp), %r10
    movq %rax, 0(%r10)
    leaq -152(%rbp), %r13
    movq $4, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_7
    jmp .L7_8
.L7_7:
    movq %r13, %r10
    movl (%r10), %ebx
    jmp .L7_9
.L7_8:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_34(%rip), %r13
    leaq -168(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $29, %rax
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
.L7_9:
    leaq -112(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -264(%rbp)
    leaq -184(%rbp), %r15
    movq %r15, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_net_inet(%rip), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movl %r13d, %edi
    movl $16, %esi
    call lb_net_11family_word@PLT
    movl %eax, %r13d
    movq %r15, %r10
    movw %r13w, (%r10)
    movq $18, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzwl (%r10), %r13d
    leaq -232(%rbp), %r10
    movl %r13d, (%r10)
    leaq -232(%rbp), %r13
    movq %r13, %r10
    movzwl (%r10), %r13d
.L7_14:
    movl $8, %ecx
    movl %r13d, %r12d
    shll %cl, %r12d
    movzwl %r12w, %r12d
.L7_16:
    movl $8, %ecx
    movl %r13d, %r14d
    shrl %cl, %r14d
    movzwl %r14w, %r14d
    orl %r12d, %r14d
    movzwl %r14w, %r14d
    leaq -240(%rbp), %r10
    movl %r14d, (%r10)
.L7_18:
    movq $2, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movw %r14w, (%r10)
    movl %ebx, %edi
    call lb_net_swap32@PLT
    movl %eax, %r12d
    movq $4, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq %r15, %r10
    movq -264(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -88(%rbp), %r12
    movl $16, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
.L7_5:
.L7_6:
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -256(%rbp)
    leaq -212(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    leaq lb_net_inet6(%rip), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    movl $28, %esi
    call lb_net_11family_word@PLT
    movl %eax, %ebx
    movq %r14, %r10
    movw %bx, (%r10)
    movq $18, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
    leaq -232(%rbp), %r10
    movl %ebx, (%r10)
    leaq -232(%rbp), %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
.L7_20:
    movl $8, %ecx
    movl %ebx, %r15d
    shll %cl, %r15d
    movzwl %r15w, %r15d
.L7_22:
    movl $8, %ecx
    movl %ebx, %r13d
    shrl %cl, %r13d
    movzwl %r13w, %r13d
    orl %r15d, %r13d
    movzwl %r13w, %r13d
    leaq -248(%rbp), %r10
    movl %r13d, (%r10)
.L7_24:
    movq $2, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movw %r13w, (%r10)
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $20, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl %ebx, (%r10)
    movq %r14, %r10
    movq -256(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    leaq -88(%rbp), %rbx
    movl $28, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq $32, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $0, %eax
    movq %r15, %r10
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
    .globl lb_net_14decode_address
    .type lb_net_14decode_address, @function
lb_net_14decode_address:
    pushq %rbp
    movq %rsp, %rbp
    subq $592, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -120(%rbp)
    movl %edx, -136(%rbp)
    leaq -136(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    jae .L8_2
.L8_1:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_36(%rip), %r13
    leaq -152(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $51, %rax
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
.L8_2:
.L8_3:
    leaq -120(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -584(%rbp)
    movq -584(%rbp), %rax
    leaq -400(%rbp), %r10
    movq %rax, (%r10)
    leaq -402(%rbp), %r13
    movq %r13, %rdi
    movq -584(%rbp), %rsi
    movq $2, %rdx
    call memcpy@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L8_31
    jmp .L8_32
.L8_32:
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_60(%rip), %rsi
    call lb_core_7trap_at@PLT
.L8_31:
    movq %r13, %r10
    movzwl (%r10), %r14d
    movzwl %r14w, %r14d
    leaq -416(%rbp), %r10
    movl %r14d, (%r10)
.L8_34:
    leaq lb_platform_macos(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L8_5
    jmp .L8_6
.L8_5:
    movzwl %r14w, %r13d
.L8_9:
    movl $8, %ecx
    movl %r13d, %r15d
    shrl %cl, %r15d
    movzwl %r15w, %r15d
    movl %r15d, %r15d
    jmp .L8_7
.L8_6:
    movzwl %r14w, %r13d
    movl %r13d, %r15d
.L8_7:
    leaq lb_net_inet(%rip), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    cmpl %r15d, %r13d
    jne .L8_11
.L8_10:
    movl $16, %ecx
    cmpl %ecx, %ebx
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L8_55
    jmp .L8_16
.L8_55:
    movl %r12d, %ebx
    jmp .L8_17
.L8_16:
    movzwl %r14w, %ebx
    movl %r13d, %edi
    movl $16, %esi
    call lb_net_11family_word@PLT
    movl %eax, %r12d
    cmpl %r12d, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L8_17:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L8_13
    jmp .L8_14
.L8_13:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_39(%rip), %r13
    leaq -168(%rbp), %r14
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
.L8_14:
.L8_15:
    leaq -184(%rbp), %r13
    movq -584(%rbp), %rax
    leaq -448(%rbp), %r10
    movq %rax, (%r10)
    leaq -464(%rbp), %rbx
    movq %rbx, %rdi
    movq -584(%rbp), %rsi
    movq $16, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L8_35
    jmp .L8_36
.L8_36:
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_60(%rip), %rsi
    call lb_core_7trap_at@PLT
.L8_35:
    leaq -432(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    leaq -200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L8_38:
    leaq -200(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -224(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq $4, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %edi
    call lb_net_swap32@PLT
    movl %eax, %ebx
    movl %ebx, %esi
    leaq -241(%rbp), %rdi
    call lb_net_IpAddress_9from_ipv4@PLT
    leaq -241(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    movq $2, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
    leaq -480(%rbp), %r10
    movl %ebx, (%r10)
    leaq -480(%rbp), %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
.L8_40:
    movl $8, %ecx
    movl %ebx, %r13d
    shll %cl, %r13d
    movzwl %r13w, %r13d
.L8_42:
    movl $8, %ecx
    movl %ebx, %r14d
    shrl %cl, %r14d
    movzwl %r14w, %r14d
    orl %r13d, %r14d
    movzwl %r14w, %r14d
    leaq -488(%rbp), %r10
    movl %r14d, (%r10)
.L8_44:
    movq $18, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movw %r14w, (%r10)
    leaq -104(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
.L8_11:
.L8_12:
    leaq lb_net_inet6(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    cmpl %r15d, %r12d
    jne .L8_21
.L8_20:
    movl $28, %ecx
    cmpl %ecx, %ebx
    setb %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L8_56
    jmp .L8_26
.L8_56:
    movl %r13d, %ebx
    jmp .L8_27
.L8_26:
    movzwl %r14w, %ebx
    movl %r12d, %edi
    movl $28, %esi
    call lb_net_11family_word@PLT
    movl %eax, %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L8_27:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L8_23
    jmp .L8_24
.L8_23:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_40(%rip), %r13
    leaq -264(%rbp), %r14
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
.L8_24:
.L8_25:
    leaq -292(%rbp), %r13
    movq -584(%rbp), %rax
    leaq -536(%rbp), %r10
    movq %rax, (%r10)
    leaq -564(%rbp), %rbx
    movq %rbx, %rdi
    movq -584(%rbp), %rsi
    movq $28, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L8_45
    jmp .L8_46
.L8_46:
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_60(%rip), %rsi
    call lb_core_7trap_at@PLT
.L8_45:
    leaq -516(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %r10
    leaq -320(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
.L8_48:
    leaq -320(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    leaq -344(%rbp), %r15
    movq %r15, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -361(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movb $0, 16(%r11)
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $1, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movzbl 16(%r10), %eax
    movb %al, 16(%r11)
    movq $2, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
    leaq -480(%rbp), %r10
    movl %ebx, (%r10)
    leaq -480(%rbp), %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
.L8_50:
    movl $8, %ecx
    movl %ebx, %r12d
    shll %cl, %r12d
    movzwl %r12w, %r12d
.L8_52:
    movl $8, %ecx
    movl %ebx, %r14d
    shrl %cl, %r14d
    movzwl %r14w, %r14d
    orl %r12d, %r14d
    movzwl %r14w, %r14d
    leaq -576(%rbp), %r10
    movl %r14d, (%r10)
.L8_54:
    movq $18, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movw %r14w, (%r10)
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movq $20, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    leaq -104(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
.L8_21:
.L8_22:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_41(%rip), %r13
    leaq -384(%rbp), %r14
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

    .p2align 4
    .globl lb_net_21parse_endpoint_number
    .type lb_net_21parse_endpoint_number, @function
lb_net_21parse_endpoint_number:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -64(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    movl %edx, -80(%rbp)
    movq %rcx, -96(%rbp)
    leaq -64(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -136(%rbp)
    movq -136(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L9_26
    jmp .L9_4
.L9_26:
    movl %r13d, %r14d
    jmp .L9_5
.L9_4:
    leaq -96(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq -136(%rbp), %rax
    cmpq %r13, %rax
    seta %al
    movzbl %al, %r14d
.L9_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L9_1
    jmp .L9_2
.L9_1:
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
.L9_2:
.L9_3:
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -144(%rbp)
    leaq -80(%rbp), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl $0, %eax
    movl %eax, -152(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L9_7:
    movq -136(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L9_10
.L9_8:
    movq -144(%rbp), %rax
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
    jne .L9_27
    jmp .L9_14
.L9_27:
    movl %r12d, %r13d
    jmp .L9_15
.L9_14:
    movl $57, %ecx
    cmpl %ecx, %ebx
    seta %al
    movzbl %al, %r13d
.L9_15:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L9_11
    jmp .L9_12
.L9_11:
    leaq -112(%rbp), %rbx
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
.L9_12:
.L9_13:
    movl $48, %ecx
    movl %ebx, %r13d
    subl %ecx, %r13d
    movzbl %r13b, %r12d
    cmpl %r13d, %r12d
    je .L9_17
.L9_18:
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_17:
    movl %r13d, %ebx
    movl %r14d, %eax
    movl %ebx, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
.L9_23:
    movl $10, %ecx
    movl %r12d, %eax
    xorl %edx, %edx
    divl %ecx
    movl %eax, %r13d
    movl -152(%rbp), %eax
    cmpl %r13d, %eax
    jbe .L9_20
.L9_19:
    leaq -120(%rbp), %rbx
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
.L9_20:
.L9_21:
    movl -152(%rbp), %eax
    movl $10, %ecx
    mull %ecx
    jnc 1f
    leaq .Ltext_47(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
    movl %ebx, %eax
    movl %r12d, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_47(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
.L9_9:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl %r12d, %eax
    movl %eax, -152(%rbp)
    movq %rbx, %r15
    jmp .L9_7
.L9_10:
    leaq -128(%rbp), %rbx
    movl -152(%rbp), %eax
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
    .globl lb_net_22render_endpoint_number
    .type lb_net_22render_endpoint_number, @function
lb_net_22render_endpoint_number:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movl %edi, -56(%rbp)
    leaq -72(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movq %rcx, -88(%rbp)
    leaq -104(%rbp), %rax
    movq %rax, -112(%rbp)
    movq -112(%rbp), %r11
    movq $0, 0(%r11)
    movw $0, 8(%r11)
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq $0, %rax
    movq %rax, %r13
.L10_1:
.L10_2:
    movq $10, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -112(%rbp), %rax
    movq %rax, %r14
    addq %r13, %r14
.L10_5:
    movl $10, %ecx
    movl %r12d, %eax
    xorl %edx, %edx
    divl %ecx
    movl %edx, %r15d
    movl %r15d, %r15d
    movzbl %r15b, %r15d
    movl $48, %ecx
    movl %r15d, %ebx
    addl %ecx, %ebx
    movzbl %bl, %r15d
    cmpl %ebx, %r15d
    je .L10_6
.L10_7:
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
.L10_6:
    movq %r14, %r10
    movb %bl, (%r10)
    movq $1, %rcx
    movq %r13, %r15
    addq %rcx, %r15
.L10_9:
    movl $10, %ecx
    movl %r12d, %eax
    xorl %edx, %edx
    divl %ecx
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L10_11
.L10_10:
    movq %r15, %rbx
    jmp .L10_3
.L10_11:
.L10_12:
    movq %r15, %r13
    movl %ebx, %r12d
    jmp .L10_1
.L10_3:
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -72(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %r15
.L10_14:
    movq $0, %rcx
    cmpq %rcx, %r15
    jbe .L10_16
.L10_15:
    movq %r15, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -120(%rbp)
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r14, %rax
    addq %r12, %rax
    movq %rax, -128(%rbp)
    movq -120(%rbp), %rax
    movq $10, %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -112(%rbp), %rax
    movq -120(%rbp), %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq -128(%rbp), %r10
    movb %bl, (%r10)
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq -120(%rbp), %rax
    movq %rax, %r15
    movq %rbx, %r12
    jmp .L10_14
.L10_16:
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_swap32
    .type lb_net_swap32, @function
lb_net_swap32:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movl %edi, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
.L11_2:
    movl $24, %ecx
    movl %ebx, %r12d
    shll %cl, %r12d
.L11_4:
    movl $8, %ecx
    movl %ebx, %r13d
    shll %cl, %r13d
    movl $16711680, %ecx
    andl %ecx, %r13d
    orl %r12d, %r13d
.L11_6:
    movl $8, %ecx
    movl %ebx, %r12d
    shrl %cl, %r12d
    movl $65280, %ecx
    andl %ecx, %r12d
    orl %r13d, %r12d
.L11_8:
    movl $24, %ecx
    movl %ebx, %r13d
    shrl %cl, %r13d
    orl %r12d, %r13d
    movl %r13d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_memory_move_0g1_u8
    .type lb_memory_move_0g1_u8, @function
    .weak lb_memory_move_0g1_u8
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
    jne .L12_11
    jmp .L12_4
.L12_11:
    movl %r13d, %r14d
    jmp .L12_5
.L12_4:
    leaq -64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L12_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L12_1
    jmp .L12_2
.L12_1:
    leaq .Ltext_11(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_58(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L12_3
.L12_2:
.L12_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L12_7
.L12_6:
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
    jne .L12_9
    jmp .L12_10
.L12_10:
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_60(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_9:
    jmp .L12_8
.L12_7:
.L12_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_memory_read_0g1_u16
    .type lb_memory_read_0g1_u16, @function
    .weak lb_memory_read_0g1_u16
lb_memory_read_0g1_u16:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -34(%rbp), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $2, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L13_1
    jmp .L13_2
.L13_2:
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_60(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_1:
    movq %rbx, %r10
    movzwl (%r10), %r12d
    movzwl %r12w, %r12d
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L13_3:
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_read_0g1_net_NativeIpv4Address
    .type lb_memory_read_0g1_net_NativeIpv4Address, @function
    .weak lb_memory_read_0g1_net_NativeIpv4Address
lb_memory_read_0g1_net_NativeIpv4Address:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -48(%rbp)
    leaq -64(%rbp), %rbx
    leaq -48(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $16, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L14_1
    jmp .L14_2
.L14_2:
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_60(%rip), %rsi
    call lb_core_7trap_at@PLT
.L14_1:
    leaq -32(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L14_3:
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_read_0g1_net_NativeIpv6Address
    .type lb_memory_read_0g1_net_NativeIpv6Address, @function
    .weak lb_memory_read_0g1_net_NativeIpv6Address
lb_memory_read_0g1_net_NativeIpv6Address:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %rsi, -72(%rbp)
    leaq -100(%rbp), %rbx
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $28, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L15_1
    jmp .L15_2
.L15_2:
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_60(%rip), %rsi
    call lb_core_7trap_at@PLT
.L15_1:
    leaq -52(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $28, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L15_3:
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_address_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/net/address.lucb:13:9"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/net/address.lucb:14:9"
.Ltext_3:
    .asciz "src/std/net/address.lucb:17:9"
.Ltext_4:
    .asciz "src/std/net/address.lucb:29:9"
.Ltext_5:
    .asciz "src/std/net/address.lucb:33:13"
.Ltext_6:
    .asciz "src/std/net/address.lucb:34:17"
.Ltext_7:
    .asciz "src/std/net/address.lucb:35:13"
.Ltext_8:
    .asciz "src/std/net/address.lucb:38:13"
.Ltext_9:
    .asciz "src/std/net/address.lucb:41:17"
.Ltext_10:
    .asciz "src/std/net/address.lucb:43:21"
.Ltext_11:
    .asciz "index out of bounds"
.Ltext_12:
    .asciz "src/std/net/address.lucb:46:17"
.Ltext_13:
    .asciz "src/std/net/address.lucb:48:13"
.Ltext_14:
    .asciz "src/std/net/address.lucb:49:17"
.Ltext_15:
    .asciz "src/std/net/address.lucb:52:13"
.Ltext_16:
    .asciz "src/std/net/address.lucb:53:9"
.Ltext_17:
    .asciz "src/std/net/address.lucb:56:9"
.Ltext_18:
    .asciz "src/std/net/address.lucb:57:9"
.Ltext_19:
    .asciz "src/std/net/address.lucb:60:9"
.Ltext_20:
    .asciz "src/std/net/address.lucb:70:13"
.Ltext_21:
    .asciz "src/std/net/address.lucb:71:13"
.Ltext_22:
    .asciz "src/std/net/address.lucb:72:13"
.Ltext_23:
    .asciz "src/std/net/address.lucb:74:17"
.Ltext_24:
    .asciz "src/std/net/address.lucb:75:17"
.Ltext_25:
    .asciz "src/std/net/address.lucb:76:13"
.Ltext_26:
    .asciz "src/std/net/address.lucb:77:13"
.Ltext_27:
    .asciz "src/std/net/address.lucb:79:13"
.Ltext_28:
    .asciz "src/std/net/address.lucb:81:9"
.Ltext_29:
    .asciz "src/std/net/address.lucb:82:9"
.Ltext_30:
    .asciz "the destination cannot hold the formatted socket address"
.Ltext_31:
    .asciz "src/std/net/address.lucb:86:9"
.Ltext_32:
    .asciz "unknown IP address version"
.Ltext_33:
    .asciz "IPv4 endpoints cannot have an interface scope"
.Ltext_34:
    .asciz "IPv4 address bits are missing"
.Ltext_35:
    .asciz "src/std/net/address.lucb:101:9"
.Ltext_36:
    .asciz "the socket address is shorter than its family field"
.Ltext_37:
    .asciz "shift count out of range"
.Ltext_38:
    .asciz "src/std/net/address.lucb:107:5"
.Ltext_39:
    .asciz "the IPv4 socket address has an invalid layout"
.Ltext_40:
    .asciz "the IPv6 socket address has an invalid layout"
.Ltext_41:
    .asciz "the socket address is not IPv4 or IPv6"
.Ltext_42:
    .asciz "src/std/net/address.lucb:118:5"
.Ltext_43:
    .asciz "integer overflow"
.Ltext_44:
    .asciz "src/std/net/address.lucb:127:9"
.Ltext_45:
    .asciz "src/std/net/address.lucb:128:9"
.Ltext_46:
    .asciz "division by zero"
.Ltext_47:
    .asciz "src/std/net/address.lucb:130:9"
.Ltext_48:
    .asciz "src/std/net/address.lucb:131:5"
.Ltext_49:
    .asciz "src/std/net/address.lucb:138:9"
.Ltext_50:
    .asciz "src/std/net/address.lucb:139:9"
.Ltext_51:
    .asciz "src/std/net/address.lucb:140:9"
.Ltext_52:
    .asciz "src/std/net/address.lucb:145:9"
.Ltext_53:
    .asciz "src/std/net/address.lucb:146:9"
.Ltext_54:
    .asciz "src/std/net/address.lucb:147:9"
.Ltext_55:
    .asciz "src/std/net/address.lucb:148:5"
.Ltext_56:
    .asciz "src/std/net/address.lucb:152:5"
.Ltext_57:
    .asciz "src/std/net/address.lucb:155:5"
.Ltext_58:
    .asciz "src/std/memory.lucb:332:9"
.Ltext_59:
    .asciz "src/std/memory.lucb:334:9"
.Ltext_60:
    .asciz "null_foreign"
.Ltext_61:
    .asciz "src/std/memory.lucb:342:5"
.Ltext_62:
    .asciz "src/std/memory.lucb:343:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
