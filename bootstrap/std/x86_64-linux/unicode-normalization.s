    .text

    .p2align 4
    .globl lb_unicode_normalization_0init
    .type lb_unicode_normalization_0init, @function
lb_unicode_normalization_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_unicode_normalize
    .type lb_unicode_normalize, @function
lb_unicode_normalize:
    pushq %rbp
    movq %rsp, %rbp
    subq $736, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -112(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movl %ecx, -128(%rbp)
    leaq -144(%rbp), %r10
    movq %r8, 0(%r10)
    movq %r9, 8(%r10)
    leaq -128(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %eax
    movl %eax, -648(%rbp)
    movl -648(%rbp), %eax
    movl $2, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %eax
    movl %eax, -656(%rbp)
    movl -656(%rbp), %eax
    testl %eax, %eax
    jne .L1_60
    jmp .L1_1
.L1_60:
    movl -656(%rbp), %eax
    movl %eax, %r13d
    jmp .L1_2
.L1_1:
    movl -648(%rbp), %eax
    movl $3, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r13d
.L1_2:
    movzbl %r13b, %r14d
    leaq -160(%rbp), %r15
    movq %r15, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -112(%rbp), %rax
    movq %rax, -664(%rbp)
    movzbl %r14b, %eax
    movl %eax, -672(%rbp)
    subq $16, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq -664(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movl -672(%rbp), %ecx
    movq %r15, %r10
    movq 0(%r10), %r8
    movq 8(%r10), %r9
    leaq -200(%rbp), %rdi
    call lb_unicode_14decompose_pass@PLT
    addq $16, %rsp
    leaq -200(%rbp), %rbx
    movq $32, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L1_4
    jmp .L1_3
.L1_4:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq -96(%rbp), %r13
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
.L1_5:
.L1_3:
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -680(%rbp)
    movq -680(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L1_7
.L1_6:
    leaq .Ltext_0(%rip), %rbx
    leaq -216(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -264(%rbp), %rdi
    call lb_strings_copy@PLT
    leaq -264(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_10
    jmp .L1_9
.L1_10:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -96(%rbp), %r13
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
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
.L1_11:
.L1_9:
    leaq -96(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
.L1_12:
    jmp .L1_8
.L1_7:
.L1_8:
    leaq -272(%rbp), %rbx
    movq -680(%rbp), %rdi
    movq $4, %rsi
    movl $64, %edx
    movq %rbx, %rcx
    call lb_core_6qmul_u@PLT
    movl %eax, %r15d
    leaq -288(%rbp), %r12
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movb %r15b, (%r10)
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_13
    jmp .L1_14
.L1_13:
    jmp .L1_15
.L1_14:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_1(%rip), %r13
    leaq -304(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $41, %rax
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
.L1_16:
.L1_15:
    leaq -320(%rbp), %rax
    movq %rax, -712(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -720(%rbp)
    leaq -368(%rbp), %rax
    movq %rax, -728(%rbp)
    movq -680(%rbp), %rax
    movabsq $1152921504606846976, %rcx
    cmpq %rcx, %rax
    jbe .L1_18
.L1_17:
    movq -728(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -728(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_19
.L1_18:
    movq -680(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq -720(%rbp), %r10
    movq (%r10), %rbx
    movq -720(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L1_20
    jmp .L1_21
.L1_21:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_20:
    movq %r12, %r10
    movq (%r10), %r13
    movq %rbx, %rsi
    movq %r15, %rdx
    movq $4, %rcx
    leaq -392(%rbp), %rdi
    movq %r13, %r11
    call *%r11
    leaq -392(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r15
    setne %al
    movzbl %al, %eax
    movl %eax, -688(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl -688(%rbp), %eax
    movl %r13d, %ecx
    movl %eax, %r13d
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L1_22
    jmp .L1_23
.L1_22:
    movq -728(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_5(%rip), %r12
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
    movq -728(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_19
.L1_23:
    movq %r14, %r10
    movq (%r10), %rbx
    movq -728(%rbp), %r10
    movq %rbx, (%r10)
    movq -728(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -680(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -728(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L1_19:
    movq -728(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_25
    jmp .L1_24
.L1_25:
    movq -728(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
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
.L1_26:
.L1_24:
    movq -728(%rbp), %r10
    movq -712(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $16, %rsp
    movq $1, %rax
    movq %rax, 0(%rsp)
    movq -664(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movl -672(%rbp), %ecx
    movq -712(%rbp), %r10
    movq 0(%r10), %r8
    movq 8(%r10), %r9
    leaq -432(%rbp), %rdi
    call lb_unicode_14decompose_pass@PLT
    addq $16, %rsp
    leaq -432(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_28
    jmp .L1_27
.L1_28:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -96(%rbp), %r13
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -448(%rbp), %rbx
    movq -712(%rbp), %r10
    movq (%r10), %r14
    movq -712(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $4, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq -720(%rbp), %r10
    movq (%r10), %r14
    movq -720(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L1_30
    jmp .L1_29
.L1_30:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r14, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L1_29:
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
.L1_31:
.L1_27:
    movq %r12, %r10
    movq (%r10), %rbx
    movq -680(%rbp), %rax
    cmpq %rbx, %rax
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L1_33
.L1_32:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_utf8_16invalid_sequence(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_7(%rip), %r13
    leaq -464(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $37, %rax
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
    leaq -480(%rbp), %r12
    movq -712(%rbp), %r10
    movq (%r10), %r13
    movq -712(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $4, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
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
    movq -720(%rbp), %r10
    movq (%r10), %r13
    movq -720(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L1_36
    jmp .L1_35
.L1_36:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r13, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r11
    call *%r11
.L1_35:
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
.L1_37:
    jmp .L1_34
.L1_33:
.L1_34:
    movq -712(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -512(%rbp), %rdi
    call lb_unicode_15canonical_order@PLT
    leaq -512(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_39
    jmp .L1_38
.L1_39:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -528(%rbp), %r13
    movq -712(%rbp), %r10
    movq (%r10), %r14
    movq -712(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $4, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
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
    movq -720(%rbp), %r10
    movq (%r10), %r14
    movq -720(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L1_41
    jmp .L1_40
.L1_41:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L1_40:
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
.L1_42:
.L1_38:
    movl -648(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L1_61
    jmp .L1_46
.L1_61:
    movl %ebx, %r12d
    jmp .L1_47
.L1_46:
    movl -656(%rbp), %eax
    movl %eax, %r12d
.L1_47:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L1_43
    jmp .L1_44
.L1_43:
    movq -712(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_unicode_17compose_canonical@PLT
    movq %rax, %rbx
    jmp .L1_45
.L1_44:
    movq -680(%rbp), %rax
    movq %rax, %rbx
.L1_45:
    movq -712(%rbp), %r10
    movq (%r10), %r14
    movq -712(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $1, %rcx
    addq %rcx, %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %rbx, %rax
    jbe .L1_48
.L1_49:
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_48:
    leaq -544(%rbp), %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    leaq -144(%rbp), %r15
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    leaq -592(%rbp), %rdi
    call lb_unicode_17encode_normalized@PLT
    leaq -592(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_51
    jmp .L1_50
.L1_51:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq -96(%rbp), %rax
    movq %rax, -696(%rbp)
    movq -696(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -696(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -608(%rbp), %rbx
    movq -712(%rbp), %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $4, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq -720(%rbp), %r10
    movq (%r10), %r13
    movq -720(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L1_53
    jmp .L1_52
.L1_53:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L1_52:
    movq -696(%rbp), %rsi
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
.L1_54:
.L1_50:
    leaq -96(%rbp), %rax
    movq %rax, -704(%rbp)
    movq %r15, %r10
    movq -704(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -704(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -624(%rbp), %r13
    movq -712(%rbp), %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $4, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq -720(%rbp), %r10
    movq (%r10), %rbx
    movq -720(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L1_56
    jmp .L1_55
.L1_56:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L1_55:
    movq -704(%rbp), %rsi
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
.L1_57:
    leaq -320(%rbp), %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    leaq -640(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $4, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L1_59
    jmp .L1_58
.L1_59:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L1_58:
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_unicode_14decompose_pass
    .type lb_unicode_14decompose_pass, @function
lb_unicode_14decompose_pass:
    pushq %rbp
    movq %rsp, %rbp
    subq $672, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -104(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movl %ecx, -120(%rbp)
    leaq -136(%rbp), %r10
    movq %r8, 0(%r10)
    movq %r9, 8(%r10)
    movq 16(%rbp), %rax
    movl %eax, -152(%rbp)
    leaq -168(%rbp), %rax
    movq %rax, -600(%rbp)
    leaq -120(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_1
    jmp .L2_2
.L2_1:
    leaq lb_unicode_22compatibility_mappings(%rip), %rbx
    leaq -184(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_3
.L2_2:
    leaq lb_unicode_18canonical_mappings(%rip), %rbx
    leaq -184(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L2_3:
    leaq -184(%rbp), %rax
    movq %rax, -424(%rbp)
    movq -424(%rbp), %r10
    movq -600(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -104(%rbp), %rax
    movq %rax, -432(%rbp)
    movq -432(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -440(%rbp)
    leaq -200(%rbp), %rax
    movq %rax, -624(%rbp)
    leaq -224(%rbp), %rax
    movq %rax, -632(%rbp)
    movq -632(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -448(%rbp)
    leaq -240(%rbp), %rax
    movq %rax, -456(%rbp)
    movq -624(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -464(%rbp)
    leaq -280(%rbp), %rax
    movq %rax, -640(%rbp)
    leaq -312(%rbp), %rax
    movq %rax, -648(%rbp)
    movq -648(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -496(%rbp)
    leaq -360(%rbp), %rax
    movq %rax, -512(%rbp)
    leaq -336(%rbp), %rax
    movq %rax, -520(%rbp)
    leaq -336(%rbp), %rax
    movq %rax, -504(%rbp)
    leaq -336(%rbp), %rax
    movq %rax, -528(%rbp)
    movq -640(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -536(%rbp)
    leaq -368(%rbp), %rax
    movq %rax, -544(%rbp)
    leaq -384(%rbp), %rax
    movq %rax, -664(%rbp)
    movq -664(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -560(%rbp)
    leaq -152(%rbp), %rax
    movq %rax, -568(%rbp)
    leaq -136(%rbp), %rax
    movq %rax, -576(%rbp)
    movq -576(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -584(%rbp)
    movq $0, %rax
    movq %rax, -608(%rbp)
    movq $0, %rax
    movq %rax, -616(%rbp)
.L2_4:
    movq -440(%rbp), %r10
    movq (%r10), %r14
    movq -608(%rbp), %rax
    cmpq %r14, %rax
    jae .L2_6
.L2_5:
    movq -432(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -608(%rbp), %rcx
    leaq -224(%rbp), %rdi
    call lb_utf8_decode@PLT
    movq -448(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L2_7
    jmp .L2_8
.L2_7:
    movq -632(%rbp), %r10
    movq -456(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_9
.L2_8:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_utf8_16invalid_sequence(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_13(%rip), %r13
    leaq -256(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $18, %rax
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
.L2_9:
    movq -456(%rbp), %r10
    movq -624(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -464(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -472(%rbp)
    movq -472(%rbp), %rax
    movq -608(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -480(%rbp)
    movq -624(%rbp), %r10
    movl (%r10), %r13d
    movl %r13d, %r13d
    movl $44032, %ecx
    cmpl %ecx, %r13d
    setae %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L2_11
    jmp .L2_54
.L2_54:
    movl %r14d, %r15d
    jmp .L2_12
.L2_11:
    movl $55203, %ecx
    cmpl %ecx, %r13d
    setbe %al
    movzbl %al, %r15d
.L2_12:
    movzbl %r15b, %eax
    movl %eax, -488(%rbp)
    movq -600(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movl %r13d, %ecx
    leaq -312(%rbp), %rdi
    call lb_unicode_mapped@PLT
    movq -496(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L2_13
    jmp .L2_14
.L2_13:
    movq -648(%rbp), %r10
    movq -504(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L2_15
.L2_14:
    movl %r13d, %esi
    leaq -360(%rbp), %rdi
    call lb_unicode_16identity_mapping@PLT
    movq -512(%rbp), %r10
    movq -520(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
.L2_15:
    movq -528(%rbp), %r10
    movq -640(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl -488(%rbp), %eax
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L2_16
    jmp .L2_17
.L2_16:
    movl %r13d, %eax
    movl $44032, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r15d
.L2_23:
    movl $28, %ecx
    movl %r15d, %eax
    xorl %edx, %edx
    divl %ecx
    movl %edx, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L2_20
.L2_19:
    movq $2, %rax
    movq %rax, %rbx
    jmp .L2_21
.L2_20:
    movq $3, %rax
    movq %rax, %rbx
.L2_21:
    movq %rbx, %rax
    movq %rax, -656(%rbp)
    jmp .L2_18
.L2_17:
    movq -536(%rbp), %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq %rax, -656(%rbp)
.L2_18:
    movq -616(%rbp), %rdi
    movq -656(%rbp), %rsi
    movl $64, %edx
    movq -544(%rbp), %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %ebx
    movq -544(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -552(%rbp)
    movq -552(%rbp), %rax
    movq -664(%rbp), %r10
    movq %rax, (%r10)
    movq -560(%rbp), %r10
    movb %bl, (%r10)
    movq -560(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_24
    jmp .L2_25
.L2_24:
    jmp .L2_26
.L2_25:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_17(%rip), %r13
    leaq -400(%rbp), %r14
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
.L2_26:
    movq -568(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_28
    jmp .L2_29
.L2_28:
    movq -584(%rbp), %r10
    movq (%r10), %rbx
    movq -552(%rbp), %rax
    cmpq %rbx, %rax
    jbe .L2_32
.L2_31:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_utf8_16invalid_sequence(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_7(%rip), %r13
    leaq -416(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $37, %rax
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
.L2_32:
.L2_33:
    testl %r14d, %r14d
    jne .L2_35
    jmp .L2_36
.L2_35:
    movl %r13d, %eax
    movl $44032, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, -592(%rbp)
    movq -576(%rbp), %r10
    movq (%r10), %r15
    movq -616(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -616(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r15, %r12
    addq %rcx, %r12
.L2_39:
    movl $588, %ecx
    movl -592(%rbp), %eax
    xorl %edx, %edx
    divl %ecx
    movl %eax, %r13d
    movl %r13d, %eax
    movl $4352, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    movq -616(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $4, %rcx
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %r15, %r13
    addq %rcx, %r13
.L2_41:
    movl $588, %ecx
    movl -592(%rbp), %eax
    xorl %edx, %edx
    divl %ecx
    movl %edx, %r12d
.L2_43:
    movl $28, %ecx
    movl %r12d, %eax
    xorl %edx, %edx
    divl %ecx
    movl %eax, %r14d
    movl %r14d, %eax
    movl $4449, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    movq -656(%rbp), %rax
    movq $3, %rcx
    cmpq %rcx, %rax
    jne .L2_45
.L2_44:
    movq -616(%rbp), %rax
    movq $2, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    cmpq %rbx, %r12
    jb 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $4, %rcx
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r15, %r12
    addq %rcx, %r12
.L2_48:
    movl $28, %ecx
    movl -592(%rbp), %eax
    xorl %edx, %edx
    divl %ecx
    movl %edx, %ebx
    movl %ebx, %eax
    movl $4519, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %ebx
    movq %r12, %r10
    movl %ebx, (%r10)
    jmp .L2_46
.L2_45:
.L2_46:
    jmp .L2_37
.L2_36:
    movq $0, %rax
    movq %rax, %r12
.L2_49:
    movq -656(%rbp), %rcx
    cmpq %rcx, %r12
    jae .L2_52
.L2_50:
    movq -616(%rbp), %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -576(%rbp), %r10
    movq (%r10), %r14
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $4, %rcx
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq -640(%rbp), %rdi
    movq %r12, %rsi
    call lb_unicode_Mapping_at@PLT
    movl %eax, %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
.L2_51:
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r12
    jmp .L2_49
.L2_52:
.L2_37:
    jmp .L2_30
.L2_29:
.L2_30:
    movq -480(%rbp), %rax
    movq %rax, -608(%rbp)
    movq -552(%rbp), %rax
    movq %rax, -616(%rbp)
    jmp .L2_4
.L2_6:
    leaq -88(%rbp), %rbx
    movq -616(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
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
    .globl lb_unicode_15canonical_order
    .type lb_unicode_15canonical_order, @function
lb_unicode_15canonical_order:
    pushq %rbp
    movq %rsp, %rbp
    subq $352, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -96(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -96(%rbp), %rax
    movq %rax, -224(%rbp)
    movq -224(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -232(%rbp)
    movq $0, %rax
    movq %rax, -288(%rbp)
    movq $0, %rax
    movq %rax, -296(%rbp)
.L3_1:
    movq -232(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -240(%rbp)
    movq -288(%rbp), %rax
    movq -240(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L3_3
.L3_2:
    movq -224(%rbp), %r10
    movq (%r10), %r14
    movq -288(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movl %r12d, %edi
    call lb_unicode_15combining_class@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L3_5
.L3_4:
    movq -288(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %rax
    movq %rax, -288(%rbp)
    jmp .L3_1
.L3_7:
    jmp .L3_6
.L3_5:
.L3_6:
    movq -288(%rbp), %rax
    movq %rax, %r12
    movl $0, %eax
    movl %eax, %ebx
    movl $0, %eax
    movl %eax, -344(%rbp)
.L3_8:
    movq -240(%rbp), %rcx
    cmpq %rcx, %r12
    jae .L3_10
.L3_9:
    movq $4, %rcx
    movq %r12, %r13
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movl %r13d, %edi
    call lb_unicode_15combining_class@PLT
    movl %eax, %r13d
    movzbl %r13b, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L3_12
.L3_11:
    jmp .L3_10
.L3_14:
    jmp .L3_13
.L3_12:
.L3_13:
    movzbl %bl, %r15d
    cmpl %r15d, %r13d
    jae .L3_16
.L3_15:
    movl $1, %eax
    movl %eax, %r15d
    jmp .L3_17
.L3_16:
    movl -344(%rbp), %eax
    movl %eax, %r15d
.L3_17:
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r12
    movl %r13d, %ebx
    movl %r15d, %eax
    movl %eax, -344(%rbp)
    jmp .L3_8
.L3_10:
    movq %r12, %rax
    movq -288(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movl -344(%rbp), %eax
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L3_21
    jmp .L3_61
.L3_61:
    movl %r13d, %r14d
    jmp .L3_22
.L3_21:
    movq -296(%rbp), %rcx
    cmpq %rcx, %rbx
    seta %al
    movzbl %al, %r14d
.L3_22:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L3_18
    jmp .L3_19
.L3_18:
    movq %rbx, %r13
    jmp .L3_20
.L3_19:
    movq -296(%rbp), %rax
    movq %rax, %r13
.L3_20:
    movq %r12, %rax
    movq %rax, -288(%rbp)
    movq %r13, %rax
    movq %rax, -296(%rbp)
    jmp .L3_1
.L3_3:
    movq -296(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L3_24
.L3_23:
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
.L3_26:
    jmp .L3_25
.L3_24:
.L3_25:
    leaq -112(%rbp), %rax
    movq %rax, -304(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -312(%rbp)
    leaq -160(%rbp), %rax
    movq %rax, -320(%rbp)
    movq -296(%rbp), %rax
    movabsq $1152921504606846976, %rcx
    cmpq %rcx, %rax
    jbe .L3_28
.L3_27:
    movq -320(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %r15
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -320(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L3_29
.L3_28:
    movq -296(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq -312(%rbp), %r10
    movq (%r10), %rbx
    movq -312(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L3_30
    jmp .L3_31
.L3_31:
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_30:
    movq %r12, %r10
    movq (%r10), %r13
    movq %rbx, %rsi
    movq %r15, %rdx
    movq $4, %rcx
    leaq -184(%rbp), %rdi
    movq %r13, %r11
    call *%r11
    leaq -184(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r15
    setne %al
    movzbl %al, %eax
    movl %eax, -248(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl -248(%rbp), %eax
    movl %r13d, %ecx
    movl %eax, %r13d
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L3_32
    jmp .L3_33
.L3_32:
    movq -320(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_5(%rip), %r12
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
    movq -320(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L3_29
.L3_33:
    movq %r14, %r10
    movq (%r10), %rbx
    movq -320(%rbp), %r10
    movq %rbx, (%r10)
    movq -320(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -296(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -320(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L3_29:
    movq -320(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_35
    jmp .L3_34
.L3_35:
    movq -320(%rbp), %rax
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
.L3_36:
.L3_34:
    movq -320(%rbp), %r10
    movq -304(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -240(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    movq %rax, -264(%rbp)
    leaq -200(%rbp), %rax
    movq %rax, -272(%rbp)
    movq -272(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -280(%rbp)
    movq $0, %rax
    movq %rax, -328(%rbp)
.L3_37:
    movq -328(%rbp), %rax
    movq -240(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L3_39
.L3_38:
    movq -224(%rbp), %r10
    movq (%r10), %r15
    movq -328(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq %r15, %rax
    addq %r13, %rax
    movq %rax, -256(%rbp)
    movq -256(%rbp), %r10
    movl (%r10), %r12d
    movl %r12d, %edi
    call lb_unicode_15combining_class@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L3_41
.L3_40:
    movq -328(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %rax
    movq %rax, -328(%rbp)
    jmp .L3_37
.L3_43:
    jmp .L3_42
.L3_41:
.L3_42:
    movq -328(%rbp), %rax
    movq %rax, %r12
    movl $0, %eax
    movl %eax, %r13d
    movl $0, %eax
    movl %eax, -336(%rbp)
.L3_44:
    movq -240(%rbp), %rcx
    cmpq %rcx, %r12
    jae .L3_46
.L3_45:
    movq $4, %rcx
    movq %r12, %r14
    imulq %rcx, %r14
    movq %r14, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl %r14d, %edi
    call lb_unicode_15combining_class@PLT
    movl %eax, %r14d
    movzbl %r14b, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L3_48
.L3_47:
    jmp .L3_46
.L3_50:
    jmp .L3_49
.L3_48:
.L3_49:
    movzbl %r13b, %ebx
    cmpl %ebx, %r14d
    jae .L3_52
.L3_51:
    movl $1, %eax
    movl %eax, %ebx
    jmp .L3_53
.L3_52:
    movl -336(%rbp), %eax
    movl %eax, %ebx
.L3_53:
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r12
    movl %r14d, %r13d
    movl %ebx, %eax
    movl %eax, -336(%rbp)
    jmp .L3_44
.L3_46:
    movl -336(%rbp), %eax
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L3_54
    jmp .L3_55
.L3_54:
    movq -328(%rbp), %rax
    movq -264(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -264(%rbp), %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -328(%rbp), %rax
    cmpq %r12, %rax
    jbe .L3_57
.L3_58:
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_57:
    movq -328(%rbp), %rcx
    movq %r12, %rbx
    subq %rcx, %rbx
    movq -256(%rbp), %rax
    movq -272(%rbp), %r10
    movq %rax, (%r10)
    movq -280(%rbp), %r10
    movq %rbx, (%r10)
    movq -272(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -304(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_unicode_9order_run@PLT
    jmp .L3_56
.L3_55:
.L3_56:
    movq %r12, %rax
    movq %rax, -328(%rbp)
    jmp .L3_37
.L3_39:
    leaq -216(%rbp), %rbx
    movq -304(%rbp), %r10
    movq (%r10), %r12
    movq -304(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $4, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -312(%rbp), %r10
    movq (%r10), %r12
    movq -312(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L3_60
    jmp .L3_59
.L3_60:
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r11
    call *%r11
.L3_59:
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
    .globl lb_unicode_9order_run
    .type lb_unicode_9order_run, @function
lb_unicode_9order_run:
    pushq %rbp
    movq %rsp, %rbp
    subq $224, %rsp
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
    leaq -56(%rbp), %rax
    movq %rax, -80(%rbp)
    movq -80(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -88(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L4_1:
    movq -88(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L4_4
.L4_2:
    movq -80(%rbp), %r10
    movq (%r10), %r14
    movq $4, %rcx
    movq %r13, %r15
    imulq %rcx, %r15
    movq %r15, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl (%r10), %r12d
    movq %r15, %r10
    movl (%r10), %r14d
    movl %r14d, %edi
    call lb_unicode_15combining_class@PLT
    movl %eax, %r14d
    movl %r14d, %r14d
.L4_6:
    movl $21, %ecx
    movl %r14d, %ebx
    shll %cl, %ebx
    orl %r12d, %ebx
    movq %r15, %r10
    movl %ebx, (%r10)
.L4_3:
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r13
    jmp .L4_1
.L4_4:
    movq -80(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -96(%rbp)
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -128(%rbp)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -136(%rbp)
    movq -80(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -144(%rbp)
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -104(%rbp)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -112(%rbp)
    movq -80(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -120(%rbp)
    movq -80(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -152(%rbp)
    leaq -72(%rbp), %rax
    movq %rax, -160(%rbp)
    movq -160(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -168(%rbp)
    movq -160(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -176(%rbp)
    movq -176(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -184(%rbp)
    movq $1, %rax
    movq %rax, -192(%rbp)
.L4_7:
    movq -192(%rbp), %rax
    movq -88(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L4_9
.L4_8:
    movq $0, %rax
    movq %rax, %r14
.L4_10:
    movq -88(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L4_12
.L4_11:
    movq -88(%rbp), %rax
    movq %rax, %r13
    subq %r14, %r13
    movq -192(%rbp), %rax
    cmpq %r13, %rax
    jae .L4_14
.L4_13:
    movq -192(%rbp), %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r13, %rax
    movq %rax, -200(%rbp)
    jmp .L4_15
.L4_14:
    movq -88(%rbp), %rax
    movq %rax, -200(%rbp)
.L4_15:
    movq -88(%rbp), %rax
    movq -200(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -192(%rbp), %rax
    cmpq %r12, %rax
    jae .L4_17
.L4_16:
    movq -192(%rbp), %rax
    movq -200(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %rax
    movq %rax, -208(%rbp)
    jmp .L4_18
.L4_17:
    movq -88(%rbp), %rax
    movq %rax, -208(%rbp)
.L4_18:
    movq %r14, %r15
    movq -200(%rbp), %rax
    movq %rax, -216(%rbp)
    movq %r14, %rbx
.L4_19:
    movq -208(%rbp), %rcx
    cmpq %rcx, %rbx
    jae .L4_21
.L4_20:
    movq -200(%rbp), %rcx
    cmpq %rcx, %r15
    setb %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L4_25
    jmp .L4_47
.L4_47:
    movl %r14d, %r13d
    jmp .L4_26
.L4_25:
    movq -208(%rbp), %rax
    movq -216(%rbp), %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L4_48
    jmp .L4_27
.L4_48:
    movl %r13d, %r14d
    jmp .L4_28
.L4_27:
    movq -88(%rbp), %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $4, %rcx
    movq %r15, %r13
    imulq %rcx, %r13
    movq -96(%rbp), %rax
    movq %r13, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
.L4_30:
    movl $21, %ecx
    movl %r13d, %r12d
    shrl %cl, %r12d
    movq -216(%rbp), %rax
    movq -88(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -216(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq -96(%rbp), %rax
    movq %r14, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
.L4_32:
    movl $21, %ecx
    movl %r14d, %r13d
    shrl %cl, %r13d
    cmpl %r13d, %r12d
    setbe %al
    movzbl %al, %r13d
    movl %r13d, %r14d
.L4_28:
    movzbl %r14b, %r13d
.L4_26:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L4_22
    jmp .L4_23
.L4_22:
    movq -112(%rbp), %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $4, %rcx
    movq %rbx, %r12
    imulq %rcx, %r12
    movq -104(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq -88(%rbp), %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $4, %rcx
    movq %r15, %r13
    imulq %rcx, %r13
    movq -120(%rbp), %rax
    movq %r13, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    movq $1, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq -216(%rbp), %rax
    movq %rax, %r13
    jmp .L4_24
.L4_23:
    movq -136(%rbp), %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $4, %rcx
    movq %rbx, %r12
    imulq %rcx, %r12
    movq -128(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq -216(%rbp), %rax
    movq -88(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -216(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq -144(%rbp), %rax
    movq %r13, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    movq -216(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r15, %r12
.L4_24:
    movq $1, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r12, %r15
    movq %r13, %rax
    movq %rax, -216(%rbp)
    movq %r14, %rbx
    jmp .L4_19
.L4_21:
    movq -208(%rbp), %rax
    movq %rax, %r14
    jmp .L4_10
.L4_12:
    movq $0, %rax
    movq %rax, %rbx
.L4_33:
    movq -88(%rbp), %rcx
    cmpq %rcx, %rbx
    jae .L4_36
.L4_34:
    movq $4, %rcx
    movq %rbx, %r12
    imulq %rcx, %r12
    movq -152(%rbp), %rax
    movq %rax, %r13
    addq %r12, %r13
    movq -184(%rbp), %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -168(%rbp), %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %r13, %r10
    movl %r12d, (%r10)
.L4_35:
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %rbx
    jmp .L4_33
.L4_36:
.L4_41:
    movq $2, %rcx
    movq -88(%rbp), %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %rbx
    movq -192(%rbp), %rax
    cmpq %rbx, %rax
    jbe .L4_38
.L4_37:
    jmp .L4_9
.L4_38:
.L4_39:
    movq -192(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_47(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %rbx, %rax
    movq %rax, -192(%rbp)
    jmp .L4_7
.L4_9:
    movq -80(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rax
    movq %rax, %r12
.L4_43:
    movq -88(%rbp), %rcx
    cmpq %rcx, %r12
    jae .L4_46
.L4_44:
    movq $4, %rcx
    movq %r12, %r13
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r14d
    movl $2097151, %ecx
    andl %ecx, %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
.L4_45:
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r12
    jmp .L4_43
.L4_46:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_unicode_17compose_canonical
    .type lb_unicode_17compose_canonical, @function
lb_unicode_17compose_canonical:
    pushq %rbp
    movq %rsp, %rbp
    subq $400, %rsp
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
    movq %rax, -152(%rbp)
    movq -152(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L5_2
.L5_1:
    movq $0, %rax
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
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -160(%rbp)
    movq $0, %rax
    movq -152(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -160(%rbp), %r10
    movl (%r10), %eax
    movl %eax, -168(%rbp)
    movl -168(%rbp), %edi
    call lb_unicode_15combining_class@PLT
    movl %eax, -176(%rbp)
    leaq -64(%rbp), %rax
    movq %rax, -376(%rbp)
    leaq lb_unicode_20composition_mappings(%rip), %rax
    movq %rax, -264(%rbp)
    movq -264(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -272(%rbp)
    leaq -144(%rbp), %rax
    movq %rax, -320(%rbp)
    leaq -80(%rbp), %rax
    movq %rax, -328(%rbp)
    leaq -136(%rbp), %rax
    movq %rax, -296(%rbp)
    movq -296(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, -304(%rbp)
    leaq -80(%rbp), %rax
    movq %rax, -312(%rbp)
    leaq -128(%rbp), %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, -248(%rbp)
    leaq -80(%rbp), %rax
    movq %rax, -256(%rbp)
    leaq -120(%rbp), %rax
    movq %rax, -216(%rbp)
    movq -216(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, -224(%rbp)
    leaq -80(%rbp), %rax
    movq %rax, -232(%rbp)
    leaq -72(%rbp), %rax
    movq %rax, -200(%rbp)
    movq -376(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, -208(%rbp)
    movq $0, %rax
    movq %rax, -336(%rbp)
    movl -168(%rbp), %eax
    movl %eax, -344(%rbp)
    movl -176(%rbp), %eax
    movl %eax, -352(%rbp)
    movq $1, %rax
    movq %rax, -360(%rbp)
    movq $1, %rax
    movq %rax, -368(%rbp)
.L5_5:
    movq -368(%rbp), %rax
    movq -152(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L5_8
.L5_6:
    movq -368(%rbp), %rax
    movq $4, %rcx
    movq %rax, %rbx
    imulq %rcx, %rbx
    movq -160(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movl (%r10), %eax
    movl %eax, -184(%rbp)
    movl -184(%rbp), %edi
    call lb_unicode_15combining_class@PLT
    movl %eax, -192(%rbp)
    movl -344(%rbp), %eax
    leaq -96(%rbp), %r10
    movl %eax, (%r10)
    movl -184(%rbp), %eax
    leaq -112(%rbp), %r10
    movl %eax, (%r10)
    movl -344(%rbp), %eax
    movl $4352, %ecx
    cmpl %ecx, %eax
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L5_26
    jmp .L5_67
.L5_67:
    movl %r12d, %r15d
    jmp .L5_27
.L5_26:
    movl -344(%rbp), %eax
    movl $4371, %ecx
    cmpl %ecx, %eax
    setb %al
    movzbl %al, %r15d
.L5_27:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L5_28
    jmp .L5_68
.L5_68:
    movl %r12d, %r15d
    jmp .L5_29
.L5_28:
    movl -184(%rbp), %eax
    movl $4449, %ecx
    cmpl %ecx, %eax
    setae %al
    movzbl %al, %r15d
.L5_29:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L5_30
    jmp .L5_69
.L5_69:
    movl %r12d, %r15d
    jmp .L5_31
.L5_30:
    movl -184(%rbp), %eax
    movl $4470, %ecx
    cmpl %ecx, %eax
    setb %al
    movzbl %al, %r15d
.L5_31:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L5_23
    jmp .L5_24
.L5_23:
    movl -344(%rbp), %eax
    movl $4352, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
    movl %r12d, %eax
    movl $588, %ecx
    mull %ecx
    jnc 1f
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
    movl %r12d, %eax
    movl $44032, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
    movl -184(%rbp), %eax
    movl $4449, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r15d
    movl %r15d, %eax
    movl $28, %ecx
    mull %ecx
    jnc 1f
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r15d
    movl %r12d, %eax
    movl %r15d, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
    movq -216(%rbp), %r10
    movl %r12d, (%r10)
    movl $1, %eax
    movq -224(%rbp), %r10
    movb %al, (%r10)
    movq -216(%rbp), %r10
    movq -232(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq -232(%rbp), %r10
    leaq -72(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movl %r12d, %eax
    movl %eax, -400(%rbp)
    jmp .L5_66
.L5_24:
.L5_25:
    movl -344(%rbp), %eax
    movl $44032, %ecx
    cmpl %ecx, %eax
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L5_36
    jmp .L5_70
.L5_70:
    movl %r12d, %r15d
    jmp .L5_37
.L5_36:
    movl -344(%rbp), %eax
    movl $55203, %ecx
    cmpl %ecx, %eax
    setbe %al
    movzbl %al, %r15d
.L5_37:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L5_38
    jmp .L5_71
.L5_71:
    movl %r12d, %r15d
    jmp .L5_39
.L5_38:
    movl -344(%rbp), %eax
    movl $44032, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_56(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
.L5_41:
    movl $28, %ecx
    movl %r12d, %eax
    xorl %edx, %edx
    divl %ecx
    movl %edx, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
.L5_39:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L5_42
    jmp .L5_72
.L5_72:
    movl %r12d, %r15d
    jmp .L5_43
.L5_42:
    movl -184(%rbp), %eax
    movl $4519, %ecx
    cmpl %ecx, %eax
    seta %al
    movzbl %al, %r15d
.L5_43:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L5_44
    jmp .L5_73
.L5_73:
    movl %r12d, %r15d
    jmp .L5_45
.L5_44:
    movl -184(%rbp), %eax
    movl $4547, %ecx
    cmpl %ecx, %eax
    setb %al
    movzbl %al, %r15d
.L5_45:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L5_33
    jmp .L5_34
.L5_33:
    movl -184(%rbp), %eax
    movl -344(%rbp), %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_57(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
    movl %r12d, %eax
    movl $4519, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_57(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
    movq -240(%rbp), %r10
    movl %r12d, (%r10)
    movl $1, %eax
    movq -248(%rbp), %r10
    movb %al, (%r10)
    movq -240(%rbp), %r10
    movq -256(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq -256(%rbp), %r10
    leaq -72(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movl %r12d, %eax
    movl %eax, -400(%rbp)
    jmp .L5_66
.L5_34:
.L5_35:
    movl -344(%rbp), %eax
    movl %eax, %r12d
.L5_48:
    movq $21, %rcx
    movq %r12, %r15
    shlq %cl, %r15
    movl -184(%rbp), %eax
    movl %eax, %r13d
    movq %r13, %rcx
    movq %r15, %r13
    orq %rcx, %r13
    movq -272(%rbp), %r10
    movq (%r10), %r15
.L5_50:
    movq $24, %rcx
    movq %r15, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %r12
    movq $0, %rax
    movq %rax, -384(%rbp)
    movq %r12, %rax
    movq %rax, -392(%rbp)
.L5_51:
    movq -384(%rbp), %rax
    movq -392(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L5_53
.L5_52:
    movq -392(%rbp), %rax
    movq -384(%rbp), %rcx
    movq %rax, %r15
    subq %rcx, %r15
.L5_55:
    movq $2, %rcx
    movq %r15, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, -280(%rbp)
    movq -280(%rbp), %rax
    movq -384(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -288(%rbp)
    movq -288(%rbp), %rax
    movq $24, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -264(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %rdx
    call lb_unicode_10table_word@PLT
    movl %eax, %r14d
    movl %r14d, %r14d
.L5_57:
    movq $21, %rcx
    movq %r14, %r15
    shlq %cl, %r15
    movq %r12, %rax
    movq $8, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -264(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %rbx, %rdx
    call lb_unicode_10table_word@PLT
    movl %eax, %ebx
    movl %ebx, %ebx
    movq %rbx, %rcx
    movq %r15, %rbx
    orq %rcx, %rbx
    cmpq %r13, %rbx
    jae .L5_59
.L5_58:
    movq -288(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -392(%rbp), %rax
    movq %rax, %r12
    jmp .L5_60
.L5_59:
    cmpq %r13, %rbx
    jbe .L5_62
.L5_61:
    jmp .L5_63
.L5_62:
    movq %r12, %rax
    movq $16, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_64(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -264(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %rbx, %rdx
    call lb_unicode_10table_word@PLT
    movl %eax, %ebx
    movq -296(%rbp), %r10
    movl %ebx, (%r10)
    movl $1, %eax
    movq -304(%rbp), %r10
    movb %al, (%r10)
    movq -296(%rbp), %r10
    movq -312(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq -312(%rbp), %r10
    leaq -72(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movl %ebx, %eax
    movl %eax, -400(%rbp)
    jmp .L5_66
.L5_63:
    movq -384(%rbp), %rax
    movq %rax, %rbx
    movq -288(%rbp), %rax
    movq %rax, %r12
.L5_60:
    movq %rbx, %rax
    movq %rax, -384(%rbp)
    movq %r12, %rax
    movq %rax, -392(%rbp)
    jmp .L5_51
.L5_53:
    movq -320(%rbp), %r11
    movq $0, 0(%r11)
    movq -320(%rbp), %r10
    movq -328(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq -328(%rbp), %r10
    leaq -72(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movl $0, %eax
    movl %eax, -400(%rbp)
.L5_66:
    movq -200(%rbp), %r10
    movq -376(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq -208(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_12
    jmp .L5_10
.L5_12:
.L5_9:
    movl -352(%rbp), %eax
    movzbl %al, %ebx
    movl -192(%rbp), %eax
    movzbl %al, %r12d
    cmpl %r12d, %ebx
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L5_74
    jmp .L5_16
.L5_74:
    movl %r12d, %ebx
    jmp .L5_17
.L5_16:
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L5_17:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L5_13
    jmp .L5_14
.L5_13:
    movq -336(%rbp), %rax
    movq -152(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -336(%rbp), %rax
    movq $4, %rcx
    movq %rax, %rbx
    imulq %rcx, %rbx
    movq -160(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl -400(%rbp), %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -336(%rbp), %rax
    movq %rax, %rbx
    movl -400(%rbp), %eax
    movl %eax, %r12d
    movl -352(%rbp), %eax
    movl %eax, %r13d
    movq -360(%rbp), %rax
    movq %rax, %r14
    jmp .L5_7
.L5_14:
.L5_15:
    jmp .L5_11
.L5_10:
.L5_11:
    movl -192(%rbp), %eax
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L5_20
.L5_19:
    movq -360(%rbp), %rax
    movq %rax, %rbx
    movl -184(%rbp), %eax
    movl %eax, %r12d
    jmp .L5_21
.L5_20:
    movq -336(%rbp), %rax
    movq %rax, %rbx
    movl -344(%rbp), %eax
    movl %eax, %r12d
.L5_21:
    movq -360(%rbp), %rax
    movq -152(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -360(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq -160(%rbp), %rax
    movq %r14, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl -184(%rbp), %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq -360(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
.L5_7:
    movq -368(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %rbx, %rax
    movq %rax, -336(%rbp)
    movl %r12d, %eax
    movl %eax, -344(%rbp)
    movl %r13d, %eax
    movl %eax, -352(%rbp)
    movq %r14, %rax
    movq %rax, -360(%rbp)
    movq %r15, %rax
    movq %rax, -368(%rbp)
    jmp .L5_5
.L5_8:
    movq -360(%rbp), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_unicode_17encode_normalized
    .type lb_unicode_17encode_normalized, @function
lb_unicode_17encode_normalized:
    pushq %rbp
    movq %rsp, %rbp
    subq $608, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -112(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -128(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -432(%rbp)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -440(%rbp)
    leaq -144(%rbp), %rax
    movq %rax, -584(%rbp)
    movq -584(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -448(%rbp)
    leaq -168(%rbp), %rax
    movq %rax, -456(%rbp)
    leaq -184(%rbp), %rax
    movq %rax, -592(%rbp)
    movq -592(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -464(%rbp)
    leaq -128(%rbp), %rax
    movq %rax, -600(%rbp)
    movq -600(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -472(%rbp)
    movq $0, %rax
    movq %rax, -552(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L6_1:
    movq -440(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L6_4
.L6_2:
    movq $4, %rcx
    movq %r14, %r15
    imulq %rcx, %r15
    movq -432(%rbp), %rax
    movq %r15, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movl %r15d, %edi
    call lb_utf8_14encoded_length@PLT
    leaq -144(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    movq -448(%rbp), %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L6_5
    jmp .L6_6
.L6_5:
    movq -584(%rbp), %r10
    movq (%r10), %r15
    jmp .L6_7
.L6_6:
    leaq .Ltext_66(%rip), %rbx
    leaq -160(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $32, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_67(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_67(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_7:
    movq -552(%rbp), %rdi
    movq %r15, %rsi
    movl $64, %edx
    movq -456(%rbp), %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r13d
    movq -456(%rbp), %r10
    movq (%r10), %r12
    movq -592(%rbp), %r10
    movq %r12, (%r10)
    movq -464(%rbp), %r10
    movb %r13b, (%r10)
    movq -464(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L6_8
    jmp .L6_9
.L6_8:
    jmp .L6_10
.L6_9:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_68(%rip), %r13
    leaq -200(%rbp), %r14
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
.L6_11:
.L6_10:
    movq -472(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L6_15
    jmp .L6_13
.L6_15:
    movq -600(%rbp), %r10
    movq (%r10), %r13
.L6_12:
    cmpq %r13, %r12
    jbe .L6_17
.L6_16:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_16output_too_large(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_69(%rip), %r13
    leaq -216(%rbp), %r14
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
.L6_19:
    jmp .L6_18
.L6_17:
.L6_18:
    jmp .L6_14
.L6_13:
.L6_14:
.L6_3:
    movq $1, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r12, %rax
    movq %rax, -552(%rbp)
    movq %r13, %r14
    jmp .L6_1
.L6_4:
    leaq -224(%rbp), %r12
    movq -552(%rbp), %rdi
    movq $1, %rsi
    movl $64, %edx
    movq %r12, %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r13d
    leaq -240(%rbp), %r14
    movq %r12, %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movb %r13b, (%r10)
    movq %r14, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L6_20
    jmp .L6_21
.L6_20:
    jmp .L6_22
.L6_21:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_68(%rip), %r13
    leaq -256(%rbp), %r14
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
.L6_23:
.L6_22:
    leaq -272(%rbp), %rax
    movq %rax, -560(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r15
    leaq -320(%rbp), %rax
    movq %rax, -568(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r12
    jbe .L6_25
.L6_24:
    movq -568(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %r13
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    addq %rcx, %r12
    movq $47, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -568(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L6_26
.L6_25:
    movq %r15, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L6_27
    jmp .L6_28
.L6_28:
    leaq .Ltext_70(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_27:
    movq %r14, %r10
    movq (%r10), %r15
    movq %r13, %rsi
    movq %r12, %rdx
    movq $1, %rcx
    leaq -344(%rbp), %rdi
    movq %r15, %r11
    call *%r11
    leaq -344(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, -480(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl -480(%rbp), %eax
    andl %r15d, %eax
    movl %eax, -488(%rbp)
    movl -488(%rbp), %eax
    testl %eax, %eax
    jne .L6_29
    jmp .L6_30
.L6_29:
    movq -568(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_5(%rip), %r12
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
    movq -568(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L6_26
.L6_30:
    movq %rbx, %r10
    movq (%r10), %r13
    movq -568(%rbp), %r10
    movq %r13, (%r10)
    movq -568(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq -568(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
.L6_26:
    movq -568(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_32
    jmp .L6_31
.L6_32:
    movq -568(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
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
.L6_33:
.L6_31:
    movq -568(%rbp), %r10
    movq -560(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -560(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -520(%rbp)
    leaq -360(%rbp), %rax
    movq %rax, -528(%rbp)
    movq -528(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -536(%rbp)
    leaq -376(%rbp), %rax
    movq %rax, -576(%rbp)
    movq -576(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -544(%rbp)
    movq $0, %rax
    movq %rax, %r15
    movq $0, %rax
    movq %rax, %r14
.L6_34:
    movq -440(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L6_37
.L6_35:
    movq $4, %rcx
    movq %r14, %rax
    imulq %rcx, %rax
    movq %rax, -496(%rbp)
    movq -432(%rbp), %rax
    movq -496(%rbp), %rcx
    addq %rcx, %rax
    movq %rax, -504(%rbp)
    movq -504(%rbp), %r10
    movl (%r10), %eax
    movl %eax, -512(%rbp)
    movq -560(%rbp), %r10
    movq (%r10), %r12
    movq -520(%rbp), %r10
    movq (%r10), %r13
    movq $1, %rcx
    addq %rcx, %r13
    cmpq %r13, %r15
    jb 1f
    leaq .Ltext_71(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -552(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_71(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -552(%rbp), %rcx
    cmpq %rcx, %r15
    jbe .L6_38
.L6_39:
    leaq .Ltext_71(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_38:
    movq %r15, %r13
    addq %r12, %r13
    movq -552(%rbp), %rax
    movq %rax, %rbx
    subq %r15, %rbx
    movq -528(%rbp), %r10
    movq %r13, (%r10)
    movq -536(%rbp), %r10
    movq %rbx, (%r10)
    movl -512(%rbp), %edi
    movq -528(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_utf8_encode@PLT
    leaq -376(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    movq -544(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_40
    jmp .L6_41
.L6_40:
    movq -576(%rbp), %r10
    movq (%r10), %rbx
    jmp .L6_42
.L6_41:
    leaq .Ltext_72(%rip), %rbx
    leaq -392(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $50, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_71(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_71(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_42:
    movq %rbx, %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_73(%rip), %rdi
    leaq .Ltext_76(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
.L6_36:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %r12, %r15
    movq %rbx, %r14
    jmp .L6_34
.L6_37:
    movq -560(%rbp), %r10
    movq (%r10), %rbx
    movq -560(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq -552(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_74(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -552(%rbp), %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $1, %rcx
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_75(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -552(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_75(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -552(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L6_43
.L6_44:
    leaq .Ltext_75(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_43:
    leaq -408(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq -552(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -424(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq -552(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq -96(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
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
.L6_45:
    leaq .Ltext_75(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_unicode_normalization_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz ""
.Ltext_1:
    .asciz "the normalization storage size overflowed"
.Ltext_2:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_3:
    .asciz "memory.unset"
.Ltext_4:
    .asciz "src/std/unicode/normalization.lucb:22:5"
.Ltext_5:
    .asciz "memory.exhausted"
.Ltext_6:
    .asciz "src/std/unicode/normalization.lucb:24:5"
.Ltext_7:
    .asciz "the text changed during normalization"
.Ltext_8:
    .asciz "src/std/unicode/normalization.lucb:26:9"
.Ltext_9:
    .asciz "src/std/unicode/normalization.lucb:27:5"
.Ltext_10:
    .asciz "src/std/unicode/normalization.lucb:29:5"
.Ltext_11:
    .asciz "index out of bounds"
.Ltext_12:
    .asciz "unreachable"
.Ltext_13:
    .asciz "invalid UTF-8 text"
.Ltext_14:
    .asciz "src/std/unicode/normalization.lucb:37:9"
.Ltext_15:
    .asciz "src/std/unicode/normalization.lucb:41:9"
.Ltext_16:
    .asciz "division by zero"
.Ltext_17:
    .asciz "the decomposed text size overflowed"
.Ltext_18:
    .asciz "src/std/unicode/normalization.lucb:47:17"
.Ltext_19:
    .asciz "src/std/unicode/normalization.lucb:48:17"
.Ltext_20:
    .asciz "src/std/unicode/normalization.lucb:49:17"
.Ltext_21:
    .asciz "src/std/unicode/normalization.lucb:51:21"
.Ltext_22:
    .asciz "src/std/unicode/normalization.lucb:54:21"
.Ltext_23:
    .asciz "src/std/unicode/normalization.lucb:56:5"
.Ltext_24:
    .asciz "src/std/unicode/normalization.lucb:65:9"
.Ltext_25:
    .asciz "src/std/unicode/normalization.lucb:66:13"
.Ltext_26:
    .asciz "src/std/unicode/normalization.lucb:72:13"
.Ltext_27:
    .asciz "src/std/unicode/normalization.lucb:78:13"
.Ltext_28:
    .asciz "src/std/unicode/normalization.lucb:79:9"
.Ltext_29:
    .asciz "src/std/unicode/normalization.lucb:84:5"
.Ltext_30:
    .asciz "src/std/unicode/normalization.lucb:88:9"
.Ltext_31:
    .asciz "src/std/unicode/normalization.lucb:89:13"
.Ltext_32:
    .asciz "src/std/unicode/normalization.lucb:95:13"
.Ltext_33:
    .asciz "src/std/unicode/normalization.lucb:101:13"
.Ltext_34:
    .asciz "src/std/unicode/normalization.lucb:103:13"
.Ltext_35:
    .asciz "src/std/unicode/normalization.lucb:110:9"
.Ltext_36:
    .asciz "shift count out of range"
.Ltext_37:
    .asciz "src/std/unicode/normalization.lucb:115:13"
.Ltext_38:
    .asciz "src/std/unicode/normalization.lucb:116:13"
.Ltext_39:
    .asciz "src/std/unicode/normalization.lucb:121:17"
.Ltext_40:
    .asciz "src/std/unicode/normalization.lucb:122:21"
.Ltext_41:
    .asciz "src/std/unicode/normalization.lucb:123:21"
.Ltext_42:
    .asciz "src/std/unicode/normalization.lucb:125:21"
.Ltext_43:
    .asciz "src/std/unicode/normalization.lucb:126:21"
.Ltext_44:
    .asciz "src/std/unicode/normalization.lucb:127:17"
.Ltext_45:
    .asciz "src/std/unicode/normalization.lucb:130:13"
.Ltext_46:
    .asciz "src/std/unicode/normalization.lucb:131:9"
.Ltext_47:
    .asciz "src/std/unicode/normalization.lucb:133:9"
.Ltext_48:
    .asciz "src/std/unicode/normalization.lucb:135:9"
.Ltext_49:
    .asciz "src/std/unicode/normalization.lucb:141:5"
.Ltext_50:
    .asciz "src/std/unicode/normalization.lucb:145:9"
.Ltext_51:
    .asciz "src/std/unicode/normalization.lucb:150:17"
.Ltext_52:
    .asciz "src/std/unicode/normalization.lucb:156:9"
.Ltext_53:
    .asciz "src/std/unicode/normalization.lucb:157:9"
.Ltext_54:
    .asciz "src/std/unicode/normalization.lucb:159:5"
.Ltext_55:
    .asciz "src/std/unicode/normalization.lucb:164:9"
.Ltext_56:
    .asciz "src/std/unicode/normalization.lucb:165:5"
.Ltext_57:
    .asciz "src/std/unicode/normalization.lucb:166:9"
.Ltext_58:
    .asciz "src/std/unicode/normalization.lucb:167:5"
.Ltext_59:
    .asciz "src/std/unicode/normalization.lucb:169:5"
.Ltext_60:
    .asciz "src/std/unicode/normalization.lucb:171:9"
.Ltext_61:
    .asciz "src/std/unicode/normalization.lucb:172:9"
.Ltext_62:
    .asciz "src/std/unicode/normalization.lucb:173:9"
.Ltext_63:
    .asciz "src/std/unicode/normalization.lucb:175:13"
.Ltext_64:
    .asciz "src/std/unicode/normalization.lucb:179:13"
.Ltext_65:
    .asciz "src/std/unicode/normalization.lucb:180:5"
.Ltext_66:
    .asciz "invalid generated Unicode scalar"
.Ltext_67:
    .asciz "src/std/unicode/normalization.lucb:185:9"
.Ltext_68:
    .asciz "the normalized text size overflowed"
.Ltext_69:
    .asciz "the normalized text exceeds its byte limit"
.Ltext_70:
    .asciz "src/std/unicode/normalization.lucb:191:5"
.Ltext_71:
    .asciz "src/std/unicode/normalization.lucb:194:9"
.Ltext_72:
    .asciz "a normalized scalar did not fit its encoded length"
.Ltext_73:
    .asciz "src/std/unicode/normalization.lucb:195:9"
.Ltext_74:
    .asciz "src/std/unicode/normalization.lucb:196:5"
.Ltext_75:
    .asciz "src/std/unicode/normalization.lucb:197:5"
.Ltext_76:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
