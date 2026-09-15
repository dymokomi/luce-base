    .text

    .p2align 4
    .globl lb_net_resolver_0init
    .type lb_net_resolver_0init, @function
lb_net_resolver_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_ResolvedAddresses_view
    .type lb_net_ResolvedAddresses_view, @function
lb_net_ResolvedAddresses_view:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -40(%rbp)
    leaq -40(%rbp), %r10
    movq (%r10), %r12
    leaq -32(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_1:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_ResolvedAddresses_destroy
    .type lb_net_ResolvedAddresses_destroy, @function
lb_net_ResolvedAddresses_destroy:
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
    jbe .L2_2
.L2_1:
    leaq -64(%rbp), %r14
    movq $16, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, -152(%rbp)
    movq -152(%rbp), %rax
    testq %rax, %rax
    jne .L2_4
    jmp .L2_5
.L2_4:
    leaq -80(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_6
.L2_5:
    leaq .Ltext_2(%rip), %rbx
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $39, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_3(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_6:
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
    movq $24, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
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
    jne .L2_8
    jmp .L2_7
.L2_8:
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
.L2_7:
    jmp .L2_3
.L2_2:
.L2_3:
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
    .globl lb_net_resolve
    .type lb_net_resolve, @function
lb_net_resolve:
    pushq %rbp
    movq %rsp, %rbp
    subq $320, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -120(%rbp)
    movl %edx, -136(%rbp)
    leaq -152(%rbp), %r10
    movw %cx, 0(%r10)
    leaq -168(%rbp), %rax
    movq %rax, -312(%rbp)
    leaq -120(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -152(%rbp), %r12
    movq %rbx, %rsi
    movq %r12, %r10
    movzwl 0(%r10), %edx
    leaq -216(%rbp), %rdi
    call lb_net_ResolverQuery_open@PLT
    leaq -216(%rbp), %r12
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
.L3_3:
.L3_1:
    movq %r12, %r10
    movq -312(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -312(%rbp), %r10
    movq (%r10), %rbx
    leaq -136(%rbp), %r14
    movq -312(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -296(%rbp)
    leaq -244(%rbp), %r15
    movq $24, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -304(%rbp)
.L3_4:
    testq %rbx, %rbx
    jne .L3_7
    jmp .L3_6
.L3_7:
.L3_5:
    movq %r14, %r10
    movzwl (%r10), %r12d
    movq -296(%rbp), %r10
    movslq (%r10), %r13
    movq %rbx, %rsi
    movl %r12d, %edx
    movl %r13d, %ecx
    leaq -244(%rbp), %rdi
    call lb_net_17resolved_endpoint@PLT
    movq -304(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_11
    jmp .L3_9
.L3_11:
    leaq -268(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
.L3_8:
    leaq -104(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -312(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L3_17
    jmp .L3_15
.L3_17:
.L3_14:
    movq $0, %rax
    movq -312(%rbp), %r10
    movq %rax, (%r10)
    movq %r13, %rdi
    call freeaddrinfo@PLT
    jmp .L3_16
.L3_15:
.L3_16:
.L3_18:
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
.L3_12:
    jmp .L3_10
.L3_9:
.L3_10:
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rbx
    jmp .L3_4
.L3_6:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12unknown_host(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_5(%rip), %r13
    leaq -288(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $66, %rax
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
    movq -312(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L3_22
    jmp .L3_20
.L3_22:
.L3_19:
    movq $0, %rax
    movq -312(%rbp), %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    call freeaddrinfo@PLT
    jmp .L3_21
.L3_20:
.L3_21:
.L3_23:
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
.L3_13:
    leaq -168(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L3_27
    jmp .L3_25
.L3_27:
    movq %rbx, %r12
.L3_24:
    movq %rbx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %r13
    movq %r13, %rdi
    call freeaddrinfo@PLT
    jmp .L3_26
.L3_25:
.L3_26:
.L3_28:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_11resolve_all
    .type lb_net_11resolve_all, @function
lb_net_11resolve_all:
    pushq %rbp
    movq %rsp, %rbp
    subq $640, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -128(%rbp)
    movl %edx, -144(%rbp)
    leaq -160(%rbp), %r10
    movw %cx, 0(%r10)
    leaq -176(%rbp), %rax
    movq %rax, -592(%rbp)
    leaq -128(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -160(%rbp), %r12
    movq %rbx, %rsi
    movq %r12, %r10
    movzwl 0(%r10), %edx
    leaq -224(%rbp), %rdi
    call lb_net_ResolverQuery_open@PLT
    leaq -224(%rbp), %r12
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
    leaq -112(%rbp), %r13
    movq $32, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $56, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
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
.L4_3:
.L4_1:
    movq %r12, %r10
    movq -592(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -592(%rbp), %r10
    movq (%r10), %rbx
    leaq -144(%rbp), %r14
    movq -592(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -512(%rbp)
    leaq -252(%rbp), %rax
    movq %rax, -520(%rbp)
    movq -520(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -528(%rbp)
    leaq -264(%rbp), %rax
    movq %rax, -536(%rbp)
    leaq -280(%rbp), %r15
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -544(%rbp)
    movq $0, %rax
    movq %rax, -600(%rbp)
.L4_4:
    testq %rbx, %rbx
    jne .L4_7
    jmp .L4_6
.L4_7:
.L4_5:
    movq %r14, %r10
    movzwl (%r10), %r12d
    movq -512(%rbp), %r10
    movslq (%r10), %r13
    movq %rbx, %rsi
    movl %r12d, %edx
    movl %r13d, %ecx
    leaq -252(%rbp), %rdi
    call lb_net_17resolved_endpoint@PLT
    movq -528(%rbp), %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L4_9
.L4_8:
    movq -600(%rbp), %rdi
    movq $1, %rsi
    movl $64, %edx
    movq -536(%rbp), %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r12d
    movq -536(%rbp), %r10
    movq (%r10), %r13
    movq %r15, %r10
    movq %r13, (%r10)
    movq -544(%rbp), %r10
    movb %r12b, (%r10)
    movq -544(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L4_11
    jmp .L4_12
.L4_11:
    jmp .L4_13
.L4_12:
    leaq -112(%rbp), %rbx
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_7(%rip), %r13
    leaq -296(%rbp), %r14
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
    movq $56, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -592(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L4_41
    jmp .L4_39
.L4_41:
.L4_38:
    movq $0, %rax
    movq -592(%rbp), %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    call freeaddrinfo@PLT
    jmp .L4_40
.L4_39:
.L4_40:
.L4_42:
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
.L4_14:
.L4_13:
    movq %r13, %r12
    jmp .L4_10
.L4_9:
    movq -600(%rbp), %rax
    movq %rax, %r12
.L4_10:
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rax
    movq %rax, -600(%rbp)
    movq %r13, %rbx
    jmp .L4_4
.L4_6:
    movq -600(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L4_16
.L4_15:
    leaq -112(%rbp), %rbx
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12unknown_host(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_5(%rip), %r13
    leaq -312(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $66, %rax
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
    movq -592(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L4_46
    jmp .L4_44
.L4_46:
.L4_43:
    movq $0, %rax
    movq -592(%rbp), %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    call freeaddrinfo@PLT
    jmp .L4_45
.L4_44:
.L4_45:
.L4_47:
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
.L4_18:
    jmp .L4_17
.L4_16:
.L4_17:
    leaq -328(%rbp), %rax
    movq %rax, -552(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    movq %r12, %r10
    movq -552(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -344(%rbp), %rax
    movq %rax, -608(%rbp)
    leaq -392(%rbp), %rax
    movq %rax, -616(%rbp)
    movq -600(%rbp), %rax
    movabsq $192153584101141162, %rcx
    cmpq %rcx, %rax
    jbe .L4_20
.L4_19:
    movq -616(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_8(%rip), %r13
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -616(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L4_21
.L4_20:
    movq -600(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq %r12, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L4_22
    jmp .L4_23
.L4_23:
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_22:
    movq %r13, %r10
    movq (%r10), %r12
    movq %rbx, %rsi
    movq %r14, %rdx
    movq $4, %rcx
    leaq -416(%rbp), %rdi
    movq %r12, %r11
    call *%r11
    leaq -416(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq $0, %rcx
    cmpq %rcx, %r14
    setne %al
    movzbl %al, %eax
    movl %eax, -560(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl -560(%rbp), %eax
    movl %r12d, %ecx
    movl %eax, %r12d
    andl %ecx, %r12d
    testl %r12d, %r12d
    jne .L4_24
    jmp .L4_25
.L4_24:
    movq -616(%rbp), %rax
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
    movq -616(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L4_21
.L4_25:
    movq %r15, %r10
    movq (%r10), %rbx
    movq -616(%rbp), %r10
    movq %rbx, (%r10)
    movq -616(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -600(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -616(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L4_21:
    movq -616(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_27
    jmp .L4_26
.L4_27:
    movq -616(%rbp), %rax
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
    movq -592(%rbp), %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L4_51
    jmp .L4_49
.L4_51:
.L4_48:
    movq $0, %rax
    movq -592(%rbp), %r10
    movq %rax, (%r10)
    movq %rbx, %rdi
    call freeaddrinfo@PLT
    jmp .L4_50
.L4_49:
.L4_50:
.L4_52:
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
.L4_28:
.L4_26:
    movq -616(%rbp), %r10
    movq -608(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -592(%rbp), %r10
    movq (%r10), %rbx
    leaq -144(%rbp), %r12
    movq -592(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    leaq -444(%rbp), %rax
    movq %rax, -632(%rbp)
    movq -632(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -568(%rbp)
    leaq -468(%rbp), %rax
    movq %rax, -576(%rbp)
    movq -608(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -584(%rbp)
    movq $0, %rax
    movq %rax, -624(%rbp)
.L4_29:
    testq %rbx, %rbx
    jne .L4_32
    jmp .L4_31
.L4_32:
.L4_30:
    movq %r12, %r10
    movzwl (%r10), %r15d
    movq %r13, %r10
    movslq (%r10), %r14
    movq %rbx, %rsi
    movl %r15d, %edx
    movl %r14d, %ecx
    leaq -444(%rbp), %rdi
    call lb_net_17resolved_endpoint@PLT
    movq -568(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L4_36
    jmp .L4_34
.L4_36:
    movq -632(%rbp), %r10
    movq -576(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
.L4_33:
    movq -608(%rbp), %r10
    movq (%r10), %r14
    movq -584(%rbp), %r10
    movq (%r10), %r15
    movq -624(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_21(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -624(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    addq %r15, %r14
    movq -576(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -624(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    jmp .L4_35
.L4_34:
    movq -624(%rbp), %rax
    movq %rax, %r14
.L4_35:
    movq $40, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rbx
    movq %r14, %rax
    movq %rax, -624(%rbp)
    jmp .L4_29
.L4_31:
    leaq -504(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq -608(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -552(%rbp), %r10
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
    movq -592(%rbp), %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L4_56
    jmp .L4_54
.L4_56:
.L4_53:
    movq $0, %rax
    movq -592(%rbp), %r10
    movq %rax, (%r10)
    movq %rbx, %rdi
    call freeaddrinfo@PLT
    jmp .L4_55
.L4_54:
.L4_55:
.L4_57:
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
.L4_37:
    leaq -176(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L4_61
    jmp .L4_59
.L4_61:
    movq %rbx, %r12
.L4_58:
    movq %rbx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %r13
    movq %r13, %rdi
    call freeaddrinfo@PLT
    jmp .L4_60
.L4_59:
.L4_60:
.L4_62:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_ResolverQuery_open
    .type lb_net_ResolverQuery_open, @function
lb_net_ResolverQuery_open:
    pushq %rbp
    movq %rsp, %rbp
    subq $304, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -112(%rbp)
    leaq -128(%rbp), %r10
    movw %dx, 0(%r10)
    leaq -128(%rbp), %r12
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_4
    jmp .L5_2
.L5_4:
    movq %r12, %r10
    movzbl (%r10), %ebx
.L5_1:
    movzbl %bl, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L5_8
    jmp .L5_23
.L5_23:
    movl %r14d, %ebx
    jmp .L5_9
.L5_8:
    movl $1, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L5_9:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L5_5
    jmp .L5_6
.L5_5:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_15(%rip), %r13
    leaq -144(%rbp), %r14
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
.L5_10:
    jmp .L5_7
.L5_6:
.L5_7:
    testl %r13d, %r13d
    jne .L5_11
    jmp .L5_12
.L5_11:
    leaq lb_net_inet(%rip), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    jmp .L5_13
.L5_12:
    leaq lb_net_inet6(%rip), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
.L5_13:
    movl %ebx, %r12d
    jmp .L5_3
.L5_2:
    movl $0, %eax
    movl %eax, %r12d
.L5_3:
    leaq -192(%rbp), %rbx
    leaq -240(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $4, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl %r12d, (%r10)
    leaq lb_net_stream(%rip), %r14
    movq %r14, %r10
    movslq (%r10), %r14
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl %r14d, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    leaq -248(%rbp), %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq -112(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rdi
    movq $0, %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    call getaddrinfo@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L5_15
.L5_14:
    leaq -96(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl %ebx, %edi
    call lb_net_14resolver_error@PLT
    movl %eax, %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_16(%rip), %r14
    leaq -264(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $30, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
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
.L5_17:
    jmp .L5_16
.L5_15:
.L5_16:
    movq %r13, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L5_18
    jmp .L5_19
.L5_18:
    jmp .L5_20
.L5_19:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12unknown_host(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_17(%rip), %r13
    leaq -280(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $12, %rax
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
.L5_21:
.L5_20:
    leaq -296(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl %r12d, (%r10)
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
.L5_22:
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_17resolved_endpoint
    .type lb_net_17resolved_endpoint, @function
lb_net_17resolved_endpoint:
    pushq %rbp
    movq %rsp, %rbp
    subq $416, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    movl %edx, -112(%rbp)
    movl %ecx, -128(%rbp)
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $4, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -408(%rbp)
    movq -408(%rbp), %r10
    movslq (%r10), %r13
    leaq lb_net_inet(%rip), %rax
    movq %rax, -416(%rbp)
    movq -416(%rbp), %r10
    movslq (%r10), %r15
    cmpl %r15d, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L6_33
    jmp .L6_1
.L6_33:
    movl %r13d, %r15d
    jmp .L6_2
.L6_1:
    movq -408(%rbp), %r10
    movslq (%r10), %r13
    leaq lb_net_inet6(%rip), %r15
    movq %r15, %r10
    movslq (%r10), %r15
    cmpl %r15d, %r13d
    sete %al
    movzbl %al, %r15d
.L6_2:
    movzbl %r15b, %r13d
    movzbl %r13b, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L6_34
    jmp .L6_6
.L6_34:
    movl %r13d, %r15d
    jmp .L6_7
.L6_6:
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movslq (%r10), %r13
    leaq lb_net_stream(%rip), %r15
    movq %r15, %r10
    movslq (%r10), %r15
    cmpl %r15d, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r15d
.L6_7:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L6_35
    jmp .L6_8
.L6_35:
    movl %r13d, %r15d
    jmp .L6_9
.L6_8:
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L6_10
    jmp .L6_36
.L6_36:
    movl %r15d, %r13d
    jmp .L6_11
.L6_10:
    movq -408(%rbp), %r10
    movslq (%r10), %r15
    cmpl %r15d, %r13d
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl %r15d, %r13d
.L6_11:
    movzbl %r13b, %r15d
.L6_9:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L6_3
    jmp .L6_4
.L6_3:
    leaq -156(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    leaq -76(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $28, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_12:
    jmp .L6_5
.L6_4:
.L6_5:
    movq %rbx, %rdi
    call lb_net_12info_address@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L6_13
    jmp .L6_14
.L6_13:
    jmp .L6_15
.L6_14:
    leaq -184(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    leaq -76(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $28, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_16:
.L6_15:
    leaq -208(%rbp), %r14
    movq $16, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movq %r13, %rsi
    movl %r15d, %edx
    leaq -312(%rbp), %rdi
    call lb_net_14decode_address@PLT
    leaq -312(%rbp), %r12
    movq $48, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L6_20
    jmp .L6_19
.L6_20:
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -256(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L6_17
.L6_19:
    leaq -232(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L6_18
.L6_17:
    leaq -340(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    leaq -76(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $28, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_21:
.L6_18:
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -408(%rbp), %r10
    movslq (%r10), %r12
    movq -416(%rbp), %r10
    movslq (%r10), %r13
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L6_22
    jmp .L6_37
.L6_37:
    movl %r12d, %ebx
    jmp .L6_23
.L6_22:
    movq %r14, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L6_23:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L6_38
    jmp .L6_24
.L6_38:
    movl %r12d, %ebx
    jmp .L6_25
.L6_24:
    movq -408(%rbp), %r10
    movslq (%r10), %rbx
    leaq lb_net_inet6(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    cmpl %r12d, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L6_26
    jmp .L6_39
.L6_39:
    movl %ebx, %r12d
    jmp .L6_27
.L6_26:
    movq %r14, %r10
    movzbl (%r10), %ebx
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L6_27:
    movzbl %r12b, %ebx
.L6_25:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L6_29
.L6_28:
    leaq -368(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    leaq -76(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $28, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_31:
    jmp .L6_30
.L6_29:
.L6_30:
    movq $18, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -112(%rbp), %r12
    movq %r12, %r10
    movzwl (%r10), %r12d
    movq %rbx, %r10
    movw %r12w, (%r10)
    leaq -396(%rbp), %rbx
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
    leaq -76(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $28, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_32:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_resolver_0init
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
    .asciz "src/std/net/resolver.lucb:11:9"
.Ltext_2:
    .asciz "resolved addresses lost their allocator"
.Ltext_3:
    .asciz "src/std/net/resolver.lucb:17:13"
.Ltext_4:
    .asciz "src/std/net/resolver.lucb:18:13"
.Ltext_5:
    .asciz "the host has no usable stream address for the requested IP version"
.Ltext_6:
    .asciz "src/std/net/resolver.lucb:34:5"
.Ltext_7:
    .asciz "the resolver result is too large"
.Ltext_8:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_9:
    .asciz "memory.unset"
.Ltext_10:
    .asciz "src/std/net/resolver.lucb:54:5"
.Ltext_11:
    .asciz "memory.exhausted"
.Ltext_12:
    .asciz "src/std/net/resolver.lucb:59:13"
.Ltext_13:
    .asciz "src/std/net/resolver.lucb:60:13"
.Ltext_14:
    .asciz "src/std/net/resolver.lucb:62:5"
.Ltext_15:
    .asciz "unknown resolver IP version"
.Ltext_16:
    .asciz "the host could not be resolved"
.Ltext_17:
    .asciz "unknown host"
.Ltext_18:
    .asciz "src/std/net/resolver.lucb:83:9"
.Ltext_19:
    .asciz "src/std/net/resolver.lucb:102:5"
.Ltext_20:
    .asciz "integer overflow"
.Ltext_21:
    .asciz "index out of bounds"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
