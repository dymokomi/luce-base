    .text

    .p2align 4
    .globl lb_strings_replace_0init
    .type lb_strings_replace_0init, @function
lb_strings_replace_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_strings_replace
    .type lb_strings_replace, @function
lb_strings_replace:
    pushq %rbp
    movq %rsp, %rbp
    subq $800, %rsp
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
    movq %r9, -160(%rbp)
    leaq 16(%rbp), %r10
    leaq -144(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rbp), %r10
    leaq -176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -128(%rbp), %rax
    movq %rax, -480(%rbp)
    movq -480(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -488(%rbp)
    movq -488(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L1_2
.L1_1:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_17invalid_separator(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_0(%rip), %r13
    leaq -192(%rbp), %r14
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
.L1_4:
    jmp .L1_3
.L1_2:
.L1_3:
    leaq -112(%rbp), %rax
    movq %rax, -496(%rbp)
    movq -496(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -504(%rbp)
    movq -504(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -512(%rbp)
    leaq -160(%rbp), %rax
    movq %rax, -520(%rbp)
    leaq -208(%rbp), %rax
    movq %rax, -712(%rbp)
    movq -712(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -528(%rbp)
    leaq -144(%rbp), %rax
    movq %rax, -536(%rbp)
    movq -536(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -544(%rbp)
    leaq -216(%rbp), %rax
    movq %rax, -552(%rbp)
    leaq -232(%rbp), %rax
    movq %rax, -720(%rbp)
    movq -720(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -560(%rbp)
    movq -512(%rbp), %rax
    movq %rax, -688(%rbp)
    movq $0, %rax
    movq %rax, -696(%rbp)
    movq $0, %rax
    movq %rax, -704(%rbp)
.L1_5:
    movq -520(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_51
    jmp .L1_8
.L1_51:
    movl %r12d, %ebx
    jmp .L1_9
.L1_8:
    movq -696(%rbp), %rax
    cmpq %rbx, %rax
    setb %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L1_9:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L1_6
    jmp .L1_7
.L1_6:
    movq -496(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -480(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -704(%rbp), %r8
    call lb_strings_9find_from@PLT
    leaq -208(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    movq -528(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_10
    jmp .L1_11
.L1_10:
    movq -712(%rbp), %r10
    movq (%r10), %rbx
    jmp .L1_12
.L1_11:
    jmp .L1_7
.L1_13:
.L1_12:
    movq -544(%rbp), %r10
    movq (%r10), %r12
    movq -488(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r12
    jb .L1_15
.L1_14:
    movq %r12, %r13
    subq %r14, %r13
    movq -688(%rbp), %rdi
    movq %r13, %rsi
    movl $64, %edx
    movq -552(%rbp), %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r13d
    movq -552(%rbp), %r10
    movq (%r10), %r15
    movq -720(%rbp), %r10
    movq %r15, (%r10)
    movq -560(%rbp), %r10
    movb %r13b, (%r10)
    movq -560(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_17
    jmp .L1_18
.L1_17:
    jmp .L1_19
.L1_18:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
    leaq -248(%rbp), %r14
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
.L1_20:
.L1_19:
    movq %r15, %r12
    jmp .L1_16
.L1_15:
    movq %r14, %r13
    subq %r12, %r13
    movq -688(%rbp), %rax
    movq %r13, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r13, %r12
.L1_16:
    movq -488(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -696(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r12, %rax
    movq %rax, -688(%rbp)
    movq %r14, %rax
    movq %rax, -696(%rbp)
    movq %r13, %rax
    movq %rax, -704(%rbp)
    jmp .L1_5
.L1_7:
    leaq -176(%rbp), %r12
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_24
    jmp .L1_22
.L1_24:
    movq %r12, %r10
    movq (%r10), %rbx
.L1_21:
    movq -688(%rbp), %rax
    cmpq %rbx, %rax
    jbe .L1_26
.L1_25:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_16output_too_large(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_6(%rip), %r13
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
.L1_28:
    jmp .L1_27
.L1_26:
.L1_27:
    jmp .L1_23
.L1_22:
.L1_23:
    leaq -280(%rbp), %rax
    movq %rax, -728(%rbp)
    movq -688(%rbp), %rsi
    leaq -328(%rbp), %rdi
    call lb_strings_17terminated_buffer@PLT
    leaq -328(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_30
    jmp .L1_29
.L1_30:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -96(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
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
.L1_31:
.L1_29:
    movq %r13, %r10
    movq -728(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -344(%rbp), %rax
    movq %rax, -776(%rbp)
    movq -776(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -568(%rbp)
    movq -728(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -584(%rbp)
    leaq -376(%rbp), %rax
    movq %rax, -600(%rbp)
    movq -600(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -608(%rbp)
    leaq -392(%rbp), %rax
    movq %rax, -616(%rbp)
    movq -616(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -624(%rbp)
    leaq -408(%rbp), %rax
    movq %rax, -632(%rbp)
    movq -632(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -640(%rbp)
    leaq -144(%rbp), %rax
    movq %rax, -648(%rbp)
    movq -648(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -656(%rbp)
    movq $0, %rax
    movq %rax, -736(%rbp)
    movq $0, %rax
    movq %rax, -744(%rbp)
    movq $0, %rax
    movq %rax, -752(%rbp)
.L1_32:
    movq -752(%rbp), %rax
    movq -696(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L1_34
.L1_33:
    movq -496(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -480(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -736(%rbp), %r8
    call lb_strings_9find_from@PLT
    leaq -344(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    movq -568(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_35
    jmp .L1_36
.L1_35:
    movq -776(%rbp), %r10
    movq (%r10), %r13
    jmp .L1_37
.L1_36:
    leaq .Ltext_7(%rip), %rbx
    leaq -360(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $39, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_8(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_37:
    movq %r13, %rax
    movq -736(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -576(%rbp)
    movq -728(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -784(%rbp)
    movq -584(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -792(%rbp)
    movq -792(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    movq %rax, -592(%rbp)
    movq -744(%rbp), %rax
    movq -592(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -792(%rbp), %rax
    movq -592(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -744(%rbp), %rax
    movq -792(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L1_38
.L1_39:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_38:
    movq -744(%rbp), %rax
    movq -784(%rbp), %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq -792(%rbp), %rax
    movq -744(%rbp), %rcx
    movq %rax, %r12
    subq %rcx, %r12
    movq -600(%rbp), %r10
    movq %r14, (%r10)
    movq -608(%rbp), %r10
    movq %r12, (%r10)
    movq -496(%rbp), %r10
    movq (%r10), %r14
    movq -504(%rbp), %r10
    movq (%r10), %r12
    movq $1, %rcx
    addq %rcx, %r12
    movq -736(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -736(%rbp), %rax
    cmpq %r13, %rax
    jbe .L1_40
.L1_41:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_40:
    movq -736(%rbp), %rax
    movq %rax, %r12
    addq %r14, %r12
    movq -736(%rbp), %rcx
    movq %r13, %rbx
    subq %rcx, %rbx
    movq -616(%rbp), %r10
    movq %r12, (%r10)
    movq -624(%rbp), %r10
    movq %rbx, (%r10)
    movq -600(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -616(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -576(%rbp), %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -576(%rbp), %rax
    movq -744(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -592(%rbp), %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -792(%rbp), %rcx
    cmpq %rcx, %rbx
    jbe .L1_42
.L1_43:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_42:
    movq -784(%rbp), %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -792(%rbp), %rax
    movq %rax, %r14
    subq %rbx, %r14
    movq -632(%rbp), %r10
    movq %r12, (%r10)
    movq -640(%rbp), %r10
    movq %r14, (%r10)
    movq -656(%rbp), %r10
    movq (%r10), %r12
    movq -632(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -648(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r12, %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -656(%rbp), %r10
    movq (%r10), %r12
    movq %rbx, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -488(%rbp), %r10
    movq (%r10), %r14
    movq %r13, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq -752(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r15, %rax
    movq %rax, -736(%rbp)
    movq %r12, %rax
    movq %rax, -744(%rbp)
    movq %r14, %rax
    movq %rax, -752(%rbp)
    jmp .L1_32
.L1_34:
    movq -504(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -664(%rbp)
    movq -664(%rbp), %rax
    movq -736(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -672(%rbp)
    movq -728(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -760(%rbp)
    movq -728(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -768(%rbp)
    movq -768(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    movq %rax, -680(%rbp)
    movq -744(%rbp), %rax
    movq -680(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -768(%rbp), %rax
    movq -680(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -744(%rbp), %rax
    movq -768(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L1_44
.L1_45:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_44:
    movq -744(%rbp), %rax
    movq -760(%rbp), %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq -768(%rbp), %rax
    movq -744(%rbp), %rcx
    movq %rax, %r13
    subq %rcx, %r13
    leaq -424(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq -496(%rbp), %r10
    movq (%r10), %r14
    movq -664(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq -736(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -664(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -736(%rbp), %rax
    movq -664(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L1_46
.L1_47:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_46:
    movq -736(%rbp), %rax
    movq %rax, %r13
    addq %r14, %r13
    movq -664(%rbp), %rax
    movq -736(%rbp), %rcx
    movq %rax, %r12
    subq %rcx, %r12
    leaq -440(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq %r15, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -672(%rbp), %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -672(%rbp), %rax
    movq -744(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -768(%rbp), %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -760(%rbp), %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $0, %rax
    movq -680(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %rbx, %rax
    jbe .L1_48
.L1_49:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_48:
    leaq -456(%rbp), %r12
    movq -760(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq -472(%rbp), %r12
    movq -760(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
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
.L1_50:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
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
    jne .L2_11
    jmp .L2_4
.L2_11:
    movl %r13d, %r14d
    jmp .L2_5
.L2_4:
    leaq -64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L2_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L2_1
    jmp .L2_2
.L2_1:
    leaq .Ltext_12(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_23(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L2_3
.L2_2:
.L2_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L2_7
.L2_6:
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
    jne .L2_9
    jmp .L2_10
.L2_10:
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_25(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_9:
    jmp .L2_8
.L2_7:
.L2_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_strings_replace_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "replacement requires a nonempty needle"
.Ltext_1:
    .asciz "src/std/strings/replace.lucb:16:13"
.Ltext_2:
    .asciz "the replacement result is too large"
.Ltext_3:
    .asciz "src/std/strings/replace.lucb:18:13"
.Ltext_4:
    .asciz "src/std/strings/replace.lucb:19:9"
.Ltext_5:
    .asciz "src/std/strings/replace.lucb:20:9"
.Ltext_6:
    .asciz "the replacement result exceeds its byte limit"
.Ltext_7:
    .asciz "replacement input changed between scans"
.Ltext_8:
    .asciz "src/std/strings/replace.lucb:29:9"
.Ltext_9:
    .asciz "unreachable"
.Ltext_10:
    .asciz "src/std/strings/replace.lucb:30:9"
.Ltext_11:
    .asciz "src/std/strings/replace.lucb:31:9"
.Ltext_12:
    .asciz "index out of bounds"
.Ltext_13:
    .asciz "src/std/strings/replace.lucb:32:9"
.Ltext_14:
    .asciz "src/std/strings/replace.lucb:33:9"
.Ltext_15:
    .asciz "src/std/strings/replace.lucb:34:9"
.Ltext_16:
    .asciz "src/std/strings/replace.lucb:35:9"
.Ltext_17:
    .asciz "src/std/strings/replace.lucb:36:9"
.Ltext_18:
    .asciz "src/std/strings/replace.lucb:37:5"
.Ltext_19:
    .asciz "src/std/strings/replace.lucb:38:5"
.Ltext_20:
    .asciz "src/std/strings/replace.lucb:39:5"
.Ltext_21:
    .asciz "src/std/strings/replace.lucb:40:5"
.Ltext_22:
    .asciz "src/std/strings/replace.lucb:41:5"
.Ltext_23:
    .asciz "src/std/memory.lucb:326:9"
.Ltext_24:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_25:
    .asciz "null_foreign"
.Ltext_26:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
