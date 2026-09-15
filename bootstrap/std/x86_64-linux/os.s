    .text

    .p2align 4
    .globl lb_os_0init
    .type lb_os_0init, @function
lb_os_0init:
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
    leaq .Ltext_43(%rip), %rsi
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
    leaq .Ltext_57(%rip), %rsi
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
    jne .L10_2
.L10_1:
    leaq -64(%rbp), %rbx
    leaq lb_os_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_34(%rip), %r12
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
.L10_4:
    jmp .L10_3
.L10_2:
.L10_3:
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
.L11_1:
    leaq .Ltext_35(%rip), %rdi
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
.L12_1:
    leaq .Ltext_36(%rip), %rdi
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
.L13_2:
    movq -272(%rbp), %r10
    movq (%r10), %r14
    movq -272(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -256(%rbp)
    movq -256(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L13_4
    jmp .L13_5
.L13_5:
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_4:
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
    jne .L13_6
    jmp .L13_7
.L13_6:
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
    jmp .L13_3
.L13_7:
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
.L13_3:
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_9
    jmp .L13_8
.L13_9:
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
.L13_8:
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
    jne .L13_12
.L13_11:
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
    jne .L13_15
    jmp .L13_14
.L13_15:
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
.L13_14:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_os_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_39(%rip), %r13
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
.L13_12:
.L13_13:
    movq $0, %rax
    movq %rax, %r13
.L13_17:
    cmpq %r12, %r13
    setb %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L13_20
    jmp .L13_25
.L13_25:
    movl %r14d, %r15d
    jmp .L13_21
.L13_20:
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
.L13_21:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L13_18
    jmp .L13_19
.L13_18:
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_57(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r14, %r13
    jmp .L13_17
.L13_19:
    movq $1, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq $0, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r13, %rax
    jbe .L13_22
.L13_23:
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_22:
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

    .p2align 4
    .globl lb_os_11windows_env
    .type lb_os_11windows_env, @function
lb_os_11windows_env:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -80(%rbp)
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %fs:0, %rax
    addq lb_os_15environment_key@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    movl $65001, %edi
    movl $8, %esi
    movq %rbx, %rdx
    movl $4294967295, %ecx
    movq %r12, %r8
    movl $32768, %r9d
    call MultiByteToWideChar@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L15_2
.L15_1:
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
.L15_4:
    jmp .L15_3
.L15_2:
.L15_3:
    movl $0, %edi
    call SetLastError@PLT
    movq %fs:0, %rax
    addq lb_os_16environment_wide@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movl $32768, %edx
    call GetEnvironmentVariableW@PLT
    movl %eax, %r13d
    movl $32768, %ecx
    cmpl %ecx, %r13d
    setae %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L15_23
    jmp .L15_8
.L15_23:
    movl %r14d, %r12d
    jmp .L15_9
.L15_8:
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L15_10
    jmp .L15_24
.L15_24:
    movl %r12d, %r14d
    jmp .L15_11
.L15_10:
    call GetLastError@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L15_11:
    movzbl %r14b, %r12d
.L15_9:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L15_5
    jmp .L15_6
.L15_5:
    leaq -128(%rbp), %rbx
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
.L15_12:
    jmp .L15_7
.L15_6:
.L15_7:
    movl $0, %ecx
    cmpl %ecx, %r13d
    jbe .L15_14
.L15_13:
    movl %r13d, %r12d
    movq %fs:0, %rax
    addq lb_os_16environment_utf8@GOTTPOFF(%rip), %rax
    movq %rax, %r14
    subq $16, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movl $65001, %edi
    movl $128, %esi
    movq %rbx, %rdx
    movl %r12d, %ecx
    movq %r14, %r8
    movl $131072, %r9d
    call WideCharToMultiByte@PLT
    addq $16, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L15_17
.L15_16:
    leaq -152(%rbp), %rbx
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
.L15_19:
    jmp .L15_18
.L15_17:
.L15_18:
    movl %r12d, %ebx
    jmp .L15_15
.L15_14:
    movl $0, %eax
    movl %eax, %ebx
.L15_15:
    movslq %ebx, %r12
    movq %fs:0, %rax
    addq lb_os_16environment_utf8@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    movq $131073, %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_47(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r12, %r14
    addq %r13, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq $0, %rax
    cmpq %r12, %rax
    jbe .L15_20
.L15_21:
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
.L15_20:
    leaq -168(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq -184(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    leaq -208(%rbp), %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -64(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %rbx, %rsi
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
.L15_22:
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_os_11windows_cwd
    .type lb_os_11windows_cwd, @function
lb_os_11windows_cwd:
    pushq %rbp
    movq %rsp, %rbp
    subq $544, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -112(%rbp), %rax
    movq %rax, -512(%rbp)
    leaq -160(%rbp), %rax
    movq %rax, -536(%rbp)
    leaq -184(%rbp), %rax
    movq %rax, -544(%rbp)
    movq -544(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -384(%rbp)
    movq -536(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -432(%rbp)
    movq -536(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -440(%rbp)
    movq -536(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -392(%rbp)
    leaq .Ltext_29(%rip), %rax
    movq %rax, -400(%rbp)
    movq -392(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -408(%rbp)
    movq -392(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -416(%rbp)
    movq -536(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -424(%rbp)
    movq -536(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -344(%rbp)
    leaq .Ltext_26(%rip), %rax
    movq %rax, -352(%rbp)
    movq -344(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -360(%rbp)
    movq -344(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -368(%rbp)
    movq -536(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -376(%rbp)
    movq -536(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -448(%rbp)
    leaq -312(%rbp), %rax
    movq %rax, -480(%rbp)
    movq -512(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -488(%rbp)
    movq -480(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -496(%rbp)
    movq $0, %rax
    movq %rax, -504(%rbp)
.L16_1:
    movq -504(%rbp), %rax
    movq $8, %rcx
    cmpq %rcx, %rax
    jae .L16_3
.L16_2:
    movl $0, %edi
    movq $0, %rsi
    call GetCurrentDirectoryW@PLT
    movl %eax, -336(%rbp)
    movl -336(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jne .L16_5
.L16_4:
    jmp .L16_3
.L16_7:
    jmp .L16_6
.L16_5:
.L16_6:
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -520(%rbp)
    movl -336(%rbp), %eax
    movl %eax, %eax
    movq %rax, -528(%rbp)
    movq -528(%rbp), %rax
    movabsq $2305843009213693952, %rcx
    cmpq %rcx, %rax
    jbe .L16_9
.L16_8:
    movl $208273409, %eax
    movq -344(%rbp), %r10
    movl %eax, (%r10)
    movq -352(%rbp), %rax
    movq -360(%rbp), %r10
    movq %rax, (%r10)
    movq $47, %rax
    movq -368(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq -376(%rbp), %r10
    movb %al, (%r10)
    jmp .L16_10
.L16_9:
    movq -528(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq -520(%rbp), %r10
    movq (%r10), %r15
    movq -520(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L16_11
    jmp .L16_12
.L16_12:
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
.L16_11:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r15, %rsi
    movq %r14, %rdx
    movq $2, %rcx
    leaq -184(%rbp), %rdi
    movq %r12, %r11
    call *%r11
    movq -384(%rbp), %r10
    movzbl (%r10), %r12d
    movq $0, %rcx
    cmpq %rcx, %r14
    setne %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ecx
    movl %r13d, %r12d
    andl %ecx, %r12d
    testl %r12d, %r12d
    jne .L16_13
    jmp .L16_14
.L16_13:
    movl $208273409, %eax
    movq -392(%rbp), %r10
    movl %eax, (%r10)
    movq -400(%rbp), %rax
    movq -408(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq -416(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq -424(%rbp), %r10
    movb %al, (%r10)
    jmp .L16_10
.L16_14:
    movq -544(%rbp), %r10
    movq (%r10), %rbx
    movq -536(%rbp), %r10
    movq %rbx, (%r10)
    movq -528(%rbp), %rax
    movq -432(%rbp), %r10
    movq %rax, (%r10)
    movl $0, %eax
    movq -440(%rbp), %r10
    movb %al, (%r10)
.L16_10:
    movq -448(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L16_16
    jmp .L16_15
.L16_16:
    movq -536(%rbp), %rax
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
.L16_17:
.L16_15:
    movq -536(%rbp), %r10
    movq -512(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -512(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -456(%rbp)
    movl -336(%rbp), %edi
    movq -456(%rbp), %rsi
    call GetCurrentDirectoryW@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L16_19
.L16_18:
    leaq -200(%rbp), %r12
    movq -512(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_57(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -456(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq -520(%rbp), %r10
    movq (%r10), %r13
    movq -520(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L16_22
    jmp .L16_21
.L16_22:
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
.L16_21:
    jmp .L16_3
.L16_23:
    jmp .L16_20
.L16_19:
.L16_20:
    movl -336(%rbp), %ecx
    cmpl %ecx, %r12d
    jae .L16_25
.L16_24:
    movq -512(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movl %r12d, %r15d
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $0, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r14, %r15
    jb 1f
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r15, %rax
    jbe .L16_27
.L16_28:
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_43(%rip), %rsi
    call lb_core_7trap_at@PLT
.L16_27:
    leaq -216(%rbp), %r12
    movq -456(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    leaq lb_os_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movl %r14d, %ecx
    leaq -264(%rbp), %rdi
    call lb_12windows_text_narrow@PLT
    leaq -264(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L16_30
    jmp .L16_29
.L16_30:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq -96(%rbp), %rax
    movq %rax, -464(%rbp)
    movq -464(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -464(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -280(%rbp), %rbx
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_57(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -456(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq -520(%rbp), %r10
    movq (%r10), %r12
    movq -520(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L16_32
    jmp .L16_31
.L16_32:
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L16_31:
    movq -464(%rbp), %rsi
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
.L16_33:
.L16_29:
    leaq -96(%rbp), %rax
    movq %rax, -472(%rbp)
    movq %r14, %r10
    movq -472(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -472(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -296(%rbp), %r12
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_57(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq -456(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq -520(%rbp), %r10
    movq (%r10), %rbx
    movq -520(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L16_35
    jmp .L16_34
.L16_35:
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L16_34:
    movq -472(%rbp), %rsi
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
.L16_36:
    jmp .L16_26
.L16_25:
.L16_26:
    movq -504(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -488(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_57(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -456(%rbp), %rax
    movq -480(%rbp), %r10
    movq %rax, (%r10)
    movq -496(%rbp), %r10
    movq %r12, (%r10)
    movq -520(%rbp), %r10
    movq (%r10), %r12
    movq -520(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L16_38
    jmp .L16_37
.L16_38:
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq -480(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r11
    call *%r11
.L16_37:
    movq %rbx, %rax
    movq %rax, -504(%rbp)
    jmp .L16_1
.L16_3:
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
    leaq -328(%rbp), %r14
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
.L16_39:
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_os_18windows_parent_pid
    .type lb_os_18windows_parent_pid, @function
lb_os_18windows_parent_pid:
    pushq %rbp
    movq %rsp, %rbp
    subq $624, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movl $2, %edi
    movl $0, %esi
    call CreateToolhelp32Snapshot@PLT
    movq %rax, -616(%rbp)
    movq -616(%rbp), %rax
    testq %rax, %rax
    jne .L17_1
    jmp .L17_2
.L17_2:
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_54(%rip), %rsi
    call lb_core_7trap_at@PLT
.L17_1:
    movq -616(%rbp), %rax
    movq $-1, %rcx
    cmpq %rcx, %rax
    jne .L17_4
.L17_3:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L17_6:
    jmp .L17_5
.L17_4:
.L17_5:
    leaq -608(%rbp), %r12
    movq %r12, %rdi
    xorl %esi, %esi
    movq $568, %rdx
    call memset@PLT
    movl $568, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq -616(%rbp), %rdi
    movq %r12, %rsi
    call Process32FirstW@PLT
    movl %eax, %r13d
    call GetCurrentProcessId@PLT
    movl %eax, %r14d
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
.L17_7:
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L17_9
.L17_8:
    movq %r15, %r10
    movl (%r10), %ebx
    cmpl %ebx, %r14d
    jne .L17_11
.L17_10:
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    movq -616(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %r12d
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L17_13:
    jmp .L17_12
.L17_11:
.L17_12:
    movq -616(%rbp), %rdi
    movq %r12, %rsi
    call Process32NextW@PLT
    movl %eax, %r13d
    jmp .L17_7
.L17_9:
    movq -616(%rbp), %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L17_14:
    movq %rbx, %rdi
    call CloseHandle@PLT
    movl %eax, %ebx
    leaq .Ltext_56(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_os_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/os/module.lucb:28:9"
.Ltext_1:
    .asciz "src/std/os/module.lucb:33:13"
.Ltext_2:
    .asciz "operating system randomness is unavailable"
.Ltext_3:
    .asciz "src/std/os/module.lucb:36:9"
.Ltext_4:
    .asciz "unreachable"
.Ltext_5:
    .asciz "src/std/os/module.lucb:60:9"
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
    .asciz "src/std/os/module.lucb:71:5"
.Ltext_14:
    .asciz "src/std/os/module.lucb:72:5"
.Ltext_15:
    .asciz "src/std/os/module.lucb:73:5"
.Ltext_16:
    .asciz "src/std/os/module.lucb:75:5"
.Ltext_17:
    .asciz "src/std/os/module.lucb:76:5"
.Ltext_18:
    .asciz "src/std/os/module.lucb:77:5"
.Ltext_19:
    .asciz "src/std/os/module.lucb:78:5"
.Ltext_20:
    .asciz "src/std/os/module.lucb:83:5"
.Ltext_21:
    .asciz "src/std/os/module.lucb:94:5"
.Ltext_22:
    .asciz "src/std/os/module.lucb:101:5"
.Ltext_23:
    .asciz "src/std/os/module.lucb:109:5"
.Ltext_24:
    .asciz "the environment variable cannot be set"
.Ltext_25:
    .asciz "the environment variable cannot be unset"
.Ltext_26:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_27:
    .asciz "memory.unset"
.Ltext_28:
    .asciz "src/std/os/module.lucb:138:5"
.Ltext_29:
    .asciz "memory.exhausted"
.Ltext_30:
    .asciz "src/std/os/module.lucb:141:9"
.Ltext_31:
    .asciz "the working directory cannot be read"
.Ltext_32:
    .asciz "src/std/os/module.lucb:143:5"
.Ltext_33:
    .asciz "src/std/os/module.lucb:144:5"
.Ltext_34:
    .asciz "the directory cannot be entered"
.Ltext_35:
    .asciz "src/std/os/module.lucb:159:5"
.Ltext_36:
    .asciz "src/std/os/module.lucb:164:5"
.Ltext_37:
    .asciz "src/std/os/module.lucb:174:5"
.Ltext_38:
    .asciz "src/std/os/module.lucb:176:9"
.Ltext_39:
    .asciz "the host name cannot be read"
.Ltext_40:
    .asciz "src/std/os/module.lucb:179:5"
.Ltext_41:
    .asciz "src/std/os/module.lucb:180:9"
.Ltext_42:
    .asciz "src/std/os/module.lucb:181:5"
.Ltext_43:
    .asciz "index out of bounds"
.Ltext_44:
    .asciz "src/std/os/windows.lucb:29:5"
.Ltext_45:
    .asciz "src/std/os/windows.lucb:32:5"
.Ltext_46:
    .asciz "src/std/os/windows.lucb:37:9"
.Ltext_47:
    .asciz "src/std/os/windows.lucb:40:5"
.Ltext_48:
    .asciz "src/std/os/windows.lucb:41:5"
.Ltext_49:
    .asciz "src/std/os/windows.lucb:49:9"
.Ltext_50:
    .asciz "src/std/os/windows.lucb:53:13"
.Ltext_51:
    .asciz "src/std/os/windows.lucb:55:13"
.Ltext_52:
    .asciz "src/std/os/windows.lucb:56:9"
.Ltext_53:
    .asciz "src/std/os/windows.lucb:57:5"
.Ltext_54:
    .asciz "null_foreign"
.Ltext_55:
    .asciz "src/std/os/windows.lucb:60:5"
.Ltext_56:
    .asciz "src/std/os/windows.lucb:72:5"
.Ltext_57:
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

    .section .tbss,"awT",@nobits
    .globl lb_os_16environment_wide
    .type lb_os_16environment_wide, @object
    .p2align 1
lb_os_16environment_wide:
    .zero 65536

    .section .tbss,"awT",@nobits
    .globl lb_os_16environment_utf8
    .type lb_os_16environment_utf8, @object
    .p2align 0
lb_os_16environment_utf8:
    .zero 131073

    .section .tbss,"awT",@nobits
    .globl lb_os_15environment_key
    .type lb_os_15environment_key, @object
    .p2align 1
lb_os_15environment_key:
    .zero 65536

    .section .note.GNU-stack,"",@progbits
