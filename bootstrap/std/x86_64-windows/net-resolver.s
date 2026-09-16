    .text

    .p2align 4
    .globl lb_net_resolver_0init
lb_net_resolver_0init:
    .seh_proc lb_net_resolver_0init
    pushq %rbp
    .seh_pushreg %rbp
    subq $176, %rsp
    .seh_stackalloc 176
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 168(%rbp)
    .seh_savereg %rdi, 168
    movq %rsi, 160(%rbp)
    .seh_savereg %rsi, 160
    movdqu %xmm6, 144(%rbp)
    .seh_savexmm %xmm6, 144
    movdqu %xmm7, 128(%rbp)
    .seh_savexmm %xmm7, 128
    movdqu %xmm8, 112(%rbp)
    .seh_savexmm %xmm8, 112
    movdqu %xmm9, 96(%rbp)
    .seh_savexmm %xmm9, 96
    movdqu %xmm10, 80(%rbp)
    .seh_savexmm %xmm10, 80
    movdqu %xmm11, 64(%rbp)
    .seh_savexmm %xmm11, 64
    movdqu %xmm12, 48(%rbp)
    .seh_savexmm %xmm12, 48
    movdqu %xmm13, 32(%rbp)
    .seh_savexmm %xmm13, 32
    movdqu %xmm14, 16(%rbp)
    .seh_savexmm %xmm14, 16
    movdqu %xmm15, 0(%rbp)
    .seh_savexmm %xmm15, 0
    .seh_endprologue
    movq %rcx, 192(%rbp)
    movq %rdx, 200(%rbp)
    movq %r8, 208(%rbp)
    movq %r9, 216(%rbp)
    movq 168(%rbp), %rdi
    movq 160(%rbp), %rsi
    movdqu 144(%rbp), %xmm6
    movdqu 128(%rbp), %xmm7
    movdqu 112(%rbp), %xmm8
    movdqu 96(%rbp), %xmm9
    movdqu 80(%rbp), %xmm10
    movdqu 64(%rbp), %xmm11
    movdqu 48(%rbp), %xmm12
    movdqu 32(%rbp), %xmm13
    movdqu 16(%rbp), %xmm14
    movdqu 0(%rbp), %xmm15
    leaq 176(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_net_ResolvedAddresses_view
lb_net_ResolvedAddresses_view:
    .seh_proc lb_net_ResolvedAddresses_view
    pushq %rbp
    .seh_pushreg %rbp
    subq $224, %rsp
    .seh_stackalloc 224
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 40(%rbp)
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
    movq %rbx, 32(%rbp)
    .seh_savereg %rbx, 32
    movq %r12, 24(%rbp)
    .seh_savereg %r12, 24
    .seh_endprologue
    movq %rcx, 240(%rbp)
    movq %rdx, 248(%rbp)
    movq %r8, 256(%rbp)
    movq %r9, 264(%rbp)
    movq 248(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 0(%rbp), %r10
    movq (%r10), %r12
    leaq 8(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rsi
    movq 40(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 40(%rbp), %rax
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
    movq 32(%rbp), %rbx
    movq 24(%rbp), %r12
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
    .globl lb_net_ResolvedAddresses_destroy
lb_net_ResolvedAddresses_destroy:
    .seh_proc lb_net_ResolvedAddresses_destroy
    pushq %rbp
    .seh_pushreg %rbp
    subq $352, %rsp
    .seh_stackalloc 352
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 168(%rbp)
    .seh_savereg %rbx, 168
    movq %r12, 160(%rbp)
    .seh_savereg %r12, 160
    movq %r13, 152(%rbp)
    .seh_savereg %r13, 152
    movq %r14, 144(%rbp)
    .seh_savereg %r14, 144
    movq %r15, 136(%rbp)
    .seh_savereg %r15, 136
    .seh_endprologue
    movq %rcx, 368(%rbp)
    movq %rdx, 376(%rbp)
    movq %r8, 384(%rbp)
    movq %r9, 392(%rbp)
    movq 368(%rbp), %rax
    movq %rax, 128(%rbp)
    leaq 128(%rbp), %r10
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
    leaq 112(%rbp), %r14
    movq $16, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    testq %rax, %rax
    jne .L2_4
    jmp .L2_5
.L2_4:
    leaq 96(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_6
.L2_5:
    leaq .Ltext_2(%rip), %rbx
    leaq 80(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $39, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_3(%rip), %rbx
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
    call lb_core_12trap_text_at
    addq $48, %rsp
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_6:
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 64(%rbp), %rax
    movq %rax, 16(%rbp)
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    movq %rbx, %rax
    movq $24, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 0(%rbp)
    movq 8(%rbp), %rax
    movq 16(%rbp), %r10
    movq %rax, (%r10)
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq 0(%rbp), %rax
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
    subq $48, %rsp
    movq 24(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 16(%rbp), %r10
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
.L2_7:
    jmp .L2_3
.L2_2:
.L2_3:
    leaq 48(%rbp), %rbx
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
    leaq 32(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
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
    movq 168(%rbp), %rbx
    movq 160(%rbp), %r12
    movq 152(%rbp), %r13
    movq 144(%rbp), %r14
    movq 136(%rbp), %r15
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_net_resolve
lb_net_resolve:
    .seh_proc lb_net_resolve
    pushq %rbp
    .seh_pushreg %rbp
    subq $496, %rsp
    .seh_stackalloc 496
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 312(%rbp)
    movq %rdi, 488(%rbp)
    .seh_savereg %rdi, 488
    movq %rsi, 480(%rbp)
    .seh_savereg %rsi, 480
    movdqu %xmm6, 464(%rbp)
    .seh_savexmm %xmm6, 464
    movdqu %xmm7, 448(%rbp)
    .seh_savexmm %xmm7, 448
    movdqu %xmm8, 432(%rbp)
    .seh_savexmm %xmm8, 432
    movdqu %xmm9, 416(%rbp)
    .seh_savexmm %xmm9, 416
    movdqu %xmm10, 400(%rbp)
    .seh_savexmm %xmm10, 400
    movdqu %xmm11, 384(%rbp)
    .seh_savexmm %xmm11, 384
    movdqu %xmm12, 368(%rbp)
    .seh_savexmm %xmm12, 368
    movdqu %xmm13, 352(%rbp)
    .seh_savexmm %xmm13, 352
    movdqu %xmm14, 336(%rbp)
    .seh_savexmm %xmm14, 336
    movdqu %xmm15, 320(%rbp)
    .seh_savexmm %xmm15, 320
    movq %rbx, 304(%rbp)
    .seh_savereg %rbx, 304
    movq %r12, 296(%rbp)
    .seh_savereg %r12, 296
    movq %r13, 288(%rbp)
    .seh_savereg %r13, 288
    movq %r14, 280(%rbp)
    .seh_savereg %r14, 280
    movq %r15, 272(%rbp)
    .seh_savereg %r15, 272
    .seh_endprologue
    movq %rcx, 512(%rbp)
    movq %rdx, 520(%rbp)
    movq %r8, 528(%rbp)
    movq %r9, 536(%rbp)
    movq 520(%rbp), %rax
    movq %rax, 200(%rbp)
    movq 528(%rbp), %rax
    movl %eax, 184(%rbp)
    movq 536(%rbp), %rax
    leaq 168(%rbp), %r10
    movw %ax, 0(%r10)
    leaq 152(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 200(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 168(%rbp), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq %rax, 16(%rsp)
    leaq 104(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_ResolverQuery_open
    addq $32, %rsp
    leaq 104(%rbp), %r12
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
    leaq 216(%rbp), %r13
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
    movq 312(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 312(%rbp), %rax
    movq 488(%rbp), %rdi
    movq 480(%rbp), %rsi
    movdqu 464(%rbp), %xmm6
    movdqu 448(%rbp), %xmm7
    movdqu 432(%rbp), %xmm8
    movdqu 416(%rbp), %xmm9
    movdqu 400(%rbp), %xmm10
    movdqu 384(%rbp), %xmm11
    movdqu 368(%rbp), %xmm12
    movdqu 352(%rbp), %xmm13
    movdqu 336(%rbp), %xmm14
    movdqu 320(%rbp), %xmm15
    movq 304(%rbp), %rbx
    movq 296(%rbp), %r12
    movq 288(%rbp), %r13
    movq 280(%rbp), %r14
    movq 272(%rbp), %r15
    leaq 496(%rbp), %rsp
    popq %rbp
    ret
.L3_3:
.L3_1:
    movq %r12, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 8(%rbp), %r10
    movq (%r10), %rbx
    leaq 184(%rbp), %r14
    movq 8(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 24(%rbp)
    leaq 76(%rbp), %r15
    movq $24, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, 16(%rbp)
.L3_4:
    testq %rbx, %rbx
    jne .L3_7
    jmp .L3_6
.L3_7:
.L3_5:
    movq %r14, %r10
    movzwl (%r10), %r12d
    movq 24(%rbp), %r10
    movslq (%r10), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl %r12d, %eax
    movq %rax, 16(%rsp)
    movl %r13d, %eax
    movq %rax, 24(%rsp)
    leaq 76(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_net_17resolved_endpoint
    addq $32, %rsp
    movq 16(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_11
    jmp .L3_9
.L3_11:
    leaq 52(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
.L3_8:
    leaq 216(%rbp), %r12
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
    movq 8(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L3_17
    jmp .L3_15
.L3_17:
.L3_14:
    movq $0, %rax
    movq 8(%rbp), %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call freeaddrinfo
    addq $32, %rsp
    jmp .L3_16
.L3_15:
.L3_16:
.L3_18:
    movq %r12, %rsi
    movq 312(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 312(%rbp), %rax
    movq 488(%rbp), %rdi
    movq 480(%rbp), %rsi
    movdqu 464(%rbp), %xmm6
    movdqu 448(%rbp), %xmm7
    movdqu 432(%rbp), %xmm8
    movdqu 416(%rbp), %xmm9
    movdqu 400(%rbp), %xmm10
    movdqu 384(%rbp), %xmm11
    movdqu 368(%rbp), %xmm12
    movdqu 352(%rbp), %xmm13
    movdqu 336(%rbp), %xmm14
    movdqu 320(%rbp), %xmm15
    movq 304(%rbp), %rbx
    movq 296(%rbp), %r12
    movq 288(%rbp), %r13
    movq 280(%rbp), %r14
    movq 272(%rbp), %r15
    leaq 496(%rbp), %rsp
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
    leaq 216(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12unknown_host(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_5(%rip), %r13
    leaq 32(%rbp), %r14
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
    movq 8(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L3_22
    jmp .L3_20
.L3_22:
.L3_19:
    movq $0, %rax
    movq 8(%rbp), %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call freeaddrinfo
    addq $32, %rsp
    jmp .L3_21
.L3_20:
.L3_21:
.L3_23:
    movq %rbx, %rsi
    movq 312(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 312(%rbp), %rax
    movq 488(%rbp), %rdi
    movq 480(%rbp), %rsi
    movdqu 464(%rbp), %xmm6
    movdqu 448(%rbp), %xmm7
    movdqu 432(%rbp), %xmm8
    movdqu 416(%rbp), %xmm9
    movdqu 400(%rbp), %xmm10
    movdqu 384(%rbp), %xmm11
    movdqu 368(%rbp), %xmm12
    movdqu 352(%rbp), %xmm13
    movdqu 336(%rbp), %xmm14
    movdqu 320(%rbp), %xmm15
    movq 304(%rbp), %rbx
    movq 296(%rbp), %r12
    movq 288(%rbp), %r13
    movq 280(%rbp), %r14
    movq 272(%rbp), %r15
    leaq 496(%rbp), %rsp
    popq %rbp
    ret
.L3_13:
    leaq 152(%rbp), %rbx
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
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call freeaddrinfo
    addq $32, %rsp
    jmp .L3_26
.L3_25:
.L3_26:
.L3_28:
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
    .globl lb_net_11resolve_all
lb_net_11resolve_all:
    .seh_proc lb_net_11resolve_all
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
    movq 840(%rbp), %rax
    movq %rax, 512(%rbp)
    movq 848(%rbp), %rax
    movl %eax, 496(%rbp)
    movq 856(%rbp), %rax
    leaq 480(%rbp), %r10
    movw %ax, 0(%r10)
    leaq 464(%rbp), %rax
    movq %rax, 48(%rbp)
    leaq 512(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 480(%rbp), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq %rax, 16(%rsp)
    leaq 416(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_ResolverQuery_open
    addq $32, %rsp
    leaq 416(%rbp), %r12
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
    leaq 528(%rbp), %r13
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
    movq 632(%rbp), %rdi
    movq $64, %rdx
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
.L4_3:
.L4_1:
    movq %r12, %r10
    movq 48(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 48(%rbp), %r10
    movq (%r10), %rbx
    leaq 496(%rbp), %r14
    movq 48(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 128(%rbp)
    leaq 388(%rbp), %rax
    movq %rax, 120(%rbp)
    movq 120(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 112(%rbp)
    leaq 376(%rbp), %rax
    movq %rax, 104(%rbp)
    leaq 360(%rbp), %r15
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, 96(%rbp)
    movq $0, %rax
    movq %rax, 40(%rbp)
.L4_4:
    testq %rbx, %rbx
    jne .L4_7
    jmp .L4_6
.L4_7:
.L4_5:
    movq %r14, %r10
    movzwl (%r10), %r12d
    movq 128(%rbp), %r10
    movslq (%r10), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl %r12d, %eax
    movq %rax, 16(%rsp)
    movl %r13d, %eax
    movq %rax, 24(%rsp)
    leaq 388(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_net_17resolved_endpoint
    addq $32, %rsp
    movq 112(%rbp), %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L4_9
.L4_8:
    subq $32, %rsp
    movq 40(%rbp), %rax
    movq %rax, 0(%rsp)
    movq $1, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq 104(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %r12d
    movq 104(%rbp), %r10
    movq (%r10), %r13
    movq %r15, %r10
    movq %r13, (%r10)
    movq 96(%rbp), %r10
    movb %r12b, (%r10)
    movq 96(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L4_11
    jmp .L4_12
.L4_11:
    jmp .L4_13
.L4_12:
    leaq 528(%rbp), %rbx
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_7(%rip), %r13
    leaq 344(%rbp), %r14
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
    movq 48(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L4_41
    jmp .L4_39
.L4_41:
.L4_38:
    movq $0, %rax
    movq 48(%rbp), %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call freeaddrinfo
    addq $32, %rsp
    jmp .L4_40
.L4_39:
.L4_40:
.L4_42:
    movq %rbx, %rsi
    movq 632(%rbp), %rdi
    movq $64, %rdx
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
.L4_14:
.L4_13:
    movq %r13, %r12
    jmp .L4_10
.L4_9:
    movq 40(%rbp), %rax
    movq %rax, %r12
.L4_10:
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rax
    movq %rax, 40(%rbp)
    movq %r13, %rbx
    jmp .L4_4
.L4_6:
    movq 40(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L4_16
.L4_15:
    leaq 528(%rbp), %rbx
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12unknown_host(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_5(%rip), %r13
    leaq 328(%rbp), %r14
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
    movq 48(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L4_46
    jmp .L4_44
.L4_46:
.L4_43:
    movq $0, %rax
    movq 48(%rbp), %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call freeaddrinfo
    addq $32, %rsp
    jmp .L4_45
.L4_44:
.L4_45:
.L4_47:
    movq %rbx, %rsi
    movq 632(%rbp), %rdi
    movq $64, %rdx
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
.L4_18:
    jmp .L4_17
.L4_16:
.L4_17:
    leaq 312(%rbp), %rax
    movq %rax, 88(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    movq %r12, %r10
    movq 88(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 296(%rbp), %rax
    movq %rax, 32(%rbp)
    leaq 248(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 40(%rbp), %rax
    movabsq $192153584101141162, %rcx
    cmpq %rcx, %rax
    jbe .L4_20
.L4_19:
    movq 24(%rbp), %rax
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
    movq 24(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L4_21
.L4_20:
    movq 40(%rbp), %rax
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
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L4_22:
    movq %r13, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq $4, %rax
    movq %rax, 24(%rsp)
    leaq 224(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r12, %r11
    call *%r11
    addq $32, %rsp
    leaq 224(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq $0, %rcx
    cmpq %rcx, %r14
    setne %al
    movzbl %al, %eax
    movl %eax, 80(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl 80(%rbp), %eax
    movl %r12d, %ecx
    movl %eax, %r12d
    andl %ecx, %r12d
    testl %r12d, %r12d
    jne .L4_24
    jmp .L4_25
.L4_24:
    movq 24(%rbp), %rax
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
    movq 24(%rbp), %rax
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
    movq 24(%rbp), %r10
    movq %rbx, (%r10)
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 40(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 24(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L4_21:
    movq 24(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_27
    jmp .L4_26
.L4_27:
    movq 24(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 528(%rbp), %r12
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
    movq 48(%rbp), %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L4_51
    jmp .L4_49
.L4_51:
.L4_48:
    movq $0, %rax
    movq 48(%rbp), %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call freeaddrinfo
    addq $32, %rsp
    jmp .L4_50
.L4_49:
.L4_50:
.L4_52:
    movq %r12, %rsi
    movq 632(%rbp), %rdi
    movq $64, %rdx
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
.L4_28:
.L4_26:
    movq 24(%rbp), %r10
    movq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 48(%rbp), %r10
    movq (%r10), %rbx
    leaq 496(%rbp), %r12
    movq 48(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    leaq 196(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    leaq 172(%rbp), %rax
    movq %rax, 64(%rbp)
    movq 32(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    movq $0, %rax
    movq %rax, 16(%rbp)
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
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl %r15d, %eax
    movq %rax, 16(%rsp)
    movl %r14d, %eax
    movq %rax, 24(%rsp)
    leaq 196(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_net_17resolved_endpoint
    addq $32, %rsp
    movq 72(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L4_36
    jmp .L4_34
.L4_36:
    movq 8(%rbp), %r10
    movq 64(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
.L4_33:
    movq 32(%rbp), %r10
    movq (%r10), %r14
    movq 56(%rbp), %r10
    movq (%r10), %r15
    movq 16(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_21(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 16(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    addq %r15, %r14
    movq 64(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 16(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    jmp .L4_35
.L4_34:
    movq 16(%rbp), %rax
    movq %rax, %r14
.L4_35:
    movq $40, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rbx
    movq %r14, %rax
    movq %rax, 16(%rbp)
    jmp .L4_29
.L4_31:
    leaq 136(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq 32(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 88(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 528(%rbp), %r12
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
    movq 48(%rbp), %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L4_56
    jmp .L4_54
.L4_56:
.L4_53:
    movq $0, %rax
    movq 48(%rbp), %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call freeaddrinfo
    addq $32, %rsp
    jmp .L4_55
.L4_54:
.L4_55:
.L4_57:
    movq %r12, %rsi
    movq 632(%rbp), %rdi
    movq $64, %rdx
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
.L4_37:
    leaq 464(%rbp), %rbx
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
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call freeaddrinfo
    addq $32, %rsp
    jmp .L4_60
.L4_59:
.L4_60:
.L4_62:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_ResolverQuery_open
lb_net_ResolverQuery_open:
    .seh_proc lb_net_ResolverQuery_open
    pushq %rbp
    .seh_pushreg %rbp
    subq $512, %rsp
    .seh_stackalloc 512
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 328(%rbp)
    movq %rdi, 504(%rbp)
    .seh_savereg %rdi, 504
    movq %rsi, 496(%rbp)
    .seh_savereg %rsi, 496
    movdqu %xmm6, 480(%rbp)
    .seh_savexmm %xmm6, 480
    movdqu %xmm7, 464(%rbp)
    .seh_savexmm %xmm7, 464
    movdqu %xmm8, 448(%rbp)
    .seh_savexmm %xmm8, 448
    movdqu %xmm9, 432(%rbp)
    .seh_savexmm %xmm9, 432
    movdqu %xmm10, 416(%rbp)
    .seh_savexmm %xmm10, 416
    movdqu %xmm11, 400(%rbp)
    .seh_savexmm %xmm11, 400
    movdqu %xmm12, 384(%rbp)
    .seh_savexmm %xmm12, 384
    movdqu %xmm13, 368(%rbp)
    .seh_savexmm %xmm13, 368
    movdqu %xmm14, 352(%rbp)
    .seh_savexmm %xmm14, 352
    movdqu %xmm15, 336(%rbp)
    .seh_savexmm %xmm15, 336
    movq %rbx, 320(%rbp)
    .seh_savereg %rbx, 320
    movq %r12, 312(%rbp)
    .seh_savereg %r12, 312
    movq %r13, 304(%rbp)
    .seh_savereg %r13, 304
    movq %r14, 296(%rbp)
    .seh_savereg %r14, 296
    movq %r15, 288(%rbp)
    .seh_savereg %r15, 288
    .seh_endprologue
    movq %rcx, 528(%rbp)
    movq %rdx, 536(%rbp)
    movq %r8, 544(%rbp)
    movq %r9, 552(%rbp)
    movq 536(%rbp), %rax
    movq %rax, 224(%rbp)
    movq 544(%rbp), %rax
    leaq 208(%rbp), %r10
    movw %ax, 0(%r10)
    subq $32, %rsp
    leaq 176(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_net_22windows_socket_startup
    addq $32, %rsp
    leaq 176(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_2
    jmp .L5_1
.L5_2:
    leaq 240(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 328(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 328(%rbp), %rax
    movq 504(%rbp), %rdi
    movq 496(%rbp), %rsi
    movdqu 480(%rbp), %xmm6
    movdqu 464(%rbp), %xmm7
    movdqu 448(%rbp), %xmm8
    movdqu 432(%rbp), %xmm9
    movdqu 416(%rbp), %xmm10
    movdqu 400(%rbp), %xmm11
    movdqu 384(%rbp), %xmm12
    movdqu 368(%rbp), %xmm13
    movdqu 352(%rbp), %xmm14
    movdqu 336(%rbp), %xmm15
    movq 320(%rbp), %rbx
    movq 312(%rbp), %r12
    movq 304(%rbp), %r13
    movq 296(%rbp), %r14
    movq 288(%rbp), %r15
    leaq 512(%rbp), %rsp
    popq %rbp
    ret
.L5_3:
.L5_1:
    leaq 208(%rbp), %r12
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_7
    jmp .L5_5
.L5_7:
    movq %r12, %r10
    movzbl (%r10), %ebx
.L5_4:
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
    jne .L5_11
    jmp .L5_26
.L5_26:
    movl %r14d, %ebx
    jmp .L5_12
.L5_11:
    movl $1, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L5_12:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L5_8
    jmp .L5_9
.L5_8:
    leaq 240(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_15(%rip), %r13
    leaq 160(%rbp), %r14
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
    movq 328(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 328(%rbp), %rax
    movq 504(%rbp), %rdi
    movq 496(%rbp), %rsi
    movdqu 480(%rbp), %xmm6
    movdqu 464(%rbp), %xmm7
    movdqu 448(%rbp), %xmm8
    movdqu 432(%rbp), %xmm9
    movdqu 416(%rbp), %xmm10
    movdqu 400(%rbp), %xmm11
    movdqu 384(%rbp), %xmm12
    movdqu 368(%rbp), %xmm13
    movdqu 352(%rbp), %xmm14
    movdqu 336(%rbp), %xmm15
    movq 320(%rbp), %rbx
    movq 312(%rbp), %r12
    movq 304(%rbp), %r13
    movq 296(%rbp), %r14
    movq 288(%rbp), %r15
    leaq 512(%rbp), %rsp
    popq %rbp
    ret
.L5_13:
    jmp .L5_10
.L5_9:
.L5_10:
    testl %r13d, %r13d
    jne .L5_14
    jmp .L5_15
.L5_14:
    movl $2, %eax
    movl %eax, %ebx
    jmp .L5_16
.L5_15:
    movl $23, %eax
    movl %eax, %ebx
.L5_16:
    movl %ebx, %r12d
    jmp .L5_6
.L5_5:
    movl $0, %eax
    movl %eax, %r12d
.L5_6:
    leaq 112(%rbp), %rbx
    leaq 64(%rbp), %r13
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
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    leaq 56(%rbp), %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq 224(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call getaddrinfo
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L5_18
.L5_17:
    leaq 240(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_net_14resolver_error
    addq $32, %rsp
    movl %eax, %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_16(%rip), %r14
    leaq 40(%rbp), %r15
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
    movq 328(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 328(%rbp), %rax
    movq 504(%rbp), %rdi
    movq 496(%rbp), %rsi
    movdqu 480(%rbp), %xmm6
    movdqu 464(%rbp), %xmm7
    movdqu 448(%rbp), %xmm8
    movdqu 432(%rbp), %xmm9
    movdqu 416(%rbp), %xmm10
    movdqu 400(%rbp), %xmm11
    movdqu 384(%rbp), %xmm12
    movdqu 368(%rbp), %xmm13
    movdqu 352(%rbp), %xmm14
    movdqu 336(%rbp), %xmm15
    movq 320(%rbp), %rbx
    movq 312(%rbp), %r12
    movq 304(%rbp), %r13
    movq 296(%rbp), %r14
    movq 288(%rbp), %r15
    leaq 512(%rbp), %rsp
    popq %rbp
    ret
.L5_20:
    jmp .L5_19
.L5_18:
.L5_19:
    movq %r13, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L5_21
    jmp .L5_22
.L5_21:
    jmp .L5_23
.L5_22:
    leaq 240(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12unknown_host(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_17(%rip), %r13
    leaq 24(%rbp), %r14
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
    movq 328(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 328(%rbp), %rax
    movq 504(%rbp), %rdi
    movq 496(%rbp), %rsi
    movdqu 480(%rbp), %xmm6
    movdqu 464(%rbp), %xmm7
    movdqu 448(%rbp), %xmm8
    movdqu 432(%rbp), %xmm9
    movdqu 416(%rbp), %xmm10
    movdqu 400(%rbp), %xmm11
    movdqu 384(%rbp), %xmm12
    movdqu 368(%rbp), %xmm13
    movdqu 352(%rbp), %xmm14
    movdqu 336(%rbp), %xmm15
    movq 320(%rbp), %rbx
    movq 312(%rbp), %r12
    movq 304(%rbp), %r13
    movq 296(%rbp), %r14
    movq 288(%rbp), %r15
    leaq 512(%rbp), %rsp
    popq %rbp
    ret
.L5_24:
.L5_23:
    leaq 8(%rbp), %r13
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
    leaq 240(%rbp), %r14
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
    movq 328(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 328(%rbp), %rax
    movq 504(%rbp), %rdi
    movq 496(%rbp), %rsi
    movdqu 480(%rbp), %xmm6
    movdqu 464(%rbp), %xmm7
    movdqu 448(%rbp), %xmm8
    movdqu 432(%rbp), %xmm9
    movdqu 416(%rbp), %xmm10
    movdqu 400(%rbp), %xmm11
    movdqu 384(%rbp), %xmm12
    movdqu 368(%rbp), %xmm13
    movdqu 352(%rbp), %xmm14
    movdqu 336(%rbp), %xmm15
    movq 320(%rbp), %rbx
    movq 312(%rbp), %r12
    movq 304(%rbp), %r13
    movq 296(%rbp), %r14
    movq 288(%rbp), %r15
    leaq 512(%rbp), %rsp
    popq %rbp
    ret
.L5_25:
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_17resolved_endpoint
lb_net_17resolved_endpoint:
    .seh_proc lb_net_17resolved_endpoint
    pushq %rbp
    .seh_pushreg %rbp
    subq $592, %rsp
    .seh_stackalloc 592
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 408(%rbp)
    movq %rdi, 584(%rbp)
    .seh_savereg %rdi, 584
    movq %rsi, 576(%rbp)
    .seh_savereg %rsi, 576
    movdqu %xmm6, 560(%rbp)
    .seh_savexmm %xmm6, 560
    movdqu %xmm7, 544(%rbp)
    .seh_savexmm %xmm7, 544
    movdqu %xmm8, 528(%rbp)
    .seh_savexmm %xmm8, 528
    movdqu %xmm9, 512(%rbp)
    .seh_savexmm %xmm9, 512
    movdqu %xmm10, 496(%rbp)
    .seh_savexmm %xmm10, 496
    movdqu %xmm11, 480(%rbp)
    .seh_savexmm %xmm11, 480
    movdqu %xmm12, 464(%rbp)
    .seh_savexmm %xmm12, 464
    movdqu %xmm13, 448(%rbp)
    .seh_savexmm %xmm13, 448
    movdqu %xmm14, 432(%rbp)
    .seh_savexmm %xmm14, 432
    movdqu %xmm15, 416(%rbp)
    .seh_savexmm %xmm15, 416
    movq %rbx, 400(%rbp)
    .seh_savereg %rbx, 400
    movq %r12, 392(%rbp)
    .seh_savereg %r12, 392
    movq %r13, 384(%rbp)
    .seh_savereg %r13, 384
    movq %r14, 376(%rbp)
    .seh_savereg %r14, 376
    movq %r15, 368(%rbp)
    .seh_savereg %r15, 368
    .seh_endprologue
    movq %rcx, 608(%rbp)
    movq %rdx, 616(%rbp)
    movq %r8, 624(%rbp)
    movq %r9, 632(%rbp)
    movq 616(%rbp), %rax
    movq %rax, 320(%rbp)
    movq 624(%rbp), %rax
    movl %eax, 304(%rbp)
    movq 632(%rbp), %rax
    movl %eax, 288(%rbp)
    leaq 320(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $4, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %r10
    movslq (%r10), %r13
    movl $2, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L6_33
    jmp .L6_1
.L6_33:
    movl %r13d, %r14d
    jmp .L6_2
.L6_1:
    movq 8(%rbp), %r10
    movslq (%r10), %r13
    movl $23, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L6_2:
    movzbl %r14b, %r13d
    movzbl %r13b, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L6_34
    jmp .L6_6
.L6_34:
    movl %r13d, %r14d
    jmp .L6_7
.L6_6:
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movl $1, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L6_7:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L6_35
    jmp .L6_8
.L6_35:
    movl %r13d, %r14d
    jmp .L6_9
.L6_8:
    leaq 288(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L6_10
    jmp .L6_36
.L6_36:
    movl %r14d, %r13d
    jmp .L6_11
.L6_10:
    movq 8(%rbp), %r10
    movslq (%r10), %r14
    cmpl %r14d, %r13d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r13d
.L6_11:
    movzbl %r13b, %r14d
.L6_9:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L6_3
    jmp .L6_4
.L6_3:
    leaq 260(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    leaq 340(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq 408(%rbp), %rdi
    movq $28, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 408(%rbp), %rax
    movq 584(%rbp), %rdi
    movq 576(%rbp), %rsi
    movdqu 560(%rbp), %xmm6
    movdqu 544(%rbp), %xmm7
    movdqu 528(%rbp), %xmm8
    movdqu 512(%rbp), %xmm9
    movdqu 496(%rbp), %xmm10
    movdqu 480(%rbp), %xmm11
    movdqu 464(%rbp), %xmm12
    movdqu 448(%rbp), %xmm13
    movdqu 432(%rbp), %xmm14
    movdqu 416(%rbp), %xmm15
    movq 400(%rbp), %rbx
    movq 392(%rbp), %r12
    movq 384(%rbp), %r13
    movq 376(%rbp), %r14
    movq 368(%rbp), %r15
    leaq 592(%rbp), %rsp
    popq %rbp
    ret
.L6_12:
    jmp .L6_5
.L6_4:
.L6_5:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_net_12info_address
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L6_13
    jmp .L6_14
.L6_13:
    jmp .L6_15
.L6_14:
    leaq 232(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    leaq 340(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq 408(%rbp), %rdi
    movq $28, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 408(%rbp), %rax
    movq 584(%rbp), %rdi
    movq 576(%rbp), %rsi
    movdqu 560(%rbp), %xmm6
    movdqu 544(%rbp), %xmm7
    movdqu 528(%rbp), %xmm8
    movdqu 512(%rbp), %xmm9
    movdqu 496(%rbp), %xmm10
    movdqu 480(%rbp), %xmm11
    movdqu 464(%rbp), %xmm12
    movdqu 448(%rbp), %xmm13
    movdqu 432(%rbp), %xmm14
    movdqu 416(%rbp), %xmm15
    movq 400(%rbp), %rbx
    movq 392(%rbp), %r12
    movq 384(%rbp), %r13
    movq 376(%rbp), %r14
    movq 368(%rbp), %r15
    leaq 592(%rbp), %rsp
    popq %rbp
    ret
.L6_16:
.L6_15:
    leaq 208(%rbp), %r15
    movq $16, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movl %r14d, %eax
    movq %rax, 16(%rsp)
    leaq 104(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_14decode_address
    addq $32, %rsp
    leaq 104(%rbp), %r12
    movq $48, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L6_20
    jmp .L6_19
.L6_20:
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 160(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L6_17
.L6_19:
    leaq 184(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L6_18
.L6_17:
    leaq 76(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    leaq 340(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq 408(%rbp), %rdi
    movq $28, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 408(%rbp), %rax
    movq 584(%rbp), %rdi
    movq 576(%rbp), %rsi
    movdqu 560(%rbp), %xmm6
    movdqu 544(%rbp), %xmm7
    movdqu 528(%rbp), %xmm8
    movdqu 512(%rbp), %xmm9
    movdqu 496(%rbp), %xmm10
    movdqu 480(%rbp), %xmm11
    movdqu 464(%rbp), %xmm12
    movdqu 448(%rbp), %xmm13
    movdqu 432(%rbp), %xmm14
    movdqu 416(%rbp), %xmm15
    movq 400(%rbp), %rbx
    movq 392(%rbp), %r12
    movq 384(%rbp), %r13
    movq 376(%rbp), %r14
    movq 368(%rbp), %r15
    leaq 592(%rbp), %rsp
    popq %rbp
    ret
.L6_21:
.L6_18:
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 8(%rbp), %r10
    movslq (%r10), %r12
    movl $2, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L6_22
    jmp .L6_37
.L6_37:
    movl %r12d, %ebx
    jmp .L6_23
.L6_22:
    movq %r15, %r10
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
    movq 8(%rbp), %r10
    movslq (%r10), %rbx
    movl $23, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L6_26
    jmp .L6_39
.L6_39:
    movl %ebx, %r12d
    jmp .L6_27
.L6_26:
    movq %r15, %r10
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
    leaq 48(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    leaq 340(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq 408(%rbp), %rdi
    movq $28, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 408(%rbp), %rax
    movq 584(%rbp), %rdi
    movq 576(%rbp), %rsi
    movdqu 560(%rbp), %xmm6
    movdqu 544(%rbp), %xmm7
    movdqu 528(%rbp), %xmm8
    movdqu 512(%rbp), %xmm9
    movdqu 496(%rbp), %xmm10
    movdqu 480(%rbp), %xmm11
    movdqu 464(%rbp), %xmm12
    movdqu 448(%rbp), %xmm13
    movdqu 432(%rbp), %xmm14
    movdqu 416(%rbp), %xmm15
    movq 400(%rbp), %rbx
    movq 392(%rbp), %r12
    movq 384(%rbp), %r13
    movq 376(%rbp), %r14
    movq 368(%rbp), %r15
    leaq 592(%rbp), %rsp
    popq %rbp
    ret
.L6_31:
    jmp .L6_30
.L6_29:
.L6_30:
    movq $18, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 304(%rbp), %r12
    movq %r12, %r10
    movzwl (%r10), %r12d
    movq %rbx, %r10
    movw %r12w, (%r10)
    leaq 20(%rbp), %rbx
    movq %r15, %r10
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
    leaq 340(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl 24(%r10), %eax
    movl %eax, 24(%r11)
    movq %r12, %rsi
    movq 408(%rbp), %rdi
    movq $28, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 408(%rbp), %rax
    movq 584(%rbp), %rdi
    movq 576(%rbp), %rsi
    movdqu 560(%rbp), %xmm6
    movdqu 544(%rbp), %xmm7
    movdqu 528(%rbp), %xmm8
    movdqu 512(%rbp), %xmm9
    movdqu 496(%rbp), %xmm10
    movdqu 480(%rbp), %xmm11
    movdqu 464(%rbp), %xmm12
    movdqu 448(%rbp), %xmm13
    movdqu 432(%rbp), %xmm14
    movdqu 416(%rbp), %xmm15
    movq 400(%rbp), %rbx
    movq 392(%rbp), %r12
    movq 384(%rbp), %r13
    movq 376(%rbp), %r14
    movq 368(%rbp), %r15
    leaq 592(%rbp), %rsp
    popq %rbp
    ret
.L6_32:
    leaq .Ltext_19(%rip), %rdi
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
    .quad lb_net_resolver_0init
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

    .section .rdata,"dr"
    .p2align 3
