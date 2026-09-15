    .text

    .p2align 4
    .globl lb_strings_numbers_0init
    .type lb_strings_numbers_0init, @function
lb_strings_numbers_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_strings_9parse_i64
    .type lb_strings_9parse_i64, @function
lb_strings_9parse_i64:
    pushq %rbp
    movq %rsp, %rbp
    subq $464, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -72(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    movl %edx, -88(%rbp)
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %eax
    movl %eax, -304(%rbp)
    movl -304(%rbp), %eax
    movl $2, %ecx
    cmpl %ecx, %eax
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_41
    jmp .L1_4
.L1_41:
    movl %r12d, %r13d
    jmp .L1_5
.L1_4:
    movl -304(%rbp), %eax
    movl $36, %ecx
    cmpl %ecx, %eax
    seta %al
    movzbl %al, %r13d
.L1_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_42
    jmp .L1_6
.L1_42:
    movl %r12d, %r13d
    jmp .L1_7
.L1_6:
    leaq -72(%rbp), %r12
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
.L1_7:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_1
    jmp .L1_2
.L1_1:
    leaq -104(%rbp), %rbx
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
.L1_8:
    jmp .L1_3
.L1_2:
.L1_3:
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -312(%rbp)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -320(%rbp)
    movq $0, %rax
    movq -320(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_30(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -312(%rbp), %r10
    movzbl (%r10), %r14d
    movl $45, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_43
    jmp .L1_12
.L1_43:
    movl %r14d, %r15d
    jmp .L1_13
.L1_12:
    movq -312(%rbp), %r10
    movzbl (%r10), %r14d
    movl $43, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L1_13:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L1_9
    jmp .L1_10
.L1_9:
    movq -312(%rbp), %r10
    movzbl (%r10), %r14d
    movl $45, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movq $1, %rax
    movq %rax, %r15
    jmp .L1_11
.L1_10:
    movq $0, %rax
    movq %rax, %r15
    movl $0, %eax
    movl %eax, %r14d
.L1_11:
    movq -320(%rbp), %rax
    cmpq %r15, %rax
    jne .L1_15
.L1_14:
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
.L1_17:
    jmp .L1_16
.L1_15:
.L1_16:
    leaq -128(%rbp), %rax
    movq %rax, -448(%rbp)
    movq -448(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, -328(%rbp)
    movl -304(%rbp), %eax
    movl %eax, %eax
    movq %rax, -336(%rbp)
    leaq -168(%rbp), %rax
    movq %rax, -344(%rbp)
    leaq -184(%rbp), %rax
    movq %rax, -456(%rbp)
    movq -456(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -352(%rbp)
    movzbl %r14b, %eax
    movl %eax, -360(%rbp)
    leaq -248(%rbp), %rax
    movq %rax, -400(%rbp)
    leaq -264(%rbp), %rax
    movq %rax, -408(%rbp)
    movq -408(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -416(%rbp)
    leaq -216(%rbp), %rax
    movq %rax, -424(%rbp)
    leaq -224(%rbp), %rax
    movq %rax, -368(%rbp)
    leaq -240(%rbp), %rax
    movq %rax, -376(%rbp)
    movq -376(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -384(%rbp)
    leaq -216(%rbp), %rax
    movq %rax, -392(%rbp)
    leaq -216(%rbp), %r12
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -432(%rbp)
    movq %r15, %r12
    movq $0, %rax
    movq %rax, -440(%rbp)
.L1_18:
    movq -320(%rbp), %rcx
    cmpq %rcx, %r12
    jae .L1_20
.L1_19:
    movq -312(%rbp), %rax
    movq %rax, %r14
    addq %r12, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl %r14d, %edi
    call lb_strings_13integer_digit@PLT
    leaq -128(%rbp), %r10
    movq %rax, 0(%r10)
    movq -328(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L1_21
    jmp .L1_22
.L1_21:
    movq -448(%rbp), %r10
    movl (%r10), %r14d
    jmp .L1_23
.L1_22:
    leaq -144(%rbp), %rbx
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
.L1_24:
.L1_23:
    movl -304(%rbp), %ecx
    cmpl %ecx, %r14d
    jb .L1_26
.L1_25:
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
.L1_28:
    jmp .L1_27
.L1_26:
.L1_27:
    movq -440(%rbp), %rdi
    movq -336(%rbp), %rsi
    movl $64, %edx
    movq -344(%rbp), %rcx
    call lb_core_6qmul_s@PLT
    movl %eax, %r15d
    movq -344(%rbp), %r10
    movq (%r10), %rbx
    movq -456(%rbp), %r10
    movq %rbx, (%r10)
    movq -352(%rbp), %r10
    movb %r15b, (%r10)
    movq -352(%rbp), %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L1_29
    jmp .L1_30
.L1_29:
    jmp .L1_31
.L1_30:
    leaq -200(%rbp), %rbx
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
.L1_32:
.L1_31:
    movl -360(%rbp), %eax
    testl %eax, %eax
    jne .L1_33
    jmp .L1_34
.L1_33:
    movl %r14d, %r15d
    movq %rbx, %rdi
    movq %r15, %rsi
    movl $64, %edx
    movq -368(%rbp), %rcx
    call lb_core_6qsub_s@PLT
    movl %eax, %r15d
    movq -368(%rbp), %r10
    movq (%r10), %r13
    movq -376(%rbp), %r10
    movq %r13, (%r10)
    movq -384(%rbp), %r10
    movb %r15b, (%r10)
    movq -376(%rbp), %r10
    movq -392(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L1_35
.L1_34:
    movl %r14d, %r13d
    movq %rbx, %rdi
    movq %r13, %rsi
    movl $64, %edx
    movq -400(%rbp), %rcx
    call lb_core_6qadd_s@PLT
    movl %eax, %r13d
    movq -400(%rbp), %r10
    movq (%r10), %r15
    movq -408(%rbp), %r10
    movq %r15, (%r10)
    movq -416(%rbp), %r10
    movb %r13b, (%r10)
    movq -408(%rbp), %r10
    movq -424(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r15, %r13
.L1_35:
    movq -432(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_36
    jmp .L1_37
.L1_36:
    jmp .L1_38
.L1_37:
    leaq -280(%rbp), %rbx
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
.L1_39:
.L1_38:
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r12
    movq %r13, %rax
    movq %rax, -440(%rbp)
    jmp .L1_18
.L1_20:
    leaq -296(%rbp), %rbx
    movq -440(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
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
.L1_40:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_9parse_u64
    .type lb_strings_9parse_u64, @function
lb_strings_9parse_u64:
    pushq %rbp
    movq %rsp, %rbp
    subq $368, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -72(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    movl %edx, -88(%rbp)
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %eax
    movl %eax, -264(%rbp)
    movl -264(%rbp), %eax
    movl $2, %ecx
    cmpl %ecx, %eax
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L2_36
    jmp .L2_4
.L2_36:
    movl %r12d, %r13d
    jmp .L2_5
.L2_4:
    movl -264(%rbp), %eax
    movl $36, %ecx
    cmpl %ecx, %eax
    seta %al
    movzbl %al, %r13d
.L2_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L2_37
    jmp .L2_6
.L2_37:
    movl %r12d, %r13d
    jmp .L2_7
.L2_6:
    leaq -72(%rbp), %r12
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
.L2_7:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L2_1
    jmp .L2_2
.L2_1:
    leaq -104(%rbp), %rbx
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
.L2_8:
    jmp .L2_3
.L2_2:
.L2_3:
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -272(%rbp)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -280(%rbp)
    movq $0, %rax
    movq -280(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_30(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -272(%rbp), %r10
    movzbl (%r10), %r14d
    movl $43, %ecx
    cmpl %ecx, %r14d
    jne .L2_10
.L2_9:
    movq $1, %rax
    movq %rax, %r14
    jmp .L2_11
.L2_10:
    movq $0, %rax
    movq %rax, %r14
.L2_11:
    movq -280(%rbp), %rax
    cmpq %r14, %rax
    jne .L2_13
.L2_12:
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
.L2_15:
    jmp .L2_14
.L2_13:
.L2_14:
    leaq -128(%rbp), %rax
    movq %rax, -352(%rbp)
    movq -352(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, -288(%rbp)
    movl -264(%rbp), %eax
    movl %eax, %eax
    movq %rax, -296(%rbp)
    leaq -168(%rbp), %rax
    movq %rax, -304(%rbp)
    leaq -184(%rbp), %rax
    movq %rax, -360(%rbp)
    movq -360(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -312(%rbp)
    leaq -208(%rbp), %rax
    movq %rax, -320(%rbp)
    leaq -224(%rbp), %r13
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -328(%rbp)
    movq %r14, %rax
    movq %rax, -336(%rbp)
    movq $0, %rax
    movq %rax, -344(%rbp)
.L2_16:
    movq -336(%rbp), %rax
    movq -280(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L2_18
.L2_17:
    movq -272(%rbp), %rax
    movq -336(%rbp), %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl %r14d, %edi
    call lb_strings_13integer_digit@PLT
    leaq -128(%rbp), %r10
    movq %rax, 0(%r10)
    movq -288(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L2_19
    jmp .L2_20
.L2_19:
    movq -352(%rbp), %r10
    movl (%r10), %r14d
    jmp .L2_21
.L2_20:
    leaq -144(%rbp), %rbx
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
.L2_22:
.L2_21:
    movl -264(%rbp), %ecx
    cmpl %ecx, %r14d
    jb .L2_24
.L2_23:
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
.L2_26:
    jmp .L2_25
.L2_24:
.L2_25:
    movq -344(%rbp), %rdi
    movq -296(%rbp), %rsi
    movl $64, %edx
    movq -304(%rbp), %rcx
    call lb_core_6qmul_u@PLT
    movl %eax, %r12d
    movq -304(%rbp), %r10
    movq (%r10), %rbx
    movq -360(%rbp), %r10
    movq %rbx, (%r10)
    movq -312(%rbp), %r10
    movb %r12b, (%r10)
    movq -312(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_27
    jmp .L2_28
.L2_27:
    jmp .L2_29
.L2_28:
    leaq -200(%rbp), %rbx
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
.L2_30:
.L2_29:
    movl %r14d, %r12d
    movq %rbx, %rdi
    movq %r12, %rsi
    movl $64, %edx
    movq -320(%rbp), %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r12d
    movq -320(%rbp), %r10
    movq (%r10), %r15
    movq %r13, %r10
    movq %r15, (%r10)
    movq -328(%rbp), %r10
    movb %r12b, (%r10)
    movq -328(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_31
    jmp .L2_32
.L2_31:
    jmp .L2_33
.L2_32:
    leaq -240(%rbp), %rbx
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
.L2_34:
.L2_33:
    movq -336(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, -336(%rbp)
    movq %r15, %rax
    movq %rax, -344(%rbp)
    jmp .L2_16
.L2_18:
    leaq -256(%rbp), %rbx
    movq -344(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
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
.L2_35:
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_10format_i64
    .type lb_strings_10format_i64, @function
lb_strings_10format_i64:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -104(%rbp)
    leaq -120(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movl %r8d, -136(%rbp)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    setl %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L3_1
    jmp .L3_2
.L3_1:
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jno 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq $0, %rax
    movq %r13, %rcx
    subq %rcx, %rax
    jno 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    jmp .L3_3
.L3_2:
    movq %rbx, %r13
.L3_3:
    leaq -120(%rbp), %rbx
    leaq -136(%rbp), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %rsi
    movl %r12d, %edx
    movq %rbx, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movl %r14d, %r9d
    leaq -184(%rbp), %rdi
    call lb_strings_14format_integer@PLT
    leaq -184(%rbp), %r14
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_5
    jmp .L3_4
.L3_5:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r12
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_6:
.L3_4:
    leaq -88(%rbp), %rbx
    movq %r14, %r10
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_7:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_10format_u64
    .type lb_strings_10format_u64, @function
lb_strings_10format_u64:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -104(%rbp)
    leaq -120(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movl %r8d, -136(%rbp)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -120(%rbp), %r12
    leaq -136(%rbp), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %rsi
    movl $0, %edx
    movq %r12, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movl %r13d, %r9d
    leaq -184(%rbp), %rdi
    call lb_strings_14format_integer@PLT
    leaq -184(%rbp), %r12
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
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_13integer_digit
    .type lb_strings_13integer_digit, @function
lb_strings_13integer_digit:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movl %edi, -48(%rbp)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $48, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L5_4
    jmp .L5_26
.L5_26:
    movl %r12d, %r13d
    jmp .L5_5
.L5_4:
    movl $57, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L5_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L5_1
    jmp .L5_2
.L5_1:
    movl $48, %ecx
    movl %ebx, %r13d
    subl %ecx, %r13d
    movzbl %r13b, %r12d
    cmpl %r13d, %r12d
    je .L5_6
.L5_7:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_6:
    movl %r13d, %ebx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -32(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_8:
    jmp .L5_3
.L5_2:
.L5_3:
    movl $97, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L5_12
    jmp .L5_27
.L5_27:
    movl %r12d, %r13d
    jmp .L5_13
.L5_12:
    movl $122, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L5_13:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L5_9
    jmp .L5_10
.L5_9:
    movl $97, %ecx
    movl %ebx, %r13d
    subl %ecx, %r13d
    movzbl %r13b, %r12d
    cmpl %r13d, %r12d
    je .L5_14
.L5_15:
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_14:
    movl %r13d, %ebx
    movl $10, %ecx
    addl %ecx, %ebx
    leaq -64(%rbp), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -32(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_16:
    jmp .L5_11
.L5_10:
.L5_11:
    movl $65, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L5_20
    jmp .L5_28
.L5_28:
    movl %r12d, %r13d
    jmp .L5_21
.L5_20:
    movl $90, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L5_21:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L5_17
    jmp .L5_18
.L5_17:
    movl $65, %ecx
    movl %ebx, %r13d
    subl %ecx, %r13d
    movzbl %r13b, %r12d
    cmpl %r13d, %r12d
    je .L5_22
.L5_23:
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_22:
    movl %r13d, %ebx
    movl $10, %ecx
    addl %ecx, %ebx
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -32(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_24:
    jmp .L5_19
.L5_18:
.L5_19:
    leaq -80(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    leaq -32(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_25:
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_14format_integer
    .type lb_strings_14format_integer, @function
lb_strings_14format_integer:
    pushq %rbp
    movq %rsp, %rbp
    subq $384, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -112(%rbp)
    movl %edx, -128(%rbp)
    leaq -144(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    movl %r9d, -160(%rbp)
    leaq -160(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L6_31
    jmp .L6_4
.L6_31:
    movl %r12d, %r13d
    jmp .L6_5
.L6_4:
    movl $36, %ecx
    cmpl %ecx, %ebx
    seta %al
    movzbl %al, %r13d
.L6_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L6_1
    jmp .L6_2
.L6_1:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_13invalid_radix(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_18(%rip), %r13
    leaq -176(%rbp), %r14
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
.L6_2:
.L6_3:
    leaq -192(%rbp), %r12
    leaq .Ltext_19(%rip), %rax
    movq %rax, -336(%rbp)
    leaq -208(%rbp), %r14
    movq -336(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -344(%rbp)
    movq $36, %rax
    movq -344(%rbp), %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -273(%rbp), %rax
    movq %rax, -352(%rbp)
    movq -352(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movb $0, 64(%r11)
    leaq -112(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movl %ebx, %r15d
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %eax
    movl %eax, -360(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L6_7:
.L6_8:
    movq $65, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_30(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -352(%rbp), %rax
    movq %rax, %rbx
    addq %r13, %rbx
    movl -360(%rbp), %eax
    testl %eax, %eax
    jne .L6_10
    jmp .L6_11
.L6_10:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_21(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_11:
    movq %r14, %rax
    xorl %edx, %edx
    divq %r15
    movq %rdx, %r12
    movq $36, %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_30(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -336(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq %rbx, %r10
    movb %r12b, (%r10)
    movq $1, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl -360(%rbp), %eax
    testl %eax, %eax
    jne .L6_12
    jmp .L6_13
.L6_12:
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_21(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_13:
    movq %r14, %rax
    xorl %edx, %edx
    divq %r15
    movq %rax, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L6_15
.L6_14:
    movq %r12, %rbx
    jmp .L6_9
.L6_15:
.L6_16:
    movq %r12, %r13
    movq %rbx, %r14
    jmp .L6_7
.L6_9:
    leaq -128(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L6_18
    jmp .L6_19
.L6_18:
    movq $65, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_30(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -352(%rbp), %rax
    movq %rax, %r12
    addq %rbx, %r12
    movl $45, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    jmp .L6_20
.L6_19:
    movq %rbx, %r12
.L6_20:
    leaq -144(%rbp), %rax
    movq %rax, -368(%rbp)
    movq -368(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -376(%rbp)
    movq -376(%rbp), %rax
    cmpq %r12, %rax
    jae .L6_22
.L6_21:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_full(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_26(%rip), %r13
    leaq -296(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $49, %rax
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
.L6_22:
.L6_23:
    movq -368(%rbp), %r10
    movq (%r10), %r14
    movq $0, %rax
    movq %rax, %r15
.L6_25:
    cmpq %r12, %r15
    jae .L6_27
.L6_26:
    movq %r14, %r13
    addq %r15, %r13
    movq %r12, %rbx
    subq %r15, %rbx
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq $65, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_30(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -352(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq %r13, %r10
    movb %bl, (%r10)
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r15
    jmp .L6_25
.L6_27:
    movq -368(%rbp), %r10
    movq (%r10), %r13
    movq -376(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_30(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r12
    jb 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_30(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r12, %rax
    jbe .L6_28
.L6_29:
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_30(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_28:
    leaq -312(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq -328(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    leaq -96(%rbp), %r14
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
    movq %r14, %rsi
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

    .section .init_array,"aw"
    .p2align 3
    .quad lb_strings_numbers_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/strings/numbers.lucb:9:5"
.Ltext_1:
    .asciz "src/std/strings/numbers.lucb:10:9"
.Ltext_2:
    .asciz "src/std/strings/numbers.lucb:17:9"
.Ltext_3:
    .asciz "src/std/strings/numbers.lucb:22:9"
.Ltext_4:
    .asciz "unreachable"
.Ltext_5:
    .asciz "src/std/strings/numbers.lucb:23:5"
.Ltext_6:
    .asciz "src/std/strings/numbers.lucb:30:5"
.Ltext_7:
    .asciz "src/std/strings/numbers.lucb:35:9"
.Ltext_8:
    .asciz "src/std/strings/numbers.lucb:40:9"
.Ltext_9:
    .asciz "src/std/strings/numbers.lucb:41:5"
.Ltext_10:
    .asciz "src/std/strings/numbers.lucb:47:5"
.Ltext_11:
    .asciz "src/std/strings/numbers.lucb:48:5"
.Ltext_12:
    .asciz "src/std/strings/numbers.lucb:53:5"
.Ltext_13:
    .asciz "integer overflow"
.Ltext_14:
    .asciz "src/std/strings/numbers.lucb:57:9"
.Ltext_15:
    .asciz "src/std/strings/numbers.lucb:59:9"
.Ltext_16:
    .asciz "src/std/strings/numbers.lucb:61:9"
.Ltext_17:
    .asciz "src/std/strings/numbers.lucb:62:5"
.Ltext_18:
    .asciz "an integer radix must be between 2 and 36"
.Ltext_19:
    .asciz "0123456789abcdefghijklmnopqrstuvwxyz"
.Ltext_20:
    .asciz "src/std/strings/numbers.lucb:72:9"
.Ltext_21:
    .asciz "division by zero"
.Ltext_22:
    .asciz "src/std/strings/numbers.lucb:73:9"
.Ltext_23:
    .asciz "src/std/strings/numbers.lucb:74:9"
.Ltext_24:
    .asciz "src/std/strings/numbers.lucb:78:9"
.Ltext_25:
    .asciz "src/std/strings/numbers.lucb:79:9"
.Ltext_26:
    .asciz "the destination cannot hold the formatted integer"
.Ltext_27:
    .asciz "src/std/strings/numbers.lucb:84:9"
.Ltext_28:
    .asciz "src/std/strings/numbers.lucb:85:9"
.Ltext_29:
    .asciz "src/std/strings/numbers.lucb:86:5"
.Ltext_30:
    .asciz "index out of bounds"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
