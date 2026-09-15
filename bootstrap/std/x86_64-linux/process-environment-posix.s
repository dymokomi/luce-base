    .text

    .p2align 4
    .globl lb_process_17environment_posix_0init
    .type lb_process_17environment_posix_0init, @function
lb_process_17environment_posix_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_process_19environment_address
    .type lb_process_19environment_address, @function
lb_process_19environment_address:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq environ@GOTPCREL(%rip), %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_1:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

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
.L2_1:
    cmpq %r13, %rbx
    jae .L2_4
.L2_2:
    movq %r12, %r14
    addq %rbx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $61, %ecx
    cmpl %ecx, %r14d
    jne .L2_6
.L2_5:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L2_9
.L2_8:
    jmp .L2_4
.L2_11:
    jmp .L2_10
.L2_9:
.L2_10:
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $0, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %rbx, %rax
    jbe .L2_12
.L2_13:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_12:
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
.L2_14:
    jmp .L2_7
.L2_6:
.L2_7:
.L2_3:
    movq $1, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %rbx
    jmp .L2_1
.L2_4:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_5(%rip), %r13
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
.L2_15:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
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
.L3_1:
    movq -872(%rbp), %rax
    movq -640(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L3_4
.L3_2:
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
    jne .L3_6
    jmp .L3_5
.L3_6:
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
.L3_7:
.L3_5:
    movq -952(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rax, %r12
.L3_8:
    movq -872(%rbp), %rcx
    cmpq %rcx, %r12
    jae .L3_11
.L3_9:
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
    jne .L3_16
    jmp .L3_15
.L3_16:
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
.L3_17:
.L3_15:
    movq -672(%rbp), %r10
    movq (%r10), %rbx
    movq -680(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L3_18
    jmp .L3_77
.L3_77:
    movl %r13d, %ebx
    jmp .L3_19
.L3_18:
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
.L3_19:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L3_12
    jmp .L3_13
.L3_12:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_9(%rip), %r13
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
.L3_20:
    jmp .L3_14
.L3_13:
.L3_14:
.L3_10:
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r12
    jmp .L3_8
.L3_11:
.L3_3:
    movq -872(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, -872(%rbp)
    jmp .L3_1
.L3_4:
    leaq -128(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -688(%rbp)
    movq $0, %rax
    movq %rax, -880(%rbp)
.L3_21:
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
    jne .L3_23
.L3_22:
    movq -880(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r13, %rax
    movq %rax, -880(%rbp)
    jmp .L3_21
.L3_23:
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
    jne .L3_24
    jmp .L3_25
.L3_24:
    jmp .L3_26
.L3_25:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_11(%rip), %r13
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
.L3_27:
.L3_26:
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
    jne .L3_28
    jmp .L3_29
.L3_28:
    jmp .L3_30
.L3_29:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_11(%rip), %r13
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
.L3_31:
.L3_30:
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
    jbe .L3_33
.L3_32:
    movq -904(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_12(%rip), %r14
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
    jmp .L3_34
.L3_33:
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
    jne .L3_35
    jmp .L3_36
.L3_36:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_35:
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
    jne .L3_37
    jmp .L3_38
.L3_37:
    movq -904(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_15(%rip), %r12
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
    jmp .L3_34
.L3_38:
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
.L3_34:
    movq -904(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_40
    jmp .L3_39
.L3_40:
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
.L3_41:
.L3_39:
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
    leaq .Ltext_18(%rip), %rax
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
.L3_42:
    movq -920(%rbp), %rax
    movq -880(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L3_45
.L3_43:
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
    jne .L3_46
    jmp .L3_47
.L3_46:
    jmp .L3_48
.L3_47:
    leaq .Ltext_16(%rip), %rbx
    leaq -440(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_17(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_48:
    movq -928(%rbp), %rsi
    leaq -544(%rbp), %rdi
    call lb_process_16environment_name@PLT
    movq -720(%rbp), %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L3_52
    jmp .L3_51
.L3_52:
    movq -728(%rbp), %r10
    movq -736(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L3_49
.L3_51:
    movq -936(%rbp), %r10
    movq -744(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L3_50
.L3_49:
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
    jmp .L3_50
.L3_53:
.L3_50:
    movq -784(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -632(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -792(%rbp)
    movq $0, %rax
    movq %rax, %rbx
.L3_54:
    movq -640(%rbp), %rcx
    cmpq %rcx, %rbx
    jb .L3_55
.L3_78:
    movl $0, %eax
    movl %eax, %ebx
    jmp .L3_57
.L3_55:
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
    jne .L3_62
    jmp .L3_61
.L3_62:
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
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
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
    jne .L3_64
    jmp .L3_63
.L3_64:
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
.L3_63:
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
.L3_65:
.L3_61:
    movq -808(%rbp), %r10
    movq (%r10), %r13
    movq -816(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r13
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L3_66
    jmp .L3_79
.L3_79:
    movl %r15d, %r13d
    jmp .L3_67
.L3_66:
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
.L3_67:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L3_58
    jmp .L3_59
.L3_58:
    movl $1, %eax
    movl %eax, %ebx
    jmp .L3_57
.L3_68:
    jmp .L3_60
.L3_59:
.L3_60:
.L3_56:
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %rbx
    jmp .L3_54
.L3_57:
    movzbl %bl, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L3_70
.L3_69:
    movq -888(%rbp), %r10
    movq (%r10), %rbx
    movq -824(%rbp), %r10
    movq (%r10), %r12
    movq -912(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
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
    jmp .L3_71
.L3_70:
    movq -912(%rbp), %rax
    movq %rax, %rbx
.L3_71:
.L3_44:
    movq -920(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %rbx, %rax
    movq %rax, -912(%rbp)
    movq %r12, %rax
    movq %rax, -920(%rbp)
    jmp .L3_42
.L3_45:
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
.L3_72:
    movq -640(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L3_75
.L3_73:
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
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
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
.L3_74:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %r12, %r14
    movq %rbx, %r15
    jmp .L3_72
.L3_75:
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
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
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
.L3_76:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_process_17environment_posix_0init
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
    .asciz "src/std/process/environment/posix.lucb:10:5"
.Ltext_2:
    .asciz "src/std/process/environment/posix.lucb:15:9"
.Ltext_3:
    .asciz "src/std/process/environment/posix.lucb:18:13"
.Ltext_4:
    .asciz "index out of bounds"
.Ltext_5:
    .asciz "an environment override must be NAME=value with a nonempty name"
.Ltext_6:
    .asciz "src/std/process/environment/posix.lucb:19:5"
.Ltext_7:
    .asciz "src/std/process/environment/posix.lucb:23:9"
.Ltext_8:
    .asciz "src/std/process/environment/posix.lucb:25:13"
.Ltext_9:
    .asciz "an environment override repeats a name"
.Ltext_10:
    .asciz "src/std/process/environment/posix.lucb:29:9"
.Ltext_11:
    .asciz "the environment is too large"
.Ltext_12:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_13:
    .asciz "memory.unset"
.Ltext_14:
    .asciz "src/std/process/environment/posix.lucb:32:5"
.Ltext_15:
    .asciz "memory.exhausted"
.Ltext_16:
    .asciz "the environment changed during process creation"
.Ltext_17:
    .asciz "src/std/process/environment/posix.lucb:36:9"
.Ltext_18:
    .asciz ""
.Ltext_19:
    .asciz "src/std/process/environment/posix.lucb:41:13"
.Ltext_20:
    .asciz "src/std/process/environment/posix.lucb:45:13"
.Ltext_21:
    .asciz "src/std/process/environment/posix.lucb:46:13"
.Ltext_22:
    .asciz "src/std/process/environment/posix.lucb:48:9"
.Ltext_23:
    .asciz "src/std/process/environment/posix.lucb:49:9"
.Ltext_24:
    .asciz "src/std/process/environment/posix.lucb:50:5"
.Ltext_25:
    .asciz "src/std/process/environment/posix.lucb:51:5"
.Ltext_26:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
