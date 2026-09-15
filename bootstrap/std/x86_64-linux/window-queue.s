    .text

    .p2align 4
    .globl lb_window_queue_0init
    .type lb_window_queue_0init, @function
lb_window_queue_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_11push_scalar
    .type lb_window_11push_scalar, @function
lb_window_11push_scalar:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    movl %esi, -64(%rbp)
    leaq -64(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl $32, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_4
    jmp .L1_12
.L1_12:
    movl %r12d, %r13d
    jmp .L1_5
.L1_4:
    movl $127, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L1_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_6
    jmp .L1_13
.L1_13:
    movl %r12d, %r13d
    jmp .L1_7
.L1_6:
    movl $1114111, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L1_7:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_8
    jmp .L1_14
.L1_14:
    movl %r12d, %r13d
    jmp .L1_9
.L1_8:
    movl $55296, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_10
    jmp .L1_15
.L1_15:
    movl %r12d, %r13d
    jmp .L1_11
.L1_10:
    movl $57343, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L1_11:
    movzbl %r13b, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %r13d
.L1_9:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_1
    jmp .L1_2
.L1_1:
    leaq -48(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -120(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $13, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $52, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl %ebx, (%r10)
    subq $64, %rsp
    movq %r13, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq %r12, %rdi
    call lb_window_10push_event@PLT
    addq $64, %rsp
    jmp .L1_3
.L1_2:
.L1_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_10push_utf16
    .type lb_window_10push_utf16, @function
lb_window_10push_utf16:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movl %esi, -72(%rbp)
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
    movl $55296, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L2_4
    jmp .L2_22
.L2_22:
    movl %r12d, %r13d
    jmp .L2_5
.L2_4:
    movl $56319, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L2_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L2_1
    jmp .L2_2
.L2_1:
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $14382, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzwl (%r10), %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L2_7
.L2_6:
    movq %r12, %rdi
    movl $65533, %esi
    call lb_window_11push_scalar@PLT
    jmp .L2_8
.L2_7:
.L2_8:
    movq %r13, %r10
    movw %bx, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_9:
    jmp .L2_3
.L2_2:
.L2_3:
    movl $56320, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L2_13
    jmp .L2_23
.L2_23:
    movl %r12d, %r13d
    jmp .L2_14
.L2_13:
    movl $57343, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L2_14:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L2_10
    jmp .L2_11
.L2_10:
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $14382, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzwl (%r10), %r14d
    movl $0, %eax
    movq %r13, %r10
    movw %ax, (%r10)
    movzwl %r14w, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L2_16
.L2_15:
    movl %r13d, %r14d
    movl %r14d, %eax
    movl $55296, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r14d
    movl %r14d, %eax
    movl $1024, %ecx
    mull %ecx
    jnc 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r14d
    movl %r14d, %eax
    movl $65536, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r14d
    movl %ebx, %r15d
    movl %r14d, %eax
    movl %r15d, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r14d
    movl %r14d, %eax
    movl $56320, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r14d
    jmp .L2_17
.L2_16:
    movl $65533, %eax
    movl %eax, %r14d
.L2_17:
    movq %r12, %rdi
    movl %r14d, %esi
    call lb_window_11push_scalar@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_18:
    jmp .L2_12
.L2_11:
.L2_12:
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $14382, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzwl (%r10), %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L2_20
.L2_19:
    movl $0, %eax
    movq %r13, %r10
    movw %ax, (%r10)
    movq %r12, %rdi
    movl $65533, %esi
    call lb_window_11push_scalar@PLT
    jmp .L2_21
.L2_20:
.L2_21:
    movl %ebx, %r13d
    movq %r12, %rdi
    movl %r13d, %esi
    call lb_window_11push_scalar@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_10push_event
    .type lb_window_10push_event, @function
lb_window_10push_event:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq 16(%rbp), %r10
    leaq -112(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $14368, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $256, %rcx
    cmpq %rcx, %r13
    jne .L3_2
.L3_1:
    movq $14360, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $14376, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    jmp .L3_3
.L3_2:
.L3_3:
    movq $14360, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq (%r10), %r14
    movq %r13, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
.L3_5:
    movq $256, %rcx
    movq %r13, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rdx, %r14
    movq $24, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq $256, %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $56, %rcx
    imulq %rcx, %r14
    movq %r14, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    leaq -112(%rbp), %r15
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq %r12, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r12, %r10
    movq %r14, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_9pop_event
    .type lb_window_9pop_event, @function
lb_window_9pop_event:
    pushq %rbp
    movq %rsp, %rbp
    subq $560, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -128(%rbp)
    leaq -128(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $14377, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L4_1
    jmp .L4_2
.L4_1:
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -184(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -248(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq $56, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -112(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $64, %rdx
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
.L4_2:
.L4_3:
    movq $14376, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L4_5
    jmp .L4_6
.L4_5:
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -304(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $12, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -368(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq $56, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -112(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $64, %rdx
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
.L4_7:
    movq $14368, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -560(%rbp)
    movq -560(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L4_10
.L4_9:
    leaq -432(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    leaq -112(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $64, %rdx
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
.L4_11:
    leaq -488(%rbp), %r13
    movq $14360, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $256, %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $56, %rcx
    imulq %rcx, %r15
    addq %r15, %r12
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq %r14, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
.L4_14:
    movq $256, %rcx
    movq %r12, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rdx, %rbx
    movq %r14, %r10
    movq %rbx, (%r10)
    movq -560(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -560(%rbp), %r10
    movq %rbx, (%r10)
    leaq -552(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq $56, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    leaq -112(%rbp), %r15
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq %r15, %rsi
    movq -8(%rbp), %rdi
    movq $64, %rdx
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
    .quad lb_window_queue_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/window/queue.lucb:41:9"
.Ltext_1:
    .asciz "src/std/window/queue.lucb:53:5"
.Ltext_2:
    .asciz "division by zero"
.Ltext_3:
    .asciz "src/std/window/queue.lucb:54:5"
.Ltext_4:
    .asciz "src/std/window/queue.lucb:65:5"
.Ltext_5:
    .asciz "src/std/window/queue.lucb:66:5"
.Ltext_6:
    .asciz "src/std/window/queue.lucb:67:5"
.Ltext_7:
    .asciz "unreachable"
.Ltext_8:
    .asciz "src/std/window/queue.lucb:68:5"
.Ltext_9:
    .asciz "integer overflow"
.Ltext_10:
    .asciz "index out of bounds"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
