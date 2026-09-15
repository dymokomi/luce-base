    .text

    .p2align 4
    .globl lb_ownership_lifecycle_0init
    .type lb_ownership_lifecycle_0init, @function
lb_ownership_lifecycle_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_ownership_10finish_run
    .type lb_ownership_10finish_run, @function
lb_ownership_10finish_run:
    pushq %rbp
    movq %rsp, %rbp
    subq $432, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movl %edi, -56(%rbp)
    movq $0, %rdi
    call lb_ownership_drain@PLT
    call lb_ownership_collect@PLT
    movq %fs:0, %rax
    addq lb_ownership_live@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_2
.L1_1:
    leaq -152(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movups %xmm8, 80(%r11)
    leaq -168(%rbp), %rax
    movq %rax, -432(%rbp)
    leaq -224(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq $96, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq -248(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $96, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $0, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq .Ltext_0(%rip), %r15
    movq %r13, %rdi
    movq %r15, %rsi
    movq $9, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r15d
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r13, %rdi
    movq %r15, %rsi
    call lb_core_10format_u64@PLT
    movl %eax, %ebx
    leaq .Ltext_1(%rip), %r15
    movq %r13, %rdi
    movq %r15, %rsi
    movq $23, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq -296(%rbp), %r15
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %r14
    jbe .L1_7
.L1_6:
    movq $16, %rcx
    movq %r15, %rbx
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
    movq $60, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_8
.L1_7:
    movq %r13, %rdi
    call lb_core_13format_finish@PLT
    leaq -312(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -312(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L1_8:
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_10
    jmp .L1_9
.L1_10:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq -208(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L1_4
.L1_9:
    leaq -184(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L1_5
.L1_4:
    leaq .Ltext_3(%rip), %rbx
    leaq -328(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $31, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -184(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L1_5
.L1_11:
.L1_5:
    leaq -184(%rbp), %rbx
    movq %rbx, %r10
    movq -432(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -344(%rbp), %rbx
    call lb_io_stderr@PLT
    leaq -360(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -360(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r12, %rsi
    movq -432(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -424(%rbp), %rdi
    movq %rbx, %r11
    call *%r11
    leaq -424(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_15
    jmp .L1_14
.L1_15:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -384(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L1_12
.L1_14:
    jmp .L1_13
.L1_12:
    jmp .L1_13
.L1_16:
.L1_13:
    movl $3, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_17:
    jmp .L1_3
.L1_2:
.L1_3:
    call lb_ownership_15release_buffers@PLT
    movq %fs:0, %rax
    addq lb_ownership_13runtime_depth@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq %fs:0, %rax
    addq lb_ownership_14thread_context@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_18:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_ownership_11finish_task
    .type lb_ownership_11finish_task, @function
lb_ownership_11finish_task:
    pushq %rbp
    movq %rsp, %rbp
    subq $416, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq $0, %rdi
    call lb_ownership_drain@PLT
    call lb_ownership_collect@PLT
    movq %fs:0, %rax
    addq lb_ownership_live@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L2_2
.L2_1:
    leaq -136(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movups %xmm8, 80(%r11)
    leaq -152(%rbp), %rax
    movq %rax, -416(%rbp)
    leaq -208(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq $96, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq -232(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $96, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $0, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq .Ltext_0(%rip), %r15
    movq %r13, %rdi
    movq %r15, %rsi
    movq $9, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r15d
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r13, %rdi
    movq %r15, %rsi
    call lb_core_10format_u64@PLT
    movl %eax, %ebx
    leaq .Ltext_6(%rip), %r15
    movq %r13, %rdi
    movq %r15, %rsi
    movq $33, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq -280(%rbp), %r15
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %r14
    jbe .L2_7
.L2_6:
    movq $16, %rcx
    movq %r15, %rbx
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
    movq $60, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_8
.L2_7:
    movq %r13, %rdi
    call lb_core_13format_finish@PLT
    leaq -296(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -296(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L2_8:
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_10
    jmp .L2_9
.L2_10:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq -192(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L2_4
.L2_9:
    leaq -168(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_5
.L2_4:
    leaq .Ltext_7(%rip), %rbx
    leaq -312(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $41, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -168(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_5
.L2_11:
.L2_5:
    leaq -168(%rbp), %rbx
    movq %rbx, %r10
    movq -416(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -328(%rbp), %rbx
    call lb_io_stderr@PLT
    leaq -344(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -344(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r12, %rsi
    movq -416(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -408(%rbp), %rdi
    movq %rbx, %r11
    call *%r11
    leaq -408(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_15
    jmp .L2_14
.L2_15:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -368(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L2_12
.L2_14:
    jmp .L2_13
.L2_12:
    jmp .L2_13
.L2_16:
.L2_13:
    movl $3, %edi
    call lb_core_exit@PLT
    jmp .L2_3
.L2_2:
.L2_3:
    call lb_ownership_15release_buffers@PLT
    movq %fs:0, %rax
    addq lb_ownership_13runtime_depth@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq %fs:0, %rax
    addq lb_ownership_14thread_context@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
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
    .globl lb_ownership_15release_buffers
    .type lb_ownership_15release_buffers, @function
lb_ownership_15release_buffers:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %fs:0, %rax
    addq lb_ownership_13pending_count@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L3_1
    jmp .L3_22
.L3_22:
    movl %ebx, %r12d
    jmp .L3_2
.L3_1:
    movq %fs:0, %rax
    addq lb_ownership_10root_count@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r12d
.L3_2:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L3_3
    jmp .L3_23
.L3_23:
    movl %ebx, %r12d
    jmp .L3_4
.L3_3:
    movq %fs:0, %rax
    addq lb_ownership_11white_count@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r12d
.L3_4:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L3_5
    jmp .L3_6
.L3_6:
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_5:
    movq %fs:0, %rax
    addq lb_ownership_pending@GOTTPOFF(%rip), %rax
    movq %rax, -128(%rbp)
    movq -128(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L3_8
.L3_7:
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -136(%rbp)
    leaq -56(%rbp), %r14
    movq -128(%rbp), %r10
    movq (%r10), %r15
    movq %r12, %rax
    movq $32, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
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
    movq -136(%rbp), %r10
    movq (%r10), %r13
    movq -136(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L3_11
    jmp .L3_10
.L3_11:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L3_10:
    jmp .L3_9
.L3_8:
.L3_9:
    movq %fs:0, %rax
    addq lb_ownership_roots@GOTTPOFF(%rip), %rax
    movq %rax, -144(%rbp)
    movq -144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jbe .L3_13
.L3_12:
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -152(%rbp)
    leaq -72(%rbp), %r15
    movq -144(%rbp), %r10
    movq (%r10), %rbx
    movq %r13, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq -152(%rbp), %r10
    movq (%r10), %rbx
    movq -152(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L3_16
    jmp .L3_15
.L3_16:
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
.L3_15:
    jmp .L3_14
.L3_13:
.L3_14:
    movq %fs:0, %rax
    addq lb_ownership_whites@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jbe .L3_18
.L3_17:
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -160(%rbp)
    leaq -88(%rbp), %r15
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r13, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r15, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq -160(%rbp), %r10
    movq (%r10), %r12
    movq -160(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L3_21
    jmp .L3_20
.L3_21:
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %r15, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L3_20:
    jmp .L3_19
.L3_18:
.L3_19:
    leaq -104(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -120(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq -128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq -144(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq %rbx, %r11
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

    .section .init_array,"aw"
    .p2align 3
    .quad lb_ownership_lifecycle_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "runtime: "
.Ltext_1:
    .asciz " objects alive at exit\n"
.Ltext_2:
    .asciz "memory.exhausted: the formatted text does not fit its buffer"
.Ltext_3:
    .asciz "runtime: objects alive at exit\n"
.Ltext_4:
    .asciz "unreachable"
.Ltext_5:
    .asciz "src/std/ownership/lifecycle.lucb:17:5"
.Ltext_6:
    .asciz " objects alive when a task ended\n"
.Ltext_7:
    .asciz "runtime: objects alive when a task ended\n"
.Ltext_8:
    .asciz "assert failed: pending_count == 0 and root_count == 0 and white_count == 0"
.Ltext_9:
    .asciz "src/std/ownership/lifecycle.lucb:39:5"
.Ltext_10:
    .asciz "src/std/ownership/lifecycle.lucb:41:9"
.Ltext_11:
    .asciz "src/std/ownership/lifecycle.lucb:43:9"
.Ltext_12:
    .asciz "src/std/ownership/lifecycle.lucb:45:9"
.Ltext_13:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
