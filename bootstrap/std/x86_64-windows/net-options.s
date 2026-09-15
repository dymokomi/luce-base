    .text

    .p2align 4
    .globl lb_net_options_0init
lb_net_options_0init:
    .seh_proc lb_net_options_0init
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
    leaq lb_net_16nonblocking_flag(%rip), %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq %rbx, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L0_19
    jmp .L0_7
.L0_19:
    movl %r13d, %r12d
    jmp .L0_8
.L0_7:
    leaq lb_platform_windows(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
.L0_8:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L0_4
    jmp .L0_5
.L0_4:
    movl $4098, %eax
    movl %eax, %r12d
    jmp .L0_6
.L0_5:
    movl $8, %eax
    movl %eax, %r12d
.L0_6:
    leaq lb_net_21receive_buffer_option(%rip), %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq %rbx, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L0_20
    jmp .L0_12
.L0_20:
    movl %r13d, %r12d
    jmp .L0_13
.L0_12:
    leaq lb_platform_windows(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
.L0_13:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L0_9
    jmp .L0_10
.L0_9:
    movl $4097, %eax
    movl %eax, %r12d
    jmp .L0_11
.L0_10:
    movl $7, %eax
    movl %eax, %r12d
.L0_11:
    leaq lb_net_18send_buffer_option(%rip), %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq %rbx, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L0_21
    jmp .L0_17
.L0_21:
    movl %r13d, %ebx
    jmp .L0_18
.L0_17:
    leaq lb_platform_windows(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
.L0_18:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L0_14
    jmp .L0_15
.L0_14:
    movl $8, %eax
    movl %eax, %ebx
    jmp .L0_16
.L0_15:
    movl $9, %eax
    movl %eax, %ebx
.L0_16:
    leaq lb_net_16keepalive_option(%rip), %r12
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
    .globl lb_net_15set_nonblocking
lb_net_15set_nonblocking:
    .seh_proc lb_net_15set_nonblocking
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
    .seh_endprologue
    movq %rcx, 320(%rbp)
    movq %rdx, 328(%rbp)
    movq %r8, 336(%rbp)
    movq %r9, 344(%rbp)
    movq 328(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 336(%rbp), %rax
    movl %eax, 32(%rbp)
    leaq 28(%rbp), %r12
    leaq 32(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_1
    jmp .L1_2
.L1_1:
    movl $1, %eax
    movl %eax, %ebx
    jmp .L1_3
.L1_2:
    movl $0, %eax
    movl %eax, %ebx
.L1_3:
    movq %r12, %r10
    movl %ebx, (%r10)
    leaq 48(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movl $2147772030, %eax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call ioctlsocket
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L1_5
.L1_4:
    leaq 64(%rbp), %rbx
    subq $32, %rsp
    call lb_net_12socket_errno
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_net_12socket_error
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_3(%rip), %r12
    leaq 8(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $44, %rax
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L1_7:
    jmp .L1_6
.L1_5:
.L1_6:
    leaq 64(%rbp), %rbx
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L1_8:
    leaq 64(%rbp), %rbx
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_net_18get_socket_integer
lb_net_18get_socket_integer:
    .seh_proc lb_net_18get_socket_integer
    pushq %rbp
    .seh_pushreg %rbp
    subq $400, %rsp
    .seh_stackalloc 400
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 216(%rbp)
    movq %rdi, 392(%rbp)
    .seh_savereg %rdi, 392
    movq %rsi, 384(%rbp)
    .seh_savereg %rsi, 384
    movdqu %xmm6, 368(%rbp)
    .seh_savexmm %xmm6, 368
    movdqu %xmm7, 352(%rbp)
    .seh_savexmm %xmm7, 352
    movdqu %xmm8, 336(%rbp)
    .seh_savexmm %xmm8, 336
    movdqu %xmm9, 320(%rbp)
    .seh_savexmm %xmm9, 320
    movdqu %xmm10, 304(%rbp)
    .seh_savexmm %xmm10, 304
    movdqu %xmm11, 288(%rbp)
    .seh_savexmm %xmm11, 288
    movdqu %xmm12, 272(%rbp)
    .seh_savexmm %xmm12, 272
    movdqu %xmm13, 256(%rbp)
    .seh_savexmm %xmm13, 256
    movdqu %xmm14, 240(%rbp)
    .seh_savexmm %xmm14, 240
    movdqu %xmm15, 224(%rbp)
    .seh_savexmm %xmm15, 224
    movq %rbx, 208(%rbp)
    .seh_savereg %rbx, 208
    movq %r12, 200(%rbp)
    .seh_savereg %r12, 200
    movq %r13, 192(%rbp)
    .seh_savereg %r13, 192
    movq %r14, 184(%rbp)
    .seh_savereg %r14, 184
    movq %r15, 176(%rbp)
    .seh_savereg %r15, 176
    .seh_endprologue
    movq %rcx, 416(%rbp)
    movq %rdx, 424(%rbp)
    movq %r8, 432(%rbp)
    movq %r9, 440(%rbp)
    movq 424(%rbp), %rax
    movq %rax, 120(%rbp)
    movq 432(%rbp), %rax
    movl %eax, 104(%rbp)
    movq 440(%rbp), %rax
    movl %eax, 88(%rbp)
    leaq 84(%rbp), %rax
    movq %rax, 40(%rbp)
    movl $0, %eax
    movq 40(%rbp), %r10
    movl %eax, (%r10)
    leaq 80(%rbp), %r12
    movl $4, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq 120(%rbp), %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    leaq 104(%rbp), %r14
    movq %r14, %r10
    movslq (%r10), %rax
    movq %rax, 16(%rbp)
    leaq 88(%rbp), %r15
    movq %r15, %r10
    movslq (%r10), %r15
    subq $48, %rsp
    movq 24(%rbp), %rax
    movq %rax, 0(%rsp)
    movl 16(%rbp), %eax
    movq %rax, 8(%rsp)
    movl %r15d, %eax
    movq %rax, 16(%rsp)
    movq 40(%rbp), %rax
    movq %rax, 24(%rsp)
    movq %r12, %rax
    movq %rax, 32(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call getsockopt
    addq $48, %rsp
    movl %eax, %ebx
    leaq lb_net_18socket_interrupted(%rip), %r13
    movl %ebx, %eax
    movl %eax, 8(%rbp)
.L2_1:
    movl 8(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    setl %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L2_4
    jmp .L2_29
.L2_29:
    movl %r14d, %ebx
    jmp .L2_5
.L2_4:
    subq $32, %rsp
    call lb_net_12socket_errno
    addq $32, %rsp
    movl %eax, %ebx
    movq %r13, %r10
    movslq (%r10), %r14
    cmpl %r14d, %ebx
    sete %al
    movzbl %al, %ebx
.L2_5:
    movzbl %bl, %r14d
    testl %r14d, %r14d
    jne .L2_2
    jmp .L2_3
.L2_2:
    movl $4, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    subq $48, %rsp
    movq 24(%rbp), %rax
    movq %rax, 0(%rsp)
    movl 16(%rbp), %eax
    movq %rax, 8(%rsp)
    movl %r15d, %eax
    movq %rax, 16(%rsp)
    movq 40(%rbp), %rax
    movq %rax, 24(%rsp)
    movq %r12, %rax
    movq %rax, 32(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call getsockopt
    addq $48, %rsp
    movl %eax, %ebx
    movl %ebx, %eax
    movl %eax, 8(%rbp)
    jmp .L2_1
.L2_3:
    movl 8(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L2_7
.L2_6:
    leaq 136(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    subq $32, %rsp
    call lb_net_12socket_errno
    addq $32, %rsp
    movl %eax, %r13d
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_net_12socket_error
    addq $32, %rsp
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_4(%rip), %r13
    leaq 64(%rbp), %r14
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
    movq 216(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 216(%rbp), %rax
    movq 392(%rbp), %rdi
    movq 384(%rbp), %rsi
    movdqu 368(%rbp), %xmm6
    movdqu 352(%rbp), %xmm7
    movdqu 336(%rbp), %xmm8
    movdqu 320(%rbp), %xmm9
    movdqu 304(%rbp), %xmm10
    movdqu 288(%rbp), %xmm11
    movdqu 272(%rbp), %xmm12
    movdqu 256(%rbp), %xmm13
    movdqu 240(%rbp), %xmm14
    movdqu 224(%rbp), %xmm15
    movq 208(%rbp), %rbx
    movq 200(%rbp), %r12
    movq 192(%rbp), %r13
    movq 184(%rbp), %r14
    movq 176(%rbp), %r15
    leaq 400(%rbp), %rsp
    popq %rbp
    ret
.L2_9:
    jmp .L2_8
.L2_7:
.L2_8:
    leaq lb_platform_windows(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_13
    jmp .L2_30
.L2_30:
    movl %ebx, %r13d
    jmp .L2_14
.L2_13:
    movq %r12, %r10
    movl (%r10), %ebx
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L2_14:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L2_15
    jmp .L2_31
.L2_31:
    movl %ebx, %r13d
    jmp .L2_16
.L2_15:
    leaq lb_net_12socket_level(%rip), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl 16(%rbp), %eax
    cmpl %ebx, %eax
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L2_17
    jmp .L2_32
.L2_32:
    movl %ebx, %r13d
    jmp .L2_18
.L2_17:
    leaq lb_net_16keepalive_option(%rip), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    cmpl %ebx, %r15d
    sete %al
    movzbl %al, %r13d
.L2_18:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L2_33
    jmp .L2_19
.L2_33:
    movl %ebx, %r13d
    jmp .L2_20
.L2_19:
    movl 16(%rbp), %eax
    movl $6, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L2_21
    jmp .L2_34
.L2_34:
    movl %ebx, %r13d
    jmp .L2_22
.L2_21:
    movl $1, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r13d
.L2_22:
    movzbl %r13b, %ebx
    movl %ebx, %r13d
.L2_20:
    movzbl %r13b, %ebx
    movl %ebx, %r13d
.L2_16:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L2_10
    jmp .L2_11
.L2_10:
    movq 40(%rbp), %r10
    movslq (%r10), %rbx
    movl $255, %ecx
    andl %ecx, %ebx
    leaq 136(%rbp), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 216(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 216(%rbp), %rax
    movq 392(%rbp), %rdi
    movq 384(%rbp), %rsi
    movdqu 368(%rbp), %xmm6
    movdqu 352(%rbp), %xmm7
    movdqu 336(%rbp), %xmm8
    movdqu 320(%rbp), %xmm9
    movdqu 304(%rbp), %xmm10
    movdqu 288(%rbp), %xmm11
    movdqu 272(%rbp), %xmm12
    movdqu 256(%rbp), %xmm13
    movdqu 240(%rbp), %xmm14
    movdqu 224(%rbp), %xmm15
    movq 208(%rbp), %rbx
    movq 200(%rbp), %r12
    movq 192(%rbp), %r13
    movq 184(%rbp), %r14
    movq 176(%rbp), %r15
    leaq 400(%rbp), %rsp
    popq %rbp
    ret
.L2_23:
    jmp .L2_12
.L2_11:
.L2_12:
    movq %r12, %r10
    movl (%r10), %ebx
    movl $4, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L2_25
.L2_24:
    leaq 136(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_5(%rip), %r13
    leaq 48(%rbp), %r14
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
    movq 216(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 216(%rbp), %rax
    movq 392(%rbp), %rdi
    movq 384(%rbp), %rsi
    movdqu 368(%rbp), %xmm6
    movdqu 352(%rbp), %xmm7
    movdqu 336(%rbp), %xmm8
    movdqu 320(%rbp), %xmm9
    movdqu 304(%rbp), %xmm10
    movdqu 288(%rbp), %xmm11
    movdqu 272(%rbp), %xmm12
    movdqu 256(%rbp), %xmm13
    movdqu 240(%rbp), %xmm14
    movdqu 224(%rbp), %xmm15
    movq 208(%rbp), %rbx
    movq 200(%rbp), %r12
    movq 192(%rbp), %r13
    movq 184(%rbp), %r14
    movq 176(%rbp), %r15
    leaq 400(%rbp), %rsp
    popq %rbp
    ret
.L2_27:
    jmp .L2_26
.L2_25:
.L2_26:
    movq 40(%rbp), %r10
    movslq (%r10), %rbx
    leaq 136(%rbp), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 216(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 216(%rbp), %rax
    movq 392(%rbp), %rdi
    movq 384(%rbp), %rsi
    movdqu 368(%rbp), %xmm6
    movdqu 352(%rbp), %xmm7
    movdqu 336(%rbp), %xmm8
    movdqu 320(%rbp), %xmm9
    movdqu 304(%rbp), %xmm10
    movdqu 288(%rbp), %xmm11
    movdqu 272(%rbp), %xmm12
    movdqu 256(%rbp), %xmm13
    movdqu 240(%rbp), %xmm14
    movdqu 224(%rbp), %xmm15
    movq 208(%rbp), %rbx
    movq 200(%rbp), %r12
    movq 192(%rbp), %r13
    movq 184(%rbp), %r14
    movq 176(%rbp), %r15
    leaq 400(%rbp), %rsp
    popq %rbp
    ret
.L2_28:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_17set_socket_buffer
lb_net_17set_socket_buffer:
    .seh_proc lb_net_17set_socket_buffer
    pushq %rbp
    .seh_pushreg %rbp
    subq $352, %rsp
    .seh_stackalloc 352
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 168(%rbp)
    movq %rdi, 344(%rbp)
    .seh_savereg %rdi, 344
    movq %rsi, 336(%rbp)
    .seh_savereg %rsi, 336
    movdqu %xmm6, 320(%rbp)
    .seh_savexmm %xmm6, 320
    movdqu %xmm7, 304(%rbp)
    .seh_savexmm %xmm7, 304
    movdqu %xmm8, 288(%rbp)
    .seh_savexmm %xmm8, 288
    movdqu %xmm9, 272(%rbp)
    .seh_savexmm %xmm9, 272
    movdqu %xmm10, 256(%rbp)
    .seh_savexmm %xmm10, 256
    movdqu %xmm11, 240(%rbp)
    .seh_savexmm %xmm11, 240
    movdqu %xmm12, 224(%rbp)
    .seh_savexmm %xmm12, 224
    movdqu %xmm13, 208(%rbp)
    .seh_savexmm %xmm13, 208
    movdqu %xmm14, 192(%rbp)
    .seh_savexmm %xmm14, 192
    movdqu %xmm15, 176(%rbp)
    .seh_savexmm %xmm15, 176
    movq %rbx, 160(%rbp)
    .seh_savereg %rbx, 160
    movq %r12, 152(%rbp)
    .seh_savereg %r12, 152
    movq %r13, 144(%rbp)
    .seh_savereg %r13, 144
    movq %r14, 136(%rbp)
    .seh_savereg %r14, 136
    .seh_endprologue
    movq %rcx, 368(%rbp)
    movq %rdx, 376(%rbp)
    movq %r8, 384(%rbp)
    movq %r9, 392(%rbp)
    movq 376(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 384(%rbp), %rax
    movl %eax, 72(%rbp)
    movq 392(%rbp), %rax
    movl %eax, 56(%rbp)
    leaq 56(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jg .L3_2
.L3_1:
    leaq 104(%rbp), %rbx
    leaq lb_net_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_7(%rip), %r12
    leaq 40(%rbp), %r13
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
    movq 168(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 168(%rbp), %rax
    movq 344(%rbp), %rdi
    movq 336(%rbp), %rsi
    movdqu 320(%rbp), %xmm6
    movdqu 304(%rbp), %xmm7
    movdqu 288(%rbp), %xmm8
    movdqu 272(%rbp), %xmm9
    movdqu 256(%rbp), %xmm10
    movdqu 240(%rbp), %xmm11
    movdqu 224(%rbp), %xmm12
    movdqu 208(%rbp), %xmm13
    movdqu 192(%rbp), %xmm14
    movdqu 176(%rbp), %xmm15
    movq 160(%rbp), %rbx
    movq 152(%rbp), %r12
    movq 144(%rbp), %r13
    movq 136(%rbp), %r14
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L3_4:
    jmp .L3_3
.L3_2:
.L3_3:
    leaq 88(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq lb_net_12socket_level(%rip), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    leaq 72(%rbp), %r14
    movq %r14, %r10
    movslq (%r10), %r14
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    movl %r14d, %eax
    movq %rax, 24(%rsp)
    movl %ebx, %eax
    movq %rax, 32(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_net_18set_socket_integer
    addq $48, %rsp
    leaq 8(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_6
    jmp .L3_5
.L3_6:
    leaq 104(%rbp), %rbx
    movq %r13, %r10
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
    movq 168(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 168(%rbp), %rax
    movq 344(%rbp), %rdi
    movq 336(%rbp), %rsi
    movdqu 320(%rbp), %xmm6
    movdqu 304(%rbp), %xmm7
    movdqu 288(%rbp), %xmm8
    movdqu 272(%rbp), %xmm9
    movdqu 256(%rbp), %xmm10
    movdqu 240(%rbp), %xmm11
    movdqu 224(%rbp), %xmm12
    movdqu 208(%rbp), %xmm13
    movdqu 192(%rbp), %xmm14
    movdqu 176(%rbp), %xmm15
    movq 160(%rbp), %rbx
    movq 152(%rbp), %r12
    movq 144(%rbp), %r13
    movq 136(%rbp), %r14
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L3_7:
.L3_5:
    leaq 104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 168(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 168(%rbp), %rax
    movq 344(%rbp), %rdi
    movq 336(%rbp), %rsi
    movdqu 320(%rbp), %xmm6
    movdqu 304(%rbp), %xmm7
    movdqu 288(%rbp), %xmm8
    movdqu 272(%rbp), %xmm9
    movdqu 256(%rbp), %xmm10
    movdqu 240(%rbp), %xmm11
    movdqu 224(%rbp), %xmm12
    movdqu 208(%rbp), %xmm13
    movdqu 192(%rbp), %xmm14
    movdqu 176(%rbp), %xmm15
    movq 160(%rbp), %rbx
    movq 152(%rbp), %r12
    movq 144(%rbp), %r13
    movq 136(%rbp), %r14
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_net_options_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "socket status flags could not be queried"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/net/options.lucb:13:5"
.Ltext_3:
    .asciz "socket nonblocking mode could not be changed"
.Ltext_4:
    .asciz "the socket option could not be queried"
.Ltext_5:
    .asciz "the socket option has an invalid result layout"
.Ltext_6:
    .asciz "src/std/net/options.lucb:45:5"
.Ltext_7:
    .asciz "a socket buffer size must be positive"

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_net_16nonblocking_flag
    .p2align 2
lb_net_16nonblocking_flag:
    .zero 4

    .bss
    .globl lb_net_21receive_buffer_option
    .p2align 2
lb_net_21receive_buffer_option:
    .zero 4

    .bss
    .globl lb_net_18send_buffer_option
    .p2align 2
lb_net_18send_buffer_option:
    .zero 4

    .bss
    .globl lb_net_16keepalive_option
    .p2align 2
lb_net_16keepalive_option:
    .zero 4
