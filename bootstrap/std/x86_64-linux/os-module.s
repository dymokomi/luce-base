    .text

    .p2align 4
    .globl lb_os_module_0init
    .type lb_os_module_0init, @function
lb_os_module_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    leaq lb_os_failed(%rip), %rbx
    movl $208273420, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_platform_arm64(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    leaq lb_os_arm64(%rip), %r12
    movq %r12, %r10
    movb %bl, (%r10)
    leaq lb_platform_6x86_64(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    leaq lb_os_6x86_64(%rip), %r12
    movq %r12, %r10
    movb %bl, (%r10)
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
    leaq lb_os_macos(%rip), %r13
    movq %r13, %r10
    movb %r12b, (%r10)
    leaq lb_platform_linux(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq lb_os_linux(%rip), %r13
    movq %r13, %r10
    movb %r12b, (%r10)
    leaq lb_platform_windows(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq lb_os_windows(%rip), %r13
    movq %r13, %r10
    movb %r12b, (%r10)
    leaq lb_platform_posix(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq lb_os_posix(%rip), %r13
    movq %r13, %r10
    movb %r12b, (%r10)
    leaq lb_platform_12pointer_bits(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    leaq lb_os_12pointer_bits(%rip), %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    leaq lb_platform_name(%rip), %r12
    leaq lb_os_name(%rip), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_platform_9cpu_level(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    leaq lb_os_9cpu_level(%rip), %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L0_1
    jmp .L0_2
.L0_1:
    movl $58, %eax
    movl %eax, %ebx
    jmp .L0_3
.L0_2:
    movl $84, %eax
    movl %eax, %ebx
.L0_3:
    leaq lb_os_17processors_online(%rip), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_os_12random_bytes
    .type lb_os_12random_bytes, @function
lb_os_12random_bytes:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -96(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -96(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -120(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L1_1:
    movq -120(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L1_3
.L1_2:
    movq %r14, %r15
    subq %r13, %r15
    movq $256, %rcx
    cmpq %rcx, %r15
    jae .L1_5
.L1_4:
    movq %r15, %rax
    movq %rax, -128(%rbp)
    jmp .L1_6
.L1_5:
    movq $256, %rax
    movq %rax, -128(%rbp)
.L1_6:
    movq %rbx, %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_41(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r15, %r12
    addq %r13, %r12
    movq %r12, %rdi
    movq -128(%rbp), %rsi
    call getentropy@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_8
.L1_7:
    leaq -80(%rbp), %rbx
    leaq lb_os_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_2(%rip), %r12
    leaq -112(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $42, %rax
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
.L1_10:
    jmp .L1_9
.L1_8:
.L1_9:
    movq %r13, %rax
    movq -128(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %r13
    jmp .L1_1
.L1_3:
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
    .globl lb_os_17cpu_level_running
    .type lb_os_17cpu_level_running, @function
lb_os_17cpu_level_running:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    call lb_os_9x86_level@PLT
    movl %eax, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_1:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_os_9x86_level
    .type lb_os_9x86_level, @function
lb_os_9x86_level:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -44(%rbp), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq -48(%rbp), %r12
    movl $0, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movl $1, %eax
    pushq %rbx
cpuid

    movq 0(%rsp), %rbx
    movq %rbx, %r10
    movl %ecx, (%r10)
    addq $8, %rsp
    movl $7, %eax
    movl $0, %ecx
    pushq %rbx
cpuid

    pushq %rbx
    movq 8(%rsp), %rbx
    movq 0(%rsp), %rax
    movq %r12, %r10
    movl %eax, (%r10)
    addq $16, %rsp
    movq %rbx, %r10
    movl (%r10), %ebx
.L3_2:
    movl $1048576, %ecx
    movl %ebx, %r13d
    andl %ecx, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
.L3_4:
    movl $8388608, %ecx
    movl %ebx, %r14d
    andl %ecx, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
.L3_6:
    movl $4096, %ecx
    movl %ebx, %r15d
    andl %ecx, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %eax
    movl %eax, -56(%rbp)
.L3_8:
    movl $134217728, %ecx
    movl %ebx, %eax
    andl %ecx, %eax
    movl %eax, -64(%rbp)
    movl -64(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %eax
    movl %eax, -72(%rbp)
    movl -72(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %eax
    movl %eax, -80(%rbp)
    movq %r12, %r10
    movl (%r10), %r15d
.L3_10:
    movl $32, %ecx
    movl %r15d, %ebx
    andl %ecx, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L3_12:
    movl $256, %ecx
    movl %r15d, %r12d
    andl %ecx, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %eax
    movl %eax, -88(%rbp)
.L3_14:
    movl $65536, %ecx
    movl %r15d, %eax
    andl %ecx, %eax
    movl %eax, -96(%rbp)
    movl -96(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %eax
    movl %eax, -104(%rbp)
    movl -104(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %eax
    movl %eax, -112(%rbp)
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L3_18
    jmp .L3_35
.L3_35:
    movl %r12d, %r13d
    jmp .L3_19
.L3_18:
    movzbl %r14b, %r13d
.L3_19:
    movzbl %r13b, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L3_16
.L3_15:
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_16:
.L3_17:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L3_24
    jmp .L3_36
.L3_36:
    movl %r12d, %ebx
    jmp .L3_25
.L3_24:
    movl -56(%rbp), %eax
    movzbl %al, %ebx
.L3_25:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L3_26
    jmp .L3_37
.L3_37:
    movl %r12d, %ebx
    jmp .L3_27
.L3_26:
    movl -88(%rbp), %eax
    movzbl %al, %ebx
.L3_27:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L3_28
    jmp .L3_38
.L3_38:
    movl %r12d, %ebx
    jmp .L3_29
.L3_28:
    movl -80(%rbp), %eax
    movzbl %al, %ebx
.L3_29:
    movzbl %bl, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L3_22
.L3_21:
    movl $2, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_22:
.L3_23:
    movl -112(%rbp), %eax
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L3_31
    jmp .L3_32
.L3_31:
    movl $4, %eax
    movl %eax, %ebx
    jmp .L3_33
.L3_32:
    movl $3, %eax
    movl %eax, %ebx
.L3_33:
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_os_cpus
    .type lb_os_cpus, @function
lb_os_cpus:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    leaq lb_os_17processors_online(%rip), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    call sysconf@PLT
    movq %rax, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jle .L4_2
.L4_1:
    movl %ebx, %r12d
    jmp .L4_3
.L4_2:
    movl $1, %eax
    movl %eax, %r12d
.L4_3:
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_4:
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_os_9page_size
    .type lb_os_9page_size, @function
lb_os_9page_size:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    call getpagesize@PLT
    movl %eax, %ebx
    movslq %ebx, %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_1:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_os_env
    .type lb_os_env, @function
lb_os_env:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -80(%rbp)
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call getenv@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L6_1
    jmp .L6_2
.L6_1:
    jmp .L6_3
.L6_2:
    leaq -104(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -64(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $24, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_4:
.L6_3:
    movq %rbx, %rdi
    call strlen@PLT
    movq %rax, %r12
    leaq -120(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    leaq -144(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -64(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $24, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_5:
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_os_7set_env
    .type lb_os_7set_env, @function
lb_os_7set_env:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %rsi, -80(%rbp)
    movq %rdx, -96(%rbp)
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movl $1, %edx
    call setenv@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L7_2
.L7_1:
    leaq -64(%rbp), %rbx
    leaq lb_os_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_24(%rip), %r12
    leaq -112(%rbp), %r13
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
.L7_4:
    jmp .L7_3
.L7_2:
.L7_3:
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
    .globl lb_os_9unset_env
    .type lb_os_9unset_env, @function
lb_os_9unset_env:
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
    movq %rbx, %rdi
    call unsetenv@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L8_2
.L8_1:
    leaq -64(%rbp), %rbx
    leaq lb_os_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_25(%rip), %r12
    leaq -96(%rbp), %r13
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L8_4:
    jmp .L8_3
.L8_2:
.L8_3:
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
    .globl lb_os_cwd
    .type lb_os_cwd, @function
lb_os_cwd:
    pushq %rbp
    movq %rsp, %rbp
    subq $272, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -112(%rbp), %rax
    movq %rax, -264(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -272(%rbp)
    leaq -160(%rbp), %r13
.L9_2:
    movq -272(%rbp), %r10
    movq (%r10), %r14
    movq -272(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -256(%rbp)
    movq -256(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L9_4
    jmp .L9_5
.L9_5:
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_4:
    movq %r15, %r10
    movq (%r10), %r12
    movq %r14, %rsi
    movq $4096, %rdx
    movq $1, %rcx
    leaq -184(%rbp), %rdi
    movq %r12, %r11
    call *%r11
    leaq -184(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $1, %ecx
    andl %ecx, %r12d
    testl %r12d, %r12d
    jne .L9_6
    jmp .L9_7
.L9_6:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_29(%rip), %r12
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
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L9_3
.L9_7:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $4096, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L9_3:
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L9_9
    jmp .L9_8
.L9_9:
    movq $16, %rcx
    movq %r13, %rbx
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
.L9_8:
    movq %r13, %r10
    movq -264(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -264(%rbp), %r10
    movq (%r10), %rbx
    movq -264(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    call getcwd@PLT
    movq %rax, %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    jne .L9_12
.L9_11:
    leaq -200(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq -272(%rbp), %r10
    movq (%r10), %r14
    movq -256(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L9_15
    jmp .L9_14
.L9_15:
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
.L9_14:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_os_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_31(%rip), %r13
    leaq -216(%rbp), %r14
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
.L9_12:
.L9_13:
    testq %r14, %r14
    jne .L9_17
    jmp .L9_18
.L9_17:
    jmp .L9_19
.L9_18:
    leaq .Ltext_4(%rip), %rbx
    leaq -232(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $11, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_32(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_19:
    movq %r14, %rdi
    call strlen@PLT
    movq %rax, %rbx
    leaq -248(%rbp), %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    leaq -96(%rbp), %rbx
    movq %r12, %r10
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

    .p2align 4
    .globl lb_os_executable
    .type lb_os_executable, @function
lb_os_executable:
    pushq %rbp
    movq %rsp, %rbp
    subq $272, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -112(%rbp), %rax
    movq %rax, -264(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -272(%rbp)
    leaq -160(%rbp), %r13
.L10_2:
    movq -272(%rbp), %r10
    movq (%r10), %r14
    movq -272(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -256(%rbp)
    movq -256(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L10_4
    jmp .L10_5
.L10_5:
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
.L10_4:
    movq %r15, %r10
    movq (%r10), %r12
    movq %r14, %rsi
    movq $4096, %rdx
    movq $1, %rcx
    leaq -184(%rbp), %rdi
    movq %r12, %r11
    call *%r11
    leaq -184(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $1, %ecx
    andl %ecx, %r12d
    testl %r12d, %r12d
    jne .L10_6
    jmp .L10_7
.L10_6:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_29(%rip), %r12
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
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L10_3
.L10_7:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $4096, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L10_3:
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L10_9
    jmp .L10_8
.L10_9:
    movq $16, %rcx
    movq %r13, %rbx
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
.L10_8:
    movq %r13, %r10
    movq -264(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_35(%rip), %rbx
    movq -264(%rbp), %r10
    movq (%r10), %r12
    movq -264(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %rbx, %rdi
    movq %r12, %rsi
    movq %r15, %rdx
    call readlink@PLT
    movq %rax, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jge .L10_12
.L10_11:
    leaq -200(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq -272(%rbp), %r10
    movq (%r10), %r13
    movq -256(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L10_15
    jmp .L10_14
.L10_15:
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
.L10_14:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_os_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_38(%rip), %r13
    leaq -216(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $34, %rax
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
.L10_12:
.L10_13:
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_41(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r12, %r13
    addq %rbx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $1, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_41(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_41(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %rbx, %rax
    jbe .L10_17
.L10_18:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_41(%rip), %rsi
    call lb_core_7trap_at@PLT
.L10_17:
    leaq -232(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    leaq -248(%rbp), %r13
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

    .p2align 4
    .globl lb_os_10change_dir
    .type lb_os_10change_dir, @function
lb_os_10change_dir:
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
    movq %rbx, %rdi
    call chdir@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L11_2
.L11_1:
    leaq -64(%rbp), %rbx
    leaq lb_os_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_42(%rip), %r12
    leaq -96(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $31, %rax
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
.L11_4:
    jmp .L11_3
.L11_2:
.L11_3:
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
    .globl lb_os_pid
    .type lb_os_pid, @function
lb_os_pid:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    call getpid@PLT
    movl %eax, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_1:
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_os_10parent_pid
    .type lb_os_10parent_pid, @function
lb_os_10parent_pid:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    call getppid@PLT
    movl %eax, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L13_1:
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_os_hostname
    .type lb_os_hostname, @function
lb_os_hostname:
    pushq %rbp
    movq %rsp, %rbp
    subq $272, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -112(%rbp), %rax
    movq %rax, -264(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -272(%rbp)
    leaq -160(%rbp), %r13
.L14_2:
    movq -272(%rbp), %r10
    movq (%r10), %r14
    movq -272(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -256(%rbp)
    movq -256(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L14_4
    jmp .L14_5
.L14_5:
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
.L14_4:
    movq %r15, %r10
    movq (%r10), %r12
    movq %r14, %rsi
    movq $256, %rdx
    movq $1, %rcx
    leaq -184(%rbp), %rdi
    movq %r12, %r11
    call *%r11
    leaq -184(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $1, %ecx
    andl %ecx, %r12d
    testl %r12d, %r12d
    jne .L14_6
    jmp .L14_7
.L14_6:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_29(%rip), %r12
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
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L14_3
.L14_7:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $256, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L14_3:
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L14_9
    jmp .L14_8
.L14_9:
    movq $16, %rcx
    movq %r13, %rbx
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
.L14_8:
    movq %r13, %r10
    movq -264(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -264(%rbp), %r10
    movq (%r10), %rbx
    movq -264(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    call gethostname@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L14_12
.L14_11:
    leaq -200(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq -272(%rbp), %r10
    movq (%r10), %r14
    movq -256(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L14_15
    jmp .L14_14
.L14_15:
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
.L14_14:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_os_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_47(%rip), %r13
    leaq -216(%rbp), %r14
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
.L14_12:
.L14_13:
    movq $0, %rax
    movq %rax, %r13
.L14_17:
    cmpq %r12, %r13
    setb %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L14_20
    jmp .L14_25
.L14_25:
    movl %r14d, %r15d
    jmp .L14_21
.L14_20:
    movq %rbx, %r14
    addq %r13, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L14_21:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L14_18
    jmp .L14_19
.L14_18:
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_51(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r14, %r13
    jmp .L14_17
.L14_19:
    movq $1, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq $0, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_41(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_41(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r13, %rax
    jbe .L14_22
.L14_23:
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_41(%rip), %rsi
    call lb_core_7trap_at@PLT
.L14_22:
    leaq -232(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    leaq -248(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    leaq -96(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
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

    .p2align 4
    .globl lb_os_exit
    .type lb_os_exit, @function
lb_os_exit:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movl %edi, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    call exit@PLT
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_os_module_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/os/module.lucb:29:9"
.Ltext_1:
    .asciz "src/std/os/module.lucb:34:13"
.Ltext_2:
    .asciz "operating system randomness is unavailable"
.Ltext_3:
    .asciz "src/std/os/module.lucb:37:9"
.Ltext_4:
    .asciz "unreachable"
.Ltext_5:
    .asciz "src/std/os/module.lucb:61:9"
.Ltext_6:
    .asciz "eax"
.Ltext_7:
    .asciz "x86_64"
.Ltext_8:
    .asciz "cpuid\n"
.Ltext_9:
    .asciz "ecx"
.Ltext_10:
    .asciz "ebx"
.Ltext_11:
    .asciz "edx"
.Ltext_12:
    .asciz "shift count out of range"
.Ltext_13:
    .asciz "src/std/os/module.lucb:72:5"
.Ltext_14:
    .asciz "src/std/os/module.lucb:73:5"
.Ltext_15:
    .asciz "src/std/os/module.lucb:74:5"
.Ltext_16:
    .asciz "src/std/os/module.lucb:76:5"
.Ltext_17:
    .asciz "src/std/os/module.lucb:77:5"
.Ltext_18:
    .asciz "src/std/os/module.lucb:78:5"
.Ltext_19:
    .asciz "src/std/os/module.lucb:79:5"
.Ltext_20:
    .asciz "src/std/os/module.lucb:84:5"
.Ltext_21:
    .asciz "src/std/os/module.lucb:95:5"
.Ltext_22:
    .asciz "src/std/os/module.lucb:102:5"
.Ltext_23:
    .asciz "src/std/os/module.lucb:110:5"
.Ltext_24:
    .asciz "the environment variable cannot be set"
.Ltext_25:
    .asciz "the environment variable cannot be unset"
.Ltext_26:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_27:
    .asciz "memory.unset"
.Ltext_28:
    .asciz "src/std/os/module.lucb:139:5"
.Ltext_29:
    .asciz "memory.exhausted"
.Ltext_30:
    .asciz "src/std/os/module.lucb:142:9"
.Ltext_31:
    .asciz "the working directory cannot be read"
.Ltext_32:
    .asciz "src/std/os/module.lucb:144:5"
.Ltext_33:
    .asciz "src/std/os/module.lucb:145:5"
.Ltext_34:
    .asciz "src/std/os/module.lucb:152:5"
.Ltext_35:
    .asciz "/proc/self/exe"
.Ltext_36:
    .asciz "src/std/os/module.lucb:162:9"
.Ltext_37:
    .asciz "src/std/os/module.lucb:164:13"
.Ltext_38:
    .asciz "the executable path cannot be read"
.Ltext_39:
    .asciz "src/std/os/module.lucb:167:5"
.Ltext_40:
    .asciz "src/std/os/module.lucb:168:5"
.Ltext_41:
    .asciz "index out of bounds"
.Ltext_42:
    .asciz "the directory cannot be entered"
.Ltext_43:
    .asciz "src/std/os/module.lucb:183:5"
.Ltext_44:
    .asciz "src/std/os/module.lucb:188:5"
.Ltext_45:
    .asciz "src/std/os/module.lucb:198:5"
.Ltext_46:
    .asciz "src/std/os/module.lucb:200:9"
.Ltext_47:
    .asciz "the host name cannot be read"
.Ltext_48:
    .asciz "src/std/os/module.lucb:203:5"
.Ltext_49:
    .asciz "src/std/os/module.lucb:204:9"
.Ltext_50:
    .asciz "src/std/os/module.lucb:205:5"
.Ltext_51:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_os_failed
    .type lb_os_failed, @object
    .p2align 2
lb_os_failed:
    .zero 4

    .bss
    .globl lb_os_arm64
    .type lb_os_arm64, @object
    .p2align 0
lb_os_arm64:
    .zero 1

    .bss
    .globl lb_os_6x86_64
    .type lb_os_6x86_64, @object
    .p2align 0
lb_os_6x86_64:
    .zero 1

    .bss
    .globl lb_os_macos
    .type lb_os_macos, @object
    .p2align 0
lb_os_macos:
    .zero 1

    .bss
    .globl lb_os_linux
    .type lb_os_linux, @object
    .p2align 0
lb_os_linux:
    .zero 1

    .bss
    .globl lb_os_windows
    .type lb_os_windows, @object
    .p2align 0
lb_os_windows:
    .zero 1

    .bss
    .globl lb_os_posix
    .type lb_os_posix, @object
    .p2align 0
lb_os_posix:
    .zero 1

    .bss
    .globl lb_os_12pointer_bits
    .type lb_os_12pointer_bits, @object
    .p2align 2
lb_os_12pointer_bits:
    .zero 4

    .bss
    .globl lb_os_name
    .type lb_os_name, @object
    .p2align 3
lb_os_name:
    .zero 16

    .bss
    .globl lb_os_9cpu_level
    .type lb_os_9cpu_level, @object
    .p2align 2
lb_os_9cpu_level:
    .zero 4

    .bss
    .globl lb_os_17processors_online
    .type lb_os_17processors_online, @object
    .p2align 2
lb_os_17processors_online:
    .zero 4

    .section .note.GNU-stack,"",@progbits
