    .text

    .p2align 4
    .globl lb_unicode_graphemes_0init
    .type lb_unicode_graphemes_0init, @function
lb_unicode_graphemes_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_unicode_GraphemeIterator_over
    .type lb_unicode_GraphemeIterator_over, @function
lb_unicode_GraphemeIterator_over:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    leaq -112(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_utf8_valid@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_2
.L1_1:
    leaq -96(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_utf8_16invalid_sequence(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_0(%rip), %r13
    leaq -128(%rbp), %r14
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_4:
    jmp .L1_3
.L1_2:
.L1_3:
    leaq -152(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -96(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_5:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_unicode_GraphemeIterator_next
    .type lb_unicode_GraphemeIterator_next, @function
lb_unicode_GraphemeIterator_next:
    pushq %rbp
    movq %rsp, %rbp
    subq $464, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -80(%rbp)
    leaq -80(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -440(%rbp)
    movq -440(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -352(%rbp)
    movq -352(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -360(%rbp)
    movq -440(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -368(%rbp)
    movq -368(%rbp), %r10
    movq (%r10), %r14
    movq -360(%rbp), %rax
    cmpq %r14, %rax
    jne .L2_2
.L2_1:
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
.L2_4:
    jmp .L2_3
.L2_2:
.L2_3:
    leaq -120(%rbp), %r13
    movq -440(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -360(%rbp), %rcx
    leaq -144(%rbp), %rdi
    call lb_utf8_decode@PLT
    leaq -144(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L2_5
    jmp .L2_6
.L2_5:
    leaq -160(%rbp), %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_7
.L2_6:
    leaq .Ltext_3(%rip), %rbx
    leaq -176(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $37, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_4(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_7:
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -181(%rbp), %rbx
    movq %rbx, %r11
    movl $0, 0(%r11)
    movb $0, 4(%r11)
    movq %r13, %r10
    movl (%r10), %r12d
    movl %r12d, %r12d
    leaq -328(%rbp), %r10
    movl %r12d, (%r10)
    leaq lb_unicode_15grapheme_ranges(%rip), %rax
    movq %rax, -432(%rbp)
    movq -432(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movl %r12d, %edx
    call lb_unicode_11range_value@PLT
    movl %eax, %r15d
    movl %r15d, %r15d
    movzbl %r15b, %r15d
    movl %r15d, %r15d
    movzbl %r15b, %r15d
    movzbl %r15b, %r15d
    leaq -336(%rbp), %r10
    movl %r15d, (%r10)
    jmp .L2_22
.L2_21:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_22:
    movq %rbx, %rdi
    movl %r12d, %esi
    movl %r15d, %edx
    call lb_unicode_GraphemeState_accept@PLT
    movq -352(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -376(%rbp)
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -384(%rbp)
    movq -384(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -392(%rbp)
    movq -376(%rbp), %rax
    movq -392(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_16(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -400(%rbp)
    movq -400(%rbp), %rax
    movq -352(%rbp), %r10
    movq %rax, (%r10)
    leaq -200(%rbp), %rax
    movq %rax, -448(%rbp)
    leaq -224(%rbp), %rax
    movq %rax, -456(%rbp)
    movq -456(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -408(%rbp)
    leaq -240(%rbp), %rax
    movq %rax, -416(%rbp)
    movq -448(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -424(%rbp)
    movq -400(%rbp), %rax
    movq %rax, %r14
.L2_8:
    movq -368(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %r14
    jae .L2_10
.L2_9:
    movq -440(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %rcx
    leaq -224(%rbp), %rdi
    call lb_utf8_decode@PLT
    movq -408(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_11
    jmp .L2_12
.L2_11:
    movq -456(%rbp), %r10
    movq -416(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_13
.L2_12:
    leaq .Ltext_3(%rip), %rbx
    leaq -256(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $37, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_6(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_13:
    movq -416(%rbp), %r10
    movq -448(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -448(%rbp), %r10
    movl (%r10), %r12d
    movl %r12d, %r12d
    leaq -328(%rbp), %r10
    movl %r12d, (%r10)
    movq -432(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movl %r12d, %edx
    call lb_unicode_11range_value@PLT
    movl %eax, %r13d
    movl %r13d, %r13d
    movzbl %r13b, %r13d
    movl %r13d, %r13d
    movzbl %r13b, %r13d
    movzbl %r13b, %r13d
    leaq -344(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L2_24
.L2_23:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_24:
    movzbl %r13b, %r14d
    movq %rbx, %rdi
    movl %r12d, %esi
    movl %r14d, %edx
    call lb_unicode_GraphemeState_12break_before@PLT
    movl %eax, %r15d
    testl %r15d, %r15d
    jne .L2_14
    jmp .L2_15
.L2_14:
    jmp .L2_10
.L2_17:
    jmp .L2_16
.L2_15:
.L2_16:
    movq %rbx, %rdi
    movl %r12d, %esi
    movl %r14d, %edx
    call lb_unicode_GraphemeState_accept@PLT
    movq -352(%rbp), %r10
    movq (%r10), %r13
    movq -424(%rbp), %r10
    movq (%r10), %r15
    movq %r13, %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_16(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -352(%rbp), %r10
    movq %r13, (%r10)
    movq %r13, %r14
    jmp .L2_8
.L2_10:
    movq -440(%rbp), %r10
    movq (%r10), %r12
    movq -368(%rbp), %r10
    movq (%r10), %rbx
    movq -352(%rbp), %r10
    movq (%r10), %r13
    movq $1, %rcx
    addq %rcx, %rbx
    movq -360(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -360(%rbp), %rax
    cmpq %r13, %rax
    jbe .L2_18
.L2_19:
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_18:
    movq -360(%rbp), %rax
    movq %rax, %rbx
    addq %r12, %rbx
    movq -360(%rbp), %rcx
    movq %r13, %r14
    subq %rcx, %r14
    leaq -272(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    leaq -288(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    leaq -312(%rbp), %rbx
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
.L2_20:
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_unicode_GraphemeIterator_11byte_offset
    .type lb_unicode_GraphemeIterator_11byte_offset, @function
lb_unicode_GraphemeIterator_11byte_offset:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -16(%rbp)
    leaq -16(%rbp), %r10
    movq (%r10), %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_1:
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_unicode_GraphemeState_12break_before
    .type lb_unicode_GraphemeState_12break_before, @function
lb_unicode_GraphemeState_12break_before:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -48(%rbp)
    movl %esi, -64(%rbp)
    movl %edx, -80(%rbp)
    leaq -48(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -160(%rbp)
    movq -160(%rbp), %r10
    movzbl (%r10), %ebx
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L4_4
    jmp .L4_82
.L4_82:
    movl %r12d, %r14d
    jmp .L4_5
.L4_4:
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $2, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L4_5:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L4_1
    jmp .L4_2
.L4_1:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_6:
    jmp .L4_3
.L4_2:
.L4_3:
    movl %ebx, %edi
    call lb_unicode_16grapheme_control@PLT
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L4_83
    jmp .L4_10
.L4_83:
    movl %r12d, %ebx
    jmp .L4_11
.L4_10:
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl %ebx, %edi
    call lb_unicode_16grapheme_control@PLT
    movl %eax, %ebx
.L4_11:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L4_7
    jmp .L4_8
.L4_7:
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_12:
    jmp .L4_9
.L4_8:
.L4_9:
    movq -160(%rbp), %r10
    movzbl (%r10), %ebx
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -96(%rbp), %r10
    movl %ebx, (%r10)
    leaq -112(%rbp), %r10
    movl %r12d, (%r10)
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    leaq -113(%rbp), %r15
    movq %r15, %r10
    movb %r14b, (%r10)
    leaq -114(%rbp), %r14
    movq %r15, %r10
    movq %r14, %r11
    movzbl 0(%r10), %eax
    movb %al, 0(%r11)
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $9, %ecx
    cmpl %ecx, %r14d
    je .L4_53
.L4_55:
    jmp .L4_54
.L4_53:
    leaq -112(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $9, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L4_84
    jmp .L4_56
.L4_84:
    movl %r15d, %r13d
    jmp .L4_57
.L4_56:
    movl $10, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r13d
.L4_57:
    movzbl %r13b, %r15d
    testl %r15d, %r15d
    jne .L4_85
    jmp .L4_58
.L4_85:
    movl %r15d, %r13d
    jmp .L4_59
.L4_58:
    movl $12, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r13d
.L4_59:
    movzbl %r13b, %r15d
    testl %r15d, %r15d
    jne .L4_86
    jmp .L4_60
.L4_86:
    movl %r15d, %r13d
    jmp .L4_61
.L4_60:
    movl $13, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r13d
.L4_61:
    movzbl %r13b, %r14d
    movzbl %r14b, %r14d
    leaq -128(%rbp), %r10
    movl %r14d, (%r10)
    jmp .L4_79
.L4_62:
    jmp .L4_52
.L4_54:
    movl $12, %ecx
    cmpl %ecx, %r14d
    je .L4_63
.L4_65:
    movl $10, %ecx
    cmpl %ecx, %r14d
    je .L4_63
.L4_66:
    jmp .L4_64
.L4_63:
    leaq -112(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $10, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L4_87
    jmp .L4_67
.L4_87:
    movl %r14d, %r13d
    jmp .L4_68
.L4_67:
    movl $11, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r13d
.L4_68:
    movzbl %r13b, %r14d
    movzbl %r14b, %r14d
    leaq -128(%rbp), %r10
    movl %r14d, (%r10)
    jmp .L4_79
.L4_69:
    jmp .L4_52
.L4_64:
    movl $13, %ecx
    cmpl %ecx, %r14d
    je .L4_70
.L4_72:
    movl $11, %ecx
    cmpl %ecx, %r14d
    je .L4_70
.L4_73:
    jmp .L4_71
.L4_70:
    leaq -112(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $11, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movzbl %r13b, %r14d
    leaq -128(%rbp), %r10
    movl %r14d, (%r10)
    jmp .L4_79
.L4_74:
    jmp .L4_52
.L4_71:
    jmp .L4_75
.L4_77:
    jmp .L4_76
.L4_75:
    movl $0, %eax
    leaq -128(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, %r14d
    jmp .L4_79
.L4_78:
    jmp .L4_52
.L4_76:
.L4_52:
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_79:
    testl %r14d, %r14d
    jne .L4_13
    jmp .L4_14
.L4_13:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_16:
    jmp .L4_15
.L4_14:
.L4_15:
    movl $4, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L4_88
    jmp .L4_20
.L4_88:
    movl %r13d, %r14d
    jmp .L4_21
.L4_20:
    movl $5, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L4_21:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L4_89
    jmp .L4_22
.L4_89:
    movl %r13d, %r14d
    jmp .L4_23
.L4_22:
    movl $8, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L4_23:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L4_17
    jmp .L4_18
.L4_17:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_24:
    jmp .L4_19
.L4_18:
.L4_19:
    movl $7, %ecx
    cmpl %ecx, %ebx
    jne .L4_26
.L4_25:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_28:
    jmp .L4_27
.L4_26:
.L4_27:
    movq -160(%rbp), %rax
    movq $4, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L4_32
    jmp .L4_90
.L4_90:
    movl %ebx, %r13d
    jmp .L4_33
.L4_32:
    leaq -64(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    leaq -144(%rbp), %r10
    movl %ebx, (%r10)
    leaq lb_unicode_12indic_ranges(%rip), %r13
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movl %ebx, %edx
    call lb_unicode_11range_value@PLT
    movl %eax, %ebx
    movl %ebx, %ebx
    movzbl %bl, %ebx
    movl %ebx, %ebx
    movzbl %bl, %ebx
    movzbl %bl, %ebx
    leaq -152(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L4_81
.L4_80:
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_81:
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L4_33:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L4_29
    jmp .L4_30
.L4_29:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_34:
    jmp .L4_31
.L4_30:
.L4_31:
    movq -160(%rbp), %r10
    movzbl (%r10), %ebx
    movl $5, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L4_38
    jmp .L4_91
.L4_91:
    movl %ebx, %r13d
    jmp .L4_39
.L4_38:
    movq -160(%rbp), %rax
    movq $3, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %r13d
.L4_39:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L4_40
    jmp .L4_92
.L4_92:
    movl %ebx, %r13d
    jmp .L4_41
.L4_40:
    leaq lb_unicode_19pictographic_ranges(%rip), %rbx
    leaq -64(%rbp), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movl %r13d, %edx
    call lb_unicode_11range_value@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L4_41:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L4_35
    jmp .L4_36
.L4_35:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_42:
    jmp .L4_37
.L4_36:
.L4_37:
    movq -160(%rbp), %r10
    movzbl (%r10), %ebx
    movl $6, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L4_46
    jmp .L4_93
.L4_93:
    movl %ebx, %r12d
    jmp .L4_47
.L4_46:
    movl $6, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %ebx
    movl %ebx, %r12d
.L4_47:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L4_48
    jmp .L4_94
.L4_94:
    movl %ebx, %r12d
    jmp .L4_49
.L4_48:
    movq -160(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
.L4_49:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L4_43
    jmp .L4_44
.L4_43:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_50:
    jmp .L4_45
.L4_44:
.L4_45:
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_51:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_unicode_GraphemeState_accept
    .type lb_unicode_GraphemeState_accept, @function
lb_unicode_GraphemeState_accept:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -48(%rbp)
    movl %esi, -64(%rbp)
    movl %edx, -80(%rbp)
    leaq -48(%rbp), %r10
    movq (%r10), %r13
    movq $3, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %eax
    movl %eax, -112(%rbp)
    movl -112(%rbp), %eax
    movl $5, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L5_1
    jmp .L5_26
.L5_26:
    movl %r12d, %r15d
    jmp .L5_2
.L5_1:
    movq $2, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r15d
.L5_2:
    movzbl %r15b, %r12d
    movq %r14, %r10
    movb %r12b, (%r10)
    leaq lb_unicode_19pictographic_ranges(%rip), %r12
    leaq -64(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movl %ebx, %edx
    call lb_unicode_11range_value@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L5_4
.L5_3:
    movq $2, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L5_5
.L5_4:
    movl -112(%rbp), %eax
    movl $4, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L5_7
.L5_6:
    movq $2, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L5_8
.L5_7:
.L5_8:
.L5_5:
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl -112(%rbp), %eax
    movl $6, %ecx
    cmpl %ecx, %eax
    jne .L5_10
.L5_9:
    movq %r14, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    jmp .L5_11
.L5_10:
    movl $0, %eax
    movl %eax, %r12d
.L5_11:
    movzbl %r12b, %r15d
    movq %r14, %r10
    movb %r15b, (%r10)
    leaq -96(%rbp), %r10
    movl %ebx, (%r10)
    leaq lb_unicode_12indic_ranges(%rip), %r15
    movq %r15, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movl %ebx, %edx
    call lb_unicode_11range_value@PLT
    movl %eax, %r15d
    movl %r15d, %r15d
    movzbl %r15b, %r15d
    movl %r15d, %r15d
    movzbl %r15b, %r15d
    movzbl %r15b, %r15d
    leaq -104(%rbp), %r10
    movl %r15d, (%r10)
    jmp .L5_25
.L5_24:
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_25:
    movzbl %r15b, %ebx
    movl $1, %ecx
    cmpl %ecx, %ebx
    jne .L5_13
.L5_12:
    movq $4, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L5_14
.L5_13:
    movl $2, %ecx
    cmpl %ecx, %ebx
    jne .L5_16
.L5_15:
    movq $4, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L5_19
.L5_18:
    movl $2, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L5_20
.L5_19:
.L5_20:
    jmp .L5_17
.L5_16:
    movl $3, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L5_22
.L5_21:
    movq $4, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L5_23
.L5_22:
.L5_23:
.L5_17:
.L5_14:
    movl -112(%rbp), %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_unicode_16grapheme_control
    .type lb_unicode_16grapheme_control, @function
lb_unicode_16grapheme_control:
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
    movl $3, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L6_6
    jmp .L6_1
.L6_6:
    movl %r12d, %r13d
    jmp .L6_2
.L6_1:
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L6_2:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L6_7
    jmp .L6_3
.L6_7:
    movl %r12d, %ebx
    jmp .L6_4
.L6_3:
    movl $2, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L6_4:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_5:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_unicode_graphemes_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "invalid UTF-8 text"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/unicode/graphemes.lucb:14:9"
.Ltext_3:
    .asciz "the grapheme iterator's input changed"
.Ltext_4:
    .asciz "src/std/unicode/graphemes.lucb:21:9"
.Ltext_5:
    .asciz "src/std/unicode/graphemes.lucb:24:9"
.Ltext_6:
    .asciz "src/std/unicode/graphemes.lucb:26:13"
.Ltext_7:
    .asciz "src/std/unicode/graphemes.lucb:32:13"
.Ltext_8:
    .asciz "src/std/unicode/graphemes.lucb:33:9"
.Ltext_9:
    .asciz "index out of bounds"
.Ltext_10:
    .asciz "src/std/unicode/graphemes.lucb:37:9"
.Ltext_11:
    .asciz "src/std/unicode/graphemes.lucb:96:9"
.Ltext_12:
    .asciz "src/std/unicode/graphemes.lucb:116:5"
.Ltext_13:
    .asciz "src/std/unicode/graphemes.lucb:119:5"
.Ltext_14:
    .asciz "src/std/unicode/graphemes.lucb:122:5"
.Ltext_15:
    .asciz "src/std/unicode/graphemes.lucb:134:13"
.Ltext_16:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
