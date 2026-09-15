    .text

    .p2align 4
    .globl lb_unicode_lookup_0init
    .type lb_unicode_lookup_0init, @function
lb_unicode_lookup_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_unicode_10table_word
    .type lb_unicode_10table_word, @function
lb_unicode_10table_word:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -56(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    movq %rdx, -72(%rbp)
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -80(%rbp)
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -96(%rbp)
    movl $0, %eax
    movl %eax, -128(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L1_1:
    movq $8, %rcx
    cmpq %rcx, %r15
    jae .L1_4
.L1_2:
    movq -80(%rbp), %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -88(%rbp)
    movq -88(%rbp), %rax
    movq -96(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -88(%rbp), %rax
    addq %r13, %rax
    movq %rax, -104(%rbp)
    movq -104(%rbp), %r10
    movzbl (%r10), %eax
    movl %eax, -112(%rbp)
    movl -112(%rbp), %eax
    movzbl %al, %eax
    movl %eax, -120(%rbp)
    movl -120(%rbp), %eax
    movl $57, %ecx
    cmpl %ecx, %eax
    ja .L1_6
.L1_5:
    movl -120(%rbp), %eax
    movl $48, %ecx
    movl %eax, %ebx
    subl %ecx, %ebx
    movzbl %bl, %r14d
    cmpl %ebx, %r14d
    je .L1_8
.L1_9:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_8:
    movl %ebx, %r14d
    jmp .L1_7
.L1_6:
    movl -120(%rbp), %eax
    movl $97, %ecx
    movl %eax, %r14d
    subl %ecx, %r14d
    movzbl %r14b, %ebx
    cmpl %r14d, %ebx
    je .L1_10
.L1_11:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_10:
    movl $10, %ecx
    movl %r14d, %r12d
    addl %ecx, %r12d
    movzbl %r12b, %ebx
    cmpl %r12d, %ebx
    je .L1_12
.L1_13:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_12:
    movl %r12d, %r14d
.L1_7:
    movzbl %r14b, %ebx
.L1_15:
    movl $4, %ecx
    movl -128(%rbp), %eax
    movl %eax, %r12d
    shll %cl, %r12d
    movzbl %bl, %r14d
    movl %r14d, %r14d
    orl %r14d, %r12d
.L1_3:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl %r12d, %eax
    movl %eax, -128(%rbp)
    movq %rbx, %r15
    jmp .L1_1
.L1_4:
    movl -128(%rbp), %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_unicode_11range_value
    .type lb_unicode_11range_value, @function
lb_unicode_11range_value:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -56(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    movl %edx, -72(%rbp)
    leaq -56(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
.L2_2:
    movq $24, %rcx
    movq %r12, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %r13
    leaq -72(%rbp), %r14
    movq $0, %rax
    movq %rax, %r15
    movq %r13, %rax
    movq %rax, -112(%rbp)
.L2_3:
    movq -112(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L2_5
.L2_4:
    movq -112(%rbp), %rax
    movq %rax, %r12
    subq %r15, %r12
.L2_7:
    movq $2, %rcx
    movq %r12, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, -80(%rbp)
    movq -80(%rbp), %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -88(%rbp)
    movq -88(%rbp), %rax
    movq $24, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -96(%rbp)
    movq %r14, %r10
    movl (%r10), %eax
    movl %eax, -104(%rbp)
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -96(%rbp), %rdx
    call lb_unicode_10table_word@PLT
    movl %eax, %r13d
    movl -104(%rbp), %eax
    cmpl %r13d, %eax
    jae .L2_9
.L2_8:
    movq %r15, %r12
    movq -88(%rbp), %rax
    movq %rax, %r13
    jmp .L2_10
.L2_9:
    movq -96(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %rdx
    call lb_unicode_10table_word@PLT
    movl %eax, %r12d
    movl -104(%rbp), %eax
    cmpl %r12d, %eax
    jbe .L2_12
.L2_11:
    movq -88(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    jmp .L2_13
.L2_12:
    movq -96(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %rdx
    call lb_unicode_10table_word@PLT
    movl %eax, %r12d
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_13:
    movq -112(%rbp), %rax
    movq %rax, %r13
.L2_10:
    movq %r12, %r15
    movq %r13, %rax
    movq %rax, -112(%rbp)
    jmp .L2_3
.L2_5:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_unicode_Mapping_at
    .type lb_unicode_Mapping_at, @function
lb_unicode_Mapping_at:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -40(%rbp)
    movq %rsi, -56(%rbp)
    leaq -40(%rbp), %r10
    movq (%r10), %r13
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jb .L3_1
.L3_2:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_21(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_1:
    movq $20, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_3
    jmp .L3_4
.L3_3:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    jmp .L3_5
.L3_4:
    leaq lb_unicode_15mapping_scalars(%rip), %r12
    movq %r13, %r10
    movq (%r10), %r14
    movq %rbx, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r14, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r14, %rdx
    call lb_unicode_10table_word@PLT
    movl %eax, %r12d
    movl %r12d, %ebx
.L3_5:
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_6:
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_unicode_mapped
    .type lb_unicode_mapped, @function
lb_unicode_mapped:
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
    movl %ecx, -112(%rbp)
    leaq -96(%rbp), %rax
    movq %rax, -304(%rbp)
    leaq -112(%rbp), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq -304(%rbp), %r10
    leaq -248(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -264(%rbp), %r10
    movl %r12d, (%r10)
    leaq -248(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
.L4_7:
    movq $24, %rcx
    movq %r14, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %r15
    movq $0, %rax
    movq %rax, %rbx
    movq %r15, %rax
    movq %rax, -344(%rbp)
.L4_8:
    movq -344(%rbp), %rcx
    cmpq %rcx, %rbx
    jae .L4_10
.L4_9:
    movq -344(%rbp), %rax
    movq %rax, %r14
    subq %rbx, %r14
.L4_12:
    movq $2, %rcx
    movq %r14, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, -312(%rbp)
    movq -312(%rbp), %rax
    movq %rbx, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -320(%rbp)
    movq -320(%rbp), %rax
    movq $24, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -328(%rbp)
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -328(%rbp), %rdx
    call lb_unicode_10table_word@PLT
    movl %eax, -336(%rbp)
    movl -336(%rbp), %eax
    cmpl %r12d, %eax
    jae .L4_14
.L4_13:
    movq -320(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -344(%rbp), %rax
    movq %rax, %r14
    jmp .L4_15
.L4_14:
    movl -336(%rbp), %eax
    cmpl %r12d, %eax
    jbe .L4_17
.L4_16:
    jmp .L4_18
.L4_17:
    leaq -280(%rbp), %rbx
    movq -328(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -232(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    leaq -128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -328(%rbp), %rax
    movq %rax, %rbx
    jmp .L4_21
.L4_18:
    movq -320(%rbp), %rax
    movq %rax, %r14
.L4_15:
    movq %r14, %rax
    movq %rax, -344(%rbp)
    jmp .L4_8
.L4_10:
    leaq -296(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -232(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    leaq -128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rax, %rbx
.L4_21:
    leaq -128(%rbp), %r12
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L4_1
    jmp .L4_2
.L4_1:
    jmp .L4_3
.L4_2:
    leaq -160(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    leaq -80(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
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
.L4_3:
    leaq -184(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq %rbx, %rax
    movq $8, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -304(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r13, %rdx
    call lb_unicode_10table_word@PLT
    movl %eax, %r13d
    movl %r13d, %r13d
    movq %r12, %r10
    movq %r13, (%r10)
    movq %rbx, %rax
    movq $16, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -304(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r13, %rdx
    call lb_unicode_10table_word@PLT
    movl %eax, %r13d
    movl %r13d, %r13d
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    leaq -216(%rbp), %r13
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
    leaq -80(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
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

    .p2align 4
    .globl lb_unicode_16identity_mapping
    .type lb_unicode_16identity_mapping, @function
lb_unicode_16identity_mapping:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movl %esi, -72(%rbp)
    leaq -96(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $1, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $20, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
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
.L5_1:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_unicode_lookup_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/unicode/lookup.lucb:6:9"
.Ltext_1:
    .asciz "integer overflow"
.Ltext_2:
    .asciz "src/std/unicode/lookup.lucb:7:9"
.Ltext_3:
    .asciz "shift count out of range"
.Ltext_4:
    .asciz "src/std/unicode/lookup.lucb:8:9"
.Ltext_5:
    .asciz "unreachable"
.Ltext_6:
    .asciz "src/std/unicode/lookup.lucb:9:5"
.Ltext_7:
    .asciz "division by zero"
.Ltext_8:
    .asciz "src/std/unicode/lookup.lucb:13:5"
.Ltext_9:
    .asciz "src/std/unicode/lookup.lucb:15:9"
.Ltext_10:
    .asciz "src/std/unicode/lookup.lucb:16:9"
.Ltext_11:
    .asciz "src/std/unicode/lookup.lucb:18:13"
.Ltext_12:
    .asciz "src/std/unicode/lookup.lucb:22:13"
.Ltext_13:
    .asciz "src/std/unicode/lookup.lucb:23:5"
.Ltext_14:
    .asciz "src/std/unicode/lookup.lucb:27:5"
.Ltext_15:
    .asciz "src/std/unicode/lookup.lucb:29:9"
.Ltext_16:
    .asciz "src/std/unicode/lookup.lucb:30:9"
.Ltext_17:
    .asciz "src/std/unicode/lookup.lucb:33:9"
.Ltext_18:
    .asciz "src/std/unicode/lookup.lucb:34:13"
.Ltext_19:
    .asciz "src/std/unicode/lookup.lucb:36:13"
.Ltext_20:
    .asciz "src/std/unicode/lookup.lucb:37:5"
.Ltext_21:
    .asciz "assert failed: index < self.length"
.Ltext_22:
    .asciz "src/std/unicode/lookup.lucb:46:9"
.Ltext_23:
    .asciz "src/std/unicode/lookup.lucb:47:9"
.Ltext_24:
    .asciz "src/std/unicode/lookup.lucb:51:5"
.Ltext_25:
    .asciz "src/std/unicode/lookup.lucb:54:5"
.Ltext_26:
    .asciz "index out of bounds"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
