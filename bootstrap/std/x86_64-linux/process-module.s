    .text

    .p2align 4
    .globl lb_process_module_0init
    .type lb_process_module_0init, @function
lb_process_module_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    leaq lb_process_7poll_in(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movw %ax, (%r10)
    leaq lb_process_12poll_hang_up(%rip), %rbx
    movl $16, %eax
    movq %rbx, %r10
    movw %ax, (%r10)
    leaq lb_process_10poll_error(%rip), %rbx
    movl $8, %eax
    movq %rbx, %r10
    movw %ax, (%r10)
    leaq lb_process_9set_flags(%rip), %rbx
    movl $4, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L0_1
    jmp .L0_2
.L0_1:
    movl $4, %eax
    movl %eax, %r12d
    jmp .L0_3
.L0_2:
    movl $2048, %eax
    movl %eax, %r12d
.L0_3:
    leaq lb_process_12non_blocking(%rip), %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq %rbx, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L0_4
    jmp .L0_5
.L0_4:
    movl $35, %eax
    movl %eax, %ebx
    jmp .L0_6
.L0_5:
    movl $11, %eax
    movl %eax, %ebx
.L0_6:
    leaq lb_process_11would_block(%rip), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    leaq lb_process_failed(%rip), %r12
    movl $208273416, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_process_Capture_pull
    .type lb_process_Capture_pull, @function
lb_process_Capture_pull:
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
    leaq -88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -296(%rbp)
    movq -296(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -248(%rbp)
    movq -248(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -256(%rbp)
    movq -256(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -264(%rbp)
    movq -296(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -272(%rbp)
    movq -272(%rbp), %r10
    movq (%r10), %r15
    movq -264(%rbp), %rax
    movq %r15, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_62(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq $256, %rcx
    cmpq %rcx, %r15
    jae .L1_2
.L1_1:
    movq -264(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L1_5
.L1_4:
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r15
    leaq -136(%rbp), %r14
.L1_8:
    movq %r15, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L1_10
    jmp .L1_11
.L1_11:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_10:
    movq %r13, %r10
    movq (%r10), %r15
    movq %r12, %rsi
    movq $1024, %rdx
    movq $1, %rcx
    leaq -160(%rbp), %rdi
    movq %r15, %r11
    call *%r11
    leaq -160(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl $1, %ecx
    andl %ecx, %r15d
    testl %r15d, %r15d
    jne .L1_12
    jmp .L1_13
.L1_12:
    movq $16, %rcx
    movq %r14, %rbx
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
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_9
.L1_13:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $1024, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L1_9:
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_15
    jmp .L1_14
.L1_15:
    movq $16, %rcx
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
.L1_14:
    movq %r14, %r10
    movq -248(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L1_6
.L1_5:
    movq -264(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_62(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -248(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %rcx
    leaq -208(%rbp), %rdi
    call lb_memory_grow@PLT
    leaq -208(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_18
    jmp .L1_17
.L1_18:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
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
    movq %r12, %r10
    movq -248(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L1_6:
    jmp .L1_3
.L1_2:
.L1_3:
    movq -296(%rbp), %r10
    movslq (%r10), %rax
    movq %rax, -280(%rbp)
    movq -248(%rbp), %r10
    movq (%r10), %r13
    movq -256(%rbp), %r10
    movq (%r10), %r14
    movq -272(%rbp), %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r14
    jb 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r14, %r15
    jbe .L1_20
.L1_21:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_20:
    movq %r13, %r12
    addq %r15, %r12
    movq %r14, %rax
    subq %r15, %rax
    movq %rax, -288(%rbp)
    leaq -224(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq -288(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movl -280(%rbp), %edi
    movq %r12, %rsi
    movq -288(%rbp), %rdx
    call read@PLT
    movq %rax, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L1_23
.L1_22:
    movq -296(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_24
.L1_23:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jle .L1_26
.L1_25:
    movq -272(%rbp), %r10
    movq (%r10), %r12
    movq %rbx, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_62(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -272(%rbp), %r10
    movq %r12, (%r10)
    jmp .L1_27
.L1_26:
    call lb_c_errno@PLT
    movl %eax, %ebx
    leaq lb_c_interrupted(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    cmpl %r12d, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L1_31
    jmp .L1_34
.L1_34:
    movl %ebx, %r12d
    jmp .L1_32
.L1_31:
    call lb_c_errno@PLT
    movl %eax, %ebx
    leaq lb_process_11would_block(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    cmpl %r12d, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L1_32:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L1_28
    jmp .L1_29
.L1_28:
    leaq -80(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_9(%rip), %r12
    leaq -240(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $35, %rax
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
.L1_27:
.L1_24:
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
    .globl lb_process_Capture_take
    .type lb_process_Capture_take, @function
lb_process_Capture_take:
    pushq %rbp
    movq %rsp, %rbp
    subq $336, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -104(%rbp)
    leaq -104(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -304(%rbp)
    leaq -120(%rbp), %rax
    movq %rax, -280(%rbp)
    movq -280(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq -304(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -288(%rbp)
    movq -288(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L2_2
.L2_1:
    movq -304(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jbe .L2_5
.L2_4:
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r14
    leaq -136(%rbp), %r15
    movq %r12, %r10
    movq (%r10), %rbx
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq %r14, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_8
    jmp .L2_7
.L2_8:
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %rdi
    movq %r15, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L2_7:
    movq -280(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_6
.L2_5:
.L2_6:
    leaq -152(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $0, %rax
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
.L2_9:
    jmp .L2_3
.L2_2:
.L2_3:
    leaq -168(%rbp), %rax
    movq %rax, -312(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -320(%rbp)
    leaq -216(%rbp), %rax
    movq %rax, -328(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r13
    jbe .L2_11
.L2_10:
    movq -328(%rbp), %rax
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
    movq -328(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_12
.L2_11:
    movq -320(%rbp), %r10
    movq (%r10), %rbx
    movq -320(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_13
    jmp .L2_14
.L2_14:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_13:
    movq %r14, %r10
    movq (%r10), %r12
    movq %rbx, %rsi
    movq %r13, %rdx
    movq $1, %rcx
    leaq -240(%rbp), %rdi
    movq %r12, %r11
    call *%r11
    leaq -240(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq $0, %rcx
    cmpq %rcx, %r13
    setne %al
    movzbl %al, %eax
    movl %eax, -296(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl -296(%rbp), %eax
    movl %r12d, %ecx
    movl %eax, %r12d
    andl %ecx, %r12d
    testl %r12d, %r12d
    jne .L2_15
    jmp .L2_16
.L2_15:
    movq -328(%rbp), %rax
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
    movq -328(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_12
.L2_16:
    movq %r15, %r10
    movq (%r10), %rbx
    movq -328(%rbp), %r10
    movq %rbx, (%r10)
    movq -328(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq -328(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L2_12:
    movq -328(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_18
    jmp .L2_17
.L2_18:
    movq -328(%rbp), %rax
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
.L2_19:
.L2_17:
    movq -328(%rbp), %r10
    movq -312(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -304(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -288(%rbp), %r10
    movq (%r10), %r12
    movq -312(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r12, %r8
    call lb_memory_copy_0g1_u8@PLT
    leaq -256(%rbp), %r12
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq -320(%rbp), %r10
    movq (%r10), %r13
    movq -320(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_21
    jmp .L2_20
.L2_21:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r13, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r11
    call *%r11
.L2_20:
    movq -280(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -312(%rbp), %r10
    movq (%r10), %r12
    movq -312(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq -272(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    leaq -96(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
.L2_22:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_Capture_drop
    .type lb_process_Capture_drop, @function
lb_process_Capture_drop:
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
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L3_2
.L3_1:
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    leaq -64(%rbp), %r14
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq %r13, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L3_5
    jmp .L3_4
.L3_5:
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r15, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L3_4:
    leaq -80(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L3_3
.L3_2:
.L3_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_process_run
    .type lb_process_run, @function
lb_process_run:
    pushq %rbp
    movq %rsp, %rbp
    subq $256, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -128(%rbp)
    leaq -144(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movq %r8, -160(%rbp)
    leaq 16(%rbp), %r10
    leaq -184(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq -128(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -144(%rbp), %r12
    leaq -160(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq -184(%rbp), %r14
    subq $32, %rsp
    movq %r14, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %rbx, %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r13, %r8
    movq $0, %r9
    leaq -256(%rbp), %rdi
    call lb_process_14run_controlled@PLT
    addq $32, %rsp
    leaq -256(%rbp), %r12
    movq $64, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_2
    jmp .L4_1
.L4_2:
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -112(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $64, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
    leaq -112(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $64, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_14run_controlled
    .type lb_process_14run_controlled, @function
lb_process_14run_controlled:
    pushq %rbp
    movq %rsp, %rbp
    subq $1776, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -136(%rbp)
    leaq -152(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movq %r8, -168(%rbp)
    movq %r9, -208(%rbp)
    leaq 16(%rbp), %r10
    leaq -192(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    call lb_process_19environment_address@PLT
    movq %rax, -1328(%rbp)
    leaq -224(%rbp), %rax
    movq %rax, -1336(%rbp)
    movq -1336(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -192(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L5_4
    jmp .L5_2
.L5_4:
    leaq -240(%rbp), %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L5_1:
    movq -1328(%rbp), %r10
    movq (%r10), %r14
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %rcx
    leaq -288(%rbp), %rdi
    call lb_process_17environment_posix@PLT
    leaq -288(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L5_6
    jmp .L5_5
.L5_6:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq -120(%rbp), %r12
    movq $40, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $64, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
    movq %r15, %r10
    movq -1336(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L5_3
.L5_2:
.L5_3:
    leaq -304(%rbp), %rax
    movq %rax, -1688(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -1696(%rbp)
    leaq -152(%rbp), %rax
    movq %rax, -1344(%rbp)
    movq -1344(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1352(%rbp)
    movq -1352(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1360(%rbp)
    movq -1360(%rbp), %rax
    movq $2, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_62(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -1704(%rbp)
    leaq -352(%rbp), %rax
    movq %rax, -1712(%rbp)
    movq -1704(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L5_9
.L5_8:
    movq -1712(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $208273409, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    leaq .Ltext_1(%rip), %r15
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $47, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -1712(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L5_10
.L5_9:
    movq -1704(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq -1696(%rbp), %r10
    movq (%r10), %r12
    movq -1696(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L5_11
    jmp .L5_12
.L5_12:
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_11:
    movq %r15, %r10
    movq (%r10), %rbx
    movq %r12, %rsi
    movq %r13, %rdx
    movq $8, %rcx
    leaq -376(%rbp), %rdi
    movq %rbx, %r11
    call *%r11
    leaq -376(%rbp), %r14
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq $0, %rcx
    cmpq %rcx, %r13
    setne %al
    movzbl %al, %eax
    movl %eax, -1368(%rbp)
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl -1368(%rbp), %eax
    movl %ebx, %ecx
    movl %eax, %ebx
    andl %ecx, %ebx
    testl %ebx, %ebx
    jne .L5_13
    jmp .L5_14
.L5_13:
    movq -1712(%rbp), %rax
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
    movq -1712(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L5_10
.L5_14:
    movq %r14, %r10
    movq (%r10), %rbx
    movq -1712(%rbp), %r10
    movq %rbx, (%r10)
    movq -1712(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -1704(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -1712(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L5_10:
    movq -1712(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_16
    jmp .L5_15
.L5_16:
    movq -1712(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -120(%rbp), %r12
    movq $40, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $64, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -1336(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_5c_str_0o@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L5_15:
    movq -1712(%rbp), %r10
    movq -1688(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1688(%rbp), %r10
    movq (%r10), %rbx
    movq -1688(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -1376(%rbp)
    movq $0, %rax
    movq -1376(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    leaq -136(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -1384(%rbp)
    movq -1384(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -1344(%rbp), %r10
    movq (%r10), %r14
    movq $0, %rax
    movq %rax, %r15
.L5_18:
    movq -1360(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L5_20
.L5_19:
    movq $1, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -1392(%rbp)
    movq -1392(%rbp), %rax
    movq -1376(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1392(%rbp), %rax
    movq $8, %rcx
    imulq %rcx, %rax
    movq %rax, -1400(%rbp)
    movq -1400(%rbp), %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -1408(%rbp)
    movq $8, %rcx
    movq %r15, %r13
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq -1408(%rbp), %r10
    movq %r13, (%r10)
    movq -1392(%rbp), %rax
    movq %rax, %r15
    jmp .L5_18
.L5_20:
    movq -1360(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_62(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -1376(%rbp), %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq -384(%rbp), %rax
    movq %rax, -1416(%rbp)
    movq -1416(%rbp), %r11
    movq $0, 0(%r11)
    leaq -392(%rbp), %rax
    movq %rax, -1424(%rbp)
    movq -1424(%rbp), %r11
    movq $0, 0(%r11)
    movq -1416(%rbp), %rdi
    call pipe@PLT
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L5_22
.L5_21:
    leaq -408(%rbp), %r13
    movq -1376(%rbp), %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_62(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq -1696(%rbp), %r10
    movq (%r10), %r14
    movq -1696(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L5_25
    jmp .L5_24
.L5_25:
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
.L5_24:
    leaq -120(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_23(%rip), %r13
    leaq -424(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $3, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -1336(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_5c_str_0o@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L5_22:
.L5_23:
    movq -1424(%rbp), %rdi
    call pipe@PLT
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L5_28
.L5_27:
    movq -1416(%rbp), %r10
    movslq (%r10), %rax
    movq %rax, -1432(%rbp)
    movl -1432(%rbp), %edi
    call close@PLT
    movl %eax, %r14d
    movq -1416(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, -1440(%rbp)
    movq -1440(%rbp), %r10
    movslq (%r10), %rax
    movq %rax, -1448(%rbp)
    movl -1448(%rbp), %edi
    call close@PLT
    movl %eax, %r13d
    leaq -440(%rbp), %rax
    movq %rax, -1456(%rbp)
    movq -1376(%rbp), %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_62(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq -1456(%rbp), %r10
    movq %rbx, (%r10)
    movq -1456(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq -1696(%rbp), %r10
    movq (%r10), %r14
    movq -1696(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L5_31
    jmp .L5_30
.L5_31:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r14, %rdi
    movq -1456(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L5_30:
    leaq -120(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_23(%rip), %r13
    leaq -456(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $3, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -1336(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_5c_str_0o@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L5_28:
.L5_29:
    call fork@PLT
    movl %eax, -1464(%rbp)
    movl -1464(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jge .L5_34
.L5_33:
    movq -1416(%rbp), %r10
    movslq (%r10), %rax
    movq %rax, -1472(%rbp)
    movl -1472(%rbp), %edi
    call close@PLT
    movl %eax, %r14d
    movq -1416(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, -1480(%rbp)
    movq -1480(%rbp), %r10
    movslq (%r10), %rax
    movq %rax, -1488(%rbp)
    movl -1488(%rbp), %edi
    call close@PLT
    movl %eax, %r13d
    movq -1424(%rbp), %r10
    movslq (%r10), %rax
    movq %rax, -1496(%rbp)
    movl -1496(%rbp), %edi
    call close@PLT
    movl %eax, %r13d
    movq -1424(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, -1504(%rbp)
    movq -1504(%rbp), %r10
    movslq (%r10), %rax
    movq %rax, -1512(%rbp)
    movl -1512(%rbp), %edi
    call close@PLT
    movl %eax, %r13d
    leaq -472(%rbp), %rax
    movq %rax, -1520(%rbp)
    movq -1376(%rbp), %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_62(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq -1520(%rbp), %r10
    movq %rbx, (%r10)
    movq -1520(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq -1696(%rbp), %r10
    movq (%r10), %r14
    movq -1696(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L5_37
    jmp .L5_36
.L5_37:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r14, %rdi
    movq -1520(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L5_36:
    leaq -120(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_23(%rip), %r13
    leaq -488(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $3, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -1336(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_5c_str_0o@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L5_35:
    movl -1464(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jne .L5_40
.L5_39:
    leaq -208(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L5_43
.L5_42:
    movl $0, %edi
    movl $0, %esi
    call setpgid@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L5_46
.L5_45:
    movl $127, %edi
    call _exit@PLT
    jmp .L5_47
.L5_46:
.L5_47:
    leaq .Ltext_32(%rip), %r14
    movq %r14, %rdi
    movl $0, %esi
    movl $0, %eax
    call open@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    setl %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L5_153
    jmp .L5_51
.L5_153:
    movl %r15d, %r12d
    jmp .L5_52
.L5_51:
    movl %r14d, %edi
    movl $0, %esi
    call dup2@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    setl %al
    movzbl %al, %r12d
.L5_52:
    movzbl %r12b, %r15d
    testl %r15d, %r15d
    jne .L5_48
    jmp .L5_49
.L5_48:
    movl $127, %edi
    call _exit@PLT
    jmp .L5_50
.L5_49:
.L5_50:
    movl $2, %ecx
    cmpl %ecx, %r14d
    jle .L5_54
.L5_53:
    movl %r14d, %edi
    call close@PLT
    movl %eax, %r12d
    jmp .L5_55
.L5_54:
.L5_55:
    jmp .L5_44
.L5_43:
.L5_44:
    movq -1416(%rbp), %r10
    movslq (%r10), %r12
    movl %r12d, %edi
    call close@PLT
    movl %eax, %r12d
    movq -1424(%rbp), %r10
    movslq (%r10), %r12
    movl %r12d, %edi
    call close@PLT
    movl %eax, %r12d
    movq -1416(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movslq (%r10), %r14
    movl %r14d, %edi
    movl $1, %esi
    call dup2@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    setl %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L5_154
    jmp .L5_59
.L5_154:
    movl %r14d, %r15d
    jmp .L5_60
.L5_59:
    movq -1424(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movslq (%r10), %r14
    movl %r14d, %edi
    movl $2, %esi
    call dup2@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    setl %al
    movzbl %al, %r15d
.L5_60:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L5_56
    jmp .L5_57
.L5_56:
    movl $127, %edi
    call _exit@PLT
    jmp .L5_58
.L5_57:
.L5_58:
    movq %r12, %r10
    movslq (%r10), %r14
    movl %r14d, %edi
    call close@PLT
    movl %eax, %r12d
    movq -1424(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movslq (%r10), %r14
    movl %r14d, %edi
    call close@PLT
    movl %eax, %r12d
    leaq -168(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rdi
    call strlen@PLT
    movq %rax, %r15
    leaq -504(%rbp), %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $0, %rcx
    cmpq %rcx, %r15
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L5_64
    jmp .L5_155
.L5_155:
    movl %r13d, %r12d
    jmp .L5_65
.L5_64:
    movq %r14, %rdi
    call chdir@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L5_65:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L5_61
    jmp .L5_62
.L5_61:
    movl $127, %edi
    call _exit@PLT
    jmp .L5_63
.L5_62:
.L5_63:
    movq -1336(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L5_67
.L5_66:
    movq -1336(%rbp), %r10
    movq (%r10), %r12
    movq -1328(%rbp), %r10
    movq %r12, (%r10)
    jmp .L5_68
.L5_67:
.L5_68:
    movq -1384(%rbp), %rdi
    movq %rbx, %rsi
    call execvp@PLT
    movl %eax, %r12d
    movl $127, %edi
    call _exit@PLT
    jmp .L5_41
.L5_40:
.L5_41:
    leaq -208(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L5_70
.L5_69:
    movl -1464(%rbp), %edi
    movl -1464(%rbp), %esi
    call setpgid@PLT
    movl %eax, %r13d
    jmp .L5_71
.L5_70:
.L5_71:
    leaq -520(%rbp), %r13
    movq -1376(%rbp), %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_62(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq -1696(%rbp), %r10
    movq (%r10), %r14
    movq -1696(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L5_73
    jmp .L5_72
.L5_73:
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
.L5_72:
    movq -1416(%rbp), %rax
    movq $4, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    call close@PLT
    movl %eax, %ebx
    movq -1424(%rbp), %rax
    movq $4, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    call close@PLT
    movl %eax, %ebx
    leaq -536(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -576(%rbp), %rax
    movq %rax, -1528(%rbp)
    leaq -616(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movq -1416(%rbp), %r10
    movslq (%r10), %r15
    movq %r14, %r10
    movl %r15d, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $0, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %r14, %r10
    movq -1528(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    leaq -656(%rbp), %rax
    movq %rax, -1536(%rbp)
    leaq -696(%rbp), %r15
    movq %r15, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movq -1424(%rbp), %r10
    movslq (%r10), %r13
    movq %r15, %r10
    movl %r13d, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r15, %r10
    movq -1536(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    testq %r12, %r12
    jne .L5_77
    jmp .L5_75
.L5_77:
.L5_74:
    movl -1464(%rbp), %esi
    movq -1528(%rbp), %rdx
    movq -1536(%rbp), %rcx
    movq %r12, %r8
    leaq -736(%rbp), %rdi
    call lb_process_15capture_command@PLT
    leaq -736(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_79
    jmp .L5_78
.L5_79:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -120(%rbp), %r12
    movq $40, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $64, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -1536(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1528(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1424(%rbp), %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    call close@PLT
    movl %eax, %ebx
    movq -1416(%rbp), %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    call close@PLT
    movl %eax, %ebx
    movq -1336(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_5c_str_0o@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L5_78:
    movq %r13, %r10
    movslq (%r10), %rbx
    movl %ebx, %eax
    movl %eax, -1760(%rbp)
    jmp .L5_76
.L5_75:
    movl -1464(%rbp), %eax
    leaq -1080(%rbp), %r10
    movl %eax, (%r10)
    movq -1528(%rbp), %rax
    leaq -1096(%rbp), %r10
    movq %rax, (%r10)
    movq -1536(%rbp), %rax
    leaq -1112(%rbp), %r10
    movq %rax, (%r10)
    movq -1528(%rbp), %r10
    movslq (%r10), %rbx
    leaq lb_process_9set_flags(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r13
    leaq lb_process_12non_blocking(%rip), %rax
    movq %rax, -1544(%rbp)
    movq -1544(%rbp), %r10
    movslq (%r10), %r15
    movl %ebx, %edi
    movl %r13d, %esi
    movl %r15d, %edx
    movl $0, %eax
    call fcntl@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    setl %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L5_156
    jmp .L5_105
.L5_156:
    movl %ebx, %r12d
    jmp .L5_106
.L5_105:
    movq -1536(%rbp), %r10
    movslq (%r10), %rbx
    movq %r12, %r10
    movslq (%r10), %r13
    movq -1544(%rbp), %r10
    movslq (%r10), %r15
    movl %ebx, %edi
    movl %r13d, %esi
    movl %r15d, %edx
    movl $0, %eax
    call fcntl@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    setl %al
    movzbl %al, %ebx
    movl %ebx, %r12d
.L5_106:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L5_102
    jmp .L5_103
.L5_102:
    leaq -1064(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_9(%rip), %r12
    leaq -1128(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $35, %rax
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
    movl -1464(%rbp), %edi
    call lb_process_terminate@PLT
    movq %rbx, %r10
    leaq -768(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L5_143
.L5_103:
.L5_104:
    movq -1528(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -1552(%rbp)
    movq -1536(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -1560(%rbp)
    leaq -1144(%rbp), %r13
    leaq -1152(%rbp), %rax
    movq %rax, -1720(%rbp)
    leaq lb_process_7poll_in(%rip), %rax
    movq %rax, -1568(%rbp)
    movq -1720(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, -1576(%rbp)
    movq -1720(%rbp), %rax
    movq $6, %rcx
    addq %rcx, %rax
    movq %rax, -1584(%rbp)
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -1728(%rbp)
    leaq -1160(%rbp), %rax
    movq %rax, -1736(%rbp)
    movq -1536(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -1592(%rbp)
    movq -1736(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, -1600(%rbp)
    movq -1736(%rbp), %rax
    movq $6, %rcx
    addq %rcx, %rax
    movq %rax, -1608(%rbp)
    movq $6, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -1624(%rbp)
    leaq lb_process_12poll_hang_up(%rip), %rax
    movq %rax, -1632(%rbp)
    leaq lb_process_10poll_error(%rip), %rax
    movq %rax, -1640(%rbp)
    leaq -1208(%rbp), %rax
    movq %rax, -1744(%rbp)
    movq -1744(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -1648(%rbp)
    movq -1728(%rbp), %rax
    movq $6, %rcx
    addq %rcx, %rax
    movq %rax, -1656(%rbp)
    leaq lb_process_12poll_hang_up(%rip), %rax
    movq %rax, -1664(%rbp)
    leaq lb_process_10poll_error(%rip), %rax
    movq %rax, -1672(%rbp)
    leaq -1240(%rbp), %rax
    movq %rax, -1752(%rbp)
    movq -1752(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -1680(%rbp)
    leaq lb_c_interrupted(%rip), %rax
    movq %rax, -1616(%rbp)
.L5_108:
    movq -1552(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L5_157
    jmp .L5_111
.L5_157:
    movl %r12d, %r15d
    jmp .L5_112
.L5_111:
    movq -1560(%rbp), %r10
    movzbl (%r10), %r15d
.L5_112:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L5_109
    jmp .L5_110
.L5_109:
    movq -1720(%rbp), %r11
    movq $0, 0(%r11)
    movq -1552(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L5_113
    jmp .L5_114
.L5_113:
    movq -1528(%rbp), %r10
    movslq (%r10), %r12
    jmp .L5_115
.L5_114:
    movl $4294967295, %eax
    movl %eax, %r12d
.L5_115:
    movq -1720(%rbp), %r10
    movl %r12d, (%r10)
    movq -1568(%rbp), %r10
    movswl (%r10), %r15d
    movq -1576(%rbp), %r10
    movw %r15w, (%r10)
    movl $0, %eax
    movq -1584(%rbp), %r10
    movw %ax, (%r10)
    movq -1720(%rbp), %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq -1736(%rbp), %r11
    movq $0, 0(%r11)
    movq -1592(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_116
    jmp .L5_117
.L5_116:
    movq -1536(%rbp), %r10
    movslq (%r10), %rbx
    jmp .L5_118
.L5_117:
    movl $4294967295, %eax
    movl %eax, %ebx
.L5_118:
    movq -1736(%rbp), %r10
    movl %ebx, (%r10)
    movq -1600(%rbp), %r10
    movw %r15w, (%r10)
    movl $0, %eax
    movq -1608(%rbp), %r10
    movw %ax, (%r10)
    movq -1736(%rbp), %r10
    movq -1728(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r13, %rdi
    movl $2, %esi
    movl $4294967295, %edx
    call poll@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jge .L5_120
.L5_119:
    call lb_c_errno@PLT
    movl %eax, %ebx
    movq -1616(%rbp), %r10
    movslq (%r10), %r12
    cmpl %r12d, %ebx
    jne .L5_123
.L5_122:
    jmp .L5_108
.L5_123:
.L5_124:
    leaq -1064(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_9(%rip), %r12
    leaq -1176(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $35, %rax
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
    movl -1464(%rbp), %edi
    call lb_process_terminate@PLT
    movq %rbx, %r10
    leaq -768(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L5_143
.L5_120:
.L5_121:
    movq -1552(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_130
    jmp .L5_158
.L5_158:
    movl %ebx, %r12d
    jmp .L5_131
.L5_130:
    movq -1624(%rbp), %r10
    movswl (%r10), %ebx
    movq -1568(%rbp), %r10
    movswl (%r10), %r12d
    movq -1632(%rbp), %r10
    movswl (%r10), %r15d
    orl %r15d, %r12d
    movq -1640(%rbp), %r10
    movswl (%r10), %r15d
    orl %r15d, %r12d
    andl %r12d, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L5_131:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L5_127
    jmp .L5_128
.L5_127:
    movq -1528(%rbp), %rsi
    leaq -1208(%rbp), %rdi
    call lb_process_Capture_pull@PLT
    movq -1648(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_133
    jmp .L5_132
.L5_133:
    leaq -1064(%rbp), %rbx
    movq -1744(%rbp), %r10
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
    movl -1464(%rbp), %edi
    call lb_process_terminate@PLT
    movq %rbx, %r10
    leaq -768(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L5_143
.L5_132:
    jmp .L5_129
.L5_128:
.L5_129:
    movq -1592(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_138
    jmp .L5_159
.L5_159:
    movl %ebx, %r12d
    jmp .L5_139
.L5_138:
    movq -1656(%rbp), %r10
    movswl (%r10), %ebx
    movq -1568(%rbp), %r10
    movswl (%r10), %r12d
    movq -1664(%rbp), %r10
    movswl (%r10), %r15d
    orl %r15d, %r12d
    movq -1672(%rbp), %r10
    movswl (%r10), %r15d
    orl %r15d, %r12d
    andl %r12d, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L5_139:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L5_135
    jmp .L5_136
.L5_135:
    movq -1536(%rbp), %rsi
    leaq -1240(%rbp), %rdi
    call lb_process_Capture_pull@PLT
    movq -1680(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_141
    jmp .L5_140
.L5_141:
    leaq -1064(%rbp), %rbx
    movq -1752(%rbp), %r10
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
    movl -1464(%rbp), %edi
    call lb_process_terminate@PLT
    movq %rbx, %r10
    leaq -768(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L5_143
.L5_140:
    jmp .L5_137
.L5_136:
.L5_137:
    jmp .L5_108
.L5_110:
    leaq -1064(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -768(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L5_143:
    leaq -768(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_82
    jmp .L5_81
.L5_82:
    leaq -120(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $64, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -1536(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1528(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1424(%rbp), %r10
    movslq (%r10), %r13
    movl %r13d, %edi
    call close@PLT
    movl %eax, %r12d
    movq -1416(%rbp), %r10
    movslq (%r10), %r13
    movl %r13d, %edi
    call close@PLT
    movl %eax, %r12d
    movq -1336(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_5c_str_0o@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L5_81:
    movl -1464(%rbp), %eax
    leaq -1296(%rbp), %r10
    movl %eax, (%r10)
    leaq -1300(%rbp), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_c_interrupted(%rip), %r12
.L5_144:
    movl -1464(%rbp), %edi
    movq %rbx, %rsi
    movl $0, %edx
    call waitpid@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jge .L5_146
.L5_145:
    call lb_c_errno@PLT
    movl %eax, %r13d
    movq %r12, %r10
    movslq (%r10), %r15
    cmpl %r15d, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L5_148
.L5_147:
    leaq -1280(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_23(%rip), %r13
    leaq -1320(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $3, %rax
    movq %r13, %r10
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
    movq %rbx, %r10
    leaq -808(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L5_152
.L5_148:
.L5_149:
    jmp .L5_144
.L5_146:
    movq %rbx, %r10
    movslq (%r10), %r12
    leaq -1280(%rbp), %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %r10
    leaq -808(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
.L5_152:
    leaq -808(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_85
    jmp .L5_84
.L5_85:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -120(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $64, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -1536(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1528(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1424(%rbp), %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    call close@PLT
    movl %eax, %ebx
    movq -1416(%rbp), %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    call close@PLT
    movl %eax, %ebx
    movq -1336(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_5c_str_0o@PLT
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L5_84:
    movq %r12, %r10
    movslq (%r10), %rbx
    movl %ebx, %eax
    movl %eax, -1760(%rbp)
.L5_76:
    movl -1760(%rbp), %eax
    movl $127, %ecx
    movl %eax, %ebx
    andl %ecx, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L5_88
.L5_87:
    leaq -120(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_46(%rip), %r13
    leaq -824(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $35, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -1536(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1528(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1424(%rbp), %r10
    movslq (%r10), %r12
    movl %r12d, %edi
    call close@PLT
    movl %eax, %r12d
    movq -1416(%rbp), %r10
    movslq (%r10), %r12
    movl %r12d, %edi
    call close@PLT
    movl %eax, %r12d
    movq -1336(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_5c_str_0o@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L5_88:
.L5_89:
    leaq -840(%rbp), %r12
    movq -1528(%rbp), %rsi
    leaq -888(%rbp), %rdi
    call lb_process_Capture_take@PLT
    leaq -888(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_92
    jmp .L5_91
.L5_92:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -120(%rbp), %r12
    movq $40, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $64, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -1536(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1528(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1424(%rbp), %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    call close@PLT
    movl %eax, %ebx
    movq -1416(%rbp), %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    call close@PLT
    movl %eax, %ebx
    movq -1336(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_5c_str_0o@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L5_91:
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -904(%rbp), %rax
    movq %rax, -1768(%rbp)
    movq -1536(%rbp), %rsi
    leaq -992(%rbp), %rdi
    call lb_process_Capture_take@PLT
    leaq -992(%rbp), %r15
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_97
    jmp .L5_96
.L5_97:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq -944(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L5_94
.L5_96:
    leaq -920(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L5_95
.L5_94:
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_release@PLT
    leaq -120(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r13, %r10
    movl (%r10), %r14d
    movq %r15, %r10
    movl %r14d, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $8, %rcx
    addq %rcx, %r15
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq -1536(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1528(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1424(%rbp), %r10
    movslq (%r10), %r14
    movl %r14d, %edi
    call close@PLT
    movl %eax, %r12d
    movq -1416(%rbp), %r10
    movslq (%r10), %r14
    movl %r14d, %edi
    call close@PLT
    movl %eax, %r12d
    movq -1336(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_5c_str_0o@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L5_95:
    movq %rbx, %r10
    movq -1768(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -1032(%rbp), %r13
.L5_100:
    movl $8, %ecx
    movl -1760(%rbp), %eax
    movl %eax, %ebx
    sarl %cl, %ebx
    movl $255, %ecx
    andl %ecx, %ebx
    movq %r13, %r10
    movl %ebx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq -1768(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -120(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $64, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq -1536(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1528(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1424(%rbp), %r10
    movslq (%r10), %r14
    movl %r14d, %edi
    call close@PLT
    movl %eax, %r12d
    movq -1416(%rbp), %r10
    movslq (%r10), %r14
    movl %r14d, %edi
    call close@PLT
    movl %eax, %r12d
    movq -1336(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_5c_str_0o@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
    .globl lb_process_terminate
    .type lb_process_terminate, @function
lb_process_terminate:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movl %edi, -56(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    movl $9, %esi
    call kill@PLT
    movl %eax, %r12d
    leaq -60(%rbp), %r12
    movl $0, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_c_interrupted(%rip), %r13
.L6_1:
    movl %ebx, %edi
    movq %r12, %rsi
    movl $0, %edx
    call waitpid@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    setl %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L6_4
    jmp .L6_7
.L6_7:
    movl %r14d, %r15d
    jmp .L6_5
.L6_4:
    call lb_c_errno@PLT
    movl %eax, %r14d
    movq %r13, %r10
    movslq (%r10), %r15
    cmpl %r15d, %r14d
    sete %al
    movzbl %al, %r15d
.L6_5:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L6_2
    jmp .L6_3
.L6_2:
    jmp .L6_1
.L6_6:
    jmp .L6_1
.L6_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_process_release
    .type lb_process_release, @function
lb_process_release:
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
    leaq -56(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L7_2
.L7_1:
    movq %rbx, %r10
    movq (%r10), %r13
    leaq -72(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r14
    leaq -88(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq %r14, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L7_5
    jmp .L7_4
.L7_5:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r13, %rdi
    movq %r15, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L7_4:
    jmp .L7_3
.L7_2:
.L7_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_process_exit
    .type lb_process_exit, @function
lb_process_exit:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movl %edi, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    call lb_core_exit@PLT
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
    leaq .Ltext_58(%rip), %r13
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
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_60(%rip), %rsi
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

    .p2align 4
    .globl lb_process_15release_storage_0g1_5c_str_0o
    .type lb_process_15release_storage_0g1_5c_str_0o, @function
    .weak lb_process_15release_storage_0g1_5c_str_0o
lb_process_15release_storage_0g1_5c_str_0o:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -56(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -56(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L10_2
.L10_1:
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -80(%rbp)
    leaq -72(%rbp), %r14
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r12, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_62(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq -80(%rbp), %r10
    movq (%r10), %r13
    movq -80(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L10_5
    jmp .L10_4
.L10_5:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L10_4:
    jmp .L10_3
.L10_2:
.L10_3:
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
    .quad lb_process_module_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/process/module.lucb:43:9"
.Ltext_1:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_2:
    .asciz "memory.unset"
.Ltext_3:
    .asciz "src/std/process/module.lucb:45:17"
.Ltext_4:
    .asciz "memory.exhausted"
.Ltext_5:
    .asciz "src/std/process/module.lucb:47:17"
.Ltext_6:
    .asciz "src/std/process/module.lucb:48:9"
.Ltext_7:
    .asciz "index out of bounds"
.Ltext_8:
    .asciz "src/std/process/module.lucb:52:13"
.Ltext_9:
    .asciz "the program's output cannot be read"
.Ltext_10:
    .asciz "src/std/process/module.lucb:62:17"
.Ltext_11:
    .asciz "src/std/process/module.lucb:65:9"
.Ltext_12:
    .asciz "src/std/process/module.lucb:67:9"
.Ltext_13:
    .asciz "unreachable"
.Ltext_14:
    .asciz "src/std/process/module.lucb:69:9"
.Ltext_15:
    .asciz "src/std/process/module.lucb:73:13"
.Ltext_16:
    .asciz "src/std/process/module.lucb:89:5"
.Ltext_17:
    .asciz "src/std/process/module.lucb:99:5"
.Ltext_18:
    .asciz "src/std/process/module.lucb:100:5"
.Ltext_19:
    .asciz "src/std/process/module.lucb:103:9"
.Ltext_20:
    .asciz "src/std/process/module.lucb:104:9"
.Ltext_21:
    .asciz "src/std/process/module.lucb:105:5"
.Ltext_22:
    .asciz "src/std/process/module.lucb:109:9"
.Ltext_23:
    .asciz "run"
.Ltext_24:
    .asciz "src/std/process/module.lucb:112:9"
.Ltext_25:
    .asciz "src/std/process/module.lucb:113:9"
.Ltext_26:
    .asciz "src/std/process/module.lucb:114:9"
.Ltext_27:
    .asciz "src/std/process/module.lucb:118:9"
.Ltext_28:
    .asciz "src/std/process/module.lucb:119:9"
.Ltext_29:
    .asciz "src/std/process/module.lucb:120:9"
.Ltext_30:
    .asciz "src/std/process/module.lucb:121:9"
.Ltext_31:
    .asciz "src/std/process/module.lucb:122:9"
.Ltext_32:
    .asciz "/dev/null"
.Ltext_33:
    .asciz "src/std/process/module.lucb:133:9"
.Ltext_34:
    .asciz "src/std/process/module.lucb:134:9"
.Ltext_35:
    .asciz "src/std/process/module.lucb:135:9"
.Ltext_36:
    .asciz "src/std/process/module.lucb:137:9"
.Ltext_37:
    .asciz "src/std/process/module.lucb:138:9"
.Ltext_38:
    .asciz "src/std/process/module.lucb:147:5"
.Ltext_39:
    .asciz "src/std/process/module.lucb:148:5"
.Ltext_40:
    .asciz "src/std/process/module.lucb:149:5"
.Ltext_41:
    .asciz "src/std/process/module.lucb:151:5"
.Ltext_42:
    .asciz "src/std/process/module.lucb:152:5"
.Ltext_43:
    .asciz "src/std/process/module.lucb:159:9"
.Ltext_44:
    .asciz "src/std/process/module.lucb:161:9"
.Ltext_45:
    .asciz "src/std/process/module.lucb:162:9"
.Ltext_46:
    .asciz "the program was stopped by a signal"
.Ltext_47:
    .asciz "src/std/process/module.lucb:164:9"
.Ltext_48:
    .asciz "src/std/process/module.lucb:165:5"
.Ltext_49:
    .asciz "src/std/process/module.lucb:168:9"
.Ltext_50:
    .asciz "shift count out of range"
.Ltext_51:
    .asciz "src/std/process/module.lucb:169:5"
.Ltext_52:
    .asciz "src/std/process/module.lucb:184:9"
.Ltext_53:
    .asciz "src/std/process/module.lucb:185:9"
.Ltext_54:
    .asciz "src/std/process/module.lucb:190:9"
.Ltext_55:
    .asciz "src/std/process/module.lucb:192:9"
.Ltext_56:
    .asciz "src/std/process/module.lucb:201:5"
.Ltext_57:
    .asciz "src/std/process/module.lucb:213:9"
.Ltext_58:
    .asciz "src/std/memory.lucb:326:9"
.Ltext_59:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_60:
    .asciz "null_foreign"
.Ltext_61:
    .asciz "src/std/process/module.lucb:174:9"
.Ltext_62:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_process_7poll_in
    .type lb_process_7poll_in, @object
    .weak lb_process_7poll_in
    .p2align 1
lb_process_7poll_in:
    .zero 2

    .bss
    .globl lb_process_12poll_hang_up
    .type lb_process_12poll_hang_up, @object
    .weak lb_process_12poll_hang_up
    .p2align 1
lb_process_12poll_hang_up:
    .zero 2

    .bss
    .globl lb_process_10poll_error
    .type lb_process_10poll_error, @object
    .weak lb_process_10poll_error
    .p2align 1
lb_process_10poll_error:
    .zero 2

    .bss
    .globl lb_process_9set_flags
    .type lb_process_9set_flags, @object
    .weak lb_process_9set_flags
    .p2align 2
lb_process_9set_flags:
    .zero 4

    .bss
    .globl lb_process_12non_blocking
    .type lb_process_12non_blocking, @object
    .weak lb_process_12non_blocking
    .p2align 2
lb_process_12non_blocking:
    .zero 4

    .bss
    .globl lb_process_11would_block
    .type lb_process_11would_block, @object
    .weak lb_process_11would_block
    .p2align 2
lb_process_11would_block:
    .zero 4

    .bss
    .globl lb_process_failed
    .type lb_process_failed, @object
    .weak lb_process_failed
    .p2align 2
lb_process_failed:
    .zero 4

    .section .note.GNU-stack,"",@progbits
