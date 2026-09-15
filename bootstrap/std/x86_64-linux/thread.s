    .text

    .p2align 4
    .globl lb_thread_0init
    .type lb_thread_0init, @function
lb_thread_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    leaq lb_thread_failed(%rip), %rbx
    movl $208273413, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_thread_11least_stack(%rip), %rbx
    movq $16384, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_thread_9name_room(%rip), %rbx
    movq $16, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_thread_Handle_join
    .type lb_thread_Handle_join, @function
lb_thread_Handle_join:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %rsi, -72(%rbp)
    leaq -72(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L1_1
    jmp .L1_2
.L1_1:
    jmp .L1_3
.L1_2:
    leaq -64(%rbp), %rbx
    leaq lb_thread_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_2(%rip), %r12
    leaq -88(%rbp), %r13
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_4:
.L1_3:
    movq %rbx, %rdi
    movq $0, %rsi
    call pthread_join@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_6
.L1_5:
    leaq -64(%rbp), %rbx
    leaq lb_thread_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_3(%rip), %r12
    leaq -104(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $4, %rax
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
.L1_8:
    jmp .L1_7
.L1_6:
.L1_7:
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
    .globl lb_thread_Handle_detach
    .type lb_thread_Handle_detach, @function
lb_thread_Handle_detach:
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
    jne .L2_1
    jmp .L2_2
.L2_1:
    jmp .L2_3
.L2_2:
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_4:
.L2_3:
    movq %rbx, %rdi
    call pthread_detach@PLT
    movl %eax, %ebx
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_thread_trampoline
    .type lb_thread_trampoline, @function
lb_thread_trampoline:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -128(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -136(%rbp)
    movq -128(%rbp), %r10
    movq -136(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -144(%rbp)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -152(%rbp)
    movq $32, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    jbe .L3_2
.L3_1:
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $1, %rcx
    addq %rcx, %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r13, %r15
    jb 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r15, %rax
    jbe .L3_4
.L3_5:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_4:
    leaq -72(%rbp), %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    leaq -88(%rbp), %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    call pthread_self@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L3_6
    jmp .L3_7
.L3_7:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_6:
    movq %r13, %rdi
    movq %r14, %rsi
    call pthread_setname_np@PLT
    movl %eax, %r13d
    jmp .L3_3
.L3_2:
.L3_3:
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    leaq -104(%rbp), %r14
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -160(%rbp)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq -160(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -168(%rbp)
    movq -168(%rbp), %r10
    movq %r13, (%r10)
    movq -128(%rbp), %r10
    movq (%r10), %r13
    movq -128(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -176(%rbp)
    movq -176(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L3_9
    jmp .L3_8
.L3_9:
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
.L3_8:
    leaq -120(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $40, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq -128(%rbp), %r10
    movq (%r10), %r13
    movq -176(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L3_11
    jmp .L3_10
.L3_11:
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
.L3_10:
    movq -152(%rbp), %rdi
    movq -144(%rbp), %r11
    call *%r11
    movq $0, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_12:
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_thread_spawn
    .type lb_thread_spawn, @function
lb_thread_spawn:
    pushq %rbp
    movq %rsp, %rbp
    subq $816, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -104(%rbp)
    movq %rdx, -120(%rbp)
    movq %rcx, -136(%rbp)
    leaq -152(%rbp), %r10
    movq %r8, 0(%r10)
    movq %r9, 8(%r10)
    leaq -168(%rbp), %rax
    movq %rax, -776(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -784(%rbp)
    leaq lb_thread_9name_room(%rip), %rax
    movq %rax, -728(%rbp)
    movq -728(%rbp), %r10
    movq (%r10), %r15
    leaq -216(%rbp), %rax
    movq %rax, -792(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r15
    jbe .L4_2
.L4_1:
    movq -792(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_10(%rip), %r15
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $16, %rcx
    addq %rcx, %r12
    movq $47, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -792(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L4_3
.L4_2:
    movq -784(%rbp), %r10
    movq (%r10), %r12
    movq -784(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L4_4
    jmp .L4_5
.L4_5:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_4:
    movq %r13, %r10
    movq (%r10), %r14
    movq %r12, %rsi
    movq %r15, %rdx
    movq $1, %rcx
    leaq -240(%rbp), %rdi
    movq %r14, %r11
    call *%r11
    leaq -240(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq $0, %rcx
    cmpq %rcx, %r15
    setne %al
    movzbl %al, %eax
    movl %eax, -736(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl -736(%rbp), %eax
    andl %r14d, %eax
    movl %eax, -744(%rbp)
    movl -744(%rbp), %eax
    testl %eax, %eax
    jne .L4_6
    jmp .L4_7
.L4_6:
    movq -792(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_13(%rip), %r12
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
    movq -792(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L4_3
.L4_7:
    movq %rbx, %r10
    movq (%r10), %r12
    movq -792(%rbp), %r10
    movq %r12, (%r10)
    movq -792(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq -792(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L4_3:
    movq -792(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_9
    jmp .L4_8
.L4_9:
    movq -792(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
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
.L4_10:
.L4_8:
    movq -792(%rbp), %r10
    movq -776(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -152(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq -728(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_40(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    cmpq %r13, %r12
    jae .L4_12
.L4_11:
    movq %r12, %rax
    movq %rax, -800(%rbp)
    jmp .L4_13
.L4_12:
    movq %r13, %rax
    movq %rax, -800(%rbp)
.L4_13:
    movq -776(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -800(%rbp), %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -776(%rbp), %r10
    movq (%r10), %r12
    movq -776(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -752(%rbp)
    movq -752(%rbp), %r10
    movq (%r10), %r15
    movq -800(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -800(%rbp), %rcx
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -280(%rbp), %r12
    movq -784(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -320(%rbp), %rax
    movq %rax, -808(%rbp)
    movq %r12, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L4_16
    jmp .L4_17
.L4_17:
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_16:
    movq %r12, %r10
    movq (%r10), %rbx
    movq %r15, %rsi
    movq $40, %rdx
    movq $8, %rcx
    leaq -344(%rbp), %rdi
    movq %rbx, %r11
    call *%r11
    leaq -344(%rbp), %r13
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_18
    jmp .L4_19
.L4_19:
    movq -808(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_13(%rip), %r12
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
    movq -808(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L4_20
.L4_18:
    movq %r13, %r10
    movq (%r10), %rbx
    leaq -384(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq -104(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r12, %r10
    movq %r15, (%r10)
    leaq -120(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq -776(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq -800(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq -808(%rbp), %r10
    movq %rbx, (%r10)
    movq -808(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L4_20:
    movq -808(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_22
    jmp .L4_21
.L4_22:
    movq -808(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -264(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L4_14
.L4_21:
    movq -808(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -760(%rbp)
    jmp .L4_15
.L4_14:
    leaq -400(%rbp), %rbx
    movq -776(%rbp), %r10
    movq (%r10), %r12
    movq -752(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -784(%rbp), %r10
    movq (%r10), %r12
    movq -784(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L4_24
    jmp .L4_23
.L4_24:
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
.L4_23:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_13(%rip), %r13
    leaq -416(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $16, %rax
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
.L4_25:
.L4_15:
    leaq -544(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movups %xmm8, 80(%r11)
    movups %xmm8, 96(%r11)
    movups %xmm8, 112(%r11)
    movq %r12, %rdi
    call pthread_attr_init@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L4_27
.L4_26:
    leaq -560(%rbp), %r12
    movq -776(%rbp), %r10
    movq (%r10), %r13
    movq -752(%rbp), %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq -784(%rbp), %r10
    movq (%r10), %r13
    movq -784(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -768(%rbp)
    movq -768(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L4_30
    jmp .L4_29
.L4_30:
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r11
    call *%r11
.L4_29:
    leaq -576(%rbp), %r12
    movq -760(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $40, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq -784(%rbp), %r10
    movq (%r10), %r13
    movq -768(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L4_32
    jmp .L4_31
.L4_32:
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
.L4_31:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_thread_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_20(%rip), %r13
    leaq -592(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $5, %rax
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
.L4_33:
    jmp .L4_28
.L4_27:
.L4_28:
    leaq -136(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jbe .L4_35
.L4_34:
    call getpagesize@PLT
    movl %eax, %r14d
    movslq %r14d, %r14
    jmp .L4_64
.L4_63:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_64:
    leaq lb_thread_11least_stack(%rip), %r15
    movq %r15, %r10
    movq (%r10), %r15
    cmpq %r15, %r13
    jbe .L4_38
.L4_37:
    movq %r13, %rbx
    jmp .L4_39
.L4_38:
    movq %r15, %rbx
.L4_39:
    movq %r14, %rax
    movq %rbx, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_40(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_40(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq $0, %rcx
    cmpq %rcx, %r14
    jne .L4_41
.L4_40:
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_22(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_41:
    movq %r15, %rax
    xorl %edx, %edx
    divq %r14
    movq %rax, %rbx
    movq %rbx, %rax
    movq %r14, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_40(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    call pthread_attr_setstacksize@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L4_43
.L4_42:
    movq %r12, %rdi
    call pthread_attr_destroy@PLT
    movl %eax, %ebx
    leaq -608(%rbp), %rbx
    movq -776(%rbp), %r10
    movq (%r10), %r13
    movq -752(%rbp), %r10
    movq (%r10), %r14
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq -784(%rbp), %r10
    movq (%r10), %r13
    movq -784(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L4_46
    jmp .L4_45
.L4_46:
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
.L4_45:
    leaq -624(%rbp), %rbx
    movq -760(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $40, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -784(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L4_48
    jmp .L4_47
.L4_48:
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
.L4_47:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_thread_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_26(%rip), %r13
    leaq -640(%rbp), %r14
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_49:
    jmp .L4_44
.L4_43:
.L4_44:
    jmp .L4_36
.L4_35:
.L4_36:
    leaq -648(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq lb_thread_trampoline@GOTPCREL(%rip), %r13
    movq %rbx, %rdi
    movq %r12, %rsi
    movq %r13, %rdx
    movq -760(%rbp), %rcx
    call pthread_create@PLT
    movl %eax, %r13d
    movq %r12, %rdi
    call pthread_attr_destroy@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L4_51
.L4_50:
    leaq -664(%rbp), %rbx
    movq -776(%rbp), %r10
    movq (%r10), %r12
    movq -752(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -784(%rbp), %r10
    movq (%r10), %r12
    movq -784(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L4_54
    jmp .L4_53
.L4_54:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r12, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r11
    call *%r11
.L4_53:
    leaq -680(%rbp), %rbx
    movq -760(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $40, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -784(%rbp), %r10
    movq (%r10), %r12
    movq %r13, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L4_56
    jmp .L4_55
.L4_56:
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L4_55:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_thread_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_20(%rip), %r13
    leaq -696(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $5, %rax
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
.L4_57:
    jmp .L4_52
.L4_51:
.L4_52:
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L4_58
    jmp .L4_59
.L4_58:
    jmp .L4_60
.L4_59:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_thread_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_20(%rip), %r13
    leaq -712(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $5, %rax
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
.L4_61:
.L4_60:
    leaq -720(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq -88(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
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
.L4_62:
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_thread_current
    .type lb_thread_current, @function
lb_thread_current:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    call pthread_self@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L5_1
    jmp .L5_2
.L5_2:
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_1:
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq -32(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r13, %r10
    movq 0(%r10), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_3:
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_thread_7is_main
    .type lb_thread_7is_main, @function
lb_thread_7is_main:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    call gettid@PLT
    movl %eax, %ebx
    call getpid@PLT
    movl %eax, %r12d
    cmpl %r12d, %ebx
    sete %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_1:
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_thread_pause
    .type lb_thread_pause, @function
lb_thread_pause:
    pushq %rbp
    movq %rsp, %rbp
pause

    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_thread_yield
    .type lb_thread_yield, @function
lb_thread_yield:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    call sched_yield@PLT
    movl %eax, %ebx
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_thread_sleep
    .type lb_thread_sleep, @function
lb_thread_sleep:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq -72(%rbp), %r12
    leaq -88(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
.L9_2:
    movq $1000, %rcx
    movq %rbx, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %r14
    movq %r13, %r10
    movq %r14, (%r10)
.L9_4:
    movq $1000, %rcx
    movq %rbx, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rdx, %rax
    movq %rax, -128(%rbp)
    movq -128(%rbp), %rax
    movq $1000000, %rcx
    imulq %rcx, %rax
    jno 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_40(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -136(%rbp)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq -136(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -104(%rbp), %rax
    movq %rax, -144(%rbp)
    leaq -120(%rbp), %r15
    movq %r15, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $0, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r15, %r10
    movq -144(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_c_interrupted(%rip), %r14
.L9_5:
    movq %r12, %rdi
    movq -144(%rbp), %rsi
    call nanosleep@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L9_8
    jmp .L9_10
.L9_10:
    movl %ebx, %r13d
    jmp .L9_9
.L9_8:
    call lb_c_errno@PLT
    movl %eax, %ebx
    movq %r14, %r10
    movslq (%r10), %r13
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r13d
.L9_9:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L9_6
    jmp .L9_7
.L9_6:
    movq -144(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L9_5
.L9_7:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
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
    jne .L10_11
    jmp .L10_4
.L10_11:
    movl %r13d, %r14d
    jmp .L10_5
.L10_4:
    leaq -64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L10_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L10_1
    jmp .L10_2
.L10_1:
    leaq .Ltext_5(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_38(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L10_3
.L10_2:
.L10_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L10_7
.L10_6:
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
    jne .L10_9
    jmp .L10_10
.L10_10:
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT
.L10_9:
    jmp .L10_8
.L10_7:
.L10_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_thread_0init
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
    .asciz "src/std/thread.lucb:31:5"
.Ltext_2:
    .asciz "no thread to join"
.Ltext_3:
    .asciz "join"
.Ltext_4:
    .asciz "src/std/thread.lucb:72:9"
.Ltext_5:
    .asciz "index out of bounds"
.Ltext_6:
    .asciz "null_foreign"
.Ltext_7:
    .asciz "src/std/thread.lucb:76:13"
.Ltext_8:
    .asciz "src/std/thread.lucb:77:5"
.Ltext_9:
    .asciz "src/std/thread.lucb:80:5"
.Ltext_10:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_11:
    .asciz "memory.unset"
.Ltext_12:
    .asciz "src/std/thread.lucb:86:5"
.Ltext_13:
    .asciz "memory.exhausted"
.Ltext_14:
    .asciz "src/std/thread.lucb:87:5"
.Ltext_15:
    .asciz "src/std/thread.lucb:89:5"
.Ltext_16:
    .asciz "src/std/thread.lucb:90:5"
.Ltext_17:
    .asciz "src/std/thread.lucb:91:9"
.Ltext_18:
    .asciz "src/std/thread.lucb:94:5"
.Ltext_19:
    .asciz "src/std/thread.lucb:95:9"
.Ltext_20:
    .asciz "spawn"
.Ltext_21:
    .asciz "src/std/thread.lucb:101:9"
.Ltext_22:
    .asciz "division by zero"
.Ltext_23:
    .asciz "src/std/thread.lucb:102:9"
.Ltext_24:
    .asciz "src/std/thread.lucb:103:13"
.Ltext_25:
    .asciz "src/std/thread.lucb:104:13"
.Ltext_26:
    .asciz "the stack size is refused"
.Ltext_27:
    .asciz "src/std/thread.lucb:108:5"
.Ltext_28:
    .asciz "src/std/thread.lucb:109:5"
.Ltext_29:
    .asciz "src/std/thread.lucb:111:9"
.Ltext_30:
    .asciz "src/std/thread.lucb:115:5"
.Ltext_31:
    .asciz "src/std/thread.lucb:118:5"
.Ltext_32:
    .asciz "src/std/thread.lucb:127:9"
.Ltext_33:
    .asciz "x86_64"
.Ltext_34:
    .asciz "pause\n"
.Ltext_35:
    .asciz "src/std/thread.lucb:146:5"
.Ltext_36:
    .asciz "src/std/thread.lucb:162:9"
.Ltext_37:
    .asciz "src/std/thread.lucb:164:9"
.Ltext_38:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_39:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_40:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_thread_failed
    .type lb_thread_failed, @object
    .p2align 2
lb_thread_failed:
    .zero 4

    .bss
    .globl lb_thread_11least_stack
    .type lb_thread_11least_stack, @object
    .p2align 3
lb_thread_11least_stack:
    .zero 8

    .bss
    .globl lb_thread_9name_room
    .type lb_thread_9name_room, @object
    .p2align 3
lb_thread_9name_room:
    .zero 8

    .section .note.GNU-stack,"",@progbits
