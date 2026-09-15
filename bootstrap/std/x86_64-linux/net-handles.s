    .text

    .p2align 4
    .globl lb_net_handles_0init
    .type lb_net_handles_0init, @function
lb_net_handles_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    leaq lb_net_14transfer_limit(%rip), %rbx
    movq $1073741824, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_SocketHandle_create
    .type lb_net_SocketHandle_create, @function
lb_net_SocketHandle_create:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movl %esi, -104(%rbp)
    movl %edx, -120(%rbp)
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_1
    jmp .L1_2
.L1_1:
    movl $0, %eax
    movl %eax, %ebx
    jmp .L1_3
.L1_2:
    leaq lb_net_20socket_close_on_exec(%rip), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
.L1_3:
    leaq -120(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_5
.L1_4:
    leaq lb_net_inet(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    jmp .L1_6
.L1_5:
    leaq lb_net_inet6(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
.L1_6:
    leaq -104(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    orl %ebx, %r13d
    movl %r12d, %edi
    movl %r13d, %esi
    movl $0, %edx
    call socket@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jge .L1_8
.L1_7:
    leaq -88(%rbp), %rbx
    movq $16, %rcx
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
    leaq -136(%rbp), %r14
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_10:
    jmp .L1_9
.L1_8:
.L1_9:
    leaq -152(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    movl $0, 8(%r11)
    leaq -160(%rbp), %r12
    movq %r12, %r10
    movl %r13d, (%r10)
    movq $4, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -88(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movl 8(%r10), %eax
    movl %eax, 8(%r11)
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_11:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_SocketHandle_adopt
    .type lb_net_SocketHandle_adopt, @function
lb_net_SocketHandle_adopt:
    pushq %rbp
    movq %rsp, %rbp
    subq $224, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movl %esi, -112(%rbp)
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jge .L2_2
.L2_1:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_3(%rip), %r13
    leaq -128(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $32, %rax
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
.L2_4:
    jmp .L2_3
.L2_2:
.L2_3:
    leaq lb_net_20get_descriptor_flags(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r13
    movl %ebx, %edi
    movl %r13d, %esi
    movl $0, %eax
    call fcntl@PLT
    movl %eax, %r13d
    leaq lb_net_18socket_interrupted(%rip), %r14
    movl %r13d, %eax
    movl %eax, -216(%rbp)
.L2_5:
    movl -216(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    setl %al
    movzbl %al, %eax
    movl %eax, -192(%rbp)
    movl -192(%rbp), %eax
    testl %eax, %eax
    jne .L2_8
    jmp .L2_27
.L2_27:
    movl -192(%rbp), %eax
    movl %eax, %r13d
    jmp .L2_9
.L2_8:
    call lb_net_12socket_errno@PLT
    movl %eax, %r13d
    movq %r14, %r10
    movslq (%r10), %r15
    cmpl %r15d, %r13d
    sete %al
    movzbl %al, %r13d
.L2_9:
    movzbl %r13b, %r15d
    testl %r15d, %r15d
    jne .L2_6
    jmp .L2_7
.L2_6:
    movq %r12, %r10
    movslq (%r10), %r13
    movl %ebx, %edi
    movl %r13d, %esi
    movl $0, %eax
    call fcntl@PLT
    movl %eax, %r13d
    movl %r13d, %eax
    movl %eax, -216(%rbp)
    jmp .L2_5
.L2_7:
    movl -192(%rbp), %eax
    testl %eax, %eax
    jne .L2_10
    jmp .L2_11
.L2_10:
    call lb_net_12socket_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_net_12socket_error@PLT
    movl %eax, %r12d
    movl %ebx, %edi
    call lb_net_close@PLT
    movl %eax, %ebx
    leaq -96(%rbp), %r13
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl %r12d, (%r10)
    leaq .Ltext_4(%rip), %r12
    leaq -144(%rbp), %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq $44, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %rsi
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
.L2_13:
    jmp .L2_12
.L2_11:
.L2_12:
    leaq lb_net_24descriptor_close_on_exec(%rip), %rax
    movq %rax, -200(%rbp)
    movq -200(%rbp), %r10
    movslq (%r10), %r13
    movl -216(%rbp), %ecx
    movl %r13d, %r14d
    andl %ecx, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L2_15
.L2_14:
    leaq lb_net_20set_descriptor_flags(%rip), %r14
    movq %r14, %r10
    movslq (%r10), %r15
    movl -216(%rbp), %ecx
    movl %r13d, %r12d
    orl %ecx, %r12d
    movl %ebx, %edi
    movl %r15d, %esi
    movl %r12d, %edx
    movl $0, %eax
    call fcntl@PLT
    movl %eax, %r12d
    leaq lb_net_18socket_interrupted(%rip), %r15
.L2_17:
    movl $0, %ecx
    cmpl %ecx, %r12d
    setl %al
    movzbl %al, %eax
    movl %eax, -208(%rbp)
    movl -208(%rbp), %eax
    testl %eax, %eax
    jne .L2_20
    jmp .L2_28
.L2_28:
    movl -208(%rbp), %eax
    movl %eax, %r12d
    jmp .L2_21
.L2_20:
    call lb_net_12socket_errno@PLT
    movl %eax, %r12d
    movq %r15, %r10
    movslq (%r10), %r13
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r12d
.L2_21:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L2_18
    jmp .L2_19
.L2_18:
    movq %r14, %r10
    movslq (%r10), %r12
    movq -200(%rbp), %r10
    movslq (%r10), %r13
    movl -216(%rbp), %ecx
    orl %ecx, %r13d
    movl %ebx, %edi
    movl %r12d, %esi
    movl %r13d, %edx
    movl $0, %eax
    call fcntl@PLT
    movl %eax, %r12d
    jmp .L2_17
.L2_19:
    movl -208(%rbp), %eax
    testl %eax, %eax
    jne .L2_22
    jmp .L2_23
.L2_22:
    call lb_net_12socket_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_net_12socket_error@PLT
    movl %eax, %r12d
    movl %ebx, %edi
    call lb_net_close@PLT
    movl %eax, %ebx
    leaq -96(%rbp), %r13
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl %r12d, (%r10)
    leaq .Ltext_5(%rip), %r12
    leaq -160(%rbp), %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq $44, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %rsi
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
.L2_25:
    jmp .L2_24
.L2_23:
.L2_24:
    jmp .L2_16
.L2_15:
.L2_16:
    leaq -176(%rbp), %r12
    movq %r12, %r11
    movq $0, 0(%r11)
    movl $0, 8(%r11)
    leaq -184(%rbp), %r13
    movq %r13, %r10
    movl %ebx, (%r10)
    movq $4, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r13, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -96(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movl 8(%r10), %eax
    movl %eax, 8(%r11)
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %rsi
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
.L2_26:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_SocketHandle_require
    .type lb_net_SocketHandle_require, @function
lb_net_SocketHandle_require:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -88(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %r12
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_1
    jmp .L3_2
.L3_1:
    movq %r12, %r10
    movslq (%r10), %rbx
    jmp .L3_3
.L3_2:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_7(%rip), %r13
    leaq -104(%rbp), %r14
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
.L3_4:
.L3_3:
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_5:
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_SocketHandle_close
    .type lb_net_SocketHandle_close, @function
lb_net_SocketHandle_close:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %rsi, -72(%rbp)
    leaq -72(%rbp), %r10
    movq (%r10), %r12
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_1
    jmp .L4_2
.L4_1:
    movq %r12, %r10
    movslq (%r10), %rbx
    jmp .L4_3
.L4_2:
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
.L4_4:
.L4_3:
    leaq -80(%rbp), %r13
    movq %r13, %r11
    movq $0, 0(%r11)
    movq %r13, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movl %ebx, %edi
    call lb_net_close@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L4_6
.L4_5:
    leaq -64(%rbp), %rbx
    call lb_net_12socket_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_net_12socket_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_9(%rip), %r12
    leaq -96(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $30, %rax
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
.L4_8:
    jmp .L4_7
.L4_6:
.L4_7:
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

    .p2align 4
    .globl lb_net_SocketHandle_destroy
    .type lb_net_SocketHandle_destroy, @function
lb_net_SocketHandle_destroy:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -24(%rbp)
    leaq -24(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -80(%rbp), %rdi
    call lb_net_SocketHandle_close@PLT
    leaq -80(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_4
    jmp .L5_3
.L5_4:
    leaq -48(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L5_1
.L5_3:
    jmp .L5_2
.L5_1:
.L5_2:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_14socket_address
    .type lb_net_14socket_address, @function
lb_net_14socket_address:
    pushq %rbp
    movq %rsp, %rbp
    subq $288, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movl %esi, -120(%rbp)
    movl %edx, -136(%rbp)
    leaq -164(%rbp), %rax
    movq %rax, -264(%rbp)
    movq -264(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    leaq -168(%rbp), %r12
    movl $28, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq -120(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %rax
    movq %rax, -272(%rbp)
    leaq -136(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl -272(%rbp), %edi
    movq -264(%rbp), %rsi
    movq %r12, %rdx
    movl %r14d, %ecx
    call lb_net_13query_address@PLT
    movl %eax, %r15d
    leaq lb_net_18socket_interrupted(%rip), %rbx
    movl %r15d, %eax
    movl %eax, -280(%rbp)
.L6_1:
    movl -280(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    setl %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L6_4
    jmp .L6_18
.L6_18:
    movl %r13d, %r15d
    jmp .L6_5
.L6_4:
    call lb_net_12socket_errno@PLT
    movl %eax, %r13d
    movq %rbx, %r10
    movslq (%r10), %r15
    cmpl %r15d, %r13d
    sete %al
    movzbl %al, %r15d
.L6_5:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L6_2
    jmp .L6_3
.L6_2:
    movl $28, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movl -272(%rbp), %edi
    movq -264(%rbp), %rsi
    movq %r12, %rdx
    movl %r14d, %ecx
    call lb_net_13query_address@PLT
    movl %eax, %r13d
    movl %r13d, %eax
    movl %eax, -280(%rbp)
    jmp .L6_1
.L6_3:
    movl -280(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L6_7
.L6_6:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    call lb_net_12socket_errno@PLT
    movl %eax, %r13d
    movl %r13d, %edi
    call lb_net_12socket_error@PLT
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_10(%rip), %r13
    leaq -184(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $39, %rax
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
.L6_9:
    jmp .L6_8
.L6_7:
.L6_8:
    movq %r12, %r10
    movl (%r10), %ebx
    movl $28, %ecx
    cmpl %ecx, %ebx
    jbe .L6_11
.L6_10:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_11(%rip), %r13
    leaq -200(%rbp), %r14
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
.L6_13:
    jmp .L6_12
.L6_11:
.L6_12:
    movq -264(%rbp), %rsi
    movl %ebx, %edx
    leaq -256(%rbp), %rdi
    call lb_net_14decode_address@PLT
    leaq -256(%rbp), %r13
    movq $48, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L6_15
    jmp .L6_14
.L6_15:
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -104(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
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
.L6_16:
.L6_14:
    leaq -104(%rbp), %rbx
    movq %r13, %r10
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
.L6_17:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_13query_address
    .type lb_net_13query_address, @function
lb_net_13query_address:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movl %edi, -40(%rbp)
    movq %rsi, -56(%rbp)
    movq %rdx, -72(%rbp)
    movl %ecx, -88(%rbp)
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_1
    jmp .L7_2
.L7_1:
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -72(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movl %ebx, %edi
    movq %r12, %rsi
    movq %r13, %rdx
    call getpeername@PLT
    movl %eax, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_4:
    jmp .L7_3
.L7_2:
.L7_3:
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -72(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movl %ebx, %edi
    movq %r12, %rsi
    movq %r13, %rdx
    call getsockname@PLT
    movl %eax, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_5:
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_18set_socket_integer
    .type lb_net_18set_socket_integer, @function
lb_net_18set_socket_integer:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movl %esi, -96(%rbp)
    movl %edx, -112(%rbp)
    movl %ecx, -128(%rbp)
    movl %r8d, -144(%rbp)
    leaq -96(%rbp), %rax
    movq %rax, -168(%rbp)
    movq -168(%rbp), %r10
    movslq (%r10), %rax
    movq %rax, -176(%rbp)
    leaq -112(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %rax
    movq %rax, -184(%rbp)
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    leaq -144(%rbp), %r14
    movl -176(%rbp), %edi
    movl -184(%rbp), %esi
    movl %r13d, %edx
    movq %r14, %rcx
    movl $4, %r8d
    call setsockopt@PLT
    movl %eax, %r15d
    leaq lb_net_18socket_interrupted(%rip), %rbx
    movl %r15d, %eax
    movl %eax, -192(%rbp)
.L8_1:
    movl -192(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    setl %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L8_4
    jmp .L8_10
.L8_10:
    movl %r12d, %r15d
    jmp .L8_5
.L8_4:
    call lb_net_12socket_errno@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movslq (%r10), %r15
    cmpl %r15d, %r12d
    sete %al
    movzbl %al, %r15d
.L8_5:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L8_2
    jmp .L8_3
.L8_2:
    movl -176(%rbp), %edi
    movl -184(%rbp), %esi
    movl %r13d, %edx
    movq %r14, %rcx
    movl $4, %r8d
    call setsockopt@PLT
    movl %eax, %r12d
    movl %r12d, %eax
    movl %eax, -192(%rbp)
    jmp .L8_1
.L8_3:
    movl -192(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L8_7
.L8_6:
    leaq -80(%rbp), %rbx
    call lb_net_12socket_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_net_12socket_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_14(%rip), %r12
    leaq -160(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $34, %rax
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
.L8_9:
    jmp .L8_8
.L8_7:
.L8_8:
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

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_handles_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "a socket could not be created"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/net/handles.lucb:26:9"
.Ltext_3:
    .asciz "the socket descriptor is invalid"
.Ltext_4:
    .asciz "socket descriptor flags could not be queried"
.Ltext_5:
    .asciz "the socket could not be marked close-on-exec"
.Ltext_6:
    .asciz "src/std/net/handles.lucb:56:9"
.Ltext_7:
    .asciz "the socket is closed"
.Ltext_8:
    .asciz "src/std/net/handles.lucb:60:9"
.Ltext_9:
    .asciz "the socket could not be closed"
.Ltext_10:
    .asciz "the socket address could not be queried"
.Ltext_11:
    .asciz "the socket address exceeds the supported IP storage"
.Ltext_12:
    .asciz "src/std/net/handles.lucb:83:5"
.Ltext_13:
    .asciz "src/std/net/handles.lucb:88:5"
.Ltext_14:
    .asciz "the socket option could not be set"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_net_14transfer_limit
    .type lb_net_14transfer_limit, @object
    .weak lb_net_14transfer_limit
    .p2align 3
lb_net_14transfer_limit:
    .zero 8

    .section .note.GNU-stack,"",@progbits
