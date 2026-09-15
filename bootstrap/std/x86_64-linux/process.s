    .text

    .p2align 4
    .globl lb_process_0init
    .type lb_process_0init, @function
lb_process_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
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
    leaq lb_process_16interrupt_signal(%rip), %r12
    movl $2, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_process_16terminate_signal(%rip), %r12
    movl $15, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_process_17console_interrupt(%rip), %r12
    movl $0, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_process_13console_break(%rip), %r12
    movl $1, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_process_13console_close(%rip), %r12
    movl $2, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_process_14console_logoff(%rip), %r12
    movl $5, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_process_16console_shutdown(%rip), %r12
    movl $6, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_process_26console_acknowledgement_ms(%rip), %r12
    movq $4000, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -72(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq .Ltext_0(%rip), %r13
    leaq -88(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $7, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq lb_process_Command_close@GOTPCREL(%rip), %r13
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $33, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq lb_process_12command_type(%rip), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
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
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
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
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
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
    leaq .Ltext_5(%rip), %r12
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
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
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
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r14
    jb 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r14, %r15
    jbe .L1_20
.L1_21:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
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
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
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
    leaq .Ltext_10(%rip), %r12
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
    leaq .Ltext_2(%rip), %r13
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
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
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
    leaq .Ltext_5(%rip), %r12
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
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
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
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
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
    movq environ@GOTPCREL(%rip), %rax
    movq %rax, -1536(%rbp)
.L5_103:
    leaq -224(%rbp), %rax
    movq %rax, -1328(%rbp)
    movq -1328(%rbp), %r11
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
    movq -1536(%rbp), %r10
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
    movq -1328(%rbp), %r11
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
    movq %rax, -1336(%rbp)
    movq -1336(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1344(%rbp)
    movq -1344(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1352(%rbp)
    movq -1352(%rbp), %rax
    movq $2, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
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
    leaq .Ltext_2(%rip), %r15
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
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
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
    movl %eax, -1360(%rbp)
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl -1360(%rbp), %eax
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
    leaq .Ltext_5(%rip), %r12
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
    movq -1328(%rbp), %r10
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
    movq %rax, -1368(%rbp)
    movq $0, %rax
    movq -1368(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    leaq -136(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -1376(%rbp)
    movq -1376(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -1336(%rbp), %r10
    movq (%r10), %r14
    movq $0, %rax
    movq %rax, %r15
.L5_18:
    movq -1352(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L5_20
.L5_19:
    movq $1, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -1384(%rbp)
    movq -1384(%rbp), %rax
    movq -1368(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1384(%rbp), %rax
    movq $8, %rcx
    imulq %rcx, %rax
    movq %rax, -1392(%rbp)
    movq -1392(%rbp), %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -1400(%rbp)
    movq $8, %rcx
    movq %r15, %r13
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq -1400(%rbp), %r10
    movq %r13, (%r10)
    movq -1384(%rbp), %rax
    movq %rax, %r15
    jmp .L5_18
.L5_20:
    movq -1352(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -1368(%rbp), %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
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
    movq %rax, -1408(%rbp)
    movq -1408(%rbp), %r11
    movq $0, 0(%r11)
    leaq -392(%rbp), %rax
    movq %rax, -1416(%rbp)
    movq -1416(%rbp), %r11
    movq $0, 0(%r11)
    movq -1408(%rbp), %rdi
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
    movq -1368(%rbp), %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
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
    leaq .Ltext_24(%rip), %r13
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
    movq -1328(%rbp), %r10
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
    movq -1416(%rbp), %rdi
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
    movq -1408(%rbp), %r10
    movslq (%r10), %rax
    movq %rax, -1424(%rbp)
    movl -1424(%rbp), %edi
    call close@PLT
    movl %eax, %r14d
    movq -1408(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, -1432(%rbp)
    movq -1432(%rbp), %r10
    movslq (%r10), %rax
    movq %rax, -1440(%rbp)
    movl -1440(%rbp), %edi
    call close@PLT
    movl %eax, %r13d
    leaq -440(%rbp), %rax
    movq %rax, -1448(%rbp)
    movq -1368(%rbp), %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq -1448(%rbp), %r10
    movq %rbx, (%r10)
    movq -1448(%rbp), %rax
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
    movq -1448(%rbp), %r10
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
    leaq .Ltext_24(%rip), %r13
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
    movq -1328(%rbp), %r10
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
    movl %eax, -1456(%rbp)
    movl -1456(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jge .L5_34
.L5_33:
    movq -1408(%rbp), %r10
    movslq (%r10), %rax
    movq %rax, -1464(%rbp)
    movl -1464(%rbp), %edi
    call close@PLT
    movl %eax, %r14d
    movq -1408(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, -1472(%rbp)
    movq -1472(%rbp), %r10
    movslq (%r10), %rax
    movq %rax, -1480(%rbp)
    movl -1480(%rbp), %edi
    call close@PLT
    movl %eax, %r13d
    movq -1416(%rbp), %r10
    movslq (%r10), %rax
    movq %rax, -1488(%rbp)
    movl -1488(%rbp), %edi
    call close@PLT
    movl %eax, %r13d
    movq -1416(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, -1496(%rbp)
    movq -1496(%rbp), %r10
    movslq (%r10), %rax
    movq %rax, -1504(%rbp)
    movl -1504(%rbp), %edi
    call close@PLT
    movl %eax, %r13d
    leaq -472(%rbp), %rax
    movq %rax, -1512(%rbp)
    movq -1368(%rbp), %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq -1512(%rbp), %r10
    movq %rbx, (%r10)
    movq -1512(%rbp), %rax
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
    movq -1512(%rbp), %r10
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
    leaq .Ltext_24(%rip), %r13
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
    movq -1328(%rbp), %r10
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
    movl -1456(%rbp), %eax
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
    leaq .Ltext_33(%rip), %r14
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
    jne .L5_155
    jmp .L5_51
.L5_155:
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
    movq -1408(%rbp), %r10
    movslq (%r10), %r12
    movl %r12d, %edi
    call close@PLT
    movl %eax, %r12d
    movq -1416(%rbp), %r10
    movslq (%r10), %r12
    movl %r12d, %edi
    call close@PLT
    movl %eax, %r12d
    movq -1408(%rbp), %rax
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
    jne .L5_156
    jmp .L5_59
.L5_156:
    movl %r14d, %r15d
    jmp .L5_60
.L5_59:
    movq -1416(%rbp), %rax
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
    movq -1416(%rbp), %rax
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
    jmp .L5_157
.L5_157:
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
    movq -1328(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L5_67
.L5_66:
    movq -1328(%rbp), %r10
    movq (%r10), %r12
    movq -1536(%rbp), %r10
    movq %r12, (%r10)
    jmp .L5_68
.L5_67:
.L5_68:
    movq -1376(%rbp), %rdi
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
    movl -1456(%rbp), %edi
    movl -1456(%rbp), %esi
    call setpgid@PLT
    movl %eax, %r13d
    jmp .L5_71
.L5_70:
.L5_71:
    leaq -520(%rbp), %r13
    movq -1368(%rbp), %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
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
    movq -1408(%rbp), %rax
    movq $4, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    call close@PLT
    movl %eax, %ebx
    movq -1416(%rbp), %rax
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
    movq %rax, -1520(%rbp)
    leaq -616(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movq -1408(%rbp), %r10
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
    movq -1520(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    leaq -656(%rbp), %rax
    movq %rax, -1528(%rbp)
    leaq -696(%rbp), %r15
    movq %r15, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movq -1416(%rbp), %r10
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
    movq -1528(%rbp), %r11
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
    movl -1456(%rbp), %esi
    movq -1520(%rbp), %rdx
    movq -1528(%rbp), %rcx
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
    movq -1528(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1520(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1416(%rbp), %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    call close@PLT
    movl %eax, %ebx
    movq -1408(%rbp), %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    call close@PLT
    movl %eax, %ebx
    movq -1328(%rbp), %r10
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
    movl -1456(%rbp), %eax
    leaq -1080(%rbp), %r10
    movl %eax, (%r10)
    movq -1520(%rbp), %rax
    leaq -1096(%rbp), %r10
    movq %rax, (%r10)
    movq -1528(%rbp), %rax
    leaq -1112(%rbp), %r10
    movq %rax, (%r10)
    movq -1520(%rbp), %r10
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
    jne .L5_158
    jmp .L5_107
.L5_158:
    movl %ebx, %r12d
    jmp .L5_108
.L5_107:
    movq -1528(%rbp), %r10
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
.L5_108:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L5_104
    jmp .L5_105
.L5_104:
    leaq -1064(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_10(%rip), %r12
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
    movl -1456(%rbp), %edi
    call lb_process_terminate@PLT
    movq %rbx, %r10
    leaq -768(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L5_145
.L5_105:
.L5_106:
    movq -1520(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -1552(%rbp)
    movq -1528(%rbp), %rax
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
    movq -1528(%rbp), %rax
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
.L5_110:
    movq -1552(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L5_159
    jmp .L5_113
.L5_159:
    movl %r12d, %r15d
    jmp .L5_114
.L5_113:
    movq -1560(%rbp), %r10
    movzbl (%r10), %r15d
.L5_114:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L5_111
    jmp .L5_112
.L5_111:
    movq -1720(%rbp), %r11
    movq $0, 0(%r11)
    movq -1552(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L5_115
    jmp .L5_116
.L5_115:
    movq -1520(%rbp), %r10
    movslq (%r10), %r12
    jmp .L5_117
.L5_116:
    movl $4294967295, %eax
    movl %eax, %r12d
.L5_117:
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
    jne .L5_118
    jmp .L5_119
.L5_118:
    movq -1528(%rbp), %r10
    movslq (%r10), %rbx
    jmp .L5_120
.L5_119:
    movl $4294967295, %eax
    movl %eax, %ebx
.L5_120:
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
    jge .L5_122
.L5_121:
    call lb_c_errno@PLT
    movl %eax, %ebx
    movq -1616(%rbp), %r10
    movslq (%r10), %r12
    cmpl %r12d, %ebx
    jne .L5_125
.L5_124:
    jmp .L5_110
.L5_125:
.L5_126:
    leaq -1064(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_10(%rip), %r12
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
    movl -1456(%rbp), %edi
    call lb_process_terminate@PLT
    movq %rbx, %r10
    leaq -768(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L5_145
.L5_122:
.L5_123:
    movq -1552(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_132
    jmp .L5_160
.L5_160:
    movl %ebx, %r12d
    jmp .L5_133
.L5_132:
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
.L5_133:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L5_129
    jmp .L5_130
.L5_129:
    movq -1520(%rbp), %rsi
    leaq -1208(%rbp), %rdi
    call lb_process_Capture_pull@PLT
    movq -1648(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_135
    jmp .L5_134
.L5_135:
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
    movl -1456(%rbp), %edi
    call lb_process_terminate@PLT
    movq %rbx, %r10
    leaq -768(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L5_145
.L5_134:
    jmp .L5_131
.L5_130:
.L5_131:
    movq -1592(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_140
    jmp .L5_161
.L5_161:
    movl %ebx, %r12d
    jmp .L5_141
.L5_140:
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
.L5_141:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L5_137
    jmp .L5_138
.L5_137:
    movq -1528(%rbp), %rsi
    leaq -1240(%rbp), %rdi
    call lb_process_Capture_pull@PLT
    movq -1680(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_143
    jmp .L5_142
.L5_143:
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
    movl -1456(%rbp), %edi
    call lb_process_terminate@PLT
    movq %rbx, %r10
    leaq -768(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L5_145
.L5_142:
    jmp .L5_139
.L5_138:
.L5_139:
    jmp .L5_110
.L5_112:
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
.L5_145:
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
    movq -1528(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1520(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1416(%rbp), %r10
    movslq (%r10), %r13
    movl %r13d, %edi
    call close@PLT
    movl %eax, %r12d
    movq -1408(%rbp), %r10
    movslq (%r10), %r13
    movl %r13d, %edi
    call close@PLT
    movl %eax, %r12d
    movq -1328(%rbp), %r10
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
    movl -1456(%rbp), %eax
    leaq -1296(%rbp), %r10
    movl %eax, (%r10)
    leaq -1300(%rbp), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_c_interrupted(%rip), %r12
.L5_146:
    movl -1456(%rbp), %edi
    movq %rbx, %rsi
    movl $0, %edx
    call waitpid@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jge .L5_148
.L5_147:
    call lb_c_errno@PLT
    movl %eax, %r13d
    movq %r12, %r10
    movslq (%r10), %r15
    cmpl %r15d, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L5_150
.L5_149:
    leaq -1280(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_24(%rip), %r13
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
    jmp .L5_154
.L5_150:
.L5_151:
    jmp .L5_146
.L5_148:
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
.L5_154:
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
    movq -1528(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1520(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1416(%rbp), %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    call close@PLT
    movl %eax, %ebx
    movq -1408(%rbp), %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    call close@PLT
    movl %eax, %ebx
    movq -1328(%rbp), %r10
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
    leaq .Ltext_47(%rip), %r13
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
    movq -1528(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1520(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1416(%rbp), %r10
    movslq (%r10), %r12
    movl %r12d, %edi
    call close@PLT
    movl %eax, %r12d
    movq -1408(%rbp), %r10
    movslq (%r10), %r12
    movl %r12d, %edi
    call close@PLT
    movl %eax, %r12d
    movq -1328(%rbp), %r10
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
    movq -1520(%rbp), %rsi
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
    movq -1528(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1520(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1416(%rbp), %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    call close@PLT
    movl %eax, %ebx
    movq -1408(%rbp), %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    call close@PLT
    movl %eax, %ebx
    movq -1328(%rbp), %r10
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
    movq -1528(%rbp), %rsi
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
    movq -1528(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1520(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1416(%rbp), %r10
    movslq (%r10), %r14
    movl %r14d, %edi
    call close@PLT
    movl %eax, %r12d
    movq -1408(%rbp), %r10
    movslq (%r10), %r14
    movl %r14d, %edi
    call close@PLT
    movl %eax, %r12d
    movq -1328(%rbp), %r10
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
    movq -1528(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1520(%rbp), %rdi
    call lb_process_Capture_drop@PLT
    movq -1416(%rbp), %r10
    movslq (%r10), %r14
    movl %r14d, %edi
    call close@PLT
    movl %eax, %r12d
    movq -1408(%rbp), %r10
    movslq (%r10), %r14
    movl %r14d, %edi
    call close@PLT
    movl %eax, %r12d
    movq -1328(%rbp), %r10
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
    .globl lb_process_13quote_windows
    .type lb_process_13quote_windows, @function
lb_process_13quote_windows:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -56(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    movq %rdx, -72(%rbp)
    leaq -88(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -96(%rbp)
    movq -96(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r13d
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -104(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L9_1:
    movq -96(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L9_4
.L9_2:
    movq -104(%rbp), %rax
    movq %rax, %r15
    addq %r14, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movzbl %r15b, %r15d
    movl $32, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L9_43
    jmp .L9_8
.L9_43:
    movl %r12d, %ebx
    jmp .L9_9
.L9_8:
    movl $9, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %ebx
.L9_9:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L9_44
    jmp .L9_10
.L9_44:
    movl %r12d, %ebx
    jmp .L9_11
.L9_10:
    movl $10, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %ebx
.L9_11:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L9_45
    jmp .L9_12
.L9_45:
    movl %r12d, %ebx
    jmp .L9_13
.L9_12:
    movl $13, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %ebx
.L9_13:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L9_46
    jmp .L9_14
.L9_46:
    movl %r12d, %ebx
    jmp .L9_15
.L9_14:
    movl $34, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %ebx
.L9_15:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L9_5
    jmp .L9_6
.L9_5:
    movl $1, %eax
    movl %eax, %r13d
    jmp .L9_7
.L9_6:
.L9_7:
.L9_3:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r14
    jmp .L9_1
.L9_4:
    movzbl %r13b, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L9_17
.L9_16:
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rax
    movq %rax, %r14
.L9_19:
    movq -96(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L9_22
.L9_20:
    movq -104(%rbp), %rax
    addq %r14, %rax
    movq %rax, -112(%rbp)
    movq -112(%rbp), %r10
    movzbl (%r10), %eax
    movl %eax, -120(%rbp)
    movq %rbx, %r10
    movq (%r10), %r15
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    addq %r13, %r15
    movl -120(%rbp), %eax
    movzbl %al, %eax
    movl %eax, -128(%rbp)
    movl -128(%rbp), %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %rbx, %r10
    movq %r15, (%r10)
.L9_21:
    movq $1, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r14
    jmp .L9_19
.L9_22:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L9_23:
    jmp .L9_18
.L9_17:
.L9_18:
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    leaq -56(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -136(%rbp)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -144(%rbp)
    movq -144(%rbp), %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -136(%rbp), %rcx
    addq %rcx, %r12
    movl $34, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $0, %rax
    movq %rax, %r12
    movq $0, %rax
    movq %rax, -152(%rbp)
.L9_24:
    movq -152(%rbp), %rax
    movq -96(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L9_27
.L9_25:
    movq -104(%rbp), %rax
    movq -152(%rbp), %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movzbl %r14b, %r14d
    movl $92, %ecx
    cmpl %ecx, %r14d
    jne .L9_29
.L9_28:
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    jmp .L9_26
.L9_31:
    jmp .L9_30
.L9_29:
.L9_30:
    movl $34, %ecx
    cmpl %ecx, %r14d
    jne .L9_33
.L9_32:
    movq %r12, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_64(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_64(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    jmp .L9_34
.L9_33:
    movq %r12, %r13
.L9_34:
    movq $0, %rax
    movq %rax, %r12
.L9_35:
    cmpq %r13, %r12
    jae .L9_38
.L9_36:
    movq %rbx, %r10
    movq (%r10), %r15
    movq -144(%rbp), %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_65(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -136(%rbp), %rax
    movq %r15, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movl $92, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_66(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %rbx, %r10
    movq %r15, (%r10)
.L9_37:
    movq $1, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r12
    jmp .L9_35
.L9_38:
    movq %rbx, %r10
    movq (%r10), %r12
    movq -144(%rbp), %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_67(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -136(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movb %r14b, (%r10)
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_68(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $0, %rax
    movq %rax, %r13
.L9_26:
    movq -152(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r13, %r12
    movq %r14, %rax
    movq %rax, -152(%rbp)
    jmp .L9_24
.L9_27:
    movq %r12, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_69(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq $0, %rax
    movq %rax, %r14
.L9_39:
    cmpq %r13, %r14
    jae .L9_42
.L9_40:
    movq %rbx, %r10
    movq (%r10), %r12
    movq -144(%rbp), %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_70(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -136(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $92, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_71(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
.L9_41:
    movq $1, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r14
    jmp .L9_39
.L9_42:
    movq %rbx, %r10
    movq (%r10), %r12
    movq -144(%rbp), %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_72(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -136(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $34, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_73(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_process_12inherit_file
    .type lb_process_12inherit_file, @function
lb_process_12inherit_file:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -96(%rbp)
    leaq -104(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    call GetCurrentProcess@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L10_1
    jmp .L10_2
.L10_2:
    leaq .Ltext_75(%rip), %rdi
    leaq .Ltext_74(%rip), %rsi
    call lb_core_7trap_at@PLT
.L10_1:
    leaq -96(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rdi
    call _fileno@PLT
    movl %eax, %r13d
    movl %r13d, %edi
    call _get_osfhandle@PLT
    movq %rax, %r13
    subq $16, %rsp
    movq $2, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rdi
    movq %r13, %rsi
    movq %r12, %rdx
    movq %rbx, %rcx
    movl $0, %r8d
    movl $1, %r9d
    call DuplicateHandle@PLT
    addq $16, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L10_4
.L10_3:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_76(%rip), %r13
    leaq -120(%rbp), %r14
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_6:
    jmp .L10_5
.L10_4:
.L10_5:
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L10_7
    jmp .L10_8
.L10_7:
    jmp .L10_9
.L10_8:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_77(%rip), %r13
    leaq -136(%rbp), %r14
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
.L10_10:
.L10_9:
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
.L10_11:
    leaq .Ltext_78(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_15capture_windows
    .type lb_process_15capture_windows, @function
lb_process_15capture_windows:
    pushq %rbp
    movq %rsp, %rbp
    subq $320, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -112(%rbp)
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -288(%rbp)
    movq -288(%rbp), %rdi
    movq $0, %rsi
    movl $2, %edx
    call _fseeki64@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L11_2
.L11_1:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_79(%rip), %r13
    leaq -128(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $36, %rax
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
.L11_4:
    jmp .L11_3
.L11_2:
.L11_3:
    movq -288(%rbp), %rdi
    call _ftelli64@PLT
    movq %rax, -296(%rbp)
    movq -296(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setl %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L11_30
    jmp .L11_8
.L11_30:
    movl %r13d, %r14d
    jmp .L11_9
.L11_8:
    movq -288(%rbp), %rdi
    movq $0, %rsi
    movl $0, %edx
    call _fseeki64@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L11_9:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L11_5
    jmp .L11_6
.L11_5:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_80(%rip), %r13
    leaq -144(%rbp), %r14
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
.L11_10:
    jmp .L11_7
.L11_6:
.L11_7:
    leaq -160(%rbp), %rax
    movq %rax, -304(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -312(%rbp)
    leaq -208(%rbp), %rax
    movq %rax, -320(%rbp)
    movq -296(%rbp), %rax
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %rax
    jbe .L11_12
.L11_11:
    movq -320(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $208273409, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %r14
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $47, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -320(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L11_13
.L11_12:
    movq -312(%rbp), %r10
    movq (%r10), %r12
    movq -312(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L11_14
    jmp .L11_15
.L11_15:
    leaq .Ltext_81(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_14:
    movq %r13, %r10
    movq (%r10), %r14
    movq %r12, %rsi
    movq -296(%rbp), %rdx
    movq $1, %rcx
    leaq -232(%rbp), %rdi
    movq %r14, %r11
    call *%r11
    leaq -232(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq -296(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setne %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %ecx
    movl %r15d, %r14d
    andl %ecx, %r14d
    testl %r14d, %r14d
    jne .L11_16
    jmp .L11_17
.L11_16:
    movq -320(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_5(%rip), %r12
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
    movq -320(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L11_13
.L11_17:
    movq %rbx, %r10
    movq (%r10), %r12
    movq -320(%rbp), %r10
    movq %r12, (%r10)
    movq -320(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq -296(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -320(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L11_13:
    movq -320(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_19
    jmp .L11_18
.L11_19:
    movq -320(%rbp), %rax
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
.L11_20:
.L11_18:
    movq -320(%rbp), %r10
    movq -304(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -296(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setg %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L11_24
    jmp .L11_31
.L11_31:
    movl %ebx, %r12d
    jmp .L11_25
.L11_24:
    movq -304(%rbp), %r10
    movq (%r10), %rbx
    movq -304(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq $1, %rsi
    movq %r12, %rdx
    movq -288(%rbp), %rcx
    call fread@PLT
    movq %rax, %rbx
    cmpq %rbx, %r12
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L11_25:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L11_21
    jmp .L11_22
.L11_21:
    leaq -248(%rbp), %rbx
    movq -304(%rbp), %r10
    movq (%r10), %r12
    movq -304(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -312(%rbp), %r10
    movq (%r10), %r12
    movq -312(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L11_27
    jmp .L11_26
.L11_27:
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
.L11_26:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_80(%rip), %r13
    leaq -264(%rbp), %r14
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
.L11_28:
    jmp .L11_23
.L11_22:
.L11_23:
    movq -304(%rbp), %r10
    movq (%r10), %rbx
    movq -304(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -280(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq -96(%rbp), %rbx
    movq %r13, %r10
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
.L11_29:
    leaq .Ltext_83(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_17temporary_windows
    .type lb_process_17temporary_windows, @function
lb_process_17temporary_windows:
    pushq %rbp
    movq %rsp, %rbp
    subq $65968, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -65624(%rbp), %rbx
    movq %rbx, %rdi
    xorl %esi, %esi
    movq $65536, %rdx
    call memset@PLT
    movl $32768, %edi
    movq %rbx, %rsi
    call GetTempPathW@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L12_43
    jmp .L12_4
.L12_43:
    movl %r13d, %r14d
    jmp .L12_5
.L12_4:
    movl %r12d, %r13d
    movq $33, %rcx
    addq %rcx, %r13
    movq $32768, %rcx
    cmpq %rcx, %r13
    setae %al
    movzbl %al, %r14d
.L12_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L12_1
    jmp .L12_2
.L12_1:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_86(%rip), %r13
    leaq -65640(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $44, %rax
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
.L12_2:
.L12_3:
    leaq -65656(%rbp), %rax
    movq %rax, -65808(%rbp)
    leaq -65672(%rbp), %rax
    movq %rax, -65816(%rbp)
    movq -65816(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -65824(%rbp)
    leaq -65704(%rbp), %rax
    movq %rax, -65952(%rbp)
    movq -65952(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -65832(%rbp)
    leaq -65720(%rbp), %rax
    movq %rax, -65840(%rbp)
    leaq .Ltext_87(%rip), %rax
    movq %rax, -65848(%rbp)
    leaq -65736(%rbp), %rax
    movq %rax, -65856(%rbp)
    movq -65856(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -65864(%rbp)
    movl %r12d, %eax
    movq %rax, -65872(%rbp)
    movl %r12d, %eax
    movq %rax, -65912(%rbp)
    movq -65912(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -65920(%rbp)
    movq -65920(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, -65928(%rbp)
    movq -65928(%rbp), %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -65936(%rbp)
    movq $0, %rax
    movq %rax, -65944(%rbp)
.L12_7:
    movq -65944(%rbp), %rax
    movq $128, %rcx
    cmpq %rcx, %rax
    jge .L12_10
.L12_8:
    movq -65808(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq -65808(%rbp), %rax
    movq -65816(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq -65824(%rbp), %r10
    movq %rax, (%r10)
    movq -65816(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -65704(%rbp), %rdi
    call lb_os_12random_bytes@PLT
    movq -65832(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L12_12
    jmp .L12_11
.L12_12:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -65952(%rbp), %r10
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
.L12_11:
    movq -65848(%rbp), %rax
    movq -65856(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq -65864(%rbp), %r10
    movq %rax, (%r10)
    movq -65856(%rbp), %r10
    movq -65840(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rax, -65960(%rbp)
.L12_14:
    movq -65960(%rbp), %rax
    movq $16, %rcx
    cmpq %rcx, %rax
    jae .L12_17
.L12_15:
    movq -65960(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, -65880(%rbp)
    movq -65872(%rbp), %rax
    movq -65880(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_88(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -65888(%rbp)
    movq -65888(%rbp), %rax
    movq $32768, %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_88(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -65888(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, -65896(%rbp)
    movq -65896(%rbp), %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq -65808(%rbp), %rax
    movq -65960(%rbp), %rcx
    addq %rcx, %rax
    movq %rax, -65904(%rbp)
    movq -65904(%rbp), %r10
    movzbl (%r10), %r15d
.L12_19:
    movl $4, %ecx
    movl %r15d, %r13d
    shrl %cl, %r13d
    movzbl %r13b, %r13d
    movl %r13d, %r13d
    movq $16, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_88(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -65848(%rbp), %rax
    movq %r13, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl %r13d, %r13d
    movzwl %r13w, %r13d
    movq %r14, %r10
    movw %r13w, (%r10)
    movq -65888(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq $32768, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_89(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $2, %rcx
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq -65904(%rbp), %r10
    movzbl (%r10), %r12d
    movl $15, %ecx
    andl %ecx, %r12d
    movl %r12d, %r12d
    movq -65848(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl %r12d, %r12d
    movzwl %r12w, %r12d
    movq %r13, %r10
    movw %r12w, (%r10)
.L12_16:
    movq -65960(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %rax
    movq %rax, -65960(%rbp)
    jmp .L12_14
.L12_17:
    movq -65920(%rbp), %rax
    movq $32768, %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_90(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl $0, %eax
    movq -65936(%rbp), %r10
    movw %ax, (%r10)
    subq $16, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rdi
    movl $3221225472, %esi
    movl $7, %edx
    movq $0, %rcx
    movl $1, %r8d
    movl $67109120, %r9d
    call CreateFileW@PLT
    addq $16, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L12_20
    jmp .L12_21
.L12_21:
    leaq .Ltext_91(%rip), %rdi
    leaq .Ltext_74(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_20:
    movq $-1, %rcx
    cmpq %rcx, %r12
    jne .L12_23
.L12_22:
    call GetLastError@PLT
    movl %eax, %r12d
    movl $80, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L12_44
    jmp .L12_28
.L12_44:
    movl %r12d, %r13d
    jmp .L12_29
.L12_28:
    call GetLastError@PLT
    movl %eax, %r12d
    movl $183, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L12_29:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L12_25
    jmp .L12_26
.L12_25:
    jmp .L12_9
.L12_26:
.L12_27:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_92(%rip), %r13
    leaq -65752(%rbp), %r14
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
.L12_23:
.L12_24:
    movq %r12, %rdi
    movl $32898, %esi
    call _open_osfhandle@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jge .L12_33
.L12_32:
    movq %r12, %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    leaq lb_process_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_93(%rip), %r14
    leaq -65768(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $47, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
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
.L12_33:
.L12_34:
    leaq .Ltext_94(%rip), %r12
    movl %ebx, %edi
    movq %r12, %rsi
    call _fdopen@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L12_39
    jmp .L12_37
.L12_39:
.L12_36:
    leaq -88(%rbp), %rbx
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_37:
.L12_38:
    movl %ebx, %edi
    call _close@PLT
    movl %eax, %ebx
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    leaq lb_process_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_95(%rip), %r14
    leaq -65784(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $43, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
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
.L12_9:
    movq -65944(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %rax
    movq %rax, -65944(%rbp)
    jmp .L12_7
.L12_10:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_96(%rip), %r13
    leaq -65800(%rbp), %r14
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

    .p2align 4
    .globl lb_process_11run_windows
    .type lb_process_11run_windows, @function
lb_process_11run_windows:
    pushq %rbp
    movq %rsp, %rbp
    subq $3120, %rsp
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
    leaq -224(%rbp), %rax
    movq %rax, -2184(%rbp)
    leaq -136(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call strlen@PLT
    movq %rax, %r13
    leaq -240(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq %r14, %r10
    movq -2184(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -248(%rbp), %r12
    movq %r13, %rdi
    movq $2, %rsi
    movl $64, %edx
    movq %r12, %rcx
    call lb_core_6qmul_u@PLT
    movl %eax, %r13d
    leaq -264(%rbp), %r14
    movq %r12, %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movb %r13b, (%r10)
    movq %r14, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L13_1
    jmp .L13_2
.L13_1:
    jmp .L13_3
.L13_2:
    leaq -120(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_98(%rip), %r13
    leaq -280(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $31, %rax
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
.L13_4:
.L13_3:
    leaq -288(%rbp), %r13
    movq %r12, %rdi
    movq $4, %rsi
    movl $64, %edx
    movq %r13, %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r14d
    leaq -304(%rbp), %r15
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
    jne .L13_5
    jmp .L13_6
.L13_5:
    jmp .L13_7
.L13_6:
    leaq -120(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_98(%rip), %r13
    leaq -320(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $31, %rax
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
.L13_8:
.L13_7:
    leaq -152(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -2192(%rbp)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -2200(%rbp)
    leaq -336(%rbp), %rax
    movq %rax, -2208(%rbp)
    movq -2208(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2216(%rbp)
    leaq -344(%rbp), %rax
    movq %rax, -2224(%rbp)
    leaq -360(%rbp), %rax
    movq %rax, -3112(%rbp)
    movq -3112(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2232(%rbp)
    leaq -384(%rbp), %rax
    movq %rax, -2240(%rbp)
    leaq -400(%rbp), %rax
    movq %rax, -3120(%rbp)
    movq -3120(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2248(%rbp)
    leaq -424(%rbp), %rax
    movq %rax, -2256(%rbp)
    leaq -440(%rbp), %r15
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -2264(%rbp)
    movq %r13, %rax
    movq %rax, -3048(%rbp)
    movq $0, %rax
    movq %rax, %rbx
.L13_9:
    movq -2200(%rbp), %rcx
    cmpq %rcx, %rbx
    jae .L13_12
.L13_10:
    movq $8, %rcx
    movq %rbx, %r13
    imulq %rcx, %r13
    movq -2192(%rbp), %rax
    movq %r13, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rdi
    call strlen@PLT
    movq %rax, %r12
    movq -2208(%rbp), %r10
    movq %r13, (%r10)
    movq -2216(%rbp), %r10
    movq %r12, (%r10)
    movq %r12, %rdi
    movq $2, %rsi
    movl $64, %edx
    movq -2224(%rbp), %rcx
    call lb_core_6qmul_u@PLT
    movl %eax, %r12d
    movq -2224(%rbp), %r10
    movq (%r10), %r13
    movq -3112(%rbp), %r10
    movq %r13, (%r10)
    movq -2232(%rbp), %r10
    movb %r12b, (%r10)
    movq -2232(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L13_13
    jmp .L13_14
.L13_13:
    jmp .L13_15
.L13_14:
    leaq -120(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_98(%rip), %r13
    leaq -376(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $31, %rax
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
.L13_16:
.L13_15:
    movq -3048(%rbp), %rdi
    movq %r13, %rsi
    movl $64, %edx
    movq -2240(%rbp), %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r12d
    movq -2240(%rbp), %r10
    movq (%r10), %r14
    movq -3120(%rbp), %r10
    movq %r14, (%r10)
    movq -2248(%rbp), %r10
    movb %r12b, (%r10)
    movq -2248(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L13_17
    jmp .L13_18
.L13_17:
    jmp .L13_19
.L13_18:
    leaq -120(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_98(%rip), %r13
    leaq -416(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $31, %rax
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
.L13_20:
.L13_19:
    movq %r14, %rdi
    movq $3, %rsi
    movl $64, %edx
    movq -2256(%rbp), %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r12d
    movq -2256(%rbp), %r10
    movq (%r10), %r13
    movq %r15, %r10
    movq %r13, (%r10)
    movq -2264(%rbp), %r10
    movb %r12b, (%r10)
    movq -2264(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L13_21
    jmp .L13_22
.L13_21:
    jmp .L13_23
.L13_22:
    leaq -120(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_98(%rip), %r13
    leaq -456(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $31, %rax
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
.L13_24:
.L13_23:
.L13_11:
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %rax
    movq %rax, -3048(%rbp)
    movq %r12, %rbx
    jmp .L13_9
.L13_12:
    leaq -472(%rbp), %rax
    movq %rax, -3056(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -3064(%rbp)
    leaq -520(%rbp), %rax
    movq %rax, -3072(%rbp)
    movq -3048(%rbp), %rax
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %rax
    jbe .L13_26
.L13_25:
    movq -3072(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %r15
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -3072(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L13_27
.L13_26:
    movq -3064(%rbp), %r10
    movq (%r10), %rbx
    movq -3064(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L13_28
    jmp .L13_29
.L13_29:
    leaq .Ltext_99(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_28:
    movq %r12, %r10
    movq (%r10), %r15
    movq %rbx, %rsi
    movq -3048(%rbp), %rdx
    movq $1, %rcx
    leaq -544(%rbp), %rdi
    movq %r15, %r11
    call *%r11
    leaq -544(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movq -3048(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setne %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    andl %r15d, %r13d
    testl %r13d, %r13d
    jne .L13_30
    jmp .L13_31
.L13_30:
    movq -3072(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_5(%rip), %r12
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
    movq -3072(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L13_27
.L13_31:
    movq %r14, %r10
    movq (%r10), %rbx
    movq -3072(%rbp), %r10
    movq %rbx, (%r10)
    movq -3072(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -3048(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -3072(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L13_27:
    movq -3072(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_33
    jmp .L13_32
.L13_33:
    movq -3072(%rbp), %rax
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
.L13_34:
.L13_32:
    movq -3072(%rbp), %r10
    movq -3056(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -552(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -3056(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %rbx, %rdx
    movq -2184(%rbp), %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    call lb_process_13quote_windows@PLT
    movq -3056(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    leaq -568(%rbp), %rax
    movq %rax, -2304(%rbp)
    movq -2304(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2312(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L13_35:
    movq -2200(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L13_38
.L13_36:
    movq $8, %rcx
    movq %r15, %rax
    imulq %rcx, %rax
    movq %rax, -2272(%rbp)
    movq -2192(%rbp), %rax
    movq -2272(%rbp), %rcx
    addq %rcx, %rax
    movq %rax, -2280(%rbp)
    movq -2280(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -2288(%rbp)
    movq %rbx, %r10
    movq (%r10), %r13
    movq -3056(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -2296(%rbp)
    movq %r12, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_100(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -2296(%rbp), %rcx
    addq %rcx, %r13
    movl $32, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_101(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %rbx, %r10
    movq %r13, (%r10)
    movq -2288(%rbp), %rdi
    call strlen@PLT
    movq %rax, %r13
    movq -2288(%rbp), %rax
    movq -2304(%rbp), %r10
    movq %rax, (%r10)
    movq -2312(%rbp), %r10
    movq %r13, (%r10)
    movq -3056(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %rbx, %rdx
    movq -2304(%rbp), %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    call lb_process_13quote_windows@PLT
.L13_37:
    movq $1, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r15
    jmp .L13_35
.L13_38:
    movq %rbx, %r10
    movq (%r10), %r12
    movq -3056(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -2320(%rbp)
    movq -3056(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2328(%rbp)
    movq -2328(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r12
    jb 1f
    leaq .Ltext_102(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -2320(%rbp), %rcx
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -584(%rbp), %rax
    movq %rax, -3080(%rbp)
    movq -3056(%rbp), %r10
    movq (%r10), %r15
    movq -2328(%rbp), %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq (%r10), %r13
    movq $1, %rcx
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_103(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_103(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r13, %rax
    jbe .L13_39
.L13_40:
    leaq .Ltext_103(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_39:
    leaq -600(%rbp), %rax
    movq %rax, -2336(%rbp)
    movq -2336(%rbp), %r10
    movq %r15, (%r10)
    movq -2336(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2344(%rbp)
    movq -2344(%rbp), %r10
    movq %r13, (%r10)
    leaq -616(%rbp), %rax
    movq %rax, -2352(%rbp)
    movq -2352(%rbp), %r10
    movq %r15, (%r10)
    movq -2352(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2360(%rbp)
    movq -2360(%rbp), %r10
    movq %r13, (%r10)
    leaq lb_process_failed(%rip), %rax
    movq %rax, -2368(%rbp)
    movq -2368(%rbp), %r10
    movl (%r10), %r12d
    movq %r15, %rsi
    movl %r12d, %edx
    leaq -664(%rbp), %rdi
    call lb_12windows_text_wide@PLT
    leaq -664(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L13_42
    jmp .L13_41
.L13_42:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq -120(%rbp), %rax
    movq %rax, -2376(%rbp)
    movq -2376(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -2376(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -680(%rbp), %r12
    movq -3056(%rbp), %r10
    movq (%r10), %r15
    movq -2328(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r13
    movq -3064(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L13_44
    jmp .L13_43
.L13_44:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r13, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L13_43:
    movq -2376(%rbp), %rsi
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
.L13_45:
.L13_41:
    movq %rbx, %r10
    movq -3080(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -3080(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -2384(%rbp)
    movq -2384(%rbp), %rax
    movq $32768, %rcx
    cmpq %rcx, %rax
    jbe .L13_47
.L13_46:
    leaq -120(%rbp), %rax
    movq %rax, -2392(%rbp)
    movq -2392(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq -2368(%rbp), %r10
    movl (%r10), %r15d
    movq %r13, %r10
    movl %r15d, (%r10)
    leaq .Ltext_98(%rip), %r15
    leaq -696(%rbp), %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $31, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -2392(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -712(%rbp), %r13
    movq -3080(%rbp), %r10
    movq (%r10), %r14
    movq -2384(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_104(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r14
    movq -3064(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L13_50
    jmp .L13_49
.L13_50:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L13_49:
    leaq -728(%rbp), %rbx
    movq -3056(%rbp), %r10
    movq (%r10), %r12
    movq -2328(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L13_52
    jmp .L13_51
.L13_52:
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
.L13_51:
    movq -2392(%rbp), %rsi
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
.L13_53:
    jmp .L13_48
.L13_47:
.L13_48:
    leaq -744(%rbp), %rax
    movq %rax, -2400(%rbp)
    movq -2400(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -168(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rdi
    call strlen@PLT
    movq %rax, %r14
    leaq -760(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $0, %rcx
    cmpq %rcx, %r14
    jbe .L13_55
.L13_54:
    movq -2368(%rbp), %r10
    movl (%r10), %r14d
    movq %r13, %rsi
    movl %r14d, %edx
    leaq -808(%rbp), %rdi
    call lb_12windows_text_wide@PLT
    leaq -808(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L13_58
    jmp .L13_57
.L13_58:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq -120(%rbp), %rax
    movq %rax, -2408(%rbp)
    movq -2408(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -2416(%rbp)
    movq %rbx, %r10
    movq -2416(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -2408(%rbp), %rax
    movq $64, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -824(%rbp), %rbx
    movq -3080(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -2424(%rbp)
    movq -2384(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq -2424(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -2432(%rbp)
    movq -2432(%rbp), %r10
    movq %r13, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r13
    movq -3064(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2440(%rbp)
    movq -2440(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L13_60
    jmp .L13_59
.L13_60:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L13_59:
    leaq -840(%rbp), %rbx
    movq -3056(%rbp), %r10
    movq (%r10), %r12
    movq -2328(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r12
    movq -2440(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L13_62
    jmp .L13_61
.L13_62:
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
.L13_61:
    movq -2408(%rbp), %rsi
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
.L13_63:
.L13_57:
    movq %r15, %r10
    movq -2400(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L13_56
.L13_55:
.L13_56:
    leaq -856(%rbp), %rax
    movq %rax, -2448(%rbp)
    movq -2448(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -192(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L13_67
    jmp .L13_65
.L13_67:
    leaq -872(%rbp), %r14
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L13_64:
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -920(%rbp), %rdi
    call lb_process_19environment_windows@PLT
    leaq -920(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L13_69
    jmp .L13_68
.L13_69:
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    leaq -120(%rbp), %rax
    movq %rax, -2456(%rbp)
    movq -2456(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -2456(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -2400(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    leaq -936(%rbp), %r12
    movq -3080(%rbp), %r10
    movq (%r10), %r14
    movq -2384(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, -2464(%rbp)
    movq %r12, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq -2464(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r14
    movq -3064(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2472(%rbp)
    movq -2472(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L13_71
    jmp .L13_70
.L13_71:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r14, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L13_70:
    leaq -952(%rbp), %rbx
    movq -3056(%rbp), %r10
    movq (%r10), %r12
    movq -2328(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r12
    movq -2472(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L13_73
    jmp .L13_72
.L13_73:
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
.L13_72:
    movq -2456(%rbp), %rsi
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
.L13_74:
.L13_68:
    movq %r13, %r10
    movq -2448(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L13_66
.L13_65:
.L13_66:
    leaq -992(%rbp), %rdi
    call lb_process_17temporary_windows@PLT
    leaq -992(%rbp), %r13
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L13_76
    jmp .L13_75
.L13_76:
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq -120(%rbp), %rax
    movq %rax, -2480(%rbp)
    movq -2480(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -2488(%rbp)
    movq %r12, %r10
    movq -2488(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -2480(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -2448(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    movq -2400(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    leaq -1008(%rbp), %r12
    movq -3080(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -2496(%rbp)
    movq -2384(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq -2496(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -2504(%rbp)
    movq -2504(%rbp), %r10
    movq %r14, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r14
    movq -3064(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2512(%rbp)
    movq -2512(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L13_78
    jmp .L13_77
.L13_78:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r14, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L13_77:
    leaq -1024(%rbp), %rbx
    movq -3056(%rbp), %r10
    movq (%r10), %r12
    movq -2328(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r12
    movq -2512(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L13_80
    jmp .L13_79
.L13_80:
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
.L13_79:
    movq -2480(%rbp), %rsi
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
.L13_81:
.L13_75:
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -2520(%rbp)
    leaq -1064(%rbp), %rdi
    call lb_process_17temporary_windows@PLT
    leaq -1064(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L13_83
    jmp .L13_82
.L13_83:
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    leaq -120(%rbp), %rax
    movq %rax, -2528(%rbp)
    movq -2528(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -2528(%rbp), %rax
    movq $64, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -2520(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2448(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    movq -2400(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    leaq -1080(%rbp), %rbx
    movq -3080(%rbp), %r10
    movq (%r10), %r13
    movq -2384(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, -2536(%rbp)
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq -2536(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r13
    movq -3064(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2544(%rbp)
    movq -2544(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L13_85
    jmp .L13_84
.L13_85:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L13_84:
    leaq -1096(%rbp), %rbx
    movq -3056(%rbp), %r10
    movq (%r10), %r12
    movq -2328(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r12
    movq -2544(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L13_87
    jmp .L13_86
.L13_87:
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
.L13_86:
    movq -2528(%rbp), %rsi
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
.L13_88:
.L13_82:
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, -2552(%rbp)
    leaq .Ltext_109(%rip), %r13
    leaq .Ltext_110(%rip), %r14
    movq %r13, %rdi
    movq %r14, %rsi
    call fopen@PLT
    movq %rax, -3088(%rbp)
    movq -3088(%rbp), %rax
    testq %rax, %rax
    jne .L13_89
    jmp .L13_90
.L13_89:
    jmp .L13_91
.L13_90:
    leaq -120(%rbp), %rax
    movq %rax, -2560(%rbp)
    movq -2560(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq -2368(%rbp), %r10
    movl (%r10), %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    leaq .Ltext_111(%rip), %r15
    leaq -1112(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq $35, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -2560(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -2552(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2520(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2448(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    movq -2400(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    leaq -1128(%rbp), %r12
    movq -3080(%rbp), %r10
    movq (%r10), %r14
    movq -2384(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq %r12, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r14
    movq -3064(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L13_93
    jmp .L13_92
.L13_93:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r14, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L13_92:
    leaq -1144(%rbp), %rbx
    movq -3056(%rbp), %r10
    movq (%r10), %r12
    movq -2328(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L13_95
    jmp .L13_94
.L13_95:
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
.L13_94:
    movq -2560(%rbp), %rsi
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
.L13_96:
.L13_91:
    movq -2520(%rbp), %rsi
    leaq -1184(%rbp), %rdi
    call lb_process_12inherit_file@PLT
    leaq -1184(%rbp), %r13
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L13_98
    jmp .L13_97
.L13_98:
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq -120(%rbp), %rax
    movq %rax, -2568(%rbp)
    movq -2568(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -2576(%rbp)
    movq %r12, %r10
    movq -2576(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -2568(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -3088(%rbp), %rdi
    call fclose@PLT
    movl %eax, %r12d
    movq -2552(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2520(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2448(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    movq -2400(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    leaq -1200(%rbp), %r12
    movq -3080(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -2584(%rbp)
    movq -2384(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq -2584(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -2592(%rbp)
    movq -2592(%rbp), %r10
    movq %r14, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r14
    movq -3064(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2600(%rbp)
    movq -2600(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L13_100
    jmp .L13_99
.L13_100:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r14, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L13_99:
    leaq -1216(%rbp), %rbx
    movq -3056(%rbp), %r10
    movq (%r10), %r12
    movq -2328(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r12
    movq -2600(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L13_102
    jmp .L13_101
.L13_102:
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
.L13_101:
    movq -2568(%rbp), %rsi
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
.L13_103:
.L13_97:
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -2608(%rbp)
    movq -2552(%rbp), %rsi
    leaq -1256(%rbp), %rdi
    call lb_process_12inherit_file@PLT
    leaq -1256(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L13_105
    jmp .L13_104
.L13_105:
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    leaq -120(%rbp), %rax
    movq %rax, -2616(%rbp)
    movq -2616(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -2616(%rbp), %rax
    movq $64, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -2608(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -3088(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2552(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2520(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2448(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    movq -2400(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    leaq -1272(%rbp), %rbx
    movq -3080(%rbp), %r10
    movq (%r10), %r13
    movq -2384(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, -2624(%rbp)
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq -2624(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r13
    movq -3064(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2632(%rbp)
    movq -2632(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L13_107
    jmp .L13_106
.L13_107:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L13_106:
    leaq -1288(%rbp), %rbx
    movq -3056(%rbp), %r10
    movq (%r10), %r12
    movq -2328(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r12
    movq -2632(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L13_109
    jmp .L13_108
.L13_109:
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
.L13_108:
    movq -2616(%rbp), %rsi
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
.L13_110:
.L13_104:
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, -2640(%rbp)
    movq -3088(%rbp), %rsi
    leaq -1328(%rbp), %rdi
    call lb_process_12inherit_file@PLT
    leaq -1328(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L13_112
    jmp .L13_111
.L13_112:
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    leaq -120(%rbp), %rax
    movq %rax, -2648(%rbp)
    movq -2648(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -2648(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -2640(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -2608(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -3088(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2552(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2520(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2448(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    movq -2400(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    leaq -1344(%rbp), %r12
    movq -3080(%rbp), %r10
    movq (%r10), %r13
    movq -2384(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, -2656(%rbp)
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq -2656(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r13
    movq -3064(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2664(%rbp)
    movq -2664(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L13_114
    jmp .L13_113
.L13_114:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r13, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L13_113:
    leaq -1360(%rbp), %rbx
    movq -3056(%rbp), %r10
    movq (%r10), %r12
    movq -2328(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r12
    movq -2664(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L13_116
    jmp .L13_115
.L13_116:
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
.L13_115:
    movq -2648(%rbp), %rsi
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
.L13_117:
.L13_111:
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -2672(%rbp)
    leaq -1464(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movups %xmm8, 80(%r11)
    movq $0, 96(%r11)
    movl $104, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq $60, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movl $256, %eax
    movq %r15, %r10
    movl %eax, (%r10)
    movq $80, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq -2672(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $88, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq -2608(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $96, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq -2640(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq -1488(%rbp), %r15
    movq %r15, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq -3080(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -2680(%rbp)
    leaq -208(%rbp), %rax
    movq %rax, -2688(%rbp)
    movq -2688(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -2696(%rbp)
    movq -2696(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %eax
    movl %eax, -2704(%rbp)
    movl -2704(%rbp), %eax
    testl %eax, %eax
    jne .L13_121
    jmp .L13_122
.L13_121:
    movl $4, %eax
    movl %eax, %r14d
    jmp .L13_123
.L13_122:
    movl $0, %eax
    movl %eax, %r14d
.L13_123:
    movl $134218752, %ecx
    movl %r14d, %r12d
    orl %ecx, %r12d
    movq -2448(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L13_125
.L13_124:
    movq -2448(%rbp), %r10
    movq (%r10), %rbx
    jmp .L13_126
.L13_125:
    movq $0, %rax
    movq %rax, %rbx
.L13_126:
    movq -2400(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    jbe .L13_128
.L13_127:
    movq -2400(%rbp), %r10
    movq (%r10), %r14
    jmp .L13_129
.L13_128:
    movq $0, %rax
    movq %rax, %r14
.L13_129:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq %r15, %rax
    movq %rax, 24(%rsp)
    movq $0, %rdi
    movq -2680(%rbp), %rsi
    movq $0, %rdx
    movq $0, %rcx
    movl $1, %r8d
    movl %r12d, %r9d
    call CreateProcessW@PLT
    addq $32, %rsp
    movl %eax, -2712(%rbp)
    movl -2712(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jne .L13_119
.L13_118:
    leaq -120(%rbp), %rax
    movq %rax, -2728(%rbp)
    movq -2728(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq -2368(%rbp), %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_116(%rip), %r13
    leaq -1504(%rbp), %r14
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
    movq -2728(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -2672(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq -2640(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq -2608(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq -3088(%rbp), %rdi
    call fclose@PLT
    movl %eax, %r12d
    movq -2552(%rbp), %rdi
    call fclose@PLT
    movl %eax, %r12d
    movq -2520(%rbp), %rdi
    call fclose@PLT
    movl %eax, %r12d
    movq -2448(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    movq -2400(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    leaq -1520(%rbp), %r12
    movq -2384(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq -2680(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r13
    movq -3064(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L13_131
    jmp .L13_130
.L13_131:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r13, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L13_130:
    leaq -1536(%rbp), %rbx
    movq -3056(%rbp), %r10
    movq (%r10), %r12
    movq -2328(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L13_133
    jmp .L13_132
.L13_133:
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
.L13_132:
    movq -2728(%rbp), %rsi
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
.L13_134:
    jmp .L13_120
.L13_119:
.L13_120:
    movq %r15, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L13_135
    jmp .L13_136
.L13_135:
    jmp .L13_137
.L13_136:
    leaq .Ltext_118(%rip), %rbx
    leaq -1552(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $33, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_119(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_119(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_137:
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -3096(%rbp)
    movq -3096(%rbp), %rax
    testq %rax, %rax
    jne .L13_138
    jmp .L13_139
.L13_138:
    jmp .L13_140
.L13_139:
    leaq .Ltext_120(%rip), %rbx
    leaq -1568(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $32, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_121(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_121(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_140:
    movq -2696(%rbp), %rax
    testq %rax, %rax
    jne .L13_144
    jmp .L13_142
.L13_144:
.L13_141:
    movq %rbx, %rsi
    movq -3096(%rbp), %rdx
    movq -2520(%rbp), %rcx
    movq -2552(%rbp), %r8
    movq -2696(%rbp), %r9
    leaq -1600(%rbp), %rdi
    call lb_process_15monitor_windows@PLT
    leaq -1600(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L13_146
    jmp .L13_145
.L13_146:
    leaq -120(%rbp), %rax
    movq %rax, -2736(%rbp)
    movq -2736(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -2744(%rbp)
    movq %r14, %r10
    movq -2744(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -2736(%rbp), %rax
    movq $64, %rcx
    addq %rcx, %rax
    movq %rax, -2752(%rbp)
    movl $1, %eax
    movq -2752(%rbp), %r10
    movb %al, (%r10)
    movq -3096(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq %rbx, %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -2672(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -2640(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -2608(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -3088(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2552(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2520(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2448(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    movq -2400(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    leaq -1616(%rbp), %rax
    movq %rax, -2760(%rbp)
    movq -2384(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq -2680(%rbp), %rax
    movq -2760(%rbp), %r10
    movq %rax, (%r10)
    movq -2760(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2768(%rbp)
    movq -2768(%rbp), %r10
    movq %r13, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r13
    movq -3064(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2776(%rbp)
    movq -2776(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L13_148
    jmp .L13_147
.L13_148:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r13, %rdi
    movq -2760(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L13_147:
    leaq -1632(%rbp), %rbx
    movq -3056(%rbp), %r10
    movq (%r10), %r12
    movq -2328(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r12
    movq -2776(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L13_150
    jmp .L13_149
.L13_150:
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
.L13_149:
    movq -2736(%rbp), %rsi
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
.L13_151:
.L13_145:
    jmp .L13_143
.L13_142:
    movq %rbx, %rdi
    movl $4294967295, %esi
    call WaitForSingleObject@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L13_153
.L13_152:
    movq %rbx, %rdi
    movl $1, %esi
    call TerminateProcess@PLT
    movl %eax, %r12d
    movq %rbx, %rdi
    movl $4294967295, %esi
    call WaitForSingleObject@PLT
    movl %eax, %r12d
    leaq -120(%rbp), %rax
    movq %rax, -2784(%rbp)
    movq -2784(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq -2368(%rbp), %r10
    movl (%r10), %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    leaq .Ltext_123(%rip), %r15
    leaq -1648(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq $30, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -2784(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -3096(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq %rbx, %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -2672(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -2640(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -2608(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -3088(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2552(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2520(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2448(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    movq -2400(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    leaq -1664(%rbp), %r12
    movq -2384(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq -2680(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r14
    movq -3064(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L13_156
    jmp .L13_155
.L13_156:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r14, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L13_155:
    leaq -1680(%rbp), %rbx
    movq -3056(%rbp), %r10
    movq (%r10), %r12
    movq -2328(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L13_158
    jmp .L13_157
.L13_158:
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
.L13_157:
    movq -2784(%rbp), %rsi
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
.L13_159:
    jmp .L13_154
.L13_153:
.L13_154:
.L13_143:
    leaq -1684(%rbp), %rax
    movq %rax, -2792(%rbp)
    movl $0, %eax
    movq -2792(%rbp), %r10
    movl %eax, (%r10)
    movq %rbx, %rdi
    movq -2792(%rbp), %rsi
    call GetExitCodeProcess@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L13_161
.L13_160:
    leaq -120(%rbp), %rax
    movq %rax, -2800(%rbp)
    movq -2800(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq -2368(%rbp), %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_125(%rip), %r14
    leaq -1704(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $38, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -2800(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -3096(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq %rbx, %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -2672(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -2640(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -2608(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -3088(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2552(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2520(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2448(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    movq -2400(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    leaq -1720(%rbp), %r13
    movq -2384(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq -2680(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r14
    movq -3064(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L13_164
    jmp .L13_163
.L13_164:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L13_163:
    leaq -1736(%rbp), %rbx
    movq -3056(%rbp), %r10
    movq (%r10), %r12
    movq -2328(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L13_166
    jmp .L13_165
.L13_166:
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
.L13_165:
    movq -2800(%rbp), %rsi
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
.L13_167:
    jmp .L13_162
.L13_161:
.L13_162:
    movl -2704(%rbp), %eax
    testl %eax, %eax
    jne .L13_168
    jmp .L13_169
.L13_168:
    leaq -1776(%rbp), %r12
    movq -2792(%rbp), %r10
    movl (%r10), %eax
    movl %eax, -2808(%rbp)
    movl -2808(%rbp), %eax
    movl %eax, %eax
    movq %rax, -2816(%rbp)
    movl -2816(%rbp), %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_127(%rip), %rax
    movq %rax, -2824(%rbp)
    leaq -1792(%rbp), %r14
    movq -2824(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $0, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -1808(%rbp), %r14
    movq -2824(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -2832(%rbp)
    movq $0, %rax
    movq -2832(%rbp), %r10
    movq %rax, (%r10)
    movq $24, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -2840(%rbp)
    movq %r14, %r10
    movq -2840(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -120(%rbp), %rax
    movq %rax, -2848(%rbp)
    movq %r12, %r10
    movq -2848(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq -2848(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -3096(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq %rbx, %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -2672(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -2640(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -2608(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -3088(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2552(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2520(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2448(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    movq -2400(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    leaq -1824(%rbp), %r12
    movq -2384(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq -2680(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r14
    movq -3064(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L13_172
    jmp .L13_171
.L13_172:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r14, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L13_171:
    leaq -1840(%rbp), %rbx
    movq -3056(%rbp), %r10
    movq (%r10), %r12
    movq -2328(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L13_174
    jmp .L13_173
.L13_174:
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
.L13_173:
    movq -2848(%rbp), %rsi
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
.L13_175:
    jmp .L13_170
.L13_169:
.L13_170:
    leaq -1856(%rbp), %rax
    movq %rax, -3104(%rbp)
    movq -2520(%rbp), %rsi
    leaq -1904(%rbp), %rdi
    call lb_process_15capture_windows@PLT
    leaq -1904(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L13_177
    jmp .L13_176
.L13_177:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq -120(%rbp), %rax
    movq %rax, -2856(%rbp)
    movq -2856(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -2864(%rbp)
    movq %r12, %r10
    movq -2864(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -2856(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -3096(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq %rbx, %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -2672(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -2640(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -2608(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -3088(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2552(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2520(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2448(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    movq -2400(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    leaq -1920(%rbp), %r12
    movq -2384(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, -2872(%rbp)
    movq -2680(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq -2872(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r13
    movq -3064(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2880(%rbp)
    movq -2880(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L13_179
    jmp .L13_178
.L13_179:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r13, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L13_178:
    leaq -1936(%rbp), %rbx
    movq -3056(%rbp), %r10
    movq (%r10), %r12
    movq -2328(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r12
    movq -2880(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L13_181
    jmp .L13_180
.L13_181:
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
.L13_180:
    movq -2856(%rbp), %rsi
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
.L13_182:
.L13_176:
    movq %r14, %r10
    movq -3104(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -1952(%rbp), %r13
    movq -2552(%rbp), %rsi
    leaq -2040(%rbp), %rdi
    call lb_process_15capture_windows@PLT
    leaq -2040(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L13_186
    jmp .L13_185
.L13_186:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq -1992(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L13_183
.L13_185:
    leaq -1968(%rbp), %rax
    movq %rax, -2888(%rbp)
    movq %r15, %r10
    movq -2888(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L13_184
.L13_183:
    movq -3104(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_release@PLT
    leaq -120(%rbp), %rax
    movq %rax, -2896(%rbp)
    movq -2896(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r13, %r10
    movl (%r10), %eax
    movl %eax, -2904(%rbp)
    movl -2904(%rbp), %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -2912(%rbp)
    movq $8, %rcx
    addq %rcx, %r14
    movq -2912(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -2896(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq -3096(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq %rbx, %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -2672(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -2640(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -2608(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -3088(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2552(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2520(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2448(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    movq -2400(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    leaq -2056(%rbp), %r14
    movq -2384(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, -2920(%rbp)
    movq -2680(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq -2920(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r12
    movq -3064(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2928(%rbp)
    movq -2928(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L13_188
    jmp .L13_187
.L13_188:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r12, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L13_187:
    leaq -2072(%rbp), %rbx
    movq -3056(%rbp), %r10
    movq (%r10), %r12
    movq -2328(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r12
    movq -2928(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L13_190
    jmp .L13_189
.L13_190:
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
.L13_189:
    movq -2896(%rbp), %rsi
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
.L13_191:
.L13_184:
    movq -2888(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -2112(%rbp), %r12
    movq -2792(%rbp), %r10
    movl (%r10), %eax
    movl %eax, -2936(%rbp)
    movl -2936(%rbp), %eax
    movl %eax, %eax
    movq %rax, -2944(%rbp)
    movl -2944(%rbp), %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -2952(%rbp)
    movq -3104(%rbp), %r10
    movq -2952(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -2960(%rbp)
    movq %r13, %r10
    movq -2960(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -120(%rbp), %rax
    movq %rax, -2968(%rbp)
    movq %r12, %r10
    movq -2968(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq -2968(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -3096(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq %rbx, %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -2672(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -2640(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -2608(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -3088(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2552(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2520(%rbp), %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -2448(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    movq -2400(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    leaq -2128(%rbp), %r12
    movq -2384(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, -2976(%rbp)
    movq -2680(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq -2976(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r14
    movq -3064(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2984(%rbp)
    movq -2984(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L13_193
    jmp .L13_192
.L13_193:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r14, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L13_192:
    leaq -2144(%rbp), %rbx
    movq -3056(%rbp), %r10
    movq (%r10), %r12
    movq -2328(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -3064(%rbp), %r10
    movq (%r10), %r12
    movq -2984(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L13_195
    jmp .L13_194
.L13_195:
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
.L13_194:
    movq -2968(%rbp), %rsi
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
.L13_196:
    movq %rbx, %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq %r14, %rbx
    movq %rbx, %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq %r13, %rbx
    movq %rbx, %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq %r12, %rbx
    movq %rbx, %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq %r15, %rbx
    movq %rbx, %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -3040(%rbp), %rax
    movq %rax, %rbx
    movq %rbx, %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -3032(%rbp), %rax
    movq %rax, %rbx
    movq %rbx, %rdi
    call fclose@PLT
    movl %eax, %ebx
    movq -3024(%rbp), %rax
    movq %rax, %rbx
    movq %rbx, %rdi
    call fclose@PLT
    movl %eax, %ebx
    leaq -856(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    leaq -744(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_15release_storage_0g1_u16@PLT
    leaq -584(%rbp), %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -2992(%rbp)
    leaq -2160(%rbp), %rax
    movq %rax, -3000(%rbp)
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -3008(%rbp)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_131(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -3008(%rbp), %rax
    movq -3000(%rbp), %r10
    movq %rax, (%r10)
    movq -3000(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -3016(%rbp)
    movq -3016(%rbp), %r10
    movq %rbx, (%r10)
    movq -2992(%rbp), %r10
    movq (%r10), %r12
    movq -2992(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L13_198
    jmp .L13_197
.L13_198:
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq -3000(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L13_197:
    leaq -472(%rbp), %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    leaq -2176(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_131(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L13_200
    jmp .L13_199
.L13_200:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L13_199:
    leaq .Ltext_131(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_TerminationStatus_requested
    .type lb_process_TerminationStatus_requested, @function
lb_process_TerminationStatus_requested:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -24(%rbp)
    leaq -24(%rbp), %r10
    movq (%r10), %r12
    leaq lb_process_22termination_generation(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, %rbx
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L14_1:
    leaq .Ltext_132(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_Termination_init
    .type lb_process_Termination_init, @function
lb_process_Termination_init:
    pushq %rbp
    movq %rsp, %rbp
    subq $352, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -352(%rbp)
    leaq lb_process_16termination_lock(%rip), %rax
    movq %rax, -336(%rbp)
    movq -336(%rbp), %rdi
    call lb_sync_Mutex_lock@PLT
    leaq lb_process_19termination_closing(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %eax
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L15_1
    jmp .L15_2
.L15_1:
    leaq -80(%rbp), %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_133(%rip), %r13
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $30, %rax
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
    movq -336(%rbp), %rdi
    call lb_sync_Mutex_unlock@PLT
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
.L15_4:
    jmp .L15_3
.L15_2:
.L15_3:
    leaq -112(%rbp), %r12
    movq %r12, %r11
    movq $0, 0(%r11)
    leaq lb_process_22termination_generation(%rip), %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, %r14
    movq %r12, %r10
    movq %r14, (%r10)
    movq %r12, %r10
    movq -352(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq lb_process_18termination_owners(%rip), %rax
    movq %rax, -344(%rbp)
    movq -344(%rbp), %r10
    movq (%r10), %rax
    movq %rax, %r14
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_134(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %r15, %rax
    movq -344(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rcx
    cmpq %rcx, %r14
    jne .L15_6
.L15_5:
    leaq lb_process_18previous_interrupt(%rip), %r14
    leaq lb_process_16interrupt_signal(%rip), %r15
    movq %r15, %r10
    movslq (%r10), %r13
    movq lb_process_20termination_received@GOTPCREL(%rip), %rbx
    movl %r13d, %edi
    movq %rbx, %rsi
    call signal@PLT
    movq %rax, %r13
    movq %r14, %r10
    movq %r13, (%r10)
    leaq -312(%rbp), %r10
    movq %r13, (%r10)
    testq %r13, %r13
    jne .L15_27
    jmp .L15_25
.L15_27:
.L15_24:
    movq $-1, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r12d
    movzbl %r12b, %r12d
    leaq -320(%rbp), %r10
    movl %r12d, (%r10)
    jmp .L15_30
.L15_28:
    jmp .L15_26
.L15_25:
.L15_26:
    movl $0, %eax
    leaq -320(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, %r12d
    jmp .L15_30
.L15_29:
    leaq .Ltext_136(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
.L15_30:
    testl %r12d, %r12d
    jne .L15_16
    jmp .L15_17
.L15_16:
    leaq -264(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_137(%rip), %r12
    leaq -280(%rbp), %r13
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
    movq %rbx, %r10
    leaq -232(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L15_38
.L15_19:
    jmp .L15_18
.L15_17:
.L15_18:
    leaq lb_process_18previous_terminate(%rip), %r12
    leaq lb_process_16terminate_signal(%rip), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movl %r13d, %edi
    movq %rbx, %rsi
    call signal@PLT
    movq %rax, %r13
    movq %r12, %r10
    movq %r13, (%r10)
    leaq -312(%rbp), %r10
    movq %r13, (%r10)
    testq %r13, %r13
    jne .L15_34
    jmp .L15_32
.L15_34:
.L15_31:
    movq $-1, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    leaq -328(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L15_37
.L15_35:
    jmp .L15_33
.L15_32:
.L15_33:
    movl $0, %eax
    leaq -328(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, %ebx
    jmp .L15_37
.L15_36:
    leaq .Ltext_136(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
.L15_37:
    testl %ebx, %ebx
    jne .L15_20
    jmp .L15_21
.L15_20:
    movq %r15, %r10
    movslq (%r10), %rbx
    movq %r14, %r10
    movq (%r10), %r12
    movl %ebx, %edi
    movq %r12, %rsi
    call signal@PLT
    movq %rax, %rbx
    leaq -264(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_138(%rip), %r12
    leaq -296(%rbp), %r13
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
    movq %rbx, %r10
    leaq -232(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L15_38
.L15_23:
    jmp .L15_22
.L15_21:
.L15_22:
    leaq -264(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -232(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L15_38:
    leaq -232(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L15_14
    jmp .L15_13
.L15_14:
    leaq -200(%rbp), %rbx
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
    movq %rbx, %r10
    leaq -168(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L15_39
.L15_15:
.L15_13:
    leaq -200(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -168(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L15_39:
    leaq -168(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L15_11
    jmp .L15_10
.L15_11:
    leaq -136(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L15_8
.L15_10:
    jmp .L15_9
.L15_8:
    movq $0, %rax
    movq -344(%rbp), %r10
    movq %rax, (%r10)
    leaq -80(%rbp), %r12
    movq %rbx, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -336(%rbp), %rdi
    call lb_sync_Mutex_unlock@PLT
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
.L15_12:
.L15_9:
    jmp .L15_7
.L15_6:
.L15_7:
    movq -352(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -336(%rbp), %rdi
    call lb_sync_Mutex_unlock@PLT
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
    .globl lb_process_Termination_status
    .type lb_process_Termination_status, @function
lb_process_Termination_status:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -32(%rbp), %r10
    movq (%r10), %r12
    leaq -24(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L16_1:
    leaq .Ltext_135(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_Termination_close
    .type lb_process_Termination_close, @function
lb_process_Termination_close:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -32(%rbp)
    leaq -32(%rbp), %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L17_2
.L17_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L17_4:
    jmp .L17_3
.L17_2:
.L17_3:
    leaq lb_process_16termination_lock(%rip), %r12
    movq %r12, %rdi
    call lb_sync_Mutex_lock@PLT
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_process_18termination_owners(%rip), %r13
    movq $1, %rcx
    movq %r13, %r10
    negq %rcx
    lock xaddq %rcx, (%r10)
    movq %rcx, %r13
    movq $1, %rcx
    cmpq %rcx, %r13
    jne .L17_6
.L17_5:
    leaq lb_process_16interrupt_signal(%rip), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_process_18previous_interrupt(%rip), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movl %ebx, %edi
    movq %r13, %rsi
    call signal@PLT
    movq %rax, %rbx
    leaq lb_process_16terminate_signal(%rip), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_process_18previous_terminate(%rip), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movl %ebx, %edi
    movq %r13, %rsi
    call signal@PLT
    movq %rax, %rbx
.L17_8:
.L17_9:
    jmp .L17_7
.L17_6:
.L17_7:
    movq %r12, %rdi
    call lb_sync_Mutex_unlock@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_process_20termination_received
    .type lb_process_20termination_received, @function
lb_process_20termination_received:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movl %edi, -24(%rbp)
    leaq lb_process_22termination_generation(%rip), %rbx
    movq $1, %rcx
    movq %rbx, %r10
    lock xaddq %rcx, (%r10)
    movq %rcx, %rbx
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_process_28termination_console_received
    .type lb_process_28termination_console_received, @function
lb_process_28termination_console_received:
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
    movl (%r10), %ebx
    leaq lb_process_13console_close(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    cmpl %r12d, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L19_25
    jmp .L19_1
.L19_25:
    movl %r12d, %r13d
    jmp .L19_2
.L19_1:
    leaq lb_process_14console_logoff(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    cmpl %r12d, %ebx
    sete %al
    movzbl %al, %r13d
.L19_2:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L19_26
    jmp .L19_3
.L19_26:
    movl %r12d, %r13d
    jmp .L19_4
.L19_3:
    leaq lb_process_16console_shutdown(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    cmpl %r12d, %ebx
    sete %al
    movzbl %al, %r13d
.L19_4:
    movzbl %r13b, %r12d
    movzbl %r12b, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L19_8
    jmp .L19_27
.L19_27:
    movl %r14d, %r13d
    jmp .L19_9
.L19_8:
    leaq lb_process_17console_interrupt(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
.L19_9:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L19_10
    jmp .L19_28
.L19_28:
    movl %r14d, %ebx
    jmp .L19_11
.L19_10:
    leaq lb_process_13console_break(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L19_11:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L19_5
    jmp .L19_6
.L19_5:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L19_12:
    jmp .L19_7
.L19_6:
.L19_7:
    testl %r12d, %r12d
    jne .L19_13
    jmp .L19_14
.L19_13:
    leaq lb_process_19termination_closing(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L19_15
.L19_14:
.L19_15:
    leaq lb_process_22termination_generation(%rip), %rbx
    movq $1, %rcx
    movq %rbx, %r10
    lock xaddq %rcx, (%r10)
    movq %rcx, %rbx
    testl %r12d, %r12d
    jne .L19_16
    jmp .L19_17
.L19_16:
    call GetTickCount64@PLT
    movq %rax, %rbx
    leaq lb_process_18termination_owners(%rip), %r12
    leaq lb_process_26console_acknowledgement_ms(%rip), %r13
.L19_19:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    seta %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L19_22
    jmp .L19_29
.L19_29:
    movl %r14d, %r15d
    jmp .L19_23
.L19_22:
    call GetTickCount64@PLT
    movq %rax, %r14
    subq %rbx, %r14
    movq %r13, %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    setb %al
    movzbl %al, %r15d
.L19_23:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L19_20
    jmp .L19_21
.L19_20:
    movl $1, %edi
    call Sleep@PLT
    jmp .L19_19
.L19_21:
    jmp .L19_18
.L19_17:
.L19_18:
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L19_24:
    leaq .Ltext_139(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_27termination_windows_install
    .type lb_process_27termination_windows_install, @function
lb_process_27termination_windows_install:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq lb_process_28termination_console_received@GOTPCREL(%rip), %rbx
    movq %rbx, %rdi
    movl $1, %esi
    call SetConsoleCtrlHandler@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L20_2
.L20_1:
    leaq -64(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_140(%rip), %r12
    leaq -80(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $54, %rax
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
.L20_4:
    jmp .L20_3
.L20_2:
.L20_3:
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
    .globl lb_process_27termination_windows_restore
    .type lb_process_27termination_windows_restore, @function
lb_process_27termination_windows_restore:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq lb_process_28termination_console_received@GOTPCREL(%rip), %rbx
    movq %rbx, %rdi
    movl $0, %esi
    call SetConsoleCtrlHandler@PLT
    movl %eax, %ebx
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_process_16environment_name
    .type lb_process_16environment_name, @function
lb_process_16environment_name:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -112(%rbp)
    leaq -128(%rbp), %rbx
    leaq -112(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call strlen@PLT
    movq %rax, %r13
    leaq -144(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rax, %rbx
.L22_1:
    cmpq %r13, %rbx
    jae .L22_4
.L22_2:
    movq %r12, %r14
    addq %rbx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $61, %ecx
    cmpl %ecx, %r14d
    jne .L22_6
.L22_5:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L22_9
.L22_8:
    jmp .L22_4
.L22_11:
    jmp .L22_10
.L22_9:
.L22_10:
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $0, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_143(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_143(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %rbx, %rax
    jbe .L22_12
.L22_13:
    leaq .Ltext_143(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
.L22_12:
    leaq -160(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    leaq -176(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    leaq -96(%rbp), %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
.L22_14:
    jmp .L22_7
.L22_6:
.L22_7:
.L22_3:
    movq $1, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %rbx
    jmp .L22_1
.L22_4:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_144(%rip), %r13
    leaq -192(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $63, %rax
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
.L22_15:
    leaq .Ltext_145(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_17environment_posix
    .type lb_process_17environment_posix, @function
lb_process_17environment_posix:
    pushq %rbp
    movq %rsp, %rbp
    subq $960, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -112(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movq %rcx, -128(%rbp)
    leaq -112(%rbp), %rax
    movq %rax, -632(%rbp)
    movq -632(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -640(%rbp)
    leaq -144(%rbp), %r14
    leaq -192(%rbp), %rax
    movq %rax, -952(%rbp)
    movq -952(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -656(%rbp)
    leaq -240(%rbp), %rax
    movq %rax, -960(%rbp)
    movq -960(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -664(%rbp)
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -672(%rbp)
    movq -960(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -680(%rbp)
    movq $0, %rax
    movq %rax, -872(%rbp)
.L23_1:
    movq -872(%rbp), %rax
    movq -640(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L23_4
.L23_2:
    movq -632(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -648(%rbp)
    movq -872(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq -648(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rsi
    leaq -192(%rbp), %rdi
    call lb_process_16environment_name@PLT
    movq -656(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L23_6
    jmp .L23_5
.L23_6:
    movq -952(%rbp), %rax
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
.L23_7:
.L23_5:
    movq -952(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rax, %r12
.L23_8:
    movq -872(%rbp), %rcx
    cmpq %rcx, %r12
    jae .L23_11
.L23_9:
    movq $8, %rcx
    movq %r12, %rbx
    imulq %rcx, %rbx
    movq -648(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -240(%rbp), %rdi
    call lb_process_16environment_name@PLT
    movq -664(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L23_16
    jmp .L23_15
.L23_16:
    movq -960(%rbp), %rax
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
.L23_17:
.L23_15:
    movq -672(%rbp), %r10
    movq (%r10), %rbx
    movq -680(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L23_18
    jmp .L23_77
.L23_77:
    movl %r13d, %ebx
    jmp .L23_19
.L23_18:
    movq %r14, %r10
    movq (%r10), %r13
    movq -960(%rbp), %r10
    movq (%r10), %r15
    movq %r13, %rdi
    movq %r15, %rsi
    movq %rbx, %rdx
    call memcmp@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L23_19:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L23_12
    jmp .L23_13
.L23_12:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_148(%rip), %r13
    leaq -256(%rbp), %r14
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
.L23_20:
    jmp .L23_14
.L23_13:
.L23_14:
.L23_10:
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r12
    jmp .L23_8
.L23_11:
.L23_3:
    movq -872(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, -872(%rbp)
    jmp .L23_1
.L23_4:
    leaq -128(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -688(%rbp)
    movq $0, %rax
    movq %rax, -880(%rbp)
.L23_21:
    movq -880(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq -688(%rbp), %rax
    movq %r13, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L23_23
.L23_22:
    movq -880(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_149(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r13, %rax
    movq %rax, -880(%rbp)
    jmp .L23_21
.L23_23:
    leaq -264(%rbp), %r13
    movq -880(%rbp), %rdi
    movq -640(%rbp), %rsi
    movl $64, %edx
    movq %r13, %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r14d
    leaq -280(%rbp), %r15
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
    jne .L23_24
    jmp .L23_25
.L23_24:
    jmp .L23_26
.L23_25:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_150(%rip), %r13
    leaq -296(%rbp), %r14
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
.L23_27:
.L23_26:
    leaq -304(%rbp), %r14
    movq %r13, %rdi
    movq $1, %rsi
    movl $64, %edx
    movq %r14, %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r15d
    leaq -320(%rbp), %rbx
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -696(%rbp)
    movq -696(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movb %r15b, (%r10)
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L23_28
    jmp .L23_29
.L23_28:
    jmp .L23_30
.L23_29:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_150(%rip), %r13
    leaq -336(%rbp), %r14
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
.L23_31:
.L23_30:
    leaq -352(%rbp), %rax
    movq %rax, -888(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -896(%rbp)
    leaq -400(%rbp), %rax
    movq %rax, -904(%rbp)
    movq -696(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L23_33
.L23_32:
    movq -904(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %r14
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -904(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L23_34
.L23_33:
    movq -696(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq -896(%rbp), %r10
    movq (%r10), %rbx
    movq -896(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L23_35
    jmp .L23_36
.L23_36:
    leaq .Ltext_151(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L23_35:
    movq %r13, %r10
    movq (%r10), %r15
    movq %rbx, %rsi
    movq %r12, %rdx
    movq $8, %rcx
    leaq -424(%rbp), %rdi
    movq %r15, %r11
    call *%r11
    leaq -424(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, -704(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl -704(%rbp), %eax
    andl %r15d, %eax
    movl %eax, -712(%rbp)
    movl -712(%rbp), %eax
    testl %eax, %eax
    jne .L23_37
    jmp .L23_38
.L23_37:
    movq -904(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_5(%rip), %r12
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
    movq -904(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L23_34
.L23_38:
    movq %r14, %r10
    movq (%r10), %rbx
    movq -904(%rbp), %r10
    movq %rbx, (%r10)
    movq -904(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -696(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -904(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L23_34:
    movq -904(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L23_40
    jmp .L23_39
.L23_40:
    movq -904(%rbp), %rax
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
.L23_41:
.L23_39:
    movq -904(%rbp), %r10
    movq -888(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -456(%rbp), %r14
    leaq -544(%rbp), %rax
    movq %rax, -936(%rbp)
    movq -936(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -720(%rbp)
    leaq -472(%rbp), %rax
    movq %rax, -744(%rbp)
    movq -936(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -728(%rbp)
    leaq -496(%rbp), %rax
    movq %rax, -736(%rbp)
    leaq .Ltext_127(%rip), %rax
    movq %rax, -752(%rbp)
    leaq -560(%rbp), %rax
    movq %rax, -760(%rbp)
    movq -760(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -768(%rbp)
    leaq -472(%rbp), %rax
    movq %rax, -776(%rbp)
    leaq -472(%rbp), %rax
    movq %rax, -784(%rbp)
    leaq -608(%rbp), %rax
    movq %rax, -944(%rbp)
    movq -944(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -800(%rbp)
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -808(%rbp)
    movq -944(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -816(%rbp)
    movq -888(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -824(%rbp)
    movq $0, %rax
    movq %rax, -912(%rbp)
    movq $0, %rax
    movq %rax, -920(%rbp)
.L23_42:
    movq -920(%rbp), %rax
    movq -880(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L23_45
.L23_43:
    movq -920(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq -688(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -928(%rbp)
    movq -928(%rbp), %rax
    testq %rax, %rax
    jne .L23_46
    jmp .L23_47
.L23_46:
    jmp .L23_48
.L23_47:
    leaq .Ltext_152(%rip), %rbx
    leaq -440(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_153(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_153(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
.L23_48:
    movq -928(%rbp), %rsi
    leaq -544(%rbp), %rdi
    call lb_process_16environment_name@PLT
    movq -720(%rbp), %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L23_52
    jmp .L23_51
.L23_52:
    movq -728(%rbp), %r10
    movq -736(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L23_49
.L23_51:
    movq -936(%rbp), %r10
    movq -744(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L23_50
.L23_49:
    movq -752(%rbp), %rax
    movq -760(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq -768(%rbp), %r10
    movq %rax, (%r10)
    movq -760(%rbp), %r10
    movq -776(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L23_50
.L23_53:
.L23_50:
    movq -784(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -632(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -792(%rbp)
    movq $0, %rax
    movq %rax, %rbx
.L23_54:
    movq -640(%rbp), %rcx
    cmpq %rcx, %rbx
    jb .L23_55
.L23_78:
    movl $0, %eax
    movl %eax, %ebx
    jmp .L23_57
.L23_55:
    movq $8, %rcx
    movq %rbx, %r13
    imulq %rcx, %r13
    movq -792(%rbp), %rax
    movq %r13, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rsi
    leaq -608(%rbp), %rdi
    call lb_process_16environment_name@PLT
    movq -800(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L23_62
    jmp .L23_61
.L23_62:
    movq -944(%rbp), %rax
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
    leaq -624(%rbp), %rbx
    movq -888(%rbp), %r10
    movq (%r10), %r13
    movq -888(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_154(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq -896(%rbp), %r10
    movq (%r10), %r13
    movq -896(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L23_64
    jmp .L23_63
.L23_64:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r13, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r11
    call *%r11
.L23_63:
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
.L23_65:
.L23_61:
    movq -808(%rbp), %r10
    movq (%r10), %r13
    movq -816(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r13
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L23_66
    jmp .L23_79
.L23_79:
    movl %r15d, %r13d
    jmp .L23_67
.L23_66:
    movq %r14, %r10
    movq (%r10), %r15
    movq -944(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %rdi
    movq %r12, %rsi
    movq %r13, %rdx
    call memcmp@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %r13d
.L23_67:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L23_58
    jmp .L23_59
.L23_58:
    movl $1, %eax
    movl %eax, %ebx
    jmp .L23_57
.L23_68:
    jmp .L23_60
.L23_59:
.L23_60:
.L23_56:
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %rbx
    jmp .L23_54
.L23_57:
    movzbl %bl, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L23_70
.L23_69:
    movq -888(%rbp), %r10
    movq (%r10), %rbx
    movq -824(%rbp), %r10
    movq (%r10), %r12
    movq -912(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_155(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -912(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    addq %r12, %rbx
    movq -928(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -912(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    jmp .L23_71
.L23_70:
    movq -912(%rbp), %rax
    movq %rax, %rbx
.L23_71:
.L23_44:
    movq -920(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %rbx, %rax
    movq %rax, -912(%rbp)
    movq %r12, %rax
    movq %rax, -920(%rbp)
    jmp .L23_42
.L23_45:
    movq -632(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -832(%rbp)
    movq -888(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -864(%rbp)
    movq -888(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq -912(%rbp), %rax
    movq %rax, %r14
    movq $0, %rax
    movq %rax, %r15
.L23_72:
    movq -640(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L23_75
.L23_73:
    movq $8, %rcx
    movq %r15, %rax
    imulq %rcx, %rax
    movq %rax, -840(%rbp)
    movq -832(%rbp), %rax
    movq -840(%rbp), %rcx
    addq %rcx, %rax
    movq %rax, -848(%rbp)
    movq -848(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -856(%rbp)
    cmpq %r13, %r14
    jb 1f
    leaq .Ltext_157(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %r14, %r12
    imulq %rcx, %r12
    movq -864(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq -856(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $1, %rcx
    movq %r14, %r12
    addq %rcx, %r12
.L23_74:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %r12, %r14
    movq %rbx, %r15
    jmp .L23_72
.L23_75:
    movq -888(%rbp), %r10
    movq (%r10), %rbx
    movq -888(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %r14
    jb 1f
    leaq .Ltext_159(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %r14, %r12
    imulq %rcx, %r12
    addq %r12, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -96(%rbp), %rbx
    movq -888(%rbp), %r10
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
.L23_76:
    leaq .Ltext_160(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_23environment_windows_key
    .type lb_process_23environment_windows_key, @function
lb_process_23environment_windows_key:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
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
    movq (%r10), %rax
    movq %rax, -96(%rbp)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $1, %rax
    movq %rax, %r14
.L24_1:
    movq -96(%rbp), %rcx
    cmpq %rcx, %r14
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L24_4
    jmp .L24_9
.L24_9:
    movl %r15d, %r12d
    jmp .L24_5
.L24_4:
    movq $2, %rcx
    movq %r14, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzwl (%r10), %r12d
    movl $61, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L24_5:
    movzbl %r12b, %r15d
    testl %r15d, %r15d
    jne .L24_2
    jmp .L24_3
.L24_2:
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_162(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %r14
    jmp .L24_1
.L24_3:
    movq %rbx, %r10
    movq (%r10), %r13
    movq -96(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_163(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r14
    jb 1f
    leaq .Ltext_163(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r14, %rax
    jbe .L24_6
.L24_7:
    leaq .Ltext_163(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
.L24_6:
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
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
.L24_8:
    leaq .Ltext_163(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_27environment_windows_compare
    .type lb_process_27environment_windows_compare, @function
lb_process_27environment_windows_compare:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
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
    leaq -80(%rbp), %rbx
    leaq -48(%rbp), %r12
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_23environment_windows_key@PLT
    leaq -96(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -112(%rbp), %r12
    leaq -64(%rbp), %r13
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_23environment_windows_key@PLT
    leaq -128(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %rdi
    movl %ebx, %esi
    movq %r14, %rdx
    movl %r12d, %ecx
    movl $1, %r8d
    call CompareStringOrdinal@PLT
    movl %eax, %ebx
    movl %ebx, %eax
    movl $2, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_164(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L25_1:
    leaq .Ltext_164(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_19environment_windows
    .type lb_process_19environment_windows, @function
lb_process_19environment_windows:
    pushq %rbp
    movq %rsp, %rbp
    subq $1312, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -112(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    call GetEnvironmentStringsW@PLT
    movq %rax, -1144(%rbp)
    movq -1144(%rbp), %rax
    testq %rax, %rax
    jne .L26_1
    jmp .L26_2
.L26_1:
    jmp .L26_3
.L26_2:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_165(%rip), %r13
    leaq -128(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $40, %rax
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
.L26_4:
.L26_3:
    movq $0, %rax
    movq %rax, -1152(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L26_5:
    movq $2, %rcx
    movq %r13, %r14
    imulq %rcx, %r14
    movq -1144(%rbp), %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movzwl (%r10), %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L26_7
.L26_6:
    movq -1152(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_166(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r13, %r15
.L26_8:
    movq $2, %rcx
    movq %r15, %r12
    imulq %rcx, %r12
    movq -1144(%rbp), %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movzwl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L26_10
.L26_9:
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_167(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %r15
    jmp .L26_8
.L26_10:
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_168(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r14, %rax
    movq %rax, -1152(%rbp)
    jmp .L26_5
.L26_7:
    leaq -144(%rbp), %rax
    movq %rax, -1160(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -1168(%rbp)
    leaq -112(%rbp), %rax
    movq %rax, -848(%rbp)
    movq -848(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -1176(%rbp)
    leaq -192(%rbp), %rax
    movq %rax, -1184(%rbp)
    movq -1176(%rbp), %rax
    movabsq $288230376151711744, %rcx
    cmpq %rcx, %rax
    jbe .L26_12
.L26_11:
    movq -1184(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $208273409, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %rbx
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -1184(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L26_13
.L26_12:
    movq -1176(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq -1168(%rbp), %r10
    movq (%r10), %rbx
    movq -1168(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L26_14
    jmp .L26_15
.L26_15:
    leaq .Ltext_169(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L26_14:
    movq %r12, %r10
    movq (%r10), %r13
    movq %rbx, %rsi
    movq %r14, %rdx
    movq $8, %rcx
    leaq -216(%rbp), %rdi
    movq %r13, %r11
    call *%r11
    leaq -216(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r14
    setne %al
    movzbl %al, %eax
    movl %eax, -856(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl -856(%rbp), %eax
    movl %r13d, %ecx
    movl %eax, %r13d
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L26_16
    jmp .L26_17
.L26_16:
    movq -1184(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_5(%rip), %r12
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
    movq -1184(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L26_13
.L26_17:
    movq %r15, %r10
    movq (%r10), %rbx
    movq -1184(%rbp), %r10
    movq %rbx, (%r10)
    movq -1184(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -1176(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -1184(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L26_13:
    movq -1184(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L26_19
    jmp .L26_18
.L26_19:
    movq -1184(%rbp), %rax
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
    movq -1144(%rbp), %rdi
    call FreeEnvironmentStringsW@PLT
    movl %eax, %ebx
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
.L26_20:
.L26_18:
    movq -1184(%rbp), %r10
    movq -1160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -264(%rbp), %rax
    movq %rax, -1296(%rbp)
    movq -1296(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -864(%rbp)
    movq -1160(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -872(%rbp)
    leaq lb_process_failed(%rip), %rax
    movq %rax, -896(%rbp)
    leaq -328(%rbp), %rax
    movq %rax, -1304(%rbp)
    movq -1304(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -904(%rbp)
    movq $0, %rax
    movq %rax, -1192(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L26_21:
    movq -1176(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L26_24
.L26_22:
    movq -848(%rbp), %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r14, %r15
    imulq %rcx, %r15
    addq %r15, %r12
    movq %r12, %r10
    movq (%r10), %r15
    movq %r15, %rsi
    leaq -264(%rbp), %rdi
    call lb_process_16environment_name@PLT
    movq -864(%rbp), %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L26_26
    jmp .L26_25
.L26_26:
    movq -1296(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
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
    movq -1160(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -1192(%rbp), %rdx
    call lb_process_27environment_windows_release@PLT
    leaq -280(%rbp), %rbx
    movq -1160(%rbp), %r10
    movq (%r10), %r14
    movq -1160(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_170(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq -1168(%rbp), %r10
    movq (%r10), %r14
    movq -1168(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L26_28
    jmp .L26_27
.L26_28:
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r14, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L26_27:
    movq -1144(%rbp), %rdi
    call FreeEnvironmentStringsW@PLT
    movl %eax, %ebx
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
.L26_29:
.L26_25:
    movq -1160(%rbp), %r10
    movq (%r10), %r15
    movq -872(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -880(%rbp)
    movq -880(%rbp), %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_171(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $16, %rcx
    movq %r14, %rax
    imulq %rcx, %rax
    movq %rax, -888(%rbp)
    movq -888(%rbp), %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %r12, %r10
    movq (%r10), %r15
    movq -896(%rbp), %r10
    movl (%r10), %r13d
    movq %r15, %rsi
    movl %r13d, %edx
    leaq -328(%rbp), %rdi
    call lb_12windows_text_wide@PLT
    movq -904(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L26_31
    jmp .L26_30
.L26_31:
    movq -1304(%rbp), %rax
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
    movq -1160(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -1192(%rbp), %rdx
    call lb_process_27environment_windows_release@PLT
    leaq -344(%rbp), %rbx
    movq -1160(%rbp), %r10
    movq (%r10), %r13
    movq -872(%rbp), %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_171(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq -1168(%rbp), %r10
    movq (%r10), %r13
    movq -1168(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L26_33
    jmp .L26_32
.L26_33:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r13, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r11
    call *%r11
.L26_32:
    movq -1144(%rbp), %rdi
    call FreeEnvironmentStringsW@PLT
    movl %eax, %ebx
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
.L26_34:
.L26_30:
    movq -1304(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1192(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_172(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -912(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L26_35:
    cmpq %r14, %r13
    jae .L26_38
.L26_36:
    movq -1160(%rbp), %r10
    movq (%r10), %rbx
    movq -872(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    jb 1f
    leaq .Ltext_173(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -888(%rbp), %rax
    movq %rax, %r15
    addq %rbx, %r15
    movq $16, %rcx
    movq %r13, %r12
    imulq %rcx, %r12
    addq %r12, %rbx
    movq %r15, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_process_27environment_windows_compare@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L26_40
.L26_39:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -896(%rbp), %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_148(%rip), %r13
    leaq -360(%rbp), %r14
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
    movq -1160(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -912(%rbp), %rdx
    call lb_process_27environment_windows_release@PLT
    leaq -376(%rbp), %r12
    movq -1160(%rbp), %r10
    movq (%r10), %r13
    movq -872(%rbp), %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_174(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq -1168(%rbp), %r10
    movq (%r10), %r13
    movq -1168(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L26_43
    jmp .L26_42
.L26_43:
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
.L26_42:
    movq -1144(%rbp), %rdi
    call FreeEnvironmentStringsW@PLT
    movl %eax, %r12d
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
.L26_44:
    jmp .L26_41
.L26_40:
.L26_41:
.L26_37:
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r13
    jmp .L26_35
.L26_38:
.L26_23:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq -912(%rbp), %rax
    movq %rax, -1192(%rbp)
    movq %rbx, %r14
    jmp .L26_21
.L26_24:
    leaq -384(%rbp), %rbx
    movq -1152(%rbp), %rdi
    movq -1176(%rbp), %rsi
    movl $64, %edx
    movq %rbx, %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r12d
    leaq -400(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -920(%rbp)
    movq -920(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movb %r12b, (%r10)
    movq %r13, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L26_45
    jmp .L26_46
.L26_45:
    jmp .L26_47
.L26_46:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_150(%rip), %r13
    leaq -416(%rbp), %r14
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
    movq -1160(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -1192(%rbp), %rdx
    call lb_process_27environment_windows_release@PLT
    leaq -432(%rbp), %r12
    movq -1160(%rbp), %r10
    movq (%r10), %r13
    movq -1160(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_175(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq -1168(%rbp), %r10
    movq (%r10), %r13
    movq -1168(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L26_49
    jmp .L26_48
.L26_49:
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
.L26_48:
    movq -1144(%rbp), %rdi
    call FreeEnvironmentStringsW@PLT
    movl %eax, %r12d
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
.L26_50:
.L26_47:
    leaq -448(%rbp), %rax
    movq %rax, -1200(%rbp)
    leaq -496(%rbp), %rax
    movq %rax, -1208(%rbp)
    movq -920(%rbp), %rax
    movabsq $288230376151711744, %rcx
    cmpq %rcx, %rax
    jbe .L26_52
.L26_51:
    movq -1208(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -1208(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L26_53
.L26_52:
    movq -920(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq -1168(%rbp), %r10
    movq (%r10), %r12
    movq -1168(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L26_54
    jmp .L26_55
.L26_55:
    leaq .Ltext_176(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L26_54:
    movq %r15, %r10
    movq (%r10), %rbx
    movq %r12, %rsi
    movq %r13, %rdx
    movq $8, %rcx
    leaq -520(%rbp), %rdi
    movq %rbx, %r11
    call *%r11
    leaq -520(%rbp), %r14
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq $0, %rcx
    cmpq %rcx, %r13
    setne %al
    movzbl %al, %eax
    movl %eax, -928(%rbp)
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl -928(%rbp), %eax
    movl %ebx, %ecx
    movl %eax, %ebx
    andl %ecx, %ebx
    testl %ebx, %ebx
    jne .L26_56
    jmp .L26_57
.L26_56:
    movq -1208(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_5(%rip), %r12
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
    movq -1208(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L26_53
.L26_57:
    movq %r14, %r10
    movq (%r10), %rbx
    movq -1208(%rbp), %r10
    movq %rbx, (%r10)
    movq -1208(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -920(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -1208(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L26_53:
    movq -1208(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L26_59
    jmp .L26_58
.L26_59:
    movq -1208(%rbp), %rax
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
    movq -1160(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -1192(%rbp), %rdx
    call lb_process_27environment_windows_release@PLT
    leaq -536(%rbp), %rbx
    movq -1160(%rbp), %r10
    movq (%r10), %r13
    movq -1160(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_176(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq -1168(%rbp), %r10
    movq (%r10), %r13
    movq -1168(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L26_61
    jmp .L26_60
.L26_61:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r13, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r11
    call *%r11
.L26_60:
    movq -1144(%rbp), %rdi
    call FreeEnvironmentStringsW@PLT
    movl %eax, %ebx
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
.L26_62:
.L26_58:
    movq -1208(%rbp), %r10
    movq -1200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -552(%rbp), %rax
    movq %rax, -944(%rbp)
    leaq -568(%rbp), %r12
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -952(%rbp)
    movq -1160(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -960(%rbp)
    movq -1200(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -968(%rbp)
    movq $0, %rax
    movq %rax, %r15
    movq $0, %rax
    movq %rax, -1216(%rbp)
.L26_63:
    movq $2, %rcx
    movq %r15, %r14
    imulq %rcx, %r14
    movq -1144(%rbp), %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movzwl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L26_65
.L26_64:
    movq %r15, %rbx
.L26_66:
    movq $2, %rcx
    movq %rbx, %r13
    imulq %rcx, %r13
    movq -1144(%rbp), %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movzwl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L26_68
.L26_67:
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_177(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r13, %rbx
    jmp .L26_66
.L26_68:
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_178(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -936(%rbp)
    movq -936(%rbp), %rax
    movq %r15, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_179(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r12, %r10
    movq %r14, (%r10)
    movq -952(%rbp), %r10
    movq %r13, (%r10)
    movq %r12, %r10
    movq -944(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rax, %r13
.L26_69:
    movq -1192(%rbp), %rcx
    cmpq %rcx, %r13
    jb .L26_70
.L26_139:
    movl $0, %eax
    movl %eax, %ebx
    jmp .L26_72
.L26_70:
    movq -1160(%rbp), %r10
    movq (%r10), %rbx
    movq -960(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_180(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $16, %rcx
    movq %r13, %r14
    imulq %rcx, %r14
    addq %r14, %rbx
    movq -944(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_process_27environment_windows_compare@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L26_74
.L26_73:
    movl $1, %eax
    movl %eax, %ebx
    jmp .L26_72
.L26_76:
    jmp .L26_75
.L26_74:
.L26_75:
.L26_71:
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r13
    jmp .L26_69
.L26_72:
    movzbl %bl, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L26_78
.L26_77:
    movq -1200(%rbp), %r10
    movq (%r10), %rbx
    movq -968(%rbp), %r10
    movq (%r10), %r13
    movq -1216(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_181(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1216(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    addq %r13, %rbx
    movq -944(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1216(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    jmp .L26_79
.L26_78:
    movq -1216(%rbp), %rax
    movq %rax, %rbx
.L26_79:
    movq -936(%rbp), %rax
    movq %rax, %r15
    movq %rbx, %rax
    movq %rax, -1216(%rbp)
    jmp .L26_63
.L26_65:
    movq -1200(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -1160(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq -1216(%rbp), %rax
    movq %rax, -1224(%rbp)
    movq $0, %rax
    movq %rax, -1232(%rbp)
.L26_80:
    movq -1232(%rbp), %rax
    movq -1192(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L26_83
.L26_81:
    movq -1200(%rbp), %r10
    movq (%r10), %r15
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -976(%rbp)
    movq -1224(%rbp), %rax
    movq -976(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_183(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1224(%rbp), %rax
    movq $16, %rcx
    imulq %rcx, %rax
    movq %rax, -984(%rbp)
    movq -984(%rbp), %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -992(%rbp)
    movq -1160(%rbp), %r10
    movq (%r10), %r15
    movq %r12, %r10
    movq (%r10), %r14
    movq -1232(%rbp), %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_183(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1232(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq %r14, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq -992(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1224(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
.L26_82:
    movq -1232(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r14, %rax
    movq %rax, -1224(%rbp)
    movq %r15, %rax
    movq %rax, -1232(%rbp)
    jmp .L26_80
.L26_83:
    leaq -584(%rbp), %rax
    movq %rax, -1000(%rbp)
    movq -1200(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1008(%rbp)
    movq $1, %rax
    movq %rax, -1240(%rbp)
.L26_84:
    movq -1240(%rbp), %rax
    movq -1224(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L26_87
.L26_85:
    movq -1200(%rbp), %r10
    movq (%r10), %r15
    movq -1008(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1016(%rbp)
    movq -1240(%rbp), %rax
    movq -1016(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_185(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1240(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq -1000(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1240(%rbp), %rax
    movq %rax, %r13
.L26_88:
    movq $0, %rcx
    cmpq %rcx, %r13
    seta %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L26_91
    jmp .L26_140
.L26_140:
    movl %r12d, %r14d
    jmp .L26_92
.L26_91:
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_186(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -1016(%rbp), %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_186(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $16, %rcx
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq -1000(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_process_27environment_windows_compare@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    setl %al
    movzbl %al, %r14d
.L26_92:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L26_89
    jmp .L26_90
.L26_89:
    movq -1016(%rbp), %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_187(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $16, %rcx
    movq %r13, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_187(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq -1016(%rbp), %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_187(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $16, %rcx
    movq %r14, %rbx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %r13
    jmp .L26_88
.L26_90:
    movq -1016(%rbp), %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_189(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $16, %rcx
    movq %r13, %rbx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq -1000(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L26_86:
    movq -1240(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, -1240(%rbp)
    jmp .L26_84
.L26_87:
    movq -1200(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1032(%rbp)
    leaq -592(%rbp), %rax
    movq %rax, -1048(%rbp)
    leaq -608(%rbp), %rax
    movq %rax, -1288(%rbp)
    movq -1288(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1056(%rbp)
    movq $1, %rax
    movq %rax, %r14
    movq $0, %rax
    movq %rax, %r15
.L26_93:
    movq -1224(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L26_96
.L26_94:
    movq -1200(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1024(%rbp)
    movq -1032(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1040(%rbp)
    movq -1040(%rbp), %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_190(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $16, %rcx
    movq %r15, %r12
    imulq %rcx, %r12
    movq -1024(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r14, %rdi
    movq %r12, %rsi
    movl $64, %edx
    movq -1048(%rbp), %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r12d
    movq -1048(%rbp), %r10
    movq (%r10), %r13
    movq -1288(%rbp), %r10
    movq %r13, (%r10)
    movq -1056(%rbp), %r10
    movb %r12b, (%r10)
    movq -1056(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L26_97
    jmp .L26_98
.L26_97:
    jmp .L26_99
.L26_98:
    leaq -96(%rbp), %rax
    movq %rax, -1064(%rbp)
    movq -1064(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_150(%rip), %r13
    leaq -624(%rbp), %r14
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
    movq -1064(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -640(%rbp), %r12
    movq -1040(%rbp), %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_190(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -1024(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq -1168(%rbp), %r10
    movq (%r10), %r13
    movq -1168(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L26_101
    jmp .L26_100
.L26_101:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r13, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L26_100:
    movq -1160(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -1192(%rbp), %rdx
    call lb_process_27environment_windows_release@PLT
    leaq -656(%rbp), %rbx
    movq -1160(%rbp), %r10
    movq (%r10), %r12
    movq -1160(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_190(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
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
    movq -1168(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L26_103
    jmp .L26_102
.L26_103:
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
.L26_102:
    movq -1144(%rbp), %rdi
    call FreeEnvironmentStringsW@PLT
    movl %eax, %ebx
    movq -1064(%rbp), %rsi
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
.L26_104:
.L26_99:
.L26_95:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %r13, %r14
    movq %rbx, %r15
    jmp .L26_93
.L26_96:
    leaq -672(%rbp), %rax
    movq %rax, -1248(%rbp)
    movq -1224(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jbe .L26_106
.L26_105:
    movq %r14, %rax
    movq %rax, -1256(%rbp)
    jmp .L26_107
.L26_106:
    movq $2, %rax
    movq %rax, -1256(%rbp)
.L26_107:
    leaq -720(%rbp), %rax
    movq %rax, -1264(%rbp)
    movq -1256(%rbp), %rax
    movabsq $2305843009213693952, %rcx
    cmpq %rcx, %rax
    jbe .L26_109
.L26_108:
    movq -1264(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %r13
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -1264(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L26_110
.L26_109:
    movq -1256(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq -1168(%rbp), %r10
    movq (%r10), %r13
    movq -1168(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L26_111
    jmp .L26_112
.L26_112:
    leaq .Ltext_191(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L26_111:
    movq %r15, %r10
    movq (%r10), %rbx
    movq %r13, %rsi
    movq %r12, %rdx
    movq $2, %rcx
    leaq -744(%rbp), %rdi
    movq %rbx, %r11
    call *%r11
    leaq -744(%rbp), %r14
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, -1072(%rbp)
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl -1072(%rbp), %eax
    movl %ebx, %ecx
    movl %eax, %ebx
    andl %ecx, %ebx
    testl %ebx, %ebx
    jne .L26_113
    jmp .L26_114
.L26_113:
    movq -1264(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_5(%rip), %r12
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
    movq -1264(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L26_110
.L26_114:
    movq %r14, %r10
    movq (%r10), %rbx
    movq -1264(%rbp), %r10
    movq %rbx, (%r10)
    movq -1264(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -1256(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -1264(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L26_110:
    movq -1264(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L26_116
    jmp .L26_115
.L26_116:
    movq -1264(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -96(%rbp), %rax
    movq %rax, -1080(%rbp)
    movq -1080(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -1080(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -760(%rbp), %rbx
    movq -1200(%rbp), %r10
    movq (%r10), %r13
    movq -1200(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_191(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq -1168(%rbp), %r10
    movq (%r10), %r13
    movq -1168(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L26_118
    jmp .L26_117
.L26_118:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L26_117:
    movq -1160(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -1192(%rbp), %rdx
    call lb_process_27environment_windows_release@PLT
    leaq -776(%rbp), %rbx
    movq -1160(%rbp), %r10
    movq (%r10), %r12
    movq -1160(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_191(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
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
    movq -1168(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L26_120
    jmp .L26_119
.L26_120:
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
.L26_119:
    movq -1144(%rbp), %rdi
    call FreeEnvironmentStringsW@PLT
    movl %eax, %ebx
    movq -1080(%rbp), %rsi
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
.L26_121:
.L26_115:
    movq -1264(%rbp), %r10
    movq -1248(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1200(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1088(%rbp)
    movq -1200(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq -1248(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1104(%rbp)
    movq -1248(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -1112(%rbp)
    movq $0, %rax
    movq %rax, %r15
    movq $0, %rax
    movq %rax, %r13
.L26_122:
    movq -1224(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L26_125
.L26_123:
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_192(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $16, %rcx
    movq %r13, %r14
    imulq %rcx, %r14
    movq -1088(%rbp), %rax
    movq %r14, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -1096(%rbp)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r15, %rax
    movq %rax, -1272(%rbp)
    movq $0, %rax
    movq %rax, -1280(%rbp)
.L26_126:
    movq -1280(%rbp), %rax
    cmpq %r14, %rax
    jae .L26_129
.L26_127:
    movq -1280(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq -1096(%rbp), %rax
    movq %r15, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzwl (%r10), %r15d
    movq -1272(%rbp), %rax
    movq -1112(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_193(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1272(%rbp), %rax
    movq $2, %rcx
    movq %rax, %rbx
    imulq %rcx, %rbx
    movq -1104(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movzwl %r15w, %r15d
    movq %rbx, %r10
    movw %r15w, (%r10)
    movq -1272(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
.L26_128:
    movq -1280(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %rbx, %rax
    movq %rax, -1272(%rbp)
    movq %r15, %rax
    movq %rax, -1280(%rbp)
    jmp .L26_126
.L26_129:
.L26_124:
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq -1272(%rbp), %rax
    movq %rax, %r15
    movq %rbx, %r13
    jmp .L26_122
.L26_125:
    movq -1248(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1120(%rbp)
    movq -1248(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_195(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $2, %rcx
    movq %r15, %r12
    imulq %rcx, %r12
    movq -1120(%rbp), %rax
    addq %r12, %rax
    movq %rax, -1128(%rbp)
    movl $0, %eax
    movq -1128(%rbp), %r10
    movw %ax, (%r10)
    leaq -96(%rbp), %rax
    movq %rax, -1136(%rbp)
    movq -1248(%rbp), %r10
    movq -1136(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1136(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -792(%rbp), %r12
    movq -1200(%rbp), %r10
    movq (%r10), %r13
    movq -1200(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_196(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq -1168(%rbp), %r10
    movq (%r10), %r13
    movq -1168(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L26_131
    jmp .L26_130
.L26_131:
    movq $16, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r13, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r11
    call *%r11
.L26_130:
    movq -1160(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -1192(%rbp), %rdx
    call lb_process_27environment_windows_release@PLT
    leaq -808(%rbp), %rbx
    movq -1160(%rbp), %r10
    movq (%r10), %r12
    movq -1160(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_196(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
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
    movq -1168(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L26_133
    jmp .L26_132
.L26_133:
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
.L26_132:
    movq -1144(%rbp), %rdi
    call FreeEnvironmentStringsW@PLT
    movl %eax, %ebx
    movq -1136(%rbp), %rsi
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
.L26_134:
    leaq -448(%rbp), %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    leaq -824(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_196(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L26_136
    jmp .L26_135
.L26_136:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L26_135:
    leaq -144(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %rdx
    call lb_process_27environment_windows_release@PLT
    leaq -144(%rbp), %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    leaq -840(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_196(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L26_138
    jmp .L26_137
.L26_138:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L26_137:
    movq %rbx, %rdi
    call FreeEnvironmentStringsW@PLT
    movl %eax, %ebx
    leaq .Ltext_196(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_27environment_windows_release
    .type lb_process_27environment_windows_release, @function
lb_process_27environment_windows_release:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
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
    movq %rax, -96(%rbp)
    leaq -56(%rbp), %rax
    movq %rax, -104(%rbp)
    movq -104(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    leaq -88(%rbp), %rax
    movq %rax, -128(%rbp)
    movq -128(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -136(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L27_1:
    movq -96(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L27_4
.L27_2:
    movq -104(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -112(%rbp)
    movq %r13, %r10
    movq (%r10), %rbx
    cmpq %rbx, %r15
    jb 1f
    leaq .Ltext_197(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $16, %rcx
    movq %r15, %rbx
    imulq %rcx, %rbx
    movq -112(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -120(%rbp)
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_197(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -128(%rbp), %r10
    movq %r14, (%r10)
    movq -136(%rbp), %r10
    movq %rbx, (%r10)
    movq -120(%rbp), %r10
    movq (%r10), %rbx
    movq -120(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L27_6
    jmp .L27_5
.L27_6:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq -128(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L27_5:
.L27_3:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r15
    jmp .L27_1
.L27_4:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_process_12command_text
    .type lb_process_12command_text, @function
lb_process_12command_text:
    pushq %rbp
    movq %rsp, %rbp
    subq $224, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
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
    jne .L28_2
.L28_1:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_198(%rip), %r13
    leaq -128(%rbp), %r14
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
.L28_4:
    jmp .L28_3
.L28_2:
.L28_3:
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rax
    movq %rax, %r14
.L28_5:
    cmpq %r13, %r14
    jae .L28_8
.L28_6:
    movq %r12, %r15
    addq %r14, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movzbl %r15b, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L28_10
.L28_9:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_199(%rip), %r13
    leaq -144(%rbp), %r14
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
.L28_12:
    jmp .L28_11
.L28_10:
.L28_11:
.L28_7:
    movq $1, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r14
    jmp .L28_5
.L28_8:
    leaq -160(%rbp), %rax
    movq %rax, -216(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq -216(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_memory_heap(%rip), %r14
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -208(%rbp), %rdi
    call lb_strings_copy@PLT
    leaq -208(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L28_14
    jmp .L28_13
.L28_14:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq -96(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -216(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
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
.L28_15:
.L28_13:
    leaq -96(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -216(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
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
.L28_16:
    leaq -160(%rbp), %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_200(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_Command_init
    .type lb_process_Command_init, @function
lb_process_Command_init:
    pushq %rbp
    movq %rsp, %rbp
    subq $1040, %rsp
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
    movq 32(%rbp), %rax
    movq %rax, -152(%rbp)
    leaq 16(%rbp), %r10
    leaq -136(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 40(%rbp), %r10
    leaq -176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq -88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -944(%rbp)
    leaq -104(%rbp), %rax
    movq %rax, -872(%rbp)
    movq -872(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L29_64
    jmp .L29_4
.L29_64:
    movl %r12d, %r14d
    jmp .L29_5
.L29_4:
    leaq -152(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $1, %rcx
    cmpq %rcx, %r12
    setb %al
    movzbl %al, %r14d
.L29_5:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L29_65
    jmp .L29_6
.L29_65:
    movl %r12d, %r14d
    jmp .L29_7
.L29_6:
    leaq -152(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $16777216, %rcx
    cmpq %rcx, %r12
    seta %al
    movzbl %al, %r14d
.L29_7:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L29_1
    jmp .L29_2
.L29_1:
    leaq -80(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_201(%rip), %r12
    leaq -192(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $58, %rax
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
.L29_8:
    jmp .L29_3
.L29_2:
.L29_3:
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -880(%rbp)
    leaq -208(%rbp), %r14
    movq -880(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -248(%rbp), %rax
    movq %rax, -952(%rbp)
    movq %r14, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L29_9
    jmp .L29_10
.L29_10:
    leaq .Ltext_202(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L29_9:
    movq %r14, %r10
    movq (%r10), %r12
    movq %r15, %rsi
    movq $160, %rdx
    movq $8, %rcx
    leaq -272(%rbp), %rdi
    movq %r12, %r11
    call *%r11
    leaq -272(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L29_11
    jmp .L29_12
.L29_12:
    movq -952(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_5(%rip), %r12
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
    movq -952(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L29_13
.L29_11:
    movq %rbx, %r10
    movq (%r10), %r12
    leaq -432(%rbp), %r14
    movq %r14, %rdi
    xorl %esi, %esi
    movq $160, %rdx
    call memset@PLT
    leaq -152(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $48, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $136, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $-1, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    movq %r14, %rsi
    movq $160, %rdx
    call memcpy@PLT
    movq -952(%rbp), %r10
    movq %r12, (%r10)
    movq -952(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L29_13:
    movq -952(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L29_15
    jmp .L29_14
.L29_15:
    movq -952(%rbp), %rax
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
.L29_16:
.L29_14:
    movq -952(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -888(%rbp)
    movq -888(%rbp), %rax
    movq $56, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq -872(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -480(%rbp), %rdi
    call lb_process_12command_text@PLT
    leaq -480(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L29_18
    jmp .L29_17
.L29_18:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq -80(%rbp), %r13
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
    movq -888(%rbp), %rdi
    call lb_process_15command_dispose@PLT
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
.L29_19:
.L29_17:
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -888(%rbp), %rax
    movq $72, %rcx
    addq %rcx, %rax
    movq %rax, -960(%rbp)
    leaq -136(%rbp), %r12
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -528(%rbp), %rdi
    call lb_process_12command_text@PLT
    leaq -528(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L29_21
    jmp .L29_20
.L29_21:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq -80(%rbp), %r13
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
    movq -888(%rbp), %rdi
    call lb_process_15command_dispose@PLT
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
.L29_22:
.L29_20:
    movq %r15, %r10
    movq -960(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -888(%rbp), %rax
    movq $88, %rcx
    addq %rcx, %rax
    movq %rax, -968(%rbp)
    leaq -120(%rbp), %rax
    movq %rax, -896(%rbp)
    movq -896(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -976(%rbp)
    leaq -576(%rbp), %rax
    movq %rax, -984(%rbp)
    movq -976(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L29_24
.L29_23:
    movq -984(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $208273409, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %r15
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -984(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L29_25
.L29_24:
    movq -976(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq -880(%rbp), %r10
    movq (%r10), %rbx
    movq -880(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L29_26
    jmp .L29_27
.L29_27:
    leaq .Ltext_203(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L29_26:
    movq %r13, %r10
    movq (%r10), %r12
    movq %rbx, %rsi
    movq %r15, %rdx
    movq $8, %rcx
    leaq -600(%rbp), %rdi
    movq %r12, %r11
    call *%r11
    leaq -600(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq $0, %rcx
    cmpq %rcx, %r15
    setne %al
    movzbl %al, %eax
    movl %eax, -904(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl -904(%rbp), %eax
    movl %r12d, %ecx
    movl %eax, %r12d
    andl %ecx, %r12d
    testl %r12d, %r12d
    jne .L29_28
    jmp .L29_29
.L29_28:
    movq -984(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_5(%rip), %r12
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
    movq -984(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L29_25
.L29_29:
    movq %r14, %r10
    movq (%r10), %rbx
    movq -984(%rbp), %r10
    movq %rbx, (%r10)
    movq -984(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -976(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -984(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L29_25:
    movq -984(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L29_31
    jmp .L29_30
.L29_31:
    movq -984(%rbp), %rax
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
    movq -888(%rbp), %rdi
    call lb_process_15command_dispose@PLT
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
.L29_32:
.L29_30:
    movq -984(%rbp), %r10
    movq -968(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -968(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -648(%rbp), %rax
    movq %rax, -1040(%rbp)
    movq -1040(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq -888(%rbp), %rax
    movq $104, %rcx
    addq %rcx, %rax
    movq %rax, -912(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L29_33:
    movq -976(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L29_36
.L29_34:
    movq -968(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    jb 1f
    leaq .Ltext_204(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %r14, %r15
    imulq %rcx, %r15
    movq %r13, %rax
    addq %r15, %rax
    movq %rax, -1032(%rbp)
    movq -896(%rbp), %r10
    movq (%r10), %r13
    movq $16, %rcx
    movq %r14, %r15
    imulq %rcx, %r15
    addq %r15, %r13
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -648(%rbp), %rdi
    call lb_process_12command_text@PLT
    movq %r12, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L29_38
    jmp .L29_37
.L29_38:
    movq -1040(%rbp), %rax
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
    movq -888(%rbp), %rdi
    call lb_process_15command_dispose@PLT
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
.L29_39:
.L29_37:
    movq -1040(%rbp), %r10
    movq (%r10), %r13
    movq -1032(%rbp), %r10
    movq %r13, (%r10)
    movq -912(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_205(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -912(%rbp), %r10
    movq %r13, (%r10)
.L29_35:
    movq $1, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r14
    jmp .L29_33
.L29_36:
    leaq -176(%rbp), %r12
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L29_43
    jmp .L29_41
.L29_43:
    leaq -664(%rbp), %rax
    movq %rax, -920(%rbp)
    movq %r12, %r10
    movq -920(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L29_40:
    movq -888(%rbp), %rax
    movq $112, %rcx
    addq %rcx, %rax
    movq %rax, -992(%rbp)
    movq -920(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -1000(%rbp)
    leaq -712(%rbp), %rax
    movq %rax, -1008(%rbp)
    movq -1000(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L29_45
.L29_44:
    movq -1008(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %rbx
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -1008(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L29_46
.L29_45:
    movq -1000(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq -880(%rbp), %r10
    movq (%r10), %rbx
    movq -880(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L29_47
    jmp .L29_48
.L29_48:
    leaq .Ltext_206(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L29_47:
    movq %r12, %r10
    movq (%r10), %r14
    movq %rbx, %rsi
    movq %r13, %rdx
    movq $8, %rcx
    leaq -736(%rbp), %rdi
    movq %r14, %r11
    call *%r11
    leaq -736(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq $0, %rcx
    cmpq %rcx, %r13
    setne %al
    movzbl %al, %eax
    movl %eax, -928(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl -928(%rbp), %eax
    movl %r14d, %ecx
    movl %eax, %r14d
    andl %ecx, %r14d
    testl %r14d, %r14d
    jne .L29_49
    jmp .L29_50
.L29_49:
    movq -1008(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_5(%rip), %r12
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
    movq -1008(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L29_46
.L29_50:
    movq %r15, %r10
    movq (%r10), %rbx
    movq -1008(%rbp), %r10
    movq %rbx, (%r10)
    movq -1008(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -1000(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -1008(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L29_46:
    movq -1008(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L29_52
    jmp .L29_51
.L29_52:
    movq -1008(%rbp), %rax
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
    movq -888(%rbp), %rdi
    call lb_process_15command_dispose@PLT
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
.L29_53:
.L29_51:
    movq -1008(%rbp), %r10
    movq -992(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -992(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -784(%rbp), %rax
    movq %rax, -1024(%rbp)
    movq -1024(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq -888(%rbp), %rax
    movq $128, %rcx
    addq %rcx, %rax
    movq %rax, -936(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L29_54:
    movq -1000(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L29_57
.L29_55:
    movq -992(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    jb 1f
    leaq .Ltext_207(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %r14, %r15
    imulq %rcx, %r15
    movq %r13, %rax
    addq %r15, %rax
    movq %rax, -1016(%rbp)
    movq -920(%rbp), %r10
    movq (%r10), %r13
    movq $16, %rcx
    movq %r14, %r15
    imulq %rcx, %r15
    addq %r15, %r13
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -784(%rbp), %rdi
    call lb_process_12command_text@PLT
    movq %r12, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L29_59
    jmp .L29_58
.L29_59:
    movq -1024(%rbp), %rax
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
    movq -888(%rbp), %rdi
    call lb_process_15command_dispose@PLT
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
.L29_60:
.L29_58:
    movq -1024(%rbp), %r10
    movq (%r10), %r13
    movq -1016(%rbp), %r10
    movq %r13, (%r10)
    movq -936(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_208(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -936(%rbp), %r10
    movq %r13, (%r10)
.L29_56:
    movq $1, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r14
    jmp .L29_54
.L29_57:
    jmp .L29_42
.L29_41:
.L29_42:
    leaq -792(%rbp), %r14
    movq lb_process_13command_entry@GOTPCREL(%rip), %rbx
    leaq .Ltext_209(%rip), %r12
    leaq -808(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $7, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %rbx, %rsi
    movq -888(%rbp), %rdx
    movq $0, %rcx
    movq %r13, %r10
    movq 0(%r10), %r8
    movq 8(%r10), %r9
    leaq -848(%rbp), %rdi
    call lb_thread_spawn@PLT
    leaq -848(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L29_62
    jmp .L29_61
.L29_62:
    movq $8, %rcx
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
    movq -888(%rbp), %rdi
    call lb_process_15command_dispose@PLT
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
.L29_63:
.L29_61:
    movq %r12, %r10
    movq %r14, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq -888(%rbp), %rax
    movq -944(%rbp), %r10
    movq %rax, (%r10)
    movq -944(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -864(%rbp), %r13
    movq %r14, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
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
    .globl lb_process_Command_state
    .type lb_process_Command_state, @function
lb_process_Command_state:
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
    jne .L30_1
    jmp .L30_2
.L30_1:
    jmp .L30_3
.L30_2:
    leaq .Ltext_210(%rip), %rbx
    leaq -40(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $21, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_211(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_211(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
.L30_3:
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L30_4:
    leaq .Ltext_211(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_Command_11is_finished
    .type lb_process_Command_11is_finished, @function
lb_process_Command_11is_finished:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -16(%rbp)
    leaq -16(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_process_Command_state@PLT
    movq %rax, %rbx
    movq $1, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %eax
    movl %eax, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L31_1:
    leaq .Ltext_212(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_Command_revision
    .type lb_process_Command_revision, @function
lb_process_Command_revision:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -16(%rbp)
    leaq -16(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_process_Command_state@PLT
    movq %rax, %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L32_1:
    leaq .Ltext_213(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_Command_9exit_code
    .type lb_process_Command_9exit_code, @function
lb_process_Command_9exit_code:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -48(%rbp)
    leaq -48(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call lb_process_Command_11is_finished@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L33_2
.L33_1:
    leaq -64(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -40(%rbp), %r12
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L33_4:
    jmp .L33_3
.L33_2:
.L33_3:
    movq %r12, %rdi
    call lb_process_Command_state@PLT
    movq %rax, %rbx
    movq $136, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -80(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
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
.L33_5:
    leaq .Ltext_214(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_Command_output
    .type lb_process_Command_output, @function
lb_process_Command_output:
    pushq %rbp
    movq %rsp, %rbp
    subq $752, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -112(%rbp)
    leaq -112(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -696(%rbp)
    movq -696(%rbp), %rdi
    call lb_process_Command_state@PLT
    movq %rax, %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    movq %rbx, %rdi
    call lb_sync_Mutex_lock@PLT
    leaq -128(%rbp), %rax
    movq %rax, -544(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -552(%rbp)
    movq -552(%rbp), %r10
    movq -544(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_memory_heap(%rip), %r13
    movq %r13, %r10
    movq -552(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -168(%rbp), %rax
    movq %rax, -704(%rbp)
    movq -696(%rbp), %rdi
    call lb_process_Command_state@PLT
    movq %rax, %r13
    movq $40, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rsi
    leaq -240(%rbp), %rdi
    call lb_strings_Builder_create@PLT
    leaq -240(%rbp), %r15
    movq $64, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L34_2
    jmp .L34_1
.L34_2:
    movq $40, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    leaq -104(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -544(%rbp), %r10
    movq -552(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -696(%rbp), %rdi
    call lb_process_Command_state@PLT
    movq %rax, %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    movq %rbx, %rdi
    call lb_sync_Mutex_unlock@PLT
    movq %r14, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L34_3:
.L34_1:
    movq %r15, %r10
    movq -704(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    leaq -256(%rbp), %rax
    movq %rax, -712(%rbp)
    movq -696(%rbp), %rdi
    call lb_process_Command_state@PLT
    movq %rax, %rbx
    movq $24, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq -696(%rbp), %rdi
    call lb_process_Command_state@PLT
    movq %rax, %r13
    movq $40, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $1, %rcx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_215(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_215(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r13, %rax
    jbe .L34_4
.L34_5:
    leaq .Ltext_215(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
.L34_4:
    leaq -272(%rbp), %rax
    movq %rax, -560(%rbp)
    movq -560(%rbp), %r10
    movq %r12, (%r10)
    movq -560(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -568(%rbp)
    movq -568(%rbp), %r10
    movq %r13, (%r10)
    movq -560(%rbp), %r10
    movq -712(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -712(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -576(%rbp)
    leaq -296(%rbp), %rax
    movq %rax, -728(%rbp)
    movq -728(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -584(%rbp)
    leaq .Ltext_216(%rip), %rax
    movq %rax, -664(%rbp)
    leaq -432(%rbp), %rax
    movq %rax, -672(%rbp)
    movq -672(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -680(%rbp)
    leaq -464(%rbp), %rax
    movq %rax, -736(%rbp)
    movq -736(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -688(%rbp)
    leaq -312(%rbp), %rax
    movq %rax, -592(%rbp)
    movq -592(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -632(%rbp)
    leaq -376(%rbp), %r15
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -640(%rbp)
    leaq -416(%rbp), %rax
    movq %rax, -744(%rbp)
    movq -744(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -648(%rbp)
    leaq .Ltext_216(%rip), %rax
    movq %rax, -600(%rbp)
    leaq -328(%rbp), %rax
    movq %rax, -608(%rbp)
    movq -608(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -616(%rbp)
    leaq -360(%rbp), %rax
    movq %rax, -752(%rbp)
    movq -752(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -624(%rbp)
    movq -592(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -656(%rbp)
    movq $0, %rax
    movq %rax, -720(%rbp)
.L34_6:
    movq -576(%rbp), %r10
    movq (%r10), %r12
    movq -720(%rbp), %rax
    cmpq %r12, %rax
    jae .L34_8
.L34_7:
    movq -712(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -720(%rbp), %rcx
    leaq -296(%rbp), %rdi
    call lb_utf8_decode@PLT
    movq -584(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L34_12
    jmp .L34_10
.L34_12:
    movq -728(%rbp), %r10
    movq -592(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L34_9:
    movq -592(%rbp), %r10
    movl (%r10), %r12d
    movl %r12d, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L34_14
.L34_13:
    movq -600(%rbp), %rax
    movq -608(%rbp), %r10
    movq %rax, (%r10)
    movq $3, %rax
    movq -616(%rbp), %r10
    movq %rax, (%r10)
    movq -704(%rbp), %rsi
    movq -608(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -360(%rbp), %rdi
    call lb_strings_Builder_put@PLT
    movq -624(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L34_17
    jmp .L34_16
.L34_17:
    leaq -104(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq -752(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -704(%rbp), %rdi
    call lb_strings_Builder_destroy@PLT
    movq -544(%rbp), %r10
    movq -552(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -696(%rbp), %rdi
    call lb_process_Command_state@PLT
    movq %rax, %r13
    movq $16, %rcx
    addq %rcx, %r13
    movq %r13, %rdi
    call lb_sync_Mutex_unlock@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L34_18:
.L34_16:
    jmp .L34_15
.L34_14:
    movq -712(%rbp), %r10
    movq (%r10), %rbx
    movq -576(%rbp), %r10
    movq (%r10), %r12
    movq -632(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq -720(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_217(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq $1, %rcx
    addq %rcx, %r12
    movq -720(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_217(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_217(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -720(%rbp), %rax
    cmpq %r13, %rax
    jbe .L34_19
.L34_20:
    leaq .Ltext_217(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
.L34_19:
    movq -720(%rbp), %rax
    movq %rax, %r12
    addq %rbx, %r12
    movq -720(%rbp), %rcx
    movq %r13, %r14
    subq %rcx, %r14
    movq %r15, %r10
    movq %r12, (%r10)
    movq -640(%rbp), %r10
    movq %r14, (%r10)
    movq -704(%rbp), %rsi
    movq %r15, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -416(%rbp), %rdi
    call lb_strings_Builder_write@PLT
    movq -648(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L34_22
    jmp .L34_21
.L34_22:
    movq -744(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -104(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -704(%rbp), %rdi
    call lb_strings_Builder_destroy@PLT
    movq -544(%rbp), %r10
    movq -552(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -696(%rbp), %rdi
    call lb_process_Command_state@PLT
    movq %rax, %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    movq %rbx, %rdi
    call lb_sync_Mutex_unlock@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L34_23:
.L34_21:
.L34_15:
    movq -656(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq -720(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_218(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    jmp .L34_11
.L34_10:
    movq -664(%rbp), %rax
    movq -672(%rbp), %r10
    movq %rax, (%r10)
    movq $3, %rax
    movq -680(%rbp), %r10
    movq %rax, (%r10)
    movq -704(%rbp), %rsi
    movq -672(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -464(%rbp), %rdi
    call lb_strings_Builder_put@PLT
    movq -688(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L34_25
    jmp .L34_24
.L34_25:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -736(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -704(%rbp), %rdi
    call lb_strings_Builder_destroy@PLT
    movq -544(%rbp), %r10
    movq -552(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -696(%rbp), %rdi
    call lb_process_Command_state@PLT
    movq %rax, %r12
    movq $16, %rcx
    addq %rcx, %r12
    movq %r12, %rdi
    call lb_sync_Mutex_unlock@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L34_26:
.L34_24:
    movq -720(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
.L34_11:
    movq %rbx, %rax
    movq %rax, -720(%rbp)
    jmp .L34_6
.L34_8:
    movq -704(%rbp), %rdi
    call lb_strings_Builder_view@PLT
    leaq -480(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -480(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -536(%rbp), %rdi
    call lb_interop_9copy_text@PLT
    leaq -536(%rbp), %r12
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L34_28
    jmp .L34_27
.L34_28:
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -104(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -704(%rbp), %rdi
    call lb_strings_Builder_destroy@PLT
    movq -544(%rbp), %r10
    movq -552(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -696(%rbp), %rdi
    call lb_process_Command_state@PLT
    movq %rax, %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    movq %rbx, %rdi
    call lb_sync_Mutex_unlock@PLT
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L34_29:
.L34_27:
    leaq -104(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -704(%rbp), %rdi
    call lb_strings_Builder_destroy@PLT
    movq -544(%rbp), %r10
    movq -552(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -696(%rbp), %rdi
    call lb_process_Command_state@PLT
    movq %rax, %r13
    movq $16, %rcx
    addq %rcx, %r13
    movq %r13, %rdi
    call lb_sync_Mutex_unlock@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L34_30:
    leaq -168(%rbp), %rbx
    movq %rbx, %rdi
    call lb_strings_Builder_destroy@PLT
    leaq -128(%rbp), %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %rbx
    movq %rbx, %rdi
    call lb_process_Command_state@PLT
    movq %rax, %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    movq %rbx, %rdi
    call lb_sync_Mutex_unlock@PLT
    leaq .Ltext_220(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_Command_13error_message
    .type lb_process_Command_13error_message, @function
lb_process_Command_13error_message:
    pushq %rbp
    movq %rsp, %rbp
    subq $240, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -104(%rbp)
    leaq -104(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call lb_process_Command_11is_finished@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L35_2
.L35_1:
    leaq .Ltext_127(%rip), %rbx
    leaq -120(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -176(%rbp), %rdi
    call lb_interop_9copy_text@PLT
    leaq -176(%rbp), %r12
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L35_5
    jmp .L35_4
.L35_5:
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -96(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
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
.L35_6:
.L35_4:
    leaq -96(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
.L35_7:
    jmp .L35_3
.L35_2:
.L35_3:
    movq %r12, %rdi
    call lb_process_Command_state@PLT
    movq %rax, %rbx
    movq $144, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -232(%rbp), %rdi
    call lb_interop_9copy_text@PLT
    leaq -232(%rbp), %r13
    movq $48, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L35_9
    jmp .L35_8
.L35_9:
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -96(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
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
.L35_10:
.L35_8:
    leaq -96(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
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
.L35_11:
    leaq .Ltext_221(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_Command_cancel
    .type lb_process_Command_cancel, @function
lb_process_Command_cancel:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -16(%rbp)
    leaq -16(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L36_4
    jmp .L36_2
.L36_4:
.L36_1:
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L36_3
.L36_2:
.L36_3:
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_process_Command_close
    .type lb_process_Command_close, @function
lb_process_Command_close:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -48(%rbp)
    leaq -48(%rbp), %r10
    movq (%r10), %r12
    leaq -56(%rbp), %r13
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -160(%rbp)
    movq -160(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L37_1
    jmp .L37_2
.L37_1:
    leaq -64(%rbp), %rbx
    movq -160(%rbp), %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    jmp .L37_3
.L37_2:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L37_4:
.L37_3:
    movq %rbx, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r12, %rdi
    call lb_process_Command_cancel@PLT
    movq %r13, %rsi
    leaq -120(%rbp), %rdi
    call lb_thread_Handle_join@PLT
    leaq -120(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L37_8
    jmp .L37_7
.L37_8:
    leaq -88(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L37_5
.L37_7:
    jmp .L37_6
.L37_5:
    leaq .Ltext_222(%rip), %rbx
    leaq -136(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $36, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_223(%rip), %rbx
    movq %rbx, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
.L37_6:
    leaq -152(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq -160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L37_9
    jmp .L37_10
.L37_9:
    jmp .L37_11
.L37_10:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L37_12:
.L37_11:
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %rbx, %rdi
    call lb_process_15command_dispose@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_process_15command_dispose
    .type lb_process_15command_dispose, @function
lb_process_15command_dispose:
    pushq %rbp
    movq %rsp, %rbp
    subq $288, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq -72(%rbp), %rax
    movq %rax, -208(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -216(%rbp)
    movq -216(%rbp), %r10
    movq -208(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_memory_heap(%rip), %r13
    movq %r13, %r10
    movq -216(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -56(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -224(%rbp)
    movq -224(%rbp), %rax
    movq $56, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    jbe .L38_2
.L38_1:
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    jmp .L38_3
.L38_2:
.L38_3:
    movq -224(%rbp), %rax
    movq $72, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L38_5
.L38_4:
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    jmp .L38_6
.L38_5:
.L38_6:
    movq -224(%rbp), %rax
    movq $88, %rcx
    addq %rcx, %rax
    movq %rax, -232(%rbp)
    movq -232(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -272(%rbp)
    movq -232(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %r10
    movq (%r10), %rbx
    movq -224(%rbp), %rax
    movq $104, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -280(%rbp)
    movq $1, %rcx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_224(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -280(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_224(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -280(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L38_11
.L38_12:
    leaq .Ltext_224(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
.L38_11:
    leaq -88(%rbp), %rbx
    movq -272(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq -280(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -104(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %rax, %r15
.L38_7:
    movq -280(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L38_10
.L38_8:
    movq $8, %rcx
    movq %r15, %r14
    imulq %rcx, %r14
    movq -272(%rbp), %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rdi
    call strlen@PLT
    movq %rax, %r12
    movq %rbx, %r10
    movq %r14, (%r10)
    movq %r13, %r10
    movq %r12, (%r10)
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
.L38_9:
    movq $1, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r15
    jmp .L38_7
.L38_10:
    movq -232(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L38_14
.L38_13:
    leaq -120(%rbp), %rbx
    movq -232(%rbp), %r10
    movq (%r10), %r12
    movq -240(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_225(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
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
    movq -216(%rbp), %r10
    movq (%r10), %r12
    movq -216(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L38_17
    jmp .L38_16
.L38_17:
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
.L38_16:
    jmp .L38_15
.L38_14:
.L38_15:
    movq -224(%rbp), %rax
    movq $112, %rcx
    addq %rcx, %rax
    movq %rax, -248(%rbp)
    movq -248(%rbp), %r10
    movq (%r10), %r15
    movq -248(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -256(%rbp)
    movq -256(%rbp), %r10
    movq (%r10), %r13
    movq -224(%rbp), %rax
    movq $128, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -288(%rbp)
    movq $1, %rcx
    addq %rcx, %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_226(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -288(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_226(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -288(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L38_22
.L38_23:
    leaq .Ltext_226(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
.L38_22:
    leaq -136(%rbp), %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq -288(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq -152(%rbp), %r13
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -264(%rbp)
    movq $0, %rax
    movq %rax, %rbx
.L38_18:
    movq -288(%rbp), %rcx
    cmpq %rcx, %rbx
    jae .L38_21
.L38_19:
    movq $8, %rcx
    movq %rbx, %r12
    imulq %rcx, %r12
    addq %r15, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call strlen@PLT
    movq %rax, %r14
    movq %r13, %r10
    movq %r12, (%r10)
    movq -264(%rbp), %r10
    movq %r14, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
.L38_20:
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %rbx
    jmp .L38_18
.L38_21:
    movq -248(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L38_25
.L38_24:
    leaq -168(%rbp), %rbx
    movq -248(%rbp), %r10
    movq (%r10), %r12
    movq -256(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_227(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
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
    movq -216(%rbp), %r10
    movq (%r10), %r12
    movq -216(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L38_28
    jmp .L38_27
.L38_28:
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
.L38_27:
    jmp .L38_26
.L38_25:
.L38_26:
    movq -224(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jbe .L38_30
.L38_29:
    leaq -184(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq (%r10), %r15
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq -216(%rbp), %r10
    movq (%r10), %r14
    movq -216(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L38_33
    jmp .L38_32
.L38_33:
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
.L38_32:
    jmp .L38_31
.L38_30:
.L38_31:
    movq -224(%rbp), %rax
    movq $144, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L38_35
.L38_34:
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    jmp .L38_36
.L38_35:
.L38_36:
    leaq -200(%rbp), %rbx
    movq -224(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $160, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -216(%rbp), %r10
    movq (%r10), %r12
    movq -216(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L38_38
    jmp .L38_37
.L38_38:
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
.L38_37:
    movq -208(%rbp), %r10
    movq -216(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_process_13command_entry
    .type lb_process_13command_entry, @function
lb_process_13command_entry:
    pushq %rbp
    movq %rsp, %rbp
    subq $432, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L39_1
    jmp .L39_2
.L39_1:
    jmp .L39_3
.L39_2:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L39_4:
.L39_3:
    leaq -96(%rbp), %rax
    movq %rax, -424(%rbp)
    movq $56, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -416(%rbp)
    movq $88, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $72, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $128, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    jbe .L39_8
.L39_7:
    movq $112, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    leaq -208(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    leaq -184(%rbp), %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L39_9
.L39_8:
    leaq -232(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -184(%rbp), %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
.L39_9:
    leaq -184(%rbp), %r12
    subq $32, %rsp
    movq %r12, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -416(%rbp), %rsi
    movq %r13, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r14, %r8
    movq %rbx, %r9
    leaq -304(%rbp), %rdi
    call lb_process_14run_controlled@PLT
    addq $32, %rsp
    leaq -304(%rbp), %r15
    movq $64, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L39_11
    jmp .L39_10
.L39_11:
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq -160(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L39_5
.L39_10:
    leaq -136(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L39_6
.L39_5:
    movq $144, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -392(%rbp), %rdi
    call lb_strings_copy@PLT
    leaq -392(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L39_15
    jmp .L39_14
.L39_15:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq -344(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L39_12
.L39_14:
    leaq -320(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L39_13
.L39_12:
    leaq .Ltext_127(%rip), %r12
    leaq -408(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -320(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L39_13
.L39_16:
.L39_13:
    leaq -320(%rbp), %r12
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L39_17:
.L39_6:
    movq %r12, %r10
    movq -424(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $136, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq -424(%rbp), %r10
    movslq (%r10), %r14
    movslq %r14d, %r14
    movq %r13, %r10
    movq %r14, (%r10)
    movq -424(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_release@PLT
    movq -424(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_release@PLT
    movq $1, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
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
    .globl lb_process_14command_append
    .type lb_process_14command_append, @function
lb_process_14command_append:
    pushq %rbp
    movq %rsp, %rbp
    subq $368, %rsp
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
    leaq -96(%rbp), %rax
    movq %rax, -272(%rbp)
    movq -272(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -280(%rbp)
    movq -280(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -288(%rbp)
    movq -288(%rbp), %rdi
    call lb_sync_Mutex_lock@PLT
    leaq -112(%rbp), %rax
    movq %rax, -296(%rbp)
    movq -296(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -304(%rbp)
    movq -304(%rbp), %r10
    movq (%r10), %rbx
    movq -280(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, -312(%rbp)
    movq -312(%rbp), %r10
    movq (%r10), %r15
    movq -280(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -320(%rbp)
    movq -320(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %rax
    movq %r12, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_229(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    cmpq %r12, %rbx
    jbe .L40_2
.L40_1:
    leaq -80(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_230(%rip), %r12
    leaq -128(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $37, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -288(%rbp), %rdi
    call lb_sync_Mutex_unlock@PLT
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
.L40_4:
    jmp .L40_3
.L40_2:
.L40_3:
    movq -320(%rbp), %r10
    movq (%r10), %r12
    movq %rbx, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_231(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -328(%rbp)
    movq -280(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -336(%rbp)
    movq -336(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -344(%rbp)
    movq -344(%rbp), %r10
    movq (%r10), %r13
    movq -328(%rbp), %rax
    cmpq %r13, %rax
    jbe .L40_6
.L40_5:
    movq -312(%rbp), %r10
    movq (%r10), %rbx
    movq -344(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_232(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq $4096, %rdi
    movq %r13, %rsi
    call lb_process_13math_max_size@PLT
    movq %rax, %r13
    movq -328(%rbp), %rdi
    movq %r13, %rsi
    call lb_process_13math_max_size@PLT
    movq %rax, %r13
    movq %rbx, %rdi
    movq %r13, %rsi
    call lb_process_13math_min_size@PLT
    movq %rax, %rbx
    movq -344(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L40_9
.L40_8:
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    leaq -176(%rbp), %rax
    movq %rax, -368(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %rbx
    jbe .L40_12
.L40_11:
    movq -368(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %r12
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
    movq -368(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L40_13
.L40_12:
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L40_14
    jmp .L40_15
.L40_15:
    leaq .Ltext_233(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L40_14:
    movq %r15, %r10
    movq (%r10), %r12
    movq %r13, %rsi
    movq %rbx, %rdx
    movq $1, %rcx
    leaq -200(%rbp), %rdi
    movq %r12, %r11
    call *%r11
    leaq -200(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq $0, %rcx
    cmpq %rcx, %rbx
    setne %al
    movzbl %al, %eax
    movl %eax, -352(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl -352(%rbp), %eax
    movl %r12d, %ecx
    movl %eax, %r12d
    andl %ecx, %r12d
    testl %r12d, %r12d
    jne .L40_16
    jmp .L40_17
.L40_16:
    movq -368(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_5(%rip), %r12
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
    movq -368(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L40_13
.L40_17:
    movq %r14, %r10
    movq (%r10), %r12
    movq -368(%rbp), %r10
    movq %r12, (%r10)
    movq -368(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq -368(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L40_13:
    movq -368(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L40_19
    jmp .L40_18
.L40_19:
    movq -368(%rbp), %rax
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
    movq -288(%rbp), %rdi
    call lb_sync_Mutex_unlock@PLT
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
.L40_20:
.L40_18:
    movq -368(%rbp), %r10
    movq -336(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L40_10
.L40_9:
    movq -336(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %rcx
    leaq -248(%rbp), %rdi
    call lb_memory_grow@PLT
    leaq -248(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L40_22
    jmp .L40_21
.L40_22:
    movq $16, %rcx
    movq %r13, %rbx
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
    movq -288(%rbp), %rdi
    call lb_sync_Mutex_unlock@PLT
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
.L40_23:
.L40_21:
    movq %r13, %r10
    movq -336(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L40_10:
    jmp .L40_7
.L40_6:
.L40_7:
    movq -336(%rbp), %r10
    movq (%r10), %r12
    movq -344(%rbp), %r10
    movq (%r10), %r13
    movq -320(%rbp), %r10
    movq (%r10), %r14
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    cmpq %rbx, %r14
    jb 1f
    leaq .Ltext_234(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_234(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r13, %r14
    jbe .L40_24
.L40_25:
    leaq .Ltext_234(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
.L40_24:
    movq %r12, %rbx
    addq %r14, %rbx
    movq %r13, %rax
    subq %r14, %rax
    movq %rax, -360(%rbp)
    leaq -264(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq -360(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -304(%rbp), %r10
    movq (%r10), %rbx
    movq %r15, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -296(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %rbx, %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -328(%rbp), %rax
    movq -320(%rbp), %r10
    movq %rax, (%r10)
    movq -280(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $1, %rcx
    movq %rbx, %r10
    lock xaddq %rcx, (%r10)
    movq %rcx, %rbx
    movq -272(%rbp), %r10
    movq (%r10), %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    movq %rbx, %rdi
    call lb_sync_Mutex_unlock@PLT
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $0, %eax
    movq %r15, %r10
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
    .globl lb_process_13math_min_size
    .type lb_process_13math_min_size, @function
lb_process_13math_min_size:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    movq %rsi, -56(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jae .L41_2
.L41_1:
    movq %rbx, %r12
    jmp .L41_3
.L41_2:
.L41_3:
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L41_4:
    leaq .Ltext_235(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_13math_max_size
    .type lb_process_13math_max_size, @function
lb_process_13math_max_size:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    movq %rsi, -56(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jbe .L42_2
.L42_1:
    movq %rbx, %r12
    jmp .L42_3
.L42_2:
.L42_3:
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L42_4:
    leaq .Ltext_236(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_15capture_command
    .type lb_process_15capture_command, @function
lb_process_15capture_command:
    pushq %rbp
    movq %rsp, %rbp
    subq $528, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movl %esi, -104(%rbp)
    movq %rdx, -120(%rbp)
    movq %rcx, -136(%rbp)
    movq %r8, -152(%rbp)
    leaq -120(%rbp), %rax
    movq %rax, -344(%rbp)
    movq -344(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq lb_process_9set_flags(%rip), %r13
    movq %r13, %r10
    movslq (%r10), %r14
    leaq lb_process_12non_blocking(%rip), %r15
    movq %r15, %r10
    movslq (%r10), %rbx
    movl %r12d, %edi
    movl %r14d, %esi
    movl %ebx, %edx
    movl $0, %eax
    call fcntl@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    setl %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L43_65
    jmp .L43_4
.L43_65:
    movl %ebx, %r12d
    jmp .L43_5
.L43_4:
    leaq -136(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movq %r13, %r10
    movslq (%r10), %r12
    movq %r15, %r10
    movslq (%r10), %r14
    movl %ebx, %edi
    movl %r12d, %esi
    movl %r14d, %edx
    movl $0, %eax
    call fcntl@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    setl %al
    movzbl %al, %r12d
.L43_5:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L43_1
    jmp .L43_2
.L43_1:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_238(%rip), %r13
    leaq -168(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $33, %rax
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
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq -336(%rbp), %r10
    movl %r12d, (%r10)
    movl $0, %eax
    movl %r12d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_237(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r13d
    movl %r13d, %edi
    movl $9, %esi
    call kill@PLT
    movl %eax, %r13d
    movl %r12d, %edi
    call lb_process_terminate@PLT
.L43_59:
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
.L43_2:
.L43_3:
    leaq -152(%rbp), %rax
    movq %rax, -352(%rbp)
    leaq -200(%rbp), %r12
    leaq -208(%rbp), %r15
    leaq lb_process_7poll_in(%rip), %rax
    movq %rax, -376(%rbp)
    movq $4, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -392(%rbp)
    movq $6, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -400(%rbp)
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -504(%rbp)
    leaq -216(%rbp), %rax
    movq %rax, -512(%rbp)
    leaq -136(%rbp), %rax
    movq %rax, -408(%rbp)
    movq -512(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, -424(%rbp)
    movq -512(%rbp), %rax
    movq $6, %rcx
    addq %rcx, %rax
    movq %rax, -432(%rbp)
    movq $6, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -448(%rbp)
    leaq -264(%rbp), %rax
    movq %rax, -520(%rbp)
    movq -520(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -456(%rbp)
    movq -504(%rbp), %rax
    movq $6, %rcx
    addq %rcx, %rax
    movq %rax, -464(%rbp)
    leaq -296(%rbp), %rax
    movq %rax, -528(%rbp)
    movq -528(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -472(%rbp)
    leaq -300(%rbp), %rax
    movq %rax, -480(%rbp)
    leaq -104(%rbp), %rax
    movq %rax, -488(%rbp)
    leaq lb_c_interrupted(%rip), %rax
    movq %rax, -496(%rbp)
    leaq lb_c_interrupted(%rip), %rax
    movq %rax, -440(%rbp)
.L43_7:
.L43_8:
    movq -352(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %r10
    movzbl (%r10), %eax
    movl %eax, %r13d
    testl %r13d, %r13d
    jne .L43_10
    jmp .L43_11
.L43_10:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_239(%rip), %r13
    leaq -184(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $17, %rax
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
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq -336(%rbp), %r10
    movl %r12d, (%r10)
    movl $0, %eax
    movl %r12d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_237(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r13d
    movl %r13d, %edi
    movl $9, %esi
    call kill@PLT
    movl %eax, %r13d
    movl %r12d, %edi
    call lb_process_terminate@PLT
.L43_60:
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
.L43_11:
.L43_12:
    movq %r15, %r11
    movq $0, 0(%r11)
    movq -344(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -360(%rbp)
    movq -360(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -368(%rbp)
    movq -368(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L43_14
    jmp .L43_15
.L43_14:
    movq -360(%rbp), %r10
    movslq (%r10), %rbx
    jmp .L43_16
.L43_15:
    movl $4294967295, %eax
    movl %eax, %ebx
.L43_16:
    movq %r15, %r10
    movl %ebx, (%r10)
    movq -376(%rbp), %r10
    movswl (%r10), %eax
    movl %eax, -384(%rbp)
    movl -384(%rbp), %eax
    movq -392(%rbp), %r10
    movw %ax, (%r10)
    movl $0, %eax
    movq -400(%rbp), %r10
    movw %ax, (%r10)
    movq %r15, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq -512(%rbp), %r11
    movq $0, 0(%r11)
    movq -408(%rbp), %r10
    movq (%r10), %r14
    movq $32, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -416(%rbp)
    movq -416(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L43_17
    jmp .L43_18
.L43_17:
    movq %r14, %r10
    movslq (%r10), %rbx
    jmp .L43_19
.L43_18:
    movl $4294967295, %eax
    movl %eax, %ebx
.L43_19:
    movq -512(%rbp), %r10
    movl %ebx, (%r10)
    movl -384(%rbp), %eax
    movq -424(%rbp), %r10
    movw %ax, (%r10)
    movl $0, %eax
    movq -432(%rbp), %r10
    movw %ax, (%r10)
    movq -512(%rbp), %r10
    movq -504(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r12, %rdi
    movl $2, %esi
    movl $20, %edx
    call poll@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jge .L43_21
.L43_20:
    call lb_c_errno@PLT
    movl %eax, %ebx
    movq -440(%rbp), %r10
    movslq (%r10), %r13
    cmpl %r13d, %ebx
    jne .L43_24
.L43_23:
    jmp .L43_7
.L43_24:
.L43_25:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_238(%rip), %r13
    leaq -232(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $33, %rax
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
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq -336(%rbp), %r10
    movl %r12d, (%r10)
    movl $0, %eax
    movl %r12d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_237(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r13d
    movl %r13d, %edi
    movl $9, %esi
    call kill@PLT
    movl %eax, %r13d
    movl %r12d, %edi
    call lb_process_terminate@PLT
.L43_61:
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
.L43_21:
.L43_22:
    movq -368(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L43_31
    jmp .L43_66
.L43_66:
    movl %ebx, %r13d
    jmp .L43_32
.L43_31:
    movq -448(%rbp), %r10
    movswl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L43_32:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L43_28
    jmp .L43_29
.L43_28:
    movq -352(%rbp), %r10
    movq (%r10), %rbx
    movq -360(%rbp), %rsi
    movq %rbx, %rdx
    leaq -264(%rbp), %rdi
    call lb_process_12pull_command@PLT
    movq -456(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L43_34
    jmp .L43_33
.L43_34:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -520(%rbp), %r10
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
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq -336(%rbp), %r10
    movl %r12d, (%r10)
    movl $0, %eax
    movl %r12d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_237(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r13d
    movl %r13d, %edi
    movl $9, %esi
    call kill@PLT
    movl %eax, %r13d
    movl %r12d, %edi
    call lb_process_terminate@PLT
.L43_62:
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
.L43_33:
    jmp .L43_30
.L43_29:
.L43_30:
    movq -416(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L43_39
    jmp .L43_67
.L43_67:
    movl %ebx, %r13d
    jmp .L43_40
.L43_39:
    movq -464(%rbp), %r10
    movswl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L43_40:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L43_36
    jmp .L43_37
.L43_36:
    movq -352(%rbp), %r10
    movq (%r10), %rbx
    movq %r14, %rsi
    movq %rbx, %rdx
    leaq -296(%rbp), %rdi
    call lb_process_12pull_command@PLT
    movq -472(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L43_42
    jmp .L43_41
.L43_42:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -528(%rbp), %r10
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
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq -336(%rbp), %r10
    movl %r12d, (%r10)
    movl $0, %eax
    movl %r12d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_237(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r13d
    movl %r13d, %edi
    movl $9, %esi
    call kill@PLT
    movl %eax, %r13d
    movl %r12d, %edi
    call lb_process_terminate@PLT
.L43_63:
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
.L43_41:
    jmp .L43_38
.L43_37:
.L43_38:
    movq -368(%rbp), %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L43_47
    jmp .L43_68
.L43_68:
    movl %ebx, %r13d
    jmp .L43_48
.L43_47:
    movq -416(%rbp), %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L43_48:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L43_44
    jmp .L43_45
.L43_44:
    movl $0, %eax
    movq -480(%rbp), %r10
    movl %eax, (%r10)
    movq -488(%rbp), %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    movq -480(%rbp), %rsi
    movl $1, %edx
    call waitpid@PLT
    movl %eax, %r13d
    cmpl %r13d, %ebx
    jne .L43_50
.L43_49:
    movq -480(%rbp), %r10
    movslq (%r10), %rbx
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
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
.L43_50:
.L43_51:
    movl $0, %ecx
    cmpl %ecx, %r13d
    setl %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L43_56
    jmp .L43_69
.L43_69:
    movl %r14d, %r13d
    jmp .L43_57
.L43_56:
    call lb_c_errno@PLT
    movl %eax, %r13d
    movq -496(%rbp), %r10
    movslq (%r10), %r14
    cmpl %r14d, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
.L43_57:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L43_53
    jmp .L43_54
.L43_53:
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    leaq lb_process_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_244(%rip), %r14
    leaq -320(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $33, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -336(%rbp), %r10
    movl %ebx, (%r10)
    movl $0, %eax
    movl %ebx, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_237(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r13d
    movl %r13d, %edi
    movl $9, %esi
    call kill@PLT
    movl %eax, %r13d
    movl %ebx, %edi
    call lb_process_terminate@PLT
.L43_64:
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
.L43_54:
.L43_55:
    jmp .L43_46
.L43_45:
.L43_46:
    jmp .L43_7

    .p2align 4
    .globl lb_process_12pull_command
    .type lb_process_12pull_command, @function
lb_process_12pull_command:
    pushq %rbp
    movq %rsp, %rbp
    subq $4272, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    movq %rdx, -112(%rbp)
    leaq -4208(%rbp), %rbx
    movq %rbx, %rdi
    xorl %esi, %esi
    movq $4096, %rdx
    call memset@PLT
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %r10
    movslq (%r10), %r13
    movl %r13d, %edi
    movq %rbx, %rsi
    movq $4096, %rdx
    call read@PLT
    movq %rax, %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L44_2
.L44_1:
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L44_3
.L44_2:
    movq $0, %rcx
    cmpq %rcx, %r13
    jle .L44_5
.L44_4:
    leaq -112(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $4097, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_247(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r13, %rax
    jbe .L44_7
.L44_8:
    leaq .Ltext_247(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
.L44_7:
    leaq -4224(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq %r12, %rsi
    movq %r14, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -4256(%rbp), %rdi
    call lb_process_14command_append@PLT
    leaq -4256(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L44_10
    jmp .L44_9
.L44_10:
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
.L44_11:
.L44_9:
    jmp .L44_6
.L44_5:
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
    jne .L44_15
    jmp .L44_18
.L44_18:
    movl %ebx, %r12d
    jmp .L44_16
.L44_15:
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
.L44_16:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L44_12
    jmp .L44_13
.L44_12:
    leaq -80(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_238(%rip), %r12
    leaq -4272(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $33, %rax
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
.L44_17:
    jmp .L44_14
.L44_13:
.L44_14:
.L44_6:
.L44_3:
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
    .globl lb_process_15monitor_windows
    .type lb_process_15monitor_windows, @function
lb_process_15monitor_windows:
    pushq %rbp
    movq %rsp, %rbp
    subq $480, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    movq %rdx, -112(%rbp)
    movq %rcx, -128(%rbp)
    movq %r8, -144(%rbp)
    movq %r9, -160(%rbp)
    movq $0, %rdi
    movq $0, %rsi
    call CreateJobObjectW@PLT
    movq %rax, -464(%rbp)
    movq -464(%rbp), %rax
    testq %rax, %rax
    jne .L45_1
    jmp .L45_2
.L45_1:
    jmp .L45_3
.L45_2:
    leaq -80(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_248(%rip), %r12
    leaq -176(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $34, %rax
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
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    movl $1, %esi
    call TerminateProcess@PLT
    movl %eax, %r12d
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
.L45_3:
    leaq -96(%rbp), %rax
    movq %rax, -392(%rbp)
    movq -392(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -400(%rbp)
    movq -464(%rbp), %rdi
    movq -400(%rbp), %rsi
    call AssignProcessToJobObject@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L45_40
    jmp .L45_8
.L45_40:
    movl %r14d, %r15d
    jmp .L45_9
.L45_8:
    leaq -112(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rdi
    call ResumeThread@PLT
    movl %eax, %r14d
    movl $4294967295, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L45_9:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L45_5
    jmp .L45_6
.L45_5:
    leaq -80(%rbp), %r12
    leaq lb_process_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_249(%rip), %r14
    leaq -192(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $43, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq -464(%rbp), %rdi
    movl $1, %esi
    call TerminateJobObject@PLT
    movl %eax, %r14d
    movq -464(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -400(%rbp), %rdi
    movl $1, %esi
    call TerminateProcess@PLT
    movl %eax, %ebx
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
.L45_6:
.L45_7:
    leaq -128(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rsi
    leaq -232(%rbp), %rdi
    call lb_process_14command_reader@PLT
    leaq -232(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L45_12
    jmp .L45_11
.L45_12:
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq -80(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -464(%rbp), %rdi
    movl $1, %esi
    call TerminateJobObject@PLT
    movl %eax, %r12d
    movq -464(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -400(%rbp), %rdi
    movl $1, %esi
    call TerminateProcess@PLT
    movl %eax, %ebx
    movq %r14, %rsi
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
.L45_11:
    movq %r15, %r10
    movq (%r10), %r14
    leaq -144(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rsi
    leaq -272(%rbp), %rdi
    call lb_process_14command_reader@PLT
    leaq -272(%rbp), %r13
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L45_15
    jmp .L45_14
.L45_15:
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq -80(%rbp), %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r14, %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq -464(%rbp), %rdi
    movl $1, %esi
    call TerminateJobObject@PLT
    movl %eax, %r12d
    movq -464(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movq -400(%rbp), %rdi
    movl $1, %esi
    call TerminateProcess@PLT
    movl %eax, %ebx
    movq %r15, %rsi
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
.L45_14:
    movq %r13, %r10
    movq (%r10), %r12
    leaq -280(%rbp), %rax
    movq %rax, -408(%rbp)
    movq $0, %rax
    movq -408(%rbp), %r10
    movq %rax, (%r10)
    leaq -288(%rbp), %rax
    movq %rax, -416(%rbp)
    movq $0, %rax
    movq -416(%rbp), %r10
    movq %rax, (%r10)
    leaq -160(%rbp), %rax
    movq %rax, -424(%rbp)
    leaq -352(%rbp), %rax
    movq %rax, -472(%rbp)
    movq -472(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -448(%rbp)
    leaq -384(%rbp), %rax
    movq %rax, -480(%rbp)
    movq -480(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -456(%rbp)
.L45_17:
.L45_18:
    movq -424(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %r10
    movzbl (%r10), %eax
    movl %eax, %r13d
    testl %r13d, %r13d
    jne .L45_20
    jmp .L45_21
.L45_20:
    leaq -80(%rbp), %rbx
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_239(%rip), %r13
    leaq -304(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $17, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq %r14, %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq -464(%rbp), %rdi
    movl $1, %esi
    call TerminateJobObject@PLT
    movl %eax, %r12d
    movq -464(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq -392(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movl $1, %esi
    call TerminateProcess@PLT
    movl %eax, %r12d
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
.L45_21:
.L45_22:
    movq -392(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -432(%rbp)
    movq -432(%rbp), %rdi
    movl $20, %esi
    call WaitForSingleObject@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %eax
    movl %eax, -440(%rbp)
    movl -440(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L45_27
    jmp .L45_41
.L45_41:
    movl %r15d, %ebx
    jmp .L45_28
.L45_27:
    movl $258, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl %r15d, %ebx
.L45_28:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L45_24
    jmp .L45_25
.L45_24:
    leaq -80(%rbp), %rbx
    leaq lb_process_failed(%rip), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movq %rbx, %r10
    movl %r15d, (%r10)
    leaq .Ltext_250(%rip), %r15
    leaq -320(%rbp), %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $30, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r13, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq %r14, %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq -464(%rbp), %rdi
    movl $1, %esi
    call TerminateJobObject@PLT
    movl %eax, %r12d
    movq -464(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq -432(%rbp), %rdi
    movl $1, %esi
    call TerminateProcess@PLT
    movl %eax, %r12d
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
.L45_25:
.L45_26:
    movq -424(%rbp), %r10
    movq (%r10), %rbx
    movq %r14, %rsi
    movq -408(%rbp), %rdx
    movq %rbx, %rcx
    leaq -352(%rbp), %rdi
    call lb_process_12pull_windows@PLT
    movq -448(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L45_31
    jmp .L45_30
.L45_31:
    leaq -80(%rbp), %rbx
    movq -472(%rbp), %r10
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
    movq %r12, %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq %r14, %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq -464(%rbp), %rdi
    movl $1, %esi
    call TerminateJobObject@PLT
    movl %eax, %r12d
    movq -464(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq -432(%rbp), %rdi
    movl $1, %esi
    call TerminateProcess@PLT
    movl %eax, %r12d
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
.L45_30:
    movq %r12, %rsi
    movq -416(%rbp), %rdx
    movq %rbx, %rcx
    leaq -384(%rbp), %rdi
    call lb_process_12pull_windows@PLT
    movq -456(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L45_34
    jmp .L45_33
.L45_34:
    leaq -80(%rbp), %rbx
    movq -480(%rbp), %r10
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
    movq %r12, %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq %r14, %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq -464(%rbp), %rdi
    movl $1, %esi
    call TerminateJobObject@PLT
    movl %eax, %r12d
    movq -464(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq -432(%rbp), %rdi
    movl $1, %esi
    call TerminateProcess@PLT
    movl %eax, %r12d
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
.L45_33:
    movl -440(%rbp), %eax
    testl %eax, %eax
    jne .L45_36
    jmp .L45_37
.L45_36:
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq %r14, %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movq -464(%rbp), %rdi
    movl $1, %esi
    call TerminateJobObject@PLT
    movl %eax, %r12d
    movq -464(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
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
.L45_37:
.L45_38:
    jmp .L45_17

    .p2align 4
    .globl lb_process_12pull_windows
    .type lb_process_12pull_windows, @function
lb_process_12pull_windows:
    pushq %rbp
    movq %rsp, %rbp
    subq $4448, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    movq %rdx, -112(%rbp)
    movq %rcx, -128(%rbp)
    leaq -136(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -96(%rbp), %rax
    movq %rax, -4376(%rbp)
    movq -4376(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movq %rbx, %rsi
    call GetFileSizeEx@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L46_33
    jmp .L46_4
.L46_33:
    movl %r13d, %r14d
    jmp .L46_5
.L46_4:
    movq %rbx, %r10
    movq (%r10), %r13
    leaq -112(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    setl %al
    movzbl %al, %r14d
.L46_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L46_1
    jmp .L46_2
.L46_1:
    leaq -80(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_251(%rip), %r12
    leaq -152(%rbp), %r13
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
.L46_6:
    jmp .L46_3
.L46_2:
.L46_3:
    movq %rbx, %r10
    movq (%r10), %r13
    leaq -112(%rbp), %rax
    movq %rax, -4384(%rbp)
    movq -4384(%rbp), %r10
    movq (%r10), %r15
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, -4392(%rbp)
    movq %r13, %rax
    movq -4392(%rbp), %rcx
    subq %rcx, %rax
    jno 1f
    leaq .Ltext_252(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    leaq -128(%rbp), %rax
    movq %rax, -4400(%rbp)
    movq -4400(%rbp), %r10
    movq (%r10), %r14
    movq $48, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    jbe .L46_8
.L46_7:
    leaq -80(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_230(%rip), %r12
    leaq -168(%rbp), %r13
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
.L46_10:
    jmp .L46_9
.L46_8:
.L46_9:
    leaq -4264(%rbp), %rax
    movq %rax, -4408(%rbp)
    movq -4408(%rbp), %rdi
    xorl %esi, %esi
    movq $4096, %rdx
    call memset@PLT
    leaq -4300(%rbp), %rax
    movq %rax, -4416(%rbp)
    leaq -4336(%rbp), %rax
    movq %rax, -4424(%rbp)
    movq -4424(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -4432(%rbp)
    leaq -4368(%rbp), %rax
    movq %rax, -4448(%rbp)
    movq -4448(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -4440(%rbp)
    movq %r15, %r12
    movq %r14, %r13
.L46_11:
    movq %r12, %r10
    movq (%r10), %r14
    movq %rbx, %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    jge .L46_13
.L46_12:
    movq %r13, %r10
    movzbl (%r10), %eax
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L46_14
    jmp .L46_15
.L46_14:
    leaq -80(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_239(%rip), %r12
    leaq -4280(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $17, %rax
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
.L46_17:
    jmp .L46_16
.L46_15:
.L46_16:
    movq -4376(%rbp), %r10
    movq (%r10), %r12
    movq -4384(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq %r14, %rsi
    movq $0, %rdx
    movl $0, %ecx
    call SetFilePointerEx@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L46_19
.L46_18:
    leaq -80(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_253(%rip), %r12
    leaq -4296(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $39, %rax
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
.L46_21:
    jmp .L46_20
.L46_19:
.L46_20:
    movl $0, %eax
    movq -4416(%rbp), %r10
    movl %eax, (%r10)
    movq %rbx, %r10
    movq (%r10), %r14
    movq %r13, %r10
    movq (%r10), %r15
    movq %r14, %rax
    movq %r15, %rcx
    subq %rcx, %rax
    jno 1f
    leaq .Ltext_254(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq $4096, %rdi
    movq %r14, %rsi
    call lb_process_13math_min_size@PLT
    movq %rax, %r14
    movq %r12, %rdi
    movq -4408(%rbp), %rsi
    movl %r14d, %edx
    movq -4416(%rbp), %rcx
    movq $0, %r8
    call ReadFile@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L46_34
    jmp .L46_25
.L46_34:
    movl %r14d, %r12d
    jmp .L46_26
.L46_25:
    movq -4416(%rbp), %r10
    movl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L46_26:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L46_22
    jmp .L46_23
.L46_22:
    leaq -80(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_238(%rip), %r12
    leaq -4320(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $33, %rax
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
.L46_27:
    jmp .L46_24
.L46_23:
.L46_24:
    movq -4400(%rbp), %r10
    movq (%r10), %r14
    movq -4416(%rbp), %r10
    movl (%r10), %r12d
    movl %r12d, %r15d
    movq $4097, %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_256(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r15, %rax
    jbe .L46_28
.L46_29:
    leaq .Ltext_256(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
.L46_28:
    movq -4408(%rbp), %rax
    movq -4424(%rbp), %r10
    movq %rax, (%r10)
    movq -4432(%rbp), %r10
    movq %r15, (%r10)
    movq %r14, %rsi
    movq -4424(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -4368(%rbp), %rdi
    call lb_process_14command_append@PLT
    movq -4440(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L46_31
    jmp .L46_30
.L46_31:
    leaq -80(%rbp), %rbx
    movq -4448(%rbp), %r10
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
.L46_32:
.L46_30:
    movq %r13, %r10
    movq (%r10), %r12
    movq -4416(%rbp), %r10
    movl (%r10), %r15d
    movl %r15d, %r15d
    movq %r12, %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jno 1f
    leaq .Ltext_257(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r13, %r10
    movq %r12, (%r10)
    movq %r13, %r12
    movq %r14, %r13
    jmp .L46_11
.L46_13:
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
    .globl lb_process_14command_reader
    .type lb_process_14command_reader, @function
lb_process_14command_reader:
    pushq %rbp
    movq %rsp, %rbp
    subq $65664, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -96(%rbp)
    leaq -65632(%rbp), %rbx
    movq %rbx, %rdi
    xorl %esi, %esi
    movq $65536, %rdx
    call memset@PLT
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call _fileno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call _get_osfhandle@PLT
    movq %rax, %r12
    movq %r12, %rdi
    movq %rbx, %rsi
    movl $32768, %edx
    movl $0, %ecx
    call GetFinalPathNameByHandleW@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L47_14
    jmp .L47_4
.L47_14:
    movl %r13d, %r12d
    jmp .L47_5
.L47_4:
    movl $32768, %ecx
    cmpl %ecx, %r12d
    setae %al
    movzbl %al, %r13d
    movl %r13d, %r12d
.L47_5:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L47_1
    jmp .L47_2
.L47_1:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_259(%rip), %r13
    leaq -65648(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $39, %rax
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
.L47_6:
    jmp .L47_3
.L47_2:
.L47_3:
    subq $16, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rdi
    movl $2147483648, %esi
    movl $7, %edx
    movq $0, %rcx
    movl $3, %r8d
    movl $128, %r9d
    call CreateFileW@PLT
    addq $16, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L47_7
    jmp .L47_8
.L47_8:
    leaq .Ltext_260(%rip), %rdi
    leaq .Ltext_74(%rip), %rsi
    call lb_core_7trap_at@PLT
.L47_7:
    movq $-1, %rcx
    cmpq %rcx, %r12
    jne .L47_10
.L47_9:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_261(%rip), %r13
    leaq -65664(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $46, %rax
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
.L47_12:
    jmp .L47_11
.L47_10:
.L47_11:
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
.L47_13:
    leaq .Ltext_262(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
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
    jne .L48_11
    jmp .L48_4
.L48_11:
    movl %r13d, %r14d
    jmp .L48_5
.L48_4:
    leaq -64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L48_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L48_1
    jmp .L48_2
.L48_1:
    leaq .Ltext_8(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_263(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L48_3
.L48_2:
.L48_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L48_7
.L48_6:
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
    jne .L48_9
    jmp .L48_10
.L48_10:
    leaq .Ltext_264(%rip), %rdi
    leaq .Ltext_74(%rip), %rsi
    call lb_core_7trap_at@PLT
.L48_9:
    jmp .L48_8
.L48_7:
.L48_8:
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
    jbe .L49_2
.L49_1:
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
    leaq .Ltext_265(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
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
    jne .L49_5
    jmp .L49_4
.L49_5:
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
.L49_4:
    jmp .L49_3
.L49_2:
.L49_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_process_15release_storage_0g1_u16
    .type lb_process_15release_storage_0g1_u16, @function
    .weak lb_process_15release_storage_0g1_u16
lb_process_15release_storage_0g1_u16:
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
    jbe .L50_2
.L50_1:
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -80(%rbp)
    leaq -72(%rbp), %r14
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r12, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_265(%rip), %rdi
    leaq .Ltext_266(%rip), %rsi
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
    jne .L50_5
    jmp .L50_4
.L50_5:
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
.L50_4:
    jmp .L50_3
.L50_2:
.L50_3:
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
    .quad lb_process_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "Command"
.Ltext_1:
    .asciz "src/std/process/module.lucb:43:9"
.Ltext_2:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_3:
    .asciz "memory.unset"
.Ltext_4:
    .asciz "src/std/process/module.lucb:45:17"
.Ltext_5:
    .asciz "memory.exhausted"
.Ltext_6:
    .asciz "src/std/process/module.lucb:47:17"
.Ltext_7:
    .asciz "src/std/process/module.lucb:48:9"
.Ltext_8:
    .asciz "index out of bounds"
.Ltext_9:
    .asciz "src/std/process/module.lucb:52:13"
.Ltext_10:
    .asciz "the program's output cannot be read"
.Ltext_11:
    .asciz "src/std/process/module.lucb:62:17"
.Ltext_12:
    .asciz "src/std/process/module.lucb:65:9"
.Ltext_13:
    .asciz "src/std/process/module.lucb:67:9"
.Ltext_14:
    .asciz "unreachable"
.Ltext_15:
    .asciz "src/std/process/module.lucb:69:9"
.Ltext_16:
    .asciz "src/std/process/module.lucb:73:13"
.Ltext_17:
    .asciz "src/std/process/module.lucb:89:5"
.Ltext_18:
    .asciz "src/std/process/module.lucb:99:5"
.Ltext_19:
    .asciz "src/std/process/module.lucb:100:5"
.Ltext_20:
    .asciz "src/std/process/module.lucb:103:9"
.Ltext_21:
    .asciz "src/std/process/module.lucb:104:9"
.Ltext_22:
    .asciz "src/std/process/module.lucb:105:5"
.Ltext_23:
    .asciz "src/std/process/module.lucb:109:9"
.Ltext_24:
    .asciz "run"
.Ltext_25:
    .asciz "src/std/process/module.lucb:112:9"
.Ltext_26:
    .asciz "src/std/process/module.lucb:113:9"
.Ltext_27:
    .asciz "src/std/process/module.lucb:114:9"
.Ltext_28:
    .asciz "src/std/process/module.lucb:118:9"
.Ltext_29:
    .asciz "src/std/process/module.lucb:119:9"
.Ltext_30:
    .asciz "src/std/process/module.lucb:120:9"
.Ltext_31:
    .asciz "src/std/process/module.lucb:121:9"
.Ltext_32:
    .asciz "src/std/process/module.lucb:122:9"
.Ltext_33:
    .asciz "/dev/null"
.Ltext_34:
    .asciz "src/std/process/module.lucb:133:9"
.Ltext_35:
    .asciz "src/std/process/module.lucb:134:9"
.Ltext_36:
    .asciz "src/std/process/module.lucb:135:9"
.Ltext_37:
    .asciz "src/std/process/module.lucb:137:9"
.Ltext_38:
    .asciz "src/std/process/module.lucb:138:9"
.Ltext_39:
    .asciz "src/std/process/module.lucb:147:5"
.Ltext_40:
    .asciz "src/std/process/module.lucb:148:5"
.Ltext_41:
    .asciz "src/std/process/module.lucb:149:5"
.Ltext_42:
    .asciz "src/std/process/module.lucb:151:5"
.Ltext_43:
    .asciz "src/std/process/module.lucb:152:5"
.Ltext_44:
    .asciz "src/std/process/module.lucb:159:9"
.Ltext_45:
    .asciz "src/std/process/module.lucb:161:9"
.Ltext_46:
    .asciz "src/std/process/module.lucb:162:9"
.Ltext_47:
    .asciz "the program was stopped by a signal"
.Ltext_48:
    .asciz "src/std/process/module.lucb:164:9"
.Ltext_49:
    .asciz "src/std/process/module.lucb:165:5"
.Ltext_50:
    .asciz "src/std/process/module.lucb:168:9"
.Ltext_51:
    .asciz "shift count out of range"
.Ltext_52:
    .asciz "src/std/process/module.lucb:169:5"
.Ltext_53:
    .asciz "src/std/process/module.lucb:184:9"
.Ltext_54:
    .asciz "src/std/process/module.lucb:185:9"
.Ltext_55:
    .asciz "src/std/process/module.lucb:190:9"
.Ltext_56:
    .asciz "src/std/process/module.lucb:192:9"
.Ltext_57:
    .asciz "src/std/process/module.lucb:201:5"
.Ltext_58:
    .asciz "src/std/process/module.lucb:213:9"
.Ltext_59:
    .asciz "src/std/process/windows.lucb:53:13"
.Ltext_60:
    .asciz "src/std/process/windows.lucb:54:13"
.Ltext_61:
    .asciz "src/std/process/windows.lucb:56:5"
.Ltext_62:
    .asciz "src/std/process/windows.lucb:57:5"
.Ltext_63:
    .asciz "src/std/process/windows.lucb:61:13"
.Ltext_64:
    .asciz "src/std/process/windows.lucb:63:9"
.Ltext_65:
    .asciz "src/std/process/windows.lucb:66:13"
.Ltext_66:
    .asciz "src/std/process/windows.lucb:67:13"
.Ltext_67:
    .asciz "src/std/process/windows.lucb:68:9"
.Ltext_68:
    .asciz "src/std/process/windows.lucb:69:9"
.Ltext_69:
    .asciz "src/std/process/windows.lucb:71:5"
.Ltext_70:
    .asciz "src/std/process/windows.lucb:73:9"
.Ltext_71:
    .asciz "src/std/process/windows.lucb:74:9"
.Ltext_72:
    .asciz "src/std/process/windows.lucb:75:5"
.Ltext_73:
    .asciz "src/std/process/windows.lucb:76:5"
.Ltext_74:
    .asciz "null_foreign"
.Ltext_75:
    .asciz "src/std/process/windows.lucb:80:5"
.Ltext_76:
    .asciz "a child stream could not be inherited"
.Ltext_77:
    .asciz "a child stream has no handle"
.Ltext_78:
    .asciz "src/std/process/windows.lucb:83:5"
.Ltext_79:
    .asciz "a child stream could not be measured"
.Ltext_80:
    .asciz "a child stream could not be read"
.Ltext_81:
    .asciz "src/std/process/windows.lucb:91:5"
.Ltext_82:
    .asciz "src/std/process/windows.lucb:93:9"
.Ltext_83:
    .asciz "src/std/process/windows.lucb:95:5"
.Ltext_84:
    .asciz "src/std/process/windows.lucb:100:5"
.Ltext_85:
    .asciz "src/std/process/windows.lucb:101:5"
.Ltext_86:
    .asciz "the child temporary directory is unavailable"
.Ltext_87:
    .asciz "0123456789abcdef"
.Ltext_88:
    .asciz "src/std/process/windows.lucb:109:13"
.Ltext_89:
    .asciz "src/std/process/windows.lucb:110:13"
.Ltext_90:
    .asciz "src/std/process/windows.lucb:111:9"
.Ltext_91:
    .asciz "src/std/process/windows.lucb:112:9"
.Ltext_92:
    .asciz "a child capture file could not be created"
.Ltext_93:
    .asciz "a child capture descriptor could not be created"
.Ltext_94:
    .asciz "w+b"
.Ltext_95:
    .asciz "a child capture stream could not be created"
.Ltext_96:
    .asciz "no unused child capture name was found"
.Ltext_97:
    .asciz "src/std/process/windows.lucb:124:5"
.Ltext_98:
    .asciz "the process command is too long"
.Ltext_99:
    .asciz "src/std/process/windows.lucb:134:5"
.Ltext_100:
    .asciz "src/std/process/windows.lucb:139:9"
.Ltext_101:
    .asciz "src/std/process/windows.lucb:140:9"
.Ltext_102:
    .asciz "src/std/process/windows.lucb:142:5"
.Ltext_103:
    .asciz "src/std/process/windows.lucb:143:5"
.Ltext_104:
    .asciz "src/std/process/windows.lucb:146:9"
.Ltext_105:
    .asciz "src/std/process/windows.lucb:149:9"
.Ltext_106:
    .asciz "src/std/process/windows.lucb:153:9"
.Ltext_107:
    .asciz "src/std/process/windows.lucb:155:5"
.Ltext_108:
    .asciz "src/std/process/windows.lucb:157:5"
.Ltext_109:
    .asciz "NUL"
.Ltext_110:
    .asciz "rb"
.Ltext_111:
    .asciz "the child input could not be opened"
.Ltext_112:
    .asciz "src/std/process/windows.lucb:159:5"
.Ltext_113:
    .asciz "src/std/process/windows.lucb:161:5"
.Ltext_114:
    .asciz "src/std/process/windows.lucb:163:5"
.Ltext_115:
    .asciz "src/std/process/windows.lucb:165:5"
.Ltext_116:
    .asciz "the process could not be started"
.Ltext_117:
    .asciz "src/std/process/windows.lucb:177:9"
.Ltext_118:
    .asciz "CreateProcess returned no process"
.Ltext_119:
    .asciz "src/std/process/windows.lucb:178:5"
.Ltext_120:
    .asciz "CreateProcess returned no thread"
.Ltext_121:
    .asciz "src/std/process/windows.lucb:179:5"
.Ltext_122:
    .asciz "src/std/process/windows.lucb:183:9"
.Ltext_123:
    .asciz "waiting for the process failed"
.Ltext_124:
    .asciz "src/std/process/windows.lucb:187:9"
.Ltext_125:
    .asciz "the process exit status is unavailable"
.Ltext_126:
    .asciz "src/std/process/windows.lucb:190:9"
.Ltext_127:
    .asciz ""
.Ltext_128:
    .asciz "src/std/process/windows.lucb:192:9"
.Ltext_129:
    .asciz "src/std/process/windows.lucb:193:5"
.Ltext_130:
    .asciz "src/std/process/windows.lucb:196:9"
.Ltext_131:
    .asciz "src/std/process/windows.lucb:197:5"
.Ltext_132:
    .asciz "src/std/process/termination/module.lucb:14:9"
.Ltext_133:
    .asciz "the process is already closing"
.Ltext_134:
    .asciz "src/std/process/termination/module.lucb:33:9"
.Ltext_135:
    .asciz "src/std/process/termination/module.lucb:41:9"
.Ltext_136:
    .asciz "src/std/process/termination/posix.lucb:16:5"
.Ltext_137:
    .asciz "SIGINT handler could not be installed"
.Ltext_138:
    .asciz "SIGTERM handler could not be installed"
.Ltext_139:
    .asciz "src/std/process/termination/windows.lucb:25:5"
.Ltext_140:
    .asciz "the console termination handler could not be installed"
.Ltext_141:
    .asciz "src/std/process/environment/posix.lucb:10:5"
.Ltext_142:
    .asciz "src/std/process/environment/posix.lucb:15:9"
.Ltext_143:
    .asciz "src/std/process/environment/posix.lucb:18:13"
.Ltext_144:
    .asciz "an environment override must be NAME=value with a nonempty name"
.Ltext_145:
    .asciz "src/std/process/environment/posix.lucb:19:5"
.Ltext_146:
    .asciz "src/std/process/environment/posix.lucb:23:9"
.Ltext_147:
    .asciz "src/std/process/environment/posix.lucb:25:13"
.Ltext_148:
    .asciz "an environment override repeats a name"
.Ltext_149:
    .asciz "src/std/process/environment/posix.lucb:29:9"
.Ltext_150:
    .asciz "the environment is too large"
.Ltext_151:
    .asciz "src/std/process/environment/posix.lucb:32:5"
.Ltext_152:
    .asciz "the environment changed during process creation"
.Ltext_153:
    .asciz "src/std/process/environment/posix.lucb:36:9"
.Ltext_154:
    .asciz "src/std/process/environment/posix.lucb:41:13"
.Ltext_155:
    .asciz "src/std/process/environment/posix.lucb:45:13"
.Ltext_156:
    .asciz "src/std/process/environment/posix.lucb:46:13"
.Ltext_157:
    .asciz "src/std/process/environment/posix.lucb:48:9"
.Ltext_158:
    .asciz "src/std/process/environment/posix.lucb:49:9"
.Ltext_159:
    .asciz "src/std/process/environment/posix.lucb:50:5"
.Ltext_160:
    .asciz "src/std/process/environment/posix.lucb:51:5"
.Ltext_161:
    .asciz "src/std/process/environment/windows.lucb:10:5"
.Ltext_162:
    .asciz "src/std/process/environment/windows.lucb:11:9"
.Ltext_163:
    .asciz "src/std/process/environment/windows.lucb:12:5"
.Ltext_164:
    .asciz "src/std/process/environment/windows.lucb:17:5"
.Ltext_165:
    .asciz "the inherited environment is unavailable"
.Ltext_166:
    .asciz "src/std/process/environment/windows.lucb:25:9"
.Ltext_167:
    .asciz "src/std/process/environment/windows.lucb:27:13"
.Ltext_168:
    .asciz "src/std/process/environment/windows.lucb:28:9"
.Ltext_169:
    .asciz "src/std/process/environment/windows.lucb:29:5"
.Ltext_170:
    .asciz "src/std/process/environment/windows.lucb:34:9"
.Ltext_171:
    .asciz "src/std/process/environment/windows.lucb:35:9"
.Ltext_172:
    .asciz "src/std/process/environment/windows.lucb:36:9"
.Ltext_173:
    .asciz "src/std/process/environment/windows.lucb:38:13"
.Ltext_174:
    .asciz "src/std/process/environment/windows.lucb:39:17"
.Ltext_175:
    .asciz "src/std/process/environment/windows.lucb:40:5"
.Ltext_176:
    .asciz "src/std/process/environment/windows.lucb:41:5"
.Ltext_177:
    .asciz "src/std/process/environment/windows.lucb:48:13"
.Ltext_178:
    .asciz "src/std/process/environment/windows.lucb:49:9"
.Ltext_179:
    .asciz "src/std/process/environment/windows.lucb:50:9"
.Ltext_180:
    .asciz "src/std/process/environment/windows.lucb:53:13"
.Ltext_181:
    .asciz "src/std/process/environment/windows.lucb:57:13"
.Ltext_182:
    .asciz "src/std/process/environment/windows.lucb:58:13"
.Ltext_183:
    .asciz "src/std/process/environment/windows.lucb:60:9"
.Ltext_184:
    .asciz "src/std/process/environment/windows.lucb:61:9"
.Ltext_185:
    .asciz "src/std/process/environment/windows.lucb:63:9"
.Ltext_186:
    .asciz "src/std/process/environment/windows.lucb:65:9"
.Ltext_187:
    .asciz "src/std/process/environment/windows.lucb:66:13"
.Ltext_188:
    .asciz "src/std/process/environment/windows.lucb:67:13"
.Ltext_189:
    .asciz "src/std/process/environment/windows.lucb:68:9"
.Ltext_190:
    .asciz "src/std/process/environment/windows.lucb:71:9"
.Ltext_191:
    .asciz "src/std/process/environment/windows.lucb:72:5"
.Ltext_192:
    .asciz "src/std/process/environment/windows.lucb:75:9"
.Ltext_193:
    .asciz "src/std/process/environment/windows.lucb:76:13"
.Ltext_194:
    .asciz "src/std/process/environment/windows.lucb:77:13"
.Ltext_195:
    .asciz "src/std/process/environment/windows.lucb:78:5"
.Ltext_196:
    .asciz "src/std/process/environment/windows.lucb:79:5"
.Ltext_197:
    .asciz "src/std/process/environment/windows.lucb:83:9"
.Ltext_198:
    .asciz "a command argument must be UTF-8"
.Ltext_199:
    .asciz "a command argument cannot contain NUL"
.Ltext_200:
    .asciz "src/std/process/command/module.lucb:32:9"
.Ltext_201:
    .asciz "a command needs a program and an output limit in 1..16 MiB"
.Ltext_202:
    .asciz "src/std/process/command/module.lucb:44:9"
.Ltext_203:
    .asciz "src/std/process/command/module.lucb:48:9"
.Ltext_204:
    .asciz "src/std/process/command/module.lucb:50:13"
.Ltext_205:
    .asciz "src/std/process/command/module.lucb:51:13"
.Ltext_206:
    .asciz "src/std/process/command/module.lucb:53:13"
.Ltext_207:
    .asciz "src/std/process/command/module.lucb:55:17"
.Ltext_208:
    .asciz "src/std/process/command/module.lucb:56:17"
.Ltext_209:
    .asciz "command"
.Ltext_210:
    .asciz "the command is closed"
.Ltext_211:
    .asciz "src/std/process/command/module.lucb:62:9"
.Ltext_212:
    .asciz "src/std/process/command/module.lucb:65:9"
.Ltext_213:
    .asciz "src/std/process/command/module.lucb:68:9"
.Ltext_214:
    .asciz "src/std/process/command/module.lucb:73:9"
.Ltext_215:
    .asciz "src/std/process/command/module.lucb:84:13"
.Ltext_216:
    .asciz "\357\277\275"
.Ltext_217:
    .asciz "src/std/process/command/module.lucb:90:25"
.Ltext_218:
    .asciz "src/std/process/command/module.lucb:91:21"
.Ltext_219:
    .asciz "src/std/process/command/module.lucb:94:21"
.Ltext_220:
    .asciz "src/std/process/command/module.lucb:95:13"
.Ltext_221:
    .asciz "src/std/process/command/module.lucb:100:9"
.Ltext_222:
    .asciz "a command worker could not be joined"
.Ltext_223:
    .asciz "src/std/process/command/module.lucb:110:13"
.Ltext_224:
    .asciz "src/std/process/command/module.lucb:125:9"
.Ltext_225:
    .asciz "src/std/process/command/module.lucb:128:13"
.Ltext_226:
    .asciz "src/std/process/command/module.lucb:129:9"
.Ltext_227:
    .asciz "src/std/process/command/module.lucb:132:13"
.Ltext_228:
    .asciz "src/std/process/command/module.lucb:134:13"
.Ltext_229:
    .asciz "src/std/process/command/module.lucb:153:5"
.Ltext_230:
    .asciz "the command exceeded its output limit"
.Ltext_231:
    .asciz "src/std/process/command/module.lucb:155:5"
.Ltext_232:
    .asciz "src/std/process/command/module.lucb:157:9"
.Ltext_233:
    .asciz "src/std/process/command/module.lucb:159:13"
.Ltext_234:
    .asciz "src/std/process/command/module.lucb:162:5"
.Ltext_235:
    .asciz "src/std/process/command/module.lucb:167:5"
.Ltext_236:
    .asciz "src/std/process/command/module.lucb:170:5"
.Ltext_237:
    .asciz "src/std/process/command/posix.lucb:7:5"
.Ltext_238:
    .asciz "the command output cannot be read"
.Ltext_239:
    .asciz "command cancelled"
.Ltext_240:
    .asciz "src/std/process/command/posix.lucb:18:9"
.Ltext_241:
    .asciz "src/std/process/command/posix.lucb:19:9"
.Ltext_242:
    .asciz "src/std/process/command/posix.lucb:24:9"
.Ltext_243:
    .asciz "src/std/process/command/posix.lucb:26:9"
.Ltext_244:
    .asciz "the command status cannot be read"
.Ltext_245:
    .asciz "src/std/process/command/posix.lucb:36:17"
.Ltext_246:
    .asciz "src/std/process/command/posix.lucb:40:5"
.Ltext_247:
    .asciz "src/std/process/command/posix.lucb:44:9"
.Ltext_248:
    .asciz "a command job could not be created"
.Ltext_249:
    .asciz "the command could not enter its process job"
.Ltext_250:
    .asciz "waiting for the command failed"
.Ltext_251:
    .asciz "the command output cannot be measured"
.Ltext_252:
    .asciz "src/std/process/command/windows.lucb:40:5"
.Ltext_253:
    .asciz "the command output cannot be positioned"
.Ltext_254:
    .asciz "src/std/process/command/windows.lucb:49:9"
.Ltext_255:
    .asciz "src/std/process/command/windows.lucb:50:9"
.Ltext_256:
    .asciz "src/std/process/command/windows.lucb:52:9"
.Ltext_257:
    .asciz "src/std/process/command/windows.lucb:53:9"
.Ltext_258:
    .asciz "src/std/process/command/windows.lucb:62:5"
.Ltext_259:
    .asciz "the command capture path is unavailable"
.Ltext_260:
    .asciz "src/std/process/command/windows.lucb:65:5"
.Ltext_261:
    .asciz "the command capture reader could not be opened"
.Ltext_262:
    .asciz "src/std/process/command/windows.lucb:68:5"
.Ltext_263:
    .asciz "src/std/memory.lucb:326:9"
.Ltext_264:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_265:
    .asciz "src/std/process/module.lucb:174:9"
.Ltext_266:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_process_7poll_in
    .type lb_process_7poll_in, @object
    .p2align 1
lb_process_7poll_in:
    .zero 2

    .bss
    .globl lb_process_12poll_hang_up
    .type lb_process_12poll_hang_up, @object
    .p2align 1
lb_process_12poll_hang_up:
    .zero 2

    .bss
    .globl lb_process_10poll_error
    .type lb_process_10poll_error, @object
    .p2align 1
lb_process_10poll_error:
    .zero 2

    .bss
    .globl lb_process_9set_flags
    .type lb_process_9set_flags, @object
    .p2align 2
lb_process_9set_flags:
    .zero 4

    .bss
    .globl lb_process_12non_blocking
    .type lb_process_12non_blocking, @object
    .p2align 2
lb_process_12non_blocking:
    .zero 4

    .bss
    .globl lb_process_11would_block
    .type lb_process_11would_block, @object
    .p2align 2
lb_process_11would_block:
    .zero 4

    .bss
    .globl lb_process_failed
    .type lb_process_failed, @object
    .p2align 2
lb_process_failed:
    .zero 4

    .bss
    .globl lb_process_16termination_lock
    .type lb_process_16termination_lock, @object
    .p2align 2
lb_process_16termination_lock:
    .zero 4

    .bss
    .globl lb_process_18termination_owners
    .type lb_process_18termination_owners, @object
    .p2align 3
lb_process_18termination_owners:
    .zero 8

    .bss
    .globl lb_process_22termination_generation
    .type lb_process_22termination_generation, @object
    .p2align 3
lb_process_22termination_generation:
    .zero 8

    .bss
    .globl lb_process_19termination_closing
    .type lb_process_19termination_closing, @object
    .p2align 0
lb_process_19termination_closing:
    .zero 1

    .bss
    .globl lb_process_18previous_interrupt
    .type lb_process_18previous_interrupt, @object
    .p2align 3
lb_process_18previous_interrupt:
    .zero 8

    .bss
    .globl lb_process_18previous_terminate
    .type lb_process_18previous_terminate, @object
    .p2align 3
lb_process_18previous_terminate:
    .zero 8

    .bss
    .globl lb_process_16interrupt_signal
    .type lb_process_16interrupt_signal, @object
    .p2align 2
lb_process_16interrupt_signal:
    .zero 4

    .bss
    .globl lb_process_16terminate_signal
    .type lb_process_16terminate_signal, @object
    .p2align 2
lb_process_16terminate_signal:
    .zero 4

    .bss
    .globl lb_process_17console_interrupt
    .type lb_process_17console_interrupt, @object
    .p2align 2
lb_process_17console_interrupt:
    .zero 4

    .bss
    .globl lb_process_13console_break
    .type lb_process_13console_break, @object
    .p2align 2
lb_process_13console_break:
    .zero 4

    .bss
    .globl lb_process_13console_close
    .type lb_process_13console_close, @object
    .p2align 2
lb_process_13console_close:
    .zero 4

    .bss
    .globl lb_process_14console_logoff
    .type lb_process_14console_logoff, @object
    .p2align 2
lb_process_14console_logoff:
    .zero 4

    .bss
    .globl lb_process_16console_shutdown
    .type lb_process_16console_shutdown, @object
    .p2align 2
lb_process_16console_shutdown:
    .zero 4

    .bss
    .globl lb_process_26console_acknowledgement_ms
    .type lb_process_26console_acknowledgement_ms, @object
    .p2align 3
lb_process_26console_acknowledgement_ms:
    .zero 8

    .bss
    .globl lb_process_12command_type
    .type lb_process_12command_type, @object
    .p2align 3
lb_process_12command_type:
    .zero 40

    .section .note.GNU-stack,"",@progbits
