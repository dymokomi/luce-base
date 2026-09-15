    .text

    .p2align 4
    .globl lb_strings_transform_0init
    .type lb_strings_transform_0init, @function
lb_strings_transform_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_strings_8is_space
    .type lb_strings_8is_space, @function
lb_strings_8is_space:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movl %edi, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $32, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_8
    jmp .L1_1
.L1_8:
    movl %r12d, %r13d
    jmp .L1_2
.L1_1:
    movl $10, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L1_2:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_9
    jmp .L1_3
.L1_9:
    movl %r12d, %r13d
    jmp .L1_4
.L1_3:
    movl $9, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L1_4:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_10
    jmp .L1_5
.L1_10:
    movl %r12d, %ebx
    jmp .L1_6
.L1_5:
    movl $13, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L1_6:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_7:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_trim
    .type lb_strings_trim, @function
lb_strings_trim:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -72(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -72(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -88(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rax, -128(%rbp)
.L2_1:
    movq -128(%rbp), %rax
    cmpq %r12, %rax
    setb %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L2_4
    jmp .L2_14
.L2_14:
    movl %r14d, %r15d
    jmp .L2_5
.L2_4:
    movq %r13, %r10
    movq (%r10), %r14
    movq -128(%rbp), %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl %r14d, %edi
    call lb_strings_8is_space@PLT
    movl %eax, %r15d
.L2_5:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L2_2
    jmp .L2_3
.L2_2:
    movq -128(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r14, %rax
    movq %rax, -128(%rbp)
    jmp .L2_1
.L2_3:
    movq %r12, %r14
.L2_6:
    movq -128(%rbp), %rcx
    cmpq %rcx, %r14
    seta %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L2_9
    jmp .L2_15
.L2_15:
    movl %r15d, %ebx
    jmp .L2_10
.L2_9:
    movq %r14, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %r13, %r10
    movq (%r10), %r15
    cmpq %r12, %rbx
    jb 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    addq %r15, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl %ebx, %edi
    call lb_strings_8is_space@PLT
    movl %eax, %ebx
.L2_10:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L2_7
    jmp .L2_8
.L2_7:
    movq %r14, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %rbx, %r14
    jmp .L2_6
.L2_8:
    movq %r13, %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq -128(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r14
    jb 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -128(%rbp), %rax
    cmpq %r14, %rax
    jbe .L2_11
.L2_12:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_11:
    movq -128(%rbp), %rax
    movq %rax, %rbx
    addq %r15, %rbx
    movq -128(%rbp), %rcx
    movq %r14, %r12
    subq %rcx, %r12
    leaq -104(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq -120(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq -56(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
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
.L2_13:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_join
    .type lb_strings_join, @function
lb_strings_join:
    pushq %rbp
    movq %rsp, %rbp
    subq $512, %rsp
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
    leaq -112(%rbp), %rax
    movq %rax, -344(%rbp)
    movq -344(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -352(%rbp)
    leaq -136(%rbp), %rax
    movq %rax, -368(%rbp)
    leaq -152(%rbp), %rax
    movq %rax, -504(%rbp)
    movq -504(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -376(%rbp)
    leaq -128(%rbp), %rax
    movq %rax, -384(%rbp)
    movq -384(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -392(%rbp)
    leaq -176(%rbp), %rax
    movq %rax, -400(%rbp)
    leaq -192(%rbp), %rax
    movq %rax, -512(%rbp)
    movq -512(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -408(%rbp)
    movq $0, %rax
    movq %rax, %r15
    movq $0, %rax
    movq %rax, %r14
.L3_1:
    movq -352(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -360(%rbp)
    movq -360(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L3_3
.L3_2:
    movq -344(%rbp), %r10
    movq (%r10), %r13
    movq $16, %rcx
    movq %r14, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r15, %rdi
    movq %r12, %rsi
    movl $64, %edx
    movq -368(%rbp), %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r12d
    movq -368(%rbp), %r10
    movq (%r10), %r13
    movq -504(%rbp), %r10
    movq %r13, (%r10)
    movq -376(%rbp), %r10
    movb %r12b, (%r10)
    movq -376(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_4
    jmp .L3_5
.L3_4:
    jmp .L3_6
.L3_5:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_9(%rip), %r13
    leaq -168(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $28, %rax
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
.L3_7:
.L3_6:
    movq $1, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq -360(%rbp), %rcx
    cmpq %rcx, %r12
    jae .L3_9
.L3_8:
    movq -392(%rbp), %r10
    movq (%r10), %r14
    movq %r13, %rdi
    movq %r14, %rsi
    movl $64, %edx
    movq -400(%rbp), %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r14d
    movq -400(%rbp), %r10
    movq (%r10), %r15
    movq -512(%rbp), %r10
    movq %r15, (%r10)
    movq -408(%rbp), %r10
    movb %r14b, (%r10)
    movq -408(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L3_11
    jmp .L3_12
.L3_11:
    jmp .L3_13
.L3_12:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_9(%rip), %r13
    leaq -208(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $28, %rax
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
.L3_14:
.L3_13:
    movq %r15, %r13
    jmp .L3_10
.L3_9:
.L3_10:
    movq %r13, %r15
    movq %r12, %r14
    jmp .L3_1
.L3_3:
    leaq -224(%rbp), %rax
    movq %rax, -480(%rbp)
    movq %r15, %rsi
    leaq -272(%rbp), %rdi
    call lb_strings_17terminated_buffer@PLT
    leaq -272(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_16
    jmp .L3_15
.L3_16:
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
.L3_17:
.L3_15:
    movq %r14, %r10
    movq -480(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -480(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -416(%rbp)
    leaq -288(%rbp), %rax
    movq %rax, -432(%rbp)
    movq -432(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -440(%rbp)
    leaq -304(%rbp), %rax
    movq %rax, -448(%rbp)
    movq -448(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -456(%rbp)
    leaq -128(%rbp), %rax
    movq %rax, -464(%rbp)
    movq -464(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -472(%rbp)
    movq $0, %rax
    movq %rax, -488(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L3_18:
    movq -488(%rbp), %rax
    movq -360(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L3_20
.L3_19:
    movq -480(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -496(%rbp)
    movq -416(%rbp), %r10
    movq (%r10), %rbx
    movq $1, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -424(%rbp)
    movq -424(%rbp), %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -424(%rbp), %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r15
    jbe .L3_21
.L3_22:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_21:
    movq -496(%rbp), %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %rbx, %r12
    subq %r15, %r12
    movq -432(%rbp), %r10
    movq %r14, (%r10)
    movq -440(%rbp), %r10
    movq %r12, (%r10)
    movq -344(%rbp), %r10
    movq (%r10), %r12
    movq -488(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    addq %r14, %r12
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r13
    movq -432(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r13, %r8
    call lb_memory_copy_0g1_u8@PLT
    movq %r14, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -488(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq -360(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L3_24
.L3_23:
    movq -424(%rbp), %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r12
    jbe .L3_26
.L3_27:
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_26:
    movq -496(%rbp), %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r15
    subq %r12, %r15
    movq -448(%rbp), %r10
    movq %r14, (%r10)
    movq -456(%rbp), %r10
    movq %r15, (%r10)
    movq -472(%rbp), %r10
    movq (%r10), %r14
    movq -448(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -464(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r14, %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -472(%rbp), %r10
    movq (%r10), %r14
    movq %r12, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    jmp .L3_25
.L3_24:
    movq %r12, %r14
.L3_25:
    movq %r13, %rax
    movq %rax, -488(%rbp)
    movq %r14, %r15
    jmp .L3_18
.L3_20:
    movq -480(%rbp), %r10
    movq (%r10), %rbx
    movq -480(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rbx, %r13
    addq %r15, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $1, %rcx
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r15, %rax
    jbe .L3_28
.L3_29:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_28:
    leaq -320(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    leaq -336(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
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
.L3_30:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_copy
    .type lb_strings_copy, @function
lb_strings_copy:
    pushq %rbp
    movq %rsp, %rbp
    subq $256, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -112(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -128(%rbp), %r14
    leaq -112(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq %r13, %rsi
    leaq -176(%rbp), %rdi
    call lb_strings_17terminated_buffer@PLT
    leaq -176(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L4_2
    jmp .L4_1
.L4_2:
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
.L4_3:
.L4_1:
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -216(%rbp)
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -216(%rbp), %r8
    call lb_memory_copy_0g1_u8@PLT
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -224(%rbp)
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -232(%rbp)
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %r10
    movq (%r10), %r13
    movq -224(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -224(%rbp), %rax
    movq -232(%rbp), %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -248(%rbp)
    movq -240(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -256(%rbp)
    movq $1, %rcx
    addq %rcx, %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -256(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -256(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L4_4
.L4_5:
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_4:
    leaq -192(%rbp), %rbx
    movq -248(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq -256(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -208(%rbp), %rbx
    movq -248(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -256(%rbp), %rax
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
.L4_6:
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_8to_upper
    .type lb_strings_8to_upper, @function
lb_strings_8to_upper:
    pushq %rbp
    movq %rsp, %rbp
    subq $272, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -112(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -128(%rbp), %rax
    movq %rax, -256(%rbp)
    leaq -112(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -216(%rbp)
    movq -216(%rbp), %rsi
    leaq -176(%rbp), %rdi
    call lb_strings_17terminated_buffer@PLT
    leaq -176(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L5_2
    jmp .L5_1
.L5_2:
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
.L5_3:
.L5_1:
    movq %r15, %r10
    movq -256(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -224(%rbp)
    movq -256(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -232(%rbp)
    movq -256(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -248(%rbp)
    movq $0, %rax
    movq %rax, -264(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L5_4:
    movq -216(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L5_7
.L5_5:
    movq -224(%rbp), %rax
    movq %rax, %rbx
    addq %r13, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq -264(%rbp), %rax
    movq -248(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -232(%rbp), %rax
    movq -264(%rbp), %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movzbl %bl, %ebx
    movl $97, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L5_11
    jmp .L5_18
.L5_18:
    movl %r15d, %r14d
    jmp .L5_12
.L5_11:
    movl $122, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r14d
.L5_12:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L5_8
    jmp .L5_9
.L5_8:
    movl $32, %ecx
    movl %ebx, %r15d
    subl %ecx, %r15d
    movzbl %r15b, %r14d
    cmpl %r15d, %r14d
    je .L5_13
.L5_14:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_13:
    movl %r15d, %ebx
    jmp .L5_10
.L5_9:
.L5_10:
    movzbl %bl, %r14d
    movq %r12, %r10
    movb %r14b, (%r10)
    movq -264(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
.L5_6:
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %r14, %rax
    movq %rax, -264(%rbp)
    movq %rbx, %r13
    jmp .L5_4
.L5_7:
    movq -256(%rbp), %r10
    movq (%r10), %rbx
    movq -256(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq -264(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -264(%rbp), %rcx
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
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -264(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -264(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L5_15
.L5_16:
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_15:
    leaq -192(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq -264(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -208(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq -264(%rbp), %rax
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
.L5_17:
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_8to_lower
    .type lb_strings_8to_lower, @function
lb_strings_8to_lower:
    pushq %rbp
    movq %rsp, %rbp
    subq $272, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -112(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -128(%rbp), %rax
    movq %rax, -256(%rbp)
    leaq -112(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -216(%rbp)
    movq -216(%rbp), %rsi
    leaq -176(%rbp), %rdi
    call lb_strings_17terminated_buffer@PLT
    leaq -176(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L6_2
    jmp .L6_1
.L6_2:
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
.L6_3:
.L6_1:
    movq %r15, %r10
    movq -256(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -224(%rbp)
    movq -256(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -232(%rbp)
    movq -256(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -248(%rbp)
    movq $0, %rax
    movq %rax, -264(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L6_4:
    movq -216(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L6_7
.L6_5:
    movq -224(%rbp), %rax
    movq %rax, %rbx
    addq %r13, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq -264(%rbp), %rax
    movq -248(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -232(%rbp), %rax
    movq -264(%rbp), %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movzbl %bl, %ebx
    movl $65, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L6_11
    jmp .L6_18
.L6_18:
    movl %r15d, %r14d
    jmp .L6_12
.L6_11:
    movl $90, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r14d
.L6_12:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L6_8
    jmp .L6_9
.L6_8:
    movl $32, %ecx
    movl %ebx, %r15d
    addl %ecx, %r15d
    movzbl %r15b, %r14d
    cmpl %r15d, %r14d
    je .L6_13
.L6_14:
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_13:
    movl %r15d, %ebx
    jmp .L6_10
.L6_9:
.L6_10:
    movzbl %bl, %r14d
    movq %r12, %r10
    movb %r14b, (%r10)
    movq -264(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
.L6_6:
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %r14, %rax
    movq %rax, -264(%rbp)
    movq %rbx, %r13
    jmp .L6_4
.L6_7:
    movq -256(%rbp), %r10
    movq (%r10), %rbx
    movq -256(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq -264(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -264(%rbp), %rcx
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
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -264(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -264(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L6_15
.L6_16:
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_15:
    leaq -192(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq -264(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -208(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq -264(%rbp), %rax
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
.L6_17:
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_release
    .type lb_strings_release, @function
lb_strings_release:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    leaq -48(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    leaq -64(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    leaq -80(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L7_2
    jmp .L7_1
.L7_2:
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L7_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_strings_17terminated_buffer
    .type lb_strings_17terminated_buffer, @function
lb_strings_17terminated_buffer:
    pushq %rbp
    movq %rsp, %rbp
    subq $240, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -112(%rbp)
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -120(%rbp), %r12
    movq %rbx, %rdi
    movq $1, %rsi
    movl $64, %edx
    movq %r12, %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %ebx
    leaq -136(%rbp), %r13
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movb %bl, (%r10)
    movq %r13, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_1
    jmp .L8_2
.L8_1:
    jmp .L8_3
.L8_2:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_32(%rip), %r13
    leaq -152(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $21, %rax
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
.L8_4:
.L8_3:
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    leaq -200(%rbp), %rax
    movq %rax, -240(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r12
    jbe .L8_6
.L8_5:
    movq -240(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_33(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -240(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L8_7
.L8_6:
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L8_8
    jmp .L8_9
.L8_9:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
.L8_8:
    movq %r15, %r10
    movq (%r10), %r13
    movq %rbx, %rsi
    movq %r12, %rdx
    movq $1, %rcx
    leaq -224(%rbp), %rdi
    movq %r13, %r11
    call *%r11
    leaq -224(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, -232(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl -232(%rbp), %eax
    movl %r13d, %ecx
    movl %eax, %r13d
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L8_10
    jmp .L8_11
.L8_10:
    movq -240(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_36(%rip), %r12
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
    movq -240(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L8_7
.L8_11:
    movq %r14, %r10
    movq (%r10), %rbx
    movq -240(%rbp), %r10
    movq %rbx, (%r10)
    movq -240(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq -240(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L8_7:
    movq -240(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_13
    jmp .L8_12
.L8_13:
    movq -240(%rbp), %rax
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
.L8_14:
.L8_12:
    leaq -96(%rbp), %rbx
    movq -240(%rbp), %r10
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
.L8_15:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

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
    jne .L9_11
    jmp .L9_4
.L9_11:
    movl %r13d, %r14d
    jmp .L9_5
.L9_4:
    leaq -64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L9_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L9_1
    jmp .L9_2
.L9_1:
    leaq .Ltext_7(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_37(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L9_3
.L9_2:
.L9_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L9_7
.L9_6:
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
    jne .L9_9
    jmp .L9_10
.L9_10:
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_39(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_9:
    jmp .L9_8
.L9_7:
.L9_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_strings_transform_0init
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
    .asciz "src/std/strings/transform.lucb:2:5"
.Ltext_2:
    .asciz "src/std/strings/transform.lucb:9:5"
.Ltext_3:
    .asciz "src/std/strings/transform.lucb:10:9"
.Ltext_4:
    .asciz "src/std/strings/transform.lucb:11:5"
.Ltext_5:
    .asciz "src/std/strings/transform.lucb:12:9"
.Ltext_6:
    .asciz "src/std/strings/transform.lucb:13:5"
.Ltext_7:
    .asciz "index out of bounds"
.Ltext_8:
    .asciz "src/std/strings/transform.lucb:21:9"
.Ltext_9:
    .asciz "the joined text is too large"
.Ltext_10:
    .asciz "src/std/strings/transform.lucb:22:9"
.Ltext_11:
    .asciz "src/std/strings/transform.lucb:24:9"
.Ltext_12:
    .asciz "src/std/strings/transform.lucb:29:9"
.Ltext_13:
    .asciz "src/std/strings/transform.lucb:30:9"
.Ltext_14:
    .asciz "src/std/strings/transform.lucb:31:9"
.Ltext_15:
    .asciz "src/std/strings/transform.lucb:32:13"
.Ltext_16:
    .asciz "src/std/strings/transform.lucb:33:13"
.Ltext_17:
    .asciz "src/std/strings/transform.lucb:34:9"
.Ltext_18:
    .asciz "src/std/strings/transform.lucb:35:5"
.Ltext_19:
    .asciz "src/std/strings/transform.lucb:36:5"
.Ltext_20:
    .asciz "src/std/strings/transform.lucb:43:5"
.Ltext_21:
    .asciz "src/std/strings/transform.lucb:44:5"
.Ltext_22:
    .asciz "src/std/strings/transform.lucb:52:9"
.Ltext_23:
    .asciz "integer overflow"
.Ltext_24:
    .asciz "src/std/strings/transform.lucb:53:9"
.Ltext_25:
    .asciz "src/std/strings/transform.lucb:54:5"
.Ltext_26:
    .asciz "src/std/strings/transform.lucb:55:5"
.Ltext_27:
    .asciz "src/std/strings/transform.lucb:63:9"
.Ltext_28:
    .asciz "src/std/strings/transform.lucb:64:9"
.Ltext_29:
    .asciz "src/std/strings/transform.lucb:65:5"
.Ltext_30:
    .asciz "src/std/strings/transform.lucb:66:5"
.Ltext_31:
    .asciz "src/std/strings/transform.lucb:71:5"
.Ltext_32:
    .asciz "the text is too large"
.Ltext_33:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_34:
    .asciz "memory.unset"
.Ltext_35:
    .asciz "src/std/strings/transform.lucb:77:5"
.Ltext_36:
    .asciz "memory.exhausted"
.Ltext_37:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_38:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_39:
    .asciz "null_foreign"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
