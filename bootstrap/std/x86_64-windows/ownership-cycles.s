    .text

    .p2align 4
    .globl lb_ownership_cycles_0init
lb_ownership_cycles_0init:
    .seh_proc lb_ownership_cycles_0init
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
    leaq lb_ownership_15candidate_limit(%rip), %rbx
    movq $1024, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_10root_count@SECREL32(%rax), %rax
    movq %rax, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_11white_count@SECREL32(%rax), %rax
    movq %rax, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_17collector_running@SECREL32(%rax), %rax
    movq %rax, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
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
    .globl lb_ownership_13possible_root
lb_ownership_13possible_root:
    .seh_proc lb_ownership_13possible_root
    pushq %rbp
    .seh_pushreg %rbp
    subq $512, %rsp
    .seh_stackalloc 512
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 328(%rbp)
    .seh_savereg %rbx, 328
    movq %r12, 320(%rbp)
    .seh_savereg %r12, 320
    movq %r13, 312(%rbp)
    .seh_savereg %r13, 312
    movq %r14, 304(%rbp)
    .seh_savereg %r14, 304
    movq %r15, 296(%rbp)
    .seh_savereg %r15, 296
    .seh_endprologue
    movq %rcx, 528(%rbp)
    movq %rdx, 536(%rbp)
    movq %r8, 544(%rbp)
    movq %r9, 552(%rbp)
    movq 528(%rbp), %rax
    movq %rax, 280(%rbp)
    leaq 280(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 96(%rbp)
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_8color_of
    addq $32, %rsp
    movl %eax, %r12d
    movl $3, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_2
.L1_1:
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $3, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_ownership_9set_color
    addq $32, %rsp
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $4, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_ownership_has
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_5
.L1_4:
    movq 96(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    movl $4, %ecx
    orl %ecx, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
    movq 96(%rbp), %rax
    leaq 264(%rbp), %r10
    movq %rax, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_10root_count@SECREL32(%rax), %rax
    movq %rax, 88(%rbp)
    movq 88(%rbp), %r10
    movq (%r10), %r13
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_roots@SECREL32(%rax), %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r13
    jne .L1_13
.L1_12:
    leaq 248(%rbp), %rax
    movq %rax, 32(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, 24(%rbp)
    movq $0, %rcx
    cmpq %rcx, %r15
    jbe .L1_18
.L1_17:
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r13, %rax
    movq %rax, 16(%rbp)
    jmp .L1_19
.L1_18:
    movq $1024, %rax
    movq %rax, 16(%rbp)
.L1_19:
    leaq 160(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 16(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L1_21
.L1_20:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $208273409, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    leaq .Ltext_1(%rip), %r15
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_22
.L1_21:
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq 24(%rbp), %r10
    movq (%r10), %rbx
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L1_23
    jmp .L1_24
.L1_24:
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_23:
    movq %r15, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 136(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r14, %r11
    call *%r11
    addq $32, %rsp
    leaq 136(%rbp), %r13
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, 64(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl 64(%rbp), %eax
    andl %r14d, %eax
    movl %eax, 56(%rbp)
    movl 56(%rbp), %eax
    testl %eax, %eax
    jne .L1_25
    jmp .L1_26
.L1_25:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_3(%rip), %r12
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
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_22
.L1_26:
    movq %r13, %r10
    movq (%r10), %rbx
    movq 8(%rbp), %r10
    movq %rbx, (%r10)
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 16(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L1_22:
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_28
    jmp .L1_27
.L1_28:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 208(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L1_15
.L1_27:
    leaq 232(%rbp), %rbx
    movq 8(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L1_16
.L1_15:
    leaq .Ltext_4(%rip), %rbx
    leaq 120(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $13, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_5(%rip), %rbx
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
.L1_16:
    leaq 232(%rbp), %rbx
    movq %rbx, %r10
    movq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 32(%rbp), %r10
    movq (%r10), %rbx
    movq 32(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rax
    movq %rax, %r13
.L1_29:
    movq 88(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L1_31
.L1_30:
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %r13, %rax
    imulq %rcx, %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 40(%rbp)
    movq 80(%rbp), %r10
    movq (%r10), %r15
    movq 72(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 48(%rbp), %rax
    movq %rax, %r14
    addq %r15, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq 40(%rbp), %r10
    movq %r14, (%r10)
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r13
    jmp .L1_29
.L1_31:
    movq 72(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L1_33
.L1_32:
    leaq 104(%rbp), %r12
    movq 80(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
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
    movq 24(%rbp), %r10
    movq (%r10), %r13
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L1_36
    jmp .L1_35
.L1_36:
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
.L1_35:
    jmp .L1_34
.L1_33:
.L1_34:
    movq 32(%rbp), %r10
    movq 80(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L1_14
.L1_13:
.L1_14:
    movq 88(%rbp), %r10
    movq (%r10), %rbx
    movq 80(%rbp), %r10
    movq (%r10), %r12
    movq 72(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq 96(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 88(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 88(%rbp), %r10
    movq %rbx, (%r10)
.L1_37:
    movq $1024, %rcx
    cmpq %rcx, %rbx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_10
    jmp .L1_38
.L1_38:
    movl %r12d, %ebx
    jmp .L1_11
.L1_10:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_17collector_running@SECREL32(%rax), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L1_11:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L1_7
    jmp .L1_8
.L1_7:
    subq $32, %rsp
    call lb_ownership_collect
    addq $32, %rsp
    jmp .L1_9
.L1_8:
.L1_9:
    jmp .L1_6
.L1_5:
.L1_6:
    jmp .L1_3
.L1_2:
.L1_3:
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
    movq 328(%rbp), %rbx
    movq 320(%rbp), %r12
    movq 312(%rbp), %r13
    movq 304(%rbp), %r14
    movq 296(%rbp), %r15
    leaq 512(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_ownership_15visit_mark_gray
lb_ownership_15visit_mark_gray:
    .seh_proc lb_ownership_15visit_mark_gray
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
    movq 280(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq 40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $32, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_ownership_has
    addq $32, %rsp
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L2_1
    jmp .L2_2
.L2_1:
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
.L2_4:
    jmp .L2_3
.L2_2:
.L2_3:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_12check_thread
    addq $32, %rsp
    movq %rbx, %r10
    movl (%r10), %r12d
    movl %r12d, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq 8(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_8color_of
    addq $32, %rsp
    movl %eax, %r12d
    movl $1, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L2_6
.L2_5:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_ownership_9set_color
    addq $32, %rsp
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $40, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq lb_ownership_15visit_mark_gray(%rip), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq %r12, %r11
    call *%r11
    addq $32, %rsp
    jmp .L2_7
.L2_6:
.L2_7:
.L2_8:
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
    .seh_endproc

    .p2align 4
    .globl lb_ownership_10visit_scan
lb_ownership_10visit_scan:
    .seh_proc lb_ownership_10visit_scan
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
    movq %r12, 32(%rbp)
    .seh_savereg %r12, 32
    .seh_endprologue
    movq %rcx, 240(%rbp)
    movq %rdx, 248(%rbp)
    movq %r8, 256(%rbp)
    movq %r9, 264(%rbp)
    movq 240(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 248(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $32, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_ownership_has
    addq $32, %rsp
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L3_1
    jmp .L3_2
.L3_1:
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
    movq 32(%rbp), %r12
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L3_4:
    jmp .L3_3
.L3_2:
.L3_3:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_12check_thread
    addq $32, %rsp
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_scan
    addq $32, %rsp
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
    movq 32(%rbp), %r12
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_ownership_16visit_scan_black
lb_ownership_16visit_scan_black:
    .seh_proc lb_ownership_16visit_scan_black
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
    movq 280(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq 40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $32, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_ownership_has
    addq $32, %rsp
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L4_1
    jmp .L4_2
.L4_1:
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
.L4_4:
    jmp .L4_3
.L4_2:
.L4_3:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_12check_thread
    addq $32, %rsp
    movq %rbx, %r10
    movl (%r10), %r12d
    movl %r12d, %eax
    movl $1, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_8color_of
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L4_6
.L4_5:
    leaq 8(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $0, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_ownership_9set_color
    addq $32, %rsp
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $40, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq lb_ownership_16visit_scan_black(%rip), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq %r12, %r11
    call *%r11
    addq $32, %rsp
.L4_8:
    jmp .L4_7
.L4_6:
.L4_7:
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
    .seh_endproc

    .p2align 4
    .globl lb_ownership_scan
lb_ownership_scan:
    .seh_proc lb_ownership_scan
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
    movq %r12, 48(%rbp)
    .seh_savereg %r12, 48
    movq %r13, 40(%rbp)
    .seh_savereg %r13, 40
    .seh_endprologue
    movq %rcx, 256(%rbp)
    movq %rdx, 264(%rbp)
    movq %r8, 272(%rbp)
    movq %r9, 280(%rbp)
    movq 256(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_8color_of
    addq $32, %rsp
    movl %eax, %r12d
    movl $1, %ecx
    cmpl %ecx, %r12d
    jne .L5_2
.L5_1:
    movq %rbx, %r10
    movl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jbe .L5_5
.L5_4:
    leaq 8(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $0, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_ownership_9set_color
    addq $32, %rsp
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $40, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq lb_ownership_16visit_scan_black(%rip), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq %r12, %r11
    call *%r11
    addq $32, %rsp
.L5_7:
    jmp .L5_6
.L5_5:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $2, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_ownership_9set_color
    addq $32, %rsp
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $40, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq lb_ownership_10visit_scan(%rip), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq %r12, %r11
    call *%r11
    addq $32, %rsp
.L5_6:
    jmp .L5_3
.L5_2:
.L5_3:
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
    movq 48(%rbp), %r12
    movq 40(%rbp), %r13
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_ownership_12visit_gather
lb_ownership_12visit_gather:
    .seh_proc lb_ownership_12visit_gather
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
    movq %r12, 32(%rbp)
    .seh_savereg %r12, 32
    .seh_endprologue
    movq %rcx, 240(%rbp)
    movq %rdx, 248(%rbp)
    movq %r8, 256(%rbp)
    movq %r9, 264(%rbp)
    movq 240(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 248(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $32, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_ownership_has
    addq $32, %rsp
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L6_1
    jmp .L6_2
.L6_1:
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
    movq 32(%rbp), %r12
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L6_4:
    jmp .L6_3
.L6_2:
.L6_3:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_12check_thread
    addq $32, %rsp
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_gather
    addq $32, %rsp
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
    movq 32(%rbp), %r12
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_ownership_gather
lb_ownership_gather:
    .seh_proc lb_ownership_gather
    pushq %rbp
    .seh_pushreg %rbp
    subq $512, %rsp
    .seh_stackalloc 512
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 328(%rbp)
    .seh_savereg %rbx, 328
    movq %r12, 320(%rbp)
    .seh_savereg %r12, 320
    movq %r13, 312(%rbp)
    .seh_savereg %r13, 312
    movq %r14, 304(%rbp)
    .seh_savereg %r14, 304
    movq %r15, 296(%rbp)
    .seh_savereg %r15, 296
    .seh_endprologue
    movq %rcx, 528(%rbp)
    movq %rdx, 536(%rbp)
    movq %r8, 544(%rbp)
    movq %r9, 552(%rbp)
    movq 528(%rbp), %rax
    movq %rax, 280(%rbp)
    leaq 280(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 96(%rbp)
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_8color_of
    addq $32, %rsp
    movl %eax, %r12d
    movl $2, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L7_4
    jmp .L7_32
.L7_32:
    movl %r12d, %r13d
    jmp .L7_5
.L7_4:
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $16, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_ownership_has
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L7_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L7_1
    jmp .L7_2
.L7_1:
    movq 96(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    movl $16, %ecx
    orl %ecx, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
    movq 96(%rbp), %rax
    leaq 264(%rbp), %r10
    movq %rax, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_11white_count@SECREL32(%rax), %rax
    movq %rax, 88(%rbp)
    movq 88(%rbp), %r10
    movq (%r10), %r13
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_whites@SECREL32(%rax), %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r13
    jne .L7_7
.L7_6:
    leaq 248(%rbp), %rax
    movq %rax, 32(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, 24(%rbp)
    movq $0, %rcx
    cmpq %rcx, %r15
    jbe .L7_12
.L7_11:
    movq %r15, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r13, %rax
    movq %rax, 16(%rbp)
    jmp .L7_13
.L7_12:
    movq $256, %rax
    movq %rax, 16(%rbp)
.L7_13:
    leaq 160(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 16(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L7_15
.L7_14:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $208273409, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    leaq .Ltext_1(%rip), %r15
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L7_16
.L7_15:
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq 24(%rbp), %r10
    movq (%r10), %rbx
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L7_17
    jmp .L7_18
.L7_18:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L7_17:
    movq %r15, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 136(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r14, %r11
    call *%r11
    addq $32, %rsp
    leaq 136(%rbp), %r13
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, 64(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl 64(%rbp), %eax
    andl %r14d, %eax
    movl %eax, 56(%rbp)
    movl 56(%rbp), %eax
    testl %eax, %eax
    jne .L7_19
    jmp .L7_20
.L7_19:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_3(%rip), %r12
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
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L7_16
.L7_20:
    movq %r13, %r10
    movq (%r10), %rbx
    movq 8(%rbp), %r10
    movq %rbx, (%r10)
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 16(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L7_16:
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_22
    jmp .L7_21
.L7_22:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 208(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L7_9
.L7_21:
    leaq 232(%rbp), %rbx
    movq 8(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L7_10
.L7_9:
    leaq .Ltext_4(%rip), %rbx
    leaq 120(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $13, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_12(%rip), %rbx
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
.L7_10:
    leaq 232(%rbp), %rbx
    movq %rbx, %r10
    movq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 32(%rbp), %r10
    movq (%r10), %rbx
    movq 32(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rax
    movq %rax, %r13
.L7_23:
    movq 88(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L7_25
.L7_24:
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %r13, %rax
    imulq %rcx, %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 40(%rbp)
    movq 80(%rbp), %r10
    movq (%r10), %r15
    movq 72(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 48(%rbp), %rax
    movq %rax, %r14
    addq %r15, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq 40(%rbp), %r10
    movq %r14, (%r10)
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r13
    jmp .L7_23
.L7_25:
    movq 72(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L7_27
.L7_26:
    leaq 104(%rbp), %r12
    movq 80(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
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
    movq 24(%rbp), %r10
    movq (%r10), %r13
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L7_30
    jmp .L7_29
.L7_30:
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
.L7_29:
    jmp .L7_28
.L7_27:
.L7_28:
    movq 32(%rbp), %r10
    movq 80(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L7_8
.L7_7:
.L7_8:
    movq 88(%rbp), %r10
    movq (%r10), %rbx
    movq 80(%rbp), %r10
    movq (%r10), %r12
    movq 72(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq 96(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 88(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 88(%rbp), %r10
    movq %rbx, (%r10)
.L7_31:
    movq 96(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $40, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_ownership_12visit_gather(%rip), %r12
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 96(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq %rbx, %r11
    call *%r11
    addq $32, %rsp
    jmp .L7_3
.L7_2:
.L7_3:
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
    movq 328(%rbp), %rbx
    movq 320(%rbp), %r12
    movq 312(%rbp), %r13
    movq 304(%rbp), %r14
    movq 296(%rbp), %r15
    leaq 512(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_ownership_13visit_restore
lb_ownership_13visit_restore:
    .seh_proc lb_ownership_13visit_restore
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
    movq %r12, 32(%rbp)
    .seh_savereg %r12, 32
    .seh_endprologue
    movq %rcx, 240(%rbp)
    movq %rdx, 248(%rbp)
    movq %r8, 256(%rbp)
    movq %r9, 264(%rbp)
    movq 240(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 248(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $32, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_ownership_has
    addq $32, %rsp
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L8_1
    jmp .L8_2
.L8_1:
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
    movq 32(%rbp), %r12
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L8_4:
    jmp .L8_3
.L8_2:
.L8_3:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_12check_thread
    addq $32, %rsp
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $16, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_ownership_has
    addq $32, %rsp
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L8_5
    jmp .L8_6
.L8_5:
    movq %rbx, %r10
    movl (%r10), %r12d
    movl %r12d, %eax
    movl $1, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    jmp .L8_7
.L8_6:
.L8_7:
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
    movq 32(%rbp), %r12
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_ownership_collect
lb_ownership_collect:
    .seh_proc lb_ownership_collect
    pushq %rbp
    .seh_pushreg %rbp
    subq $320, %rsp
    .seh_stackalloc 320
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 312(%rbp)
    .seh_savereg %rdi, 312
    movq %rsi, 304(%rbp)
    .seh_savereg %rsi, 304
    movdqu %xmm6, 288(%rbp)
    .seh_savexmm %xmm6, 288
    movdqu %xmm7, 272(%rbp)
    .seh_savexmm %xmm7, 272
    movdqu %xmm8, 256(%rbp)
    .seh_savexmm %xmm8, 256
    movdqu %xmm9, 240(%rbp)
    .seh_savexmm %xmm9, 240
    movdqu %xmm10, 224(%rbp)
    .seh_savexmm %xmm10, 224
    movdqu %xmm11, 208(%rbp)
    .seh_savexmm %xmm11, 208
    movdqu %xmm12, 192(%rbp)
    .seh_savexmm %xmm12, 192
    movdqu %xmm13, 176(%rbp)
    .seh_savexmm %xmm13, 176
    movdqu %xmm14, 160(%rbp)
    .seh_savexmm %xmm14, 160
    movdqu %xmm15, 144(%rbp)
    .seh_savexmm %xmm15, 144
    movq %rbx, 136(%rbp)
    .seh_savereg %rbx, 136
    movq %r12, 128(%rbp)
    .seh_savereg %r12, 128
    movq %r13, 120(%rbp)
    .seh_savereg %r13, 120
    movq %r14, 112(%rbp)
    .seh_savereg %r14, 112
    movq %r15, 104(%rbp)
    .seh_savereg %r15, 104
    .seh_endprologue
    movq %rcx, 336(%rbp)
    movq %rdx, 344(%rbp)
    movq %r8, 352(%rbp)
    movq %r9, 360(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_17collector_running@SECREL32(%rax), %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L9_1
    jmp .L9_2
.L9_1:
    movq 312(%rbp), %rdi
    movq 304(%rbp), %rsi
    movdqu 288(%rbp), %xmm6
    movdqu 272(%rbp), %xmm7
    movdqu 256(%rbp), %xmm8
    movdqu 240(%rbp), %xmm9
    movdqu 224(%rbp), %xmm10
    movdqu 208(%rbp), %xmm11
    movdqu 192(%rbp), %xmm12
    movdqu 176(%rbp), %xmm13
    movdqu 160(%rbp), %xmm14
    movdqu 144(%rbp), %xmm15
    movq 136(%rbp), %rbx
    movq 128(%rbp), %r12
    movq 120(%rbp), %r13
    movq 112(%rbp), %r14
    movq 104(%rbp), %r15
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L9_4:
    jmp .L9_3
.L9_2:
.L9_3:
    movl $1, %eax
    movq 64(%rbp), %r10
    movb %al, (%r10)
    movq $0, %rax
    movq %rax, 24(%rbp)
    movq $0, %rax
    movq %rax, 16(%rbp)
.L9_5:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_10root_count@SECREL32(%rax), %rax
    movq %rax, %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq 16(%rbp), %rax
    cmpq %r15, %rax
    jae .L9_7
.L9_6:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_roots@SECREL32(%rax), %rax
    movq %rax, %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq 16(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_8color_of
    addq $32, %rsp
    movl %eax, %r15d
    movl $3, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L9_11
    jmp .L9_50
.L9_50:
    movl %r15d, %r13d
    jmp .L9_12
.L9_11:
    movq %r12, %r10
    movl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    seta %al
    movzbl %al, %r13d
.L9_12:
    movzbl %r13b, %r15d
    testl %r15d, %r15d
    jne .L9_13
    jmp .L9_51
.L9_51:
    movl %r15d, %r13d
    jmp .L9_14
.L9_13:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movl $8, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_ownership_has
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
.L9_14:
    movzbl %r13b, %r15d
    testl %r15d, %r15d
    jne .L9_8
    jmp .L9_9
.L9_8:
    movq %r14, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %r15
    movq 24(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    addq %r15, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq 24(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    jmp .L9_10
.L9_9:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %r13d
    movl $251, %ecx
    andl %ecx, %r13d
    movq %rbx, %r10
    movb %r13b, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_13release_shell
    addq $32, %rsp
    movq 24(%rbp), %rax
    movq %rax, %r13
.L9_10:
    movq 16(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %r13, %rax
    movq %rax, 24(%rbp)
    movq %rbx, %rax
    movq %rax, 16(%rbp)
    jmp .L9_5
.L9_7:
    movq 24(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq lb_ownership_15visit_mark_gray(%rip), %rbx
    movq $0, %rax
    movq %rax, %r12
.L9_15:
    movq %r14, %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jae .L9_17
.L9_16:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_roots@SECREL32(%rax), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %r12, %r13
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq 72(%rbp), %r10
    movq %r13, (%r10)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_8color_of
    addq $32, %rsp
    movl %eax, %r15d
    movl $1, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L9_47
.L9_46:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_ownership_9set_color
    addq $32, %rsp
    movq $16, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $40, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq %r15, %r11
    call *%r11
    addq $32, %rsp
    jmp .L9_48
.L9_47:
.L9_48:
.L9_49:
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r12
    jmp .L9_15
.L9_17:
    movq $0, %rax
    movq %rax, %rbx
.L9_18:
    movq %r14, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jae .L9_20
.L9_19:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_roots@SECREL32(%rax), %rax
    movq %rax, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jb 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %rbx, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_scan
    addq $32, %rsp
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %rbx
    jmp .L9_18
.L9_20:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_11white_count@SECREL32(%rax), %rax
    movq %rax, 56(%rbp)
    movq $0, %rax
    movq 56(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %rax, %r12
.L9_21:
    movq %r14, %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jae .L9_23
.L9_22:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_roots@SECREL32(%rax), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %r12, %r13
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_gather
    addq $32, %rsp
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r12
    jmp .L9_21
.L9_23:
    movq $0, %rax
    movq %rax, %r12
.L9_24:
    movq %r14, %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jae .L9_26
.L9_25:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_roots@SECREL32(%rax), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %r12, %r13
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r15d
    movl $251, %ecx
    andl %ecx, %r15d
    movq %r13, %r10
    movb %r15b, (%r10)
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r12
    jmp .L9_24
.L9_26:
    movq $0, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq lb_ownership_13visit_restore(%rip), %r12
    movq $0, %rax
    movq %rax, %r13
.L9_27:
    movq 56(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L9_29
.L9_28:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_whites@SECREL32(%rax), %rax
    movq %rax, %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %r13, %r14
    imulq %rcx, %r14
    movq %r14, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq $16, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $40, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r14, %r10
    movq (%r10), %rbx
    movq %r14, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq %r15, %r11
    call *%r11
    addq $32, %rsp
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r13
    jmp .L9_27
.L9_29:
    leaq .Ltext_38(%rip), %rax
    movq %rax, 48(%rbp)
    leaq 88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 40(%rbp)
    leaq .Ltext_39(%rip), %rax
    movq %rax, 32(%rbp)
    movq $0, %rax
    movq %rax, 8(%rbp)
.L9_30:
    movq 56(%rbp), %r10
    movq (%r10), %r14
    movq 8(%rbp), %rax
    cmpq %r14, %rax
    jae .L9_32
.L9_31:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_whites@SECREL32(%rax), %rax
    movq %rax, %r14
    movq %r14, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq 8(%rbp), %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    addq %r14, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $24, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L9_36
    jmp .L9_34
.L9_36:
.L9_33:
    movq %r13, %r10
    movl (%r10), %r15d
    movl %r15d, %eax
    movl $1, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r15d
    movq %r13, %r10
    movl %r15d, (%r10)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    movq %r14, %r11
    call *%r11
    addq $32, %rsp
    movq %r13, %r10
    movl (%r10), %ebx
    cmpl %r15d, %ebx
    jbe .L9_38
.L9_37:
    movq 48(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $25, %rax
    movq 40(%rbp), %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq 32(%rbp), %rax
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
    jmp .L9_39
.L9_38:
.L9_39:
    movq %r13, %r10
    movl (%r10), %ebx
    movl %ebx, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %ebx
    movq %r13, %r10
    movl %ebx, (%r10)
    jmp .L9_35
.L9_34:
.L9_35:
    movq 8(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, 8(%rbp)
    jmp .L9_30
.L9_32:
    movq $0, %rax
    movq %rax, %rbx
.L9_40:
    movq 56(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jae .L9_42
.L9_41:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_whites@SECREL32(%rax), %rax
    movq %rax, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jb 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %rbx, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $16, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $32, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    movq %r13, %r11
    call *%r11
    addq $32, %rsp
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %rbx
    jmp .L9_40
.L9_42:
    movq $0, %rax
    movq %rax, %rbx
.L9_43:
    movq 56(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jae .L9_45
.L9_44:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_whites@SECREL32(%rax), %rax
    movq %rax, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jb 1f
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %rbx, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_ownership_live@SECREL32(%rax), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_47(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %r13, %r10
    movq %r14, (%r10)
    movl $0, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $8, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_ownership_13release_shell
    addq $32, %rsp
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %rbx
    jmp .L9_43
.L9_45:
    movq $0, %rax
    movq 56(%rbp), %r10
    movq %rax, (%r10)
    movl $0, %eax
    movq 64(%rbp), %r10
    movb %al, (%r10)
    movq 312(%rbp), %rdi
    movq 304(%rbp), %rsi
    movdqu 288(%rbp), %xmm6
    movdqu 272(%rbp), %xmm7
    movdqu 256(%rbp), %xmm8
    movdqu 240(%rbp), %xmm9
    movdqu 224(%rbp), %xmm10
    movdqu 208(%rbp), %xmm11
    movdqu 192(%rbp), %xmm12
    movdqu 176(%rbp), %xmm13
    movdqu 160(%rbp), %xmm14
    movdqu 144(%rbp), %xmm15
    movq 136(%rbp), %rbx
    movq 128(%rbp), %r12
    movq 120(%rbp), %r13
    movq 112(%rbp), %r14
    movq 104(%rbp), %r15
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_ownership_cycles_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/ownership/cycles.lucb:11:9"
.Ltext_1:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_2:
    .asciz "memory.unset"
.Ltext_3:
    .asciz "memory.exhausted"
.Ltext_4:
    .asciz "out of memory"
.Ltext_5:
    .asciz "src/std/ownership/cycles.lucb:12:13"
.Ltext_6:
    .asciz "src/std/ownership/cycles.lucb:15:13"
.Ltext_7:
    .asciz "src/std/ownership/cycles.lucb:16:13"
.Ltext_8:
    .asciz "src/std/ownership/cycles.lucb:18:13"
.Ltext_9:
    .asciz "src/std/ownership/cycles.lucb:20:5"
.Ltext_10:
    .asciz "src/std/ownership/cycles.lucb:21:5"
.Ltext_11:
    .asciz "src/std/ownership/cycles.lucb:25:9"
.Ltext_12:
    .asciz "src/std/ownership/cycles.lucb:26:13"
.Ltext_13:
    .asciz "src/std/ownership/cycles.lucb:29:13"
.Ltext_14:
    .asciz "src/std/ownership/cycles.lucb:30:13"
.Ltext_15:
    .asciz "src/std/ownership/cycles.lucb:32:13"
.Ltext_16:
    .asciz "src/std/ownership/cycles.lucb:34:5"
.Ltext_17:
    .asciz "src/std/ownership/cycles.lucb:35:5"
.Ltext_18:
    .asciz "src/std/ownership/cycles.lucb:50:5"
.Ltext_19:
    .asciz "src/std/ownership/cycles.lucb:68:5"
.Ltext_20:
    .asciz "src/std/ownership/cycles.lucb:102:9"
.Ltext_21:
    .asciz "src/std/ownership/cycles.lucb:113:9"
.Ltext_22:
    .asciz "src/std/ownership/cycles.lucb:115:13"
.Ltext_23:
    .asciz "src/std/ownership/cycles.lucb:116:13"
.Ltext_24:
    .asciz "src/std/ownership/cycles.lucb:120:9"
.Ltext_25:
    .asciz "src/std/ownership/cycles.lucb:124:9"
.Ltext_26:
    .asciz "src/std/ownership/cycles.lucb:125:9"
.Ltext_27:
    .asciz "src/std/ownership/cycles.lucb:128:9"
.Ltext_28:
    .asciz "src/std/ownership/cycles.lucb:129:9"
.Ltext_29:
    .asciz "src/std/ownership/cycles.lucb:133:9"
.Ltext_30:
    .asciz "src/std/ownership/cycles.lucb:134:9"
.Ltext_31:
    .asciz "src/std/ownership/cycles.lucb:137:9"
.Ltext_32:
    .asciz "src/std/ownership/cycles.lucb:138:9"
.Ltext_33:
    .asciz "src/std/ownership/cycles.lucb:144:9"
.Ltext_34:
    .asciz "src/std/ownership/cycles.lucb:145:9"
.Ltext_35:
    .asciz "src/std/ownership/cycles.lucb:148:9"
.Ltext_36:
    .asciz "src/std/ownership/cycles.lucb:151:13"
.Ltext_37:
    .asciz "src/std/ownership/cycles.lucb:153:13"
.Ltext_38:
    .asciz "`deinit` published `self`"
.Ltext_39:
    .asciz "src/std/ownership/cycles.lucb:154:17"
.Ltext_40:
    .asciz "src/std/ownership/cycles.lucb:157:13"
.Ltext_41:
    .asciz "src/std/ownership/cycles.lucb:158:9"
.Ltext_42:
    .asciz "src/std/ownership/cycles.lucb:161:9"
.Ltext_43:
    .asciz "src/std/ownership/cycles.lucb:162:9"
.Ltext_44:
    .asciz "src/std/ownership/cycles.lucb:165:9"
.Ltext_45:
    .asciz "src/std/ownership/cycles.lucb:166:9"
.Ltext_46:
    .asciz "src/std/ownership/cycles.lucb:170:9"
.Ltext_47:
    .asciz "integer overflow"
.Ltext_48:
    .asciz "index out of bounds"

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_ownership_15candidate_limit
    .p2align 3
lb_ownership_15candidate_limit:
    .zero 8

    .section .tls$LUCE,"dw"
    .globl lb_ownership_roots
    .p2align 3
lb_ownership_roots:
    .zero 16

    .section .tls$LUCE,"dw"
    .globl lb_ownership_10root_count
    .p2align 3
lb_ownership_10root_count:
    .zero 8

    .section .tls$LUCE,"dw"
    .globl lb_ownership_whites
    .p2align 3
lb_ownership_whites:
    .zero 16

    .section .tls$LUCE,"dw"
    .globl lb_ownership_11white_count
    .p2align 3
lb_ownership_11white_count:
    .zero 8

    .section .tls$LUCE,"dw"
    .globl lb_ownership_17collector_running
    .p2align 0
lb_ownership_17collector_running:
    .zero 1
