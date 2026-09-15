    .text

    .p2align 4
    .globl lb_net_readiness_0init
    .type lb_net_readiness_0init, @function
lb_net_readiness_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_Deadline_after
    .type lb_net_Deadline_after, @function
lb_net_Deadline_after:
    pushq %rbp
    movq %rsp, %rbp
    subq $224, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -112(%rbp)
    leaq -152(%rbp), %rdi
    call lb_net_21monotonic_nanoseconds@PLT
    leaq -152(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_2
    jmp .L1_1
.L1_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -96(%rbp), %r13
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_3:
.L1_1:
    movq %r12, %r10
    movq (%r10), %rbx
    leaq -112(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq -160(%rbp), %r14
    movq %rbx, %rdi
    movq %r13, %rsi
    movl $64, %edx
    movq %r14, %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %ebx
    leaq -176(%rbp), %r15
    movq %r14, %r10
    movq (%r10), %r13
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movb %bl, (%r10)
    movq %r14, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_4
    jmp .L1_5
.L1_4:
    jmp .L1_6
.L1_5:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_15invalid_options(%rip), %r13
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
    movq $46, %rax
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
.L1_7:
.L1_6:
    leaq -208(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -224(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
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
.L1_8:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_Deadline_at
    .type lb_net_Deadline_at, @function
lb_net_Deadline_at:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -56(%rbp)
    leaq -72(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -88(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
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
.L2_1:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_Cancellation_request
    .type lb_net_Cancellation_request, @function
lb_net_Cancellation_request:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -16(%rbp)
    leaq -16(%rbp), %r10
    movq (%r10), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_Cancellation_12is_requested
    .type lb_net_Cancellation_12is_requested, @function
lb_net_Cancellation_12is_requested:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -16(%rbp)
    leaq -16(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movl (%r10), %eax
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_1:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_Poller_create
    .type lb_net_Poller_create, @function
lb_net_Poller_create:
    pushq %rbp
    movq %rsp, %rbp
    subq $320, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -128(%rbp)
    leaq -128(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -280(%rbp)
    movq -280(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L5_21
    jmp .L5_4
.L5_21:
    movl %r12d, %r13d
    jmp .L5_5
.L5_4:
    movq -280(%rbp), %rax
    movq $2147483647, %rcx
    cmpq %rcx, %rax
    seta %al
    movzbl %al, %r13d
.L5_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L5_1
    jmp .L5_2
.L5_1:
    leaq -112(%rbp), %rbx
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_5(%rip), %r13
    leaq -144(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $51, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $56, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $64, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_6:
    jmp .L5_3
.L5_2:
.L5_3:
    leaq -160(%rbp), %rax
    movq %rax, -296(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -304(%rbp)
    leaq -208(%rbp), %rax
    movq %rax, -312(%rbp)
    movq -280(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L5_8
.L5_7:
    movq -312(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_6(%rip), %r13
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    addq %rcx, %r12
    movq $47, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -312(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L5_9
.L5_8:
    movq -280(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq -304(%rbp), %r10
    movq (%r10), %r12
    movq -304(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_10
    jmp .L5_11
.L5_11:
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_10:
    movq %r13, %r10
    movq (%r10), %rbx
    movq %r12, %rsi
    movq %r14, %rdx
    movq $4, %rcx
    leaq -232(%rbp), %rdi
    movq %rbx, %r11
    call *%r11
    leaq -232(%rbp), %r15
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq $0, %rcx
    cmpq %rcx, %r14
    setne %al
    movzbl %al, %eax
    movl %eax, -288(%rbp)
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl -288(%rbp), %eax
    movl %ebx, %ecx
    movl %eax, %ebx
    andl %ecx, %ebx
    testl %ebx, %ebx
    jne .L5_12
    jmp .L5_13
.L5_12:
    movq -312(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_9(%rip), %r12
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
    movq -312(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L5_9
.L5_13:
    movq %r15, %r10
    movq (%r10), %rbx
    movq -312(%rbp), %r10
    movq %rbx, (%r10)
    movq -312(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -280(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -312(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L5_9:
    movq -312(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_15
    jmp .L5_14
.L5_15:
    movq -312(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -112(%rbp), %r12
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $56, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $64, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_16:
.L5_14:
    movq -312(%rbp), %r10
    movq -296(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -296(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -240(%rbp), %r12
    movq $0, %rax
    movq %rax, %r13
.L5_17:
    movq -280(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L5_19
.L5_18:
    movq -296(%rbp), %r10
    movq (%r10), %r14
    movq %rbx, %r10
    movq (%r10), %r15
    cmpq %r15, %r13
    jb 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %r13, %r15
    imulq %rcx, %r15
    addq %r15, %r14
    movq %r12, %r11
    movq $0, 0(%r11)
    movl $4294967295, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq %r12, %r10
    movq %r14, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r13
    jmp .L5_17
.L5_19:
    leaq -272(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq -296(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -304(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -112(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $56, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $64, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_20:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_Poller_capacity
    .type lb_net_Poller_capacity, @function
lb_net_Poller_capacity:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -16(%rbp)
    leaq -16(%rbp), %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_1:
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_Poller_watch
    .type lb_net_Poller_watch, @function
lb_net_Poller_watch:
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
    movl %ecx, -120(%rbp)
    movl %r8d, -136(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %r13
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r13, %rsi
    movq %rbx, %rdx
    leaq -168(%rbp), %rdi
    call lb_net_Poller_10check_slot@PLT
    leaq -168(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L7_2
    jmp .L7_1
.L7_2:
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
.L7_3:
.L7_1:
    leaq -120(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %rax
    movq %rax, -256(%rbp)
    movl -256(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jge .L7_5
.L7_4:
    leaq -80(%rbp), %rbx
    leaq lb_net_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_14(%rip), %r12
    leaq -184(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $40, %rax
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
.L7_7:
    jmp .L7_6
.L7_5:
.L7_6:
    leaq -136(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl %r14d, %esi
    leaq -224(%rbp), %rdi
    call lb_net_13poll_interest@PLT
    leaq -224(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L7_9
    jmp .L7_8
.L7_9:
    movq $8, %rcx
    movq %r15, %rbx
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
.L7_10:
.L7_8:
    movq %r15, %r10
    movswl (%r10), %eax
    movl %eax, -264(%rbp)
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -272(%rbp)
    movq $0, %rax
    movq %rax, %r12
.L7_11:
    movq -272(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -280(%rbp)
    movq -280(%rbp), %rcx
    cmpq %rcx, %r12
    jae .L7_13
.L7_12:
    cmpq %r12, %rbx
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L7_17
    jmp .L7_20
.L7_20:
    movl %r15d, %r14d
    jmp .L7_18
.L7_17:
    movq %r13, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %r15
    imulq %rcx, %r15
    addq %r15, %r14
    movq %r14, %r10
    movslq (%r10), %r14
    movl -256(%rbp), %eax
    cmpl %r14d, %eax
    sete %al
    movzbl %al, %r14d
.L7_18:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L7_14
    jmp .L7_15
.L7_14:
    leaq -80(%rbp), %rbx
    leaq lb_net_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_16(%rip), %r12
    leaq -240(%rbp), %r13
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
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_19:
    jmp .L7_16
.L7_15:
.L7_16:
    movq $1, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r12
    jmp .L7_11
.L7_13:
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -288(%rbp)
    movq -280(%rbp), %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %rbx, %r14
    imulq %rcx, %r14
    movq -288(%rbp), %rax
    addq %r14, %rax
    movq %rax, -296(%rbp)
    leaq -248(%rbp), %r14
    movq %r14, %r11
    movq $0, 0(%r11)
    movl -256(%rbp), %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movl -264(%rbp), %eax
    movswl %ax, %r15d
    movq $4, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movw %r15w, (%r10)
    movq %r14, %r10
    movq -296(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -80(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
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

    .p2align 4
    .globl lb_net_Poller_disable
    .type lb_net_Poller_disable, @function
lb_net_Poller_disable:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -80(%rbp)
    movq %rdx, -96(%rbp)
    leaq -80(%rbp), %r10
    movq (%r10), %r13
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r13, %rsi
    movq %rbx, %rdx
    leaq -128(%rbp), %rdi
    call lb_net_Poller_10check_slot@PLT
    leaq -128(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L8_2
    jmp .L8_1
.L8_2:
    leaq -72(%rbp), %rbx
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L8_3:
.L8_1:
    movq %r13, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %rbx, %r14
    imulq %rcx, %r14
    addq %r14, %r12
    leaq -136(%rbp), %r14
    movq %r14, %r11
    movq $0, 0(%r11)
    movl $4294967295, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq %r14, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -72(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
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
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_Poller_wait
    .type lb_net_Poller_wait, @function
lb_net_Poller_wait:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -88(%rbp)
    leaq -104(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movq %r8, -120(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L9_2
.L9_1:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_20(%rip), %r13
    leaq -136(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $20, %rax
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
.L9_4:
    jmp .L9_3
.L9_2:
.L9_3:
    leaq -104(%rbp), %rbx
    leaq -120(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq %r13, %r9
    leaq -176(%rbp), %rdi
    call lb_net_9wait_poll@PLT
    leaq -176(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L9_6
    jmp .L9_5
.L9_6:
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
.L9_7:
.L9_5:
    movq %r13, %r10
    movq (%r10), %rbx
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L9_8:
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_Poller_readiness
    .type lb_net_Poller_readiness, @function
lb_net_Poller_readiness:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -88(%rbp)
    movq %rdx, -104(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %r13
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r13, %rsi
    movq %rbx, %rdx
    leaq -136(%rbp), %rdi
    call lb_net_Poller_10check_slot@PLT
    leaq -136(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L10_2
    jmp .L10_1
.L10_2:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r10
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_3:
.L10_1:
    movq %r13, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %rbx, %r14
    imulq %rcx, %r14
    addq %r14, %r12
    movq $6, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movswl (%r10), %r12d
    movl %r12d, %edi
    call lb_net_14poll_readiness@PLT
    leaq -141(%rbp), %r10
    movl %eax, 0(%r10)
    shrq $32, %rax
    movb %al, 4(%r10)
    leaq -141(%rbp), %r12
    leaq -80(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movl 0(%r10), %eax
    movl %eax, 0(%r11)
    movzbl 4(%r10), %eax
    movb %al, 4(%r11)
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_4:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_Poller_destroy
    .type lb_net_Poller_destroy, @function
lb_net_Poller_destroy:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
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
    jbe .L11_2
.L11_1:
    leaq -64(%rbp), %r14
    movq $16, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, -152(%rbp)
    movq -152(%rbp), %rax
    testq %rax, %rax
    jne .L11_4
    jmp .L11_5
.L11_4:
    leaq -80(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L11_6
.L11_5:
    leaq .Ltext_23(%rip), %rbx
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $29, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_24(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_6:
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -112(%rbp), %rax
    movq %rax, -160(%rbp)
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -168(%rbp)
    movq %rbx, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -176(%rbp)
    movq -168(%rbp), %rax
    movq -160(%rbp), %r10
    movq %rax, (%r10)
    movq -160(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq -176(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L11_8
    jmp .L11_7
.L11_8:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq -152(%rbp), %rdi
    movq -160(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L11_7:
    jmp .L11_3
.L11_2:
.L11_3:
    leaq -128(%rbp), %rbx
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
    leaq -144(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
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

    .p2align 4
    .globl lb_net_Poller_10check_slot
    .type lb_net_Poller_10check_slot, @function
lb_net_Poller_10check_slot:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %rsi, -72(%rbp)
    movq %rdx, -88(%rbp)
    leaq -72(%rbp), %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L12_2
.L12_1:
    leaq -64(%rbp), %rbx
    leaq lb_net_closed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_20(%rip), %r12
    leaq -104(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $20, %rax
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
.L12_4:
    jmp .L12_3
.L12_2:
.L12_3:
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %rbx, %r12
    jb .L12_6
.L12_5:
    leaq -64(%rbp), %rbx
    leaq lb_net_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_26(%rip), %r12
    leaq -120(%rbp), %r13
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_8:
    jmp .L12_7
.L12_6:
.L12_7:
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
    .globl lb_net_13poll_interest
    .type lb_net_13poll_interest, @function
lb_net_13poll_interest:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movl %esi, -96(%rbp)
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L13_2
.L13_1:
    leaq -80(%rbp), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movw %ax, (%r10)
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
.L13_4:
    jmp .L13_3
.L13_2:
.L13_3:
    movl $1, %ecx
    cmpl %ecx, %ebx
    jne .L13_6
.L13_5:
    leaq -80(%rbp), %rbx
    movl $4, %eax
    movq %rbx, %r10
    movw %ax, (%r10)
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
.L13_8:
    jmp .L13_7
.L13_6:
.L13_7:
    movl $2, %ecx
    cmpl %ecx, %ebx
    jne .L13_10
.L13_9:
    leaq -80(%rbp), %rbx
    movl $5, %eax
    movq %rbx, %r10
    movw %ax, (%r10)
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
.L13_12:
    jmp .L13_11
.L13_10:
.L13_11:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_27(%rip), %r13
    leaq -112(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $26, %rax
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
.L13_13:
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_14poll_readiness
    .type lb_net_14poll_readiness, @function
lb_net_14poll_readiness:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movl %edi, -56(%rbp)
    leaq -61(%rbp), %rbx
    movq %rbx, %r11
    movl $0, 0(%r11)
    movb $0, 4(%r11)
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movswl (%r10), %r12d
    movl $1, %ecx
    movl %r12d, %r13d
    andl %ecx, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movq %rbx, %r10
    movb %r13b, (%r10)
    movl $4, %ecx
    movl %r12d, %r13d
    andl %ecx, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movq $1, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movb %r13b, (%r10)
    movl $16, %ecx
    movl %r12d, %r13d
    andl %ecx, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movq $2, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movb %r13b, (%r10)
    movl $8, %ecx
    movl %r12d, %r13d
    andl %ecx, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movq $3, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movb %r13b, (%r10)
    movl $32, %ecx
    andl %ecx, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movq $4, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movb %r12b, (%r10)
    leaq -37(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movl 0(%r10), %eax
    movl %eax, 0(%r11)
    movzbl 4(%r10), %eax
    movb %al, 4(%r11)
    movq %r12, %r10
    movzbl 4(%r10), %r11d
    movl 0(%r10), %eax
    shlq $32, %r11
    orq %r11, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L14_1:
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_10clear_poll
    .type lb_net_10clear_poll, @function
lb_net_10clear_poll:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    leaq -48(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -48(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rax
    movq %rax, %r13
.L15_1:
    cmpq %r12, %r13
    jae .L15_3
.L15_2:
    movq $8, %rcx
    movq %r13, %r14
    imulq %rcx, %r14
    movq %r14, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq $6, %rcx
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movw %ax, (%r10)
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r13
    jmp .L15_1
.L15_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_18check_cancellation
    .type lb_net_18check_cancellation, @function
lb_net_18check_cancellation:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %rsi, -80(%rbp)
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L16_4
    jmp .L16_2
.L16_4:
.L16_1:
    movq %rbx, %rdi
    call lb_net_Cancellation_12is_requested@PLT
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L16_5
    jmp .L16_6
.L16_5:
    leaq -64(%rbp), %rbx
    leaq lb_net_cancelled(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_32(%rip), %r12
    leaq -96(%rbp), %r13
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
.L16_8:
    jmp .L16_7
.L16_6:
.L16_7:
    jmp .L16_3
.L16_2:
.L16_3:
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
    .globl lb_net_9wait_poll
    .type lb_net_9wait_poll, @function
lb_net_9wait_poll:
    pushq %rbp
    movq %rsp, %rbp
    subq $416, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -104(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -120(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    movq %r9, -136(%rbp)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_net_10clear_poll@PLT
    leaq -136(%rbp), %rax
    movq %rax, -304(%rbp)
    leaq -168(%rbp), %rax
    movq %rax, -384(%rbp)
    movq -384(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -320(%rbp)
    leaq -120(%rbp), %rax
    movq %rax, -392(%rbp)
    movq -392(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -328(%rbp)
    leaq -208(%rbp), %rax
    movq %rax, -400(%rbp)
    movq -400(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -344(%rbp)
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -352(%rbp)
    leaq -240(%rbp), %rax
    movq %rax, -408(%rbp)
    movq -408(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -360(%rbp)
    leaq -296(%rbp), %rax
    movq %rax, -416(%rbp)
    movq -416(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -376(%rbp)
    leaq lb_net_18socket_interrupted(%rip), %rax
    movq %rax, -368(%rbp)
.L17_1:
.L17_2:
    movq -304(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -312(%rbp)
    movq -312(%rbp), %rsi
    leaq -168(%rbp), %rdi
    call lb_net_18check_cancellation@PLT
    movq -320(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L17_5
    jmp .L17_4
.L17_5:
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq -384(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_net_10clear_poll@PLT
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
.L17_4:
    movq -328(%rbp), %r10
    movzbl (%r10), %eax
    movl %eax, -336(%rbp)
    movl -336(%rbp), %eax
    testl %eax, %eax
    jne .L17_10
    jmp .L17_8
.L17_10:
    movq -392(%rbp), %r10
    movq (%r10), %r12
.L17_7:
    leaq -208(%rbp), %rdi
    call lb_net_21monotonic_nanoseconds@PLT
    movq -344(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L17_12
    jmp .L17_11
.L17_12:
    movq -400(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    leaq -88(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_net_10clear_poll@PLT
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
.L17_11:
    movq -400(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jbe .L17_15
.L17_14:
    movq %r12, %r15
    subq %r13, %r15
    jmp .L17_16
.L17_15:
    movq $0, %rax
    movq %rax, %r15
.L17_16:
.L17_18:
    movq $1000000, %rcx
    movq %r15, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %r12
.L17_23:
    movq $1000000, %rcx
    movq %r15, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rdx, %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L17_20
.L17_19:
    movq $1, %rax
    movq %rax, %r13
    jmp .L17_21
.L17_20:
    movq $0, %rax
    movq %rax, %r13
.L17_21:
    movq %r12, %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq $2147483647, %rcx
    cmpq %rcx, %r15
    jae .L17_25
.L17_24:
    movl %r15d, %r12d
    jmp .L17_26
.L17_25:
    movl $2147483647, %eax
    movl %eax, %r12d
.L17_26:
    movl %r12d, %r13d
    jmp .L17_9
.L17_8:
    movl $4294967295, %eax
    movl %eax, %r13d
.L17_9:
    movq -312(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L17_30
    jmp .L17_60
.L17_60:
    movl %r12d, %r14d
    jmp .L17_31
.L17_30:
    movl $0, %ecx
    cmpl %ecx, %r13d
    setl %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L17_61
    jmp .L17_32
.L17_61:
    movl %r12d, %r14d
    jmp .L17_33
.L17_32:
    movl $10, %ecx
    cmpl %ecx, %r13d
    setg %al
    movzbl %al, %r14d
.L17_33:
    movzbl %r14b, %r12d
    movl %r12d, %r14d
.L17_31:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L17_27
    jmp .L17_28
.L17_27:
    movl $10, %eax
    movl %eax, %r13d
    jmp .L17_29
.L17_28:
.L17_29:
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_net_10clear_poll@PLT
    movq %rbx, %r10
    movq (%r10), %r12
    movq -352(%rbp), %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq %r14, %rsi
    movl %r13d, %edx
    call poll@PLT
    movl %eax, %r12d
    movq -312(%rbp), %rsi
    leaq -240(%rbp), %rdi
    call lb_net_18check_cancellation@PLT
    movq -360(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L17_35
    jmp .L17_34
.L17_35:
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq -408(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_net_10clear_poll@PLT
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
.L17_34:
    movl $0, %ecx
    cmpl %ecx, %r12d
    jge .L17_38
.L17_37:
    call lb_net_12socket_errno@PLT
    movl %eax, %r12d
    movq -368(%rbp), %r10
    movslq (%r10), %r13
    cmpl %r13d, %r12d
    jne .L17_41
.L17_40:
    jmp .L17_1
.L17_41:
.L17_42:
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    call lb_net_12socket_errno@PLT
    movl %eax, %r14d
    movl %r14d, %edi
    call lb_net_12socket_error@PLT
    movl %eax, %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_36(%rip), %r14
    leaq -256(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $25, %rax
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
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_net_10clear_poll@PLT
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
.L17_38:
.L17_39:
    movl $0, %ecx
    cmpl %ecx, %r12d
    jle .L17_46
.L17_45:
    movslq %r12d, %rbx
    leaq -88(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
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
.L17_46:
.L17_47:
    movl -336(%rbp), %eax
    testl %eax, %eax
    jne .L17_52
    jmp .L17_50
.L17_52:
    movq -392(%rbp), %r10
    movq (%r10), %r12
.L17_49:
    leaq -296(%rbp), %rdi
    call lb_net_21monotonic_nanoseconds@PLT
    movq -376(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L17_57
    jmp .L17_56
.L17_57:
    movq -416(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    leaq -88(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_net_10clear_poll@PLT
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
.L17_56:
    movq -416(%rbp), %r10
    movq (%r10), %r13
    cmpq %r12, %r13
    jb .L17_54
.L17_53:
    leaq -88(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
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
.L17_54:
.L17_55:
    jmp .L17_51
.L17_50:
.L17_51:
    jmp .L17_1

    .p2align 4
    .globl lb_net_11wait_socket
    .type lb_net_11wait_socket, @function
lb_net_11wait_socket:
    pushq %rbp
    movq %rsp, %rbp
    subq $336, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movl %esi, -104(%rbp)
    movl %edx, -120(%rbp)
    leaq -136(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    movq %r9, -152(%rbp)
    leaq -160(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    leaq -168(%rbp), %r13
    movq %r13, %r11
    movq $0, 0(%r11)
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movq %r13, %r10
    movl %r12d, (%r10)
    leaq -120(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl %r12d, %esi
    leaq -208(%rbp), %rdi
    call lb_net_13poll_interest@PLT
    leaq -208(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L18_2
    jmp .L18_1
.L18_2:
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
.L18_3:
.L18_1:
    movq %r14, %r10
    movswl (%r10), %eax
    movl %eax, -320(%rbp)
    movq $4, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movl -320(%rbp), %eax
    movq %r15, %r10
    movw %ax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -224(%rbp), %rax
    movq %rax, -328(%rbp)
    movq -328(%rbp), %r10
    movq %rbx, (%r10)
    movq -328(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq $1, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq -136(%rbp), %r15
    leaq -152(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq -328(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq %r12, %r9
    leaq -264(%rbp), %rdi
    call lb_net_9wait_poll@PLT
    leaq -264(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L18_8
    jmp .L18_7
.L18_8:
    movq $8, %rcx
    movq %r15, %rbx
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
.L18_9:
.L18_7:
    movq %r15, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L18_5
.L18_4:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_9timed_out(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_39(%rip), %r13
    leaq -280(%rbp), %r14
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L18_10:
    jmp .L18_6
.L18_5:
.L18_6:
    leaq -285(%rbp), %r12
    movq $6, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movswl (%r10), %r13d
    movl %r13d, %edi
    call lb_net_14poll_readiness@PLT
    leaq -290(%rbp), %r10
    movl %eax, 0(%r10)
    shrq $32, %rax
    movb %al, 4(%r10)
    leaq -290(%rbp), %r13
    movq %r13, %r10
    movq %r12, %r11
    movl 0(%r10), %eax
    movl %eax, 0(%r11)
    movzbl 4(%r10), %eax
    movb %al, 4(%r11)
    movq $4, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L18_11
    jmp .L18_12
.L18_11:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_41(%rip), %r13
    leaq -312(%rbp), %r14
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L18_14:
    jmp .L18_13
.L18_12:
.L18_13:
    leaq -88(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movl 0(%r10), %eax
    movl %eax, 0(%r11)
    movzbl 4(%r10), %eax
    movb %al, 4(%r11)
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
.L18_15:
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_21monotonic_nanoseconds
    .type lb_net_21monotonic_nanoseconds, @function
lb_net_21monotonic_nanoseconds:
    pushq %rbp
    movq %rsp, %rbp
    subq $224, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -104(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_platform_macos(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L19_4
    jmp .L19_5
.L19_4:
    movl $6, %eax
    movl %eax, %r12d
    jmp .L19_6
.L19_5:
    movl $1, %eax
    movl %eax, %r12d
.L19_6:
    movl %r12d, %edi
    movq %rbx, %rsi
    call clock_gettime@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L19_2
.L19_1:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_43(%rip), %r13
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L19_7:
    jmp .L19_3
.L19_2:
.L19_3:
    movq %rbx, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    setl %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L19_25
    jmp .L19_11
.L19_25:
    movl %r13d, %r14d
    jmp .L19_12
.L19_11:
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    setl %al
    movzbl %al, %r14d
.L19_12:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L19_26
    jmp .L19_13
.L19_26:
    movl %r13d, %r14d
    jmp .L19_14
.L19_13:
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $1000000000, %rcx
    cmpq %rcx, %r13
    setge %al
    movzbl %al, %r14d
.L19_14:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L19_8
    jmp .L19_9
.L19_8:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_44(%rip), %r13
    leaq -136(%rbp), %r14
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
.L19_15:
    jmp .L19_10
.L19_9:
.L19_10:
    leaq -144(%rbp), %r13
    movq %r12, %rdi
    movq $1000000000, %rsi
    movl $64, %edx
    movq %r13, %rcx
    call lb_core_6qmul_u@PLT
    movl %eax, %r14d
    leaq -160(%rbp), %r15
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
    jne .L19_16
    jmp .L19_17
.L19_16:
    jmp .L19_18
.L19_17:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_45(%rip), %r13
    leaq -176(%rbp), %r14
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L19_19:
.L19_18:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -184(%rbp), %r14
    movq %r13, %rdi
    movq %r12, %rsi
    movl $64, %edx
    movq %r14, %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r12d
    leaq -200(%rbp), %r15
    movq %r14, %r10
    movq (%r10), %r14
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movb %r12b, (%r10)
    movq %r15, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L19_20
    jmp .L19_21
.L19_20:
    jmp .L19_22
.L19_21:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_45(%rip), %r13
    leaq -216(%rbp), %r14
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L19_23:
.L19_22:
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
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
.L19_24:
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_15check_operation
    .type lb_net_15check_operation, @function
lb_net_15check_operation:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    leaq -80(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movq %rcx, -96(%rbp)
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -128(%rbp), %rdi
    call lb_net_18check_cancellation@PLT
    leaq -128(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L20_2
    jmp .L20_1
.L20_2:
    leaq -64(%rbp), %rbx
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L20_3:
.L20_1:
    leaq -80(%rbp), %r12
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L20_7
    jmp .L20_5
.L20_7:
    movq %r12, %r10
    movq (%r10), %rbx
.L20_4:
    leaq -168(%rbp), %rdi
    call lb_net_21monotonic_nanoseconds@PLT
    leaq -168(%rbp), %r13
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L20_12
    jmp .L20_11
.L20_12:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -64(%rbp), %r12
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L20_13:
.L20_11:
    movq %r13, %r10
    movq (%r10), %r12
    cmpq %rbx, %r12
    jb .L20_9
.L20_8:
    leaq -64(%rbp), %rbx
    leaq lb_net_9timed_out(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_47(%rip), %r12
    leaq -184(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $30, %rax
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
.L20_14:
    jmp .L20_10
.L20_9:
.L20_10:
    jmp .L20_6
.L20_5:
.L20_6:
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

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_readiness_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "the deadline exceeds the monotonic clock range"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/net/readiness.lucb:26:9"
.Ltext_3:
    .asciz "src/std/net/readiness.lucb:30:9"
.Ltext_4:
    .asciz "src/std/net/readiness.lucb:42:9"
.Ltext_5:
    .asciz "poller capacity must be between one and i32 maximum"
.Ltext_6:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_7:
    .asciz "memory.unset"
.Ltext_8:
    .asciz "src/std/net/readiness.lucb:70:9"
.Ltext_9:
    .asciz "memory.exhausted"
.Ltext_10:
    .asciz "src/std/net/readiness.lucb:73:13"
.Ltext_11:
    .asciz "src/std/net/readiness.lucb:74:13"
.Ltext_12:
    .asciz "src/std/net/readiness.lucb:75:9"
.Ltext_13:
    .asciz "src/std/net/readiness.lucb:78:9"
.Ltext_14:
    .asciz "a watched descriptor must be nonnegative"
.Ltext_15:
    .asciz "src/std/net/readiness.lucb:90:13"
.Ltext_16:
    .asciz "the descriptor already occupies another poller slot"
.Ltext_17:
    .asciz "src/std/net/readiness.lucb:92:13"
.Ltext_18:
    .asciz "src/std/net/readiness.lucb:93:9"
.Ltext_19:
    .asciz "src/std/net/readiness.lucb:97:9"
.Ltext_20:
    .asciz "the poller is closed"
.Ltext_21:
    .asciz "src/std/net/readiness.lucb:110:9"
.Ltext_22:
    .asciz "src/std/net/readiness.lucb:116:9"
.Ltext_23:
    .asciz "the poller lost its allocator"
.Ltext_24:
    .asciz "src/std/net/readiness.lucb:120:13"
.Ltext_25:
    .asciz "src/std/net/readiness.lucb:121:13"
.Ltext_26:
    .asciz "the poller slot is outside its capacity"
.Ltext_27:
    .asciz "unknown readiness interest"
.Ltext_28:
    .asciz "src/std/net/readiness.lucb:144:5"
.Ltext_29:
    .asciz "src/std/net/readiness.lucb:149:5"
.Ltext_30:
    .asciz "src/std/net/readiness.lucb:154:9"
.Ltext_31:
    .asciz "src/std/net/readiness.lucb:155:9"
.Ltext_32:
    .asciz "the readiness wait was cancelled"
.Ltext_33:
    .asciz "src/std/net/readiness.lucb:170:13"
.Ltext_34:
    .asciz "division by zero"
.Ltext_35:
    .asciz "src/std/net/readiness.lucb:172:13"
.Ltext_36:
    .asciz "the readiness wait failed"
.Ltext_37:
    .asciz "src/std/net/readiness.lucb:193:17"
.Ltext_38:
    .asciz "src/std/net/readiness.lucb:197:5"
.Ltext_39:
    .asciz "the socket readiness deadline expired"
.Ltext_40:
    .asciz "src/std/net/readiness.lucb:200:5"
.Ltext_41:
    .asciz "the socket descriptor is no longer open"
.Ltext_42:
    .asciz "src/std/net/readiness.lucb:203:5"
.Ltext_43:
    .asciz "the monotonic clock could not be read"
.Ltext_44:
    .asciz "the monotonic clock returned an invalid timestamp"
.Ltext_45:
    .asciz "the monotonic clock exceeds its range"
.Ltext_46:
    .asciz "src/std/net/readiness.lucb:212:5"
.Ltext_47:
    .asciz "the operation deadline expired"
.Ltext_48:
    .asciz "index out of bounds"
.Ltext_49:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
