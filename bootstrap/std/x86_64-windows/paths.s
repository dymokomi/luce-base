    .text

    .p2align 4
    .globl lb_paths_0init
lb_paths_0init:
    .seh_proc lb_paths_0init
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
    .globl lb_paths_separator
lb_paths_separator:
    .seh_proc lb_paths_separator
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
    .seh_endprologue
    movq %rcx, 224(%rbp)
    movq %rdx, 232(%rbp)
    movq %r8, 240(%rbp)
    movq %r9, 248(%rbp)
    movq 224(%rbp), %rax
    movl %eax, 0(%rbp)
    leaq 0(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $47, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_6
    jmp .L1_1
.L1_6:
    movl %r12d, %ebx
    jmp .L1_2
.L1_1:
    leaq lb_platform_windows(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_3
    jmp .L1_7
.L1_7:
    movl %r12d, %ebx
    jmp .L1_4
.L1_3:
    movl $92, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L1_4:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L1_2:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
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
    leaq 208(%rbp), %rsp
    popq %rbp
    ret
.L1_5:
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
    .globl lb_paths_14last_separator
lb_paths_14last_separator:
    .seh_proc lb_paths_14last_separator
    pushq %rbp
    .seh_pushreg %rbp
    subq $288, %rsp
    .seh_stackalloc 288
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 104(%rbp)
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
    movq %rbx, 96(%rbp)
    .seh_savereg %rbx, 96
    movq %r12, 88(%rbp)
    .seh_savereg %r12, 88
    movq %r13, 80(%rbp)
    .seh_savereg %r13, 80
    movq %r14, 72(%rbp)
    .seh_savereg %r14, 72
    movq %r15, 64(%rbp)
    .seh_savereg %r15, 64
    .seh_endprologue
    movq %rcx, 304(%rbp)
    movq %rdx, 312(%rbp)
    movq %r8, 320(%rbp)
    movq %r9, 328(%rbp)
    movq 312(%rbp), %r10
    leaq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %r13
.L2_1:
    movq $0, %rcx
    cmpq %rcx, %r13
    jbe .L2_3
.L2_2:
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_70(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %rbx, %r10
    movq (%r10), %r15
    cmpq %r12, %r14
    jb 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r15, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    subq $32, %rsp
    movl %r15d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_separator
    addq $32, %rsp
    movl %eax, %r15d
    testl %r15d, %r15d
    jne .L2_4
    jmp .L2_5
.L2_4:
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 48(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 104(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 104(%rbp), %rax
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
    movq 96(%rbp), %rbx
    movq 88(%rbp), %r12
    movq 80(%rbp), %r13
    movq 72(%rbp), %r14
    movq 64(%rbp), %r15
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L2_7:
    jmp .L2_6
.L2_5:
.L2_6:
    movq %r14, %r13
    jmp .L2_1
.L2_3:
    leaq 0(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 104(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 104(%rbp), %rax
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
    movq 96(%rbp), %rbx
    movq 88(%rbp), %r12
    movq 80(%rbp), %r13
    movq 72(%rbp), %r14
    movq 64(%rbp), %r15
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L2_8:
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
    .globl lb_paths_12drive_prefix
lb_paths_12drive_prefix:
    .seh_proc lb_paths_12drive_prefix
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
    movq %r13, 24(%rbp)
    .seh_savereg %r13, 24
    .seh_endprologue
    movq %rcx, 240(%rbp)
    movq %rdx, 248(%rbp)
    movq %r8, 256(%rbp)
    movq %r9, 264(%rbp)
    movq 240(%rbp), %r10
    leaq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_platform_windows(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L3_16
    jmp .L3_4
.L3_16:
    movl %ebx, %r12d
    jmp .L3_5
.L3_4:
    leaq 8(%rbp), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $2, %rcx
    cmpq %rcx, %rbx
    setb %al
    movzbl %al, %r12d
.L3_5:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L3_17
    jmp .L3_6
.L3_17:
    movl %ebx, %r12d
    jmp .L3_7
.L3_6:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $1, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $58, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L3_7:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L3_1
    jmp .L3_2
.L3_1:
    movl $0, %eax
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
    movq 24(%rbp), %r13
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L3_8:
    jmp .L3_3
.L3_2:
.L3_3:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r12, %r10
    movzbl (%r10), %ebx
    movzbl %bl, %ebx
    movl $65, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L3_9
    jmp .L3_18
.L3_18:
    movl %r12d, %r13d
    jmp .L3_10
.L3_9:
    movl $90, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L3_10:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L3_19
    jmp .L3_11
.L3_19:
    movl %r12d, %ebx
    jmp .L3_12
.L3_11:
    movl $97, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L3_13
    jmp .L3_20
.L3_20:
    movl %r12d, %ebx
    jmp .L3_14
.L3_13:
    movl $122, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L3_14:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L3_12:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
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
    movq 24(%rbp), %r13
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L3_15:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_paths_root
lb_paths_root:
    .seh_proc lb_paths_root
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
    movq 536(%rbp), %r10
    leaq 256(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 256(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_12drive_prefix
    addq $48, %rsp
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L4_1
    jmp .L4_2
.L4_1:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $2, %rcx
    cmpq %rcx, %r13
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L4_7
    jmp .L4_78
.L4_78:
    movl %r13d, %r14d
    jmp .L4_8
.L4_7:
    movq %rbx, %r10
    movq (%r10), %r13
    movq $2, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_separator
    addq $32, %rsp
    movl %eax, %r14d
.L4_8:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L4_4
    jmp .L4_5
.L4_4:
    movq $3, %rax
    movq %rax, %r13
    jmp .L4_6
.L4_5:
    movq $2, %rax
    movq %rax, %r13
.L4_6:
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r12, %r10
    movq (%r10), %r14
    movq $1, %rcx
    addq %rcx, %r14
    movq $0, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r13, %rax
    jbe .L4_9
.L4_10:
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L4_9:
    leaq 240(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    leaq 224(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    leaq 272(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 328(%rbp), %rdi
    movq $16, %rdx
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
.L4_2:
.L4_3:
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L4_79
    jmp .L4_15
.L4_79:
    movl %r14d, %r13d
    jmp .L4_16
.L4_15:
    movq %rbx, %r10
    movq (%r10), %r14
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r14, %r10
    movzbl (%r10), %r14d
    subq $32, %rsp
    movl %r14d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_separator
    addq $32, %rsp
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r13d
.L4_16:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L4_12
    jmp .L4_13
.L4_12:
    leaq .Ltext_12(%rip), %rbx
    leaq 208(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 272(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rsi
    movq 328(%rbp), %rdi
    movq $16, %rdx
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
.L4_13:
.L4_14:
    leaq lb_platform_windows(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L4_80
    jmp .L4_21
.L4_80:
    movl %r13d, %r14d
    jmp .L4_22
.L4_21:
    movq 8(%rbp), %r10
    movq (%r10), %r13
    movq $2, %rcx
    cmpq %rcx, %r13
    setb %al
    movzbl %al, %r14d
.L4_22:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L4_81
    jmp .L4_23
.L4_81:
    movl %r13d, %r14d
    jmp .L4_24
.L4_23:
    movq %rbx, %r10
    movq (%r10), %r13
    movq 8(%rbp), %r10
    movq (%r10), %r14
    movq $1, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $1, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_separator
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L4_24:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L4_18
    jmp .L4_19
.L4_18:
    movq %rbx, %r10
    movq (%r10), %r14
    movq 8(%rbp), %r10
    movq (%r10), %r13
    movq $1, %rcx
    addq %rcx, %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $1, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
.L4_25:
    leaq 192(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq $1, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 176(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $1, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 272(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 328(%rbp), %rdi
    movq $16, %rdx
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
.L4_19:
.L4_20:
    movq 8(%rbp), %r10
    movq (%r10), %r13
    movq $4, %rcx
    cmpq %rcx, %r13
    setae %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L4_31
    jmp .L4_82
.L4_82:
    movl %r14d, %r15d
    jmp .L4_32
.L4_31:
    movq %rbx, %r10
    movq (%r10), %r14
    movq $2, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $2, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r15d
    movl $63, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L4_83
    jmp .L4_33
.L4_83:
    movl %r15d, %r14d
    jmp .L4_34
.L4_33:
    movq %r14, %r10
    movzbl (%r10), %r15d
    movl $46, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl %r15d, %r14d
.L4_34:
    movzbl %r14b, %r15d
.L4_32:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L4_35
    jmp .L4_84
.L4_84:
    movl %r14d, %r13d
    jmp .L4_36
.L4_35:
    movq %rbx, %r10
    movq (%r10), %r14
    movq $3, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $3, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    subq $32, %rsp
    movl %r14d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_separator
    addq $32, %rsp
    movl %eax, %r14d
    movl %r14d, %r13d
.L4_36:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L4_28
    jmp .L4_29
.L4_28:
    movq 8(%rbp), %r10
    movq (%r10), %r13
    movq $8, %rcx
    cmpq %rcx, %r13
    setae %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L4_40
    jmp .L4_85
.L4_85:
    movl %r14d, %r13d
    jmp .L4_41
.L4_40:
    movq %rbx, %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $4, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $7, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
.L4_42:
    movq $4, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    leaq 160(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq $3, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq 144(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq $3, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq .Ltext_17(%rip), %r14
    leaq 128(%rbp), %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $3, %rax
    movq %r12, %r10
    movq %rax, (%r10)
.L4_44:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq $3, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcmp
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L4_45:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L4_86
    jmp .L4_46
.L4_86:
    movl %r13d, %r12d
    jmp .L4_47
.L4_46:
    movq %rbx, %r10
    movq (%r10), %r13
    movq 8(%rbp), %r10
    movq (%r10), %r12
    movq $1, %rcx
    addq %rcx, %r12
    movq $4, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $7, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
.L4_48:
    movq $4, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq 112(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq $3, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq 96(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq $3, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq .Ltext_18(%rip), %r14
    leaq 80(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq $3, %rax
    movq %r15, %r10
    movq %rax, (%r10)
.L4_50:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq $3, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcmp
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
.L4_51:
    movzbl %r13b, %r12d
.L4_47:
    movzbl %r12b, %r13d
.L4_41:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L4_52
    jmp .L4_87
.L4_87:
    movl %r12d, %r13d
    jmp .L4_53
.L4_52:
    movq %rbx, %r10
    movq (%r10), %r12
    movq 8(%rbp), %r10
    movq (%r10), %r13
    movq $7, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $7, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_separator
    addq $32, %rsp
    movl %eax, %r13d
.L4_53:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L4_37
    jmp .L4_38
.L4_37:
    jmp .L4_39
.L4_38:
    movq $4, %rax
    movq %rax, %r12
.L4_54:
    movq 8(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    setb %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L4_57
    jmp .L4_88
.L4_88:
    movl %r13d, %r14d
    jmp .L4_58
.L4_57:
    movq %rbx, %r10
    movq (%r10), %r13
    addq %r12, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_separator
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L4_58:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L4_55
    jmp .L4_56
.L4_55:
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_70(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r13, %r12
    jmp .L4_54
.L4_56:
    movq %rbx, %r10
    movq (%r10), %r14
    movq 8(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r12
    jae .L4_60
.L4_59:
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    jmp .L4_61
.L4_60:
    movq %r12, %rbx
.L4_61:
    movq $1, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r12, %rbx
    jb 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %rbx, %rax
    jbe .L4_62
.L4_63:
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L4_62:
    leaq 64(%rbp), %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq 48(%rbp), %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    leaq 272(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %rsi
    movq 328(%rbp), %rdi
    movq $16, %rdx
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
.L4_39:
    movq $8, %rax
    movq %rax, %r12
    jmp .L4_30
.L4_29:
    movq $2, %rax
    movq %rax, %r12
.L4_30:
    movq %r12, %r13
    movq $0, %rax
    movq %rax, %r14
.L4_65:
    movq 8(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    jae .L4_67
.L4_66:
    movq %rbx, %r10
    movq (%r10), %r12
    addq %r13, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_separator
    addq $32, %rsp
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L4_68
    jmp .L4_69
.L4_68:
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_70(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq $2, %rcx
    cmpq %rcx, %r12
    jne .L4_72
.L4_71:
    movq %rbx, %r10
    movq (%r10), %r14
    movq 8(%rbp), %r10
    movq (%r10), %r12
    movq $1, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $1, %rcx
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r15, %rax
    jbe .L4_74
.L4_75:
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L4_74:
    leaq 32(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    leaq 272(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 328(%rbp), %rdi
    movq $16, %rdx
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
.L4_72:
.L4_73:
    movq %r12, %r14
    jmp .L4_70
.L4_69:
.L4_70:
    movq $1, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r13
    jmp .L4_65
.L4_67:
    leaq 272(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 328(%rbp), %rdi
    movq $16, %rdx
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
    .seh_endproc

    .p2align 4
    .globl lb_paths_directory
lb_paths_directory:
    .seh_proc lb_paths_directory
    pushq %rbp
    .seh_pushreg %rbp
    subq $368, %rsp
    .seh_stackalloc 368
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 184(%rbp)
    movq %rdi, 360(%rbp)
    .seh_savereg %rdi, 360
    movq %rsi, 352(%rbp)
    .seh_savereg %rsi, 352
    movdqu %xmm6, 336(%rbp)
    .seh_savexmm %xmm6, 336
    movdqu %xmm7, 320(%rbp)
    .seh_savexmm %xmm7, 320
    movdqu %xmm8, 304(%rbp)
    .seh_savexmm %xmm8, 304
    movdqu %xmm9, 288(%rbp)
    .seh_savexmm %xmm9, 288
    movdqu %xmm10, 272(%rbp)
    .seh_savexmm %xmm10, 272
    movdqu %xmm11, 256(%rbp)
    .seh_savexmm %xmm11, 256
    movdqu %xmm12, 240(%rbp)
    .seh_savexmm %xmm12, 240
    movdqu %xmm13, 224(%rbp)
    .seh_savexmm %xmm13, 224
    movdqu %xmm14, 208(%rbp)
    .seh_savexmm %xmm14, 208
    movdqu %xmm15, 192(%rbp)
    .seh_savexmm %xmm15, 192
    movq %rbx, 176(%rbp)
    .seh_savereg %rbx, 176
    movq %r12, 168(%rbp)
    .seh_savereg %r12, 168
    movq %r13, 160(%rbp)
    .seh_savereg %r13, 160
    movq %r14, 152(%rbp)
    .seh_savereg %r14, 152
    .seh_endprologue
    movq %rcx, 384(%rbp)
    movq %rdx, 392(%rbp)
    movq %r8, 400(%rbp)
    movq %r9, 408(%rbp)
    movq 392(%rbp), %r10
    leaq 120(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 104(%rbp), %rbx
    leaq 120(%rbp), %r12
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 88(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_paths_root
    addq $48, %rsp
    leaq 88(%rbp), %r13
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 72(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_paths_14last_separator
    addq $48, %rsp
    leaq 72(%rbp), %r14
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L5_1
    jmp .L5_2
.L5_1:
    movq %r14, %r10
    movq (%r10), %r13
    jmp .L5_3
.L5_2:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L5_5
.L5_4:
    leaq 56(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L5_6
.L5_5:
    leaq .Ltext_34(%rip), %rbx
    leaq 40(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $1, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 56(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L5_6:
    leaq 56(%rbp), %rbx
    leaq 136(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 184(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 184(%rbp), %rax
    movq 360(%rbp), %rdi
    movq 352(%rbp), %rsi
    movdqu 336(%rbp), %xmm6
    movdqu 320(%rbp), %xmm7
    movdqu 304(%rbp), %xmm8
    movdqu 288(%rbp), %xmm9
    movdqu 272(%rbp), %xmm10
    movdqu 256(%rbp), %xmm11
    movdqu 240(%rbp), %xmm12
    movdqu 224(%rbp), %xmm13
    movdqu 208(%rbp), %xmm14
    movdqu 192(%rbp), %xmm15
    movq 176(%rbp), %rbx
    movq 168(%rbp), %r12
    movq 160(%rbp), %r13
    movq 152(%rbp), %r14
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
.L5_7:
.L5_3:
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L5_9
.L5_8:
    leaq 136(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 184(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 184(%rbp), %rax
    movq 360(%rbp), %rdi
    movq 352(%rbp), %rsi
    movdqu 336(%rbp), %xmm6
    movdqu 320(%rbp), %xmm7
    movdqu 304(%rbp), %xmm8
    movdqu 288(%rbp), %xmm9
    movdqu 272(%rbp), %xmm10
    movdqu 256(%rbp), %xmm11
    movdqu 240(%rbp), %xmm12
    movdqu 224(%rbp), %xmm13
    movdqu 208(%rbp), %xmm14
    movdqu 192(%rbp), %xmm15
    movq 176(%rbp), %rbx
    movq 168(%rbp), %r12
    movq 160(%rbp), %r13
    movq 152(%rbp), %r14
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
.L5_11:
    jmp .L5_10
.L5_9:
.L5_10:
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $1, %rcx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r13, %rax
    jbe .L5_12
.L5_13:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L5_12:
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    leaq 136(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 184(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 184(%rbp), %rax
    movq 360(%rbp), %rdi
    movq 352(%rbp), %rsi
    movdqu 336(%rbp), %xmm6
    movdqu 320(%rbp), %xmm7
    movdqu 304(%rbp), %xmm8
    movdqu 288(%rbp), %xmm9
    movdqu 272(%rbp), %xmm10
    movdqu 256(%rbp), %xmm11
    movdqu 240(%rbp), %xmm12
    movdqu 224(%rbp), %xmm13
    movdqu 208(%rbp), %xmm14
    movdqu 192(%rbp), %xmm15
    movq 176(%rbp), %rbx
    movq 168(%rbp), %r12
    movq 160(%rbp), %r13
    movq 152(%rbp), %r14
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
.L5_14:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_paths_base
lb_paths_base:
    .seh_proc lb_paths_base
    pushq %rbp
    .seh_pushreg %rbp
    subq $416, %rsp
    .seh_stackalloc 416
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 232(%rbp)
    movq %rdi, 408(%rbp)
    .seh_savereg %rdi, 408
    movq %rsi, 400(%rbp)
    .seh_savereg %rsi, 400
    movdqu %xmm6, 384(%rbp)
    .seh_savexmm %xmm6, 384
    movdqu %xmm7, 368(%rbp)
    .seh_savexmm %xmm7, 368
    movdqu %xmm8, 352(%rbp)
    .seh_savexmm %xmm8, 352
    movdqu %xmm9, 336(%rbp)
    .seh_savexmm %xmm9, 336
    movdqu %xmm10, 320(%rbp)
    .seh_savexmm %xmm10, 320
    movdqu %xmm11, 304(%rbp)
    .seh_savexmm %xmm11, 304
    movdqu %xmm12, 288(%rbp)
    .seh_savexmm %xmm12, 288
    movdqu %xmm13, 272(%rbp)
    .seh_savexmm %xmm13, 272
    movdqu %xmm14, 256(%rbp)
    .seh_savexmm %xmm14, 256
    movdqu %xmm15, 240(%rbp)
    .seh_savexmm %xmm15, 240
    movq %rbx, 224(%rbp)
    .seh_savereg %rbx, 224
    movq %r12, 216(%rbp)
    .seh_savereg %r12, 216
    movq %r13, 208(%rbp)
    .seh_savereg %r13, 208
    movq %r14, 200(%rbp)
    .seh_savereg %r14, 200
    movq %r15, 192(%rbp)
    .seh_savereg %r15, 192
    .seh_endprologue
    movq %rcx, 432(%rbp)
    movq %rdx, 440(%rbp)
    movq %r8, 448(%rbp)
    movq %r9, 456(%rbp)
    movq 440(%rbp), %r10
    leaq 160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 144(%rbp), %rbx
    leaq 160(%rbp), %r12
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 128(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_paths_root
    addq $48, %rsp
    leaq 128(%rbp), %r13
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    cmpq %r14, %rbx
    jne .L6_2
.L6_1:
    leaq .Ltext_12(%rip), %rbx
    leaq 112(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 176(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rsi
    movq 232(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 232(%rbp), %rax
    movq 408(%rbp), %rdi
    movq 400(%rbp), %rsi
    movdqu 384(%rbp), %xmm6
    movdqu 368(%rbp), %xmm7
    movdqu 352(%rbp), %xmm8
    movdqu 336(%rbp), %xmm9
    movdqu 320(%rbp), %xmm10
    movdqu 304(%rbp), %xmm11
    movdqu 288(%rbp), %xmm12
    movdqu 272(%rbp), %xmm13
    movdqu 256(%rbp), %xmm14
    movdqu 240(%rbp), %xmm15
    movq 224(%rbp), %rbx
    movq 216(%rbp), %r12
    movq 208(%rbp), %r13
    movq 200(%rbp), %r14
    movq 192(%rbp), %r15
    leaq 416(%rbp), %rsp
    popq %rbp
    ret
.L6_4:
    jmp .L6_3
.L6_2:
.L6_3:
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 96(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_paths_14last_separator
    addq $48, %rsp
    leaq 96(%rbp), %r15
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L6_5
    jmp .L6_6
.L6_5:
    movq %r15, %r10
    movq (%r10), %rbx
    jmp .L6_7
.L6_6:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq %r13, %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r14, %r15
    jb 1f
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r15, %rbx
    jbe .L6_8
.L6_9:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L6_8:
    movq 24(%rbp), %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r15, %r13
    subq %rbx, %r13
    leaq 80(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    leaq 64(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    leaq 176(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 232(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 232(%rbp), %rax
    movq 408(%rbp), %rdi
    movq 400(%rbp), %rsi
    movdqu 384(%rbp), %xmm6
    movdqu 368(%rbp), %xmm7
    movdqu 352(%rbp), %xmm8
    movdqu 336(%rbp), %xmm9
    movdqu 320(%rbp), %xmm10
    movdqu 304(%rbp), %xmm11
    movdqu 288(%rbp), %xmm12
    movdqu 272(%rbp), %xmm13
    movdqu 256(%rbp), %xmm14
    movdqu 240(%rbp), %xmm15
    movq 224(%rbp), %rbx
    movq 216(%rbp), %r12
    movq 208(%rbp), %r13
    movq 200(%rbp), %r14
    movq 192(%rbp), %r15
    leaq 416(%rbp), %rsp
    popq %rbp
    ret
.L6_10:
.L6_7:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    movq %r13, %r10
    movq (%r10), %r15
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_70(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 8(%rbp)
    movq $1, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq 8(%rbp), %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r14, %r15
    jb 1f
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rax
    cmpq %r15, %rax
    jbe .L6_11
.L6_12:
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L6_11:
    movq 16(%rbp), %rax
    movq 8(%rbp), %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 8(%rbp), %rcx
    movq %r15, %r12
    subq %rcx, %r12
    leaq 48(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq 32(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq 176(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rsi
    movq 232(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 232(%rbp), %rax
    movq 408(%rbp), %rdi
    movq 400(%rbp), %rsi
    movdqu 384(%rbp), %xmm6
    movdqu 368(%rbp), %xmm7
    movdqu 352(%rbp), %xmm8
    movdqu 336(%rbp), %xmm9
    movdqu 320(%rbp), %xmm10
    movdqu 304(%rbp), %xmm11
    movdqu 288(%rbp), %xmm12
    movdqu 272(%rbp), %xmm13
    movdqu 256(%rbp), %xmm14
    movdqu 240(%rbp), %xmm15
    movq 224(%rbp), %rbx
    movq 216(%rbp), %r12
    movq 208(%rbp), %r13
    movq 200(%rbp), %r14
    movq 192(%rbp), %r15
    leaq 416(%rbp), %rsp
    popq %rbp
    ret
.L6_13:
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_paths_stem
lb_paths_stem:
    .seh_proc lb_paths_stem
    pushq %rbp
    .seh_pushreg %rbp
    subq $528, %rsp
    .seh_stackalloc 528
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 344(%rbp)
    movq %rdi, 520(%rbp)
    .seh_savereg %rdi, 520
    movq %rsi, 512(%rbp)
    .seh_savereg %rsi, 512
    movdqu %xmm6, 496(%rbp)
    .seh_savexmm %xmm6, 496
    movdqu %xmm7, 480(%rbp)
    .seh_savexmm %xmm7, 480
    movdqu %xmm8, 464(%rbp)
    .seh_savexmm %xmm8, 464
    movdqu %xmm9, 448(%rbp)
    .seh_savexmm %xmm9, 448
    movdqu %xmm10, 432(%rbp)
    .seh_savexmm %xmm10, 432
    movdqu %xmm11, 416(%rbp)
    .seh_savexmm %xmm11, 416
    movdqu %xmm12, 400(%rbp)
    .seh_savexmm %xmm12, 400
    movdqu %xmm13, 384(%rbp)
    .seh_savexmm %xmm13, 384
    movdqu %xmm14, 368(%rbp)
    .seh_savexmm %xmm14, 368
    movdqu %xmm15, 352(%rbp)
    .seh_savexmm %xmm15, 352
    movq %rbx, 336(%rbp)
    .seh_savereg %rbx, 336
    movq %r12, 328(%rbp)
    .seh_savereg %r12, 328
    movq %r13, 320(%rbp)
    .seh_savereg %r13, 320
    movq %r14, 312(%rbp)
    .seh_savereg %r14, 312
    movq %r15, 304(%rbp)
    .seh_savereg %r15, 304
    .seh_endprologue
    movq %rcx, 544(%rbp)
    movq %rdx, 552(%rbp)
    movq %r8, 560(%rbp)
    movq %r9, 568(%rbp)
    movq 552(%rbp), %r10
    leaq 272(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 256(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq 272(%rbp), %r12
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 240(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_paths_base
    addq $48, %rsp
    leaq 240(%rbp), %r12
    movq %r12, %r10
    movq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 224(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 24(%rbp), %r10
    leaq 144(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 128(%rbp), %r12
    leaq 144(%rbp), %r13
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 112(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_paths_base
    addq $48, %rsp
    leaq 112(%rbp), %r13
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movl $46, %eax
    movq %rax, 16(%rsp)
    leaq 96(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_last
    addq $48, %rsp
    leaq 96(%rbp), %r15
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L7_4
    jmp .L7_5
.L7_4:
    movq %r15, %r10
    movq (%r10), %r13
    jmp .L7_6
.L7_5:
    leaq .Ltext_12(%rip), %r12
    leaq 80(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 160(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    leaq 208(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rax, %r12
    jmp .L7_15
.L7_7:
.L7_6:
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L7_9
.L7_8:
    leaq .Ltext_12(%rip), %r12
    leaq 64(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 160(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    leaq 208(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rax, %r12
    jmp .L7_15
.L7_11:
    jmp .L7_10
.L7_9:
.L7_10:
    movq %r12, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r14
    movq $1, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    cmpq %r15, %r13
    jb 1f
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r15, %r14
    jb 1f
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r14, %r13
    jbe .L7_12
.L7_13:
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L7_12:
    movq %r13, %r12
    addq %rbx, %r12
    movq %r14, %rax
    subq %r13, %rax
    movq %rax, 16(%rbp)
    leaq 48(%rbp), %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq 16(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq 32(%rbp), %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq 16(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 160(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    leaq 208(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%rbp), %rax
    movq %rax, %r12
    jmp .L7_15
.L7_14:
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L7_15:
    leaq 208(%rbp), %rbx
    movq %rbx, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 24(%rbp), %r10
    movq (%r10), %r13
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq %r12, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_70(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq $1, %rcx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %rbx, %r14
    jb 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r14, %rax
    jbe .L7_1
.L7_2:
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L7_1:
    leaq 192(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    leaq 176(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    leaq 288(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 344(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 344(%rbp), %rax
    movq 520(%rbp), %rdi
    movq 512(%rbp), %rsi
    movdqu 496(%rbp), %xmm6
    movdqu 480(%rbp), %xmm7
    movdqu 464(%rbp), %xmm8
    movdqu 448(%rbp), %xmm9
    movdqu 432(%rbp), %xmm10
    movdqu 416(%rbp), %xmm11
    movdqu 400(%rbp), %xmm12
    movdqu 384(%rbp), %xmm13
    movdqu 368(%rbp), %xmm14
    movdqu 352(%rbp), %xmm15
    movq 336(%rbp), %rbx
    movq 328(%rbp), %r12
    movq 320(%rbp), %r13
    movq 312(%rbp), %r14
    movq 304(%rbp), %r15
    leaq 528(%rbp), %rsp
    popq %rbp
    ret
.L7_3:
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_paths_join
lb_paths_join:
    .seh_proc lb_paths_join
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
    movq %r15, 640(%rbp)
    .seh_savereg %r15, 640
    .seh_endprologue
    movq %rcx, 880(%rbp)
    movq %rdx, 888(%rbp)
    movq %r8, 896(%rbp)
    movq %r9, 904(%rbp)
    movq 888(%rbp), %r10
    leaq 576(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 896(%rbp), %r10
    leaq 560(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 560(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %r10
    leaq 96(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 96(%rbp), %r12
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_12drive_prefix
    addq $48, %rsp
    movl %eax, %r13d
    testl %r13d, %r13d
    jne .L8_39
    jmp .L8_40
.L8_39:
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $3, %rcx
    cmpq %rcx, %r13
    setae %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L8_42
    jmp .L8_70
.L8_70:
    movl %r14d, %r12d
    jmp .L8_43
.L8_42:
    movq %r12, %r10
    movq (%r10), %r14
    movq $2, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $2, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    subq $32, %rsp
    movl %r14d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_separator
    addq $32, %rsp
    movl %eax, %r14d
    movl %r14d, %r12d
.L8_43:
    movzbl %r12b, %r13d
    movzbl %r13b, %r13d
    leaq 88(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L8_67
.L8_44:
    jmp .L8_41
.L8_40:
.L8_41:
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L8_71
    jmp .L8_48
.L8_71:
    movl %r15d, %r14d
    jmp .L8_49
.L8_48:
    movq %r12, %r10
    movq (%r10), %r15
    movq $0, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r15, %r10
    movzbl (%r10), %r15d
    subq $32, %rsp
    movl %r15d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_separator
    addq $32, %rsp
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl %r15d, %r14d
.L8_49:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L8_45
    jmp .L8_46
.L8_45:
    movl $0, %eax
    leaq 88(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, %r13d
    jmp .L8_67
.L8_50:
    jmp .L8_47
.L8_46:
.L8_47:
    movq %r13, %r10
    movq (%r10), %r14
    movq $2, %rcx
    cmpq %rcx, %r14
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L8_72
    jmp .L8_54
.L8_72:
    movl %r15d, %r14d
    jmp .L8_55
.L8_54:
    movq %r12, %r10
    movq (%r10), %r15
    movq $1, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $1, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    subq $32, %rsp
    movl %r15d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_separator
    addq $32, %rsp
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl %r15d, %r14d
.L8_55:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L8_51
    jmp .L8_52
.L8_51:
    movl $0, %eax
    leaq 88(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, %r13d
    jmp .L8_67
.L8_56:
    jmp .L8_53
.L8_52:
.L8_53:
    movq $2, %rax
    movq %rax, %r14
.L8_57:
    movq %r13, %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L8_60
    jmp .L8_73
.L8_73:
    movl %r15d, %ebx
    jmp .L8_61
.L8_60:
    movq %r12, %r10
    movq (%r10), %rbx
    addq %r14, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_separator
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L8_61:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L8_58
    jmp .L8_59
.L8_58:
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_70(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq %rbx, %r14
    jmp .L8_57
.L8_59:
    movq $2, %rcx
    cmpq %rcx, %r14
    seta %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L8_62
    jmp .L8_74
.L8_74:
    movl %ebx, %r15d
    jmp .L8_63
.L8_62:
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_70(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq %r13, %r10
    movq (%r10), %r15
    cmpq %r15, %rbx
    setb %al
    movzbl %al, %r15d
.L8_63:
    movzbl %r15b, %ebx
    testl %ebx, %ebx
    jne .L8_64
    jmp .L8_75
.L8_75:
    movl %ebx, %r12d
    jmp .L8_65
.L8_64:
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_70(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq %r13, %r10
    movq (%r10), %r15
    cmpq %r15, %rbx
    jb 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 24(%rbp), %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_separator
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl %ebx, %r12d
.L8_65:
    movzbl %r12b, %ebx
    movzbl %bl, %r13d
    leaq 88(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L8_67
.L8_66:
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L8_67:
    testl %r13d, %r13d
    jne .L8_76
    jmp .L8_4
.L8_76:
    movl %r13d, %ebx
    jmp .L8_5
.L8_4:
    subq $48, %rsp
    movq 40(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_12drive_prefix
    addq $48, %rsp
    movl %eax, %ebx
.L8_5:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L8_77
    jmp .L8_6
.L8_77:
    movl %r12d, %ebx
    jmp .L8_7
.L8_6:
    leaq 576(%rbp), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
.L8_7:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L8_1
    jmp .L8_2
.L8_1:
    subq $48, %rsp
    movq 40(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 512(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_copy
    addq $48, %rsp
    leaq 512(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_9
    jmp .L8_8
.L8_9:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 592(%rbp), %r13
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
    movq 640(%rbp), %r15
    leaq 864(%rbp), %rsp
    popq %rbp
    ret
.L8_10:
.L8_8:
    leaq 592(%rbp), %rbx
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
    movq 640(%rbp), %r15
    leaq 864(%rbp), %rsp
    popq %rbp
    ret
.L8_11:
    jmp .L8_3
.L8_2:
.L8_3:
    leaq lb_platform_windows(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_15
    jmp .L8_78
.L8_78:
    movl %ebx, %r12d
    jmp .L8_16
.L8_15:
    movq 40(%rbp), %r10
    leaq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 72(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 56(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_paths_root
    addq $48, %rsp
    leaq 56(%rbp), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    seta %al
    movzbl %al, %ebx
    movzbl %bl, %r12d
    leaq 48(%rbp), %r10
    movl %r12d, (%r10)
    jmp .L8_69
.L8_68:
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L8_69:
.L8_16:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L8_12
    jmp .L8_13
.L8_12:
    leaq 496(%rbp), %rbx
    leaq 576(%rbp), %r12
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 480(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_paths_root
    addq $48, %rsp
    leaq 480(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %r13
.L8_17:
    movq $0, %rcx
    cmpq %rcx, %r13
    seta %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L8_20
    jmp .L8_79
.L8_79:
    movl %r14d, %r15d
    jmp .L8_21
.L8_20:
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_70(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %rbx, %r10
    movq (%r10), %r15
    cmpq %r12, %r14
    jb 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    addq %r15, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    subq $32, %rsp
    movl %r14d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_separator
    addq $32, %rsp
    movl %eax, %r15d
.L8_21:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L8_18
    jmp .L8_19
.L8_18:
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_70(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %r14, %r13
    jmp .L8_17
.L8_19:
    leaq 448(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 416(%rbp), %rax
    movq %rax, 0(%rbp)
    movq %rbx, %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq $0, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r13, %rax
    jbe .L8_22
.L8_23:
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L8_22:
    leaq 400(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    leaq 384(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq %rbx, %r10
    movq 0(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 40(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 0(%rbp), %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 368(%rbp), %rbx
    movq 8(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $2, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq .Ltext_12(%rip), %r12
    leaq 352(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r14, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 304(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_join
    addq $64, %rsp
    leaq 304(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_25
    jmp .L8_24
.L8_25:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 592(%rbp), %r13
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
    movq 640(%rbp), %r15
    leaq 864(%rbp), %rsp
    popq %rbp
    ret
.L8_26:
.L8_24:
    leaq 592(%rbp), %rbx
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
    movq 640(%rbp), %r15
    leaq 864(%rbp), %rsp
    popq %rbp
    ret
.L8_27:
    jmp .L8_14
.L8_13:
.L8_14:
    leaq 576(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_12drive_prefix
    addq $48, %rsp
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L8_28
    jmp .L8_80
.L8_80:
    movl %r12d, %r13d
    jmp .L8_29
.L8_28:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $2, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
.L8_29:
    movzbl %r13b, %eax
    movl %eax, 32(%rbp)
    leaq 288(%rbp), %rax
    movq %rax, 16(%rbp)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_70(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq %rbx, %r10
    movq (%r10), %r12
    cmpq %r14, %r15
    jb 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r12, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_separator
    addq $32, %rsp
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L8_81
    jmp .L8_33
.L8_81:
    movl %r12d, %r13d
    jmp .L8_34
.L8_33:
    movl 32(%rbp), %eax
    movzbl %al, %r13d
.L8_34:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L8_30
    jmp .L8_31
.L8_30:
    leaq .Ltext_12(%rip), %r12
    leaq 256(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 272(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L8_32
.L8_31:
    leaq .Ltext_44(%rip), %r12
    leaq 240(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $1, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 272(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L8_32:
    leaq 272(%rbp), %r12
    movq %r12, %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 208(%rbp), %r12
    leaq 176(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq 40(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 160(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $2, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 16(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 112(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_join
    addq $64, %rsp
    leaq 112(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L8_36
    jmp .L8_35
.L8_36:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 592(%rbp), %r12
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
    movq 640(%rbp), %r15
    leaq 864(%rbp), %rsp
    popq %rbp
    ret
.L8_37:
.L8_35:
    leaq 592(%rbp), %rbx
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
    movq 640(%rbp), %r15
    leaq 864(%rbp), %rsp
    popq %rbp
    ret
.L8_38:
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_paths_normalize
lb_paths_normalize:
    .seh_proc lb_paths_normalize
    pushq %rbp
    .seh_pushreg %rbp
    subq $1456, %rsp
    .seh_stackalloc 1456
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 1272(%rbp)
    movq %rdi, 1448(%rbp)
    .seh_savereg %rdi, 1448
    movq %rsi, 1440(%rbp)
    .seh_savereg %rsi, 1440
    movdqu %xmm6, 1424(%rbp)
    .seh_savexmm %xmm6, 1424
    movdqu %xmm7, 1408(%rbp)
    .seh_savexmm %xmm7, 1408
    movdqu %xmm8, 1392(%rbp)
    .seh_savexmm %xmm8, 1392
    movdqu %xmm9, 1376(%rbp)
    .seh_savexmm %xmm9, 1376
    movdqu %xmm10, 1360(%rbp)
    .seh_savexmm %xmm10, 1360
    movdqu %xmm11, 1344(%rbp)
    .seh_savexmm %xmm11, 1344
    movdqu %xmm12, 1328(%rbp)
    .seh_savexmm %xmm12, 1328
    movdqu %xmm13, 1312(%rbp)
    .seh_savexmm %xmm13, 1312
    movdqu %xmm14, 1296(%rbp)
    .seh_savexmm %xmm14, 1296
    movdqu %xmm15, 1280(%rbp)
    .seh_savexmm %xmm15, 1280
    movq %rbx, 1264(%rbp)
    .seh_savereg %rbx, 1264
    movq %r12, 1256(%rbp)
    .seh_savereg %r12, 1256
    movq %r13, 1248(%rbp)
    .seh_savereg %r13, 1248
    movq %r14, 1240(%rbp)
    .seh_savereg %r14, 1240
    movq %r15, 1232(%rbp)
    .seh_savereg %r15, 1232
    .seh_endprologue
    movq %rcx, 1472(%rbp)
    movq %rdx, 1480(%rbp)
    movq %r8, 1488(%rbp)
    movq %r9, 1496(%rbp)
    movq 1480(%rbp), %r10
    leaq 1168(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 1152(%rbp), %rax
    movq %rax, 504(%rbp)
    leaq 1168(%rbp), %rax
    movq %rax, 496(%rbp)
    subq $48, %rsp
    movq 496(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 1136(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_paths_root
    addq $48, %rsp
    leaq 1136(%rbp), %rax
    movq %rax, 488(%rbp)
    movq 488(%rbp), %r10
    movq 504(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 1120(%rbp), %rax
    movq %rax, 120(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 112(%rbp)
    movq 496(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 480(%rbp)
    movq 480(%rbp), %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $2, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_70(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    leaq 1072(%rbp), %rax
    movq %rax, 104(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r12
    jbe .L9_2
.L9_1:
    movq 104(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_47(%rip), %r14
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $16, %rcx
    addq %rcx, %r12
    movq $47, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L9_3
.L9_2:
    movq 112(%rbp), %r10
    movq (%r10), %r14
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L9_4
    jmp .L9_5
.L9_5:
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L9_4:
    movq %r15, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq $1, %rax
    movq %rax, 24(%rsp)
    leaq 1048(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %rbx, %r11
    call *%r11
    addq $32, %rsp
    leaq 1048(%rbp), %r13
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, 472(%rbp)
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl 472(%rbp), %eax
    movl %ebx, %ecx
    movl %eax, %ebx
    andl %ecx, %ebx
    testl %ebx, %ebx
    jne .L9_6
    jmp .L9_7
.L9_6:
    movq 104(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_49(%rip), %r12
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
    movq 104(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L9_3
.L9_7:
    movq %r13, %r10
    movq (%r10), %rbx
    movq 104(%rbp), %r10
    movq %rbx, (%r10)
    movq 104(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq 104(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L9_3:
    movq 104(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L9_9
    jmp .L9_8
.L9_9:
    movq 104(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 1184(%rbp), %r12
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
    movq 1272(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1272(%rbp), %rax
    movq 1448(%rbp), %rdi
    movq 1440(%rbp), %rsi
    movdqu 1424(%rbp), %xmm6
    movdqu 1408(%rbp), %xmm7
    movdqu 1392(%rbp), %xmm8
    movdqu 1376(%rbp), %xmm9
    movdqu 1360(%rbp), %xmm10
    movdqu 1344(%rbp), %xmm11
    movdqu 1328(%rbp), %xmm12
    movdqu 1312(%rbp), %xmm13
    movdqu 1296(%rbp), %xmm14
    movdqu 1280(%rbp), %xmm15
    movq 1264(%rbp), %rbx
    movq 1256(%rbp), %r12
    movq 1248(%rbp), %r13
    movq 1240(%rbp), %r14
    movq 1232(%rbp), %r15
    leaq 1456(%rbp), %rsp
    popq %rbp
    ret
.L9_10:
.L9_8:
    movq 104(%rbp), %r10
    movq 120(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 1032(%rbp), %rax
    movq %rax, 96(%rbp)
    movq 480(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_70(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 88(%rbp)
    leaq 984(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 88(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L9_12
.L9_11:
    movq 80(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_47(%rip), %r13
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
    movq 80(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L9_13
.L9_12:
    movq 88(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq 112(%rbp), %r10
    movq (%r10), %rbx
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L9_14
    jmp .L9_15
.L9_15:
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L9_14:
    movq %r15, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 960(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r13, %r11
    call *%r11
    addq $32, %rsp
    leaq 960(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, 464(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl 464(%rbp), %eax
    movl %r13d, %ecx
    movl %eax, %r13d
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L9_16
    jmp .L9_17
.L9_16:
    movq 80(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_49(%rip), %r12
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
    movq 80(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L9_13
.L9_17:
    movq %r14, %r10
    movq (%r10), %rbx
    movq 80(%rbp), %r10
    movq %rbx, (%r10)
    movq 80(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 88(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 80(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L9_13:
    movq 80(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L9_19
    jmp .L9_18
.L9_19:
    movq 80(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 1184(%rbp), %r12
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
    leaq 944(%rbp), %rbx
    movq 120(%rbp), %r10
    movq (%r10), %r13
    movq 120(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %r13
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L9_21
    jmp .L9_20
.L9_21:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %r15, %r11
    call *%r11
    addq $48, %rsp
.L9_20:
    movq %r12, %rsi
    movq 1272(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1272(%rbp), %rax
    movq 1448(%rbp), %rdi
    movq 1440(%rbp), %rsi
    movdqu 1424(%rbp), %xmm6
    movdqu 1408(%rbp), %xmm7
    movdqu 1392(%rbp), %xmm8
    movdqu 1376(%rbp), %xmm9
    movdqu 1360(%rbp), %xmm10
    movdqu 1344(%rbp), %xmm11
    movdqu 1328(%rbp), %xmm12
    movdqu 1312(%rbp), %xmm13
    movdqu 1296(%rbp), %xmm14
    movdqu 1280(%rbp), %xmm15
    movq 1264(%rbp), %rbx
    movq 1256(%rbp), %r12
    movq 1248(%rbp), %r13
    movq 1240(%rbp), %r14
    movq 1232(%rbp), %r15
    leaq 1456(%rbp), %rsp
    popq %rbp
    ret
.L9_22:
.L9_18:
    movq 80(%rbp), %r10
    movq 96(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 504(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 456(%rbp)
    movq 120(%rbp), %r10
    movq (%r10), %r12
    movq 120(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq 504(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 448(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L9_23:
    movq 456(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L9_26
.L9_24:
    cmpq %r13, %r15
    jb 1f
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r12, %r14
    addq %r15, %r14
    movq 448(%rbp), %rax
    movq %rax, %rbx
    addq %r15, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq %r14, %r10
    movb %bl, (%r10)
.L9_25:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r15
    jmp .L9_23
.L9_26:
    movq 456(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    seta %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L9_27
    jmp .L9_125
.L9_125:
    movl %ebx, %r12d
    jmp .L9_28
.L9_27:
    subq $48, %rsp
    movq 496(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_12drive_prefix
    addq $48, %rsp
    movl %eax, %ebx
    testl %ebx, %ebx
    jne .L9_29
    jmp .L9_126
.L9_126:
    movl %ebx, %r12d
    jmp .L9_30
.L9_29:
    movq 456(%rbp), %rax
    movq $2, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r12d
.L9_30:
    movzbl %r12b, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl %ebx, %r12d
.L9_28:
    movzbl %r12b, %eax
    movl %eax, 440(%rbp)
    leaq 928(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq 912(%rbp), %rax
    movq %rax, 416(%rbp)
    movq 416(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 408(%rbp)
    leaq 896(%rbp), %rax
    movq %rax, 400(%rbp)
    movq 400(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 392(%rbp)
    leaq .Ltext_34(%rip), %rax
    movq %rax, 384(%rbp)
    leaq 880(%rbp), %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 376(%rbp)
    leaq .Ltext_55(%rip), %rax
    movq %rax, 368(%rbp)
    leaq 864(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 360(%rbp)
    movl 440(%rbp), %eax
    movzbl %al, %eax
    movl %eax, 280(%rbp)
    movq 96(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 344(%rbp)
    movq 120(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 328(%rbp)
    movq 120(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 320(%rbp)
    leaq 848(%rbp), %rax
    movq %rax, 312(%rbp)
    movq 312(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 304(%rbp)
    leaq 832(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 296(%rbp)
    leaq 816(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 288(%rbp)
    movq 96(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 272(%rbp)
    movq 120(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 256(%rbp)
    movq 120(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 248(%rbp)
    movq 120(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 232(%rbp)
    movq 456(%rbp), %rax
    movq %rax, 72(%rbp)
    movq $0, %rax
    movq %rax, 64(%rbp)
    movq 456(%rbp), %rax
    movq %rax, 56(%rbp)
.L9_31:
    movq 480(%rbp), %r10
    movq (%r10), %r12
    movq 56(%rbp), %rax
    cmpq %r12, %rax
    jae .L9_33
.L9_32:
    movq 56(%rbp), %rax
    movq %rax, %r12
.L9_34:
    movq 480(%rbp), %r10
    movq (%r10), %rbx
    cmpq %rbx, %r12
    setb %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L9_37
    jmp .L9_127
.L9_127:
    movl %ebx, %r15d
    jmp .L9_38
.L9_37:
    movq 496(%rbp), %r10
    movq (%r10), %rbx
    addq %r12, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_separator
    addq $32, %rsp
    movl %eax, %r15d
.L9_38:
    movzbl %r15b, %ebx
    testl %ebx, %ebx
    jne .L9_35
    jmp .L9_36
.L9_35:
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_70(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq %rbx, %r12
    jmp .L9_34
.L9_36:
    movq %r12, %rax
    movq %rax, 48(%rbp)
.L9_39:
    movq 480(%rbp), %r10
    movq (%r10), %r15
    movq 48(%rbp), %rax
    cmpq %r15, %rax
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L9_42
    jmp .L9_128
.L9_128:
    movl %r15d, %r14d
    jmp .L9_43
.L9_42:
    movq 496(%rbp), %r10
    movq (%r10), %r14
    movq 48(%rbp), %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    subq $32, %rsp
    movl %r14d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_separator
    addq $32, %rsp
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
.L9_43:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L9_40
    jmp .L9_41
.L9_40:
    movq 48(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_70(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %r14, %rax
    movq %rax, 48(%rbp)
    jmp .L9_39
.L9_41:
    movq 496(%rbp), %r10
    movq (%r10), %r15
    movq 480(%rbp), %r10
    movq (%r10), %r14
    movq $1, %rcx
    addq %rcx, %r14
    cmpq %r14, %r12
    jb 1f
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 48(%rbp), %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 48(%rbp), %rcx
    cmpq %rcx, %r12
    jbe .L9_44
.L9_45:
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L9_44:
    movq %r12, %rax
    addq %r15, %rax
    movq %rax, 432(%rbp)
    movq 48(%rbp), %rax
    subq %r12, %rax
    movq %rax, 424(%rbp)
    movq 432(%rbp), %rax
    movq 416(%rbp), %r10
    movq %rax, (%r10)
    movq 424(%rbp), %rax
    movq 408(%rbp), %r10
    movq %rax, (%r10)
    movq 432(%rbp), %rax
    movq 400(%rbp), %r10
    movq %rax, (%r10)
    movq 424(%rbp), %rax
    movq 392(%rbp), %r10
    movq %rax, (%r10)
    movq 400(%rbp), %r10
    movq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 424(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L9_129
    jmp .L9_49
.L9_129:
    movl %r14d, %r12d
    jmp .L9_50
.L9_49:
    movq 384(%rbp), %rax
    movq 32(%rbp), %r10
    movq %rax, (%r10)
    movq $1, %rax
    movq 376(%rbp), %r10
    movq %rax, (%r10)
    movq 424(%rbp), %rax
    movq $1, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L9_51
    jmp .L9_130
.L9_130:
    movl %r12d, %r14d
    jmp .L9_52
.L9_51:
    subq $32, %rsp
    movq 432(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 384(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 424(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcmp
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L9_52:
    movzbl %r14b, %r12d
.L9_50:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L9_46
    jmp .L9_47
.L9_46:
    movq 48(%rbp), %rax
    movq %rax, 56(%rbp)
    jmp .L9_31
.L9_53:
    jmp .L9_48
.L9_47:
.L9_48:
    movq 368(%rbp), %rax
    movq 24(%rbp), %r10
    movq %rax, (%r10)
    movq $2, %rax
    movq 360(%rbp), %r10
    movq %rax, (%r10)
    movq 424(%rbp), %rax
    movq $2, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L9_57
    jmp .L9_131
.L9_131:
    movl %r12d, %r14d
    jmp .L9_58
.L9_57:
    subq $32, %rsp
    movq 432(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 368(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 424(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcmp
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L9_58:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L9_54
    jmp .L9_55
.L9_54:
    movq 64(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jbe .L9_60
.L9_59:
    movq 64(%rbp), %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_56(%rip), %rdi
    leaq .Ltext_70(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 352(%rbp)
    movq 96(%rbp), %r10
    movq (%r10), %r14
    movq 344(%rbp), %r10
    movq (%r10), %r15
    movq 352(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_56(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 352(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq %r14, %rax
    addq %r15, %rax
    movq %rax, 336(%rbp)
    movq 336(%rbp), %r10
    movq (%r10), %r15
    movq 72(%rbp), %rcx
    cmpq %rcx, %r15
    setb %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L9_65
    jmp .L9_132
.L9_132:
    movl %r13d, %ebx
    jmp .L9_66
.L9_65:
    movq 120(%rbp), %r10
    movq (%r10), %rbx
    movq 328(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r15
    jb 1f
    leaq .Ltext_57(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rbx, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_separator
    addq $32, %rsp
    movl %eax, %ebx
.L9_66:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L9_62
    jmp .L9_63
.L9_62:
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_57(%rip), %rdi
    leaq .Ltext_70(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    jmp .L9_64
.L9_63:
    movq %r15, %rbx
.L9_64:
    movq 120(%rbp), %r10
    movq (%r10), %r15
    movq 320(%rbp), %r10
    movq (%r10), %r13
    movq $1, %rcx
    addq %rcx, %r13
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_58(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 72(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_58(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 72(%rbp), %rcx
    cmpq %rcx, %rbx
    jbe .L9_70
.L9_71:
    leaq .Ltext_58(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L9_70:
    movq %rbx, %r13
    addq %r15, %r13
    movq 72(%rbp), %rax
    movq %rax, %r12
    subq %rbx, %r12
    movq 312(%rbp), %r10
    movq %r13, (%r10)
    movq 304(%rbp), %r10
    movq %r12, (%r10)
    movq 16(%rbp), %r10
    movq %r13, (%r10)
    movq 296(%rbp), %r10
    movq %r12, (%r10)
    movq 368(%rbp), %rax
    movq 8(%rbp), %r10
    movq %rax, (%r10)
    movq $2, %rax
    movq 288(%rbp), %r10
    movq %rax, (%r10)
    movq $2, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L9_72
    jmp .L9_133
.L9_133:
    movl %r14d, %ebx
    jmp .L9_73
.L9_72:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 368(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcmp
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L9_73:
    movzbl %bl, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L9_68
.L9_67:
    movq 336(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq %rax, 72(%rbp)
    movq 352(%rbp), %rax
    movq %rax, 64(%rbp)
    movq 48(%rbp), %rax
    movq %rax, 56(%rbp)
    jmp .L9_31
.L9_74:
    jmp .L9_69
.L9_68:
.L9_69:
    jmp .L9_61
.L9_60:
    movl 280(%rbp), %eax
    testl %eax, %eax
    jne .L9_75
    jmp .L9_76
.L9_75:
    movq 48(%rbp), %rax
    movq %rax, 56(%rbp)
    jmp .L9_31
.L9_78:
    jmp .L9_77
.L9_76:
.L9_77:
.L9_61:
    jmp .L9_56
.L9_55:
.L9_56:
    movq 96(%rbp), %r10
    movq (%r10), %rbx
    movq 272(%rbp), %r10
    movq (%r10), %r12
    movq 64(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 64(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    addq %r12, %rbx
    movq 72(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 64(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    movq %rax, 264(%rbp)
    movq 72(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    seta %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L9_82
    jmp .L9_134
.L9_134:
    movl %r12d, %r13d
    jmp .L9_83
.L9_82:
    movq 72(%rbp), %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_70(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 120(%rbp), %r10
    movq (%r10), %r13
    movq 256(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r12
    jb 1f
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    addq %r13, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_separator
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L9_83:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L9_84
    jmp .L9_135
.L9_135:
    movl %r12d, %r13d
    jmp .L9_85
.L9_84:
    movq 72(%rbp), %rax
    movq $2, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L9_86
    jmp .L9_136
.L9_136:
    movl %r12d, %r13d
    jmp .L9_87
.L9_86:
    subq $48, %rsp
    movq 496(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_12drive_prefix
    addq $48, %rsp
    movl %eax, %r13d
.L9_87:
    movzbl %r13b, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %r13d
.L9_85:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L9_79
    jmp .L9_80
.L9_79:
    movq 120(%rbp), %r10
    movq (%r10), %r12
    movq 248(%rbp), %r10
    movq (%r10), %r13
    movq 72(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_64(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 72(%rbp), %rcx
    addq %rcx, %r12
    movl $47, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq 72(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    jmp .L9_81
.L9_80:
    movq 72(%rbp), %rax
    movq %rax, %r12
.L9_81:
    movq 120(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 240(%rbp)
    movq 232(%rbp), %r10
    movq (%r10), %r14
    movq %r12, %r15
    movq $0, %rax
    movq %rax, %rbx
.L9_88:
    movq 424(%rbp), %rcx
    cmpq %rcx, %rbx
    jae .L9_91
.L9_89:
    movq 432(%rbp), %rax
    movq %rax, %r12
    addq %rbx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    cmpq %r14, %r15
    jb 1f
    leaq .Ltext_66(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 240(%rbp), %rax
    addq %r15, %rax
    movq %rax, 224(%rbp)
    movzbl %r12b, %r12d
    movq 224(%rbp), %r10
    movb %r12b, (%r10)
    movq $1, %rcx
    movq %r15, %r12
    addq %rcx, %r12
.L9_90:
    movq $1, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r15
    movq %r13, %rbx
    jmp .L9_88
.L9_91:
    movq %r15, %rax
    movq %rax, 72(%rbp)
    movq 264(%rbp), %rax
    movq %rax, 64(%rbp)
    movq 48(%rbp), %rax
    movq %rax, 56(%rbp)
    jmp .L9_31
.L9_33:
    movq 72(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L9_93
.L9_92:
    leaq .Ltext_34(%rip), %rbx
    leaq 800(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $1, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 752(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_copy
    addq $48, %rsp
    leaq 752(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L9_96
    jmp .L9_95
.L9_96:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 1184(%rbp), %rax
    movq %rax, 216(%rbp)
    movq 216(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 216(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 736(%rbp), %rbx
    movq 96(%rbp), %r10
    movq (%r10), %r14
    movq 96(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_68(%rip), %rdi
    leaq .Ltext_70(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %r14
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L9_98
    jmp .L9_97
.L9_98:
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %r10
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
.L9_97:
    leaq 720(%rbp), %rbx
    movq 120(%rbp), %r10
    movq (%r10), %r12
    movq 120(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L9_100
    jmp .L9_99
.L9_100:
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
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
    movq %r14, %r11
    call *%r11
    addq $48, %rsp
.L9_99:
    movq 216(%rbp), %rsi
    movq 1272(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1272(%rbp), %rax
    movq 1448(%rbp), %rdi
    movq 1440(%rbp), %rsi
    movdqu 1424(%rbp), %xmm6
    movdqu 1408(%rbp), %xmm7
    movdqu 1392(%rbp), %xmm8
    movdqu 1376(%rbp), %xmm9
    movdqu 1360(%rbp), %xmm10
    movdqu 1344(%rbp), %xmm11
    movdqu 1328(%rbp), %xmm12
    movdqu 1312(%rbp), %xmm13
    movdqu 1296(%rbp), %xmm14
    movdqu 1280(%rbp), %xmm15
    movq 1264(%rbp), %rbx
    movq 1256(%rbp), %r12
    movq 1248(%rbp), %r13
    movq 1240(%rbp), %r14
    movq 1232(%rbp), %r15
    leaq 1456(%rbp), %rsp
    popq %rbp
    ret
.L9_101:
.L9_95:
    leaq 1184(%rbp), %rax
    movq %rax, 208(%rbp)
    movq %r12, %r10
    movq 208(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 208(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq 704(%rbp), %r13
    movq 96(%rbp), %r10
    movq (%r10), %r14
    movq 96(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_68(%rip), %rdi
    leaq .Ltext_70(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %r14
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L9_103
    jmp .L9_102
.L9_103:
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
.L9_102:
    leaq 688(%rbp), %rbx
    movq 120(%rbp), %r10
    movq (%r10), %r12
    movq 120(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L9_105
    jmp .L9_104
.L9_105:
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
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
    movq %r14, %r11
    call *%r11
    addq $48, %rsp
.L9_104:
    movq 208(%rbp), %rsi
    movq 1272(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1272(%rbp), %rax
    movq 1448(%rbp), %rdi
    movq 1440(%rbp), %rsi
    movdqu 1424(%rbp), %xmm6
    movdqu 1408(%rbp), %xmm7
    movdqu 1392(%rbp), %xmm8
    movdqu 1376(%rbp), %xmm9
    movdqu 1360(%rbp), %xmm10
    movdqu 1344(%rbp), %xmm11
    movdqu 1328(%rbp), %xmm12
    movdqu 1312(%rbp), %xmm13
    movdqu 1296(%rbp), %xmm14
    movdqu 1280(%rbp), %xmm15
    movq 1264(%rbp), %rbx
    movq 1256(%rbp), %r12
    movq 1248(%rbp), %r13
    movq 1240(%rbp), %r14
    movq 1232(%rbp), %r15
    leaq 1456(%rbp), %rsp
    popq %rbp
    ret
.L9_106:
    jmp .L9_94
.L9_93:
.L9_94:
    movq 120(%rbp), %r10
    movq (%r10), %r13
    movq 120(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 200(%rbp)
    movq 200(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_69(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 72(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_69(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    movq 72(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L9_107
.L9_108:
    leaq .Ltext_69(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L9_107:
    leaq 672(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq 72(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 656(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq 72(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 608(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_copy
    addq $48, %rsp
    leaq 608(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L9_110
    jmp .L9_109
.L9_110:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq 1184(%rbp), %rax
    movq %rax, 192(%rbp)
    movq 192(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 192(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 592(%rbp), %rbx
    movq 96(%rbp), %r10
    movq (%r10), %r12
    movq 96(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 184(%rbp)
    movq 184(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 176(%rbp)
    movq 176(%rbp), %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_69(%rip), %rdi
    leaq .Ltext_70(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 168(%rbp)
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 168(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq 112(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 160(%rbp)
    movq 160(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L9_112
    jmp .L9_111
.L9_112:
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
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
    movq %r14, %r11
    call *%r11
    addq $48, %rsp
.L9_111:
    leaq 576(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 200(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq 160(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L9_114
    jmp .L9_113
.L9_114:
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
.L9_113:
    movq 192(%rbp), %rsi
    movq 1272(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1272(%rbp), %rax
    movq 1448(%rbp), %rdi
    movq 1440(%rbp), %rsi
    movdqu 1424(%rbp), %xmm6
    movdqu 1408(%rbp), %xmm7
    movdqu 1392(%rbp), %xmm8
    movdqu 1376(%rbp), %xmm9
    movdqu 1360(%rbp), %xmm10
    movdqu 1344(%rbp), %xmm11
    movdqu 1328(%rbp), %xmm12
    movdqu 1312(%rbp), %xmm13
    movdqu 1296(%rbp), %xmm14
    movdqu 1280(%rbp), %xmm15
    movq 1264(%rbp), %rbx
    movq 1256(%rbp), %r12
    movq 1248(%rbp), %r13
    movq 1240(%rbp), %r14
    movq 1232(%rbp), %r15
    leaq 1456(%rbp), %rsp
    popq %rbp
    ret
.L9_115:
.L9_109:
    leaq 1184(%rbp), %rax
    movq %rax, 152(%rbp)
    movq %r14, %r10
    movq 152(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 152(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 560(%rbp), %r12
    movq 96(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 144(%rbp)
    movq 96(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_69(%rip), %rdi
    leaq .Ltext_70(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 144(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 136(%rbp)
    movq 136(%rbp), %r10
    movq %rbx, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %rbx
    movq 112(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 128(%rbp)
    movq 128(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L9_117
    jmp .L9_116
.L9_117:
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
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
    movq %r14, %r11
    call *%r11
    addq $48, %rsp
.L9_116:
    leaq 544(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 200(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq 128(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L9_119
    jmp .L9_118
.L9_119:
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
.L9_118:
    movq 152(%rbp), %rsi
    movq 1272(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1272(%rbp), %rax
    movq 1448(%rbp), %rdi
    movq 1440(%rbp), %rsi
    movdqu 1424(%rbp), %xmm6
    movdqu 1408(%rbp), %xmm7
    movdqu 1392(%rbp), %xmm8
    movdqu 1376(%rbp), %xmm9
    movdqu 1360(%rbp), %xmm10
    movdqu 1344(%rbp), %xmm11
    movdqu 1328(%rbp), %xmm12
    movdqu 1312(%rbp), %xmm13
    movdqu 1296(%rbp), %xmm14
    movdqu 1280(%rbp), %xmm15
    movq 1264(%rbp), %rbx
    movq 1256(%rbp), %r12
    movq 1248(%rbp), %r13
    movq 1240(%rbp), %r14
    movq 1232(%rbp), %r15
    leaq 1456(%rbp), %rsp
    popq %rbp
    ret
.L9_120:
    leaq 1032(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 528(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_69(%rip), %rdi
    leaq .Ltext_70(%rip), %rsi
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
    jne .L9_122
    jmp .L9_121
.L9_122:
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
.L9_121:
    leaq 1120(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 512(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_69(%rip), %rdi
    leaq .Ltext_70(%rip), %rsi
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
    jne .L9_124
    jmp .L9_123
.L9_124:
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
.L9_123:
    leaq .Ltext_69(%rip), %rdi
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
    .quad lb_paths_0init
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
    .asciz "src/std/paths.lucb:8:5"
.Ltext_2:
    .asciz "src/std/paths.lucb:13:9"
.Ltext_3:
    .asciz "src/std/paths.lucb:14:9"
.Ltext_4:
    .asciz "src/std/paths.lucb:16:5"
.Ltext_5:
    .asciz "src/std/paths.lucb:19:5"
.Ltext_6:
    .asciz "src/std/paths.lucb:21:5"
.Ltext_7:
    .asciz "src/std/paths.lucb:22:5"
.Ltext_8:
    .asciz "src/std/paths.lucb:28:9"
.Ltext_9:
    .asciz "src/std/paths.lucb:29:9"
.Ltext_10:
    .asciz "index out of bounds"
.Ltext_11:
    .asciz "src/std/paths.lucb:30:5"
.Ltext_12:
    .asciz ""
.Ltext_13:
    .asciz "src/std/paths.lucb:32:5"
.Ltext_14:
    .asciz "src/std/paths.lucb:33:9"
.Ltext_15:
    .asciz "src/std/paths.lucb:36:5"
.Ltext_16:
    .asciz "src/std/paths.lucb:38:9"
.Ltext_17:
    .asciz "UNC"
.Ltext_18:
    .asciz "unc"
.Ltext_19:
    .asciz "src/std/paths.lucb:41:13"
.Ltext_20:
    .asciz "src/std/paths.lucb:42:17"
.Ltext_21:
    .asciz "src/std/paths.lucb:43:13"
.Ltext_22:
    .asciz "src/std/paths.lucb:47:9"
.Ltext_23:
    .asciz "src/std/paths.lucb:48:13"
.Ltext_24:
    .asciz "src/std/paths.lucb:50:17"
.Ltext_25:
    .asciz "src/std/paths.lucb:51:9"
.Ltext_26:
    .asciz "src/std/paths.lucb:52:5"
.Ltext_27:
    .asciz "src/std/paths.lucb:57:5"
.Ltext_28:
    .asciz "src/std/paths.lucb:61:9"
.Ltext_29:
    .asciz "src/std/paths.lucb:62:5"
.Ltext_30:
    .asciz "src/std/paths.lucb:66:5"
.Ltext_31:
    .asciz "src/std/paths.lucb:70:5"
.Ltext_32:
    .asciz "src/std/paths.lucb:71:9"
.Ltext_33:
    .asciz "src/std/paths.lucb:72:5"
.Ltext_34:
    .asciz "."
.Ltext_35:
    .asciz "src/std/paths.lucb:80:5"
.Ltext_36:
    .asciz "src/std/paths.lucb:87:5"
.Ltext_37:
    .asciz "src/std/paths.lucb:88:5"
.Ltext_38:
    .asciz "src/std/paths.lucb:96:5"
.Ltext_39:
    .asciz "src/std/paths.lucb:102:5"
.Ltext_40:
    .asciz "src/std/paths.lucb:113:9"
.Ltext_41:
    .asciz "src/std/paths.lucb:114:13"
.Ltext_42:
    .asciz "src/std/paths.lucb:115:9"
.Ltext_43:
    .asciz "src/std/paths.lucb:118:5"
.Ltext_44:
    .asciz "/"
.Ltext_45:
    .asciz "src/std/paths.lucb:120:5"
.Ltext_46:
    .asciz "src/std/paths.lucb:128:5"
.Ltext_47:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_48:
    .asciz "memory.unset"
.Ltext_49:
    .asciz "memory.exhausted"
.Ltext_50:
    .asciz "src/std/paths.lucb:130:5"
.Ltext_51:
    .asciz "src/std/paths.lucb:133:5"
.Ltext_52:
    .asciz "src/std/paths.lucb:138:9"
.Ltext_53:
    .asciz "src/std/paths.lucb:140:9"
.Ltext_54:
    .asciz "src/std/paths.lucb:141:9"
.Ltext_55:
    .asciz ".."
.Ltext_56:
    .asciz "src/std/paths.lucb:145:17"
.Ltext_57:
    .asciz "src/std/paths.lucb:146:17"
.Ltext_58:
    .asciz "src/std/paths.lucb:147:17"
.Ltext_59:
    .asciz "src/std/paths.lucb:148:21"
.Ltext_60:
    .asciz "src/std/paths.lucb:149:21"
.Ltext_61:
    .asciz "src/std/paths.lucb:153:9"
.Ltext_62:
    .asciz "src/std/paths.lucb:154:9"
.Ltext_63:
    .asciz "src/std/paths.lucb:155:9"
.Ltext_64:
    .asciz "src/std/paths.lucb:156:13"
.Ltext_65:
    .asciz "src/std/paths.lucb:157:13"
.Ltext_66:
    .asciz "src/std/paths.lucb:159:13"
.Ltext_67:
    .asciz "src/std/paths.lucb:160:13"
.Ltext_68:
    .asciz "src/std/paths.lucb:161:5"
.Ltext_69:
    .asciz "src/std/paths.lucb:162:5"
.Ltext_70:
    .asciz "integer overflow"

    .section .rdata,"dr"
    .p2align 3
