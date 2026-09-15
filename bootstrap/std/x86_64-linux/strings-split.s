    .text

    .p2align 4
    .globl lb_strings_split_0init
    .type lb_strings_split_0init, @function
lb_strings_split_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_strings_split
    .type lb_strings_split, @function
lb_strings_split:
    pushq %rbp
    movq %rsp, %rbp
    subq $480, %rsp
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
    leaq -112(%rbp), %rax
    movq %rax, -344(%rbp)
    movq -344(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -352(%rbp)
    movq -344(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -360(%rbp)
    leaq -128(%rbp), %r14
    leaq -136(%rbp), %rax
    movq %rax, -368(%rbp)
    leaq -152(%rbp), %rax
    movq %rax, -480(%rbp)
    movq -480(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -376(%rbp)
    movq $1, %rax
    movq %rax, -440(%rbp)
    movq $0, %rax
    movq %rax, %rbx
.L1_1:
    movq -360(%rbp), %rcx
    cmpq %rcx, %rbx
    jae .L1_4
.L1_2:
    movq -352(%rbp), %rax
    movq %rax, %r15
    addq %rbx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movzbl %r15b, %r15d
    movq %r14, %r10
    movzbl (%r10), %r13d
    cmpl %r13d, %r15d
    jne .L1_6
.L1_5:
    movq -440(%rbp), %rdi
    movq $1, %rsi
    movl $64, %edx
    movq -368(%rbp), %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r13d
    movq -368(%rbp), %r10
    movq (%r10), %r15
    movq -480(%rbp), %r10
    movq %r15, (%r10)
    movq -376(%rbp), %r10
    movb %r13b, (%r10)
    movq -376(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_8
    jmp .L1_9
.L1_8:
    jmp .L1_10
.L1_9:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_0(%rip), %r13
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
.L1_11:
.L1_10:
    movq %r15, %r13
    jmp .L1_7
.L1_6:
    movq -440(%rbp), %rax
    movq %rax, %r13
.L1_7:
.L1_3:
    movq $1, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r13, %rax
    movq %rax, -440(%rbp)
    movq %r15, %rbx
    jmp .L1_1
.L1_4:
    leaq -184(%rbp), %rax
    movq %rax, -448(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r14
    leaq -232(%rbp), %rax
    movq %rax, -456(%rbp)
    movq -440(%rbp), %rax
    movabsq $288230376151711744, %rcx
    cmpq %rcx, %rax
    jbe .L1_13
.L1_12:
    movq -456(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_1(%rip), %r14
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -456(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_14
.L1_13:
    movq -440(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq %r14, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L1_15
    jmp .L1_16
.L1_16:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_15:
    movq %r12, %r10
    movq (%r10), %r14
    movq %rbx, %rsi
    movq %r13, %rdx
    movq $8, %rcx
    leaq -256(%rbp), %rdi
    movq %r14, %r11
    call *%r11
    leaq -256(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq $0, %rcx
    cmpq %rcx, %r13
    setne %al
    movzbl %al, %eax
    movl %eax, -384(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl -384(%rbp), %eax
    movl %r14d, %ecx
    movl %eax, %r14d
    andl %ecx, %r14d
    testl %r14d, %r14d
    jne .L1_17
    jmp .L1_18
.L1_17:
    movq -456(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_4(%rip), %r12
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
    movq -456(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_14
.L1_18:
    movq %r15, %r10
    movq (%r10), %rbx
    movq -456(%rbp), %r10
    movq %rbx, (%r10)
    movq -456(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -440(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -456(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L1_14:
    movq -456(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_20
    jmp .L1_19
.L1_20:
    movq -456(%rbp), %rax
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
.L1_21:
.L1_19:
    movq -456(%rbp), %r10
    movq -448(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -272(%rbp), %rbx
    movq -344(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -128(%rbp), %rax
    movq %rax, -392(%rbp)
    movq -448(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq -360(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    movq %rax, -400(%rbp)
    leaq -288(%rbp), %rax
    movq %rax, -408(%rbp)
    movq -408(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -416(%rbp)
    leaq -304(%rbp), %rax
    movq %rax, -424(%rbp)
    movq -424(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -432(%rbp)
    movq $0, %rax
    movq %rax, -464(%rbp)
    movq $0, %rax
    movq %rax, -472(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L1_22:
    movq -360(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L1_24
.L1_23:
    movq -352(%rbp), %rax
    movq %rax, %r14
    addq %r13, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq -392(%rbp), %r10
    movzbl (%r10), %r15d
    cmpl %r15d, %r14d
    jne .L1_26
.L1_25:
    movq -448(%rbp), %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq (%r10), %r15
    movq -464(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -464(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq %r15, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq -472(%rbp), %rax
    movq -400(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -400(%rbp), %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -472(%rbp), %rax
    cmpq %r13, %rax
    jbe .L1_28
.L1_29:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_28:
    movq -352(%rbp), %rax
    movq -472(%rbp), %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq -472(%rbp), %rcx
    movq %r13, %rbx
    subq %rcx, %rbx
    movq -408(%rbp), %r10
    movq %r14, (%r10)
    movq -416(%rbp), %r10
    movq %rbx, (%r10)
    movq -424(%rbp), %r10
    movq %r14, (%r10)
    movq -432(%rbp), %r10
    movq %rbx, (%r10)
    movq -424(%rbp), %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -464(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    jmp .L1_27
.L1_26:
    movq -464(%rbp), %rax
    movq %rax, %rbx
    movq -472(%rbp), %rax
    movq %rax, %r14
.L1_27:
    movq $1, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %rbx, %rax
    movq %rax, -464(%rbp)
    movq %r14, %rax
    movq %rax, -472(%rbp)
    movq %r15, %r13
    jmp .L1_22
.L1_24:
    movq -448(%rbp), %r10
    movq (%r10), %rbx
    movq -448(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq -464(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -464(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -360(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -472(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -360(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -472(%rbp), %rax
    movq -360(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L1_30
.L1_31:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_30:
    movq -352(%rbp), %rax
    movq -472(%rbp), %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -360(%rbp), %rax
    movq -472(%rbp), %rcx
    movq %rax, %r13
    subq %rcx, %r13
    leaq -320(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    leaq -336(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -96(%rbp), %rbx
    movq -448(%rbp), %r10
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
.L1_32:
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_SplitIterator_over
    .type lb_strings_SplitIterator_over, @function
lb_strings_SplitIterator_over:
    pushq %rbp
    movq %rsp, %rbp
    subq $256, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    leaq -144(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -160(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    movq %r9, -176(%rbp)
    leaq -160(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L2_2
.L2_1:
    leaq -128(%rbp), %rbx
    movq $56, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_17invalid_separator(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_14(%rip), %r13
    leaq -192(%rbp), %r14
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
    movq $80, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $88, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_4:
    jmp .L2_3
.L2_2:
.L2_3:
    leaq -248(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    leaq -144(%rbp), %r13
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -176(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $40, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $48, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -128(%rbp), %r13
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
    movq $80, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $88, %rdx
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
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_SplitIterator_next
    .type lb_strings_SplitIterator_next, @function
lb_strings_SplitIterator_next:
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
    leaq -80(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -344(%rbp)
    movq -344(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, -312(%rbp)
    movq -312(%rbp), %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L3_2
.L3_1:
    leaq -104(%rbp), %rbx
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
.L3_4:
    jmp .L3_3
.L3_2:
.L3_3:
    movq -344(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -320(%rbp)
    movq -320(%rbp), %r10
    movq (%r10), %r14
    movq $1, %rcx
    cmpq %rcx, %r14
    jne .L3_6
.L3_5:
    movl $0, %eax
    movq -312(%rbp), %r10
    movb %al, (%r10)
    movq -344(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -352(%rbp)
    movq -344(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r15
    movq -344(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r14
    movq $1, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    cmpq %r12, %r14
    jb 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r15, %r14
    jbe .L3_8
.L3_9:
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_8:
    movq -352(%rbp), %rax
    movq %rax, %rbx
    addq %r14, %rbx
    movq %r15, %r12
    subq %r14, %r12
    leaq -120(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq -136(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq -160(%rbp), %rbx
    movq %r13, %r10
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
.L3_10:
    jmp .L3_7
.L3_6:
.L3_7:
    leaq -176(%rbp), %r14
    movq -344(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq -344(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq -344(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r15, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r12, %r8
    call lb_strings_9find_from@PLT
    leaq -192(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -192(%rbp), %r12
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_14
    jmp .L3_12
.L3_14:
    movq %r14, %r10
    movq (%r10), %r12
.L3_11:
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -328(%rbp)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %rbx, %r10
    movq %r14, (%r10)
    movq -320(%rbp), %r10
    movq (%r10), %r14
    movq $1, %rcx
    cmpq %rcx, %r14
    jbe .L3_16
.L3_15:
    movq $1, %rcx
    movq %r14, %rbx
    subq %rcx, %rbx
    movq -320(%rbp), %r10
    movq %rbx, (%r10)
    jmp .L3_17
.L3_16:
.L3_17:
    movq -344(%rbp), %r10
    movq (%r10), %r13
    movq -344(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $1, %rcx
    addq %rcx, %rbx
    movq -328(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r12
    jb 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -328(%rbp), %rax
    cmpq %r12, %rax
    jbe .L3_18
.L3_19:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_18:
    movq -328(%rbp), %rax
    movq %rax, %rbx
    addq %r13, %rbx
    movq -328(%rbp), %rcx
    movq %r12, %r14
    subq %rcx, %r14
    leaq -208(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    leaq -224(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    leaq -248(%rbp), %rbx
    movq %r15, %r10
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
.L3_20:
    jmp .L3_13
.L3_12:
.L3_13:
    movl $0, %eax
    movq -312(%rbp), %r10
    movb %al, (%r10)
    movq -344(%rbp), %r10
    movq (%r10), %r13
    movq -344(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r14
    movq %rbx, %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r14
    jb 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r14, %r15
    jbe .L3_21
.L3_22:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_21:
    movq %r13, %rbx
    addq %r15, %rbx
    movq %r14, %rax
    subq %r15, %rax
    movq %rax, -336(%rbp)
    leaq -264(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq -336(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -280(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq -336(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -304(%rbp), %rbx
    movq %r12, %r10
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
.L3_23:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_8split_by
    .type lb_strings_8split_by, @function
lb_strings_8split_by:
    pushq %rbp
    movq %rsp, %rbp
    subq $688, %rsp
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
    movq %r9, -144(%rbp)
    leaq -200(%rbp), %rax
    movq %rax, -648(%rbp)
    leaq -112(%rbp), %rbx
    leaq -128(%rbp), %r12
    leaq -144(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq %r13, %r9
    leaq -288(%rbp), %rdi
    call lb_strings_SplitIterator_over@PLT
    leaq -288(%rbp), %r12
    movq $80, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_2
    jmp .L4_1
.L4_2:
    movq $56, %rcx
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
.L4_3:
.L4_1:
    movq %r12, %r10
    movq -648(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq -344(%rbp), %rax
    movq %rax, -600(%rbp)
    movq -648(%rbp), %r10
    movq -600(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq -368(%rbp), %r13
    movq $16, %rcx
    addq %rcx, %r13
    leaq -376(%rbp), %rax
    movq %rax, -608(%rbp)
    leaq -392(%rbp), %r15
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -616(%rbp)
    movq $0, %rax
    movq %rax, -656(%rbp)
.L4_4:
    movq -600(%rbp), %rsi
    leaq -368(%rbp), %rdi
    call lb_strings_SplitIterator_next@PLT
    movq %r13, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L4_6
.L4_5:
    movq -656(%rbp), %rdi
    movq $1, %rsi
    movl $64, %edx
    movq -608(%rbp), %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r12d
    movq -608(%rbp), %r10
    movq (%r10), %rbx
    movq %r15, %r10
    movq %rbx, (%r10)
    movq -616(%rbp), %r10
    movb %r12b, (%r10)
    movq -616(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L4_7
    jmp .L4_8
.L4_7:
    jmp .L4_9
.L4_8:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_0(%rip), %r13
    leaq -408(%rbp), %r14
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_10:
.L4_9:
    movq %rbx, %rax
    movq %rax, -656(%rbp)
    jmp .L4_4
.L4_6:
    leaq -424(%rbp), %rax
    movq %rax, -664(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    leaq -472(%rbp), %rax
    movq %rax, -672(%rbp)
    movq -656(%rbp), %rax
    movabsq $288230376151711744, %rcx
    cmpq %rcx, %rax
    jbe .L4_12
.L4_11:
    movq -672(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_1(%rip), %r13
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -672(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L4_13
.L4_12:
    movq -656(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L4_14
    jmp .L4_15
.L4_15:
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_14:
    movq %r14, %r10
    movq (%r10), %r13
    movq %rbx, %rsi
    movq %r12, %rdx
    movq $8, %rcx
    leaq -496(%rbp), %rdi
    movq %r13, %r11
    call *%r11
    leaq -496(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, -624(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl -624(%rbp), %eax
    movl %r13d, %ecx
    movl %eax, %r13d
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L4_16
    jmp .L4_17
.L4_16:
    movq -672(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_4(%rip), %r12
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
    movq -672(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L4_13
.L4_17:
    movq %r15, %r10
    movq (%r10), %rbx
    movq -672(%rbp), %r10
    movq %rbx, (%r10)
    movq -672(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -656(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -672(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L4_13:
    movq -672(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_19
    jmp .L4_18
.L4_19:
    movq -672(%rbp), %rax
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
.L4_20:
.L4_18:
    movq -672(%rbp), %r10
    movq -664(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -552(%rbp), %rax
    movq %rax, -632(%rbp)
    movq -648(%rbp), %r10
    movq -632(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq -576(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq -592(%rbp), %r13
    movq -664(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -640(%rbp)
    movq $0, %rax
    movq %rax, -680(%rbp)
.L4_21:
    movq -632(%rbp), %rsi
    leaq -576(%rbp), %rdi
    call lb_strings_SplitIterator_next@PLT
    movq %r12, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L4_24
    jmp .L4_23
.L4_24:
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L4_22:
    movq -664(%rbp), %r10
    movq (%r10), %r14
    movq -640(%rbp), %r10
    movq (%r10), %rbx
    movq -680(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -680(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -680(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, -680(%rbp)
    jmp .L4_21
.L4_23:
    leaq -96(%rbp), %rbx
    movq -664(%rbp), %r10
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
.L4_25:
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_10split_once
    .type lb_strings_10split_once, @function
lb_strings_10split_once:
    pushq %rbp
    movq %rsp, %rbp
    subq $352, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -104(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -120(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq -104(%rbp), %rbx
    leaq -120(%rbp), %rax
    movq %rax, -320(%rbp)
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -320(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_strings_find@PLT
    leaq -136(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -136(%rbp), %r14
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L5_1
    jmp .L5_2
.L5_1:
    movq %r14, %r10
    movq (%r10), %r13
    jmp .L5_3
.L5_2:
    leaq -176(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq -88(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
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
.L5_4:
.L5_3:
    leaq -208(%rbp), %rax
    movq %rax, -344(%rbp)
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -328(%rbp)
    movq -328(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -336(%rbp)
    movq -336(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq $0, %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r15, %r13
    jb 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r13, %rax
    jbe .L5_5
.L5_6:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_5:
    leaq -224(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    leaq -240(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq %rbx, %r10
    movq -344(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -320(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r13, %rax
    movq %rbx, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    cmpq %r15, %r14
    jb 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -336(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -336(%rbp), %rcx
    cmpq %rcx, %r14
    jbe .L5_7
.L5_8:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_7:
    movq %r12, %rbx
    addq %r14, %rbx
    movq -336(%rbp), %rax
    movq %rax, %r13
    subq %r14, %r13
    leaq -256(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    leaq -272(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq -344(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -312(%rbp), %rbx
    movq -344(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -88(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq %r13, %rsi
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
.L5_9:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_10split_last
    .type lb_strings_10split_last, @function
lb_strings_10split_last:
    pushq %rbp
    movq %rsp, %rbp
    subq $352, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -104(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -120(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq -104(%rbp), %rbx
    leaq -120(%rbp), %rax
    movq %rax, -320(%rbp)
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -320(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_strings_9find_last@PLT
    leaq -136(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -136(%rbp), %r14
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L6_1
    jmp .L6_2
.L6_1:
    movq %r14, %r10
    movq (%r10), %r13
    jmp .L6_3
.L6_2:
    leaq -176(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq -88(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
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
.L6_4:
.L6_3:
    leaq -208(%rbp), %rax
    movq %rax, -344(%rbp)
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -328(%rbp)
    movq -328(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -336(%rbp)
    movq -336(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq $0, %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r15, %r13
    jb 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r13, %rax
    jbe .L6_5
.L6_6:
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_5:
    leaq -224(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    leaq -240(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq %rbx, %r10
    movq -344(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -320(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r13, %rax
    movq %rbx, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    cmpq %r15, %r14
    jb 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -336(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -336(%rbp), %rcx
    cmpq %rcx, %r14
    jbe .L6_7
.L6_8:
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_7:
    movq %r12, %rbx
    addq %r14, %rbx
    movq -336(%rbp), %rax
    movq %rax, %r13
    subq %r14, %r13
    leaq -256(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    leaq -272(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq -344(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -312(%rbp), %rbx
    movq -344(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -88(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq %r13, %rsi
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
.L6_9:
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_strings_split_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "the split result is too large"
.Ltext_1:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_2:
    .asciz "memory.unset"
.Ltext_3:
    .asciz "src/std/strings/split.lucb:8:5"
.Ltext_4:
    .asciz "memory.exhausted"
.Ltext_5:
    .asciz "src/std/strings/split.lucb:14:9"
.Ltext_6:
    .asciz "src/std/strings/split.lucb:15:13"
.Ltext_7:
    .asciz "index out of bounds"
.Ltext_8:
    .asciz "src/std/strings/split.lucb:16:13"
.Ltext_9:
    .asciz "src/std/strings/split.lucb:17:13"
.Ltext_10:
    .asciz "src/std/strings/split.lucb:18:9"
.Ltext_11:
    .asciz "src/std/strings/split.lucb:19:5"
.Ltext_12:
    .asciz "unreachable"
.Ltext_13:
    .asciz "src/std/strings/split.lucb:20:5"
.Ltext_14:
    .asciz "a split iterator requires a nonempty separator"
.Ltext_15:
    .asciz "src/std/strings/split.lucb:37:9"
.Ltext_16:
    .asciz "src/std/strings/split.lucb:45:13"
.Ltext_17:
    .asciz "src/std/strings/split.lucb:49:13"
.Ltext_18:
    .asciz "src/std/strings/split.lucb:51:17"
.Ltext_19:
    .asciz "src/std/strings/split.lucb:52:13"
.Ltext_20:
    .asciz "src/std/strings/split.lucb:54:9"
.Ltext_21:
    .asciz "src/std/strings/split.lucb:65:5"
.Ltext_22:
    .asciz "src/std/strings/split.lucb:69:9"
.Ltext_23:
    .asciz "src/std/strings/split.lucb:70:9"
.Ltext_24:
    .asciz "src/std/strings/split.lucb:71:5"
.Ltext_25:
    .asciz "src/std/strings/split.lucb:77:5"
.Ltext_26:
    .asciz "src/std/strings/split.lucb:83:5"
.Ltext_27:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
