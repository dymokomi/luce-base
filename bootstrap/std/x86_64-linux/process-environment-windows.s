    .text

    .p2align 4
    .globl lb_process_19environment_windows_0init
    .type lb_process_19environment_windows_0init, @function
lb_process_19environment_windows_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

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
.L1_1:
    movq -96(%rbp), %rcx
    cmpq %rcx, %r14
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L1_4
    jmp .L1_9
.L1_9:
    movl %r15d, %r12d
    jmp .L1_5
.L1_4:
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
.L1_5:
    movzbl %r12b, %r15d
    testl %r15d, %r15d
    jne .L1_2
    jmp .L1_3
.L1_2:
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %r14
    jmp .L1_1
.L1_3:
    movq %rbx, %r10
    movq (%r10), %r13
    movq -96(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r14
    jb 1f
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r14, %rax
    jbe .L1_6
.L1_7:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_6:
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
.L1_8:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
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
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
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
.L2_1:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
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
    jne .L3_1
    jmp .L3_2
.L3_1:
    jmp .L3_3
.L3_2:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_6(%rip), %r13
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
.L3_4:
.L3_3:
    movq $0, %rax
    movq %rax, -1152(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L3_5:
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
    jne .L3_7
.L3_6:
    movq -1152(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r13, %r15
.L3_8:
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
    jne .L3_10
.L3_9:
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %r15
    jmp .L3_8
.L3_10:
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r14, %rax
    movq %rax, -1152(%rbp)
    jmp .L3_5
.L3_7:
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
    jbe .L3_12
.L3_11:
    movq -1184(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $208273409, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    leaq .Ltext_10(%rip), %rbx
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
    jmp .L3_13
.L3_12:
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
    jne .L3_14
    jmp .L3_15
.L3_15:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_14:
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
    jne .L3_16
    jmp .L3_17
.L3_16:
    movq -1184(%rbp), %rax
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
    movq -1184(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L3_13
.L3_17:
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
.L3_13:
    movq -1184(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_19
    jmp .L3_18
.L3_19:
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
.L3_20:
.L3_18:
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
.L3_21:
    movq -1176(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L3_24
.L3_22:
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
    jne .L3_26
    jmp .L3_25
.L3_26:
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
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
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
    jne .L3_28
    jmp .L3_27
.L3_28:
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
.L3_27:
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
.L3_29:
.L3_25:
    movq -1160(%rbp), %r10
    movq (%r10), %r15
    movq -872(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -880(%rbp)
    movq -880(%rbp), %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
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
    jne .L3_31
    jmp .L3_30
.L3_31:
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
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
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
    jne .L3_33
    jmp .L3_32
.L3_33:
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
.L3_32:
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
.L3_34:
.L3_30:
    movq -1304(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1192(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -912(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L3_35:
    cmpq %r14, %r13
    jae .L3_38
.L3_36:
    movq -1160(%rbp), %r10
    movq (%r10), %rbx
    movq -872(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    jb 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
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
    jne .L3_40
.L3_39:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -896(%rbp), %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_18(%rip), %r13
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
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
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
    jne .L3_43
    jmp .L3_42
.L3_43:
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
.L3_42:
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
.L3_44:
    jmp .L3_41
.L3_40:
.L3_41:
.L3_37:
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r13
    jmp .L3_35
.L3_38:
.L3_23:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq -912(%rbp), %rax
    movq %rax, -1192(%rbp)
    movq %rbx, %r14
    jmp .L3_21
.L3_24:
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
    jne .L3_45
    jmp .L3_46
.L3_45:
    jmp .L3_47
.L3_46:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_20(%rip), %r13
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
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
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
    jne .L3_49
    jmp .L3_48
.L3_49:
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
.L3_48:
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
.L3_50:
.L3_47:
    leaq -448(%rbp), %rax
    movq %rax, -1200(%rbp)
    leaq -496(%rbp), %rax
    movq %rax, -1208(%rbp)
    movq -920(%rbp), %rax
    movabsq $288230376151711744, %rcx
    cmpq %rcx, %rax
    jbe .L3_52
.L3_51:
    movq -1208(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_10(%rip), %r12
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
    jmp .L3_53
.L3_52:
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
    jne .L3_54
    jmp .L3_55
.L3_55:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_54:
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
    jne .L3_56
    jmp .L3_57
.L3_56:
    movq -1208(%rbp), %rax
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
    movq -1208(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L3_53
.L3_57:
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
.L3_53:
    movq -1208(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_59
    jmp .L3_58
.L3_59:
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
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
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
    jne .L3_61
    jmp .L3_60
.L3_61:
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
.L3_60:
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
.L3_62:
.L3_58:
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
.L3_63:
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
    jne .L3_65
.L3_64:
    movq %r15, %rbx
.L3_66:
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
    jne .L3_68
.L3_67:
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r13, %rbx
    jmp .L3_66
.L3_68:
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -936(%rbp)
    movq -936(%rbp), %rax
    movq %r15, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
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
.L3_69:
    movq -1192(%rbp), %rcx
    cmpq %rcx, %r13
    jb .L3_70
.L3_139:
    movl $0, %eax
    movl %eax, %ebx
    jmp .L3_72
.L3_70:
    movq -1160(%rbp), %r10
    movq (%r10), %rbx
    movq -960(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
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
    jne .L3_74
.L3_73:
    movl $1, %eax
    movl %eax, %ebx
    jmp .L3_72
.L3_76:
    jmp .L3_75
.L3_74:
.L3_75:
.L3_71:
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r13
    jmp .L3_69
.L3_72:
    movzbl %bl, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L3_78
.L3_77:
    movq -1200(%rbp), %r10
    movq (%r10), %rbx
    movq -968(%rbp), %r10
    movq (%r10), %r13
    movq -1216(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
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
    jmp .L3_79
.L3_78:
    movq -1216(%rbp), %rax
    movq %rax, %rbx
.L3_79:
    movq -936(%rbp), %rax
    movq %rax, %r15
    movq %rbx, %rax
    movq %rax, -1216(%rbp)
    jmp .L3_63
.L3_65:
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
.L3_80:
    movq -1232(%rbp), %rax
    movq -1192(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L3_83
.L3_81:
    movq -1200(%rbp), %r10
    movq (%r10), %r15
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -976(%rbp)
    movq -1224(%rbp), %rax
    movq -976(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
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
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
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
.L3_82:
    movq -1232(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r14, %rax
    movq %rax, -1224(%rbp)
    movq %r15, %rax
    movq %rax, -1232(%rbp)
    jmp .L3_80
.L3_83:
    leaq -584(%rbp), %rax
    movq %rax, -1000(%rbp)
    movq -1200(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1008(%rbp)
    movq $1, %rax
    movq %rax, -1240(%rbp)
.L3_84:
    movq -1240(%rbp), %rax
    movq -1224(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L3_87
.L3_85:
    movq -1200(%rbp), %r10
    movq (%r10), %r15
    movq -1008(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1016(%rbp)
    movq -1240(%rbp), %rax
    movq -1016(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
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
.L3_88:
    movq $0, %rcx
    cmpq %rcx, %r13
    seta %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L3_91
    jmp .L3_140
.L3_140:
    movl %r12d, %r14d
    jmp .L3_92
.L3_91:
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -1016(%rbp), %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
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
.L3_92:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L3_89
    jmp .L3_90
.L3_89:
    movq -1016(%rbp), %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
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
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq -1016(%rbp), %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
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
    jmp .L3_88
.L3_90:
    movq -1016(%rbp), %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
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
.L3_86:
    movq -1240(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, -1240(%rbp)
    jmp .L3_84
.L3_87:
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
.L3_93:
    movq -1224(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L3_96
.L3_94:
    movq -1200(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1024(%rbp)
    movq -1032(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1040(%rbp)
    movq -1040(%rbp), %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
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
    jne .L3_97
    jmp .L3_98
.L3_97:
    jmp .L3_99
.L3_98:
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
    leaq .Ltext_20(%rip), %r13
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
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
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
    jne .L3_101
    jmp .L3_100
.L3_101:
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
.L3_100:
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
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
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
    jne .L3_103
    jmp .L3_102
.L3_103:
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
.L3_102:
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
.L3_104:
.L3_99:
.L3_95:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %r13, %r14
    movq %rbx, %r15
    jmp .L3_93
.L3_96:
    leaq -672(%rbp), %rax
    movq %rax, -1248(%rbp)
    movq -1224(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jbe .L3_106
.L3_105:
    movq %r14, %rax
    movq %rax, -1256(%rbp)
    jmp .L3_107
.L3_106:
    movq $2, %rax
    movq %rax, -1256(%rbp)
.L3_107:
    leaq -720(%rbp), %rax
    movq %rax, -1264(%rbp)
    movq -1256(%rbp), %rax
    movabsq $2305843009213693952, %rcx
    cmpq %rcx, %rax
    jbe .L3_109
.L3_108:
    movq -1264(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_10(%rip), %r13
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
    jmp .L3_110
.L3_109:
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
    jne .L3_111
    jmp .L3_112
.L3_112:
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_111:
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
    jne .L3_113
    jmp .L3_114
.L3_113:
    movq -1264(%rbp), %rax
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
    movq -1264(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L3_110
.L3_114:
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
.L3_110:
    movq -1264(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_116
    jmp .L3_115
.L3_116:
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
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
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
    jne .L3_118
    jmp .L3_117
.L3_118:
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
.L3_117:
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
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
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
    jne .L3_120
    jmp .L3_119
.L3_120:
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
.L3_119:
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
.L3_121:
.L3_115:
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
.L3_122:
    movq -1224(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L3_125
.L3_123:
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
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
.L3_126:
    movq -1280(%rbp), %rax
    cmpq %r14, %rax
    jae .L3_129
.L3_127:
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
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
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
.L3_128:
    movq -1280(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %rbx, %rax
    movq %rax, -1272(%rbp)
    movq %r15, %rax
    movq %rax, -1280(%rbp)
    jmp .L3_126
.L3_129:
.L3_124:
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq -1272(%rbp), %rax
    movq %rax, %r15
    movq %rbx, %r13
    jmp .L3_122
.L3_125:
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
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
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
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
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
    jne .L3_131
    jmp .L3_130
.L3_131:
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
.L3_130:
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
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
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
    jne .L3_133
    jmp .L3_132
.L3_133:
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
.L3_132:
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
.L3_134:
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
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
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
    jne .L3_136
    jmp .L3_135
.L3_136:
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
.L3_135:
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
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
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
    jne .L3_138
    jmp .L3_137
.L3_138:
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
.L3_137:
    movq %rbx, %rdi
    call FreeEnvironmentStringsW@PLT
    movl %eax, %ebx
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
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
.L4_1:
    movq -96(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L4_4
.L4_2:
    movq -104(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -112(%rbp)
    movq %r13, %r10
    movq (%r10), %rbx
    cmpq %rbx, %r15
    jb 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
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
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
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
    jne .L4_6
    jmp .L4_5
.L4_6:
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
.L4_5:
.L4_3:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r15
    jmp .L4_1
.L4_4:
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
    .quad lb_process_19environment_windows_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/process/environment/windows.lucb:10:5"
.Ltext_1:
    .asciz "src/std/process/environment/windows.lucb:11:9"
.Ltext_2:
    .asciz "src/std/process/environment/windows.lucb:12:5"
.Ltext_3:
    .asciz "index out of bounds"
.Ltext_4:
    .asciz "unreachable"
.Ltext_5:
    .asciz "src/std/process/environment/windows.lucb:17:5"
.Ltext_6:
    .asciz "the inherited environment is unavailable"
.Ltext_7:
    .asciz "src/std/process/environment/windows.lucb:25:9"
.Ltext_8:
    .asciz "src/std/process/environment/windows.lucb:27:13"
.Ltext_9:
    .asciz "src/std/process/environment/windows.lucb:28:9"
.Ltext_10:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_11:
    .asciz "memory.unset"
.Ltext_12:
    .asciz "src/std/process/environment/windows.lucb:29:5"
.Ltext_13:
    .asciz "memory.exhausted"
.Ltext_14:
    .asciz "src/std/process/environment/windows.lucb:34:9"
.Ltext_15:
    .asciz "src/std/process/environment/windows.lucb:35:9"
.Ltext_16:
    .asciz "src/std/process/environment/windows.lucb:36:9"
.Ltext_17:
    .asciz "src/std/process/environment/windows.lucb:38:13"
.Ltext_18:
    .asciz "an environment override repeats a name"
.Ltext_19:
    .asciz "src/std/process/environment/windows.lucb:39:17"
.Ltext_20:
    .asciz "the environment is too large"
.Ltext_21:
    .asciz "src/std/process/environment/windows.lucb:40:5"
.Ltext_22:
    .asciz "src/std/process/environment/windows.lucb:41:5"
.Ltext_23:
    .asciz "src/std/process/environment/windows.lucb:48:13"
.Ltext_24:
    .asciz "src/std/process/environment/windows.lucb:49:9"
.Ltext_25:
    .asciz "src/std/process/environment/windows.lucb:50:9"
.Ltext_26:
    .asciz "src/std/process/environment/windows.lucb:53:13"
.Ltext_27:
    .asciz "src/std/process/environment/windows.lucb:57:13"
.Ltext_28:
    .asciz "src/std/process/environment/windows.lucb:58:13"
.Ltext_29:
    .asciz "src/std/process/environment/windows.lucb:60:9"
.Ltext_30:
    .asciz "src/std/process/environment/windows.lucb:61:9"
.Ltext_31:
    .asciz "src/std/process/environment/windows.lucb:63:9"
.Ltext_32:
    .asciz "src/std/process/environment/windows.lucb:65:9"
.Ltext_33:
    .asciz "src/std/process/environment/windows.lucb:66:13"
.Ltext_34:
    .asciz "src/std/process/environment/windows.lucb:67:13"
.Ltext_35:
    .asciz "src/std/process/environment/windows.lucb:68:9"
.Ltext_36:
    .asciz "src/std/process/environment/windows.lucb:71:9"
.Ltext_37:
    .asciz "src/std/process/environment/windows.lucb:72:5"
.Ltext_38:
    .asciz "src/std/process/environment/windows.lucb:75:9"
.Ltext_39:
    .asciz "src/std/process/environment/windows.lucb:76:13"
.Ltext_40:
    .asciz "src/std/process/environment/windows.lucb:77:13"
.Ltext_41:
    .asciz "src/std/process/environment/windows.lucb:78:5"
.Ltext_42:
    .asciz "src/std/process/environment/windows.lucb:79:5"
.Ltext_43:
    .asciz "src/std/process/environment/windows.lucb:83:9"
.Ltext_44:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
