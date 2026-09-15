    .text

    .p2align 4
    .globl lb_json_0init
    .type lb_json_0init, @function
lb_json_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    leaq lb_json_invalid(%rip), %rbx
    movl $208273518, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_json_14limit_exceeded(%rip), %rbx
    movl $208273519, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq -64(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq .Ltext_0(%rip), %r12
    leaq -80(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $10, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq lb_json_Value_close@GOTPCREL(%rip), %r12
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $33, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq lb_json_10value_type(%rip), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_json_Bytes_reserve
    .type lb_json_Bytes_reserve, @function
lb_json_Bytes_reserve:
    pushq %rbp
    movq %rsp, %rbp
    subq $304, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    movq %rdx, -104(%rbp)
    movq %rcx, -120(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -272(%rbp)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -120(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jbe .L1_2
.L1_1:
    leaq -80(%rbp), %rbx
    leaq lb_json_14limit_exceeded(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_1(%rip), %r12
    leaq -136(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $38, %rax
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
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_2:
.L1_3:
    movq -272(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -248(%rbp)
    movq -248(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %rbx
    ja .L1_6
.L1_5:
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
.L1_6:
.L1_7:
    movq $0, %rcx
    cmpq %rcx, %r15
    jne .L1_10
.L1_9:
    movq $64, %rax
    movq %rax, %r15
    jmp .L1_11
.L1_10:
.L1_11:
    movq %r15, %r13
.L1_12:
    cmpq %rbx, %r13
    jae .L1_14
.L1_13:
.L1_19:
    movq $2, %rcx
    movq %r12, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %r15
    cmpq %r15, %r13
    jbe .L1_16
.L1_15:
    movq %r12, %r13
    jmp .L1_17
.L1_16:
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_68(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %r15, %r13
.L1_17:
    jmp .L1_12
.L1_14:
    cmpq %r12, %r13
    jbe .L1_21
.L1_20:
    movq %r12, %rbx
    jmp .L1_22
.L1_21:
    movq %r13, %rbx
.L1_22:
    leaq -152(%rbp), %rax
    movq %rax, -280(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -288(%rbp)
    leaq -200(%rbp), %rax
    movq %rax, -296(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %rbx
    jbe .L1_24
.L1_23:
    movq -296(%rbp), %rax
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
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -296(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_25
.L1_24:
    movq -288(%rbp), %r10
    movq (%r10), %r12
    movq -288(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L1_26
    jmp .L1_27
.L1_27:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_26:
    movq %r13, %r10
    movq (%r10), %r15
    movq %r12, %rsi
    movq %rbx, %rdx
    movq $1, %rcx
    leaq -224(%rbp), %rdi
    movq %r15, %r11
    call *%r11
    leaq -224(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movq $0, %rcx
    cmpq %rcx, %rbx
    setne %al
    movzbl %al, %eax
    movl %eax, -256(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl -256(%rbp), %eax
    andl %r15d, %eax
    movl %eax, -264(%rbp)
    movl -264(%rbp), %eax
    testl %eax, %eax
    jne .L1_28
    jmp .L1_29
.L1_28:
    movq -296(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_7(%rip), %r12
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
    movq -296(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_25
.L1_29:
    movq %r14, %r10
    movq (%r10), %r12
    movq -296(%rbp), %r10
    movq %r12, (%r10)
    movq -296(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq -296(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L1_25:
    movq -296(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_31
    jmp .L1_30
.L1_31:
    movq -296(%rbp), %rax
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
.L1_30:
    movq -296(%rbp), %r10
    movq -280(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -272(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq -280(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -272(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %rbx, %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -248(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L1_34
.L1_33:
    leaq -240(%rbp), %r12
    movq -272(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq -288(%rbp), %r10
    movq (%r10), %r13
    movq -288(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L1_37
    jmp .L1_36
.L1_37:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r13, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L1_36:
    jmp .L1_35
.L1_34:
.L1_35:
    movq -280(%rbp), %r10
    movq -272(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
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
    .globl lb_json_Bytes_append
    .type lb_json_Bytes_append, @function
lb_json_Bytes_append:
    pushq %rbp
    movq %rsp, %rbp
    subq $272, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    leaq -104(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movq %r8, -120(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %r12
    movq $16, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -216(%rbp)
    movq -216(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -224(%rbp)
    leaq -104(%rbp), %rax
    movq %rax, -232(%rbp)
    movq -232(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %r10
    movq (%r10), %r15
    leaq -128(%rbp), %r13
    movq -224(%rbp), %rdi
    movq %r15, %rsi
    movl $64, %edx
    movq %r13, %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, -248(%rbp)
    leaq -144(%rbp), %r15
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -256(%rbp)
    movq -256(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movl -248(%rbp), %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %r15, %r10
    movzbl (%r10), %eax
    movl %eax, -264(%rbp)
    movl -264(%rbp), %eax
    testl %eax, %eax
    jne .L2_1
    jmp .L2_2
.L2_1:
    jmp .L2_3
.L2_2:
    leaq -80(%rbp), %rbx
    leaq lb_json_14limit_exceeded(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_9(%rip), %r12
    leaq -160(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $18, %rax
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
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_4:
.L2_3:
    leaq -120(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r12, %rsi
    movq -256(%rbp), %rdx
    movq %r15, %rcx
    leaq -192(%rbp), %rdi
    call lb_json_Bytes_reserve@PLT
    leaq -192(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L2_6
    jmp .L2_5
.L2_6:
    leaq -80(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_7:
.L2_5:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -272(%rbp)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r13
    movq -216(%rbp), %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    cmpq %r14, %r15
    jb 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r13, %r15
    jbe .L2_8
.L2_9:
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_8:
    movq -272(%rbp), %rax
    movq %rax, %r12
    addq %r15, %r12
    movq %r13, %r14
    subq %r15, %r14
    leaq -208(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq -240(%rbp), %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -232(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r12, %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -256(%rbp), %rax
    movq -216(%rbp), %r10
    movq %rax, (%r10)
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
    .globl lb_json_Bytes_view
    .type lb_json_Bytes_view, @function
lb_json_Bytes_view:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -56(%rbp)
    leaq -56(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $16, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $1, %rcx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r12
    jb 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r12, %rax
    jbe .L3_1
.L3_2:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_1:
    leaq -72(%rbp), %rbx
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
.L3_3:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_json_Bytes_close
    .type lb_json_Bytes_close, @function
lb_json_Bytes_close:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -48(%rbp)
    leaq -48(%rbp), %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L4_2
.L4_1:
    leaq lb_memory_heap(%rip), %r12
    leaq -64(%rbp), %r14
    movq %r13, %r10
    movq (%r10), %r15
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L4_5
    jmp .L4_4
.L4_5:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r15, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L4_4:
    jmp .L4_3
.L4_2:
.L4_3:
    leaq -80(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r13, %rbx
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
    .globl lb_json_quoted
    .type lb_json_quoted, @function
lb_json_quoted:
    pushq %rbp
    movq %rsp, %rbp
    subq $800, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -96(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movq %rcx, -112(%rbp)
    movq %r8, -128(%rbp)
    leaq -136(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -520(%rbp)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -528(%rbp)
    leaq -176(%rbp), %rax
    movq %rax, -792(%rbp)
    movq -792(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -536(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L5_1:
    movq -528(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L5_4
.L5_2:
    movq -520(%rbp), %rax
    movq %rax, %r14
    addq %r15, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movzbl %r14b, %r14d
    movq %rbx, %rsi
    movl %r14d, %edx
    leaq -176(%rbp), %rdi
    call lb_utf8_Decoder_push@PLT
    movq -536(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L5_6
    jmp .L5_5
.L5_6:
    movq -792(%rbp), %rax
    movq $8, %rcx
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
.L5_5:
.L5_3:
    movq $1, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r15
    jmp .L5_1
.L5_4:
    movq %rbx, %rsi
    leaq -208(%rbp), %rdi
    call lb_utf8_Decoder_finish@PLT
    leaq -208(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L5_9
    jmp .L5_8
.L5_9:
    leaq -80(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_8:
    leaq -112(%rbp), %rax
    movq %rax, -544(%rbp)
    movq -544(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -552(%rbp)
    leaq .Ltext_15(%rip), %rax
    movq %rax, -560(%rbp)
    leaq -224(%rbp), %r15
    movq -560(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $1, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq -128(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -568(%rbp)
    movq -552(%rbp), %rsi
    movq %r15, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -568(%rbp), %r8
    leaq -256(%rbp), %rdi
    call lb_json_Bytes_append@PLT
    leaq -256(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L5_12
    jmp .L5_11
.L5_12:
    leaq -80(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
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
.L5_11:
    leaq -409(%rbp), %rax
    movq %rax, -704(%rbp)
    leaq -410(%rbp), %rax
    movq %rax, -712(%rbp)
    leaq -432(%rbp), %rax
    movq %rax, -720(%rbp)
    movq -720(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -728(%rbp)
    leaq -464(%rbp), %rax
    movq %rax, -752(%rbp)
    movq -752(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -736(%rbp)
    leaq -328(%rbp), %rax
    movq %rax, -608(%rbp)
    leaq .Ltext_16(%rip), %rax
    movq %rax, -616(%rbp)
    leaq -344(%rbp), %rax
    movq %rax, -624(%rbp)
    movq -624(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -632(%rbp)
    leaq -350(%rbp), %rax
    movq %rax, -760(%rbp)
    leaq -356(%rbp), %rax
    movq %rax, -768(%rbp)
    movq -768(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    movq %rax, -640(%rbp)
    movq -768(%rbp), %rax
    movq $2, %rcx
    addq %rcx, %rax
    movq %rax, -648(%rbp)
    movq -768(%rbp), %rax
    movq $3, %rcx
    addq %rcx, %rax
    movq %rax, -656(%rbp)
    movq -768(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, -664(%rbp)
    movq -768(%rbp), %rax
    movq $5, %rcx
    addq %rcx, %rax
    movq %rax, -672(%rbp)
    leaq -376(%rbp), %rax
    movq %rax, -680(%rbp)
    movq -680(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -688(%rbp)
    leaq -408(%rbp), %rax
    movq %rax, -776(%rbp)
    movq -776(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -696(%rbp)
    leaq -258(%rbp), %rax
    movq %rax, -576(%rbp)
    leaq -260(%rbp), %r15
    movq $1, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -584(%rbp)
    leaq -280(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -592(%rbp)
    leaq -312(%rbp), %rax
    movq %rax, -784(%rbp)
    movq -784(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -600(%rbp)
    movq $0, %rax
    movq %rax, -744(%rbp)
.L5_14:
    movq -744(%rbp), %rax
    movq -528(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L5_17
.L5_15:
    movq -520(%rbp), %rax
    movq -744(%rbp), %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movzbl %r12b, %r12d
    movl $34, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L5_40
    jmp .L5_21
.L5_40:
    movl %r14d, %r13d
    jmp .L5_22
.L5_21:
    movl $92, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L5_22:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L5_18
    jmp .L5_19
.L5_18:
    movl $92, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq -584(%rbp), %r10
    movb %r12b, (%r10)
    movq %r15, %r10
    movq -576(%rbp), %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq -576(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $2, %rax
    movq -592(%rbp), %r10
    movq %rax, (%r10)
    movq -552(%rbp), %rsi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -568(%rbp), %r8
    leaq -312(%rbp), %rdi
    call lb_json_Bytes_append@PLT
    movq -600(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L5_24
    jmp .L5_23
.L5_24:
    leaq -80(%rbp), %rbx
    movq -784(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_23:
    jmp .L5_20
.L5_19:
    movl $32, %ecx
    cmpl %ecx, %r12d
    jae .L5_27
.L5_26:
    movq -616(%rbp), %rax
    movq -624(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq -632(%rbp), %r10
    movq %rax, (%r10)
    movq -624(%rbp), %r10
    movq -608(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $92, %eax
    movq -768(%rbp), %r10
    movb %al, (%r10)
    movl $117, %eax
    movq -640(%rbp), %r10
    movb %al, (%r10)
    movl $48, %eax
    movq -648(%rbp), %r10
    movb %al, (%r10)
    movl $48, %eax
    movq -656(%rbp), %r10
    movb %al, (%r10)
.L5_30:
    movl $4, %ecx
    movl %r12d, %r13d
    shrl %cl, %r13d
    movzbl %r13b, %r13d
    movl %r13d, %r13d
    movq $16, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -616(%rbp), %rax
    movq %r13, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq -664(%rbp), %r10
    movb %r13b, (%r10)
    movl $15, %ecx
    movl %r12d, %r13d
    andl %ecx, %r13d
    movl %r13d, %r13d
    movq -616(%rbp), %rax
    movq %r13, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq -672(%rbp), %r10
    movb %r13b, (%r10)
    movq -768(%rbp), %r10
    movq -760(%rbp), %r11
    movl 0(%r10), %eax
    movl %eax, 0(%r11)
    movzwl 4(%r10), %eax
    movw %ax, 4(%r11)
    movq -760(%rbp), %rax
    movq -680(%rbp), %r10
    movq %rax, (%r10)
    movq $6, %rax
    movq -688(%rbp), %r10
    movq %rax, (%r10)
    movq -552(%rbp), %rsi
    movq -680(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -568(%rbp), %r8
    leaq -408(%rbp), %rdi
    call lb_json_Bytes_append@PLT
    movq -696(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L5_32
    jmp .L5_31
.L5_32:
    leaq -80(%rbp), %rbx
    movq -776(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_31:
    jmp .L5_28
.L5_27:
    movq -712(%rbp), %r10
    movb %r12b, (%r10)
    movq -712(%rbp), %r10
    movq -704(%rbp), %r11
    movzbl 0(%r10), %eax
    movb %al, 0(%r11)
    movq -704(%rbp), %rax
    movq -720(%rbp), %r10
    movq %rax, (%r10)
    movq $1, %rax
    movq -728(%rbp), %r10
    movq %rax, (%r10)
    movq -552(%rbp), %rsi
    movq -720(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -568(%rbp), %r8
    leaq -464(%rbp), %rdi
    call lb_json_Bytes_append@PLT
    movq -736(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L5_35
    jmp .L5_34
.L5_35:
    leaq -80(%rbp), %rbx
    movq -752(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_34:
.L5_28:
.L5_20:
.L5_16:
    movq -744(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %rax
    movq %rax, -744(%rbp)
    jmp .L5_14
.L5_17:
    leaq -480(%rbp), %rbx
    movq -560(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $1, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -552(%rbp), %rsi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -568(%rbp), %r8
    leaq -512(%rbp), %rdi
    call lb_json_Bytes_append@PLT
    leaq -512(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_38
    jmp .L5_37
.L5_38:
    leaq -80(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
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
.L5_37:
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
    .globl lb_json_Value_init
    .type lb_json_Value_init, @function
lb_json_Value_init:
    pushq %rbp
    movq %rsp, %rbp
    subq $224, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    movq %rdx, -104(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %r13
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $2, %rcx
    cmpq %rcx, %rbx
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L6_10
    jmp .L6_4
.L6_10:
    movl %r12d, %r14d
    jmp .L6_5
.L6_4:
    movq $67108864, %rcx
    cmpq %rcx, %rbx
    seta %al
    movzbl %al, %r14d
.L6_5:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L6_1
    jmp .L6_2
.L6_1:
    leaq -80(%rbp), %rbx
    leaq lb_json_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_19(%rip), %r12
    leaq -120(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $44, %rax
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
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_6:
    jmp .L6_3
.L6_2:
.L6_3:
    leaq -144(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq -168(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $123, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $56, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $64, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq .Ltext_20(%rip), %r14
    leaq -184(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $2, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %rsi
    movq %r15, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r12, %r8
    leaq -216(%rbp), %rdi
    call lb_json_Bytes_append@PLT
    leaq -216(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L6_8
    jmp .L6_7
.L6_8:
    leaq -80(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_9:
.L6_7:
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
    .globl lb_json_Value_own
    .type lb_json_Value_own, @function
lb_json_Value_own:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -96(%rbp)
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_json_10value_type(%rip), %r12
    leaq -112(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    subq $48, %rsp
    movq %r12, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq %rbx, %rsi
    movq %r13, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -152(%rbp), %rdi
    call lb_interop_Reference_0g1_json_Value_adopt@PLT
    addq $48, %rsp
    leaq -152(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_2
    jmp .L7_1
.L7_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_3:
.L7_1:
    leaq -80(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_4:
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_json_Value_array
    .type lb_json_Value_array, @function
lb_json_Value_array:
    pushq %rbp
    movq %rsp, %rbp
    subq $272, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -104(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    leaq -120(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -160(%rbp), %r13
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -264(%rbp)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L8_1
    jmp .L8_2
.L8_2:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT
.L8_1:
    movq %r12, %r10
    movq (%r10), %r14
    movq -264(%rbp), %rsi
    movq $72, %rdx
    movq $8, %rcx
    leaq -184(%rbp), %rdi
    movq %r14, %r11
    call *%r11
    leaq -184(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L8_3
    jmp .L8_4
.L8_4:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_7(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $16, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L8_5
.L8_3:
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, -272(%rbp)
    movq -272(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movq $0, 64(%r11)
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq -272(%rbp), %rsi
    movq %r14, %rdx
    leaq -216(%rbp), %rdi
    call lb_json_Value_init@PLT
    leaq -216(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L8_7
    jmp .L8_6
.L8_7:
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    testq %r12, %r12
    jne .L8_9
    jmp .L8_8
.L8_9:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq -264(%rbp), %rdi
    movq %r15, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L8_8:
    jmp .L8_5
.L8_6:
    movq -272(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L8_5:
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_11
    jmp .L8_10
.L8_11:
    movq $8, %rcx
    movq %r13, %rbx
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
.L8_12:
.L8_10:
    movq %r13, %r10
    movq (%r10), %rbx
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $91, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq $0, %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl $91, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq (%r10), %r14
    movq $1, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $1, %rcx
    addq %rcx, %r12
    movl $93, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    leaq -256(%rbp), %rdi
    call lb_json_Value_own@PLT
    leaq -256(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_14
    jmp .L8_13
.L8_14:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
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
.L8_15:
.L8_13:
    leaq -88(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
.L8_16:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_json_Value_scalar
    .type lb_json_Value_scalar, @function
lb_json_Value_scalar:
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
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -336(%rbp)
    leaq -120(%rbp), %r13
    movq -336(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -160(%rbp), %r14
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -344(%rbp)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L9_1
    jmp .L9_2
.L9_2:
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_1:
    movq %r13, %r10
    movq (%r10), %r15
    movq -344(%rbp), %rsi
    movq $72, %rdx
    movq $8, %rcx
    leaq -184(%rbp), %rdi
    movq %r15, %r11
    call *%r11
    leaq -184(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L9_3
    jmp .L9_4
.L9_4:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_7(%rip), %r12
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
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L9_5
.L9_3:
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -352(%rbp)
    movq -352(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movq $0, 64(%r11)
    movq -352(%rbp), %rsi
    movq $1048576, %rdx
    leaq -216(%rbp), %rdi
    call lb_json_Value_init@PLT
    leaq -216(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L9_7
    jmp .L9_6
.L9_7:
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    testq %r13, %r13
    jne .L9_9
    jmp .L9_8
.L9_9:
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq -344(%rbp), %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L9_8:
    jmp .L9_5
.L9_6:
    movq -352(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L9_5:
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L9_11
    jmp .L9_10
.L9_11:
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
.L9_12:
.L9_10:
    movq %r14, %r10
    movq (%r10), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -104(%rbp), %r12
    movq $64, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r13, %r8
    leaq -272(%rbp), %rdi
    call lb_json_Bytes_append@PLT
    leaq -272(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L9_16
    jmp .L9_15
.L9_16:
    leaq -240(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L9_13
.L9_15:
    jmp .L9_14
.L9_13:
    movq %rbx, %rdi
    call lb_json_Bytes_close@PLT
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %rdi
    call lb_json_Bytes_close@PLT
.L9_24:
    leaq -288(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $72, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq -336(%rbp), %r10
    movq (%r10), %r14
    movq -336(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L9_18
    jmp .L9_17
.L9_18:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L9_17:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq $8, %rcx
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
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
.L9_19:
.L9_14:
    movq %rbx, %rsi
    leaq -328(%rbp), %rdi
    call lb_json_Value_own@PLT
    leaq -328(%rbp), %r13
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L9_21
    jmp .L9_20
.L9_21:
    movq $8, %rcx
    movq %r13, %rbx
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
.L9_22:
.L9_20:
    leaq -88(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
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
.L9_23:
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_json_Value_text
    .type lb_json_Value_text, @function
lb_json_Value_text:
    pushq %rbp
    movq %rsp, %rbp
    subq $240, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -104(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -128(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %rcx
    movq $1048576, %r8
    leaq -160(%rbp), %rdi
    call lb_json_quoted@PLT
    leaq -160(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L10_2
    jmp .L10_1
.L10_2:
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %rbx, %rdi
    call lb_json_Bytes_close@PLT
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
.L10_3:
.L10_1:
    movq %rbx, %rdi
    call lb_json_Bytes_view@PLT
    leaq -176(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -176(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -192(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -232(%rbp), %rdi
    call lb_json_Value_scalar@PLT
    leaq -232(%rbp), %r13
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L10_5
    jmp .L10_4
.L10_5:
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq -88(%rbp), %r14
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rdi
    call lb_json_Bytes_close@PLT
    movq %r14, %rsi
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
.L10_6:
.L10_4:
    leaq -88(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %rbx, %rdi
    call lb_json_Bytes_close@PLT
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
.L10_7:
    leaq -128(%rbp), %rbx
    movq %rbx, %rdi
    call lb_json_Bytes_close@PLT
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_json_Value_integer
    .type lb_json_Value_integer, @function
lb_json_Value_integer:
    pushq %rbp
    movq %rsp, %rbp
    subq $272, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -96(%rbp)
    leaq -128(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    leaq -144(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $32, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -168(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $32, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq %r14, %rsi
    call lb_core_10format_i64@PLT
    movl %eax, %r14d
    leaq -216(%rbp), %r14
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %rbx
    cmpq %rbx, %r13
    jbe .L11_2
.L11_1:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_29(%rip), %r12
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
    jmp .L11_3
.L11_2:
    movq %r12, %rdi
    call lb_core_13format_finish@PLT
    leaq -232(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -232(%rbp), %rbx
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
.L11_3:
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_5
    jmp .L11_4
.L11_5:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r12
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_6:
.L11_4:
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -272(%rbp), %rdi
    call lb_json_Value_scalar@PLT
    leaq -272(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_8
    jmp .L11_7
.L11_8:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_9:
.L11_7:
    leaq -80(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_10:
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_json_Value_number
    .type lb_json_Value_number, @function
lb_json_Value_number:
    pushq %rbp
    movq %rsp, %rbp
    subq $288, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movsd %xmm0, -96(%rbp)
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, -288(%rbp)
    movsd -288(%rbp), %xmm0
    call lb_math_9is_finite@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L12_2
.L12_1:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_json_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_31(%rip), %r13
    leaq -112(%rbp), %r14
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_4:
    jmp .L12_3
.L12_2:
.L12_3:
    leaq -176(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    leaq -192(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $64, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movsd -288(%rbp), %xmm0
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -240(%rbp), %rdi
    call lb_strings_10format_f64@PLT
    leaq -240(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L12_6
    jmp .L12_5
.L12_6:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_7:
.L12_5:
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -280(%rbp), %rdi
    call lb_json_Value_scalar@PLT
    leaq -280(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L12_9
    jmp .L12_8
.L12_9:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r12
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
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_10:
.L12_8:
    leaq -80(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_11:
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_json_Value_boolean
    .type lb_json_Value_boolean, @function
lb_json_Value_boolean:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movl %esi, -96(%rbp)
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_1
    jmp .L13_2
.L13_1:
    leaq .Ltext_33(%rip), %rbx
    leaq -128(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $4, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -112(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L13_3
.L13_2:
    leaq .Ltext_34(%rip), %rbx
    leaq -144(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $5, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -112(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L13_3:
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -184(%rbp), %rdi
    call lb_json_Value_scalar@PLT
    leaq -184(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_5
    jmp .L13_4
.L13_5:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L13_6:
.L13_4:
    leaq -80(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L13_7:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_json_Value_null
    .type lb_json_Value_null, @function
lb_json_Value_null:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    leaq .Ltext_36(%rip), %rbx
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $4, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -136(%rbp), %rdi
    call lb_json_Value_scalar@PLT
    leaq -136(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L14_2
    jmp .L14_1
.L14_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L14_3:
.L14_1:
    leaq -80(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L14_4:
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_json_Value_encode
    .type lb_json_Value_encode, @function
lb_json_Value_encode:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -48(%rbp)
    leaq -48(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_json_Bytes_view@PLT
    leaq -64(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -64(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -80(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq -40(%rbp), %rbx
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L15_1:
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_json_Value_insert
    .type lb_json_Value_insert, @function
lb_json_Value_insert:
    pushq %rbp
    movq %rsp, %rbp
    subq $1136, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    movq %rdx, -128(%rbp)
    leaq 16(%rbp), %r10
    leaq -112(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq -88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1112(%rbp)
    movq -1112(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, -800(%rbp)
    movq -800(%rbp), %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L16_78
    jmp .L16_4
.L16_78:
    movl %r13d, %r12d
    jmp .L16_5
.L16_4:
    movl $123, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    leaq -112(%rbp), %r15
    movq $16, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    cmpl %r15d, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %r12d
.L16_5:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L16_1
    jmp .L16_2
.L16_1:
    leaq -80(%rbp), %rbx
    leaq lb_json_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_39(%rip), %r12
    leaq -144(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $48, %rax
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
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L16_6:
    jmp .L16_3
.L16_2:
.L16_3:
    leaq -168(%rbp), %rax
    movq %rax, -808(%rbp)
    movq -808(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -112(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %eax
    movl %eax, -816(%rbp)
    movl -816(%rbp), %eax
    testl %eax, %eax
    jne .L16_10
    jmp .L16_8
.L16_10:
    leaq -184(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L16_7:
    movq -1112(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -808(%rbp), %rcx
    movq %r15, %r8
    leaq -216(%rbp), %rdi
    call lb_json_quoted@PLT
    leaq -216(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L16_12
    jmp .L16_11
.L16_12:
    leaq -80(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq -808(%rbp), %rdi
    call lb_json_Bytes_close@PLT
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
.L16_13:
.L16_11:
    movq -1112(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -824(%rbp)
    movq -824(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -832(%rbp)
    movq -824(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -840(%rbp)
    leaq -232(%rbp), %rax
    movq %rax, -856(%rbp)
    movq -856(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -864(%rbp)
    leaq -248(%rbp), %rax
    movq %rax, -1128(%rbp)
    movq -1128(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -872(%rbp)
    leaq -264(%rbp), %rax
    movq %rax, -880(%rbp)
    movq -880(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -888(%rbp)
    leaq -280(%rbp), %rax
    movq %rax, -1136(%rbp)
    movq -1136(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -896(%rbp)
    movq $0, %rax
    movq %rax, -1120(%rbp)
    movq $0, %rax
    movq %rax, %r12
.L16_14:
    movq -832(%rbp), %rcx
    cmpq %rcx, %r12
    jae .L16_17
.L16_15:
    movq -824(%rbp), %r10
    movq (%r10), %r14
    movq -840(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r14, %r15
    addq %r12, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movl $10, %ecx
    cmpl %ecx, %r15d
    jne .L16_19
.L16_18:
    movq $1, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq -1120(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r15, %r12
    jb 1f
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1120(%rbp), %rax
    cmpq %r12, %rax
    jbe .L16_24
.L16_25:
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
.L16_24:
    movq -1120(%rbp), %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -848(%rbp)
    movq -1120(%rbp), %rcx
    movq %r12, %r15
    subq %rcx, %r15
    movq -848(%rbp), %rax
    movq -856(%rbp), %r10
    movq %rax, (%r10)
    movq -864(%rbp), %r10
    movq %r15, (%r10)
    movq -848(%rbp), %rax
    movq -1128(%rbp), %r10
    movq %rax, (%r10)
    movq -872(%rbp), %r10
    movq %r15, (%r10)
    movq -808(%rbp), %rdi
    call lb_json_Bytes_view@PLT
    leaq -264(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    movq -880(%rbp), %r10
    movq (%r10), %rbx
    movq -888(%rbp), %r10
    movq (%r10), %r13
    movq -1136(%rbp), %r10
    movq %rbx, (%r10)
    movq -896(%rbp), %r10
    movq %r13, (%r10)
    cmpq %r13, %r15
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L16_26
    jmp .L16_79
.L16_79:
    movl %r13d, %ebx
    jmp .L16_27
.L16_26:
    movq -848(%rbp), %rdi
    movq %rbx, %rsi
    movq %r15, %rdx
    call memcmp@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L16_27:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L16_21
    jmp .L16_22
.L16_21:
    leaq -80(%rbp), %rbx
    leaq lb_json_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_42(%rip), %r12
    leaq -296(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $37, %rax
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
    movq -808(%rbp), %rdi
    call lb_json_Bytes_close@PLT
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
.L16_28:
    jmp .L16_23
.L16_22:
.L16_23:
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    jmp .L16_20
.L16_19:
    movq -1120(%rbp), %rax
    movq %rax, %rbx
.L16_20:
.L16_16:
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %rax
    movq %rax, -1120(%rbp)
    movq %r13, %r12
    jmp .L16_14
.L16_17:
    jmp .L16_9
.L16_8:
.L16_9:
    leaq -320(%rbp), %rax
    movq %rax, -904(%rbp)
    movq -904(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq -1112(%rbp), %rax
    movq $56, %rcx
    addq %rcx, %rax
    movq %rax, -912(%rbp)
    movq -912(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jbe .L16_30
.L16_29:
    leaq .Ltext_44(%rip), %r13
    leaq -336(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $1, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq -1112(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq -904(%rbp), %rsi
    movq %r14, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r13, %r8
    leaq -368(%rbp), %rdi
    call lb_json_Bytes_append@PLT
    leaq -368(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L16_33
    jmp .L16_32
.L16_33:
    leaq -80(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -904(%rbp), %rdi
    call lb_json_Bytes_close@PLT
    movq -808(%rbp), %rdi
    call lb_json_Bytes_close@PLT
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
.L16_34:
.L16_32:
    jmp .L16_31
.L16_30:
.L16_31:
    movl -816(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %eax
    movl %eax, -920(%rbp)
    movl -920(%rbp), %eax
    testl %eax, %eax
    jne .L16_35
    jmp .L16_36
.L16_35:
    movq -808(%rbp), %rdi
    call lb_json_Bytes_view@PLT
    leaq -384(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -384(%rbp), %r14
    movq -1112(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r12
    movq -904(%rbp), %rsi
    movq %r14, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r12, %r8
    leaq -416(%rbp), %rdi
    call lb_json_Bytes_append@PLT
    leaq -416(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L16_39
    jmp .L16_38
.L16_39:
    leaq -80(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -904(%rbp), %rdi
    call lb_json_Bytes_close@PLT
    movq -808(%rbp), %rdi
    call lb_json_Bytes_close@PLT
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
.L16_40:
.L16_38:
    leaq .Ltext_45(%rip), %r12
    leaq -432(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $1, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %r15, %r10
    movq (%r10), %r12
    movq -904(%rbp), %rsi
    movq %r14, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r12, %r8
    leaq -464(%rbp), %rdi
    call lb_json_Bytes_append@PLT
    leaq -464(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L16_42
    jmp .L16_41
.L16_42:
    leaq -80(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -904(%rbp), %rdi
    call lb_json_Bytes_close@PLT
    movq -808(%rbp), %rdi
    call lb_json_Bytes_close@PLT
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
.L16_43:
.L16_41:
    jmp .L16_37
.L16_36:
.L16_37:
    leaq -128(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call lb_json_Bytes_view@PLT
    leaq -480(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -480(%rbp), %r12
    movq -1112(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq -904(%rbp), %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r15, %r8
    leaq -512(%rbp), %rdi
    call lb_json_Bytes_append@PLT
    leaq -512(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L16_45
    jmp .L16_44
.L16_45:
    leaq -80(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -904(%rbp), %rdi
    call lb_json_Bytes_close@PLT
    movq -808(%rbp), %rdi
    call lb_json_Bytes_close@PLT
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
.L16_46:
.L16_44:
    movq -1112(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -928(%rbp)
    movq -928(%rbp), %r10
    movq (%r10), %r15
    movq -904(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -936(%rbp)
    movq -936(%rbp), %r10
    movq (%r10), %r12
    leaq -520(%rbp), %r13
    movq %r15, %rdi
    movq %r12, %rsi
    movl $64, %edx
    movq %r13, %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r12d
    leaq -536(%rbp), %r15
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -944(%rbp)
    movq -944(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movb %r12b, (%r10)
    movq %r15, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L16_47
    jmp .L16_48
.L16_47:
    jmp .L16_49
.L16_48:
    leaq -80(%rbp), %r12
    leaq lb_json_14limit_exceeded(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_9(%rip), %r13
    leaq -552(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $18, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -904(%rbp), %rdi
    call lb_json_Bytes_close@PLT
    movq -808(%rbp), %rdi
    call lb_json_Bytes_close@PLT
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
.L16_50:
.L16_49:
    movq -1112(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -952(%rbp)
    movq -952(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -960(%rbp)
    movq -960(%rbp), %r10
    movq (%r10), %r15
    movq -808(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -968(%rbp)
    movq -968(%rbp), %r10
    movq (%r10), %r12
    leaq -560(%rbp), %r13
    movq %r15, %rdi
    movq %r12, %rsi
    movl $64, %edx
    movq %r13, %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r12d
    leaq -576(%rbp), %r15
    movq %r13, %r10
    movq (%r10), %r13
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movb %r12b, (%r10)
    movq %r15, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L16_51
    jmp .L16_52
.L16_51:
    jmp .L16_53
.L16_52:
    leaq -80(%rbp), %r12
    leaq lb_json_14limit_exceeded(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_46(%rip), %r13
    leaq -592(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $22, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -904(%rbp), %rdi
    call lb_json_Bytes_close@PLT
    movq -808(%rbp), %rdi
    call lb_json_Bytes_close@PLT
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
.L16_54:
.L16_53:
    leaq -600(%rbp), %rax
    movq %rax, -976(%rbp)
    movq %r13, %rdi
    movq $1, %rsi
    movl $64, %edx
    movq -976(%rbp), %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r15d
    leaq -616(%rbp), %r12
    movq -976(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -984(%rbp)
    movq -984(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movb %r15b, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L16_55
    jmp .L16_56
.L16_55:
    jmp .L16_57
.L16_56:
    leaq -80(%rbp), %r12
    leaq lb_json_14limit_exceeded(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_46(%rip), %r13
    leaq -632(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $22, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -904(%rbp), %rdi
    call lb_json_Bytes_close@PLT
    movq -808(%rbp), %rdi
    call lb_json_Bytes_close@PLT
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
.L16_58:
.L16_57:
    movq %r14, %r10
    movq (%r10), %r12
    movq -1112(%rbp), %rsi
    movq -944(%rbp), %rdx
    movq %r12, %rcx
    leaq -664(%rbp), %rdi
    call lb_json_Bytes_reserve@PLT
    leaq -664(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L16_60
    jmp .L16_59
.L16_60:
    leaq -80(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq -904(%rbp), %rdi
    call lb_json_Bytes_close@PLT
    movq -808(%rbp), %rdi
    call lb_json_Bytes_close@PLT
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
.L16_61:
.L16_59:
    movl -920(%rbp), %eax
    testl %eax, %eax
    jne .L16_62
    jmp .L16_63
.L16_62:
    movq %r14, %r10
    movq (%r10), %r12
    movq -952(%rbp), %rsi
    movq -984(%rbp), %rdx
    movq %r12, %rcx
    leaq -696(%rbp), %rdi
    call lb_json_Bytes_reserve@PLT
    leaq -696(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L16_66
    jmp .L16_65
.L16_66:
    leaq -80(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq -904(%rbp), %rdi
    call lb_json_Bytes_close@PLT
    movq -808(%rbp), %rdi
    call lb_json_Bytes_close@PLT
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
.L16_67:
.L16_65:
    jmp .L16_64
.L16_63:
.L16_64:
    movq -928(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_47(%rip), %rdi
    leaq .Ltext_68(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -1112(%rbp), %r10
    movq (%r10), %r15
    movq -1112(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -992(%rbp)
    movq -992(%rbp), %r10
    movq (%r10), %r13
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    cmpq %r14, %r12
    jb 1f
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r13, %r12
    jbe .L16_68
.L16_69:
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
.L16_68:
    movq %r12, %rax
    addq %r15, %rax
    movq %rax, -1000(%rbp)
    movq %r13, %rax
    subq %r12, %rax
    movq %rax, -1008(%rbp)
    leaq -712(%rbp), %rbx
    movq -1000(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -1016(%rbp)
    movq -1008(%rbp), %rax
    movq -1016(%rbp), %r10
    movq %rax, (%r10)
    leaq -728(%rbp), %rax
    movq %rax, -1024(%rbp)
    movq %rbx, %r10
    movq -1024(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -904(%rbp), %rdi
    call lb_json_Bytes_view@PLT
    leaq -744(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -744(%rbp), %rbx
    movq -936(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1032(%rbp)
    movq -1024(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -1032(%rbp), %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -944(%rbp), %rax
    movq -928(%rbp), %r10
    movq %rax, (%r10)
    movq -944(%rbp), %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_68(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -1112(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1040(%rbp)
    movq -992(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1040(%rbp), %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq -800(%rbp), %r10
    movzbl (%r10), %ebx
    movl $123, %ecx
    cmpl %ecx, %ebx
    jne .L16_71
.L16_70:
    movl $125, %eax
    movl %eax, %ebx
    jmp .L16_72
.L16_71:
    movl $93, %eax
    movl %eax, %ebx
.L16_72:
    movzbl %bl, %r12d
    movq %r14, %r10
    movb %r12b, (%r10)
    movl -920(%rbp), %eax
    testl %eax, %eax
    jne .L16_73
    jmp .L16_74
.L16_73:
    movq -952(%rbp), %r10
    movq (%r10), %r13
    movq -952(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1048(%rbp)
    movq -1048(%rbp), %r10
    movq (%r10), %r14
    movq -960(%rbp), %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r14
    jb 1f
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r14, %r15
    jbe .L16_76
.L16_77:
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
.L16_76:
    movq %r13, %rax
    addq %r15, %rax
    movq %rax, -1056(%rbp)
    movq %r14, %rax
    subq %r15, %rax
    movq %rax, -1064(%rbp)
    leaq -760(%rbp), %rbx
    movq -1056(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -1072(%rbp)
    movq -1064(%rbp), %rax
    movq -1072(%rbp), %r10
    movq %rax, (%r10)
    leaq -776(%rbp), %rax
    movq %rax, -1080(%rbp)
    movq %rbx, %r10
    movq -1080(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -808(%rbp), %rdi
    call lb_json_Bytes_view@PLT
    leaq -792(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -792(%rbp), %rbx
    movq -968(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1088(%rbp)
    movq -1080(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -1088(%rbp), %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -960(%rbp), %r10
    movq (%r10), %rbx
    movq -968(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1096(%rbp)
    movq %rbx, %rax
    movq -1096(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_68(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -960(%rbp), %r10
    movq %rbx, (%r10)
    movq -952(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1104(%rbp)
    movq -1048(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jb 1f
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1104(%rbp), %rcx
    addq %rcx, %rbx
    movl $10, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -960(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_68(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -960(%rbp), %r10
    movq %rbx, (%r10)
    jmp .L16_75
.L16_74:
.L16_75:
    movq -912(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_68(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -912(%rbp), %r10
    movq %rbx, (%r10)
    movq -904(%rbp), %rdi
    call lb_json_Bytes_close@PLT
    movq -808(%rbp), %rdi
    call lb_json_Bytes_close@PLT
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
    .globl lb_json_Value_set
    .type lb_json_Value_set, @function
lb_json_Value_set:
    pushq %rbp
    movq %rsp, %rbp
    subq $240, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    leaq -104(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -120(%rbp), %r10
    movq %r8, 0(%r10)
    leaq -88(%rbp), %r10
    movq (%r10), %r13
    leaq -104(%rbp), %rbx
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
    leaq -168(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq -120(%rbp), %r12
    movq %r12, %rsi
    leaq -208(%rbp), %rdi
    call lb_interop_Reference_0g1_json_Value_get@PLT
    leaq -208(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L17_2
    jmp .L17_1
.L17_2:
    movq $8, %rcx
    movq %r14, %rbx
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
.L17_3:
.L17_1:
    movq %r14, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r13, %rsi
    movq %r12, %rdx
    leaq -240(%rbp), %rdi
    call lb_json_Value_insert@PLT
    addq $32, %rsp
    leaq -240(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L17_5
    jmp .L17_4
.L17_5:
    leaq -80(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L17_6:
.L17_4:
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
    .globl lb_json_Value_append
    .type lb_json_Value_append, @function
lb_json_Value_append:
    pushq %rbp
    movq %rsp, %rbp
    subq $224, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    leaq -104(%rbp), %r10
    movq %rdx, 0(%r10)
    leaq -88(%rbp), %r10
    movq (%r10), %r13
    leaq -128(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -152(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq -104(%rbp), %rbx
    movq %rbx, %rsi
    leaq -192(%rbp), %rdi
    call lb_interop_Reference_0g1_json_Value_get@PLT
    leaq -192(%rbp), %r14
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L18_2
    jmp .L18_1
.L18_2:
    movq $8, %rcx
    movq %r14, %rbx
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
.L18_3:
.L18_1:
    movq %r14, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %r12, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r13, %rsi
    movq %rbx, %rdx
    leaq -224(%rbp), %rdi
    call lb_json_Value_insert@PLT
    addq $32, %rsp
    leaq -224(%rbp), %r15
    movq $24, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L18_5
    jmp .L18_4
.L18_5:
    leaq -80(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L18_6:
.L18_4:
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
    .globl lb_json_Value_8set_text
    .type lb_json_Value_8set_text, @function
lb_json_Value_8set_text:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    leaq -104(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -120(%rbp), %r10
    movq %r8, 0(%r10)
    movq %r9, 8(%r10)
    leaq -88(%rbp), %r10
    movq (%r10), %r12
    leaq -128(%rbp), %r13
    leaq -120(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -168(%rbp), %rdi
    call lb_json_Value_text@PLT
    leaq -168(%rbp), %r14
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L19_2
    jmp .L19_1
.L19_2:
    movq $8, %rcx
    movq %r14, %rbx
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
.L19_3:
.L19_1:
    movq %r14, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -104(%rbp), %rbx
    movq %r12, %rsi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r13, %r10
    movq 0(%r10), %r8
    leaq -200(%rbp), %rdi
    call lb_json_Value_set@PLT
    leaq -200(%rbp), %r15
    movq $24, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L19_5
    jmp .L19_4
.L19_5:
    leaq -80(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call lb_ownership_release@PLT
.L19_7:
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
.L19_6:
.L19_4:
    movq %r13, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_release@PLT
.L19_8:
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
    .globl lb_json_Value_11set_integer
    .type lb_json_Value_11set_integer, @function
lb_json_Value_11set_integer:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    leaq -104(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movq %r8, -120(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %r12
    leaq -128(%rbp), %r13
    leaq -120(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -168(%rbp), %rdi
    call lb_json_Value_integer@PLT
    leaq -168(%rbp), %r14
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L20_2
    jmp .L20_1
.L20_2:
    movq $8, %rcx
    movq %r14, %rbx
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
.L20_3:
.L20_1:
    movq %r14, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -104(%rbp), %rbx
    movq %r12, %rsi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r13, %r10
    movq 0(%r10), %r8
    leaq -200(%rbp), %rdi
    call lb_json_Value_set@PLT
    leaq -200(%rbp), %r15
    movq $24, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L20_5
    jmp .L20_4
.L20_5:
    leaq -80(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call lb_ownership_release@PLT
.L20_7:
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
.L20_6:
.L20_4:
    movq %r13, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_release@PLT
.L20_8:
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
    .globl lb_json_Value_10set_number
    .type lb_json_Value_10set_number, @function
lb_json_Value_10set_number:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    leaq -104(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movsd %xmm0, -120(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %r12
    leaq -128(%rbp), %r13
    leaq -120(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    leaq -168(%rbp), %rdi
    call lb_json_Value_number@PLT
    leaq -168(%rbp), %r14
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L21_2
    jmp .L21_1
.L21_2:
    movq $8, %rcx
    movq %r14, %rbx
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
.L21_3:
.L21_1:
    movq %r14, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -104(%rbp), %rbx
    movq %r12, %rsi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r13, %r10
    movq 0(%r10), %r8
    leaq -200(%rbp), %rdi
    call lb_json_Value_set@PLT
    leaq -200(%rbp), %r15
    movq $24, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L21_5
    jmp .L21_4
.L21_5:
    leaq -80(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call lb_ownership_release@PLT
.L21_7:
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
.L21_6:
.L21_4:
    movq %r13, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_release@PLT
.L21_8:
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
    .globl lb_json_Value_11set_boolean
    .type lb_json_Value_11set_boolean, @function
lb_json_Value_11set_boolean:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    leaq -104(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movl %r8d, -120(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %r12
    leaq -128(%rbp), %r13
    leaq -120(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl %ebx, %esi
    leaq -168(%rbp), %rdi
    call lb_json_Value_boolean@PLT
    leaq -168(%rbp), %r14
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L22_2
    jmp .L22_1
.L22_2:
    movq $8, %rcx
    movq %r14, %rbx
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
.L22_3:
.L22_1:
    movq %r14, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -104(%rbp), %rbx
    movq %r12, %rsi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r13, %r10
    movq 0(%r10), %r8
    leaq -200(%rbp), %rdi
    call lb_json_Value_set@PLT
    leaq -200(%rbp), %r15
    movq $24, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L22_5
    jmp .L22_4
.L22_5:
    leaq -80(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call lb_ownership_release@PLT
.L22_7:
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
.L22_6:
.L22_4:
    movq %r13, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_release@PLT
.L22_8:
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
    .globl lb_json_Value_close
    .type lb_json_Value_close, @function
lb_json_Value_close:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -16(%rbp)
    leaq -16(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_json_Bytes_close@PLT
    movq $24, %rcx
    addq %rcx, %rbx
    movq %rbx, %rdi
    call lb_json_Bytes_close@PLT
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

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
    jne .L24_11
    jmp .L24_4
.L24_11:
    movl %r13d, %r14d
    jmp .L24_5
.L24_4:
    leaq -64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L24_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L24_1
    jmp .L24_2
.L24_1:
    leaq .Ltext_11(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_55(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L24_3
.L24_2:
.L24_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L24_7
.L24_6:
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
    jne .L24_9
    jmp .L24_10
.L24_10:
    leaq .Ltext_56(%rip), %rdi
    leaq .Ltext_57(%rip), %rsi
    call lb_core_7trap_at@PLT
.L24_9:
    jmp .L24_8
.L24_7:
.L24_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_Reference_0g1_json_Value_adopt
    .type lb_interop_Reference_0g1_json_Value_adopt, @function
    .weak lb_interop_Reference_0g1_json_Value_adopt
lb_interop_Reference_0g1_json_Value_adopt:
    pushq %rbp
    movq %rsp, %rbp
    subq $384, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -104(%rbp)
    leaq -160(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq 16(%rbp), %r10
    leaq -144(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    leaq -176(%rbp), %r12
    leaq -160(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L25_1
    jmp .L25_2
.L25_1:
    leaq -192(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L25_3
.L25_2:
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    leaq -192(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L25_3:
    leaq -192(%rbp), %rax
    movq %rax, -344(%rbp)
    movq -344(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -200(%rbp), %rax
    movq %rax, -376(%rbp)
    leaq -240(%rbp), %rax
    movq %rax, -352(%rbp)
    movq -352(%rbp), %r11
    movq $0, 0(%r11)
    leaq -144(%rbp), %rax
    movq %rax, -360(%rbp)
    subq $48, %rsp
    movq -360(%rbp), %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq -352(%rbp), %rsi
    leaq -272(%rbp), %rdi
    call lb_interop_Reservation_0g1_json_Value_init@PLT
    addq $48, %rsp
    leaq -272(%rbp), %r14
    leaq -312(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movb %r14b, (%r10)
    movq -352(%rbp), %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r13, %r10
    movzbl (%r10), %eax
    movl %eax, -368(%rbp)
    movl -368(%rbp), %eax
    testl %eax, %eax
    jne .L25_7
    jmp .L25_6
.L25_7:
    leaq -232(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L25_4
.L25_6:
    leaq -208(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    jmp .L25_5
.L25_4:
    movq -360(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rdi
    movq %r13, %r11
    call *%r11
    leaq -328(%rbp), %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $72, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L25_9
    jmp .L25_8
.L25_9:
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
.L25_8:
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq $8, %rcx
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
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
.L25_10:
.L25_5:
    movq %r13, %r10
    movq -376(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq -376(%rbp), %rdi
    movq %rbx, %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_interop_Reservation_0g1_json_Value_publish@PLT
    leaq -336(%rbp), %r10
    movq %rax, 0(%r10)
    leaq -336(%rbp), %rbx
    leaq -88(%rbp), %r14
    movq %rbx, %r10
    movq %r14, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r14, %rsi
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
.L25_11:
    leaq .Ltext_58(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_interop_Reference_0g1_json_Value_get
    .type lb_interop_Reference_0g1_json_Value_get, @function
    .weak lb_interop_Reference_0g1_json_Value_get
lb_interop_Reference_0g1_json_Value_get:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -88(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_11check_alive@PLT
    movq %r12, %r10
    movq (%r10), %rbx
    movq $184, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L26_1
    jmp .L26_2
.L26_1:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_interop_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_59(%rip), %r13
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $25, %rax
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L26_4:
    jmp .L26_3
.L26_2:
.L26_3:
    movq $160, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L26_5
    jmp .L26_6
.L26_5:
    jmp .L26_7
.L26_6:
    leaq .Ltext_60(%rip), %rbx
    leaq -120(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $40, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_61(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
.L26_7:
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L26_8:
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_interop_Reference_0g1_json_Value_release
    .type lb_interop_Reference_0g1_json_Value_release, @function
    .weak lb_interop_Reference_0g1_json_Value_release
lb_interop_Reference_0g1_json_Value_release:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -16(%rbp)
    leaq -16(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_release@PLT
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_Reservation_0g1_json_Value_init
    .type lb_interop_Reservation_0g1_json_Value_init, @function
    .weak lb_interop_Reservation_0g1_json_Value_init
lb_interop_Reservation_0g1_json_Value_init:
    pushq %rbp
    movq %rsp, %rbp
    subq $336, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    leaq 16(%rbp), %r10
    leaq -128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    leaq -88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -328(%rbp)
    leaq -128(%rbp), %rax
    movq %rax, -320(%rbp)
    movq -320(%rbp), %rax
    movq $33, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L28_4
    jmp .L28_10
.L28_10:
    movl %r12d, %r14d
    jmp .L28_5
.L28_4:
    call lb_thread_7is_main@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L28_5:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L28_1
    jmp .L28_2
.L28_1:
    leaq -80(%rbp), %rbx
    leaq lb_interop_12wrong_thread(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_62(%rip), %r12
    leaq -144(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $49, %rax
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
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L28_6:
    jmp .L28_3
.L28_2:
.L28_3:
    leaq -200(%rbp), %r12
    leaq -256(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movq -320(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $200, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq lb_interop_Owner_0g1_json_Value_12finish_owner@GOTPCREL(%rip), %r15
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq lb_interop_Owner_0g1_json_Value_10drop_owner@GOTPCREL(%rip), %r13
    movq $32, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq lb_interop_Owner_0g1_json_Value_11trace_owner@GOTPCREL(%rip), %r13
    movq $40, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $48, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq -272(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq $200, %rdx
    movq %r13, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    leaq -312(%rbp), %rdi
    call lb_ownership_reserve@PLT
    leaq -312(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L28_8
    jmp .L28_7
.L28_8:
    movq $8, %rcx
    movq %r14, %rbx
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
.L28_9:
.L28_7:
    movq %r14, %r10
    movq (%r10), %r13
    movq $64, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $120, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq -320(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq -328(%rbp), %r10
    movq %r13, (%r10)
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
    .globl lb_interop_Reservation_0g1_json_Value_publish
    .type lb_interop_Reservation_0g1_json_Value_publish, @function
    .weak lb_interop_Reservation_0g1_json_Value_publish
lb_interop_Reservation_0g1_json_Value_publish:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
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
    leaq -56(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L29_1
    jmp .L29_2
.L29_1:
    jmp .L29_3
.L29_2:
    leaq .Ltext_63(%rip), %rbx
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $56, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_64(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_64(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
.L29_3:
    movq $160, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    leaq -72(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %r10
    movq %r14, (%r10)
    movq $168, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    leaq -88(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L29_4
    jmp .L29_5
.L29_4:
    leaq -120(%rbp), %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L29_6
.L29_5:
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    leaq -120(%rbp), %r15
    movq %r13, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L29_6:
    leaq -120(%rbp), %r13
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -128(%rbp), %r13
    movq %r13, %r11
    movq $0, 0(%r11)
    leaq -144(%rbp), %r10
    movq %r12, (%r10)
    movq %r12, %rdi
    call lb_ownership_11check_alive@PLT
    movq %r13, %r10
    movq %r12, (%r10)
.L29_8:
    leaq -48(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L29_7:
    leaq .Ltext_65(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_interop_Owner_0g1_json_Value_12finish_owner
    .type lb_interop_Owner_0g1_json_Value_12finish_owner, @function
    .weak lb_interop_Owner_0g1_json_Value_12finish_owner
lb_interop_Owner_0g1_json_Value_12finish_owner:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_interop_11close_owner_0g1_json_Value@PLT
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_Owner_0g1_json_Value_10drop_owner
    .type lb_interop_Owner_0g1_json_Value_10drop_owner, @function
    .weak lb_interop_Owner_0g1_json_Value_10drop_owner
lb_interop_Owner_0g1_json_Value_10drop_owner:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $160, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -136(%rbp)
    movq -136(%rbp), %rax
    testq %rax, %rax
    jne .L31_4
    jmp .L31_2
.L31_4:
.L31_1:
    leaq -72(%rbp), %r15
    movq $168, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L31_5
    jmp .L31_6
.L31_5:
    leaq -88(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L31_7
.L31_6:
    leaq .Ltext_66(%rip), %rbx
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $31, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_67(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_67(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
.L31_7:
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -120(%rbp), %rax
    movq %rax, -128(%rbp)
    movq -136(%rbp), %rax
    movq -128(%rbp), %r10
    movq %rax, (%r10)
    movq -128(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq $72, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L31_9
    jmp .L31_8
.L31_9:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r14, %rdi
    movq -128(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L31_8:
    jmp .L31_3
.L31_2:
.L31_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_Owner_0g1_json_Value_11trace_owner
    .type lb_interop_Owner_0g1_json_Value_11trace_owner, @function
    .weak lb_interop_Owner_0g1_json_Value_11trace_owner
lb_interop_Owner_0g1_json_Value_11trace_owner:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    movq %rsi, -64(%rbp)
    movq %rdx, -80(%rbp)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $185, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L32_1
    jmp .L32_2
.L32_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L32_4:
    jmp .L32_3
.L32_2:
.L32_3:
    movq $160, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L32_8
    jmp .L32_6
.L32_8:
.L32_5:
    movq $120, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $24, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L32_12
    jmp .L32_10
.L32_12:
.L32_9:
    leaq -64(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -80(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r14, %rdx
    movq %r13, %r11
    call *%r11
    jmp .L32_11
.L32_10:
.L32_11:
    jmp .L32_7
.L32_6:
.L32_7:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_Reference_0g1_json_Value_init
    .type lb_interop_Reference_0g1_json_Value_init, @function
    .weak lb_interop_Reference_0g1_json_Value_init
lb_interop_Reference_0g1_json_Value_init:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -24(%rbp)
    movq %rsi, -40(%rbp)
    leaq -24(%rbp), %r10
    movq (%r10), %r12
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_11check_alive@PLT
    movq %r12, %r10
    movq %rbx, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_11close_owner_0g1_json_Value
    .type lb_interop_11close_owner_0g1_json_Value, @function
    .weak lb_interop_11close_owner_0g1_json_Value
lb_interop_11close_owner_0g1_json_Value:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_ownership_11check_alive@PLT
    movq $184, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L34_1
    jmp .L34_2
.L34_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L34_4:
    jmp .L34_3
.L34_2:
.L34_3:
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $192, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L34_6
.L34_5:
    movq %rbx, %rdi
    call lb_interop_13dispose_owner_0g1_json_Value@PLT
    jmp .L34_7
.L34_6:
.L34_7:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_13dispose_owner_0g1_json_Value
    .type lb_interop_13dispose_owner_0g1_json_Value, @function
    .weak lb_interop_13dispose_owner_0g1_json_Value
lb_interop_13dispose_owner_0g1_json_Value:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $185, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L35_1
    jmp .L35_2
.L35_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L35_4:
    jmp .L35_3
.L35_2:
.L35_3:
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $160, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L35_8
    jmp .L35_6
.L35_8:
.L35_5:
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $16, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %rdi
    movq %r12, %r11
    call *%r11
    jmp .L35_7
.L35_6:
.L35_7:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_json_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "JSON value"
.Ltext_1:
    .asciz "JSON exceeds its configured byte limit"
.Ltext_2:
    .asciz "division by zero"
.Ltext_3:
    .asciz "src/std/json.lucb:23:13"
.Ltext_4:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_5:
    .asciz "memory.unset"
.Ltext_6:
    .asciz "src/std/json.lucb:26:9"
.Ltext_7:
    .asciz "memory.exhausted"
.Ltext_8:
    .asciz "src/std/json.lucb:29:13"
.Ltext_9:
    .asciz "JSON size overflow"
.Ltext_10:
    .asciz "src/std/json.lucb:35:9"
.Ltext_11:
    .asciz "index out of bounds"
.Ltext_12:
    .asciz "src/std/json.lucb:39:9"
.Ltext_13:
    .asciz "unreachable"
.Ltext_14:
    .asciz "src/std/json.lucb:43:13"
.Ltext_15:
    .asciz "\""
.Ltext_16:
    .asciz "0123456789abcdef"
.Ltext_17:
    .asciz "shift count out of range"
.Ltext_18:
    .asciz "src/std/json.lucb:60:13"
.Ltext_19:
    .asciz "JSON byte limit must be between 2 and 64 MiB"
.Ltext_20:
    .asciz "{}"
.Ltext_21:
    .asciz "src/std/json.lucb:87:9"
.Ltext_22:
    .asciz "src/std/json.lucb:90:9"
.Ltext_23:
    .asciz "src/std/json.lucb:92:9"
.Ltext_24:
    .asciz "src/std/json.lucb:93:9"
.Ltext_25:
    .asciz "src/std/json.lucb:94:9"
.Ltext_26:
    .asciz "src/std/json.lucb:97:9"
.Ltext_27:
    .asciz "src/std/json.lucb:104:9"
.Ltext_28:
    .asciz "src/std/json.lucb:110:9"
.Ltext_29:
    .asciz "memory.exhausted: the formatted text does not fit its buffer"
.Ltext_30:
    .asciz "src/std/json.lucb:114:9"
.Ltext_31:
    .asciz "JSON numbers must be finite"
.Ltext_32:
    .asciz "src/std/json.lucb:120:9"
.Ltext_33:
    .asciz "true"
.Ltext_34:
    .asciz "false"
.Ltext_35:
    .asciz "src/std/json.lucb:123:9"
.Ltext_36:
    .asciz "null"
.Ltext_37:
    .asciz "src/std/json.lucb:126:9"
.Ltext_38:
    .asciz "src/std/json.lucb:130:9"
.Ltext_39:
    .asciz "JSON operation does not match the container type"
.Ltext_40:
    .asciz "src/std/json.lucb:141:17"
.Ltext_41:
    .asciz "src/std/json.lucb:142:21"
.Ltext_42:
    .asciz "JSON object already contains this key"
.Ltext_43:
    .asciz "src/std/json.lucb:144:21"
.Ltext_44:
    .asciz ","
.Ltext_45:
    .asciz ":"
.Ltext_46:
    .asciz "JSON key size overflow"
.Ltext_47:
    .asciz "src/std/json.lucb:161:9"
.Ltext_48:
    .asciz "src/std/json.lucb:162:9"
.Ltext_49:
    .asciz "src/std/json.lucb:164:9"
.Ltext_50:
    .asciz "src/std/json.lucb:166:13"
.Ltext_51:
    .asciz "src/std/json.lucb:167:13"
.Ltext_52:
    .asciz "src/std/json.lucb:168:13"
.Ltext_53:
    .asciz "src/std/json.lucb:169:13"
.Ltext_54:
    .asciz "src/std/json.lucb:170:9"
.Ltext_55:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_56:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_57:
    .asciz "null_foreign"
.Ltext_58:
    .asciz "src/std/interop/reference.lucb:17:9"
.Ltext_59:
    .asciz "a native object is closed"
.Ltext_60:
    .asciz "a native object has not been initialized"
.Ltext_61:
    .asciz "src/std/interop/reference.lucb:30:9"
.Ltext_62:
    .asciz "this native type requires the process main thread"
.Ltext_63:
    .asciz "native ownership has already been published or cancelled"
.Ltext_64:
    .asciz "src/std/interop/object.lucb:82:9"
.Ltext_65:
    .asciz "src/std/interop/object.lucb:86:9"
.Ltext_66:
    .asciz "native storage has no allocator"
.Ltext_67:
    .asciz "src/std/interop/object.lucb:37:13"
.Ltext_68:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_json_invalid
    .type lb_json_invalid, @object
    .p2align 2
lb_json_invalid:
    .zero 4

    .bss
    .globl lb_json_14limit_exceeded
    .type lb_json_14limit_exceeded, @object
    .p2align 2
lb_json_14limit_exceeded:
    .zero 4

    .bss
    .globl lb_json_10value_type
    .type lb_json_10value_type, @object
    .p2align 3
lb_json_10value_type:
    .zero 40

    .section .note.GNU-stack,"",@progbits
