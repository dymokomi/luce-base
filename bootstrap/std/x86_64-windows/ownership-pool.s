    .text

    .p2align 4
    .globl lb_ownership_pool_0init
lb_ownership_pool_0init:
    .seh_proc lb_ownership_pool_0init
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
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_13pending_count@SECREL32(%rax), %rax
    movq %rax, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
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
    .globl lb_ownership_mark
lb_ownership_mark:
    .seh_proc lb_ownership_mark
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
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_13pending_count@SECREL32(%rax), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
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
    .globl lb_ownership_12push_pending
lb_ownership_12push_pending:
    .seh_proc lb_ownership_12push_pending
    pushq %rbp
    .seh_pushreg %rbp
    subq $496, %rsp
    .seh_stackalloc 496
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 312(%rbp)
    .seh_savereg %rbx, 312
    movq %r12, 304(%rbp)
    .seh_savereg %r12, 304
    movq %r13, 296(%rbp)
    .seh_savereg %r13, 296
    movq %r14, 288(%rbp)
    .seh_savereg %r14, 288
    movq %r15, 280(%rbp)
    .seh_savereg %r15, 280
    .seh_endprologue
    movq %rcx, 512(%rbp)
    movq %rdx, 520(%rbp)
    movq %r8, 528(%rbp)
    movq %r9, 536(%rbp)
    movq 512(%rbp), %r10
    leaq 248(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_13pending_count@SECREL32(%rax), %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %r10
    movq (%r10), %r12
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_pending@SECREL32(%rax), %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r12
    jne .L2_2
.L2_1:
    leaq 232(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, 16(%rbp)
    movq $0, %rcx
    cmpq %rcx, %r15
    jbe .L2_7
.L2_6:
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %r12, %rax
    movq %rax, 8(%rbp)
    jmp .L2_8
.L2_7:
    movq $64, %rax
    movq %rax, 8(%rbp)
.L2_8:
    leaq 144(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 8(%rbp), %rax
    movabsq $144115188075855872, %rcx
    cmpq %rcx, %rax
    jbe .L2_10
.L2_9:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_3(%rip), %r15
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq $16, %rcx
    addq %rcx, %r12
    movq $47, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L2_11
.L2_10:
    movq 8(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    imulq %rcx, %rbx
    movq 16(%rbp), %r10
    movq (%r10), %r14
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L2_12
    jmp .L2_13
.L2_13:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_4(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_12:
    movq %r15, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 120(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r13, %r11
    call *%r11
    addq $32, %rsp
    leaq 120(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %rbx
    setne %al
    movzbl %al, %eax
    movl %eax, 56(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl 56(%rbp), %eax
    andl %r13d, %eax
    movl %eax, 48(%rbp)
    movl 48(%rbp), %eax
    testl %eax, %eax
    jne .L2_14
    jmp .L2_15
.L2_14:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_5(%rip), %r12
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
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_11
.L2_15:
    movq %r12, %r10
    movq (%r10), %rbx
    movq 0(%rbp), %r10
    movq %rbx, (%r10)
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 8(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L2_11:
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_17
    jmp .L2_16
.L2_17:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 192(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L2_4
.L2_16:
    leaq 216(%rbp), %rbx
    movq 0(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_5
.L2_4:
    leaq .Ltext_6(%rip), %rbx
    leaq 104(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $13, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_7(%rip), %rbx
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
.L2_5:
    leaq 216(%rbp), %rbx
    movq %rbx, %r10
    movq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rax, %r12
.L2_18:
    movq 80(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jae .L2_20
.L2_19:
    movq 24(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 40(%rbp)
    movq %rbx, %r10
    movq (%r10), %r14
    cmpq %r14, %r12
    jb 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $32, %rcx
    movq %r12, %r14
    imulq %rcx, %r14
    movq 40(%rbp), %rax
    addq %r14, %rax
    movq %rax, 32(%rbp)
    movq 72(%rbp), %r10
    movq (%r10), %r15
    movq 64(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r14, %r13
    addq %r15, %r13
    movq %r13, %r10
    movq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r12
    jmp .L2_18
.L2_20:
    movq 64(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L2_22
.L2_21:
    leaq 88(%rbp), %r12
    movq 72(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %rax
    movq $32, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq 16(%rbp), %r10
    movq (%r10), %r13
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_25
    jmp .L2_24
.L2_25:
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
.L2_24:
    jmp .L2_23
.L2_22:
.L2_23:
    movq 24(%rbp), %r10
    movq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_3
.L2_2:
.L2_3:
    movq 80(%rbp), %r10
    movq (%r10), %rbx
    movq 72(%rbp), %r10
    movq (%r10), %r12
    movq 64(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $32, %rcx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 248(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 80(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 80(%rbp), %r10
    movq %rbx, (%r10)
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
    movq 312(%rbp), %rbx
    movq 304(%rbp), %r12
    movq 296(%rbp), %r13
    movq 288(%rbp), %r14
    movq 280(%rbp), %r15
    leaq 496(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_ownership_11pool_object
lb_ownership_11pool_object:
    .seh_proc lb_ownership_11pool_object
    pushq %rbp
    .seh_pushreg %rbp
    subq $256, %rsp
    .seh_stackalloc 256
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 248(%rbp)
    .seh_savereg %rdi, 248
    movq %rsi, 240(%rbp)
    .seh_savereg %rsi, 240
    movdqu %xmm6, 224(%rbp)
    .seh_savexmm %xmm6, 224
    movdqu %xmm7, 208(%rbp)
    .seh_savexmm %xmm7, 208
    movdqu %xmm8, 192(%rbp)
    .seh_savexmm %xmm8, 192
    movdqu %xmm9, 176(%rbp)
    .seh_savexmm %xmm9, 176
    movdqu %xmm10, 160(%rbp)
    .seh_savexmm %xmm10, 160
    movdqu %xmm11, 144(%rbp)
    .seh_savexmm %xmm11, 144
    movdqu %xmm12, 128(%rbp)
    .seh_savexmm %xmm12, 128
    movdqu %xmm13, 112(%rbp)
    .seh_savexmm %xmm13, 112
    movdqu %xmm14, 96(%rbp)
    .seh_savexmm %xmm14, 96
    movdqu %xmm15, 80(%rbp)
    .seh_savexmm %xmm15, 80
    movq %rbx, 72(%rbp)
    .seh_savereg %rbx, 72
    movq %r12, 64(%rbp)
    .seh_savereg %r12, 64
    movq %r13, 56(%rbp)
    .seh_savereg %r13, 56
    .seh_endprologue
    movq %rcx, 272(%rbp)
    movq %rdx, 280(%rbp)
    movq %r8, 288(%rbp)
    movq %r9, 296(%rbp)
    movq 272(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq 8(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    leaq 40(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_12push_pending
    addq $64, %rsp
    movq %r12, %rax
    movq 248(%rbp), %rdi
    movq 240(%rbp), %rsi
    movdqu 224(%rbp), %xmm6
    movdqu 208(%rbp), %xmm7
    movdqu 192(%rbp), %xmm8
    movdqu 176(%rbp), %xmm9
    movdqu 160(%rbp), %xmm10
    movdqu 144(%rbp), %xmm11
    movdqu 128(%rbp), %xmm12
    movdqu 112(%rbp), %xmm13
    movdqu 96(%rbp), %xmm14
    movdqu 80(%rbp), %xmm15
    movq 72(%rbp), %rbx
    movq 64(%rbp), %r12
    movq 56(%rbp), %r13
    leaq 256(%rbp), %rsp
    popq %rbp
    ret
.L3_1:
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_ownership_drain
lb_ownership_drain:
    .seh_proc lb_ownership_drain
    pushq %rbp
    .seh_pushreg %rbp
    subq $400, %rsp
    .seh_stackalloc 400
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 216(%rbp)
    .seh_savereg %rbx, 216
    movq %r12, 208(%rbp)
    .seh_savereg %r12, 208
    movq %r13, 200(%rbp)
    .seh_savereg %r13, 200
    movq %r14, 192(%rbp)
    .seh_savereg %r14, 192
    movq %r15, 184(%rbp)
    .seh_savereg %r15, 184
    .seh_endprologue
    movq %rcx, 416(%rbp)
    movq %rdx, 424(%rbp)
    movq %r8, 432(%rbp)
    movq %r9, 440(%rbp)
    movq 416(%rbp), %rax
    movq %rax, 168(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_13pending_count@SECREL32(%rax), %rax
    movq %rax, 96(%rbp)
    movq 96(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 88(%rbp)
    leaq 168(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 80(%rbp)
    movq 88(%rbp), %rax
    movq 80(%rbp), %rcx
    cmpq %rcx, %rax
    ja .L4_2
.L4_1:
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
    movq 216(%rbp), %rbx
    movq 208(%rbp), %r12
    movq 200(%rbp), %r13
    movq 192(%rbp), %r14
    movq 184(%rbp), %r15
    leaq 400(%rbp), %rsp
    popq %rbp
    ret
.L4_4:
    jmp .L4_3
.L4_2:
.L4_3:
    leaq 136(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 64(%rbp)
    movq 72(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    movq 72(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    leaq 120(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, 24(%rbp)
    leaq 104(%rbp), %r15
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, 16(%rbp)
    movq 24(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 8(%rbp)
    movq 80(%rbp), %rax
    movq %rax, %rbx
.L4_5:
    movq 88(%rbp), %rcx
    cmpq %rcx, %rbx
    jae .L4_7
.L4_6:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_pending@SECREL32(%rax), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $32, %rcx
    movq %rbx, %r13
    imulq %rcx, %r13
    addq %r13, %r12
    movq %r12, %r10
    movq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 72(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L4_11
    jmp .L4_9
.L4_11:
.L4_8:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_release
    addq $32, %rsp
    jmp .L4_10
.L4_9:
    movq 64(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L4_15
    jmp .L4_13
.L4_15:
.L4_12:
    movq 56(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L4_19
    jmp .L4_17
.L4_19:
.L4_16:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    movq %r13, %r11
    call *%r11
    addq $32, %rsp
    jmp .L4_18
.L4_17:
.L4_18:
    movq 48(%rbp), %r10
    movq (%r10), %r13
    movq 40(%rbp), %r10
    movq %r12, (%r10)
    movq 32(%rbp), %r10
    movq %r13, (%r10)
    movq %r15, %r10
    movq %r12, (%r10)
    movq 16(%rbp), %r10
    movq %r13, (%r10)
    movq 24(%rbp), %r10
    movq (%r10), %r13
    movq 8(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L4_21
    jmp .L4_20
.L4_21:
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
.L4_20:
    jmp .L4_14
.L4_13:
.L4_14:
.L4_10:
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %rbx
    jmp .L4_5
.L4_7:
    movq 80(%rbp), %rax
    movq 96(%rbp), %r10
    movq %rax, (%r10)
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
    movq 216(%rbp), %rbx
    movq 208(%rbp), %r12
    movq 200(%rbp), %r13
    movq 192(%rbp), %r14
    movq 184(%rbp), %r15
    leaq 400(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_ownership_pool_0init
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
    .asciz "src/std/ownership/pool.lucb:13:5"
.Ltext_2:
    .asciz "src/std/ownership/pool.lucb:17:9"
.Ltext_3:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_4:
    .asciz "memory.unset"
.Ltext_5:
    .asciz "memory.exhausted"
.Ltext_6:
    .asciz "out of memory"
.Ltext_7:
    .asciz "src/std/ownership/pool.lucb:18:13"
.Ltext_8:
    .asciz "src/std/ownership/pool.lucb:21:13"
.Ltext_9:
    .asciz "src/std/ownership/pool.lucb:22:13"
.Ltext_10:
    .asciz "src/std/ownership/pool.lucb:24:13"
.Ltext_11:
    .asciz "src/std/ownership/pool.lucb:26:5"
.Ltext_12:
    .asciz "src/std/ownership/pool.lucb:27:5"
.Ltext_13:
    .asciz "src/std/ownership/pool.lucb:32:5"
.Ltext_14:
    .asciz "src/std/ownership/pool.lucb:49:9"
.Ltext_15:
    .asciz "src/std/ownership/pool.lucb:55:13"
.Ltext_16:
    .asciz "src/std/ownership/pool.lucb:56:9"
.Ltext_17:
    .asciz "integer overflow"
.Ltext_18:
    .asciz "index out of bounds"

    .section .rdata,"dr"
    .p2align 3

    .section .tls$LUCE,"dw"
    .globl lb_ownership_pending
    .p2align 3
lb_ownership_pending:
    .zero 16

    .section .tls$LUCE,"dw"
    .globl lb_ownership_13pending_count
    .p2align 3
lb_ownership_13pending_count:
    .zero 8
