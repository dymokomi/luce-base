    .text

    .p2align 4
    .globl lb_net_options_0init
    .type lb_net_options_0init, @function
lb_net_options_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    leaq lb_net_16nonblocking_flag(%rip), %rbx
    movl $2048, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_21receive_buffer_option(%rip), %rbx
    movl $8, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_18send_buffer_option(%rip), %rbx
    movl $7, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_16keepalive_option(%rip), %rbx
    movl $9, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_19socket_status_flags
    .type lb_net_19socket_status_flags, @function
lb_net_19socket_status_flags:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movl %esi, -104(%rbp)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    movl $3, %esi
    movl $0, %eax
    call fcntl@PLT
    movl %eax, %r12d
.L1_1:
    movl $0, %ecx
    cmpl %ecx, %r12d
    setl %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L1_4
    jmp .L1_11
.L1_11:
    movl %r13d, %r14d
    jmp .L1_5
.L1_4:
    call lb_net_12socket_errno@PLT
    movl %eax, %r14d
    movl $4, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
.L1_5:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L1_2
    jmp .L1_3
.L1_2:
    movl %ebx, %edi
    movl $3, %esi
    movl $0, %eax
    call fcntl@PLT
    movl %eax, %r12d
    jmp .L1_1
.L1_3:
    testl %r13d, %r13d
    jne .L1_6
    jmp .L1_7
.L1_6:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    call lb_net_12socket_errno@PLT
    movl %eax, %r13d
    movl %r13d, %edi
    call lb_net_12socket_error@PLT
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_0(%rip), %r13
    leaq -120(%rbp), %r14
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
.L1_9:
    jmp .L1_8
.L1_7:
.L1_8:
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movl %r12d, (%r10)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
.L1_10:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_15set_nonblocking
    .type lb_net_15set_nonblocking, @function
lb_net_15set_nonblocking:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movl %esi, -96(%rbp)
    movl %edx, -112(%rbp)
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl %ebx, %esi
    leaq -152(%rbp), %rdi
    call lb_net_19socket_status_flags@PLT
    leaq -152(%rbp), %r13
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_2
    jmp .L2_1
.L2_2:
    movq $8, %rcx
    movq %r13, %rbx
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
.L2_3:
.L2_1:
    movq %r13, %r10
    movslq (%r10), %r12
    leaq -112(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L2_4
    jmp .L2_5
.L2_4:
    movl $2048, %ecx
    movl %r12d, %r13d
    orl %ecx, %r13d
    jmp .L2_6
.L2_5:
    movl $4294965247, %ecx
    movl %r12d, %r13d
    andl %ecx, %r13d
.L2_6:
    cmpl %r13d, %r12d
    jne .L2_8
.L2_7:
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
.L2_10:
    jmp .L2_9
.L2_8:
.L2_9:
    movl %ebx, %edi
    movl $4, %esi
    movl %r13d, %edx
    movl $0, %eax
    call fcntl@PLT
    movl %eax, %r12d
.L2_11:
    movl $0, %ecx
    cmpl %ecx, %r12d
    setl %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L2_14
    jmp .L2_20
.L2_20:
    movl %r14d, %r12d
    jmp .L2_15
.L2_14:
    call lb_net_12socket_errno@PLT
    movl %eax, %r12d
    movl $4, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L2_15:
    movzbl %r12b, %r15d
    testl %r15d, %r15d
    jne .L2_12
    jmp .L2_13
.L2_12:
    movl %ebx, %edi
    movl $4, %esi
    movl %r13d, %edx
    movl $0, %eax
    call fcntl@PLT
    movl %eax, %r12d
    jmp .L2_11
.L2_13:
    testl %r14d, %r14d
    jne .L2_16
    jmp .L2_17
.L2_16:
    leaq -80(%rbp), %rbx
    call lb_net_12socket_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_net_12socket_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_3(%rip), %r12
    leaq -168(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $44, %rax
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
.L2_19:
    jmp .L2_18
.L2_17:
.L2_18:
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
    .globl lb_net_18get_socket_integer
    .type lb_net_18get_socket_integer, @function
lb_net_18get_socket_integer:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movl %esi, -104(%rbp)
    movl %edx, -120(%rbp)
    movl %ecx, -136(%rbp)
    leaq -140(%rbp), %rax
    movq %rax, -184(%rbp)
    movl $0, %eax
    movq -184(%rbp), %r10
    movl %eax, (%r10)
    leaq -144(%rbp), %r12
    movl $4, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq -104(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %rax
    movq %rax, -192(%rbp)
    leaq -120(%rbp), %r14
    movq %r14, %r10
    movslq (%r10), %r14
    leaq -136(%rbp), %r15
    movq %r15, %r10
    movslq (%r10), %r15
    movl -192(%rbp), %edi
    movl %r14d, %esi
    movl %r15d, %edx
    movq -184(%rbp), %rcx
    movq %r12, %r8
    call getsockopt@PLT
    movl %eax, %ebx
    movl %ebx, %eax
    movl %eax, -200(%rbp)
.L3_1:
    movl -200(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    setl %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L3_4
    jmp .L3_15
.L3_15:
    movl %r13d, %ebx
    jmp .L3_5
.L3_4:
    call lb_net_12socket_errno@PLT
    movl %eax, %ebx
    movl $4, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L3_5:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L3_2
    jmp .L3_3
.L3_2:
    movl $4, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movl -192(%rbp), %edi
    movl %r14d, %esi
    movl %r15d, %edx
    movq -184(%rbp), %rcx
    movq %r12, %r8
    call getsockopt@PLT
    movl %eax, %ebx
    movl %ebx, %eax
    movl %eax, -200(%rbp)
    jmp .L3_1
.L3_3:
    movl -200(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L3_7
.L3_6:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    call lb_net_12socket_errno@PLT
    movl %eax, %r13d
    movl %r13d, %edi
    call lb_net_12socket_error@PLT
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_4(%rip), %r13
    leaq -160(%rbp), %r14
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
.L3_9:
    jmp .L3_8
.L3_7:
.L3_8:
    movq %r12, %r10
    movl (%r10), %ebx
    movl $4, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L3_11
.L3_10:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_5(%rip), %r13
    leaq -176(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $46, %rax
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
.L3_13:
    jmp .L3_12
.L3_11:
.L3_12:
    movq -184(%rbp), %r10
    movslq (%r10), %rbx
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
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
.L3_14:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_17set_socket_buffer
    .type lb_net_17set_socket_buffer, @function
lb_net_17set_socket_buffer:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movl %esi, -80(%rbp)
    movl %edx, -96(%rbp)
    movl %ecx, -112(%rbp)
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jg .L4_2
.L4_1:
    leaq -64(%rbp), %rbx
    leaq lb_net_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_7(%rip), %r12
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $37, %rax
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_4:
    jmp .L4_3
.L4_2:
.L4_3:
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq -96(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movl %r12d, %esi
    movl $1, %edx
    movl %r13d, %ecx
    movl %ebx, %r8d
    leaq -160(%rbp), %rdi
    call lb_net_18set_socket_integer@PLT
    leaq -160(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L4_6
    jmp .L4_5
.L4_6:
    leaq -64(%rbp), %rbx
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_7:
.L4_5:
    leaq -64(%rbp), %rbx
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
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_options_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "socket status flags could not be queried"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/net/options.lucb:13:5"
.Ltext_3:
    .asciz "socket nonblocking mode could not be changed"
.Ltext_4:
    .asciz "the socket option could not be queried"
.Ltext_5:
    .asciz "the socket option has an invalid result layout"
.Ltext_6:
    .asciz "src/std/net/options.lucb:45:5"
.Ltext_7:
    .asciz "a socket buffer size must be positive"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_net_16nonblocking_flag
    .type lb_net_16nonblocking_flag, @object
    .p2align 2
lb_net_16nonblocking_flag:
    .zero 4

    .bss
    .globl lb_net_21receive_buffer_option
    .type lb_net_21receive_buffer_option, @object
    .p2align 2
lb_net_21receive_buffer_option:
    .zero 4

    .bss
    .globl lb_net_18send_buffer_option
    .type lb_net_18send_buffer_option, @object
    .p2align 2
lb_net_18send_buffer_option:
    .zero 4

    .bss
    .globl lb_net_16keepalive_option
    .type lb_net_16keepalive_option, @object
    .p2align 2
lb_net_16keepalive_option:
    .zero 4

    .section .note.GNU-stack,"",@progbits
