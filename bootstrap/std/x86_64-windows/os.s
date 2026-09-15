    .text

    .p2align 4
    .globl lb_os_0init
lb_os_0init:
    .seh_proc lb_os_0init
    pushq %rbp
    .seh_pushreg %rbp
    subq $208, %rsp
    .seh_stackalloc 208
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 200(%rbp)
    .seh_savereg %rdi, 200
    movq %rsi, 192(%rbp)
    .seh_savereg %rsi, 192
    movdqu %xmm6, 176(%rbp)
    .seh_savexmm %xmm6, 176
    movdqu %xmm7, 160(%rbp)
    .seh_savexmm %xmm7, 160
    movdqu %xmm8, 144(%rbp)
    .seh_savexmm %xmm8, 144
    movdqu %xmm9, 128(%rbp)
    .seh_savexmm %xmm9, 128
    movdqu %xmm10, 112(%rbp)
    .seh_savexmm %xmm10, 112
    movdqu %xmm11, 96(%rbp)
    .seh_savexmm %xmm11, 96
    movdqu %xmm12, 80(%rbp)
    .seh_savexmm %xmm12, 80
    movdqu %xmm13, 64(%rbp)
    .seh_savexmm %xmm13, 64
    movdqu %xmm14, 48(%rbp)
    .seh_savexmm %xmm14, 48
    movdqu %xmm15, 32(%rbp)
    .seh_savexmm %xmm15, 32
    movq %rbx, 24(%rbp)
    .seh_savereg %rbx, 24
    movq %r12, 16(%rbp)
    .seh_savereg %r12, 16
    movq %r13, 8(%rbp)
    .seh_savereg %r13, 8
    .seh_endprologue
    movq %rcx, 224(%rbp)
    movq %rdx, 232(%rbp)
    movq %r8, 240(%rbp)
    movq %r9, 248(%rbp)
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
    movq 200(%rbp), %rdi
    movq 192(%rbp), %rsi
    movdqu 176(%rbp), %xmm6
    movdqu 160(%rbp), %xmm7
    movdqu 144(%rbp), %xmm8
    movdqu 128(%rbp), %xmm9
    movdqu 112(%rbp), %xmm10
    movdqu 96(%rbp), %xmm11
    movdqu 80(%rbp), %xmm12
    movdqu 64(%rbp), %xmm13
    movdqu 48(%rbp), %xmm14
    movdqu 32(%rbp), %xmm15
    movq 24(%rbp), %rbx
    movq 16(%rbp), %r12
    movq 8(%rbp), %r13
    leaq 208(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_os_12random_bytes
lb_os_12random_bytes:
    .seh_proc lb_os_12random_bytes
    pushq %rbp
    .seh_pushreg %rbp
    subq $304, %rsp
    .seh_stackalloc 304
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 120(%rbp)
    movq %rdi, 296(%rbp)
    .seh_savereg %rdi, 296
    movq %rsi, 288(%rbp)
    .seh_savereg %rsi, 288
    movdqu %xmm6, 272(%rbp)
    .seh_savexmm %xmm6, 272
    movdqu %xmm7, 256(%rbp)
    .seh_savexmm %xmm7, 256
    movdqu %xmm8, 240(%rbp)
    .seh_savexmm %xmm8, 240
    movdqu %xmm9, 224(%rbp)
    .seh_savexmm %xmm9, 224
    movdqu %xmm10, 208(%rbp)
    .seh_savexmm %xmm10, 208
    movdqu %xmm11, 192(%rbp)
    .seh_savexmm %xmm11, 192
    movdqu %xmm12, 176(%rbp)
    .seh_savexmm %xmm12, 176
    movdqu %xmm13, 160(%rbp)
    .seh_savexmm %xmm13, 160
    movdqu %xmm14, 144(%rbp)
    .seh_savexmm %xmm14, 144
    movdqu %xmm15, 128(%rbp)
    .seh_savexmm %xmm15, 128
    movq %rbx, 112(%rbp)
    .seh_savereg %rbx, 112
    movq %r12, 104(%rbp)
    .seh_savereg %r12, 104
    movq %r13, 96(%rbp)
    .seh_savereg %r13, 96
    movq %r14, 88(%rbp)
    .seh_savereg %r14, 88
    movq %r15, 80(%rbp)
    .seh_savereg %r15, 80
    .seh_endprologue
    movq %rcx, 320(%rbp)
    movq %rdx, 328(%rbp)
    movq %r8, 336(%rbp)
    movq %r9, 344(%rbp)
    movq 328(%rbp), %r10
    leaq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 8(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L1_1:
    movq 8(%rbp), %r10
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
    movq %rax, 0(%rbp)
    jmp .L1_6
.L1_5:
    movq $256, %rax
    movq %rax, 0(%rbp)
.L1_6:
    movq %rbx, %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_40(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r15, %r12
    addq %r13, %r12
    subq $32, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movl 0(%rbp), %eax
    movq %rax, 16(%rsp)
    movl $2, %eax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call BCryptGenRandom
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_8
.L1_7:
    leaq 48(%rbp), %rbx
    leaq lb_os_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_2(%rip), %r12
    leaq 16(%rbp), %r13
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
    movq 120(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 120(%rbp), %rax
    movq 296(%rbp), %rdi
    movq 288(%rbp), %rsi
    movdqu 272(%rbp), %xmm6
    movdqu 256(%rbp), %xmm7
    movdqu 240(%rbp), %xmm8
    movdqu 224(%rbp), %xmm9
    movdqu 208(%rbp), %xmm10
    movdqu 192(%rbp), %xmm11
    movdqu 176(%rbp), %xmm12
    movdqu 160(%rbp), %xmm13
    movdqu 144(%rbp), %xmm14
    movdqu 128(%rbp), %xmm15
    movq 112(%rbp), %rbx
    movq 104(%rbp), %r12
    movq 96(%rbp), %r13
    movq 88(%rbp), %r14
    movq 80(%rbp), %r15
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L1_10:
    jmp .L1_9
.L1_8:
.L1_9:
    movq %r13, %rax
    movq 0(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_58(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %r12, %r13
    jmp .L1_1
.L1_3:
    leaq 48(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 120(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 120(%rbp), %rax
    movq 296(%rbp), %rdi
    movq 288(%rbp), %rsi
    movdqu 272(%rbp), %xmm6
    movdqu 256(%rbp), %xmm7
    movdqu 240(%rbp), %xmm8
    movdqu 224(%rbp), %xmm9
    movdqu 208(%rbp), %xmm10
    movdqu 192(%rbp), %xmm11
    movdqu 176(%rbp), %xmm12
    movdqu 160(%rbp), %xmm13
    movdqu 144(%rbp), %xmm14
    movdqu 128(%rbp), %xmm15
    movq 112(%rbp), %rbx
    movq 104(%rbp), %r12
    movq 96(%rbp), %r13
    movq 88(%rbp), %r14
    movq 80(%rbp), %r15
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_os_17cpu_level_running
lb_os_17cpu_level_running:
    .seh_proc lb_os_17cpu_level_running
    pushq %rbp
    .seh_pushreg %rbp
    subq $192, %rsp
    .seh_stackalloc 192
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 184(%rbp)
    .seh_savereg %rdi, 184
    movq %rsi, 176(%rbp)
    .seh_savereg %rsi, 176
    movdqu %xmm6, 160(%rbp)
    .seh_savexmm %xmm6, 160
    movdqu %xmm7, 144(%rbp)
    .seh_savexmm %xmm7, 144
    movdqu %xmm8, 128(%rbp)
    .seh_savexmm %xmm8, 128
    movdqu %xmm9, 112(%rbp)
    .seh_savexmm %xmm9, 112
    movdqu %xmm10, 96(%rbp)
    .seh_savexmm %xmm10, 96
    movdqu %xmm11, 80(%rbp)
    .seh_savexmm %xmm11, 80
    movdqu %xmm12, 64(%rbp)
    .seh_savexmm %xmm12, 64
    movdqu %xmm13, 48(%rbp)
    .seh_savexmm %xmm13, 48
    movdqu %xmm14, 32(%rbp)
    .seh_savexmm %xmm14, 32
    movdqu %xmm15, 16(%rbp)
    .seh_savexmm %xmm15, 16
    movq %rbx, 8(%rbp)
    .seh_savereg %rbx, 8
    .seh_endprologue
    movq %rcx, 208(%rbp)
    movq %rdx, 216(%rbp)
    movq %r8, 224(%rbp)
    movq %r9, 232(%rbp)
    subq $32, %rsp
    call lb_os_9x86_level
    addq $32, %rsp
    movl %eax, %ebx
    movl %ebx, %eax
    movq 184(%rbp), %rdi
    movq 176(%rbp), %rsi
    movdqu 160(%rbp), %xmm6
    movdqu 144(%rbp), %xmm7
    movdqu 128(%rbp), %xmm8
    movdqu 112(%rbp), %xmm9
    movdqu 96(%rbp), %xmm10
    movdqu 80(%rbp), %xmm11
    movdqu 64(%rbp), %xmm12
    movdqu 48(%rbp), %xmm13
    movdqu 32(%rbp), %xmm14
    movdqu 16(%rbp), %xmm15
    movq 8(%rbp), %rbx
    leaq 192(%rbp), %rsp
    popq %rbp
    ret
.L2_1:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_os_9x86_level
lb_os_9x86_level:
    .seh_proc lb_os_9x86_level
    pushq %rbp
    .seh_pushreg %rbp
    subq $288, %rsp
    .seh_stackalloc 288
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 280(%rbp)
    .seh_savereg %rdi, 280
    movq %rsi, 272(%rbp)
    .seh_savereg %rsi, 272
    movdqu %xmm6, 256(%rbp)
    .seh_savexmm %xmm6, 256
    movdqu %xmm7, 240(%rbp)
    .seh_savexmm %xmm7, 240
    movdqu %xmm8, 224(%rbp)
    .seh_savexmm %xmm8, 224
    movdqu %xmm9, 208(%rbp)
    .seh_savexmm %xmm9, 208
    movdqu %xmm10, 192(%rbp)
    .seh_savexmm %xmm10, 192
    movdqu %xmm11, 176(%rbp)
    .seh_savexmm %xmm11, 176
    movdqu %xmm12, 160(%rbp)
    .seh_savexmm %xmm12, 160
    movdqu %xmm13, 144(%rbp)
    .seh_savexmm %xmm13, 144
    movdqu %xmm14, 128(%rbp)
    .seh_savexmm %xmm14, 128
    movdqu %xmm15, 112(%rbp)
    .seh_savexmm %xmm15, 112
    movq %rbx, 104(%rbp)
    .seh_savereg %rbx, 104
    movq %r12, 96(%rbp)
    .seh_savereg %r12, 96
    movq %r13, 88(%rbp)
    .seh_savereg %r13, 88
    movq %r14, 80(%rbp)
    .seh_savereg %r14, 80
    movq %r15, 72(%rbp)
    .seh_savereg %r15, 72
    .seh_endprologue
    movq %rcx, 304(%rbp)
    movq %rdx, 312(%rbp)
    movq %r8, 320(%rbp)
    movq %r9, 328(%rbp)
    leaq 68(%rbp), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq 64(%rbp), %r12
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
    movl %eax, 56(%rbp)
.L3_8:
    movl $134217728, %ecx
    movl %ebx, %eax
    andl %ecx, %eax
    movl %eax, 48(%rbp)
    movl 48(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %eax
    movl %eax, 40(%rbp)
    movl 40(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %eax
    movl %eax, 32(%rbp)
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
    movl %eax, 24(%rbp)
.L3_14:
    movl $65536, %ecx
    movl %r15d, %eax
    andl %ecx, %eax
    movl %eax, 16(%rbp)
    movl 16(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %eax
    movl %eax, 8(%rbp)
    movl 8(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %eax
    movl %eax, 0(%rbp)
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
    movq 280(%rbp), %rdi
    movq 272(%rbp), %rsi
    movdqu 256(%rbp), %xmm6
    movdqu 240(%rbp), %xmm7
    movdqu 224(%rbp), %xmm8
    movdqu 208(%rbp), %xmm9
    movdqu 192(%rbp), %xmm10
    movdqu 176(%rbp), %xmm11
    movdqu 160(%rbp), %xmm12
    movdqu 144(%rbp), %xmm13
    movdqu 128(%rbp), %xmm14
    movdqu 112(%rbp), %xmm15
    movq 104(%rbp), %rbx
    movq 96(%rbp), %r12
    movq 88(%rbp), %r13
    movq 80(%rbp), %r14
    movq 72(%rbp), %r15
    leaq 288(%rbp), %rsp
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
    movl 56(%rbp), %eax
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
    movl 24(%rbp), %eax
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
    movl 32(%rbp), %eax
    movzbl %al, %ebx
.L3_29:
    movzbl %bl, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L3_22
.L3_21:
    movl $2, %eax
    movq 280(%rbp), %rdi
    movq 272(%rbp), %rsi
    movdqu 256(%rbp), %xmm6
    movdqu 240(%rbp), %xmm7
    movdqu 224(%rbp), %xmm8
    movdqu 208(%rbp), %xmm9
    movdqu 192(%rbp), %xmm10
    movdqu 176(%rbp), %xmm11
    movdqu 160(%rbp), %xmm12
    movdqu 144(%rbp), %xmm13
    movdqu 128(%rbp), %xmm14
    movdqu 112(%rbp), %xmm15
    movq 104(%rbp), %rbx
    movq 96(%rbp), %r12
    movq 88(%rbp), %r13
    movq 80(%rbp), %r14
    movq 72(%rbp), %r15
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L3_22:
.L3_23:
    movl 0(%rbp), %eax
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
    movq 280(%rbp), %rdi
    movq 272(%rbp), %rsi
    movdqu 256(%rbp), %xmm6
    movdqu 240(%rbp), %xmm7
    movdqu 224(%rbp), %xmm8
    movdqu 208(%rbp), %xmm9
    movdqu 192(%rbp), %xmm10
    movdqu 176(%rbp), %xmm11
    movdqu 160(%rbp), %xmm12
    movdqu 144(%rbp), %xmm13
    movdqu 128(%rbp), %xmm14
    movdqu 112(%rbp), %xmm15
    movq 104(%rbp), %rbx
    movq 96(%rbp), %r12
    movq 88(%rbp), %r13
    movq 80(%rbp), %r14
    movq 72(%rbp), %r15
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_os_cpus
lb_os_cpus:
    .seh_proc lb_os_cpus
    pushq %rbp
    .seh_pushreg %rbp
    subq $192, %rsp
    .seh_stackalloc 192
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 184(%rbp)
    .seh_savereg %rdi, 184
    movq %rsi, 176(%rbp)
    .seh_savereg %rsi, 176
    movdqu %xmm6, 160(%rbp)
    .seh_savexmm %xmm6, 160
    movdqu %xmm7, 144(%rbp)
    .seh_savexmm %xmm7, 144
    movdqu %xmm8, 128(%rbp)
    .seh_savexmm %xmm8, 128
    movdqu %xmm9, 112(%rbp)
    .seh_savexmm %xmm9, 112
    movdqu %xmm10, 96(%rbp)
    .seh_savexmm %xmm10, 96
    movdqu %xmm11, 80(%rbp)
    .seh_savexmm %xmm11, 80
    movdqu %xmm12, 64(%rbp)
    .seh_savexmm %xmm12, 64
    movdqu %xmm13, 48(%rbp)
    .seh_savexmm %xmm13, 48
    movdqu %xmm14, 32(%rbp)
    .seh_savexmm %xmm14, 32
    movdqu %xmm15, 16(%rbp)
    .seh_savexmm %xmm15, 16
    movq %rbx, 8(%rbp)
    .seh_savereg %rbx, 8
    movq %r12, 0(%rbp)
    .seh_savereg %r12, 0
    .seh_endprologue
    movq %rcx, 208(%rbp)
    movq %rdx, 216(%rbp)
    movq %r8, 224(%rbp)
    movq %r9, 232(%rbp)
    subq $32, %rsp
    movl $65535, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GetActiveProcessorCount
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jbe .L4_2
.L4_1:
    movl %ebx, %r12d
    jmp .L4_3
.L4_2:
    movl $1, %eax
    movl %eax, %r12d
.L4_3:
    movl %r12d, %eax
    movq 184(%rbp), %rdi
    movq 176(%rbp), %rsi
    movdqu 160(%rbp), %xmm6
    movdqu 144(%rbp), %xmm7
    movdqu 128(%rbp), %xmm8
    movdqu 112(%rbp), %xmm9
    movdqu 96(%rbp), %xmm10
    movdqu 80(%rbp), %xmm11
    movdqu 64(%rbp), %xmm12
    movdqu 48(%rbp), %xmm13
    movdqu 32(%rbp), %xmm14
    movdqu 16(%rbp), %xmm15
    movq 8(%rbp), %rbx
    movq 0(%rbp), %r12
    leaq 192(%rbp), %rsp
    popq %rbp
    ret
.L4_4:
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_os_9page_size
lb_os_9page_size:
    .seh_proc lb_os_9page_size
    pushq %rbp
    .seh_pushreg %rbp
    subq $240, %rsp
    .seh_stackalloc 240
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 232(%rbp)
    .seh_savereg %rdi, 232
    movq %rsi, 224(%rbp)
    .seh_savereg %rsi, 224
    movdqu %xmm6, 208(%rbp)
    .seh_savexmm %xmm6, 208
    movdqu %xmm7, 192(%rbp)
    .seh_savexmm %xmm7, 192
    movdqu %xmm8, 176(%rbp)
    .seh_savexmm %xmm8, 176
    movdqu %xmm9, 160(%rbp)
    .seh_savexmm %xmm9, 160
    movdqu %xmm10, 144(%rbp)
    .seh_savexmm %xmm10, 144
    movdqu %xmm11, 128(%rbp)
    .seh_savexmm %xmm11, 128
    movdqu %xmm12, 112(%rbp)
    .seh_savexmm %xmm12, 112
    movdqu %xmm13, 96(%rbp)
    .seh_savexmm %xmm13, 96
    movdqu %xmm14, 80(%rbp)
    .seh_savexmm %xmm14, 80
    movdqu %xmm15, 64(%rbp)
    .seh_savexmm %xmm15, 64
    movq %rbx, 56(%rbp)
    .seh_savereg %rbx, 56
    .seh_endprologue
    movq %rcx, 256(%rbp)
    movq %rdx, 264(%rbp)
    movq %r8, 272(%rbp)
    movq %r9, 280(%rbp)
    leaq 8(%rbp), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GetSystemInfo
    addq $32, %rsp
    movq $4, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    movq %rbx, %rax
    movq 232(%rbp), %rdi
    movq 224(%rbp), %rsi
    movdqu 208(%rbp), %xmm6
    movdqu 192(%rbp), %xmm7
    movdqu 176(%rbp), %xmm8
    movdqu 160(%rbp), %xmm9
    movdqu 144(%rbp), %xmm10
    movdqu 128(%rbp), %xmm11
    movdqu 112(%rbp), %xmm12
    movdqu 96(%rbp), %xmm13
    movdqu 80(%rbp), %xmm14
    movdqu 64(%rbp), %xmm15
    movq 56(%rbp), %rbx
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L5_1:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_os_env
lb_os_env:
    .seh_proc lb_os_env
    pushq %rbp
    .seh_pushreg %rbp
    subq $448, %rsp
    .seh_stackalloc 448
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 264(%rbp)
    movq %rdi, 440(%rbp)
    .seh_savereg %rdi, 440
    movq %rsi, 432(%rbp)
    .seh_savereg %rsi, 432
    movdqu %xmm6, 416(%rbp)
    .seh_savexmm %xmm6, 416
    movdqu %xmm7, 400(%rbp)
    .seh_savexmm %xmm7, 400
    movdqu %xmm8, 384(%rbp)
    .seh_savexmm %xmm8, 384
    movdqu %xmm9, 368(%rbp)
    .seh_savexmm %xmm9, 368
    movdqu %xmm10, 352(%rbp)
    .seh_savexmm %xmm10, 352
    movdqu %xmm11, 336(%rbp)
    .seh_savexmm %xmm11, 336
    movdqu %xmm12, 320(%rbp)
    .seh_savexmm %xmm12, 320
    movdqu %xmm13, 304(%rbp)
    .seh_savexmm %xmm13, 304
    movdqu %xmm14, 288(%rbp)
    .seh_savexmm %xmm14, 288
    movdqu %xmm15, 272(%rbp)
    .seh_savexmm %xmm15, 272
    movq %rbx, 256(%rbp)
    .seh_savereg %rbx, 256
    movq %r12, 248(%rbp)
    .seh_savereg %r12, 248
    movq %r13, 240(%rbp)
    .seh_savereg %r13, 240
    movq %r14, 232(%rbp)
    .seh_savereg %r14, 232
    .seh_endprologue
    movq %rcx, 464(%rbp)
    movq %rdx, 472(%rbp)
    movq %r8, 480(%rbp)
    movq %r9, 488(%rbp)
    movq 472(%rbp), %rax
    movq %rax, 192(%rbp)
    leaq 192(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 128(%rbp), %r10
    movq %rbx, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_os_15environment_key@SECREL32(%rax), %rax
    movq %rax, %r12
    subq $48, %rsp
    movl $65001, %eax
    movq %rax, 0(%rsp)
    movl $8, %eax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movl $4294967295, %eax
    movq %rax, 24(%rsp)
    movq %r12, %rax
    movq %rax, 32(%rsp)
    movl $32768, %eax
    movq %rax, 40(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call MultiByteToWideChar
    addq $48, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L6_3
.L6_2:
    leaq 104(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq 144(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %r10
    leaq 168(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L6_24
.L6_5:
    jmp .L6_4
.L6_3:
.L6_4:
    subq $32, %rsp
    movl $0, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call SetLastError
    addq $32, %rsp
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_os_16environment_wide@SECREL32(%rax), %rax
    movq %rax, %rbx
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl $32768, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call GetEnvironmentVariableW
    addq $32, %rsp
    movl %eax, %r13d
    movl $32768, %ecx
    cmpl %ecx, %r13d
    setae %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L6_25
    jmp .L6_9
.L6_25:
    movl %r14d, %r12d
    jmp .L6_10
.L6_9:
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L6_11
    jmp .L6_26
.L6_26:
    movl %r12d, %r14d
    jmp .L6_12
.L6_11:
    subq $32, %rsp
    call GetLastError
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L6_12:
    movzbl %r14b, %r12d
.L6_10:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L6_6
    jmp .L6_7
.L6_6:
    leaq 80(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq 144(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %r10
    leaq 168(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L6_24
.L6_13:
    jmp .L6_8
.L6_7:
.L6_8:
    movl $0, %ecx
    cmpl %ecx, %r13d
    jbe .L6_15
.L6_14:
    movl %r13d, %r12d
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_os_16environment_utf8@SECREL32(%rax), %rax
    movq %rax, %r14
    subq $64, %rsp
    movl $65001, %eax
    movq %rax, 0(%rsp)
    movl $128, %eax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movl %r12d, %eax
    movq %rax, 24(%rsp)
    movq %r14, %rax
    movq %rax, 32(%rsp)
    movl $131072, %eax
    movq %rax, 40(%rsp)
    movq $0, %rax
    movq %rax, 48(%rsp)
    movq $0, %rax
    movq %rax, 56(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call WideCharToMultiByte
    addq $64, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L6_18
.L6_17:
    leaq 56(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq 144(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %r10
    leaq 168(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L6_24
.L6_20:
    jmp .L6_19
.L6_18:
.L6_19:
    movl %r12d, %ebx
    jmp .L6_16
.L6_15:
    movl $0, %eax
    movl %eax, %ebx
.L6_16:
    movslq %ebx, %r12
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_os_16environment_utf8@SECREL32(%rax), %rax
    movq %rax, %r13
    movq $131073, %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_40(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r12, %r14
    addq %r13, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq $0, %rax
    cmpq %r12, %rax
    jbe .L6_21
.L6_22:
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_40(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L6_21:
    leaq 40(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    leaq 0(%rbp), %r14
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
    leaq 144(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %rbx, %r10
    leaq 168(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L6_24
.L6_23:
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L6_24:
    leaq 168(%rbp), %rbx
    leaq 208(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %rsi
    movq 264(%rbp), %rdi
    movq $24, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 264(%rbp), %rax
    movq 440(%rbp), %rdi
    movq 432(%rbp), %rsi
    movdqu 416(%rbp), %xmm6
    movdqu 400(%rbp), %xmm7
    movdqu 384(%rbp), %xmm8
    movdqu 368(%rbp), %xmm9
    movdqu 352(%rbp), %xmm10
    movdqu 336(%rbp), %xmm11
    movdqu 320(%rbp), %xmm12
    movdqu 304(%rbp), %xmm13
    movdqu 288(%rbp), %xmm14
    movdqu 272(%rbp), %xmm15
    movq 256(%rbp), %rbx
    movq 248(%rbp), %r12
    movq 240(%rbp), %r13
    movq 232(%rbp), %r14
    leaq 448(%rbp), %rsp
    popq %rbp
    ret
.L6_1:
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_os_7set_env
lb_os_7set_env:
    .seh_proc lb_os_7set_env
    pushq %rbp
    .seh_pushreg %rbp
    subq $672, %rsp
    .seh_stackalloc 672
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 488(%rbp)
    movq %rdi, 664(%rbp)
    .seh_savereg %rdi, 664
    movq %rsi, 656(%rbp)
    .seh_savereg %rsi, 656
    movdqu %xmm6, 640(%rbp)
    .seh_savexmm %xmm6, 640
    movdqu %xmm7, 624(%rbp)
    .seh_savexmm %xmm7, 624
    movdqu %xmm8, 608(%rbp)
    .seh_savexmm %xmm8, 608
    movdqu %xmm9, 592(%rbp)
    .seh_savexmm %xmm9, 592
    movdqu %xmm10, 576(%rbp)
    .seh_savexmm %xmm10, 576
    movdqu %xmm11, 560(%rbp)
    .seh_savexmm %xmm11, 560
    movdqu %xmm12, 544(%rbp)
    .seh_savexmm %xmm12, 544
    movdqu %xmm13, 528(%rbp)
    .seh_savexmm %xmm13, 528
    movdqu %xmm14, 512(%rbp)
    .seh_savexmm %xmm14, 512
    movdqu %xmm15, 496(%rbp)
    .seh_savexmm %xmm15, 496
    movq %rbx, 480(%rbp)
    .seh_savereg %rbx, 480
    movq %r12, 472(%rbp)
    .seh_savereg %r12, 472
    movq %r13, 464(%rbp)
    .seh_savereg %r13, 464
    movq %r14, 456(%rbp)
    .seh_savereg %r14, 456
    movq %r15, 448(%rbp)
    .seh_savereg %r15, 448
    .seh_endprologue
    movq %rcx, 688(%rbp)
    movq %rdx, 696(%rbp)
    movq %r8, 704(%rbp)
    movq %r9, 712(%rbp)
    movq 696(%rbp), %rax
    movq %rax, 400(%rbp)
    movq 704(%rbp), %rax
    movq %rax, 384(%rbp)
    leaq 368(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 400(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_os_failed(%rip), %rax
    movq %rax, 120(%rbp)
    movq 120(%rbp), %r10
    movl (%r10), %r13d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    leaq 320(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_12windows_text_wide
    addq $32, %rsp
    leaq 320(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_2
    jmp .L7_1
.L7_2:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 416(%rbp), %r12
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
    movq 488(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 488(%rbp), %rax
    movq 664(%rbp), %rdi
    movq 656(%rbp), %rsi
    movdqu 640(%rbp), %xmm6
    movdqu 624(%rbp), %xmm7
    movdqu 608(%rbp), %xmm8
    movdqu 592(%rbp), %xmm9
    movdqu 576(%rbp), %xmm10
    movdqu 560(%rbp), %xmm11
    movdqu 544(%rbp), %xmm12
    movdqu 528(%rbp), %xmm13
    movdqu 512(%rbp), %xmm14
    movdqu 496(%rbp), %xmm15
    movq 480(%rbp), %rbx
    movq 472(%rbp), %r12
    movq 464(%rbp), %r13
    movq 456(%rbp), %r14
    movq 448(%rbp), %r15
    leaq 672(%rbp), %rsp
    popq %rbp
    ret
.L7_3:
.L7_1:
    movq %r13, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 304(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 384(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq 120(%rbp), %r10
    movl (%r10), %r15d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl %r15d, %eax
    movq %rax, 16(%rsp)
    leaq 256(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_12windows_text_wide
    addq $32, %rsp
    leaq 256(%rbp), %r15
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_5
    jmp .L7_4
.L7_5:
    movq $16, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, 112(%rbp)
    leaq 416(%rbp), %rax
    movq %rax, 104(%rbp)
    movq 112(%rbp), %r10
    movq 104(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 104(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 96(%rbp)
    movl $1, %eax
    movq 96(%rbp), %r10
    movb %al, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 88(%rbp)
    leaq 240(%rbp), %r13
    movq 8(%rbp), %r10
    movq (%r10), %r12
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_58(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq 88(%rbp), %r10
    movq (%r10), %rbx
    movq 88(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L7_7
    jmp .L7_6
.L7_7:
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $48, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %r14, %r11
    call *%r11
    addq $48, %rsp
.L7_6:
    movq 104(%rbp), %rsi
    movq 488(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 488(%rbp), %rax
    movq 664(%rbp), %rdi
    movq 656(%rbp), %rsi
    movdqu 640(%rbp), %xmm6
    movdqu 624(%rbp), %xmm7
    movdqu 608(%rbp), %xmm8
    movdqu 592(%rbp), %xmm9
    movdqu 576(%rbp), %xmm10
    movdqu 560(%rbp), %xmm11
    movdqu 544(%rbp), %xmm12
    movdqu 528(%rbp), %xmm13
    movdqu 512(%rbp), %xmm14
    movdqu 496(%rbp), %xmm15
    movq 480(%rbp), %rbx
    movq 472(%rbp), %r12
    movq 464(%rbp), %r13
    movq 456(%rbp), %r14
    movq 448(%rbp), %r15
    leaq 672(%rbp), %rsp
    popq %rbp
    ret
.L7_8:
.L7_4:
    movq %r15, %r10
    movq 0(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 8(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 80(%rbp)
    movq 0(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq 80(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call SetEnvironmentVariableW
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L7_10
.L7_9:
    leaq 416(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 120(%rbp), %r10
    movl (%r10), %r15d
    movq 72(%rbp), %r10
    movl %r15d, (%r10)
    leaq .Ltext_25(%rip), %r15
    leaq 224(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq $38, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq 72(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 72(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %rbx
    leaq 208(%rbp), %r15
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_58(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r15, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %r10
    movq %r13, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L7_13
    jmp .L7_12
.L7_13:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r15, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %r12, %r11
    call *%r11
    addq $48, %rsp
.L7_12:
    leaq 192(%rbp), %r12
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_58(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 80(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq 56(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L7_15
    jmp .L7_14
.L7_15:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %rbx, %r11
    call *%r11
    addq $48, %rsp
.L7_14:
    movq 72(%rbp), %rsi
    movq 488(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 488(%rbp), %rax
    movq 664(%rbp), %rdi
    movq 656(%rbp), %rsi
    movdqu 640(%rbp), %xmm6
    movdqu 624(%rbp), %xmm7
    movdqu 608(%rbp), %xmm8
    movdqu 592(%rbp), %xmm9
    movdqu 576(%rbp), %xmm10
    movdqu 560(%rbp), %xmm11
    movdqu 544(%rbp), %xmm12
    movdqu 528(%rbp), %xmm13
    movdqu 512(%rbp), %xmm14
    movdqu 496(%rbp), %xmm15
    movq 480(%rbp), %rbx
    movq 472(%rbp), %r12
    movq 464(%rbp), %r13
    movq 456(%rbp), %r14
    movq 448(%rbp), %r15
    leaq 672(%rbp), %rsp
    popq %rbp
    ret
.L7_16:
    jmp .L7_11
.L7_10:
.L7_11:
    leaq 416(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r13
    leaq 176(%rbp), %r14
    movq 0(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_58(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 24(%rbp)
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq 24(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L7_18
    jmp .L7_17
.L7_18:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %r12, %r11
    call *%r11
    addq $48, %rsp
.L7_17:
    leaq 160(%rbp), %rbx
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_58(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 80(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq %r13, %r10
    movq (%r10), %r12
    movq 16(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L7_20
    jmp .L7_19
.L7_20:
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %r13, %r11
    call *%r11
    addq $48, %rsp
.L7_19:
    movq 48(%rbp), %rsi
    movq 488(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 488(%rbp), %rax
    movq 664(%rbp), %rdi
    movq 656(%rbp), %rsi
    movdqu 640(%rbp), %xmm6
    movdqu 624(%rbp), %xmm7
    movdqu 608(%rbp), %xmm8
    movdqu 592(%rbp), %xmm9
    movdqu 576(%rbp), %xmm10
    movdqu 560(%rbp), %xmm11
    movdqu 544(%rbp), %xmm12
    movdqu 528(%rbp), %xmm13
    movdqu 512(%rbp), %xmm14
    movdqu 496(%rbp), %xmm15
    movq 480(%rbp), %rbx
    movq 472(%rbp), %r12
    movq 464(%rbp), %r13
    movq 456(%rbp), %r14
    movq 448(%rbp), %r15
    leaq 672(%rbp), %rsp
    popq %rbp
    ret
.L7_21:
    leaq 304(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 144(%rbp), %r13
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
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_58(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
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
    jne .L7_23
    jmp .L7_22
.L7_23:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %r12, %r11
    call *%r11
    addq $48, %rsp
.L7_22:
    leaq 368(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 128(%rbp), %r13
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
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_58(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
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
    jne .L7_25
    jmp .L7_24
.L7_25:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %r12, %r11
    call *%r11
    addq $48, %rsp
.L7_24:
    leaq 416(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 488(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 488(%rbp), %rax
    movq 664(%rbp), %rdi
    movq 656(%rbp), %rsi
    movdqu 640(%rbp), %xmm6
    movdqu 624(%rbp), %xmm7
    movdqu 608(%rbp), %xmm8
    movdqu 592(%rbp), %xmm9
    movdqu 576(%rbp), %xmm10
    movdqu 560(%rbp), %xmm11
    movdqu 544(%rbp), %xmm12
    movdqu 528(%rbp), %xmm13
    movdqu 512(%rbp), %xmm14
    movdqu 496(%rbp), %xmm15
    movq 480(%rbp), %rbx
    movq 472(%rbp), %r12
    movq 464(%rbp), %r13
    movq 456(%rbp), %r14
    movq 448(%rbp), %r15
    leaq 672(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_os_9unset_env
lb_os_9unset_env:
    .seh_proc lb_os_9unset_env
    pushq %rbp
    .seh_pushreg %rbp
    subq $464, %rsp
    .seh_stackalloc 464
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 280(%rbp)
    movq %rdi, 456(%rbp)
    .seh_savereg %rdi, 456
    movq %rsi, 448(%rbp)
    .seh_savereg %rsi, 448
    movdqu %xmm6, 432(%rbp)
    .seh_savexmm %xmm6, 432
    movdqu %xmm7, 416(%rbp)
    .seh_savexmm %xmm7, 416
    movdqu %xmm8, 400(%rbp)
    .seh_savexmm %xmm8, 400
    movdqu %xmm9, 384(%rbp)
    .seh_savexmm %xmm9, 384
    movdqu %xmm10, 368(%rbp)
    .seh_savexmm %xmm10, 368
    movdqu %xmm11, 352(%rbp)
    .seh_savexmm %xmm11, 352
    movdqu %xmm12, 336(%rbp)
    .seh_savexmm %xmm12, 336
    movdqu %xmm13, 320(%rbp)
    .seh_savexmm %xmm13, 320
    movdqu %xmm14, 304(%rbp)
    .seh_savexmm %xmm14, 304
    movdqu %xmm15, 288(%rbp)
    .seh_savexmm %xmm15, 288
    movq %rbx, 272(%rbp)
    .seh_savereg %rbx, 272
    movq %r12, 264(%rbp)
    .seh_savereg %r12, 264
    movq %r13, 256(%rbp)
    .seh_savereg %r13, 256
    movq %r14, 248(%rbp)
    .seh_savereg %r14, 248
    movq %r15, 240(%rbp)
    .seh_savereg %r15, 240
    .seh_endprologue
    movq %rcx, 480(%rbp)
    movq %rdx, 488(%rbp)
    movq %r8, 496(%rbp)
    movq %r9, 504(%rbp)
    movq 488(%rbp), %rax
    movq %rax, 192(%rbp)
    leaq 176(%rbp), %r14
    leaq 192(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_os_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r13d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    leaq 128(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_12windows_text_wide
    addq $32, %rsp
    leaq 128(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_2
    jmp .L8_1
.L8_2:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 208(%rbp), %r12
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
    movq 280(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 280(%rbp), %rax
    movq 456(%rbp), %rdi
    movq 448(%rbp), %rsi
    movdqu 432(%rbp), %xmm6
    movdqu 416(%rbp), %xmm7
    movdqu 400(%rbp), %xmm8
    movdqu 384(%rbp), %xmm9
    movdqu 368(%rbp), %xmm10
    movdqu 352(%rbp), %xmm11
    movdqu 336(%rbp), %xmm12
    movdqu 320(%rbp), %xmm13
    movdqu 304(%rbp), %xmm14
    movdqu 288(%rbp), %xmm15
    movq 272(%rbp), %rbx
    movq 264(%rbp), %r12
    movq 256(%rbp), %r13
    movq 248(%rbp), %r14
    movq 240(%rbp), %r15
    leaq 464(%rbp), %rsp
    popq %rbp
    ret
.L8_3:
.L8_1:
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 56(%rbp)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call SetEnvironmentVariableW
    addq $32, %rsp
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L8_7
    jmp .L8_17
.L8_17:
    movl %r15d, %r13d
    jmp .L8_8
.L8_7:
    subq $32, %rsp
    call GetLastError
    addq $32, %rsp
    movl %eax, %r13d
    movl $203, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
.L8_8:
    movzbl %r13b, %r15d
    testl %r15d, %r15d
    jne .L8_4
    jmp .L8_5
.L8_4:
    leaq 208(%rbp), %rax
    movq %rax, 48(%rbp)
    movq %r12, %r10
    movl (%r10), %eax
    movl %eax, 40(%rbp)
    movl 40(%rbp), %eax
    movq 48(%rbp), %r10
    movl %eax, (%r10)
    leaq .Ltext_28(%rip), %rax
    movq %rax, 32(%rbp)
    leaq 112(%rbp), %rbx
    movq 32(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 24(%rbp)
    movq $40, %rax
    movq 24(%rbp), %r10
    movq %rax, (%r10)
    movq 48(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 16(%rbp)
    movq %rbx, %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 48(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %rbx
    leaq 96(%rbp), %rax
    movq %rax, 8(%rbp)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_58(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 56(%rbp), %rax
    movq 8(%rbp), %r10
    movq %rax, (%r10)
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L8_10
    jmp .L8_9
.L8_10:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 8(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %r12, %r11
    call *%r11
    addq $48, %rsp
.L8_9:
    movq 48(%rbp), %rsi
    movq 280(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 280(%rbp), %rax
    movq 456(%rbp), %rdi
    movq 448(%rbp), %rsi
    movdqu 432(%rbp), %xmm6
    movdqu 416(%rbp), %xmm7
    movdqu 400(%rbp), %xmm8
    movdqu 384(%rbp), %xmm9
    movdqu 368(%rbp), %xmm10
    movdqu 352(%rbp), %xmm11
    movdqu 336(%rbp), %xmm12
    movdqu 320(%rbp), %xmm13
    movdqu 304(%rbp), %xmm14
    movdqu 288(%rbp), %xmm15
    movq 272(%rbp), %rbx
    movq 264(%rbp), %r12
    movq 256(%rbp), %r13
    movq 248(%rbp), %r14
    movq 240(%rbp), %r15
    leaq 464(%rbp), %rsp
    popq %rbp
    ret
.L8_11:
    jmp .L8_6
.L8_5:
.L8_6:
    leaq 208(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 80(%rbp), %r13
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_58(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq 56(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq %r12, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L8_13
    jmp .L8_12
.L8_13:
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $48, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %r14, %r11
    call *%r11
    addq $48, %rsp
.L8_12:
    movq 0(%rbp), %rsi
    movq 280(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 280(%rbp), %rax
    movq 456(%rbp), %rdi
    movq 448(%rbp), %rsi
    movdqu 432(%rbp), %xmm6
    movdqu 416(%rbp), %xmm7
    movdqu 400(%rbp), %xmm8
    movdqu 384(%rbp), %xmm9
    movdqu 368(%rbp), %xmm10
    movdqu 352(%rbp), %xmm11
    movdqu 336(%rbp), %xmm12
    movdqu 320(%rbp), %xmm13
    movdqu 304(%rbp), %xmm14
    movdqu 288(%rbp), %xmm15
    movq 272(%rbp), %rbx
    movq 264(%rbp), %r12
    movq 256(%rbp), %r13
    movq 248(%rbp), %r14
    movq 240(%rbp), %r15
    leaq 464(%rbp), %rsp
    popq %rbp
    ret
.L8_14:
    leaq 176(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 64(%rbp), %r13
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
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_58(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
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
    jne .L8_16
    jmp .L8_15
.L8_16:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %r12, %r11
    call *%r11
    addq $48, %rsp
.L8_15:
    leaq 208(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 280(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 280(%rbp), %rax
    movq 456(%rbp), %rdi
    movq 448(%rbp), %rsi
    movdqu 432(%rbp), %xmm6
    movdqu 416(%rbp), %xmm7
    movdqu 400(%rbp), %xmm8
    movdqu 384(%rbp), %xmm9
    movdqu 368(%rbp), %xmm10
    movdqu 352(%rbp), %xmm11
    movdqu 336(%rbp), %xmm12
    movdqu 320(%rbp), %xmm13
    movdqu 304(%rbp), %xmm14
    movdqu 288(%rbp), %xmm15
    movq 272(%rbp), %rbx
    movq 264(%rbp), %r12
    movq 256(%rbp), %r13
    movq 248(%rbp), %r14
    movq 240(%rbp), %r15
    leaq 464(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_os_cwd
lb_os_cwd:
    .seh_proc lb_os_cwd
    pushq %rbp
    .seh_pushreg %rbp
    subq $816, %rsp
    .seh_stackalloc 816
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 632(%rbp)
    movq %rdi, 808(%rbp)
    .seh_savereg %rdi, 808
    movq %rsi, 800(%rbp)
    .seh_savereg %rsi, 800
    movdqu %xmm6, 784(%rbp)
    .seh_savexmm %xmm6, 784
    movdqu %xmm7, 768(%rbp)
    .seh_savexmm %xmm7, 768
    movdqu %xmm8, 752(%rbp)
    .seh_savexmm %xmm8, 752
    movdqu %xmm9, 736(%rbp)
    .seh_savexmm %xmm9, 736
    movdqu %xmm10, 720(%rbp)
    .seh_savexmm %xmm10, 720
    movdqu %xmm11, 704(%rbp)
    .seh_savexmm %xmm11, 704
    movdqu %xmm12, 688(%rbp)
    .seh_savexmm %xmm12, 688
    movdqu %xmm13, 672(%rbp)
    .seh_savexmm %xmm13, 672
    movdqu %xmm14, 656(%rbp)
    .seh_savexmm %xmm14, 656
    movdqu %xmm15, 640(%rbp)
    .seh_savexmm %xmm15, 640
    movq %rbx, 624(%rbp)
    .seh_savereg %rbx, 624
    movq %r12, 616(%rbp)
    .seh_savereg %r12, 616
    movq %r13, 608(%rbp)
    .seh_savereg %r13, 608
    movq %r14, 600(%rbp)
    .seh_savereg %r14, 600
    movq %r15, 592(%rbp)
    .seh_savereg %r15, 592
    .seh_endprologue
    movq %rcx, 832(%rbp)
    movq %rdx, 840(%rbp)
    movq %r8, 848(%rbp)
    movq %r9, 856(%rbp)
    leaq 432(%rbp), %rax
    movq %rax, 32(%rbp)
    leaq 384(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 360(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 160(%rbp)
    movq 8(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 112(%rbp)
    movq 8(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 104(%rbp)
    movq 8(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 152(%rbp)
    leaq .Ltext_49(%rip), %rax
    movq %rax, 144(%rbp)
    movq 152(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 136(%rbp)
    movq 152(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 128(%rbp)
    movq 8(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 120(%rbp)
    movq 8(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 200(%rbp)
    leaq .Ltext_46(%rip), %rax
    movq %rax, 192(%rbp)
    movq 200(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 184(%rbp)
    movq 200(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 176(%rbp)
    movq 8(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 168(%rbp)
    movq 8(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 96(%rbp)
    leaq 232(%rbp), %rax
    movq %rax, 64(%rbp)
    movq 32(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    movq 64(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq $0, %rax
    movq %rax, 40(%rbp)
.L9_5:
    movq 40(%rbp), %rax
    movq $8, %rcx
    cmpq %rcx, %rax
    jae .L9_7
.L9_6:
    subq $32, %rsp
    movl $0, %eax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call GetCurrentDirectoryW
    addq $32, %rsp
    movl %eax, 208(%rbp)
    movl 208(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jne .L9_9
.L9_8:
    jmp .L9_7
.L9_11:
    jmp .L9_10
.L9_9:
.L9_10:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 24(%rbp)
    movl 208(%rbp), %eax
    movl %eax, %eax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movabsq $2305843009213693952, %rcx
    cmpq %rcx, %rax
    jbe .L9_13
.L9_12:
    movl $208273409, %eax
    movq 200(%rbp), %r10
    movl %eax, (%r10)
    movq 192(%rbp), %rax
    movq 184(%rbp), %r10
    movq %rax, (%r10)
    movq $47, %rax
    movq 176(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq 168(%rbp), %r10
    movb %al, (%r10)
    jmp .L9_14
.L9_13:
    movq 16(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq 24(%rbp), %r10
    movq (%r10), %r15
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L9_15
    jmp .L9_16
.L9_16:
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L9_15:
    movq %rbx, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq $2, %rax
    movq %rax, 24(%rsp)
    leaq 360(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r12, %r11
    call *%r11
    addq $32, %rsp
    movq 160(%rbp), %r10
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
    jne .L9_17
    jmp .L9_18
.L9_17:
    movl $208273409, %eax
    movq 152(%rbp), %r10
    movl %eax, (%r10)
    movq 144(%rbp), %rax
    movq 136(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq 128(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq 120(%rbp), %r10
    movb %al, (%r10)
    jmp .L9_14
.L9_18:
    movq 0(%rbp), %r10
    movq (%r10), %rbx
    movq 8(%rbp), %r10
    movq %rbx, (%r10)
    movq 16(%rbp), %rax
    movq 112(%rbp), %r10
    movq %rax, (%r10)
    movl $0, %eax
    movq 104(%rbp), %r10
    movb %al, (%r10)
.L9_14:
    movq 96(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L9_20
    jmp .L9_19
.L9_20:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 448(%rbp), %r12
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
    movq %r12, %r10
    leaq 496(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    jmp .L9_44
.L9_21:
.L9_19:
    movq 8(%rbp), %r10
    movq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 32(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 88(%rbp)
    subq $32, %rsp
    movl 208(%rbp), %eax
    movq %rax, 0(%rsp)
    movq 88(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call GetCurrentDirectoryW
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L9_23
.L9_22:
    leaq 344(%rbp), %r12
    movq 32(%rbp), %rax
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
    leaq .Ltext_58(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 88(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq 24(%rbp), %r10
    movq (%r10), %r13
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L9_26
    jmp .L9_25
.L9_26:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %rbx, %r11
    call *%r11
    addq $48, %rsp
.L9_25:
    jmp .L9_7
.L9_27:
    jmp .L9_24
.L9_23:
.L9_24:
    movl 208(%rbp), %ecx
    cmpl %ecx, %r12d
    jae .L9_29
.L9_28:
    movq 32(%rbp), %rax
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
    leaq .Ltext_40(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r14, %r15
    jb 1f
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_40(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r15, %rax
    jbe .L9_31
.L9_32:
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_40(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L9_31:
    leaq 328(%rbp), %r12
    movq 88(%rbp), %rax
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
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movl %r14d, %eax
    movq %rax, 16(%rsp)
    leaq 280(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_12windows_text_narrow
    addq $48, %rsp
    leaq 280(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L9_34
    jmp .L9_33
.L9_34:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq 448(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 80(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 264(%rbp), %rbx
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_58(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 88(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq 24(%rbp), %r10
    movq (%r10), %r12
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L9_36
    jmp .L9_35
.L9_36:
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %r13, %r11
    call *%r11
    addq $48, %rsp
.L9_35:
    movq 80(%rbp), %r10
    leaq 496(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    jmp .L9_44
.L9_37:
.L9_33:
    leaq 448(%rbp), %rax
    movq %rax, 72(%rbp)
    movq %r14, %r10
    movq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 72(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 248(%rbp), %r12
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_58(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq 88(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq 24(%rbp), %r10
    movq (%r10), %rbx
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L9_39
    jmp .L9_38
.L9_39:
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $48, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %r13, %r11
    call *%r11
    addq $48, %rsp
.L9_38:
    movq 72(%rbp), %r10
    leaq 496(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    jmp .L9_44
.L9_40:
    jmp .L9_30
.L9_29:
.L9_30:
    movq 40(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 56(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_58(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 88(%rbp), %rax
    movq 64(%rbp), %r10
    movq %rax, (%r10)
    movq 48(%rbp), %r10
    movq %r12, (%r10)
    movq 24(%rbp), %r10
    movq (%r10), %r12
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L9_42
    jmp .L9_41
.L9_42:
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 64(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %r14, %r11
    call *%r11
    addq $48, %rsp
.L9_41:
    movq %rbx, %rax
    movq %rax, 40(%rbp)
    jmp .L9_5
.L9_7:
    leaq 448(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_os_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_53(%rip), %r13
    leaq 216(%rbp), %r14
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
    movq %rbx, %r10
    leaq 496(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    jmp .L9_44
.L9_43:
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L9_44:
    leaq 496(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L9_2
    jmp .L9_1
.L9_2:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 544(%rbp), %r13
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
    movq 632(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 632(%rbp), %rax
    movq 808(%rbp), %rdi
    movq 800(%rbp), %rsi
    movdqu 784(%rbp), %xmm6
    movdqu 768(%rbp), %xmm7
    movdqu 752(%rbp), %xmm8
    movdqu 736(%rbp), %xmm9
    movdqu 720(%rbp), %xmm10
    movdqu 704(%rbp), %xmm11
    movdqu 688(%rbp), %xmm12
    movdqu 672(%rbp), %xmm13
    movdqu 656(%rbp), %xmm14
    movdqu 640(%rbp), %xmm15
    movq 624(%rbp), %rbx
    movq 616(%rbp), %r12
    movq 608(%rbp), %r13
    movq 600(%rbp), %r14
    movq 592(%rbp), %r15
    leaq 816(%rbp), %rsp
    popq %rbp
    ret
.L9_3:
.L9_1:
    leaq 544(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 632(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 632(%rbp), %rax
    movq 808(%rbp), %rdi
    movq 800(%rbp), %rsi
    movdqu 784(%rbp), %xmm6
    movdqu 768(%rbp), %xmm7
    movdqu 752(%rbp), %xmm8
    movdqu 736(%rbp), %xmm9
    movdqu 720(%rbp), %xmm10
    movdqu 704(%rbp), %xmm11
    movdqu 688(%rbp), %xmm12
    movdqu 672(%rbp), %xmm13
    movdqu 656(%rbp), %xmm14
    movdqu 640(%rbp), %xmm15
    movq 624(%rbp), %rbx
    movq 616(%rbp), %r12
    movq 608(%rbp), %r13
    movq 600(%rbp), %r14
    movq 592(%rbp), %r15
    leaq 816(%rbp), %rsp
    popq %rbp
    ret
.L9_4:
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_os_10change_dir
lb_os_10change_dir:
    .seh_proc lb_os_10change_dir
    pushq %rbp
    .seh_pushreg %rbp
    subq $464, %rsp
    .seh_stackalloc 464
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 280(%rbp)
    movq %rdi, 456(%rbp)
    .seh_savereg %rdi, 456
    movq %rsi, 448(%rbp)
    .seh_savereg %rsi, 448
    movdqu %xmm6, 432(%rbp)
    .seh_savexmm %xmm6, 432
    movdqu %xmm7, 416(%rbp)
    .seh_savexmm %xmm7, 416
    movdqu %xmm8, 400(%rbp)
    .seh_savexmm %xmm8, 400
    movdqu %xmm9, 384(%rbp)
    .seh_savexmm %xmm9, 384
    movdqu %xmm10, 368(%rbp)
    .seh_savexmm %xmm10, 368
    movdqu %xmm11, 352(%rbp)
    .seh_savexmm %xmm11, 352
    movdqu %xmm12, 336(%rbp)
    .seh_savexmm %xmm12, 336
    movdqu %xmm13, 320(%rbp)
    .seh_savexmm %xmm13, 320
    movdqu %xmm14, 304(%rbp)
    .seh_savexmm %xmm14, 304
    movdqu %xmm15, 288(%rbp)
    .seh_savexmm %xmm15, 288
    movq %rbx, 272(%rbp)
    .seh_savereg %rbx, 272
    movq %r12, 264(%rbp)
    .seh_savereg %r12, 264
    movq %r13, 256(%rbp)
    .seh_savereg %r13, 256
    movq %r14, 248(%rbp)
    .seh_savereg %r14, 248
    movq %r15, 240(%rbp)
    .seh_savereg %r15, 240
    .seh_endprologue
    movq %rcx, 480(%rbp)
    movq %rdx, 488(%rbp)
    movq %r8, 496(%rbp)
    movq %r9, 504(%rbp)
    movq 488(%rbp), %rax
    movq %rax, 192(%rbp)
    leaq 176(%rbp), %r14
    leaq 192(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_os_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r13d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    leaq 128(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_12windows_text_wide
    addq $32, %rsp
    leaq 128(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L10_2
    jmp .L10_1
.L10_2:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 208(%rbp), %r12
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
    movq 280(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 280(%rbp), %rax
    movq 456(%rbp), %rdi
    movq 448(%rbp), %rsi
    movdqu 432(%rbp), %xmm6
    movdqu 416(%rbp), %xmm7
    movdqu 400(%rbp), %xmm8
    movdqu 384(%rbp), %xmm9
    movdqu 368(%rbp), %xmm10
    movdqu 352(%rbp), %xmm11
    movdqu 336(%rbp), %xmm12
    movdqu 320(%rbp), %xmm13
    movdqu 304(%rbp), %xmm14
    movdqu 288(%rbp), %xmm15
    movq 272(%rbp), %rbx
    movq 264(%rbp), %r12
    movq 256(%rbp), %r13
    movq 248(%rbp), %r14
    movq 240(%rbp), %r15
    leaq 464(%rbp), %rsp
    popq %rbp
    ret
.L10_3:
.L10_1:
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 56(%rbp)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call SetCurrentDirectoryW
    addq $32, %rsp
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L10_5
.L10_4:
    leaq 208(%rbp), %rax
    movq %rax, 48(%rbp)
    movq %r12, %r10
    movl (%r10), %eax
    movl %eax, 40(%rbp)
    movl 40(%rbp), %eax
    movq 48(%rbp), %r10
    movl %eax, (%r10)
    leaq .Ltext_32(%rip), %rax
    movq %rax, 32(%rbp)
    leaq 112(%rbp), %rbx
    movq 32(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 24(%rbp)
    movq $31, %rax
    movq 24(%rbp), %r10
    movq %rax, (%r10)
    movq 48(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 16(%rbp)
    movq %rbx, %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 48(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %rbx
    leaq 96(%rbp), %rax
    movq %rax, 8(%rbp)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_58(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 56(%rbp), %rax
    movq 8(%rbp), %r10
    movq %rax, (%r10)
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L10_8
    jmp .L10_7
.L10_8:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 8(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %r12, %r11
    call *%r11
    addq $48, %rsp
.L10_7:
    movq 48(%rbp), %rsi
    movq 280(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 280(%rbp), %rax
    movq 456(%rbp), %rdi
    movq 448(%rbp), %rsi
    movdqu 432(%rbp), %xmm6
    movdqu 416(%rbp), %xmm7
    movdqu 400(%rbp), %xmm8
    movdqu 384(%rbp), %xmm9
    movdqu 368(%rbp), %xmm10
    movdqu 352(%rbp), %xmm11
    movdqu 336(%rbp), %xmm12
    movdqu 320(%rbp), %xmm13
    movdqu 304(%rbp), %xmm14
    movdqu 288(%rbp), %xmm15
    movq 272(%rbp), %rbx
    movq 264(%rbp), %r12
    movq 256(%rbp), %r13
    movq 248(%rbp), %r14
    movq 240(%rbp), %r15
    leaq 464(%rbp), %rsp
    popq %rbp
    ret
.L10_9:
    jmp .L10_6
.L10_5:
.L10_6:
    leaq 208(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 80(%rbp), %r13
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_58(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq 56(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq %r12, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L10_11
    jmp .L10_10
.L10_11:
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $48, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %r14, %r11
    call *%r11
    addq $48, %rsp
.L10_10:
    movq 0(%rbp), %rsi
    movq 280(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 280(%rbp), %rax
    movq 456(%rbp), %rdi
    movq 448(%rbp), %rsi
    movdqu 432(%rbp), %xmm6
    movdqu 416(%rbp), %xmm7
    movdqu 400(%rbp), %xmm8
    movdqu 384(%rbp), %xmm9
    movdqu 368(%rbp), %xmm10
    movdqu 352(%rbp), %xmm11
    movdqu 336(%rbp), %xmm12
    movdqu 320(%rbp), %xmm13
    movdqu 304(%rbp), %xmm14
    movdqu 288(%rbp), %xmm15
    movq 272(%rbp), %rbx
    movq 264(%rbp), %r12
    movq 256(%rbp), %r13
    movq 248(%rbp), %r14
    movq 240(%rbp), %r15
    leaq 464(%rbp), %rsp
    popq %rbp
    ret
.L10_12:
    leaq 176(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 64(%rbp), %r13
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
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_58(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
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
    jne .L10_14
    jmp .L10_13
.L10_14:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %r12, %r11
    call *%r11
    addq $48, %rsp
.L10_13:
    leaq 208(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 280(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 280(%rbp), %rax
    movq 456(%rbp), %rdi
    movq 448(%rbp), %rsi
    movdqu 432(%rbp), %xmm6
    movdqu 416(%rbp), %xmm7
    movdqu 400(%rbp), %xmm8
    movdqu 384(%rbp), %xmm9
    movdqu 368(%rbp), %xmm10
    movdqu 352(%rbp), %xmm11
    movdqu 336(%rbp), %xmm12
    movdqu 320(%rbp), %xmm13
    movdqu 304(%rbp), %xmm14
    movdqu 288(%rbp), %xmm15
    movq 272(%rbp), %rbx
    movq 264(%rbp), %r12
    movq 256(%rbp), %r13
    movq 248(%rbp), %r14
    movq 240(%rbp), %r15
    leaq 464(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_os_pid
lb_os_pid:
    .seh_proc lb_os_pid
    pushq %rbp
    .seh_pushreg %rbp
    subq $192, %rsp
    .seh_stackalloc 192
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 184(%rbp)
    .seh_savereg %rdi, 184
    movq %rsi, 176(%rbp)
    .seh_savereg %rsi, 176
    movdqu %xmm6, 160(%rbp)
    .seh_savexmm %xmm6, 160
    movdqu %xmm7, 144(%rbp)
    .seh_savexmm %xmm7, 144
    movdqu %xmm8, 128(%rbp)
    .seh_savexmm %xmm8, 128
    movdqu %xmm9, 112(%rbp)
    .seh_savexmm %xmm9, 112
    movdqu %xmm10, 96(%rbp)
    .seh_savexmm %xmm10, 96
    movdqu %xmm11, 80(%rbp)
    .seh_savexmm %xmm11, 80
    movdqu %xmm12, 64(%rbp)
    .seh_savexmm %xmm12, 64
    movdqu %xmm13, 48(%rbp)
    .seh_savexmm %xmm13, 48
    movdqu %xmm14, 32(%rbp)
    .seh_savexmm %xmm14, 32
    movdqu %xmm15, 16(%rbp)
    .seh_savexmm %xmm15, 16
    movq %rbx, 8(%rbp)
    .seh_savereg %rbx, 8
    .seh_endprologue
    movq %rcx, 208(%rbp)
    movq %rdx, 216(%rbp)
    movq %r8, 224(%rbp)
    movq %r9, 232(%rbp)
    subq $32, %rsp
    call GetCurrentProcessId
    addq $32, %rsp
    movl %eax, %ebx
    movl %ebx, %ebx
    movl %ebx, %eax
    movq 184(%rbp), %rdi
    movq 176(%rbp), %rsi
    movdqu 160(%rbp), %xmm6
    movdqu 144(%rbp), %xmm7
    movdqu 128(%rbp), %xmm8
    movdqu 112(%rbp), %xmm9
    movdqu 96(%rbp), %xmm10
    movdqu 80(%rbp), %xmm11
    movdqu 64(%rbp), %xmm12
    movdqu 48(%rbp), %xmm13
    movdqu 32(%rbp), %xmm14
    movdqu 16(%rbp), %xmm15
    movq 8(%rbp), %rbx
    leaq 192(%rbp), %rsp
    popq %rbp
    ret
.L11_1:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_os_10parent_pid
lb_os_10parent_pid:
    .seh_proc lb_os_10parent_pid
    pushq %rbp
    .seh_pushreg %rbp
    subq $816, %rsp
    .seh_stackalloc 816
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 808(%rbp)
    .seh_savereg %rdi, 808
    movq %rsi, 800(%rbp)
    .seh_savereg %rsi, 800
    movdqu %xmm6, 784(%rbp)
    .seh_savexmm %xmm6, 784
    movdqu %xmm7, 768(%rbp)
    .seh_savexmm %xmm7, 768
    movdqu %xmm8, 752(%rbp)
    .seh_savexmm %xmm8, 752
    movdqu %xmm9, 736(%rbp)
    .seh_savexmm %xmm9, 736
    movdqu %xmm10, 720(%rbp)
    .seh_savexmm %xmm10, 720
    movdqu %xmm11, 704(%rbp)
    .seh_savexmm %xmm11, 704
    movdqu %xmm12, 688(%rbp)
    .seh_savexmm %xmm12, 688
    movdqu %xmm13, 672(%rbp)
    .seh_savexmm %xmm13, 672
    movdqu %xmm14, 656(%rbp)
    .seh_savexmm %xmm14, 656
    movdqu %xmm15, 640(%rbp)
    .seh_savexmm %xmm15, 640
    movq %rbx, 632(%rbp)
    .seh_savereg %rbx, 632
    movq %r12, 624(%rbp)
    .seh_savereg %r12, 624
    movq %r13, 616(%rbp)
    .seh_savereg %r13, 616
    movq %r14, 608(%rbp)
    .seh_savereg %r14, 608
    movq %r15, 600(%rbp)
    .seh_savereg %r15, 600
    .seh_endprologue
    movq %rcx, 832(%rbp)
    movq %rdx, 840(%rbp)
    movq %r8, 848(%rbp)
    movq %r9, 856(%rbp)
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movl $0, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call CreateToolhelp32Snapshot
    addq $32, %rsp
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    testq %rax, %rax
    jne .L12_2
    jmp .L12_3
.L12_3:
    leaq .Ltext_56(%rip), %rdi
    leaq .Ltext_55(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L12_2:
    movq 16(%rbp), %rax
    movq $-1, %rcx
    cmpq %rcx, %rax
    jne .L12_5
.L12_4:
    movl $0, %eax
    leaq 24(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, 8(%rbp)
    jmp .L12_16
.L12_7:
    jmp .L12_6
.L12_5:
.L12_6:
    leaq 32(%rbp), %r12
    movq %r12, %rdi
    xorl %esi, %esi
    movq $568, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memset
    addq $32, %rsp
    movl $568, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call Process32FirstW
    addq $32, %rsp
    movl %eax, %r13d
    subq $32, %rsp
    call GetCurrentProcessId
    addq $32, %rsp
    movl %eax, %r14d
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
.L12_8:
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L12_10
.L12_9:
    movq %r15, %r10
    movl (%r10), %ebx
    cmpl %ebx, %r14d
    jne .L12_12
.L12_11:
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    leaq 24(%rbp), %r10
    movl %ebx, (%r10)
    movl %ebx, %eax
    movl %eax, 8(%rbp)
    jmp .L12_16
.L12_14:
    jmp .L12_13
.L12_12:
.L12_13:
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call Process32NextW
    addq $32, %rsp
    movl %eax, %r13d
    jmp .L12_8
.L12_10:
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %eax
    leaq 24(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, 8(%rbp)
    jmp .L12_16
.L12_15:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_57(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L12_16:
    movl 8(%rbp), %eax
    movq 808(%rbp), %rdi
    movq 800(%rbp), %rsi
    movdqu 784(%rbp), %xmm6
    movdqu 768(%rbp), %xmm7
    movdqu 752(%rbp), %xmm8
    movdqu 736(%rbp), %xmm9
    movdqu 720(%rbp), %xmm10
    movdqu 704(%rbp), %xmm11
    movdqu 688(%rbp), %xmm12
    movdqu 672(%rbp), %xmm13
    movdqu 656(%rbp), %xmm14
    movdqu 640(%rbp), %xmm15
    movq 632(%rbp), %rbx
    movq 624(%rbp), %r12
    movq 616(%rbp), %r13
    movq 608(%rbp), %r14
    movq 600(%rbp), %r15
    leaq 816(%rbp), %rsp
    popq %rbp
    ret
.L12_1:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_os_hostname
lb_os_hostname:
    .seh_proc lb_os_hostname
    pushq %rbp
    .seh_pushreg %rbp
    subq $864, %rsp
    .seh_stackalloc 864
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 680(%rbp)
    movq %rdi, 856(%rbp)
    .seh_savereg %rdi, 856
    movq %rsi, 848(%rbp)
    .seh_savereg %rsi, 848
    movdqu %xmm6, 832(%rbp)
    .seh_savexmm %xmm6, 832
    movdqu %xmm7, 816(%rbp)
    .seh_savexmm %xmm7, 816
    movdqu %xmm8, 800(%rbp)
    .seh_savexmm %xmm8, 800
    movdqu %xmm9, 784(%rbp)
    .seh_savexmm %xmm9, 784
    movdqu %xmm10, 768(%rbp)
    .seh_savexmm %xmm10, 768
    movdqu %xmm11, 752(%rbp)
    .seh_savexmm %xmm11, 752
    movdqu %xmm12, 736(%rbp)
    .seh_savexmm %xmm12, 736
    movdqu %xmm13, 720(%rbp)
    .seh_savexmm %xmm13, 720
    movdqu %xmm14, 704(%rbp)
    .seh_savexmm %xmm14, 704
    movdqu %xmm15, 688(%rbp)
    .seh_savexmm %xmm15, 688
    movq %rbx, 672(%rbp)
    .seh_savereg %rbx, 672
    movq %r12, 664(%rbp)
    .seh_savereg %r12, 664
    movq %r13, 656(%rbp)
    .seh_savereg %r13, 656
    movq %r14, 648(%rbp)
    .seh_savereg %r14, 648
    .seh_endprologue
    movq %rcx, 880(%rbp)
    movq %rdx, 888(%rbp)
    movq %r8, 896(%rbp)
    movq %r9, 904(%rbp)
    leaq 88(%rbp), %rbx
    movq %rbx, %rdi
    xorl %esi, %esi
    movq $512, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memset
    addq $32, %rsp
    leaq 84(%rbp), %r12
    movl $256, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call GetComputerNameW
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L13_2
.L13_1:
    leaq 600(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_os_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_38(%rip), %r13
    leaq 64(%rbp), %r14
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
    movq 680(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 680(%rbp), %rax
    movq 856(%rbp), %rdi
    movq 848(%rbp), %rsi
    movdqu 832(%rbp), %xmm6
    movdqu 816(%rbp), %xmm7
    movdqu 800(%rbp), %xmm8
    movdqu 784(%rbp), %xmm9
    movdqu 768(%rbp), %xmm10
    movdqu 752(%rbp), %xmm11
    movdqu 736(%rbp), %xmm12
    movdqu 720(%rbp), %xmm13
    movdqu 704(%rbp), %xmm14
    movdqu 688(%rbp), %xmm15
    movq 672(%rbp), %rbx
    movq 664(%rbp), %r12
    movq 656(%rbp), %r13
    movq 648(%rbp), %r14
    leaq 864(%rbp), %rsp
    popq %rbp
    ret
.L13_4:
    jmp .L13_3
.L13_2:
.L13_3:
    movq %r12, %r10
    movl (%r10), %r13d
    movl %r13d, %r14d
    movq $257, %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_40(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r14, %rax
    jbe .L13_5
.L13_6:
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_40(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L13_5:
    leaq 48(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    leaq lb_os_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_12windows_text_narrow
    addq $48, %rsp
    leaq 0(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L13_8
    jmp .L13_7
.L13_8:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 600(%rbp), %r12
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
    movq 680(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 680(%rbp), %rax
    movq 856(%rbp), %rdi
    movq 848(%rbp), %rsi
    movdqu 832(%rbp), %xmm6
    movdqu 816(%rbp), %xmm7
    movdqu 800(%rbp), %xmm8
    movdqu 784(%rbp), %xmm9
    movdqu 768(%rbp), %xmm10
    movdqu 752(%rbp), %xmm11
    movdqu 736(%rbp), %xmm12
    movdqu 720(%rbp), %xmm13
    movdqu 704(%rbp), %xmm14
    movdqu 688(%rbp), %xmm15
    movq 672(%rbp), %rbx
    movq 664(%rbp), %r12
    movq 656(%rbp), %r13
    movq 648(%rbp), %r14
    leaq 864(%rbp), %rsp
    popq %rbp
    ret
.L13_9:
.L13_7:
    leaq 600(%rbp), %rbx
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
    movq 680(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 680(%rbp), %rax
    movq 856(%rbp), %rdi
    movq 848(%rbp), %rsi
    movdqu 832(%rbp), %xmm6
    movdqu 816(%rbp), %xmm7
    movdqu 800(%rbp), %xmm8
    movdqu 784(%rbp), %xmm9
    movdqu 768(%rbp), %xmm10
    movdqu 752(%rbp), %xmm11
    movdqu 736(%rbp), %xmm12
    movdqu 720(%rbp), %xmm13
    movdqu 704(%rbp), %xmm14
    movdqu 688(%rbp), %xmm15
    movq 672(%rbp), %rbx
    movq 664(%rbp), %r12
    movq 656(%rbp), %r13
    movq 648(%rbp), %r14
    leaq 864(%rbp), %rsp
    popq %rbp
    ret
.L13_10:
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_os_exit
lb_os_exit:
    .seh_proc lb_os_exit
    pushq %rbp
    .seh_pushreg %rbp
    subq $208, %rsp
    .seh_stackalloc 208
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 200(%rbp)
    .seh_savereg %rdi, 200
    movq %rsi, 192(%rbp)
    .seh_savereg %rsi, 192
    movdqu %xmm6, 176(%rbp)
    .seh_savexmm %xmm6, 176
    movdqu %xmm7, 160(%rbp)
    .seh_savexmm %xmm7, 160
    movdqu %xmm8, 144(%rbp)
    .seh_savexmm %xmm8, 144
    movdqu %xmm9, 128(%rbp)
    .seh_savexmm %xmm9, 128
    movdqu %xmm10, 112(%rbp)
    .seh_savexmm %xmm10, 112
    movdqu %xmm11, 96(%rbp)
    .seh_savexmm %xmm11, 96
    movdqu %xmm12, 80(%rbp)
    .seh_savexmm %xmm12, 80
    movdqu %xmm13, 64(%rbp)
    .seh_savexmm %xmm13, 64
    movdqu %xmm14, 48(%rbp)
    .seh_savexmm %xmm14, 48
    movdqu %xmm15, 32(%rbp)
    .seh_savexmm %xmm15, 32
    movq %rbx, 24(%rbp)
    .seh_savereg %rbx, 24
    .seh_endprologue
    movq %rcx, 224(%rbp)
    movq %rdx, 232(%rbp)
    movq %r8, 240(%rbp)
    movq %r9, 248(%rbp)
    movq 224(%rbp), %rax
    movl %eax, 8(%rbp)
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call exit
    addq $32, %rsp
    movq 200(%rbp), %rdi
    movq 192(%rbp), %rsi
    movdqu 176(%rbp), %xmm6
    movdqu 160(%rbp), %xmm7
    movdqu 144(%rbp), %xmm8
    movdqu 128(%rbp), %xmm9
    movdqu 112(%rbp), %xmm10
    movdqu 96(%rbp), %xmm11
    movdqu 80(%rbp), %xmm12
    movdqu 64(%rbp), %xmm13
    movdqu 48(%rbp), %xmm14
    movdqu 32(%rbp), %xmm15
    movq 24(%rbp), %rbx
    leaq 208(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_os_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/os/module.lucb:28:9"
.Ltext_1:
    .asciz "src/std/os/module.lucb:31:13"
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
    .asciz "src/std/os/module.lucb:92:9"
.Ltext_22:
    .asciz "src/std/os/module.lucb:100:9"
.Ltext_23:
    .asciz "src/std/os/module.lucb:107:9"
.Ltext_24:
    .asciz "src/std/os/module.lucb:116:9"
.Ltext_25:
    .asciz "the environment variable cannot be set"
.Ltext_26:
    .asciz "src/std/os/module.lucb:119:13"
.Ltext_27:
    .asciz "src/std/os/module.lucb:120:9"
.Ltext_28:
    .asciz "the environment variable cannot be unset"
.Ltext_29:
    .asciz "src/std/os/module.lucb:129:13"
.Ltext_30:
    .asciz "src/std/os/module.lucb:130:9"
.Ltext_31:
    .asciz "src/std/os/module.lucb:137:9"
.Ltext_32:
    .asciz "the directory cannot be entered"
.Ltext_33:
    .asciz "src/std/os/module.lucb:151:13"
.Ltext_34:
    .asciz "src/std/os/module.lucb:152:9"
.Ltext_35:
    .asciz "src/std/os/module.lucb:158:9"
.Ltext_36:
    .asciz "src/std/os/module.lucb:163:9"
.Ltext_37:
    .asciz "src/std/os/module.lucb:171:9"
.Ltext_38:
    .asciz "the host name cannot be read"
.Ltext_39:
    .asciz "src/std/os/module.lucb:173:9"
.Ltext_40:
    .asciz "index out of bounds"
.Ltext_41:
    .asciz "src/std/os/windows.lucb:29:5"
.Ltext_42:
    .asciz "src/std/os/windows.lucb:32:5"
.Ltext_43:
    .asciz "src/std/os/windows.lucb:37:9"
.Ltext_44:
    .asciz "src/std/os/windows.lucb:40:5"
.Ltext_45:
    .asciz "src/std/os/windows.lucb:41:5"
.Ltext_46:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_47:
    .asciz "memory.unset"
.Ltext_48:
    .asciz "src/std/os/windows.lucb:49:9"
.Ltext_49:
    .asciz "memory.exhausted"
.Ltext_50:
    .asciz "src/std/os/windows.lucb:53:13"
.Ltext_51:
    .asciz "src/std/os/windows.lucb:55:13"
.Ltext_52:
    .asciz "src/std/os/windows.lucb:56:9"
.Ltext_53:
    .asciz "the working directory cannot be read"
.Ltext_54:
    .asciz "src/std/os/windows.lucb:57:5"
.Ltext_55:
    .asciz "null_foreign"
.Ltext_56:
    .asciz "src/std/os/windows.lucb:60:5"
.Ltext_57:
    .asciz "src/std/os/windows.lucb:72:5"
.Ltext_58:
    .asciz "integer overflow"

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_os_failed
    .p2align 2
lb_os_failed:
    .zero 4

    .bss
    .globl lb_os_arm64
    .p2align 0
lb_os_arm64:
    .zero 1

    .bss
    .globl lb_os_6x86_64
    .p2align 0
lb_os_6x86_64:
    .zero 1

    .bss
    .globl lb_os_macos
    .p2align 0
lb_os_macos:
    .zero 1

    .bss
    .globl lb_os_linux
    .p2align 0
lb_os_linux:
    .zero 1

    .bss
    .globl lb_os_windows
    .p2align 0
lb_os_windows:
    .zero 1

    .bss
    .globl lb_os_posix
    .p2align 0
lb_os_posix:
    .zero 1

    .bss
    .globl lb_os_12pointer_bits
    .p2align 2
lb_os_12pointer_bits:
    .zero 4

    .bss
    .globl lb_os_name
    .p2align 3
lb_os_name:
    .zero 16

    .bss
    .globl lb_os_9cpu_level
    .p2align 2
lb_os_9cpu_level:
    .zero 4

    .bss
    .globl lb_os_17processors_online
    .p2align 2
lb_os_17processors_online:
    .zero 4

    .section .tls$LUCE,"dw"
    .globl lb_os_16environment_wide
    .p2align 1
lb_os_16environment_wide:
    .zero 65536

    .section .tls$LUCE,"dw"
    .globl lb_os_16environment_utf8
    .p2align 0
lb_os_16environment_utf8:
    .zero 131073

    .section .tls$LUCE,"dw"
    .globl lb_os_15environment_key
    .p2align 1
lb_os_15environment_key:
    .zero 65536
