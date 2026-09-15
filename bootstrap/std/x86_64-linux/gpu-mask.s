    .text

    .p2align 4
    .globl lb_gpu_mask_0init
    .type lb_gpu_mask_0init, @function
lb_gpu_mask_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_gpu_11canvas_mask
    .type lb_gpu_11canvas_mask, @function
lb_gpu_11canvas_mask:
    pushq %rbp
    movq %rsp, %rbp
    subq $1120, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    leaq -112(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movl %r8d, -128(%rbp)
    movl %r9d, -144(%rbp)
    movsd %xmm0, -232(%rbp)
    movsd %xmm1, -248(%rbp)
    leaq 16(%rbp), %r10
    leaq -176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 48(%rbp), %r10
    leaq -200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 72(%rbp), %r10
    leaq -216(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -200(%rbp), %rax
    movq %rax, -896(%rbp)
    subq $32, %rsp
    movq -896(%rbp), %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq -280(%rbp), %rdi
    call lb_gpu_11check_color@PLT
    addq $32, %rsp
    leaq -280(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_2
    jmp .L1_1
.L1_2:
    leaq -80(%rbp), %rbx
    movq %r13, %r10
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
.L1_1:
    leaq -128(%rbp), %r12
    movq %r12, %r10
    movl (%r10), %eax
    movl %eax, -904(%rbp)
    movl -904(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L1_69
    jmp .L1_7
.L1_69:
    movl %r13d, %r14d
    jmp .L1_8
.L1_7:
    leaq -144(%rbp), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L1_8:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L1_70
    jmp .L1_9
.L1_70:
    movl %r13d, %r14d
    jmp .L1_10
.L1_9:
    movl -904(%rbp), %eax
    movl $16384, %ecx
    cmpl %ecx, %eax
    seta %al
    movzbl %al, %r14d
.L1_10:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L1_71
    jmp .L1_11
.L1_71:
    movl %r13d, %r14d
    jmp .L1_12
.L1_11:
    leaq -144(%rbp), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movl $16384, %ecx
    cmpl %ecx, %r13d
    seta %al
    movzbl %al, %r14d
.L1_12:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L1_72
    jmp .L1_13
.L1_72:
    movl %r13d, %r14d
    jmp .L1_14
.L1_13:
    leaq -112(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movl -904(%rbp), %eax
    movl %eax, %r14d
    leaq -144(%rbp), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movl %r15d, %r15d
    imulq %r15, %r14
    cmpq %r14, %r13
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L1_14:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L1_4
    jmp .L1_5
.L1_4:
    leaq -80(%rbp), %rbx
    leaq lb_gpu_16invalid_geometry(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_1(%rip), %r12
    leaq -296(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $65, %rax
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
.L1_5:
.L1_6:
    leaq -176(%rbp), %rax
    movq %rax, -912(%rbp)
    movq -912(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, -920(%rbp)
    movq $0, %rax
    movq %rax, %xmm12
    movsd -920(%rbp), %xmm8
    ucomisd %xmm12, %xmm8
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_73
    jmp .L1_19
.L1_73:
    movl %r14d, %r15d
    jmp .L1_20
.L1_19:
    movq -912(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movsd (%r10), %xmm13
    ucomisd %xmm13, %xmm12
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %r15d
.L1_20:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L1_74
    jmp .L1_21
.L1_74:
    movl %r14d, %r15d
    jmp .L1_22
.L1_21:
    leaq -216(%rbp), %r14
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L1_22:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L1_75
    jmp .L1_23
.L1_75:
    movl %r14d, %r15d
    jmp .L1_24
.L1_23:
    leaq -216(%rbp), %r14
    movq $12, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L1_24:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L1_16
    jmp .L1_17
.L1_16:
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
.L1_17:
.L1_18:
    leaq -112(%rbp), %rax
    movq %rax, -928(%rbp)
    movq -928(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, -936(%rbp)
    movq -936(%rbp), %rax
    movq $3, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_22(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
.L1_27:
    movq $4, %rcx
    movq %r12, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, -944(%rbp)
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -952(%rbp)
    movq -952(%rbp), %rax
    movq $64, %rcx
    addq %rcx, %rax
    movq %rax, -960(%rbp)
    movq -960(%rbp), %r10
    movq (%r10), %r13
    movq $4194304, %rax
    movq %r13, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_22(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -944(%rbp), %rax
    cmpq %r13, %rax
    jbe .L1_29
.L1_28:
    leaq -80(%rbp), %rbx
    leaq lb_gpu_13command_limit(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_5(%rip), %r12
    leaq -312(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $50, %rax
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
.L1_29:
.L1_30:
    movq -960(%rbp), %r10
    movq (%r10), %r12
    movq -944(%rbp), %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_22(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -968(%rbp)
    movq -952(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, -976(%rbp)
    movq -976(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -984(%rbp)
    movq -984(%rbp), %r10
    movq (%r10), %r13
    movq -968(%rbp), %rax
    cmpq %r13, %rax
    jbe .L1_33
.L1_32:
    movq -984(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_22(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq $1024, %rdi
    movq %r13, %rsi
    call lb_gpu_10canvas_max@PLT
    movq %rax, %r13
    movq $4194304, %rdi
    movq %r13, %rsi
    call lb_gpu_10canvas_min@PLT
    movq %rax, %r13
    movq -968(%rbp), %rdi
    movq %r13, %rsi
    call lb_gpu_10canvas_max@PLT
    movq %rax, -992(%rbp)
    leaq -328(%rbp), %rax
    movq %rax, -1080(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -1088(%rbp)
    leaq -376(%rbp), %rax
    movq %rax, -1096(%rbp)
    movq -992(%rbp), %rax
    movabsq $1152921504606846976, %rcx
    cmpq %rcx, %rax
    jbe .L1_36
.L1_35:
    movq -1096(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $208273409, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    leaq .Ltext_8(%rip), %r15
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $47, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -1096(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L1_37
.L1_36:
    movq -992(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq -1088(%rbp), %r10
    movq (%r10), %r12
    movq -1088(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L1_38
    jmp .L1_39
.L1_39:
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_38:
    movq %r15, %r10
    movq (%r10), %rbx
    movq %r12, %rsi
    movq %r14, %rdx
    movq $4, %rcx
    leaq -400(%rbp), %rdi
    movq %rbx, %r11
    call *%r11
    leaq -400(%rbp), %r13
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq $0, %rcx
    cmpq %rcx, %r14
    setne %al
    movzbl %al, %eax
    movl %eax, -1000(%rbp)
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl -1000(%rbp), %eax
    movl %ebx, %ecx
    movl %eax, %ebx
    andl %ecx, %ebx
    testl %ebx, %ebx
    jne .L1_40
    jmp .L1_41
.L1_40:
    movq -1096(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_11(%rip), %r12
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
    movq -1096(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_37
.L1_41:
    movq %r13, %r10
    movq (%r10), %rbx
    movq -1096(%rbp), %r10
    movq %rbx, (%r10)
    movq -1096(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -992(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -1096(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L1_37:
    movq -1096(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_43
    jmp .L1_42
.L1_43:
    movq -1096(%rbp), %rax
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
.L1_42:
    movq -1096(%rbp), %r10
    movq -1080(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -960(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L1_46
.L1_45:
    movq -960(%rbp), %r10
    movq (%r10), %rbx
    movq -1080(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -976(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %rbx, %r8
    call lb_memory_copy_0g1_u32@PLT
    jmp .L1_47
.L1_46:
.L1_47:
    movq -984(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L1_49
.L1_48:
    leaq -416(%rbp), %rbx
    movq -976(%rbp), %r10
    movq (%r10), %r12
    movq -984(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $4, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_22(%rip), %rsi
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
    movq -1088(%rbp), %r10
    movq (%r10), %r12
    movq -1088(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L1_52
    jmp .L1_51
.L1_52:
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
.L1_51:
    jmp .L1_50
.L1_49:
.L1_50:
    movq -1080(%rbp), %r10
    movq -976(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L1_34
.L1_33:
.L1_34:
    movq -912(%rbp), %r10
    movsd (%r10), %xmm8
    movsd %xmm8, -1008(%rbp)
    movabsq $4611686018427387904, %rax
    movq %rax, %xmm12
    movsd -1008(%rbp), %xmm8
    mulsd %xmm12, %xmm8
    movapd %xmm8, %xmm13
    leaq -232(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm14
    movaps %xmm13, %xmm8
    divsd %xmm14, %xmm8
    movapd %xmm8, %xmm13
    movabsq $4607182418800017408, %rax
    movq %rax, %xmm15
    movaps %xmm13, %xmm8
    subsd %xmm15, %xmm8
    movapd %xmm8, %xmm13
    cvtsd2ss %xmm13, %xmm8
    movss %xmm8, -1016(%rbp)
    movsd -920(%rbp), %xmm8
    movsd -1008(%rbp), %xmm9
    addsd %xmm9, %xmm8
    movapd %xmm8, %xmm13
    movaps %xmm12, %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm13
    movaps %xmm13, %xmm8
    divsd %xmm14, %xmm8
    movapd %xmm8, %xmm13
    movaps %xmm13, %xmm8
    subsd %xmm15, %xmm8
    movapd %xmm8, %xmm13
    cvtsd2ss %xmm13, %xmm8
    movss %xmm8, -1024(%rbp)
    movq -912(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, -1032(%rbp)
    movsd -1032(%rbp), %xmm9
    movaps %xmm12, %xmm8
    mulsd %xmm9, %xmm8
    movapd %xmm8, %xmm13
    leaq -248(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm14
    movaps %xmm13, %xmm8
    divsd %xmm14, %xmm8
    movapd %xmm8, %xmm13
    movaps %xmm15, %xmm8
    subsd %xmm13, %xmm8
    movapd %xmm8, %xmm13
    cvtsd2ss %xmm13, %xmm8
    movss %xmm8, -1040(%rbp)
    movq -912(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, -1048(%rbp)
    movsd -1032(%rbp), %xmm8
    movsd -1048(%rbp), %xmm9
    addsd %xmm9, %xmm8
    movapd %xmm8, %xmm13
    movaps %xmm12, %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    movaps %xmm12, %xmm8
    divsd %xmm14, %xmm8
    movapd %xmm8, %xmm12
    movaps %xmm15, %xmm8
    subsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    cvtsd2ss %xmm12, %xmm8
    movss %xmm8, -1056(%rbp)
    leaq -448(%rbp), %rbx
    leaq -480(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movss -1016(%rbp), %xmm8
    movq %r12, %r10
    movss %xmm8, (%r10)
    movq $4, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movss -1040(%rbp), %xmm8
    movq %r13, %r10
    movss %xmm8, (%r10)
    movq -896(%rbp), %r10
    movsd (%r10), %xmm12
    cvtsd2ss %xmm12, %xmm8
    movaps %xmm8, %xmm12
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movss %xmm12, (%r10)
    movq -896(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    cvtsd2ss %xmm12, %xmm8
    movaps %xmm8, %xmm12
    movq $20, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movss %xmm12, (%r10)
    movq -896(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    cvtsd2ss %xmm12, %xmm8
    movaps %xmm8, %xmm12
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movss %xmm12, (%r10)
    movl $1065353216, %eax
    movd %eax, %xmm12
    movq $12, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movss %xmm12, (%r10)
    movq $28, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movss %xmm12, (%r10)
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -512(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -544(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -576(%rbp), %rax
    movq %rax, -1064(%rbp)
    movq %rbx, %r10
    movq -1064(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movss -1024(%rbp), %xmm8
    movq %r12, %r10
    movss %xmm8, (%r10)
    movss -1024(%rbp), %xmm8
    movq %r13, %r10
    movss %xmm8, (%r10)
    movq $4, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movss -1056(%rbp), %xmm8
    movq %r15, %r10
    movss %xmm8, (%r10)
    movq -1064(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movss -1056(%rbp), %xmm8
    movq %r15, %r10
    movss %xmm8, (%r10)
    leaq -768(%rbp), %r15
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $32, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $64, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $96, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $128, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $160, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq -1064(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -784(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $6, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -216(%rbp), %r12
    leaq -824(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    subq $48, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq %r13, %r10
    leaq 8(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq -952(%rbp), %rsi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r12, %r10
    movq 0(%r10), %r8
    movq 8(%r10), %r9
    leaq -856(%rbp), %rdi
    call lb_gpu_Canvas_triangles@PLT
    addq $48, %rsp
    leaq -856(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_54
    jmp .L1_53
.L1_54:
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
.L1_53:
    movq -928(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rax
    movq %rax, -1104(%rbp)
.L1_56:
    movq -1104(%rbp), %rax
    movq -944(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L1_59
.L1_57:
    movl $0, %eax
    movl %eax, -1112(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L1_60:
    movq $4, %rcx
    cmpq %rcx, %r14
    jae .L1_63
.L1_61:
    movq -1104(%rbp), %rax
    movq $4, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_22(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %r15, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_22(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq -936(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L1_65
.L1_64:
    movq %r15, %r13
    addq %rbx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl %r13d, %r13d
    movq $8, %rcx
    movq %r14, %rax
    imulq %rcx, %rax
    movq %rax, -1072(%rbp)
    movl -1072(%rbp), %eax
    movl %eax, %r12d
    movq $32, %rcx
    cmpq %rcx, %r12
    jb .L1_68
.L1_67:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_15(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_68:
    movl -1072(%rbp), %ecx
    movl %r13d, %r12d
    shll %cl, %r12d
    movl -1112(%rbp), %ecx
    orl %ecx, %r12d
    jmp .L1_66
.L1_65:
    movl -1112(%rbp), %eax
    movl %eax, %r12d
.L1_66:
.L1_62:
    movq $1, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movl %r12d, %eax
    movl %eax, -1112(%rbp)
    movq %r13, %r14
    jmp .L1_60
.L1_63:
    movq -960(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq -1104(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_22(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -976(%rbp), %r10
    movq (%r10), %r13
    movq -984(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r12
    jb 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $4, %rcx
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl -1112(%rbp), %eax
    movq %r12, %r10
    movl %eax, (%r10)
.L1_58:
    movq -1104(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %rax
    movq %rax, -1104(%rbp)
    jmp .L1_56
.L1_59:
    movq -952(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_22(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -952(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jb 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $112, %rcx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $80, %rcx
    addq %rcx, %rbx
    leaq -888(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movsd -1008(%rbp), %xmm8
    cvtsd2ss %xmm8, %xmm8
    movaps %xmm8, %xmm12
    movq %r12, %r10
    movss %xmm12, (%r10)
    movsd -1032(%rbp), %xmm8
    cvtsd2ss %xmm8, %xmm8
    movaps %xmm8, %xmm12
    movq $4, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movss %xmm12, (%r10)
    movsd -920(%rbp), %xmm8
    cvtsd2ss %xmm8, %xmm8
    movaps %xmm8, %xmm12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movss %xmm12, (%r10)
    movsd -1048(%rbp), %xmm8
    cvtsd2ss %xmm8, %xmm8
    movaps %xmm8, %xmm12
    movq $12, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movss %xmm12, (%r10)
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl -904(%rbp), %eax
    movq %r13, %r10
    movl %eax, (%r10)
    leaq -144(%rbp), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq $20, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl %r13d, (%r10)
    movq -960(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $4, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_22(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl %r13d, (%r10)
    movq $28, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq -968(%rbp), %rax
    movq -960(%rbp), %r10
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
    .globl lb_memory_copy_0g1_u32
    .type lb_memory_copy_0g1_u32, @function
    .weak lb_memory_copy_0g1_u32
lb_memory_copy_0g1_u32:
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
    leaq -72(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movq %r8, -88(%rbp)
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -56(%rbp), %r12
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
    leaq -72(%rbp), %r13
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
    leaq .Ltext_18(%rip), %r13
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_19(%rip), %r13
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
    leaq -72(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %rax
    movq $4, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_22(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %r13, %rdi
    movq %r14, %rsi
    movq %r15, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L2_9
    jmp .L2_10
.L2_10:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_21(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_9:
    jmp .L2_8
.L2_7:
.L2_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_gpu_mask_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/gpu/mask.lucb:17:5"
.Ltext_1:
    .asciz "coverage dimensions must match tightly packed pixels, in 1..16384"
.Ltext_2:
    .asciz "src/std/gpu/mask.lucb:21:5"
.Ltext_3:
    .asciz "division by zero"
.Ltext_4:
    .asciz "src/std/gpu/mask.lucb:22:5"
.Ltext_5:
    .asciz "a frame supports at most 16 MiB of coverage images"
.Ltext_6:
    .asciz "src/std/gpu/mask.lucb:24:5"
.Ltext_7:
    .asciz "src/std/gpu/mask.lucb:26:9"
.Ltext_8:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_9:
    .asciz "memory.unset"
.Ltext_10:
    .asciz "src/std/gpu/mask.lucb:27:9"
.Ltext_11:
    .asciz "memory.exhausted"
.Ltext_12:
    .asciz "src/std/gpu/mask.lucb:31:13"
.Ltext_13:
    .asciz "src/std/gpu/mask.lucb:51:13"
.Ltext_14:
    .asciz "src/std/gpu/mask.lucb:53:17"
.Ltext_15:
    .asciz "shift count out of range"
.Ltext_16:
    .asciz "src/std/gpu/mask.lucb:54:9"
.Ltext_17:
    .asciz "src/std/gpu/mask.lucb:55:5"
.Ltext_18:
    .asciz "index out of bounds"
.Ltext_19:
    .asciz "src/std/memory.lucb:326:9"
.Ltext_20:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_21:
    .asciz "null_foreign"
.Ltext_22:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
