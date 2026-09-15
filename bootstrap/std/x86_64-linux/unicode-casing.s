    .text

    .p2align 4
    .globl lb_unicode_casing_0init
    .type lb_unicode_casing_0init, @function
lb_unicode_casing_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_unicode_8to_upper
    .type lb_unicode_8to_upper, @function
lb_unicode_8to_upper:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    leaq -104(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -120(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq -104(%rbp), %rbx
    leaq -120(%rbp), %r12
    subq $16, %rsp
    movq %r12, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movl $0, %ecx
    movl $0, %r8d
    leaq -168(%rbp), %rdi
    call lb_unicode_12convert_case@PLT
    addq $16, %rsp
    leaq -168(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_2
    jmp .L1_1
.L1_2:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r13
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_3:
.L1_1:
    leaq -88(%rbp), %rbx
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_4:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_unicode_8to_lower
    .type lb_unicode_8to_lower, @function
lb_unicode_8to_lower:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    leaq -104(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -120(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq -104(%rbp), %rbx
    leaq -120(%rbp), %r12
    subq $16, %rsp
    movq %r12, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movl $1, %ecx
    movl $0, %r8d
    leaq -168(%rbp), %rdi
    call lb_unicode_12convert_case@PLT
    addq $16, %rsp
    leaq -168(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_2
    jmp .L2_1
.L2_2:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r13
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_3:
.L2_1:
    leaq -88(%rbp), %rbx
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_4:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_unicode_9case_fold
    .type lb_unicode_9case_fold, @function
lb_unicode_9case_fold:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    leaq -104(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movl %ecx, -120(%rbp)
    leaq -136(%rbp), %r10
    movq %r8, 0(%r10)
    movq %r9, 8(%r10)
    leaq -104(%rbp), %rbx
    leaq -120(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -136(%rbp), %r13
    subq $16, %rsp
    movq %r13, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movl $2, %ecx
    movl %r12d, %r8d
    leaq -184(%rbp), %rdi
    call lb_unicode_12convert_case@PLT
    addq $16, %rsp
    leaq -184(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_2
    jmp .L3_1
.L3_2:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r13
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_3:
.L3_1:
    leaq -88(%rbp), %rbx
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_4:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_unicode_12convert_case
    .type lb_unicode_12convert_case, @function
lb_unicode_12convert_case:
    pushq %rbp
    movq %rsp, %rbp
    subq $576, %rsp
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
    movl %r8d, -144(%rbp)
    leaq 16(%rbp), %r10
    leaq -160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -176(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -112(%rbp), %rax
    movq %rax, -488(%rbp)
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %eax
    movl %eax, -496(%rbp)
    leaq -144(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %eax
    movl %eax, -504(%rbp)
    leaq -160(%rbp), %rax
    movq %rax, -512(%rbp)
    subq $32, %rsp
    movq %rbx, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -512(%rbp), %r10
    leaq 16(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -488(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movl -496(%rbp), %ecx
    movl -504(%rbp), %r8d
    movl $0, %r9d
    leaq -216(%rbp), %rdi
    call lb_unicode_9case_pass@PLT
    addq $32, %rsp
    leaq -216(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_2
    jmp .L4_1
.L4_2:
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
    movq (%r10), %rax
    movq %rax, -520(%rbp)
    leaq -224(%rbp), %r13
    movq -520(%rbp), %rdi
    movq $1, %rsi
    movl $64, %edx
    movq %r13, %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r14d
    leaq -240(%rbp), %r15
    movq %r13, %r10
    movq (%r10), %r13
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movb %r14b, (%r10)
    movq %r15, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L4_4
    jmp .L4_5
.L4_4:
    jmp .L4_6
.L4_5:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_4(%rip), %r13
    leaq -256(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $30, %rax
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
.L4_7:
.L4_6:
    leaq -272(%rbp), %rax
    movq %rax, -560(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -568(%rbp)
    leaq -320(%rbp), %rax
    movq %rax, -576(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r13
    jbe .L4_9
.L4_8:
    movq -576(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_5(%rip), %r13
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    addq %rcx, %r12
    movq $47, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -576(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L4_10
.L4_9:
    movq -568(%rbp), %r10
    movq (%r10), %r12
    movq -568(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L4_11
    jmp .L4_12
.L4_12:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_11:
    movq %r14, %r10
    movq (%r10), %r15
    movq %r12, %rsi
    movq %r13, %rdx
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
    cmpq %rcx, %r13
    setne %al
    movzbl %al, %eax
    movl %eax, -528(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl -528(%rbp), %eax
    andl %r15d, %eax
    movl %eax, -536(%rbp)
    movl -536(%rbp), %eax
    testl %eax, %eax
    jne .L4_13
    jmp .L4_14
.L4_13:
    movq -576(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_8(%rip), %r12
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
    movq -576(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L4_10
.L4_14:
    movq %rbx, %r10
    movq (%r10), %r12
    movq -576(%rbp), %r10
    movq %r12, (%r10)
    movq -576(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -576(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L4_10:
    movq -576(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_16
    jmp .L4_15
.L4_16:
    movq -576(%rbp), %rax
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
.L4_17:
.L4_15:
    movq -576(%rbp), %r10
    movq -560(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -560(%rbp), %r10
    movq (%r10), %r13
    movq -560(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -544(%rbp)
    movq -544(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -520(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -520(%rbp), %rcx
    cmpq %rcx, %rax
    setbe %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L4_18
    jmp .L4_19
.L4_19:
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_18:
    leaq -360(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq -520(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %r14, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -512(%rbp), %r10
    leaq 16(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -488(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movl -496(%rbp), %ecx
    movl -504(%rbp), %r8d
    movl $1, %r9d
    leaq -400(%rbp), %rdi
    call lb_unicode_9case_pass@PLT
    addq $32, %rsp
    leaq -400(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L4_21
    jmp .L4_20
.L4_21:
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq -96(%rbp), %rax
    movq %rax, -552(%rbp)
    movq -552(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -552(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -416(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -544(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -568(%rbp), %r10
    movq (%r10), %r12
    movq -568(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L4_23
    jmp .L4_22
.L4_23:
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L4_22:
    movq -552(%rbp), %rsi
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
.L4_24:
.L4_20:
    movq %r15, %r10
    movq (%r10), %rbx
    movq -520(%rbp), %rax
    cmpq %rbx, %rax
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L4_26
.L4_25:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_utf8_16invalid_sequence(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_11(%rip), %r14
    leaq -432(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $38, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -448(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq -544(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq -568(%rbp), %r10
    movq (%r10), %r14
    movq -568(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L4_29
    jmp .L4_28
.L4_29:
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r14, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L4_28:
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
.L4_30:
    jmp .L4_27
.L4_26:
.L4_27:
    movq -520(%rbp), %rax
    movq -544(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -520(%rbp), %rax
    movq %rax, %rbx
    addq %r13, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    testl %r12d, %r12d
    jne .L4_31
    jmp .L4_32
.L4_32:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_31:
    leaq -464(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq -520(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -480(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -520(%rbp), %rax
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
.L4_33:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_unicode_9case_pass
    .type lb_unicode_9case_pass, @function
lb_unicode_9case_pass:
    pushq %rbp
    movq %rsp, %rbp
    subq $1632, %rsp
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
    movl %r8d, -136(%rbp)
    movl %r9d, -168(%rbp)
    leaq 16(%rbp), %r10
    leaq -152(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rbp), %r10
    leaq -184(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -104(%rbp), %rax
    movq %rax, -1000(%rbp)
    movq -1000(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1008(%rbp)
    leaq -200(%rbp), %rax
    movq %rax, -1536(%rbp)
    leaq -224(%rbp), %rax
    movq %rax, -1544(%rbp)
    movq -1544(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -1016(%rbp)
    leaq -240(%rbp), %rax
    movq %rax, -1024(%rbp)
    movq -1536(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1032(%rbp)
    leaq -280(%rbp), %rax
    movq %rax, -1552(%rbp)
    leaq -120(%rbp), %rax
    movq %rax, -1056(%rbp)
    leaq -136(%rbp), %rax
    movq %rax, -1064(%rbp)
    leaq -544(%rbp), %rax
    movq %rax, -1208(%rbp)
    leaq -560(%rbp), %rax
    movq %rax, -1360(%rbp)
    leaq lb_unicode_15turkic_mappings(%rip), %rax
    movq %rax, -1368(%rbp)
    leaq -792(%rbp), %rax
    movq %rax, -1560(%rbp)
    movq -1560(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -1376(%rbp)
    leaq lb_unicode_13fold_mappings(%rip), %rax
    movq %rax, -1400(%rbp)
    leaq -848(%rbp), %rax
    movq %rax, -1568(%rbp)
    movq -1568(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -1408(%rbp)
    leaq -896(%rbp), %rax
    movq %rax, -1424(%rbp)
    leaq -872(%rbp), %rax
    movq %rax, -1432(%rbp)
    leaq -872(%rbp), %rax
    movq %rax, -1416(%rbp)
    leaq -872(%rbp), %rax
    movq %rax, -1440(%rbp)
    leaq -480(%rbp), %rax
    movq %rax, -1448(%rbp)
    leaq -816(%rbp), %rax
    movq %rax, -1384(%rbp)
    leaq -480(%rbp), %rax
    movq %rax, -1392(%rbp)
    leaq -576(%rbp), %rax
    movq %rax, -1272(%rbp)
    leaq -496(%rbp), %rax
    movq %rax, -1280(%rbp)
    leaq -912(%rbp), %rax
    movq %rax, -1456(%rbp)
    movq -1456(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1464(%rbp)
    leaq -944(%rbp), %rax
    movq %rax, -1576(%rbp)
    leaq -968(%rbp), %rax
    movq %rax, -1584(%rbp)
    movq -1584(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -1472(%rbp)
    leaq -984(%rbp), %rax
    movq %rax, -1480(%rbp)
    movq -1576(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1488(%rbp)
    leaq lb_unicode_21case_ignorable_ranges(%rip), %rax
    movq %rax, -1496(%rbp)
    leaq lb_unicode_12cased_ranges(%rip), %rax
    movq %rax, -1504(%rbp)
    leaq lb_unicode_14lower_mappings(%rip), %rax
    movq %rax, -1304(%rbp)
    leaq -712(%rbp), %rax
    movq %rax, -1592(%rbp)
    movq -1592(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -1312(%rbp)
    leaq -760(%rbp), %rax
    movq %rax, -1328(%rbp)
    leaq -736(%rbp), %rax
    movq %rax, -1336(%rbp)
    leaq -736(%rbp), %rax
    movq %rax, -1320(%rbp)
    leaq -736(%rbp), %rax
    movq %rax, -1344(%rbp)
    leaq -480(%rbp), %rax
    movq %rax, -1352(%rbp)
    leaq -680(%rbp), %rax
    movq %rax, -1288(%rbp)
    leaq -480(%rbp), %rax
    movq %rax, -1296(%rbp)
    leaq lb_unicode_14upper_mappings(%rip), %rax
    movq %rax, -1216(%rbp)
    leaq -608(%rbp), %rax
    movq %rax, -1600(%rbp)
    movq -1600(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -1224(%rbp)
    leaq -656(%rbp), %rax
    movq %rax, -1240(%rbp)
    leaq -632(%rbp), %rax
    movq %rax, -1248(%rbp)
    leaq -632(%rbp), %rax
    movq %rax, -1232(%rbp)
    leaq -632(%rbp), %rax
    movq %rax, -1256(%rbp)
    leaq -480(%rbp), %rax
    movq %rax, -1264(%rbp)
    leaq -304(%rbp), %rax
    movq %rax, -1080(%rbp)
    movq -1552(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1088(%rbp)
    leaq -320(%rbp), %rax
    movq %rax, -1616(%rbp)
    movq -1616(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1112(%rbp)
    leaq -344(%rbp), %rax
    movq %rax, -1120(%rbp)
    leaq -360(%rbp), %rax
    movq %rax, -1624(%rbp)
    movq -1624(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1128(%rbp)
    leaq -184(%rbp), %rax
    movq %rax, -1632(%rbp)
    movq -1632(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1136(%rbp)
    leaq -168(%rbp), %rax
    movq %rax, -1144(%rbp)
    leaq -152(%rbp), %rax
    movq %rax, -1152(%rbp)
    movq -1152(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1160(%rbp)
    leaq -424(%rbp), %rax
    movq %rax, -1168(%rbp)
    movq -1168(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1176(%rbp)
    leaq -440(%rbp), %r15
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -1184(%rbp)
    leaq lb_unicode_21case_ignorable_ranges(%rip), %rax
    movq %rax, -1192(%rbp)
    leaq lb_unicode_12cased_ranges(%rip), %rax
    movq %rax, -1200(%rbp)
    movq $0, %rax
    movq %rax, -1512(%rbp)
    movq $0, %rax
    movq %rax, -1520(%rbp)
    movl $0, %eax
    movl %eax, -1528(%rbp)
.L5_1:
    movq -1008(%rbp), %r10
    movq (%r10), %r14
    movq -1512(%rbp), %rax
    cmpq %r14, %rax
    jae .L5_3
.L5_2:
    movq -1000(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -1512(%rbp), %rcx
    leaq -224(%rbp), %rdi
    call lb_utf8_decode@PLT
    movq -1016(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L5_4
    jmp .L5_5
.L5_4:
    movq -1544(%rbp), %r10
    movq -1024(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L5_6
.L5_5:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_utf8_16invalid_sequence(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_15(%rip), %r13
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
.L5_7:
.L5_6:
    movq -1024(%rbp), %r10
    movq -1536(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1032(%rbp), %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq -1512(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -1040(%rbp)
    movq -1536(%rbp), %r10
    movl (%r10), %r12d
    movl %r12d, %eax
    movq %rax, -1048(%rbp)
    movq -1056(%rbp), %r10
    movzbl (%r10), %ebx
    movq -1064(%rbp), %r10
    movzbl (%r10), %r13d
    movl -1528(%rbp), %eax
    movzbl %al, %eax
    movl %eax, -1072(%rbp)
    movq -1000(%rbp), %r10
    leaq -496(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1040(%rbp), %rax
    leaq -512(%rbp), %r10
    movq %rax, (%r10)
    movl -1048(%rbp), %eax
    leaq -528(%rbp), %r10
    movl %eax, (%r10)
    leaq -544(%rbp), %r10
    movl %ebx, (%r10)
    leaq -560(%rbp), %r10
    movl %r13d, (%r10)
    movl -1072(%rbp), %eax
    leaq -576(%rbp), %r10
    movl %eax, (%r10)
    movq -1208(%rbp), %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L5_44
.L5_43:
    movq -1216(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movl -1048(%rbp), %ecx
    leaq -608(%rbp), %rdi
    call lb_unicode_mapped@PLT
    movq -1224(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_46
    jmp .L5_47
.L5_46:
    movq -1600(%rbp), %r10
    movq -1232(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L5_48
.L5_47:
    movl -1048(%rbp), %esi
    leaq -656(%rbp), %rdi
    call lb_unicode_16identity_mapping@PLT
    movq -1240(%rbp), %r10
    movq -1248(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
.L5_48:
    movq -1256(%rbp), %r10
    movq -1264(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -1264(%rbp), %r10
    leaq -304(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L5_90
.L5_49:
    jmp .L5_45
.L5_44:
.L5_45:
    movl $1, %ecx
    cmpl %ecx, %ebx
    jne .L5_51
.L5_50:
    movl -1048(%rbp), %eax
    movl $931, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L5_56
    jmp .L5_91
.L5_91:
    movl %ebx, %r13d
    jmp .L5_57
.L5_56:
    movq -1272(%rbp), %r10
    movzbl (%r10), %r13d
.L5_57:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L5_58
    jmp .L5_92
.L5_92:
    movl %ebx, %r13d
    jmp .L5_59
.L5_58:
    movq -1280(%rbp), %r10
    leaq -912(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1040(%rbp), %rax
    leaq -928(%rbp), %r10
    movq %rax, (%r10)
    movq -1040(%rbp), %rax
    movq %rax, %rbx
.L5_77:
    movq -1464(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    jae .L5_79
.L5_78:
    movq -1456(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %rcx
    leaq -968(%rbp), %rdi
    call lb_utf8_decode@PLT
    movq -1472(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L5_80
    jmp .L5_81
.L5_80:
    movq -1584(%rbp), %r10
    movq -1480(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L5_82
.L5_81:
    movl $0, %eax
    leaq -992(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, %ebx
    jmp .L5_89
.L5_83:
.L5_82:
    movq -1480(%rbp), %r10
    movq -1576(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1488(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq %rbx, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -1576(%rbp), %r10
    movl (%r10), %r15d
    movl %r15d, %r15d
    movq -1496(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movl %r15d, %edx
    call lb_unicode_11range_value@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L5_85
.L5_84:
    movq -1504(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movl %r15d, %edx
    call lb_unicode_11range_value@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    leaq -992(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L5_89
.L5_87:
    jmp .L5_86
.L5_85:
.L5_86:
    movq %r13, %rbx
    jmp .L5_77
.L5_79:
    movl $0, %eax
    leaq -992(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, %ebx
    jmp .L5_89
.L5_88:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_89:
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L5_59:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L5_53
    jmp .L5_54
.L5_53:
    movl $962, %esi
    leaq -680(%rbp), %rdi
    call lb_unicode_16identity_mapping@PLT
    movq -1288(%rbp), %r10
    movq -1296(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -1296(%rbp), %r10
    leaq -304(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L5_90
.L5_60:
    jmp .L5_55
.L5_54:
.L5_55:
    movq -1304(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movl -1048(%rbp), %ecx
    leaq -712(%rbp), %rdi
    call lb_unicode_mapped@PLT
    movq -1312(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_61
    jmp .L5_62
.L5_61:
    movq -1592(%rbp), %r10
    movq -1320(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L5_63
.L5_62:
    movl -1048(%rbp), %esi
    leaq -760(%rbp), %rdi
    call lb_unicode_16identity_mapping@PLT
    movq -1328(%rbp), %r10
    movq -1336(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
.L5_63:
    movq -1344(%rbp), %r10
    movq -1352(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -1352(%rbp), %r10
    leaq -304(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L5_90
.L5_64:
    jmp .L5_52
.L5_51:
.L5_52:
    movq -1360(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_65
    jmp .L5_66
.L5_65:
    movq -1368(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movl -1048(%rbp), %ecx
    leaq -792(%rbp), %rdi
    call lb_unicode_mapped@PLT
    movq -1376(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_71
    jmp .L5_69
.L5_71:
    movq -1560(%rbp), %r10
    movq -1384(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
.L5_68:
    movq -1384(%rbp), %r10
    movq -1392(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -1392(%rbp), %r10
    leaq -304(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L5_90
.L5_72:
    jmp .L5_70
.L5_69:
.L5_70:
    jmp .L5_67
.L5_66:
.L5_67:
    movq -1400(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movl -1048(%rbp), %ecx
    leaq -848(%rbp), %rdi
    call lb_unicode_mapped@PLT
    movq -1408(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_73
    jmp .L5_74
.L5_73:
    movq -1568(%rbp), %r10
    movq -1416(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L5_75
.L5_74:
    movl -1048(%rbp), %esi
    leaq -896(%rbp), %rdi
    call lb_unicode_16identity_mapping@PLT
    movq -1424(%rbp), %r10
    movq -1432(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
.L5_75:
    movq -1440(%rbp), %r10
    movq -1448(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -1448(%rbp), %r10
    leaq -304(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L5_90
.L5_76:
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_90:
    movq -1080(%rbp), %r10
    movq -1552(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -1088(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1096(%rbp)
    movq -1520(%rbp), %rax
    movq %rax, %r13
    movq $0, %rax
    movq %rax, -1608(%rbp)
.L5_8:
    movq -1608(%rbp), %rax
    movq -1096(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L5_11
.L5_9:
    movq -1552(%rbp), %rdi
    movq -1608(%rbp), %rsi
    call lb_unicode_Mapping_at@PLT
    movl %eax, -1104(%rbp)
    movl -1104(%rbp), %edi
    call lb_utf8_14encoded_length@PLT
    leaq -320(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    movq -1112(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_12
    jmp .L5_13
.L5_12:
    movq -1616(%rbp), %r10
    movq (%r10), %rbx
    jmp .L5_14
.L5_13:
    leaq .Ltext_17(%rip), %rbx
    leaq -336(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $32, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_18(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_14:
    movq %r13, %rdi
    movq %rbx, %rsi
    movl $64, %edx
    movq -1120(%rbp), %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r12d
    movq -1120(%rbp), %r10
    movq (%r10), %r14
    movq -1624(%rbp), %r10
    movq %r14, (%r10)
    movq -1128(%rbp), %r10
    movb %r12b, (%r10)
    movq -1128(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L5_15
    jmp .L5_16
.L5_15:
    jmp .L5_17
.L5_16:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_4(%rip), %r13
    leaq -376(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $30, %rax
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
.L5_17:
    movq -1136(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_22
    jmp .L5_20
.L5_22:
    movq -1632(%rbp), %r10
    movq (%r10), %rbx
.L5_19:
    cmpq %rbx, %r14
    jbe .L5_24
.L5_23:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_16output_too_large(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_19(%rip), %r13
    leaq -392(%rbp), %r14
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
.L5_26:
    jmp .L5_25
.L5_24:
.L5_25:
    jmp .L5_21
.L5_20:
.L5_21:
    movq -1144(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_27
    jmp .L5_28
.L5_27:
    movq -1160(%rbp), %r10
    movq (%r10), %rbx
    cmpq %rbx, %r14
    jbe .L5_31
.L5_30:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_utf8_16invalid_sequence(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_11(%rip), %r13
    leaq -408(%rbp), %r14
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
.L5_33:
    jmp .L5_32
.L5_31:
.L5_32:
    movq -1152(%rbp), %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r14
    jb 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r14, %r13
    jbe .L5_34
.L5_35:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_34:
    movq %r13, %rbx
    addq %r15, %rbx
    movq %r14, %r12
    subq %r13, %r12
    movq -1168(%rbp), %r10
    movq %rbx, (%r10)
    movq -1176(%rbp), %r10
    movq %r12, (%r10)
    movl -1104(%rbp), %edi
    movq -1168(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_utf8_encode@PLT
    leaq -440(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    movq -1184(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_36
    jmp .L5_37
.L5_36:
    jmp .L5_38
.L5_37:
    leaq .Ltext_21(%rip), %rbx
    leaq -456(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_20(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_38:
    jmp .L5_29
.L5_28:
.L5_29:
.L5_10:
    movq -1608(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %r14, %r13
    movq %rbx, %rax
    movq %rax, -1608(%rbp)
    jmp .L5_8
.L5_11:
    movq -1192(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movl -1048(%rbp), %edx
    call lb_unicode_11range_value@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L5_40
.L5_39:
    movq -1200(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movl -1048(%rbp), %edx
    call lb_unicode_11range_value@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    jmp .L5_41
.L5_40:
    movl -1528(%rbp), %eax
    movl %eax, %ebx
.L5_41:
    movq -1040(%rbp), %rax
    movq %rax, -1512(%rbp)
    movq %r13, %rax
    movq %rax, -1520(%rbp)
    movl %ebx, %eax
    movl %eax, -1528(%rbp)
    jmp .L5_1
.L5_3:
    leaq -88(%rbp), %rbx
    movq -1520(%rbp), %rax
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
.L5_42:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_unicode_casing_0init
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
    .asciz "src/std/unicode/casing.lucb:5:5"
.Ltext_2:
    .asciz "src/std/unicode/casing.lucb:10:5"
.Ltext_3:
    .asciz "src/std/unicode/casing.lucb:16:5"
.Ltext_4:
    .asciz "the cased text size overflowed"
.Ltext_5:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_6:
    .asciz "memory.unset"
.Ltext_7:
    .asciz "src/std/unicode/casing.lucb:22:5"
.Ltext_8:
    .asciz "memory.exhausted"
.Ltext_9:
    .asciz "src/std/unicode/casing.lucb:24:5"
.Ltext_10:
    .asciz "index out of bounds"
.Ltext_11:
    .asciz "the text changed during Unicode casing"
.Ltext_12:
    .asciz "src/std/unicode/casing.lucb:26:9"
.Ltext_13:
    .asciz "src/std/unicode/casing.lucb:27:5"
.Ltext_14:
    .asciz "src/std/unicode/casing.lucb:28:5"
.Ltext_15:
    .asciz "invalid UTF-8 text"
.Ltext_16:
    .asciz "src/std/unicode/casing.lucb:36:9"
.Ltext_17:
    .asciz "invalid generated Unicode scalar"
.Ltext_18:
    .asciz "src/std/unicode/casing.lucb:41:13"
.Ltext_19:
    .asciz "the cased text exceeds its byte limit"
.Ltext_20:
    .asciz "src/std/unicode/casing.lucb:49:17"
.Ltext_21:
    .asciz "a Unicode scalar did not fit its encoded length"
.Ltext_22:
    .asciz "src/std/unicode/casing.lucb:56:5"
.Ltext_23:
    .asciz "src/std/unicode/casing.lucb:68:5"
.Ltext_24:
    .asciz "src/std/unicode/casing.lucb:76:9"
.Ltext_25:
    .asciz "src/std/unicode/casing.lucb:80:5"
.Ltext_26:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
