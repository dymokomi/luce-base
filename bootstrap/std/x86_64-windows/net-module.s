    .text

    .p2align 4
    .globl lb_net_module_0init
lb_net_module_0init:
    .seh_proc lb_net_module_0init
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
    leaq lb_net_inet(%rip), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_inet6(%rip), %rbx
    movl $23, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_stream(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_datagram(%rip), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_20socket_close_on_exec(%rip), %rbx
    movl $524288, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_20get_descriptor_flags(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_20set_descriptor_flags(%rip), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_24descriptor_close_on_exec(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_12socket_level(%rip), %rbx
    movl $65535, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_20reuse_address_option(%rip), %rbx
    movl $4, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_10ipv6_level(%rip), %rbx
    movl $41, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_16ipv6_only_option(%rip), %rbx
    movl $27, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_17no_sigpipe_option(%rip), %rbx
    movl $4130, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_10send_flags(%rip), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_net_18socket_interrupted(%rip), %rbx
    movl $10004, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
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
    .seh_endproc

    .p2align 4
    .globl lb_net_11family_word
lb_net_11family_word:
    .seh_proc lb_net_11family_word
    pushq %rbp
    .seh_pushreg %rbp
    subq $224, %rsp
    .seh_stackalloc 224
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 216(%rbp)
    .seh_savereg %rdi, 216
    movq %rsi, 208(%rbp)
    .seh_savereg %rsi, 208
    movdqu %xmm6, 192(%rbp)
    .seh_savexmm %xmm6, 192
    movdqu %xmm7, 176(%rbp)
    .seh_savexmm %xmm7, 176
    movdqu %xmm8, 160(%rbp)
    .seh_savexmm %xmm8, 160
    movdqu %xmm9, 144(%rbp)
    .seh_savexmm %xmm9, 144
    movdqu %xmm10, 128(%rbp)
    .seh_savexmm %xmm10, 128
    movdqu %xmm11, 112(%rbp)
    .seh_savexmm %xmm11, 112
    movdqu %xmm12, 96(%rbp)
    .seh_savexmm %xmm12, 96
    movdqu %xmm13, 80(%rbp)
    .seh_savexmm %xmm13, 80
    movdqu %xmm14, 64(%rbp)
    .seh_savexmm %xmm14, 64
    movdqu %xmm15, 48(%rbp)
    .seh_savexmm %xmm15, 48
    movq %rbx, 40(%rbp)
    .seh_savereg %rbx, 40
    .seh_endprologue
    movq %rcx, 240(%rbp)
    movq %rdx, 248(%rbp)
    movq %r8, 256(%rbp)
    movq %r9, 264(%rbp)
    movq 240(%rbp), %rax
    movl %eax, 24(%rbp)
    movq 248(%rbp), %rax
    movl %eax, 8(%rbp)
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movslq %ebx, %rbx
    movzwl %bx, %ebx
    movzwl %bx, %ebx
    movl %ebx, %eax
    movq 216(%rbp), %rdi
    movq 208(%rbp), %rsi
    movdqu 192(%rbp), %xmm6
    movdqu 176(%rbp), %xmm7
    movdqu 160(%rbp), %xmm8
    movdqu 144(%rbp), %xmm9
    movdqu 128(%rbp), %xmm10
    movdqu 112(%rbp), %xmm11
    movdqu 96(%rbp), %xmm12
    movdqu 80(%rbp), %xmm13
    movdqu 64(%rbp), %xmm14
    movdqu 48(%rbp), %xmm15
    movq 40(%rbp), %rbx
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L1_1:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_12info_address
lb_net_12info_address:
    .seh_proc lb_net_12info_address
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
    movq %rax, 8(%rbp)
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $32, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
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
.L2_1:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_12socket_errno
lb_net_12socket_errno:
    .seh_proc lb_net_12socket_errno
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
    call WSAGetLastError
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
.L3_1:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_close
lb_net_close:
    .seh_proc lb_net_close
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
    movq %rax, 8(%rbp)
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call closesocket
    addq $32, %rsp
    movl %eax, %ebx
    movl %ebx, %eax
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
.L4_1:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_send
lb_net_send:
    .seh_proc lb_net_send
    pushq %rbp
    .seh_pushreg %rbp
    subq $272, %rsp
    .seh_stackalloc 272
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 264(%rbp)
    .seh_savereg %rdi, 264
    movq %rsi, 256(%rbp)
    .seh_savereg %rsi, 256
    movdqu %xmm6, 240(%rbp)
    .seh_savexmm %xmm6, 240
    movdqu %xmm7, 224(%rbp)
    .seh_savexmm %xmm7, 224
    movdqu %xmm8, 208(%rbp)
    .seh_savexmm %xmm8, 208
    movdqu %xmm9, 192(%rbp)
    .seh_savexmm %xmm9, 192
    movdqu %xmm10, 176(%rbp)
    .seh_savexmm %xmm10, 176
    movdqu %xmm11, 160(%rbp)
    .seh_savexmm %xmm11, 160
    movdqu %xmm12, 144(%rbp)
    .seh_savexmm %xmm12, 144
    movdqu %xmm13, 128(%rbp)
    .seh_savexmm %xmm13, 128
    movdqu %xmm14, 112(%rbp)
    .seh_savexmm %xmm14, 112
    movdqu %xmm15, 96(%rbp)
    .seh_savexmm %xmm15, 96
    movq %rbx, 88(%rbp)
    .seh_savereg %rbx, 88
    movq %r12, 80(%rbp)
    .seh_savereg %r12, 80
    movq %r13, 72(%rbp)
    .seh_savereg %r13, 72
    movq %r14, 64(%rbp)
    .seh_savereg %r14, 64
    .seh_endprologue
    movq %rcx, 288(%rbp)
    movq %rdx, 296(%rbp)
    movq %r8, 304(%rbp)
    movq %r9, 312(%rbp)
    movq 288(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 296(%rbp), %rax
    movq %rax, 32(%rbp)
    movq 304(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 312(%rbp), %rax
    movl %eax, 0(%rbp)
    leaq 48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 32(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 16(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movslq (%r10), %r14
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    movl %r14d, %eax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call send
    addq $32, %rsp
    movl %eax, %ebx
    movslq %ebx, %rbx
    movq %rbx, %rax
    movq 264(%rbp), %rdi
    movq 256(%rbp), %rsi
    movdqu 240(%rbp), %xmm6
    movdqu 224(%rbp), %xmm7
    movdqu 208(%rbp), %xmm8
    movdqu 192(%rbp), %xmm9
    movdqu 176(%rbp), %xmm10
    movdqu 160(%rbp), %xmm11
    movdqu 144(%rbp), %xmm12
    movdqu 128(%rbp), %xmm13
    movdqu 112(%rbp), %xmm14
    movdqu 96(%rbp), %xmm15
    movq 88(%rbp), %rbx
    movq 80(%rbp), %r12
    movq 72(%rbp), %r13
    movq 64(%rbp), %r14
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
.L5_1:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_recv
lb_net_recv:
    .seh_proc lb_net_recv
    pushq %rbp
    .seh_pushreg %rbp
    subq $272, %rsp
    .seh_stackalloc 272
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 264(%rbp)
    .seh_savereg %rdi, 264
    movq %rsi, 256(%rbp)
    .seh_savereg %rsi, 256
    movdqu %xmm6, 240(%rbp)
    .seh_savexmm %xmm6, 240
    movdqu %xmm7, 224(%rbp)
    .seh_savexmm %xmm7, 224
    movdqu %xmm8, 208(%rbp)
    .seh_savexmm %xmm8, 208
    movdqu %xmm9, 192(%rbp)
    .seh_savexmm %xmm9, 192
    movdqu %xmm10, 176(%rbp)
    .seh_savexmm %xmm10, 176
    movdqu %xmm11, 160(%rbp)
    .seh_savexmm %xmm11, 160
    movdqu %xmm12, 144(%rbp)
    .seh_savexmm %xmm12, 144
    movdqu %xmm13, 128(%rbp)
    .seh_savexmm %xmm13, 128
    movdqu %xmm14, 112(%rbp)
    .seh_savexmm %xmm14, 112
    movdqu %xmm15, 96(%rbp)
    .seh_savexmm %xmm15, 96
    movq %rbx, 88(%rbp)
    .seh_savereg %rbx, 88
    movq %r12, 80(%rbp)
    .seh_savereg %r12, 80
    movq %r13, 72(%rbp)
    .seh_savereg %r13, 72
    movq %r14, 64(%rbp)
    .seh_savereg %r14, 64
    .seh_endprologue
    movq %rcx, 288(%rbp)
    movq %rdx, 296(%rbp)
    movq %r8, 304(%rbp)
    movq %r9, 312(%rbp)
    movq 288(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 296(%rbp), %rax
    movq %rax, 32(%rbp)
    movq 304(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 312(%rbp), %rax
    movl %eax, 0(%rbp)
    leaq 48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 32(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 16(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movslq (%r10), %r14
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    movl %r14d, %eax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call recv
    addq $32, %rsp
    movl %eax, %ebx
    movslq %ebx, %rbx
    movq %rbx, %rax
    movq 264(%rbp), %rdi
    movq 256(%rbp), %rsi
    movdqu 240(%rbp), %xmm6
    movdqu 224(%rbp), %xmm7
    movdqu 208(%rbp), %xmm8
    movdqu 192(%rbp), %xmm9
    movdqu 176(%rbp), %xmm10
    movdqu 160(%rbp), %xmm11
    movdqu 144(%rbp), %xmm12
    movdqu 128(%rbp), %xmm13
    movdqu 112(%rbp), %xmm14
    movdqu 96(%rbp), %xmm15
    movq 88(%rbp), %rbx
    movq 80(%rbp), %r12
    movq 72(%rbp), %r13
    movq 64(%rbp), %r14
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
.L6_1:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_sendto
lb_net_sendto:
    .seh_proc lb_net_sendto
    pushq %rbp
    .seh_pushreg %rbp
    subq $336, %rsp
    .seh_stackalloc 336
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 328(%rbp)
    .seh_savereg %rdi, 328
    movq %rsi, 320(%rbp)
    .seh_savereg %rsi, 320
    movdqu %xmm6, 304(%rbp)
    .seh_savexmm %xmm6, 304
    movdqu %xmm7, 288(%rbp)
    .seh_savexmm %xmm7, 288
    movdqu %xmm8, 272(%rbp)
    .seh_savexmm %xmm8, 272
    movdqu %xmm9, 256(%rbp)
    .seh_savexmm %xmm9, 256
    movdqu %xmm10, 240(%rbp)
    .seh_savexmm %xmm10, 240
    movdqu %xmm11, 224(%rbp)
    .seh_savexmm %xmm11, 224
    movdqu %xmm12, 208(%rbp)
    .seh_savexmm %xmm12, 208
    movdqu %xmm13, 192(%rbp)
    .seh_savexmm %xmm13, 192
    movdqu %xmm14, 176(%rbp)
    .seh_savexmm %xmm14, 176
    movdqu %xmm15, 160(%rbp)
    .seh_savexmm %xmm15, 160
    movq %rbx, 152(%rbp)
    .seh_savereg %rbx, 152
    movq %r12, 144(%rbp)
    .seh_savereg %r12, 144
    movq %r13, 136(%rbp)
    .seh_savereg %r13, 136
    movq %r14, 128(%rbp)
    .seh_savereg %r14, 128
    movq %r15, 120(%rbp)
    .seh_savereg %r15, 120
    .seh_endprologue
    movq %rcx, 352(%rbp)
    movq %rdx, 360(%rbp)
    movq %r8, 368(%rbp)
    movq %r9, 376(%rbp)
    movq 352(%rbp), %rax
    movq %rax, 104(%rbp)
    movq 360(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 368(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 376(%rbp), %rax
    movl %eax, 56(%rbp)
    movq 384(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 392(%rbp), %rax
    movl %eax, 24(%rbp)
    leaq 104(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    leaq 88(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 72(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq 56(%rbp), %r14
    movq %r14, %r10
    movslq (%r10), %r14
    leaq 40(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    subq $48, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    movl %r14d, %eax
    movq %rax, 24(%rsp)
    movq %r15, %rax
    movq %rax, 32(%rsp)
    movl %ebx, %eax
    movq %rax, 40(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call sendto
    addq $48, %rsp
    movl %eax, %ebx
    movslq %ebx, %rbx
    movq %rbx, %rax
    movq 328(%rbp), %rdi
    movq 320(%rbp), %rsi
    movdqu 304(%rbp), %xmm6
    movdqu 288(%rbp), %xmm7
    movdqu 272(%rbp), %xmm8
    movdqu 256(%rbp), %xmm9
    movdqu 240(%rbp), %xmm10
    movdqu 224(%rbp), %xmm11
    movdqu 208(%rbp), %xmm12
    movdqu 192(%rbp), %xmm13
    movdqu 176(%rbp), %xmm14
    movdqu 160(%rbp), %xmm15
    movq 152(%rbp), %rbx
    movq 144(%rbp), %r12
    movq 136(%rbp), %r13
    movq 128(%rbp), %r14
    movq 120(%rbp), %r15
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L7_1:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_net_module_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/net/module.lucb:88:5"
.Ltext_2:
    .asciz "src/std/net/module.lucb:102:5"
.Ltext_3:
    .asciz "src/std/net/module.lucb:127:9"
.Ltext_4:
    .asciz "src/std/net/module.lucb:132:9"
.Ltext_5:
    .asciz "src/std/net/module.lucb:137:9"
.Ltext_6:
    .asciz "src/std/net/module.lucb:142:9"
.Ltext_7:
    .asciz "src/std/net/module.lucb:147:9"

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_net_inet
    .p2align 2
lb_net_inet:
    .zero 4

    .bss
    .globl lb_net_inet6
    .p2align 2
lb_net_inet6:
    .zero 4

    .bss
    .globl lb_net_stream
    .p2align 2
lb_net_stream:
    .zero 4

    .bss
    .globl lb_net_datagram
    .p2align 2
lb_net_datagram:
    .zero 4

    .bss
    .globl lb_net_20socket_close_on_exec
    .p2align 2
lb_net_20socket_close_on_exec:
    .zero 4

    .bss
    .globl lb_net_20get_descriptor_flags
    .p2align 2
lb_net_20get_descriptor_flags:
    .zero 4

    .bss
    .globl lb_net_20set_descriptor_flags
    .p2align 2
lb_net_20set_descriptor_flags:
    .zero 4

    .bss
    .globl lb_net_24descriptor_close_on_exec
    .p2align 2
lb_net_24descriptor_close_on_exec:
    .zero 4

    .bss
    .globl lb_net_12socket_level
    .p2align 2
lb_net_12socket_level:
    .zero 4

    .bss
    .globl lb_net_20reuse_address_option
    .p2align 2
lb_net_20reuse_address_option:
    .zero 4

    .bss
    .globl lb_net_10ipv6_level
    .p2align 2
lb_net_10ipv6_level:
    .zero 4

    .bss
    .globl lb_net_16ipv6_only_option
    .p2align 2
lb_net_16ipv6_only_option:
    .zero 4

    .bss
    .globl lb_net_17no_sigpipe_option
    .p2align 2
lb_net_17no_sigpipe_option:
    .zero 4

    .bss
    .globl lb_net_10send_flags
    .p2align 2
lb_net_10send_flags:
    .zero 4

    .bss
    .globl lb_net_18socket_interrupted
    .p2align 2
lb_net_18socket_interrupted:
    .zero 4
