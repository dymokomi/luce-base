    .text

    .p2align 4
    .globl lb_memory_0init
    .type lb_memory_0init, @function
lb_memory_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L0_1
    jmp .L0_2
.L0_1:
    movl $4098, %eax
    movl %eax, %ebx
    jmp .L0_3
.L0_2:
    movl $34, %eax
    movl %eax, %ebx
.L0_3:
    leaq lb_memory_17private_anonymous(%rip), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    leaq lb_memory_exhausted(%rip), %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_memory_unset(%rip), %r12
    movl $208273410, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_memory_FixedBuffer_over
    .type lb_memory_FixedBuffer_over, @function
lb_memory_FixedBuffer_over:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    leaq -64(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -88(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -64(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -48(%rbp), %r12
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_1:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_FixedBuffer_allocate
    .type lb_memory_FixedBuffer_allocate, @function
lb_memory_FixedBuffer_allocate:
    pushq %rbp
    movq %rsp, %rbp
    subq $304, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -80(%rbp)
    movq %rdx, -96(%rbp)
    movq %rcx, -112(%rbp)
    leaq -80(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -288(%rbp)
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L2_2
.L2_1:
    movq -288(%rbp), %r10
    movq (%r10), %r12
    movq -288(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $1, %rcx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
.L2_4:
    leaq -128(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq -152(%rbp), %r13
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
.L2_2:
.L2_3:
    leaq -112(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L2_8
.L2_7:
    movq %r12, %rax
    movq %rax, -296(%rbp)
    jmp .L2_9
.L2_8:
    movq $1, %rax
    movq %rax, -296(%rbp)
.L2_9:
    movq -288(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -280(%rbp)
    movq -280(%rbp), %r10
    movq (%r10), %r15
    movq -288(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r15, %rdx
    movq -296(%rbp), %rcx
    call lb_memory_14aligned_offset@PLT
    leaq -168(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -168(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L2_10
    jmp .L2_11
.L2_10:
    movq %r12, %r10
    movq (%r10), %r15
    jmp .L2_12
.L2_11:
    leaq -192(%rbp), %rbx
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
.L2_12:
    movq -288(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %r15
    seta %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L2_23
    jmp .L2_17
.L2_23:
    movl %r14d, %r13d
    jmp .L2_18
.L2_17:
    movq %r12, %r13
    subq %r15, %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r13d
.L2_18:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L2_14
    jmp .L2_15
.L2_14:
    leaq .Ltext_5(%rip), %r12
    leaq -208(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $12, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -280(%rbp), %r10
    movq (%r10), %r12
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %rbx, %rdx
    movq -296(%rbp), %rcx
    movq %r12, %r8
    call lb_memory_12note_refusal@PLT
    leaq -232(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -72(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r13, %rsi
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
.L2_15:
.L2_16:
    movq %rbx, %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_71(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -280(%rbp), %r10
    movq %r13, (%r10)
    movq -288(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -304(%rbp)
    movq $1, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    cmpq %r14, %r15
    jb 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r13, %r15
    jbe .L2_20
.L2_21:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_20:
    movq -304(%rbp), %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %r13, %r12
    subq %r15, %r12
    leaq -248(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq -272(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
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

    .p2align 4
    .globl lb_memory_FixedBuffer_resize
    .type lb_memory_FixedBuffer_resize, @function
lb_memory_FixedBuffer_resize:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -48(%rbp)
    leaq -64(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movq %rcx, -80(%rbp)
    leaq -48(%rbp), %r10
    movq (%r10), %r15
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -112(%rbp)
    leaq -64(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -120(%rbp)
    movq -112(%rbp), %rax
    movq -120(%rbp), %rcx
    cmpq %rcx, %rax
    jne .L3_2
.L3_1:
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_4:
    jmp .L3_3
.L3_2:
.L3_3:
    movq -120(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L3_6
.L3_5:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_8:
    jmp .L3_7
.L3_6:
.L3_7:
    movq %r12, %r10
    movq (%r10), %r14
    movq %r15, %r10
    movq (%r10), %rbx
    leaq -88(%rbp), %r13
    movq %r14, %rdi
    movq %rbx, %rsi
    movl $64, %edx
    movq %r13, %rcx
    call lb_core_6qsub_u@PLT
    movl %eax, %ebx
    leaq -104(%rbp), %r14
    movq %r13, %r10
    movq (%r10), %r13
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movb %bl, (%r10)
    movq %r14, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_9
    jmp .L3_10
.L3_9:
    jmp .L3_11
.L3_10:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_12:
.L3_11:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    seta %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L3_26
    jmp .L3_16
.L3_26:
    movl %r14d, %r12d
    jmp .L3_17
.L3_16:
    movq %r12, %r14
    subq %r13, %r14
    movq -120(%rbp), %rax
    cmpq %r14, %rax
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r12d
.L3_17:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L3_13
    jmp .L3_14
.L3_13:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_18:
    jmp .L3_15
.L3_14:
.L3_15:
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    seta %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L3_27
    jmp .L3_22
.L3_27:
    movl %r14d, %r12d
    jmp .L3_23
.L3_22:
    movq %r12, %r14
    subq %r13, %r14
    movq -112(%rbp), %rax
    cmpq %r14, %rax
    seta %al
    movzbl %al, %r14d
    movl %r14d, %r12d
.L3_23:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L3_19
    jmp .L3_20
.L3_19:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_24:
    jmp .L3_21
.L3_20:
.L3_21:
    movq -112(%rbp), %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_71(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_25:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_FixedBuffer_release
    .type lb_memory_FixedBuffer_release, @function
lb_memory_FixedBuffer_release:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -48(%rbp)
    leaq -64(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -48(%rbp), %r10
    movq (%r10), %r14
    leaq -64(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L4_2
.L4_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_4:
    jmp .L4_3
.L4_2:
.L4_3:
    leaq lb_memory_diagnostic(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L4_5
    jmp .L4_6
.L4_5:
    movq %rbx, %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movl $221, %esi
    movq %r12, %rdx
    call memset@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L4_8
    jmp .L4_9
.L4_9:
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_8:
    jmp .L4_7
.L4_6:
.L4_7:
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -72(%rbp)
    movq %r14, %r10
    movq (%r10), %r15
    movq -72(%rbp), %rax
    movq %r15, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_71(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -80(%rbp)
    movq %r12, %rax
    movq -80(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_71(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq $16, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -88(%rbp)
    movq -88(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r15
    jne .L4_11
.L4_10:
    movq -80(%rbp), %rax
    movq -88(%rbp), %r10
    movq %rax, (%r10)
    jmp .L4_12
.L4_11:
.L4_12:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_memory_14aligned_offset
    .type lb_memory_14aligned_offset, @function
lb_memory_14aligned_offset:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -72(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    movq %rdx, -88(%rbp)
    movq %rcx, -104(%rbp)
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -72(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -200(%rbp)
    movq -200(%rbp), %rcx
    cmpq %rcx, %rbx
    jbe .L5_2
.L5_1:
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
.L5_4:
    jmp .L5_3
.L5_2:
.L5_3:
    movq %r12, %r10
    movq (%r10), %r14
    leaq -128(%rbp), %r15
    movq %r14, %rdi
    movq %rbx, %rsi
    movl $64, %edx
    movq %r15, %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r14d
    leaq -144(%rbp), %r13
    movq %r15, %r10
    movq (%r10), %r15
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movb %r14b, (%r10)
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L5_5
    jmp .L5_6
.L5_5:
    jmp .L5_7
.L5_6:
    leaq -160(%rbp), %rbx
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
.L5_8:
.L5_7:
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L5_10
.L5_9:
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_16(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_10:
    movq %r15, %rax
    xorl %edx, %edx
    divq %r13
    movq %rdx, %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L5_12
.L5_11:
    movq $0, %rax
    movq %rax, %r12
    jmp .L5_13
.L5_12:
    movq %r13, %rax
    movq %r12, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_71(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r14, %r12
.L5_13:
    movq -200(%rbp), %rax
    movq %rax, %r13
    subq %rbx, %r13
    cmpq %r13, %r12
    jbe .L5_15
.L5_14:
    leaq -176(%rbp), %rbx
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
.L5_17:
    jmp .L5_16
.L5_15:
.L5_16:
    movq %rbx, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_71(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    leaq -192(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -56(%rbp), %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
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
.L5_18:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_CAllocator_allocate
    .type lb_memory_CAllocator_allocate, @function
lb_memory_CAllocator_allocate:
    pushq %rbp
    movq %rsp, %rbp
    subq $288, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -72(%rbp)
    movq %rdx, -88(%rbp)
    movq %rcx, -104(%rbp)
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L6_2
.L6_1:
    leaq -120(%rbp), %rbx
    movq $8, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -144(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -64(%rbp), %rbx
    movq %r12, %r10
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_4:
    jmp .L6_3
.L6_2:
.L6_3:
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L6_8
    jmp .L6_23
.L6_23:
    movl %r13d, %r14d
    jmp .L6_9
.L6_8:
    movq %r12, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_71(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r13, %rcx
    movq %r12, %r13
    andq %rcx, %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L6_9:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L6_5
    jmp .L6_6
.L6_5:
    leaq -168(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
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
.L6_10:
    jmp .L6_7
.L6_6:
.L6_7:
    movq $8, %rcx
    cmpq %rcx, %r12
    jbe .L6_12
.L6_11:
    movq %r12, %r13
    jmp .L6_13
.L6_12:
    movq $8, %rax
    movq %rax, %r13
.L6_13:
    leaq -176(%rbp), %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    movq %r13, %rsi
    movq %rbx, %rdx
    call posix_memalign@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L6_15
.L6_14:
    leaq .Ltext_22(%rip), %r12
    leaq -192(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $4, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq $0, %r8
    call lb_memory_12note_refusal@PLT
    leaq -216(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -64(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r14, %rsi
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
.L6_17:
    jmp .L6_16
.L6_15:
.L6_16:
    movq %r12, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L6_18
    jmp .L6_19
.L6_18:
    jmp .L6_20
.L6_19:
    leaq -240(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
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
.L6_21:
.L6_20:
    leaq -256(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    leaq -280(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -64(%rbp), %r12
    movq %r14, %r10
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
.L6_22:
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_CAllocator_resize
    .type lb_memory_CAllocator_resize, @function
lb_memory_CAllocator_resize:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -24(%rbp)
    leaq -40(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movq %rcx, -56(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -40(%rbp), %r12
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    setbe %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_1:
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_CAllocator_release
    .type lb_memory_CAllocator_release, @function
lb_memory_CAllocator_release:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -48(%rbp)
    leaq -64(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -64(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L8_2
.L8_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L8_2:
.L8_3:
    leaq lb_memory_diagnostic(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L8_6
.L8_5:
    movq %rbx, %r10
    movq (%r10), %r12
    leaq -120(%rbp), %r10
    movq %r12, (%r10)
    movq %r12, %rdi
    call free@PLT
.L8_17:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L8_6:
.L8_7:
    movq %rbx, %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movl $221, %esi
    movq %r12, %rdx
    call memset@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L8_9
    jmp .L8_10
.L8_10:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
.L8_9:
    leaq lb_memory_12records_lock(%rip), %rax
    movq %rax, -128(%rbp)
    movq -128(%rbp), %rdi
    call lb_memory_lock@PLT
    leaq lb_memory_15quarantine_next(%rip), %r13
    movq %r13, %r10
    movq (%r10), %r14
.L8_12:
    movq $64, %rcx
    movq %r14, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rdx, %r15
    leaq lb_memory_quarantine(%rip), %r12
    movq $64, %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $24, %rcx
    imulq %rcx, %r15
    movq %r15, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L8_16
    jmp .L8_14
.L8_16:
    leaq -80(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L8_13:
    movq %r12, %r10
    movq (%r10), %r14
    leaq -120(%rbp), %r10
    movq %r14, (%r10)
    movq %r14, %rdi
    call free@PLT
.L8_18:
    jmp .L8_15
.L8_14:
.L8_15:
    leaq -104(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r13, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_71(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r13, %r10
    movq %r12, (%r10)
    movq -128(%rbp), %rdi
    call lb_memory_unlock@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_memory_Arena_over
    .type lb_memory_Arena_over, @function
lb_memory_Arena_over:
    pushq %rbp
    movq %rsp, %rbp
    subq $272, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -136(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movq %rcx, -152(%rbp)
    leaq -168(%rbp), %r15
    leaq -136(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq -152(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rsi
    movq %r14, %rdx
    movq $16, %rcx
    leaq -192(%rbp), %rdi
    movq %r13, %r11
    call *%r11
    leaq -192(%rbp), %r13
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L9_1
    jmp .L9_2
.L9_1:
    leaq -208(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L9_3
.L9_2:
    leaq -120(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_30(%rip), %r13
    leaq -224(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $16, %rax
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
.L9_4:
.L9_3:
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -264(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $0, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq -120(%rbp), %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $64, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r14, %rsi
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
.L9_5:
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_Arena_allocate
    .type lb_memory_Arena_allocate, @function
lb_memory_Arena_allocate:
    pushq %rbp
    movq %rsp, %rbp
    subq $352, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -80(%rbp)
    movq %rdx, -96(%rbp)
    movq %rcx, -112(%rbp)
    leaq -80(%rbp), %r10
    movq (%r10), %r13
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L10_2
.L10_1:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $1, %rcx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
.L10_4:
    leaq -128(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq -152(%rbp), %r13
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
.L10_2:
.L10_3:
    leaq -112(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L10_8
.L10_7:
    movq %r12, %rax
    movq %rax, -352(%rbp)
    jmp .L10_9
.L10_8:
    movq $1, %rax
    movq %rax, -352(%rbp)
.L10_9:
    movq $16, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -328(%rbp)
    movq $32, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -336(%rbp)
    movq -336(%rbp), %r10
    movq (%r10), %r15
    movq -328(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r15, %rdx
    movq -352(%rbp), %rcx
    call lb_memory_14aligned_offset@PLT
    leaq -168(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -168(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L10_10
    jmp .L10_11
.L10_10:
    movq %r12, %r10
    movq (%r10), %r13
    jmp .L10_12
.L10_11:
    leaq -192(%rbp), %rbx
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
.L10_12:
    leaq -200(%rbp), %r12
    movq %r13, %rdi
    movq %rbx, %rsi
    movl $64, %edx
    movq %r12, %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r15d
    leaq -216(%rbp), %r14
    movq %r12, %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movb %r15b, (%r10)
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L10_14
    jmp .L10_15
.L10_14:
    jmp .L10_16
.L10_15:
    leaq -240(%rbp), %rbx
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
.L10_16:
    movq -328(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r12
    jbe .L10_19
.L10_18:
    leaq .Ltext_33(%rip), %r12
    leaq -256(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $5, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -336(%rbp), %r10
    movq (%r10), %r12
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %rbx, %rdx
    movq -352(%rbp), %rcx
    movq %r12, %r8
    call lb_memory_12note_refusal@PLT
    leaq -280(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -72(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r13, %rsi
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
.L10_19:
.L10_20:
    movq -336(%rbp), %r10
    movq %r12, (%r10)
    movq -328(%rbp), %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r12
    jb 1f
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r13
    jbe .L10_22
.L10_23:
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L10_22:
    movq %r13, %rbx
    addq %r15, %rbx
    movq %r12, %rax
    subq %r13, %rax
    movq %rax, -344(%rbp)
    leaq -296(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq -344(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -320(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    leaq -72(%rbp), %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r14, %rsi
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

    .p2align 4
    .globl lb_memory_Arena_resize
    .type lb_memory_Arena_resize, @function
lb_memory_Arena_resize:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -48(%rbp)
    leaq -64(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movq %rcx, -80(%rbp)
    leaq -48(%rbp), %r10
    movq (%r10), %r15
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -112(%rbp)
    leaq -64(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -120(%rbp)
    movq -112(%rbp), %rax
    movq -120(%rbp), %rcx
    cmpq %rcx, %rax
    jne .L11_2
.L11_1:
    movl $1, %eax
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
    movq -120(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L11_6
.L11_5:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_8:
    jmp .L11_7
.L11_6:
.L11_7:
    movq %r12, %r10
    movq (%r10), %r14
    movq $16, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -128(%rbp)
    movq -128(%rbp), %r10
    movq (%r10), %rbx
    leaq -88(%rbp), %r13
    movq %r14, %rdi
    movq %rbx, %rsi
    movl $64, %edx
    movq %r13, %rcx
    call lb_core_6qsub_u@PLT
    movl %eax, %ebx
    leaq -104(%rbp), %r14
    movq %r13, %r10
    movq (%r10), %r13
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movb %bl, (%r10)
    movq %r14, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_9
    jmp .L11_10
.L11_9:
    jmp .L11_11
.L11_10:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_12:
.L11_11:
    movq $32, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    seta %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L11_26
    jmp .L11_16
.L11_26:
    movl %r14d, %r12d
    jmp .L11_17
.L11_16:
    movq %r12, %r14
    subq %r13, %r14
    movq -120(%rbp), %rax
    cmpq %r14, %rax
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r12d
.L11_17:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L11_13
    jmp .L11_14
.L11_13:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_18:
    jmp .L11_15
.L11_14:
.L11_15:
    movq -128(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    seta %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L11_27
    jmp .L11_22
.L11_27:
    movl %r14d, %r12d
    jmp .L11_23
.L11_22:
    movq %r12, %r14
    subq %r13, %r14
    movq -112(%rbp), %rax
    cmpq %r14, %rax
    seta %al
    movzbl %al, %r14d
    movl %r14d, %r12d
.L11_23:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L11_19
    jmp .L11_20
.L11_19:
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
    jmp .L11_21
.L11_20:
.L11_21:
    movq -112(%rbp), %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_71(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_25:
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_Arena_release
    .type lb_memory_Arena_release, @function
lb_memory_Arena_release:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -24(%rbp)
    leaq -40(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq lb_memory_diagnostic(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L12_4
    jmp .L12_8
.L12_8:
    movl %ebx, %r12d
    jmp .L12_5
.L12_4:
    leaq -40(%rbp), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    seta %al
    movzbl %al, %r12d
.L12_5:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L12_1
    jmp .L12_2
.L12_1:
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r12, %rdi
    movl $221, %esi
    movq %rbx, %rdx
    call memset@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L12_6
    jmp .L12_7
.L12_7:
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_6:
    jmp .L12_3
.L12_2:
.L12_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_memory_Arena_6in_use
    .type lb_memory_Arena_6in_use, @function
lb_memory_Arena_6in_use:
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
.L13_1:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_Arena_capacity
    .type lb_memory_Arena_capacity, @function
lb_memory_Arena_capacity:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -16(%rbp)
    leaq -16(%rbp), %r10
    movq (%r10), %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L14_1:
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_Arena_reset
    .type lb_memory_Arena_reset, @function
lb_memory_Arena_reset:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -16(%rbp)
    leaq -16(%rbp), %r10
    movq (%r10), %rbx
    movq $32, %rcx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_memory_Arena_destroy
    .type lb_memory_Arena_destroy, @function
lb_memory_Arena_destroy:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -48(%rbp)
    leaq -48(%rbp), %r10
    movq (%r10), %r14
    movq %r14, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $16, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %rbx, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
    movq %r13, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $1, %rcx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
.L16_1:
    leaq -64(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq $0, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_memory_PageAllocator_allocate
    .type lb_memory_PageAllocator_allocate, @function
lb_memory_PageAllocator_allocate:
    pushq %rbp
    movq %rsp, %rbp
    subq $368, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -80(%rbp)
    movq %rdx, -96(%rbp)
    movq %rcx, -112(%rbp)
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L17_2
.L17_1:
    leaq -128(%rbp), %rbx
    movq $8, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -152(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -72(%rbp), %rbx
    movq %r12, %r10
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
.L17_4:
    jmp .L17_3
.L17_2:
.L17_3:
    call getpagesize@PLT
    movl %eax, %r12d
    movslq %r12d, %r12
    jmp .L17_31
.L17_30:
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L17_31:
    leaq -112(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -368(%rbp)
    movq -368(%rbp), %rax
    cmpq %r12, %rax
    seta %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L17_34
    jmp .L17_8
.L17_34:
    movl %r14d, %r15d
    jmp .L17_9
.L17_8:
    movq -368(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L17_10
    jmp .L17_35
.L17_35:
    movl %r15d, %r14d
    jmp .L17_11
.L17_10:
    testl %r14d, %r14d
    jne .L17_12
    jmp .L17_13
.L17_12:
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_16(%rip), %rsi
    call lb_core_7trap_at@PLT
.L17_13:
    movq -368(%rbp), %rcx
    movq %r12, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rdx, %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
.L17_11:
    movzbl %r14b, %r15d
.L17_9:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L17_5
    jmp .L17_6
.L17_5:
    leaq .Ltext_44(%rip), %r12
    leaq -168(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $14, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %rbx, %rdx
    movq -368(%rbp), %rcx
    movq $0, %r8
    call lb_memory_12note_refusal@PLT
    leaq -192(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -72(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r14, %rsi
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
.L17_14:
    jmp .L17_7
.L17_6:
.L17_7:
    movq %r12, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_71(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    leaq -200(%rbp), %r15
    movq %rbx, %rdi
    movq %r14, %rsi
    movl $64, %edx
    movq %r15, %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r14d
    leaq -216(%rbp), %r13
    movq %r15, %r10
    movq (%r10), %r15
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movb %r14b, (%r10)
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L17_15
    jmp .L17_16
.L17_15:
    jmp .L17_17
.L17_16:
    leaq -240(%rbp), %rbx
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
.L17_18:
.L17_17:
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L17_20
.L17_19:
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_16(%rip), %rsi
    call lb_core_7trap_at@PLT
.L17_20:
    movq %r15, %rax
    xorl %edx, %edx
    divq %r12
    movq %rax, %r13
    movq %r13, %rax
    movq %r12, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_71(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    leaq -360(%rbp), %r10
    movq %r13, (%r10)
    leaq lb_memory_17private_anonymous(%rip), %r14
    movq %r14, %r10
    movslq (%r10), %r14
    movq $0, %rdi
    movq %r13, %rsi
    movl $3, %edx
    movl %r14d, %ecx
    movl $4294967295, %r8d
    movq $0, %r9
    call mmap@PLT
    movq %rax, %r14
    jmp .L17_33
.L17_32:
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L17_33:
    testq %r14, %r14
    jne .L17_21
    jmp .L17_22
.L17_21:
    jmp .L17_23
.L17_22:
    leaq -264(%rbp), %rbx
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
.L17_24:
.L17_23:
    movq $-1, %rcx
    cmpq %rcx, %r14
    jne .L17_26
.L17_25:
    leaq .Ltext_44(%rip), %r12
    leaq -280(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $14, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %rbx, %rdx
    movq -368(%rbp), %rcx
    movq $0, %r8
    call lb_memory_12note_refusal@PLT
    leaq -304(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -72(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r13, %rsi
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
.L17_28:
    jmp .L17_27
.L17_26:
.L17_27:
    leaq -320(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    leaq -344(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -72(%rbp), %rbx
    movq %r12, %r10
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
.L17_29:
    leaq .Ltext_47(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_PageAllocator_resize
    .type lb_memory_PageAllocator_resize, @function
lb_memory_PageAllocator_resize:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -24(%rbp)
    leaq -40(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movq %rcx, -56(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -40(%rbp), %r12
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    setbe %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L18_1:
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_PageAllocator_release
    .type lb_memory_PageAllocator_release, @function
lb_memory_PageAllocator_release:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -48(%rbp)
    leaq -64(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -64(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L19_2
.L19_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L19_2:
.L19_3:
    leaq lb_memory_diagnostic(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L19_6
.L19_5:
    movq %rbx, %r10
    leaq -120(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -120(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movq %r12, %rsi
    call munmap@PLT
    movl %eax, %ebx
.L19_17:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L19_6:
.L19_7:
    movq %rbx, %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movl $221, %esi
    movq %r12, %rdx
    call memset@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L19_9
    jmp .L19_10
.L19_10:
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
.L19_9:
    leaq lb_memory_12records_lock(%rip), %rax
    movq %rax, -128(%rbp)
    movq -128(%rbp), %rdi
    call lb_memory_lock@PLT
    leaq lb_memory_9held_next(%rip), %rax
    movq %rax, -136(%rbp)
    movq -136(%rbp), %r10
    movq (%r10), %r14
.L19_12:
    movq $8, %rcx
    movq %r14, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rdx, %r15
    leaq lb_memory_10held_pages(%rip), %r12
    movq $8, %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $24, %rcx
    imulq %rcx, %r15
    movq %r15, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L19_16
    jmp .L19_14
.L19_16:
    leaq -80(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L19_13:
    movq %r12, %r10
    leaq -120(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -120(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %rdi
    movq %r14, %rsi
    call munmap@PLT
    movl %eax, %r12d
.L19_18:
    jmp .L19_15
.L19_14:
.L19_15:
    leaq -104(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -136(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_71(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -136(%rbp), %r10
    movq %r12, (%r10)
    movq -128(%rbp), %rdi
    call lb_memory_unlock@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_memory_12note_refusal
    .type lb_memory_12note_refusal, @function
lb_memory_12note_refusal:
    pushq %rbp
    movq %rsp, %rbp
    subq $432, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -56(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    movq %rdx, -72(%rbp)
    movq %rcx, -88(%rbp)
    movq %r8, -104(%rbp)
    leaq -264(%rbp), %rbx
    movq %rbx, %rdi
    xorl %esi, %esi
    movq $160, %rdx
    call memset@PLT
    leaq -280(%rbp), %rax
    movq %rax, -432(%rbp)
    leaq -336(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $160, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -360(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $160, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_56(%rip), %r14
    movq %r12, %rdi
    movq %r14, %rsi
    movq $12, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r14d
    leaq -56(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq %r15, %rsi
    movq %r14, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r14d
    leaq .Ltext_57(%rip), %r14
    movq %r12, %rdi
    movq %r14, %rsi
    movq $9, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r14d
    leaq -72(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq %r14, %rsi
    call lb_core_10format_u64@PLT
    movl %eax, %r14d
    leaq .Ltext_58(%rip), %r14
    movq %r12, %rdi
    movq %r14, %rsi
    movq $20, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r14d
    leaq -88(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq %r14, %rsi
    call lb_core_10format_u64@PLT
    movl %eax, %r14d
    leaq .Ltext_59(%rip), %r14
    movq %r12, %rdi
    movq %r14, %rsi
    movq $7, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r14d
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq %r14, %rsi
    call lb_core_10format_u64@PLT
    movl %eax, %r14d
    leaq .Ltext_60(%rip), %r14
    movq %r12, %rdi
    movq %r14, %rsi
    movq $2, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r14d
    leaq -408(%rbp), %r14
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %rbx
    cmpq %rbx, %r13
    jbe .L20_4
.L20_3:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_61(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $60, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L20_5
.L20_4:
    movq %r12, %rdi
    call lb_core_13format_finish@PLT
    leaq -424(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -424(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L20_5:
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L20_7
    jmp .L20_6
.L20_7:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -320(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L20_1
.L20_6:
    leaq -296(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L20_2
.L20_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L20_8:
.L20_2:
    movq %rbx, %r10
    movq -432(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -432(%rbp), %r10
    movq (%r10), %r12
    movq -432(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movl $2, %edi
    movq %r12, %rsi
    movq %r13, %rdx
    call write@PLT
    movq %rax, %rbx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_memory_lock
    .type lb_memory_lock, @function
lb_memory_lock:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq -56(%rbp), %rbx
    leaq -58(%rbp), %r12
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
.L21_1:
.L21_2:
    movq %rbx, %r10
    movq (%r10), %r14
    movl $0, %eax
    movl $1, %ecx
    movq %r14, %r10
    lock cmpxchgb %cl, (%r10)
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
    movq %r12, %r10
    movb %r15b, (%r10)
    movq %r13, %r10
    movb %r14b, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r14d
    movq %r13, %r10
    movzbl (%r10), %r15d
    movzbl %r14b, %r14d
    testl %r14d, %r14d
    jne .L21_4
    jmp .L21_5
.L21_4:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L21_5:
.L21_6:
    jmp .L21_1

    .p2align 4
    .globl lb_memory_unlock
    .type lb_memory_unlock, @function
lb_memory_unlock:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movl $0, %eax
    movq %rbx, %r10
    xchgb %al, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_memory_9note_site
    .type lb_memory_9note_site, @function
lb_memory_9note_site:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    leaq -88(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movl %r8d, -104(%rbp)
    leaq lb_memory_12records_lock(%rip), %rax
    movq %rax, -192(%rbp)
    movq -192(%rbp), %rdi
    call lb_memory_lock@PLT
    leaq lb_memory_9site_next(%rip), %rax
    movq %rax, -200(%rbp)
    movq -200(%rbp), %r10
    movq (%r10), %r13
    movq $256, %rcx
    cmpq %rcx, %r13
    jae .L23_2
.L23_1:
    leaq lb_memory_sites(%rip), %r14
    movq $40, %rcx
    movq %r13, %r15
    imulq %rcx, %r15
    addq %r15, %r14
    leaq -144(%rbp), %r15
    movq %r15, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r15, %r10
    movq %rbx, (%r10)
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq -88(%rbp), %rbx
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movq $32, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L23_3
.L23_2:
    leaq lb_memory_sites(%rip), %rbx
    movq $1, %rax
    movq %rax, %r12
.L23_4:
    movq $256, %rcx
    cmpq %rcx, %r12
    jae .L23_6
.L23_5:
    movq %r12, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_71(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq $256, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $40, %rcx
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $40, %rcx
    movq %r12, %r14
    imulq %rcx, %r14
    movq %r14, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r12
    jmp .L23_4
.L23_6:
    leaq lb_memory_sites(%rip), %rbx
    movq $10200, %rcx
    addq %rcx, %rbx
    leaq -184(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq -56(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq %r13, (%r10)
    leaq -72(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    leaq -88(%rbp), %r13
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -104(%rbp), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq $32, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl %r13d, (%r10)
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
.L23_3:
    movq -200(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_66(%rip), %rdi
    leaq .Ltext_71(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -200(%rbp), %r10
    movq %rbx, (%r10)
    movq -192(%rbp), %rdi
    call lb_memory_unlock@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_memory_16allocation_sites
    .type lb_memory_16allocation_sites, @function
lb_memory_16allocation_sites:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    leaq lb_memory_9site_next(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $256, %rcx
    cmpq %rcx, %rbx
    jae .L24_2
.L24_1:
    movq %rbx, %r12
    jmp .L24_3
.L24_2:
    movq $256, %rax
    movq %rax, %r12
.L24_3:
    leaq lb_memory_sites(%rip), %r13
    movq $257, %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_67(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r12, %rax
    jbe .L24_4
.L24_5:
    leaq .Ltext_67(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L24_4:
    leaq -64(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    leaq -48(%rbp), %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L24_6:
    leaq .Ltext_67(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_startup
    .type lb_memory_startup, @function
lb_memory_startup:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    leaq lb_memory_heap(%rip), %rbx
    leaq lb_memory_11c_allocator(%rip), %r12
    leaq -48(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq lb_vt_memory_CAllocator_Allocator(%rip), %r12
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_memory_set
    .type lb_memory_set, @function
lb_memory_set:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    leaq -48(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    movl %edx, -64(%rbp)
    leaq -48(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L26_2
.L26_1:
    movq %rbx, %r10
    movq (%r10), %r13
    leaq -64(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl %r14d, %r14d
    movq %r13, %rdi
    movl %r14d, %esi
    movq %r12, %rdx
    call memset@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L26_4
    jmp .L26_5
.L26_5:
    leaq .Ltext_68(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
.L26_4:
    jmp .L26_3
.L26_2:
.L26_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_memory_grow
    .type lb_memory_grow, @function
lb_memory_grow:
    pushq %rbp
    movq %rsp, %rbp
    subq $240, %rsp
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
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -224(%rbp)
    movq -224(%rbp), %r10
    movq (%r10), %r12
    movq -224(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -232(%rbp)
    movq -232(%rbp), %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    leaq -112(%rbp), %rax
    movq %rax, -240(%rbp)
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq -240(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %rcx
    movq %r14, %r11
    call *%r11
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L27_1
    jmp .L27_2
.L27_1:
    movq -240(%rbp), %r10
    movq (%r10), %rbx
    leaq -144(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    leaq -96(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
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
.L27_4:
    jmp .L27_3
.L27_2:
.L27_3:
    leaq -160(%rbp), %r15
    movq -224(%rbp), %r10
    movq (%r10), %r12
    movq -232(%rbp), %r10
    movq (%r10), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rsi
    movq %r13, %rdx
    movq $8, %rcx
    leaq -184(%rbp), %rdi
    movq %r14, %r11
    call *%r11
    leaq -184(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L27_5
    jmp .L27_6
.L27_5:
    leaq -200(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L27_7
.L27_6:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_30(%rip), %r13
    leaq -216(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $16, %rax
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
.L27_8:
.L27_7:
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -240(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r13, %r14
    jae .L27_10
.L27_9:
    movq %r14, %rbx
    jmp .L27_11
.L27_10:
    movq %r13, %rbx
.L27_11:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L27_13
.L27_12:
    movq %r15, %r10
    movq (%r10), %r12
    movq -240(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %r13, %rsi
    movq %rbx, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L27_15
    jmp .L27_16
.L27_16:
    leaq .Ltext_69(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
.L27_15:
    jmp .L27_14
.L27_13:
.L27_14:
    movq -224(%rbp), %r10
    movq (%r10), %rbx
    movq -232(%rbp), %r10
    movq (%r10), %r12
    movq $16, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq -240(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
    leaq -96(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
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
.L27_17:
    leaq .Ltext_70(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_memory_0init
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
    .asciz "src/std/memory.lucb:30:9"
.Ltext_2:
    .asciz "src/std/memory.lucb:34:13"
.Ltext_3:
    .asciz "index out of bounds"
.Ltext_4:
    .asciz "src/std/memory.lucb:37:9"
.Ltext_5:
    .asciz "fixed buffer"
.Ltext_6:
    .asciz "src/std/memory.lucb:40:9"
.Ltext_7:
    .asciz "src/std/memory.lucb:41:9"
.Ltext_8:
    .asciz "src/std/memory.lucb:49:9"
.Ltext_9:
    .asciz "src/std/memory.lucb:51:9"
.Ltext_10:
    .asciz "src/std/memory.lucb:53:9"
.Ltext_11:
    .asciz "src/std/memory.lucb:54:9"
.Ltext_12:
    .asciz "null_foreign"
.Ltext_13:
    .asciz "src/std/memory.lucb:60:13"
.Ltext_14:
    .asciz "src/std/memory.lucb:61:9"
.Ltext_15:
    .asciz "src/std/memory.lucb:62:9"
.Ltext_16:
    .asciz "division by zero"
.Ltext_17:
    .asciz "src/std/memory.lucb:71:5"
.Ltext_18:
    .asciz "src/std/memory.lucb:72:5"
.Ltext_19:
    .asciz "src/std/memory.lucb:73:5"
.Ltext_20:
    .asciz "src/std/memory.lucb:75:5"
.Ltext_21:
    .asciz "src/std/memory.lucb:84:9"
.Ltext_22:
    .asciz "heap"
.Ltext_23:
    .asciz "src/std/memory.lucb:94:9"
.Ltext_24:
    .asciz "src/std/memory.lucb:97:9"
.Ltext_25:
    .asciz "src/std/memory.lucb:107:9"
.Ltext_26:
    .asciz "src/std/memory.lucb:109:9"
.Ltext_27:
    .asciz "src/std/memory.lucb:110:9"
.Ltext_28:
    .asciz "src/std/memory.lucb:112:9"
.Ltext_29:
    .asciz "src/std/memory.lucb:113:9"
.Ltext_30:
    .asciz "memory.exhausted"
.Ltext_31:
    .asciz "src/std/memory.lucb:131:9"
.Ltext_32:
    .asciz "src/std/memory.lucb:135:13"
.Ltext_33:
    .asciz "arena"
.Ltext_34:
    .asciz "src/std/memory.lucb:143:9"
.Ltext_35:
    .asciz "src/std/memory.lucb:152:9"
.Ltext_36:
    .asciz "src/std/memory.lucb:154:9"
.Ltext_37:
    .asciz "src/std/memory.lucb:156:9"
.Ltext_38:
    .asciz "src/std/memory.lucb:157:9"
.Ltext_39:
    .asciz "src/std/memory.lucb:161:13"
.Ltext_40:
    .asciz "src/std/memory.lucb:165:9"
.Ltext_41:
    .asciz "src/std/memory.lucb:167:9"
.Ltext_42:
    .asciz "src/std/memory.lucb:176:9"
.Ltext_43:
    .asciz "src/std/memory.lucb:187:9"
.Ltext_44:
    .asciz "page allocator"
.Ltext_45:
    .asciz "src/std/memory.lucb:190:9"
.Ltext_46:
    .asciz "src/std/memory.lucb:191:9"
.Ltext_47:
    .asciz "src/std/memory.lucb:196:9"
.Ltext_48:
    .asciz "src/std/memory.lucb:199:9"
.Ltext_49:
    .asciz "src/std/memory.lucb:209:9"
.Ltext_50:
    .asciz "src/std/memory.lucb:211:9"
.Ltext_51:
    .asciz "src/std/memory.lucb:212:9"
.Ltext_52:
    .asciz "src/std/memory.lucb:214:9"
.Ltext_53:
    .asciz "src/std/memory.lucb:215:9"
.Ltext_54:
    .asciz "src/std/memory.lucb:232:5"
.Ltext_55:
    .asciz "src/std/memory.lucb:237:5"
.Ltext_56:
    .asciz "memory: the "
.Ltext_57:
    .asciz " refused "
.Ltext_58:
    .asciz " bytes at alignment "
.Ltext_59:
    .asciz " (used "
.Ltext_60:
    .asciz ")\n"
.Ltext_61:
    .asciz "memory.exhausted: the formatted text does not fit its buffer"
.Ltext_62:
    .asciz "src/std/memory.lucb:289:9"
.Ltext_63:
    .asciz "src/std/memory.lucb:293:13"
.Ltext_64:
    .asciz "src/std/memory.lucb:294:13"
.Ltext_65:
    .asciz "src/std/memory.lucb:295:9"
.Ltext_66:
    .asciz "src/std/memory.lucb:296:5"
.Ltext_67:
    .asciz "src/std/memory.lucb:303:5"
.Ltext_68:
    .asciz "src/std/memory.lucb:338:9"
.Ltext_69:
    .asciz "src/std/memory.lucb:357:9"
.Ltext_70:
    .asciz "src/std/memory.lucb:359:5"
.Ltext_71:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3
    .globl lb_vt_memory_CAllocator_Allocator
    .weak lb_vt_memory_CAllocator_Allocator
lb_vt_memory_CAllocator_Allocator:
    .quad lb_memory_CAllocator_allocate
    .quad lb_memory_CAllocator_resize
    .quad lb_memory_CAllocator_release

    .bss
    .globl lb_memory_17private_anonymous
    .type lb_memory_17private_anonymous, @object
    .p2align 2
lb_memory_17private_anonymous:
    .zero 4

    .bss
    .globl lb_memory_diagnostic
    .type lb_memory_diagnostic, @object
    .p2align 0
lb_memory_diagnostic:
    .zero 1

    .bss
    .globl lb_memory_sites
    .type lb_memory_sites, @object
    .p2align 3
lb_memory_sites:
    .zero 10240

    .bss
    .globl lb_memory_9site_next
    .type lb_memory_9site_next, @object
    .p2align 3
lb_memory_9site_next:
    .zero 8

    .bss
    .globl lb_memory_12records_lock
    .type lb_memory_12records_lock, @object
    .p2align 0
lb_memory_12records_lock:
    .zero 1

    .bss
    .globl lb_memory_quarantine
    .type lb_memory_quarantine, @object
    .p2align 3
lb_memory_quarantine:
    .zero 1536

    .bss
    .globl lb_memory_15quarantine_next
    .type lb_memory_15quarantine_next, @object
    .p2align 3
lb_memory_15quarantine_next:
    .zero 8

    .bss
    .globl lb_memory_10held_pages
    .type lb_memory_10held_pages, @object
    .p2align 3
lb_memory_10held_pages:
    .zero 192

    .bss
    .globl lb_memory_9held_next
    .type lb_memory_9held_next, @object
    .p2align 3
lb_memory_9held_next:
    .zero 8

    .bss
    .globl lb_memory_exhausted
    .type lb_memory_exhausted, @object
    .p2align 2
lb_memory_exhausted:
    .zero 4

    .bss
    .globl lb_memory_unset
    .type lb_memory_unset, @object
    .p2align 2
lb_memory_unset:
    .zero 4

    .bss
    .globl lb_memory_11c_allocator
    .type lb_memory_11c_allocator, @object
    .p2align 0
lb_memory_11c_allocator:
    .zero 1

    .section .tbss,"awT",@nobits
    .globl lb_memory_allocator
    .type lb_memory_allocator, @object
    .p2align 3
lb_memory_allocator:
    .zero 16

    .bss
    .globl lb_memory_heap
    .type lb_memory_heap, @object
    .p2align 3
lb_memory_heap:
    .zero 16

    .section .note.GNU-stack,"",@progbits
