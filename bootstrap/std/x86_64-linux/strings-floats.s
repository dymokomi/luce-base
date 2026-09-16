    .text

    .p2align 4
    .globl lb_strings_floats_0init
    .type lb_strings_floats_0init, @function
lb_strings_floats_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_strings_9parse_f64
    .type lb_strings_9parse_f64, @function
lb_strings_9parse_f64:
    pushq %rbp
    movq %rsp, %rbp
    subq $432, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -104(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_12float_syntax@PLT
    leaq -106(%rbp), %r10
    movw %ax, 0(%r10)
    leaq -106(%rbp), %r13
    movq $1, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_1
    jmp .L1_2
.L1_1:
    movq %r13, %r10
    movzbl (%r10), %r12d
    jmp .L1_3
.L1_2:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_14invalid_number(%rip), %r13
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
    movq $27, %rax
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
.L1_4:
.L1_3:
    movzbl %r12b, %r13d
    movzbl %r13b, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L1_6
.L1_5:
    leaq -136(%rbp), %r14
    movl $1, %ecx
    cmpl %ecx, %r13d
    jne .L1_9
.L1_8:
    movabsq $9218868437227405312, %rax
    movq %rax, %r12
    jmp .L1_10
.L1_9:
    movabsq $9221120237041090560, %rax
    movq %rax, %r12
.L1_10:
    movq %r14, %r10
    movq %r12, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $0, %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $45, %ecx
    cmpl %ecx, %r13d
    jne .L1_12
.L1_11:
    movabsq $-9223372036854775808, %rcx
    movq %r12, %rbx
    orq %rcx, %rbx
    movq %r14, %r10
    movq %rbx, (%r10)
    jmp .L1_13
.L1_12:
.L1_13:
    leaq -328(%rbp), %r10
    movq %r14, (%r10)
    leaq -336(%rbp), %rbx
    movq %rbx, %rdi
    movq %r14, %rsi
    movq $8, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L1_33
    jmp .L1_34
.L1_34:
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_62(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_33:
    movq %rbx, %r10
    movsd (%r10), %xmm12
    jmp .L1_36
.L1_35:
    leaq .Ltext_64(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_36:
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movsd %xmm12, (%r10)
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
.L1_14:
    jmp .L1_7
.L1_6:
.L1_7:
    leaq -144(%rbp), %r13
    leaq -184(%rbp), %rdi
    call lb_strings_NumericLocale_create@PLT
    leaq -184(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_16
    jmp .L1_15
.L1_16:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_17:
.L1_15:
    movq %r14, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -200(%rbp), %rax
    movq %rax, -416(%rbp)
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -248(%rbp), %rdi
    call lb_strings_copy@PLT
    leaq -248(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_19
    jmp .L1_18
.L1_19:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L1_40
    jmp .L1_38
.L1_40:
.L1_37:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %rbx, %rdi
    call freelocale@PLT
    jmp .L1_39
.L1_38:
.L1_39:
.L1_41:
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
.L1_20:
.L1_18:
    movq %r15, %r10
    movq -416(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -256(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movl $0, %edi
    call lb_c_9set_errno@PLT
    leaq -264(%rbp), %rax
    movq %rax, -424(%rbp)
    movq -416(%rbp), %r10
    movq (%r10), %r12
    movq %r13, %rdi
    call lb_strings_NumericLocale_handle@PLT
    movq %rax, %r14
    leaq -352(%rbp), %r10
    movq %r12, (%r10)
    leaq -368(%rbp), %r10
    movq %rbx, (%r10)
    leaq -384(%rbp), %r10
    movq %r14, (%r10)
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r14, %rdx
    call strtod_l@PLT
    movapd %xmm0, %xmm12
    jmp .L1_43
.L1_42:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_43:
    movq -424(%rbp), %r10
    movsd %xmm12, (%r10)
    call lb_c_errno@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movq (%r10), %r14
    movq -416(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %rcx
    movl %r12d, %r8d
    leaq -296(%rbp), %rdi
    call lb_strings_22check_float_conversion@PLT
    leaq -296(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L1_22
    jmp .L1_21
.L1_22:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -416(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r13, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L1_47
    jmp .L1_45
.L1_47:
.L1_44:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    call freelocale@PLT
    jmp .L1_46
.L1_45:
.L1_46:
.L1_48:
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
.L1_23:
.L1_21:
    movq -424(%rbp), %rax
    leaq -400(%rbp), %r10
    movq %rax, (%r10)
    leaq -408(%rbp), %rbx
    movq %rbx, %rdi
    movq -424(%rbp), %rsi
    movq $8, %rdx
    call memcpy@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L1_49
    jmp .L1_50
.L1_50:
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_62(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_49:
    movq %rbx, %r10
    movq (%r10), %r14
    jmp .L1_52
.L1_51:
    leaq .Ltext_64(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_52:
    movabsq $9223372036854775807, %rcx
    movq %r14, %rbx
    andq %rcx, %rbx
    movabsq $9218868437227405312, %rcx
    cmpq %rcx, %rbx
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L1_68
    jmp .L1_27
.L1_68:
    movl %r15d, %ebx
    jmp .L1_28
.L1_27:
    movl $34, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_29
    jmp .L1_69
.L1_69:
    movl %r14d, %ebx
    jmp .L1_30
.L1_29:
    movabsq $4607182418800017408, %rcx
    cmpq %rcx, %rbx
    setae %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L1_30:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L1_28:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L1_24
    jmp .L1_25
.L1_24:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_19number_out_of_range(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_5(%rip), %r14
    leaq -312(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $35, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -416(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r13, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L1_56
    jmp .L1_54
.L1_56:
.L1_53:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    call freelocale@PLT
    jmp .L1_55
.L1_54:
.L1_55:
.L1_57:
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
.L1_31:
    jmp .L1_26
.L1_25:
.L1_26:
    movq -424(%rbp), %r10
    movsd (%r10), %xmm12
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movsd %xmm12, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -416(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r13, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L1_61
    jmp .L1_59
.L1_61:
.L1_58:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    call freelocale@PLT
    jmp .L1_60
.L1_59:
.L1_60:
.L1_62:
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
.L1_32:
    leaq -200(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    leaq -144(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L1_66
    jmp .L1_64
.L1_66:
    movq %rbx, %r12
.L1_63:
    movq %rbx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %r13
    movq %r13, %rdi
    call freelocale@PLT
    jmp .L1_65
.L1_64:
.L1_65:
.L1_67:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_9parse_f32
    .type lb_strings_9parse_f32, @function
lb_strings_9parse_f32:
    pushq %rbp
    movq %rsp, %rbp
    subq $448, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -104(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_12float_syntax@PLT
    leaq -106(%rbp), %r10
    movw %ax, 0(%r10)
    leaq -106(%rbp), %r13
    movq $1, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_1
    jmp .L2_2
.L2_1:
    movq %r13, %r10
    movzbl (%r10), %r12d
    jmp .L2_3
.L2_2:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_14invalid_number(%rip), %r13
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
    movq $27, %rax
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
.L2_4:
.L2_3:
    movzbl %r12b, %r13d
    movzbl %r13b, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L2_6
.L2_5:
    leaq -132(%rbp), %r14
    movl $1, %ecx
    cmpl %ecx, %r13d
    jne .L2_9
.L2_8:
    movl $2139095040, %eax
    movl %eax, %r12d
    jmp .L2_10
.L2_9:
    movl $2143289344, %eax
    movl %eax, %r12d
.L2_10:
    movq %r14, %r10
    movl %r12d, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $0, %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $45, %ecx
    cmpl %ecx, %r13d
    jne .L2_12
.L2_11:
    movl $2147483648, %ecx
    movl %r12d, %ebx
    orl %ecx, %ebx
    movq %r14, %r10
    movl %ebx, (%r10)
    jmp .L2_13
.L2_12:
.L2_13:
    leaq -328(%rbp), %r10
    movq %r14, (%r10)
    leaq -332(%rbp), %rbx
    movq %rbx, %rdi
    movq %r14, %rsi
    movq $4, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L2_33
    jmp .L2_34
.L2_34:
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_62(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_33:
    movq %rbx, %r10
    movss (%r10), %xmm12
    leaq -344(%rbp), %r10
    movss %xmm12, (%r10)
    jmp .L2_36
.L2_35:
    leaq .Ltext_64(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_36:
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movss %xmm12, (%r10)
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
.L2_14:
    jmp .L2_7
.L2_6:
.L2_7:
    leaq -144(%rbp), %r13
    leaq -184(%rbp), %rdi
    call lb_strings_NumericLocale_create@PLT
    leaq -184(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_16
    jmp .L2_15
.L2_16:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_17:
.L2_15:
    movq %r14, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -200(%rbp), %rax
    movq %rax, -440(%rbp)
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -248(%rbp), %rdi
    call lb_strings_copy@PLT
    leaq -248(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_19
    jmp .L2_18
.L2_19:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L2_40
    jmp .L2_38
.L2_40:
.L2_37:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %rbx, %rdi
    call freelocale@PLT
    jmp .L2_39
.L2_38:
.L2_39:
.L2_41:
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
.L2_20:
.L2_18:
    movq %r15, %r10
    movq -440(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -256(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movl $0, %edi
    call lb_c_9set_errno@PLT
    leaq -260(%rbp), %rax
    movq %rax, -448(%rbp)
    movq -440(%rbp), %r10
    movq (%r10), %r12
    movq %r13, %rdi
    call lb_strings_NumericLocale_handle@PLT
    movq %rax, %r14
    leaq -360(%rbp), %r10
    movq %r12, (%r10)
    leaq -376(%rbp), %r10
    movq %rbx, (%r10)
    leaq -392(%rbp), %r10
    movq %r14, (%r10)
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r14, %rdx
    call strtof_l@PLT
    movaps %xmm0, %xmm12
    leaq -400(%rbp), %r10
    movss %xmm12, (%r10)
    jmp .L2_43
.L2_42:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_43:
    movq -448(%rbp), %r10
    movss %xmm12, (%r10)
    call lb_c_errno@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movq (%r10), %r14
    movq -440(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %rcx
    movl %r12d, %r8d
    leaq -296(%rbp), %rdi
    call lb_strings_22check_float_conversion@PLT
    leaq -296(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L2_22
    jmp .L2_21
.L2_22:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -440(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r13, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L2_47
    jmp .L2_45
.L2_47:
.L2_44:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    call freelocale@PLT
    jmp .L2_46
.L2_45:
.L2_46:
.L2_48:
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
.L2_23:
.L2_21:
    movq -448(%rbp), %rax
    leaq -416(%rbp), %r10
    movq %rax, (%r10)
    leaq -420(%rbp), %rbx
    movq %rbx, %rdi
    movq -448(%rbp), %rsi
    movq $4, %rdx
    call memcpy@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L2_49
    jmp .L2_50
.L2_50:
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_62(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_49:
    movq %rbx, %r10
    movl (%r10), %r14d
    leaq -432(%rbp), %r10
    movl %r14d, (%r10)
    jmp .L2_52
.L2_51:
    leaq .Ltext_64(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_52:
    movl $2147483647, %ecx
    movl %r14d, %ebx
    andl %ecx, %ebx
    movl $2139095040, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L2_68
    jmp .L2_27
.L2_68:
    movl %r15d, %ebx
    jmp .L2_28
.L2_27:
    movl $34, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L2_29
    jmp .L2_69
.L2_69:
    movl %r14d, %ebx
    jmp .L2_30
.L2_29:
    movl $1065353216, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L2_30:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L2_28:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L2_24
    jmp .L2_25
.L2_24:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_19number_out_of_range(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_8(%rip), %r14
    leaq -312(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $35, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -440(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r13, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L2_56
    jmp .L2_54
.L2_56:
.L2_53:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    call freelocale@PLT
    jmp .L2_55
.L2_54:
.L2_55:
.L2_57:
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
.L2_31:
    jmp .L2_26
.L2_25:
.L2_26:
    movq -448(%rbp), %r10
    movss (%r10), %xmm12
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movss %xmm12, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -440(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r13, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L2_61
    jmp .L2_59
.L2_61:
.L2_58:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    call freelocale@PLT
    jmp .L2_60
.L2_59:
.L2_60:
.L2_62:
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
    leaq -200(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    leaq -144(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L2_66
    jmp .L2_64
.L2_66:
    movq %rbx, %r12
.L2_63:
    movq %rbx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %r13
    movq %r13, %rdi
    call freelocale@PLT
    jmp .L2_65
.L2_64:
.L2_65:
.L2_67:
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_10format_f64
    .type lb_strings_10format_f64, @function
lb_strings_10format_f64:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movsd %xmm0, -104(%rbp)
    leaq -120(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    leaq -120(%rbp), %rbx
    movapd %xmm12, %xmm0
    movl $17, %esi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -168(%rbp), %rdi
    call lb_strings_12format_float@PLT
    leaq -168(%rbp), %r12
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
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_10format_f32
    .type lb_strings_10format_f32, @function
lb_strings_10format_f32:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movss %xmm0, -104(%rbp)
    leaq -120(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    cvtss2sd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    leaq -120(%rbp), %rbx
    movapd %xmm12, %xmm0
    movl $9, %esi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -168(%rbp), %rdi
    call lb_strings_12format_float@PLT
    leaq -168(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_2
    jmp .L4_1
.L4_2:
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
.L4_3:
.L4_1:
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
.L4_4:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_NumericLocale_create
    .type lb_strings_NumericLocale_create, @function
lb_strings_NumericLocale_create:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq .Ltext_12(%rip), %rbx
    movl $2, %edi
    movq %rbx, %rsi
    movq $0, %rdx
    call newlocale@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L5_1
    jmp .L5_2
.L5_1:
    jmp .L5_3
.L5_2:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl $12, %ecx
    cmpl %ecx, %r12d
    jne .L5_5
.L5_4:
    leaq lb_memory_exhausted(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    jmp .L5_6
.L5_5:
    leaq lb_strings_17conversion_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
.L5_6:
    movq %r13, %r10
    movl %r12d, (%r10)
    leaq .Ltext_13(%rip), %r14
    leaq -104(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $41, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
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
.L5_3:
    leaq -112(%rbp), %r12
    movq %r12, %r11
    movq $0, 0(%r11)
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq -88(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
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
.L5_8:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_NumericLocale_handle
    .type lb_strings_NumericLocale_handle, @function
lb_strings_NumericLocale_handle:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -24(%rbp)
    leaq -24(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L6_1
    jmp .L6_2
.L6_1:
    jmp .L6_3
.L6_2:
    leaq .Ltext_15(%rip), %rbx
    leaq -40(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $28, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_16(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_3:
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_4:
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_12format_float
    .type lb_strings_12format_float, @function
lb_strings_12format_float:
    pushq %rbp
    movq %rsp, %rbp
    subq $560, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movsd %xmm0, -112(%rbp)
    movl %esi, -128(%rbp)
    leaq -144(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -112(%rbp), %rbx
    leaq -480(%rbp), %r10
    movq %rbx, (%r10)
    leaq -488(%rbp), %r12
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $8, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L7_39
    jmp .L7_40
.L7_40:
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_62(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_39:
    movq %r12, %r10
    movq (%r10), %r13
.L7_42:
    movabsq $9223372036854775807, %rcx
    movq %r13, %r12
    andq %rcx, %r12
    movabsq $9218868437227405312, %rcx
    cmpq %rcx, %r12
    jb .L7_2
.L7_1:
    leaq -160(%rbp), %r14
    movabsq $9218868437227405312, %rcx
    cmpq %rcx, %r12
    jbe .L7_5
.L7_4:
    leaq .Ltext_17(%rip), %rbx
    leaq -192(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $3, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -176(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $3, %rax
    movq %rax, %rbx
    jmp .L7_6
.L7_5:
.L7_11:
    movq $63, %rcx
    movq %r13, %rbx
    shrq %cl, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L7_8
.L7_7:
    leaq .Ltext_20(%rip), %rbx
    leaq -224(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $4, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -208(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $4, %rax
    movq %rax, %rbx
    jmp .L7_9
.L7_8:
    leaq .Ltext_21(%rip), %rbx
    leaq -240(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $3, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -208(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $3, %rax
    movq %rax, %rbx
.L7_9:
    leaq -208(%rbp), %r12
    leaq -176(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L7_6:
    leaq -176(%rbp), %r12
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -144(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r15
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -528(%rbp)
    cmpq %rbx, %r15
    jae .L7_13
.L7_12:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_full(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_22(%rip), %r13
    leaq -256(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $62, %rax
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
.L7_13:
.L7_14:
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r14, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %rbx, %r8
    call lb_memory_copy_0g1_u8@PLT
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -552(%rbp)
    movq %r13, %r10
    movq (%r10), %r15
    movq -528(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -560(%rbp)
    movq $1, %rcx
    addq %rcx, %r15
    movq $0, %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -560(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -560(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L7_16
.L7_17:
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_16:
    leaq -272(%rbp), %rbx
    movq -552(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq -560(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -288(%rbp), %rbx
    movq -552(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -560(%rbp), %rax
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
.L7_2:
.L7_3:
    leaq -296(%rbp), %rax
    movq %rax, -544(%rbp)
    leaq -336(%rbp), %rdi
    call lb_strings_NumericLocale_create@PLT
    leaq -336(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L7_20
    jmp .L7_19
.L7_20:
    movq $8, %rcx
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
.L7_19:
    movq %r14, %r10
    movq -544(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -368(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq -544(%rbp), %rdi
    call lb_strings_NumericLocale_handle@PLT
    movq %rax, %r15
    movq %r15, %rdi
    call uselocale@PLT
    movq %rax, %r15
    testq %r15, %r15
    jne .L7_22
    jmp .L7_23
.L7_22:
    jmp .L7_24
.L7_23:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_17conversion_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_25(%rip), %r14
    leaq -384(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $47, %rax
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
    movq -544(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L7_46
    jmp .L7_44
.L7_46:
.L7_43:
    movq $0, %rax
    movq -544(%rbp), %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    call freelocale@PLT
    jmp .L7_45
.L7_44:
.L7_45:
.L7_47:
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
.L7_24:
    leaq .Ltext_27(%rip), %r14
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    movq %r12, %rdi
    movq $32, %rsi
    movq %r14, %rdx
    movl %r13d, %ecx
    movl $1, %eax
    call snprintf@PLT
    movl %eax, %r13d
    leaq -504(%rbp), %r10
    movq %r15, (%r10)
    movq %r15, %rdi
    call uselocale@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L7_48
    jmp .L7_49
.L7_48:
    jmp .L7_50
.L7_49:
    leaq .Ltext_30(%rip), %rbx
    leaq -520(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $43, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_31(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_50:
.L7_51:
    movl $0, %ecx
    cmpl %ecx, %r13d
    setl %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L7_72
    jmp .L7_29
.L7_72:
    movl %ebx, %r14d
    jmp .L7_30
.L7_29:
    movslq %r13d, %rbx
    movq $32, %rcx
    cmpq %rcx, %rbx
    setae %al
    movzbl %al, %r14d
.L7_30:
    movzbl %r14b, %ebx
    testl %ebx, %ebx
    jne .L7_26
    jmp .L7_27
.L7_26:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_17conversion_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_28(%rip), %r13
    leaq -400(%rbp), %r14
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
    movq -544(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L7_55
    jmp .L7_53
.L7_55:
.L7_52:
    movq $0, %rax
    movq -544(%rbp), %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    call freelocale@PLT
    jmp .L7_54
.L7_53:
.L7_54:
.L7_56:
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
.L7_27:
.L7_28:
    leaq -144(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -536(%rbp)
    movq -536(%rbp), %r10
    movq (%r10), %r15
    movslq %r13d, %r14
    cmpq %r14, %r15
    jae .L7_33
.L7_32:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_full(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_22(%rip), %r13
    leaq -416(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $62, %rax
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
    movq -544(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L7_60
    jmp .L7_58
.L7_60:
.L7_57:
    movq $0, %rax
    movq -544(%rbp), %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    call freelocale@PLT
    jmp .L7_59
.L7_58:
.L7_59:
.L7_61:
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
.L7_33:
.L7_34:
    leaq -432(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $32, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r13, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r14, %r8
    call lb_memory_copy_0g1_u8@PLT
    movq %rbx, %r10
    movq (%r10), %r15
    movq -536(%rbp), %r10
    movq (%r10), %r13
    movq $1, %rcx
    addq %rcx, %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r13, %r14
    jb 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r14, %rax
    jbe .L7_36
.L7_37:
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_36:
    leaq -448(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    leaq -464(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
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
    movq -544(%rbp), %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L7_65
    jmp .L7_63
.L7_65:
.L7_62:
    movq $0, %rax
    movq -544(%rbp), %r10
    movq %rax, (%r10)
    movq %rbx, %rdi
    call freelocale@PLT
    jmp .L7_64
.L7_63:
.L7_64:
.L7_66:
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

    .p2align 4
    .globl lb_strings_22check_float_conversion
    .type lb_strings_22check_float_conversion, @function
lb_strings_22check_float_conversion:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    leaq -80(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movq %rcx, -96(%rbp)
    movl %r8d, -112(%rbp)
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $12, %ecx
    cmpl %ecx, %ebx
    jne .L8_2
.L8_1:
    leaq -64(%rbp), %rbx
    leaq lb_memory_exhausted(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_32(%rip), %r12
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $43, %rax
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
.L8_4:
    jmp .L8_3
.L8_2:
.L8_3:
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L8_8
    jmp .L8_19
.L8_19:
    movl %r12d, %ebx
    jmp .L8_9
.L8_8:
    movl $34, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L8_9:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L8_5
    jmp .L8_6
.L8_5:
    leaq -64(%rbp), %rbx
    leaq lb_strings_17conversion_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_33(%rip), %r12
    leaq -144(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $32, %rax
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
.L8_10:
    jmp .L8_7
.L8_6:
.L8_7:
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L8_11
    jmp .L8_12
.L8_11:
    jmp .L8_13
.L8_12:
    leaq -64(%rbp), %rbx
    leaq lb_strings_14invalid_number(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_34(%rip), %r12
    leaq -160(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $55, %rax
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
.L8_14:
.L8_13:
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_57(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    cmpq %rbx, %r12
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L8_16
.L8_15:
    leaq -64(%rbp), %rbx
    leaq lb_strings_14invalid_number(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_36(%rip), %r12
    leaq -176(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $51, %rax
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
.L8_18:
    jmp .L8_17
.L8_16:
.L8_17:
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
    .globl lb_strings_12float_syntax
    .type lb_strings_12float_syntax, @function
lb_strings_12float_syntax:
    pushq %rbp
    movq %rsp, %rbp
    subq $304, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -64(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -64(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L9_2
.L9_1:
    leaq -66(%rbp), %rbx
    movq %rbx, %r11
    movw $0, 0(%r11)
    leaq -42(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L9_4:
    jmp .L9_3
.L9_2:
.L9_3:
    movq %rbx, %r10
    movq (%r10), %r13
    movq $0, %rax
    movq -240(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r13, %r10
    movzbl (%r10), %r14d
    movl $43, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L9_84
    jmp .L9_8
.L9_84:
    movl %r14d, %ebx
    jmp .L9_9
.L9_8:
    movq %r13, %r10
    movzbl (%r10), %ebx
    movl $45, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L9_9:
    movzbl %bl, %r14d
    testl %r14d, %r14d
    jne .L9_5
    jmp .L9_6
.L9_5:
    movq $1, %rax
    movq %rax, %rbx
    jmp .L9_7
.L9_6:
    movq $0, %rax
    movq %rax, %rbx
.L9_7:
    movq -240(%rbp), %rax
    cmpq %rbx, %rax
    jne .L9_11
.L9_10:
    leaq -68(%rbp), %rbx
    movq %rbx, %r11
    movw $0, 0(%r11)
    leaq -42(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L9_13:
    jmp .L9_12
.L9_11:
.L9_12:
    leaq -88(%rbp), %rax
    movq %rax, -264(%rbp)
    movq -240(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -240(%rbp), %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -240(%rbp), %rcx
    cmpq %rcx, %rbx
    jbe .L9_14
.L9_15:
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_14:
    movq %r13, %r14
    addq %rbx, %r14
    movq -240(%rbp), %rax
    subq %rbx, %rax
    movq %rax, -248(%rbp)
    leaq -104(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq -248(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq -120(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq -248(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r15, %r10
    movq -264(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_21(%rip), %r14
    leaq -136(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $3, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq -264(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r15, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_strings_10ascii_word@PLT
    movl %eax, %r14d
    testl %r14d, %r14d
    jne .L9_85
    jmp .L9_19
.L9_85:
    movl %r14d, %r15d
    jmp .L9_20
.L9_19:
    leaq .Ltext_39(%rip), %r14
    leaq -152(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $8, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq -264(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r15, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_strings_10ascii_word@PLT
    movl %eax, %r15d
.L9_20:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L9_16
    jmp .L9_17
.L9_16:
    leaq -154(%rbp), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -42(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L9_21:
    jmp .L9_18
.L9_17:
.L9_18:
    leaq .Ltext_17(%rip), %r14
    leaq -176(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $3, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq -264(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r15, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_strings_10ascii_word@PLT
    movl %eax, %r14d
    testl %r14d, %r14d
    jne .L9_22
    jmp .L9_23
.L9_22:
    leaq -178(%rbp), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -42(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L9_25:
    jmp .L9_24
.L9_23:
.L9_24:
    leaq -208(%rbp), %r14
    movq %rbx, %r15
    movq $0, %rax
    movq %rax, -272(%rbp)
.L9_26:
    movq -240(%rbp), %rcx
    cmpq %rcx, %r15
    setb %al
    movzbl %al, %eax
    movl %eax, -256(%rbp)
    movl -256(%rbp), %eax
    testl %eax, %eax
    jne .L9_29
    jmp .L9_86
.L9_86:
    movl -256(%rbp), %eax
    movl %eax, %r12d
    jmp .L9_30
.L9_29:
    movq %r13, %r12
    addq %r15, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -208(%rbp), %r10
    movl %r12d, (%r10)
    movq %r14, %r10
    movzbl (%r10), %r12d
    movl $48, %ecx
    cmpl %ecx, %r12d
    setae %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L9_72
    jmp .L9_87
.L9_87:
    movl %ebx, %r12d
    jmp .L9_73
.L9_72:
    movl $57, %ecx
    cmpl %ecx, %r12d
    setbe %al
    movzbl %al, %ebx
    movl %ebx, %r12d
.L9_73:
    movzbl %r12b, %ebx
    movzbl %bl, %ebx
    leaq -216(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L9_75
.L9_74:
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_75:
    movl %ebx, %r12d
.L9_30:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L9_27
    jmp .L9_28
.L9_27:
    movq -272(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_57(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_57(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %r15
    movq %rbx, %rax
    movq %rax, -272(%rbp)
    jmp .L9_26
.L9_28:
    movl -256(%rbp), %eax
    testl %eax, %eax
    jne .L9_34
    jmp .L9_88
.L9_88:
    movl -256(%rbp), %eax
    movl %eax, %ebx
    jmp .L9_35
.L9_34:
    movq %r13, %rbx
    addq %r15, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $46, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L9_35:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L9_31
    jmp .L9_32
.L9_31:
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_57(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    leaq -208(%rbp), %r12
    movq -272(%rbp), %rax
    movq %rax, -280(%rbp)
.L9_36:
    movq -240(%rbp), %rcx
    cmpq %rcx, %rbx
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L9_39
    jmp .L9_89
.L9_89:
    movl %r15d, %r14d
    jmp .L9_40
.L9_39:
    movq %r13, %r14
    addq %rbx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    leaq -208(%rbp), %r10
    movl %r14d, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r14d
    movl $48, %ecx
    cmpl %ecx, %r14d
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L9_76
    jmp .L9_90
.L9_90:
    movl %r15d, %r14d
    jmp .L9_77
.L9_76:
    movl $57, %ecx
    cmpl %ecx, %r14d
    setbe %al
    movzbl %al, %r15d
    movl %r15d, %r14d
.L9_77:
    movzbl %r14b, %r15d
    movzbl %r15b, %r15d
    leaq -224(%rbp), %r10
    movl %r15d, (%r10)
    jmp .L9_79
.L9_78:
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_79:
    movl %r15d, %r14d
.L9_40:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L9_37
    jmp .L9_38
.L9_37:
    movq -280(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_57(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_47(%rip), %rdi
    leaq .Ltext_57(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %r15, %rbx
    movq %r14, %rax
    movq %rax, -280(%rbp)
    jmp .L9_36
.L9_38:
    movq %rbx, %rax
    movq %rax, -288(%rbp)
    movq -280(%rbp), %rax
    movq %rax, %r14
    jmp .L9_33
.L9_32:
    movq %r15, %rax
    movq %rax, -288(%rbp)
    movq -272(%rbp), %rax
    movq %rax, %r14
.L9_33:
    movq $0, %rcx
    cmpq %rcx, %r14
    jne .L9_42
.L9_41:
    leaq -180(%rbp), %rbx
    movq %rbx, %r11
    movw $0, 0(%r11)
    leaq -42(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L9_44:
    jmp .L9_43
.L9_42:
.L9_43:
    movq -288(%rbp), %rax
    movq -240(%rbp), %rcx
    cmpq %rcx, %rax
    setb %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L9_48
    jmp .L9_91
.L9_91:
    movl %ebx, %r14d
    jmp .L9_49
.L9_48:
    movq -288(%rbp), %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %r14d
    movl $101, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L9_92
    jmp .L9_50
.L9_92:
    movl %r14d, %ebx
    jmp .L9_51
.L9_50:
    movq %rbx, %r10
    movzbl (%r10), %r14d
    movl $69, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %ebx
.L9_51:
    movzbl %bl, %r14d
.L9_49:
    movzbl %r14b, %ebx
    testl %ebx, %ebx
    jne .L9_45
    jmp .L9_46
.L9_45:
    movq -288(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_57(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -240(%rbp), %rcx
    cmpq %rcx, %rbx
    setb %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L9_55
    jmp .L9_93
.L9_93:
    movl %r14d, %r12d
    jmp .L9_56
.L9_55:
    movq %r13, %r12
    addq %rbx, %r12
    movq %r12, %r10
    movzbl (%r10), %r14d
    movl $43, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L9_94
    jmp .L9_57
.L9_94:
    movl %r14d, %r12d
    jmp .L9_58
.L9_57:
    movq %r12, %r10
    movzbl (%r10), %r14d
    movl $45, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r12d
.L9_58:
    movzbl %r12b, %r14d
    movl %r14d, %r12d
.L9_56:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L9_52
    jmp .L9_53
.L9_52:
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_57(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %rax
    movq %rax, -296(%rbp)
    jmp .L9_54
.L9_53:
    movq %rbx, %rax
    movq %rax, -296(%rbp)
.L9_54:
    leaq -208(%rbp), %rbx
    movq -296(%rbp), %rax
    movq %rax, %r14
.L9_59:
    movq -240(%rbp), %rcx
    cmpq %rcx, %r14
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L9_62
    jmp .L9_95
.L9_95:
    movl %r15d, %r12d
    jmp .L9_63
.L9_62:
    movq %r13, %r12
    addq %r14, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -208(%rbp), %r10
    movl %r12d, (%r10)
    movq %rbx, %r10
    movzbl (%r10), %r12d
    movl $48, %ecx
    cmpl %ecx, %r12d
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L9_80
    jmp .L9_96
.L9_96:
    movl %r15d, %r12d
    jmp .L9_81
.L9_80:
    movl $57, %ecx
    cmpl %ecx, %r12d
    setbe %al
    movzbl %al, %r15d
    movl %r15d, %r12d
.L9_81:
    movzbl %r12b, %r15d
    movzbl %r15b, %r15d
    leaq -232(%rbp), %r10
    movl %r15d, (%r10)
    jmp .L9_83
.L9_82:
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_83:
    movl %r15d, %r12d
.L9_63:
    movzbl %r12b, %r15d
    testl %r15d, %r15d
    jne .L9_60
    jmp .L9_61
.L9_60:
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_57(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %r14
    jmp .L9_59
.L9_61:
    movq -296(%rbp), %rax
    cmpq %r14, %rax
    jne .L9_65
.L9_64:
    leaq -182(%rbp), %rbx
    movq %rbx, %r11
    movw $0, 0(%r11)
    leaq -42(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L9_67:
    jmp .L9_66
.L9_65:
.L9_66:
    movq %r14, %rbx
    jmp .L9_47
.L9_46:
    movq -288(%rbp), %rax
    movq %rax, %rbx
.L9_47:
    movq -240(%rbp), %rax
    cmpq %rbx, %rax
    jne .L9_69
.L9_68:
    leaq -186(%rbp), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -184(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    jmp .L9_70
.L9_69:
    leaq -188(%rbp), %rbx
    movq %rbx, %r11
    movw $0, 0(%r11)
    leaq -184(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
.L9_70:
    leaq -184(%rbp), %rbx
    leaq -42(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L9_71:
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_10ascii_word
    .type lb_strings_10ascii_word, @function
lb_strings_10ascii_word:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
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
    leaq -56(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -80(%rbp)
    leaq -72(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -88(%rbp)
    movq -80(%rbp), %rax
    movq -88(%rbp), %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L10_2
.L10_1:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_4:
    jmp .L10_3
.L10_2:
.L10_3:
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -96(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L10_5:
    movq -80(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L10_7
.L10_6:
    movq %r15, %rbx
    addq %r14, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movzbl %bl, %ebx
    movl $65, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L10_11
    jmp .L10_20
.L10_20:
    movl %r13d, %r12d
    jmp .L10_12
.L10_11:
    movl $90, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r12d
.L10_12:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L10_8
    jmp .L10_9
.L10_8:
    movl $32, %ecx
    movl %ebx, %r13d
    addl %ecx, %r13d
    movzbl %r13b, %r12d
    cmpl %r13d, %r12d
    je .L10_13
.L10_14:
    leaq .Ltext_58(%rip), %rdi
    leaq .Ltext_57(%rip), %rsi
    call lb_core_7trap_at@PLT
.L10_13:
    movl %r13d, %ebx
    jmp .L10_10
.L10_9:
.L10_10:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movq -88(%rbp), %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -96(%rbp), %rax
    movq %rax, %r13
    addq %r14, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L10_16
.L10_15:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_18:
    jmp .L10_17
.L10_16:
.L10_17:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r14
    jmp .L10_5
.L10_7:
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_19:
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .weak lb_memory_read_0g1_f64
    .type lb_memory_read_0g1_f64, @function
lb_memory_read_0g1_f64:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -40(%rbp), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $8, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L11_1
    jmp .L11_2
.L11_2:
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_62(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_1:
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_3:
    leaq .Ltext_64(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .weak lb_memory_read_0g1_u64
    .type lb_memory_read_0g1_u64, @function
lb_memory_read_0g1_u64:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -40(%rbp), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $8, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L12_1
    jmp .L12_2
.L12_2:
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_62(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_1:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_3:
    leaq .Ltext_64(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .weak lb_memory_read_0g1_f32
    .type lb_memory_read_0g1_f32, @function
lb_memory_read_0g1_f32:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -36(%rbp), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $4, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L13_1
    jmp .L13_2
.L13_2:
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_62(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_1:
    movq %rbx, %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L13_3:
    leaq .Ltext_64(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .weak lb_memory_read_0g1_u32
    .type lb_memory_read_0g1_u32, @function
lb_memory_read_0g1_u32:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -36(%rbp), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $4, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L14_1
    jmp .L14_2
.L14_2:
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_62(%rip), %rsi
    call lb_core_7trap_at@PLT
.L14_1:
    movq %rbx, %r10
    movl (%r10), %r12d
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L14_3:
    leaq .Ltext_64(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .weak lb_memory_copy_0g1_u8
    .type lb_memory_copy_0g1_u8, @function
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
    jne .L15_11
    jmp .L15_4
.L15_11:
    movl %r13d, %r14d
    jmp .L15_5
.L15_4:
    leaq -64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L15_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L15_1
    jmp .L15_2
.L15_1:
    leaq .Ltext_24(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_65(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L15_3
.L15_2:
.L15_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L15_7
.L15_6:
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
    jne .L15_9
    jmp .L15_10
.L15_10:
    leaq .Ltext_66(%rip), %rdi
    leaq .Ltext_62(%rip), %rsi
    call lb_core_7trap_at@PLT
.L15_9:
    jmp .L15_8
.L15_7:
.L15_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_strings_floats_0init
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
    .asciz "src/std/strings/floats.lucb:20:5"
.Ltext_2:
    .asciz "src/std/strings/floats.lucb:25:5"
.Ltext_3:
    .asciz "invalid floating-point text"
.Ltext_4:
    .asciz "src/std/strings/floats.lucb:38:9"
.Ltext_5:
    .asciz "the decimal value exceeds f64 range"
.Ltext_6:
    .asciz "src/std/strings/floats.lucb:53:5"
.Ltext_7:
    .asciz "src/std/strings/floats.lucb:61:9"
.Ltext_8:
    .asciz "the decimal value exceeds f32 range"
.Ltext_9:
    .asciz "src/std/strings/floats.lucb:76:5"
.Ltext_10:
    .asciz "src/std/strings/floats.lucb:85:5"
.Ltext_11:
    .asciz "src/std/strings/floats.lucb:90:5"
.Ltext_12:
    .asciz "C"
.Ltext_13:
    .asciz "the C numeric locale could not be created"
.Ltext_14:
    .asciz "src/std/strings/floats.lucb:100:9"
.Ltext_15:
    .asciz "the numeric locale is closed"
.Ltext_16:
    .asciz "src/std/strings/floats.lucb:103:9"
.Ltext_17:
    .asciz "nan"
.Ltext_18:
    .asciz "shift count out of range"
.Ltext_19:
    .asciz "src/std/strings/floats.lucb:119:9"
.Ltext_20:
    .asciz "-inf"
.Ltext_21:
    .asciz "inf"
.Ltext_22:
    .asciz "the destination cannot hold the formatted floating-point value"
.Ltext_23:
    .asciz "src/std/strings/floats.lucb:123:9"
.Ltext_24:
    .asciz "index out of bounds"
.Ltext_25:
    .asciz "the thread numeric locale could not be selected"
.Ltext_26:
    .asciz "src/std/strings/floats.lucb:139:9"
.Ltext_27:
    .asciz "%.*g"
.Ltext_28:
    .asciz "floating-point formatting failed"
.Ltext_29:
    .asciz "src/std/strings/floats.lucb:145:5"
.Ltext_30:
    .asciz "a valid thread locale could not be restored"
.Ltext_31:
    .asciz "src/std/strings/floats.lucb:149:5"
.Ltext_32:
    .asciz "floating-point conversion ran out of memory"
.Ltext_33:
    .asciz "floating-point conversion failed"
.Ltext_34:
    .asciz "floating-point conversion did not return an end pointer"
.Ltext_35:
    .asciz "src/std/strings/floats.lucb:158:5"
.Ltext_36:
    .asciz "floating-point conversion did not consume the input"
.Ltext_37:
    .asciz "src/std/strings/floats.lucb:166:5"
.Ltext_38:
    .asciz "src/std/strings/floats.lucb:170:5"
.Ltext_39:
    .asciz "infinity"
.Ltext_40:
    .asciz "src/std/strings/floats.lucb:176:5"
.Ltext_41:
    .asciz "src/std/strings/floats.lucb:177:9"
.Ltext_42:
    .asciz "src/std/strings/floats.lucb:178:9"
.Ltext_43:
    .asciz "src/std/strings/floats.lucb:179:5"
.Ltext_44:
    .asciz "src/std/strings/floats.lucb:180:9"
.Ltext_45:
    .asciz "src/std/strings/floats.lucb:181:9"
.Ltext_46:
    .asciz "src/std/strings/floats.lucb:182:13"
.Ltext_47:
    .asciz "src/std/strings/floats.lucb:183:13"
.Ltext_48:
    .asciz "src/std/strings/floats.lucb:186:5"
.Ltext_49:
    .asciz "src/std/strings/floats.lucb:187:9"
.Ltext_50:
    .asciz "src/std/strings/floats.lucb:188:9"
.Ltext_51:
    .asciz "src/std/strings/floats.lucb:189:13"
.Ltext_52:
    .asciz "src/std/strings/floats.lucb:191:9"
.Ltext_53:
    .asciz "src/std/strings/floats.lucb:192:13"
.Ltext_54:
    .asciz "src/std/strings/floats.lucb:195:5"
.Ltext_55:
    .asciz "src/std/strings/floats.lucb:198:5"
.Ltext_56:
    .asciz "src/std/strings/floats.lucb:205:9"
.Ltext_57:
    .asciz "integer overflow"
.Ltext_58:
    .asciz "src/std/strings/floats.lucb:206:9"
.Ltext_59:
    .asciz "src/std/strings/floats.lucb:207:9"
.Ltext_60:
    .asciz "src/std/strings/floats.lucb:209:9"
.Ltext_61:
    .asciz "src/std/strings/floats.lucb:210:5"
.Ltext_62:
    .asciz "null_foreign"
.Ltext_63:
    .asciz "src/std/memory.lucb:344:5"
.Ltext_64:
    .asciz "src/std/memory.lucb:345:5"
.Ltext_65:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_66:
    .asciz "src/std/memory.lucb:330:9"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
