    .weak lb_memory_copy_0g1_u8
    .weak lb_process_15release_storage_0g1_u16
    .text

    .p2align 4
    .globl lb_process_0init
lb_process_0init:
    .seh_proc lb_process_0init
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
    leaq lb_process_7poll_in(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movw %ax, (%r10)
    leaq lb_process_12poll_hang_up(%rip), %rbx
    movl $16, %eax
    movq %rbx, %r10
    movw %ax, (%r10)
    leaq lb_process_10poll_error(%rip), %rbx
    movl $8, %eax
    movq %rbx, %r10
    movw %ax, (%r10)
    leaq lb_process_9set_flags(%rip), %rbx
    movl $4, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
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
    leaq lb_process_12non_blocking(%rip), %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq %rbx, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L0_4
    jmp .L0_5
.L0_4:
    movl $35, %eax
    movl %eax, %ebx
    jmp .L0_6
.L0_5:
    movl $11, %eax
    movl %eax, %ebx
.L0_6:
    leaq lb_process_11would_block(%rip), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    leaq lb_process_failed(%rip), %r12
    movl $208273416, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_process_16interrupt_signal(%rip), %r12
    movl $2, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_process_16terminate_signal(%rip), %r12
    movl $15, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_process_17console_interrupt(%rip), %r12
    movl $0, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_process_13console_break(%rip), %r12
    movl $1, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_process_13console_close(%rip), %r12
    movl $2, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_process_14console_logoff(%rip), %r12
    movl $5, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_process_16console_shutdown(%rip), %r12
    movl $6, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_process_26console_acknowledgement_ms(%rip), %r12
    movq $4000, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 24(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq .Ltext_0(%rip), %r13
    leaq 8(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $7, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_process_Command_close(%rip), %r13
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $33, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq lb_process_12command_type(%rip), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
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
    .seh_endproc

    .p2align 4
    .globl lb_process_Capture_pull
lb_process_Capture_pull:
    .seh_proc lb_process_Capture_pull
    pushq %rbp
    .seh_pushreg %rbp
    subq $480, %rsp
    .seh_stackalloc 480
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 296(%rbp)
    movq %rdi, 472(%rbp)
    .seh_savereg %rdi, 472
    movq %rsi, 464(%rbp)
    .seh_savereg %rsi, 464
    movdqu %xmm6, 448(%rbp)
    .seh_savexmm %xmm6, 448
    movdqu %xmm7, 432(%rbp)
    .seh_savexmm %xmm7, 432
    movdqu %xmm8, 416(%rbp)
    .seh_savexmm %xmm8, 416
    movdqu %xmm9, 400(%rbp)
    .seh_savexmm %xmm9, 400
    movdqu %xmm10, 384(%rbp)
    .seh_savexmm %xmm10, 384
    movdqu %xmm11, 368(%rbp)
    .seh_savexmm %xmm11, 368
    movdqu %xmm12, 352(%rbp)
    .seh_savexmm %xmm12, 352
    movdqu %xmm13, 336(%rbp)
    .seh_savexmm %xmm13, 336
    movdqu %xmm14, 320(%rbp)
    .seh_savexmm %xmm14, 320
    movdqu %xmm15, 304(%rbp)
    .seh_savexmm %xmm15, 304
    movq %rbx, 288(%rbp)
    .seh_savereg %rbx, 288
    movq %r12, 280(%rbp)
    .seh_savereg %r12, 280
    movq %r13, 272(%rbp)
    .seh_savereg %r13, 272
    movq %r14, 264(%rbp)
    .seh_savereg %r14, 264
    movq %r15, 256(%rbp)
    .seh_savereg %r15, 256
    .seh_endprologue
    movq %rcx, 496(%rbp)
    movq %rdx, 504(%rbp)
    movq %r8, 512(%rbp)
    movq %r9, 520(%rbp)
    movq 504(%rbp), %rax
    movq %rax, 216(%rbp)
    leaq 216(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 40(%rbp)
    movq 8(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r10
    movq (%r10), %r15
    movq 40(%rbp), %rax
    movq %r15, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq $256, %rcx
    cmpq %rcx, %r15
    jae .L1_2
.L1_1:
    movq 40(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L1_5
.L1_4:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r15
    leaq 168(%rbp), %r14
.L1_8:
    movq %r15, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L1_10
    jmp .L1_11
.L1_11:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_10:
    movq %r13, %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $1024, %rax
    movq %rax, 16(%rsp)
    movq $1, %rax
    movq %rax, 24(%rsp)
    leaq 144(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r15, %r11
    call *%r11
    addq $32, %rsp
    leaq 144(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl $1, %ecx
    andl %ecx, %r15d
    testl %r15d, %r15d
    jne .L1_12
    jmp .L1_13
.L1_12:
    movq $16, %rcx
    movq %r14, %rbx
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
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_9
.L1_13:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $1024, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L1_9:
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_15
    jmp .L1_14
.L1_15:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 224(%rbp), %r12
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
    movq 296(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 296(%rbp), %rax
    movq 472(%rbp), %rdi
    movq 464(%rbp), %rsi
    movdqu 448(%rbp), %xmm6
    movdqu 432(%rbp), %xmm7
    movdqu 416(%rbp), %xmm8
    movdqu 400(%rbp), %xmm9
    movdqu 384(%rbp), %xmm10
    movdqu 368(%rbp), %xmm11
    movdqu 352(%rbp), %xmm12
    movdqu 336(%rbp), %xmm13
    movdqu 320(%rbp), %xmm14
    movdqu 304(%rbp), %xmm15
    movq 288(%rbp), %rbx
    movq 280(%rbp), %r12
    movq 272(%rbp), %r13
    movq 264(%rbp), %r14
    movq 256(%rbp), %r15
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
.L1_14:
    movq %r14, %r10
    movq 56(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L1_6
.L1_5:
    movq 40(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    subq $48, %rsp
    movq 56(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    leaq 96(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_grow
    addq $48, %rsp
    leaq 96(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_18
    jmp .L1_17
.L1_18:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 224(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 296(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 296(%rbp), %rax
    movq 472(%rbp), %rdi
    movq 464(%rbp), %rsi
    movdqu 448(%rbp), %xmm6
    movdqu 432(%rbp), %xmm7
    movdqu 416(%rbp), %xmm8
    movdqu 400(%rbp), %xmm9
    movdqu 384(%rbp), %xmm10
    movdqu 368(%rbp), %xmm11
    movdqu 352(%rbp), %xmm12
    movdqu 336(%rbp), %xmm13
    movdqu 320(%rbp), %xmm14
    movdqu 304(%rbp), %xmm15
    movq 288(%rbp), %rbx
    movq 280(%rbp), %r12
    movq 272(%rbp), %r13
    movq 264(%rbp), %r14
    movq 256(%rbp), %r15
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
.L1_17:
    movq %r12, %r10
    movq 56(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L1_6:
    jmp .L1_3
.L1_2:
.L1_3:
    movq 8(%rbp), %r10
    movslq (%r10), %rax
    movq %rax, 24(%rbp)
    movq 56(%rbp), %r10
    movq (%r10), %r13
    movq 48(%rbp), %r10
    movq (%r10), %r14
    movq 32(%rbp), %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r12, %r14
    jb 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r14, %r15
    jbe .L1_20
.L1_21:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_20:
    movq %r13, %r12
    addq %r15, %r12
    movq %r14, %rax
    subq %r15, %rax
    movq %rax, 16(%rbp)
    leaq 80(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq 16(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movl 24(%rbp), %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 16(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call read
    addq $32, %rsp
    movq %rax, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L1_23
.L1_22:
    movq 8(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_24
.L1_23:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jle .L1_26
.L1_25:
    movq 32(%rbp), %r10
    movq (%r10), %r12
    movq %rbx, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 32(%rbp), %r10
    movq %r12, (%r10)
    jmp .L1_27
.L1_26:
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %ebx
    leaq lb_c_interrupted(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    cmpl %r12d, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L1_31
    jmp .L1_34
.L1_34:
    movl %ebx, %r12d
    jmp .L1_32
.L1_31:
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %ebx
    leaq lb_process_11would_block(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    cmpl %r12d, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L1_32:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L1_28
    jmp .L1_29
.L1_28:
    leaq 224(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_10(%rip), %r12
    leaq 64(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $35, %rax
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
    movq 296(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 296(%rbp), %rax
    movq 472(%rbp), %rdi
    movq 464(%rbp), %rsi
    movdqu 448(%rbp), %xmm6
    movdqu 432(%rbp), %xmm7
    movdqu 416(%rbp), %xmm8
    movdqu 400(%rbp), %xmm9
    movdqu 384(%rbp), %xmm10
    movdqu 368(%rbp), %xmm11
    movdqu 352(%rbp), %xmm12
    movdqu 336(%rbp), %xmm13
    movdqu 320(%rbp), %xmm14
    movdqu 304(%rbp), %xmm15
    movq 288(%rbp), %rbx
    movq 280(%rbp), %r12
    movq 272(%rbp), %r13
    movq 264(%rbp), %r14
    movq 256(%rbp), %r15
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
.L1_29:
.L1_30:
.L1_27:
.L1_24:
    leaq 224(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 296(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 296(%rbp), %rax
    movq 472(%rbp), %rdi
    movq 464(%rbp), %rsi
    movdqu 448(%rbp), %xmm6
    movdqu 432(%rbp), %xmm7
    movdqu 416(%rbp), %xmm8
    movdqu 400(%rbp), %xmm9
    movdqu 384(%rbp), %xmm10
    movdqu 368(%rbp), %xmm11
    movdqu 352(%rbp), %xmm12
    movdqu 336(%rbp), %xmm13
    movdqu 320(%rbp), %xmm14
    movdqu 304(%rbp), %xmm15
    movq 288(%rbp), %rbx
    movq 280(%rbp), %r12
    movq 272(%rbp), %r13
    movq 264(%rbp), %r14
    movq 256(%rbp), %r15
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_process_Capture_take
lb_process_Capture_take:
    .seh_proc lb_process_Capture_take
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
    movq %rax, 232(%rbp)
    leaq 232(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 32(%rbp)
    leaq 216(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq 32(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L2_2
.L2_1:
    movq 32(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jbe .L2_5
.L2_4:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r14
    leaq 200(%rbp), %r15
    movq %r12, %r10
    movq (%r10), %rbx
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq %r14, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_8
    jmp .L2_7
.L2_8:
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $48, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r15, %r10
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
.L2_7:
    movq 56(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_6
.L2_5:
.L2_6:
    leaq 184(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 240(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
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
.L2_9:
    jmp .L2_3
.L2_2:
.L2_3:
    leaq 168(%rbp), %rax
    movq %rax, 24(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 16(%rbp)
    leaq 120(%rbp), %rax
    movq %rax, 8(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r13
    jbe .L2_11
.L2_10:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %r13
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $16, %rcx
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
    jmp .L2_12
.L2_11:
    movq 16(%rbp), %r10
    movq (%r10), %rbx
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_13
    jmp .L2_14
.L2_14:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_13:
    movq %r14, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq $1, %rax
    movq %rax, 24(%rsp)
    leaq 96(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r12, %r11
    call *%r11
    addq $32, %rsp
    leaq 96(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq $0, %rcx
    cmpq %rcx, %r13
    setne %al
    movzbl %al, %eax
    movl %eax, 40(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl 40(%rbp), %eax
    movl %r12d, %ecx
    movl %eax, %r12d
    andl %ecx, %r12d
    testl %r12d, %r12d
    jne .L2_15
    jmp .L2_16
.L2_15:
    movq 8(%rbp), %rax
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
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_12
.L2_16:
    movq %r15, %r10
    movq (%r10), %rbx
    movq 8(%rbp), %r10
    movq %rbx, (%r10)
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L2_12:
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_18
    jmp .L2_17
.L2_18:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 240(%rbp), %r12
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
.L2_19:
.L2_17:
    movq 8(%rbp), %r10
    movq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 32(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 48(%rbp), %r10
    movq (%r10), %r12
    subq $64, %rsp
    movq 24(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_copy_0g1_u8
    addq $64, %rsp
    leaq 80(%rbp), %r12
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
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
    jne .L2_21
    jmp .L2_20
.L2_21:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
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
    movq %r15, %r11
    call *%r11
    addq $48, %rsp
.L2_20:
    movq 56(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 24(%rbp), %r10
    movq (%r10), %r12
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq 64(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    leaq 240(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
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
.L2_22:
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_Capture_drop
lb_process_Capture_drop:
    .seh_proc lb_process_Capture_drop
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
    movq %r14, 48(%rbp)
    .seh_savereg %r14, 48
    movq %r15, 40(%rbp)
    .seh_savereg %r15, 40
    .seh_endprologue
    movq %rcx, 272(%rbp)
    movq %rdx, 280(%rbp)
    movq %r8, 288(%rbp)
    movq %r9, 296(%rbp)
    movq 272(%rbp), %rax
    movq %rax, 32(%rbp)
    leaq 32(%rbp), %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L3_2
.L3_1:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r13
    leaq 16(%rbp), %r14
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq %r13, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L3_5
    jmp .L3_4
.L3_5:
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %r15, %rax
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
.L3_4:
    leaq 0(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L3_3
.L3_2:
.L3_3:
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
    movq 48(%rbp), %r14
    movq 40(%rbp), %r15
    leaq 256(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_process_run
lb_process_run:
    .seh_proc lb_process_run
    pushq %rbp
    .seh_pushreg %rbp
    subq $432, %rsp
    .seh_stackalloc 432
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 248(%rbp)
    movq %rdi, 424(%rbp)
    .seh_savereg %rdi, 424
    movq %rsi, 416(%rbp)
    .seh_savereg %rsi, 416
    movdqu %xmm6, 400(%rbp)
    .seh_savexmm %xmm6, 400
    movdqu %xmm7, 384(%rbp)
    .seh_savexmm %xmm7, 384
    movdqu %xmm8, 368(%rbp)
    .seh_savexmm %xmm8, 368
    movdqu %xmm9, 352(%rbp)
    .seh_savexmm %xmm9, 352
    movdqu %xmm10, 336(%rbp)
    .seh_savexmm %xmm10, 336
    movdqu %xmm11, 320(%rbp)
    .seh_savexmm %xmm11, 320
    movdqu %xmm12, 304(%rbp)
    .seh_savexmm %xmm12, 304
    movdqu %xmm13, 288(%rbp)
    .seh_savexmm %xmm13, 288
    movdqu %xmm14, 272(%rbp)
    .seh_savexmm %xmm14, 272
    movdqu %xmm15, 256(%rbp)
    .seh_savexmm %xmm15, 256
    movq %rbx, 240(%rbp)
    .seh_savereg %rbx, 240
    movq %r12, 232(%rbp)
    .seh_savereg %r12, 232
    movq %r13, 224(%rbp)
    .seh_savereg %r13, 224
    movq %r14, 216(%rbp)
    .seh_savereg %r14, 216
    .seh_endprologue
    movq %rcx, 448(%rbp)
    movq %rdx, 456(%rbp)
    movq %r8, 464(%rbp)
    movq %r9, 472(%rbp)
    movq 456(%rbp), %rax
    movq %rax, 128(%rbp)
    movq 464(%rbp), %r10
    leaq 112(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 472(%rbp), %rax
    movq %rax, 96(%rbp)
    movq 480(%rbp), %r10
    leaq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 128(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 112(%rbp), %r12
    leaq 96(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq 72(%rbp), %r14
    subq $96, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq %r14, %r10
    leaq 64(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 64(%rsp), %rax
    movq %rax, 32(%rsp)
    movq $0, %rax
    movq %rax, 40(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_process_14run_controlled
    addq $96, %rsp
    leaq 0(%rbp), %r12
    movq $64, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_2
    jmp .L4_1
.L4_2:
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 144(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $64, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 248(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 248(%rbp), %rax
    movq 424(%rbp), %rdi
    movq 416(%rbp), %rsi
    movdqu 400(%rbp), %xmm6
    movdqu 384(%rbp), %xmm7
    movdqu 368(%rbp), %xmm8
    movdqu 352(%rbp), %xmm9
    movdqu 336(%rbp), %xmm10
    movdqu 320(%rbp), %xmm11
    movdqu 304(%rbp), %xmm12
    movdqu 288(%rbp), %xmm13
    movdqu 272(%rbp), %xmm14
    movdqu 256(%rbp), %xmm15
    movq 240(%rbp), %rbx
    movq 232(%rbp), %r12
    movq 224(%rbp), %r13
    movq 216(%rbp), %r14
    leaq 432(%rbp), %rsp
    popq %rbp
    ret
.L4_3:
.L4_1:
    leaq 144(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $64, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 248(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 248(%rbp), %rax
    movq 424(%rbp), %rdi
    movq 416(%rbp), %rsi
    movdqu 400(%rbp), %xmm6
    movdqu 384(%rbp), %xmm7
    movdqu 368(%rbp), %xmm8
    movdqu 352(%rbp), %xmm9
    movdqu 336(%rbp), %xmm10
    movdqu 320(%rbp), %xmm11
    movdqu 304(%rbp), %xmm12
    movdqu 288(%rbp), %xmm13
    movdqu 272(%rbp), %xmm14
    movdqu 256(%rbp), %xmm15
    movq 240(%rbp), %rbx
    movq 232(%rbp), %r12
    movq 224(%rbp), %r13
    movq 216(%rbp), %r14
    leaq 432(%rbp), %rsp
    popq %rbp
    ret
.L4_4:
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_14run_controlled
lb_process_14run_controlled:
    .seh_proc lb_process_14run_controlled
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
    movq %rax, 152(%rbp)
    movq 496(%rbp), %r10
    leaq 136(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 504(%rbp), %rax
    movq %rax, 120(%rbp)
    movq 512(%rbp), %r10
    leaq 96(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 520(%rbp), %rax
    movq %rax, 80(%rbp)
    leaq 152(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 136(%rbp), %r12
    leaq 120(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq 96(%rbp), %r14
    leaq 80(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    subq $96, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq %r14, %r10
    leaq 64(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 64(%rsp), %rax
    movq %rax, 32(%rsp)
    movq %r15, %rax
    movq %rax, 40(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_process_11run_windows
    addq $96, %rsp
    leaq 8(%rbp), %r12
    movq $64, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_2
    jmp .L5_1
.L5_2:
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 168(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $64, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 280(%rbp), %rdi
    movq $72, %rdx
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
.L5_3:
.L5_1:
    leaq 168(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $64, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 280(%rbp), %rdi
    movq $72, %rdx
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
.L5_4:
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_capture
lb_process_capture:
    .seh_proc lb_process_capture
    pushq %rbp
    .seh_pushreg %rbp
    subq $640, %rsp
    .seh_stackalloc 640
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 456(%rbp)
    movq %rdi, 632(%rbp)
    .seh_savereg %rdi, 632
    movq %rsi, 624(%rbp)
    .seh_savereg %rsi, 624
    movdqu %xmm6, 608(%rbp)
    .seh_savexmm %xmm6, 608
    movdqu %xmm7, 592(%rbp)
    .seh_savexmm %xmm7, 592
    movdqu %xmm8, 576(%rbp)
    .seh_savexmm %xmm8, 576
    movdqu %xmm9, 560(%rbp)
    .seh_savexmm %xmm9, 560
    movdqu %xmm10, 544(%rbp)
    .seh_savexmm %xmm10, 544
    movdqu %xmm11, 528(%rbp)
    .seh_savexmm %xmm11, 528
    movdqu %xmm12, 512(%rbp)
    .seh_savexmm %xmm12, 512
    movdqu %xmm13, 496(%rbp)
    .seh_savexmm %xmm13, 496
    movdqu %xmm14, 480(%rbp)
    .seh_savexmm %xmm14, 480
    movdqu %xmm15, 464(%rbp)
    .seh_savexmm %xmm15, 464
    movq %rbx, 448(%rbp)
    .seh_savereg %rbx, 448
    movq %r12, 440(%rbp)
    .seh_savereg %r12, 440
    movq %r13, 432(%rbp)
    .seh_savereg %r13, 432
    movq %r14, 424(%rbp)
    .seh_savereg %r14, 424
    movq %r15, 416(%rbp)
    .seh_savereg %r15, 416
    .seh_endprologue
    movq %rcx, 656(%rbp)
    movq %rdx, 664(%rbp)
    movq %r8, 672(%rbp)
    movq %r9, 680(%rbp)
    movq 664(%rbp), %rax
    movl %eax, 368(%rbp)
    movq 672(%rbp), %rax
    movq %rax, 352(%rbp)
    movq 680(%rbp), %rax
    movq %rax, 336(%rbp)
    leaq 352(%rbp), %rax
    movq %rax, 200(%rbp)
    movq 200(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 192(%rbp)
    movq 192(%rbp), %r10
    movslq (%r10), %r12
    leaq lb_process_9set_flags(%rip), %r13
    movq %r13, %r10
    movslq (%r10), %r14
    leaq lb_process_12non_blocking(%rip), %r15
    movq %r15, %r10
    movslq (%r10), %rbx
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movl %r14d, %eax
    movq %rax, 8(%rsp)
    movl %ebx, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call fcntl
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    setl %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L6_42
    jmp .L6_4
.L6_42:
    movl %ebx, %r12d
    jmp .L6_5
.L6_4:
    leaq 336(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movq %r13, %r10
    movslq (%r10), %r12
    movq %r15, %r10
    movslq (%r10), %r14
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movl %r14d, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call fcntl
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    setl %al
    movzbl %al, %r12d
.L6_5:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L6_1
    jmp .L6_2
.L6_1:
    leaq 384(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_10(%rip), %r12
    leaq 320(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $35, %rax
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
    leaq 368(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_terminate
    addq $32, %rsp
    movq %rbx, %rsi
    movq 456(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 456(%rbp), %rax
    movq 632(%rbp), %rdi
    movq 624(%rbp), %rsi
    movdqu 608(%rbp), %xmm6
    movdqu 592(%rbp), %xmm7
    movdqu 576(%rbp), %xmm8
    movdqu 560(%rbp), %xmm9
    movdqu 544(%rbp), %xmm10
    movdqu 528(%rbp), %xmm11
    movdqu 512(%rbp), %xmm12
    movdqu 496(%rbp), %xmm13
    movdqu 480(%rbp), %xmm14
    movdqu 464(%rbp), %xmm15
    movq 448(%rbp), %rbx
    movq 440(%rbp), %r12
    movq 432(%rbp), %r13
    movq 424(%rbp), %r14
    movq 416(%rbp), %r15
    leaq 640(%rbp), %rsp
    popq %rbp
    ret
.L6_6:
    jmp .L6_3
.L6_2:
.L6_3:
    movq 192(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 184(%rbp)
    leaq 336(%rbp), %rax
    movq %rax, 176(%rbp)
    leaq 304(%rbp), %r13
    leaq 296(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq lb_process_7poll_in(%rip), %rax
    movq %rax, 168(%rbp)
    movq 40(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, 160(%rbp)
    movq 40(%rbp), %rax
    movq $6, %rcx
    addq %rcx, %rax
    movq %rax, 152(%rbp)
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    leaq 288(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq 336(%rbp), %rax
    movq %rax, 144(%rbp)
    movq 24(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, 128(%rbp)
    movq 24(%rbp), %rax
    movq $6, %rcx
    addq %rcx, %rax
    movq %rax, 120(%rbp)
    movq $6, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, 104(%rbp)
    leaq lb_process_12poll_hang_up(%rip), %rax
    movq %rax, 96(%rbp)
    leaq lb_process_10poll_error(%rip), %rax
    movq %rax, 88(%rbp)
    leaq 240(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 80(%rbp)
    movq 32(%rbp), %rax
    movq $6, %rcx
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    leaq lb_process_12poll_hang_up(%rip), %rax
    movq %rax, 64(%rbp)
    leaq lb_process_10poll_error(%rip), %rax
    movq %rax, 56(%rbp)
    leaq 208(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    leaq lb_c_interrupted(%rip), %rax
    movq %rax, 112(%rbp)
.L6_7:
    movq 184(%rbp), %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L6_43
    jmp .L6_10
.L6_43:
    movl %r15d, %r14d
    jmp .L6_11
.L6_10:
    movq 176(%rbp), %r10
    movq (%r10), %r14
    movq $32, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
.L6_11:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L6_8
    jmp .L6_9
.L6_8:
    movq 40(%rbp), %r11
    movq $0, 0(%r11)
    movq 184(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L6_12
    jmp .L6_13
.L6_12:
    movq 192(%rbp), %r10
    movslq (%r10), %r14
    jmp .L6_14
.L6_13:
    movl $4294967295, %eax
    movl %eax, %r14d
.L6_14:
    movq 40(%rbp), %r10
    movl %r14d, (%r10)
    movq 168(%rbp), %r10
    movswl (%r10), %r15d
    movq 160(%rbp), %r10
    movw %r15w, (%r10)
    movl $0, %eax
    movq 152(%rbp), %r10
    movw %ax, (%r10)
    movq 40(%rbp), %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq 24(%rbp), %r11
    movq $0, 0(%r11)
    movq 144(%rbp), %r10
    movq (%r10), %r12
    movq $32, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 136(%rbp)
    movq 136(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_15
    jmp .L6_16
.L6_15:
    movq %r12, %r10
    movslq (%r10), %rbx
    jmp .L6_17
.L6_16:
    movl $4294967295, %eax
    movl %eax, %ebx
.L6_17:
    movq 24(%rbp), %r10
    movl %ebx, (%r10)
    movq 128(%rbp), %r10
    movw %r15w, (%r10)
    movl $0, %eax
    movq 120(%rbp), %r10
    movw %ax, (%r10)
    movq 24(%rbp), %r10
    movq 32(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movl $2, %eax
    movq %rax, 8(%rsp)
    movl $4294967295, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call poll
    addq $32, %rsp
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jge .L6_19
.L6_18:
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %ebx
    movq 112(%rbp), %r10
    movslq (%r10), %r12
    cmpl %r12d, %ebx
    jne .L6_22
.L6_21:
    jmp .L6_7
.L6_24:
    jmp .L6_23
.L6_22:
.L6_23:
    leaq 384(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_10(%rip), %r12
    leaq 272(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $35, %rax
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
    leaq 368(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_terminate
    addq $32, %rsp
    movq %rbx, %rsi
    movq 456(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 456(%rbp), %rax
    movq 632(%rbp), %rdi
    movq 624(%rbp), %rsi
    movdqu 608(%rbp), %xmm6
    movdqu 592(%rbp), %xmm7
    movdqu 576(%rbp), %xmm8
    movdqu 560(%rbp), %xmm9
    movdqu 544(%rbp), %xmm10
    movdqu 528(%rbp), %xmm11
    movdqu 512(%rbp), %xmm12
    movdqu 496(%rbp), %xmm13
    movdqu 480(%rbp), %xmm14
    movdqu 464(%rbp), %xmm15
    movq 448(%rbp), %rbx
    movq 440(%rbp), %r12
    movq 432(%rbp), %r13
    movq 424(%rbp), %r14
    movq 416(%rbp), %r15
    leaq 640(%rbp), %rsp
    popq %rbp
    ret
.L6_25:
    jmp .L6_20
.L6_19:
.L6_20:
    movq 184(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_29
    jmp .L6_44
.L6_44:
    movl %ebx, %r14d
    jmp .L6_30
.L6_29:
    movq 104(%rbp), %r10
    movswl (%r10), %ebx
    movq 168(%rbp), %r10
    movswl (%r10), %r14d
    movq 96(%rbp), %r10
    movswl (%r10), %r15d
    orl %r15d, %r14d
    movq 88(%rbp), %r10
    movswl (%r10), %r15d
    orl %r15d, %r14d
    andl %r14d, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r14d
.L6_30:
    movzbl %r14b, %ebx
    testl %ebx, %ebx
    jne .L6_26
    jmp .L6_27
.L6_26:
    subq $32, %rsp
    movq 192(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 240(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_Capture_pull
    addq $32, %rsp
    movq 80(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_32
    jmp .L6_31
.L6_32:
    leaq 384(%rbp), %rbx
    movq 16(%rbp), %r10
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
    leaq 368(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_terminate
    addq $32, %rsp
    movq %rbx, %rsi
    movq 456(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 456(%rbp), %rax
    movq 632(%rbp), %rdi
    movq 624(%rbp), %rsi
    movdqu 608(%rbp), %xmm6
    movdqu 592(%rbp), %xmm7
    movdqu 576(%rbp), %xmm8
    movdqu 560(%rbp), %xmm9
    movdqu 544(%rbp), %xmm10
    movdqu 528(%rbp), %xmm11
    movdqu 512(%rbp), %xmm12
    movdqu 496(%rbp), %xmm13
    movdqu 480(%rbp), %xmm14
    movdqu 464(%rbp), %xmm15
    movq 448(%rbp), %rbx
    movq 440(%rbp), %r12
    movq 432(%rbp), %r13
    movq 424(%rbp), %r14
    movq 416(%rbp), %r15
    leaq 640(%rbp), %rsp
    popq %rbp
    ret
.L6_33:
.L6_31:
    jmp .L6_28
.L6_27:
.L6_28:
    movq 136(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_37
    jmp .L6_45
.L6_45:
    movl %ebx, %r14d
    jmp .L6_38
.L6_37:
    movq 72(%rbp), %r10
    movswl (%r10), %ebx
    movq 168(%rbp), %r10
    movswl (%r10), %r14d
    movq 64(%rbp), %r10
    movswl (%r10), %r15d
    orl %r15d, %r14d
    movq 56(%rbp), %r10
    movswl (%r10), %r15d
    orl %r15d, %r14d
    andl %r14d, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r14d
.L6_38:
    movzbl %r14b, %ebx
    testl %ebx, %ebx
    jne .L6_34
    jmp .L6_35
.L6_34:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 208(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_Capture_pull
    addq $32, %rsp
    movq 48(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_40
    jmp .L6_39
.L6_40:
    leaq 384(%rbp), %rbx
    movq 8(%rbp), %r10
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
    leaq 368(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_terminate
    addq $32, %rsp
    movq %rbx, %rsi
    movq 456(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 456(%rbp), %rax
    movq 632(%rbp), %rdi
    movq 624(%rbp), %rsi
    movdqu 608(%rbp), %xmm6
    movdqu 592(%rbp), %xmm7
    movdqu 576(%rbp), %xmm8
    movdqu 560(%rbp), %xmm9
    movdqu 544(%rbp), %xmm10
    movdqu 528(%rbp), %xmm11
    movdqu 512(%rbp), %xmm12
    movdqu 496(%rbp), %xmm13
    movdqu 480(%rbp), %xmm14
    movdqu 464(%rbp), %xmm15
    movq 448(%rbp), %rbx
    movq 440(%rbp), %r12
    movq 432(%rbp), %r13
    movq 424(%rbp), %r14
    movq 416(%rbp), %r15
    leaq 640(%rbp), %rsp
    popq %rbp
    ret
.L6_41:
.L6_39:
    jmp .L6_36
.L6_35:
.L6_36:
    jmp .L6_7
.L6_9:
    leaq 384(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 456(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 456(%rbp), %rax
    movq 632(%rbp), %rdi
    movq 624(%rbp), %rsi
    movdqu 608(%rbp), %xmm6
    movdqu 592(%rbp), %xmm7
    movdqu 576(%rbp), %xmm8
    movdqu 560(%rbp), %xmm9
    movdqu 544(%rbp), %xmm10
    movdqu 528(%rbp), %xmm11
    movdqu 512(%rbp), %xmm12
    movdqu 496(%rbp), %xmm13
    movdqu 480(%rbp), %xmm14
    movdqu 464(%rbp), %xmm15
    movq 448(%rbp), %rbx
    movq 440(%rbp), %r12
    movq 432(%rbp), %r13
    movq 424(%rbp), %r14
    movq 416(%rbp), %r15
    leaq 640(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_process_8wait_for
lb_process_8wait_for:
    .seh_proc lb_process_8wait_for
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
    movq 328(%rbp), %rax
    movl %eax, 24(%rbp)
    leaq 20(%rbp), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq 24(%rbp), %r12
    leaq lb_c_interrupted(%rip), %r13
.L7_1:
    movq %r12, %r10
    movslq (%r10), %r14
    subq $32, %rsp
    movl %r14d, %eax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call waitpid
    addq $32, %rsp
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jge .L7_3
.L7_2:
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %r14d
    movq %r13, %r10
    movslq (%r10), %r15
    cmpl %r15d, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L7_5
.L7_4:
    leaq 40(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_23(%rip), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $3, %rax
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
    movq 120(%rbp), %rdi
    movq $40, %rdx
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
.L7_7:
    jmp .L7_6
.L7_5:
.L7_6:
    jmp .L7_1
.L7_3:
    movq %rbx, %r10
    movslq (%r10), %r12
    leaq 40(%rbp), %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 120(%rbp), %rdi
    movq $40, %rdx
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
.L7_8:
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_terminate
lb_process_terminate:
    .seh_proc lb_process_terminate
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
    movq %r14, 32(%rbp)
    .seh_savereg %r14, 32
    movq %r15, 24(%rbp)
    .seh_savereg %r15, 24
    .seh_endprologue
    movq %rcx, 256(%rbp)
    movq %rdx, 264(%rbp)
    movq %r8, 272(%rbp)
    movq %r9, 280(%rbp)
    movq 256(%rbp), %rax
    movl %eax, 8(%rbp)
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movl $9, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call kill
    addq $32, %rsp
    movl %eax, %r12d
    leaq 4(%rbp), %r12
    movl $0, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_c_interrupted(%rip), %r13
.L8_1:
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call waitpid
    addq $32, %rsp
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    setl %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L8_4
    jmp .L8_7
.L8_7:
    movl %r14d, %r15d
    jmp .L8_5
.L8_4:
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %r14d
    movq %r13, %r10
    movslq (%r10), %r15
    cmpl %r15d, %r14d
    sete %al
    movzbl %al, %r15d
.L8_5:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L8_2
    jmp .L8_3
.L8_2:
    jmp .L8_1
.L8_6:
    jmp .L8_1
.L8_3:
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
    movq 32(%rbp), %r14
    movq 24(%rbp), %r15
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_process_release
lb_process_release:
    .seh_proc lb_process_release
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
    movq %r15, 56(%rbp)
    .seh_savereg %r15, 56
    .seh_endprologue
    movq %rcx, 288(%rbp)
    movq %rdx, 296(%rbp)
    movq %r8, 304(%rbp)
    movq %r9, 312(%rbp)
    movq 288(%rbp), %r10
    leaq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 40(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L9_2
.L9_1:
    movq %rbx, %r10
    movq (%r10), %r13
    leaq 24(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r14
    leaq 8(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq %r14, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L9_5
    jmp .L9_4
.L9_5:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
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
    movq %rbx, %r11
    call *%r11
    addq $48, %rsp
.L9_4:
    jmp .L9_3
.L9_2:
.L9_3:
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
    movq 56(%rbp), %r15
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_process_exit
lb_process_exit:
    .seh_proc lb_process_exit
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
    call lb_core_exit
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

    .p2align 4
    .globl lb_process_13quote_windows
lb_process_13quote_windows:
    .seh_proc lb_process_13quote_windows
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
    movq 352(%rbp), %r10
    leaq 104(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 360(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 368(%rbp), %r10
    leaq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 72(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r13d
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 56(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L11_1:
    movq 64(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L11_4
.L11_2:
    movq 56(%rbp), %rax
    movq %rax, %r15
    addq %r14, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movzbl %r15b, %r15d
    movl $32, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L11_43
    jmp .L11_8
.L11_43:
    movl %r12d, %ebx
    jmp .L11_9
.L11_8:
    movl $9, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %ebx
.L11_9:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L11_44
    jmp .L11_10
.L11_44:
    movl %r12d, %ebx
    jmp .L11_11
.L11_10:
    movl $10, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %ebx
.L11_11:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L11_45
    jmp .L11_12
.L11_45:
    movl %r12d, %ebx
    jmp .L11_13
.L11_12:
    movl $13, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %ebx
.L11_13:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L11_46
    jmp .L11_14
.L11_46:
    movl %r12d, %ebx
    jmp .L11_15
.L11_14:
    movl $34, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %ebx
.L11_15:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L11_5
    jmp .L11_6
.L11_5:
    movl $1, %eax
    movl %eax, %r13d
    jmp .L11_7
.L11_6:
.L11_7:
.L11_3:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r14
    jmp .L11_1
.L11_4:
    movzbl %r13b, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L11_17
.L11_16:
    leaq 88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 104(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rax
    movq %rax, %r14
.L11_19:
    movq 64(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L11_22
.L11_20:
    movq 56(%rbp), %rax
    addq %r14, %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %r10
    movzbl (%r10), %eax
    movl %eax, 40(%rbp)
    movq %rbx, %r10
    movq (%r10), %r15
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    addq %r13, %r15
    movl 40(%rbp), %eax
    movzbl %al, %eax
    movl %eax, 32(%rbp)
    movl 32(%rbp), %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq %rbx, %r10
    movq %r15, (%r10)
.L11_21:
    movq $1, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r14
    jmp .L11_19
.L11_22:
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
.L11_23:
    jmp .L11_18
.L11_17:
.L11_18:
    leaq 88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    leaq 104(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 24(%rbp), %rcx
    addq %rcx, %r12
    movl $34, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $0, %rax
    movq %rax, %r12
    movq $0, %rax
    movq %rax, 8(%rbp)
.L11_24:
    movq 8(%rbp), %rax
    movq 64(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L11_27
.L11_25:
    movq 56(%rbp), %rax
    movq 8(%rbp), %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movzbl %r14b, %r14d
    movl $92, %ecx
    cmpl %ecx, %r14d
    jne .L11_29
.L11_28:
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    jmp .L11_26
.L11_31:
    jmp .L11_30
.L11_29:
.L11_30:
    movl $34, %ecx
    cmpl %ecx, %r14d
    jne .L11_33
.L11_32:
    movq %r12, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    jmp .L11_34
.L11_33:
    movq %r12, %r13
.L11_34:
    movq $0, %rax
    movq %rax, %r12
.L11_35:
    cmpq %r13, %r12
    jae .L11_38
.L11_36:
    movq %rbx, %r10
    movq (%r10), %r15
    movq 16(%rbp), %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 24(%rbp), %rax
    movq %r15, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movl $92, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq %rbx, %r10
    movq %r15, (%r10)
.L11_37:
    movq $1, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r12
    jmp .L11_35
.L11_38:
    movq %rbx, %r10
    movq (%r10), %r12
    movq 16(%rbp), %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 24(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movb %r14b, (%r10)
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $0, %rax
    movq %rax, %r13
.L11_26:
    movq 8(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r13, %r12
    movq %r14, %rax
    movq %rax, 8(%rbp)
    jmp .L11_24
.L11_27:
    movq %r12, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq $0, %rax
    movq %rax, %r14
.L11_39:
    cmpq %r13, %r14
    jae .L11_42
.L11_40:
    movq %rbx, %r10
    movq (%r10), %r12
    movq 16(%rbp), %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 24(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $92, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
.L11_41:
    movq $1, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r14
    jmp .L11_39
.L11_42:
    movq %rbx, %r10
    movq (%r10), %r12
    movq 16(%rbp), %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 24(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $34, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
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
    .seh_endproc

    .p2align 4
    .globl lb_process_12inherit_file
lb_process_12inherit_file:
    .seh_proc lb_process_12inherit_file
    pushq %rbp
    .seh_pushreg %rbp
    subq $320, %rsp
    .seh_stackalloc 320
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 136(%rbp)
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
    movq %rbx, 128(%rbp)
    .seh_savereg %rbx, 128
    movq %r12, 120(%rbp)
    .seh_savereg %r12, 120
    movq %r13, 112(%rbp)
    .seh_savereg %r13, 112
    movq %r14, 104(%rbp)
    .seh_savereg %r14, 104
    .seh_endprologue
    movq %rcx, 336(%rbp)
    movq %rdx, 344(%rbp)
    movq %r8, 352(%rbp)
    movq %r9, 360(%rbp)
    movq 344(%rbp), %rax
    movq %rax, 48(%rbp)
    leaq 40(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    call GetCurrentProcess
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L12_1
    jmp .L12_2
.L12_2:
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_41(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L12_1:
    leaq 48(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _fileno
    addq $32, %rsp
    movl %eax, %r13d
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _get_osfhandle
    addq $32, %rsp
    movq %rax, %r13
    subq $64, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq %rbx, %rax
    movq %rax, 24(%rsp)
    movl $0, %eax
    movq %rax, 32(%rsp)
    movl $1, %eax
    movq %rax, 40(%rsp)
    movl $2, %eax
    movq %rax, 48(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call DuplicateHandle
    addq $64, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L12_4
.L12_3:
    leaq 64(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_43(%rip), %r13
    leaq 24(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $37, %rax
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
    movq 136(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 136(%rbp), %rax
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
    movq 128(%rbp), %rbx
    movq 120(%rbp), %r12
    movq 112(%rbp), %r13
    movq 104(%rbp), %r14
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L12_6:
    jmp .L12_5
.L12_4:
.L12_5:
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L12_7
    jmp .L12_8
.L12_7:
    jmp .L12_9
.L12_8:
    leaq 64(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_44(%rip), %r13
    leaq 8(%rbp), %r14
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 136(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 136(%rbp), %rax
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
    movq 128(%rbp), %rbx
    movq 120(%rbp), %r12
    movq 112(%rbp), %r13
    movq 104(%rbp), %r14
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L12_10:
.L12_9:
    leaq 64(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 136(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 136(%rbp), %rax
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
    movq 128(%rbp), %rbx
    movq 120(%rbp), %r12
    movq 112(%rbp), %r13
    movq 104(%rbp), %r14
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L12_11:
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_15capture_windows
lb_process_15capture_windows:
    .seh_proc lb_process_15capture_windows
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
    movq %rax, 208(%rbp)
    leaq 208(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 32(%rbp)
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movl $2, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call _fseeki64
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L13_2
.L13_1:
    leaq 224(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_46(%rip), %r13
    leaq 192(%rbp), %r14
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
    movq 312(%rbp), %rdi
    movq $48, %rdx
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
.L13_4:
    jmp .L13_3
.L13_2:
.L13_3:
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _ftelli64
    addq $32, %rsp
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setl %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L13_30
    jmp .L13_8
.L13_30:
    movl %r13d, %r14d
    jmp .L13_9
.L13_8:
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call _fseeki64
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L13_9:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L13_5
    jmp .L13_6
.L13_5:
    leaq 224(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_47(%rip), %r13
    leaq 176(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 312(%rbp), %rdi
    movq $48, %rdx
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
.L13_10:
    jmp .L13_7
.L13_6:
.L13_7:
    leaq 160(%rbp), %rax
    movq %rax, 16(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 8(%rbp)
    leaq 112(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 24(%rbp), %rax
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %rax
    jbe .L13_12
.L13_11:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $208273409, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %r14
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq $16, %rcx
    movq %r13, %r12
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
    jmp .L13_13
.L13_12:
    movq 8(%rbp), %r10
    movq (%r10), %r12
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L13_14
    jmp .L13_15
.L13_15:
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L13_14:
    movq %r13, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 24(%rbp), %rax
    movq %rax, 16(%rsp)
    movq $1, %rax
    movq %rax, 24(%rsp)
    leaq 88(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r14, %r11
    call *%r11
    addq $32, %rsp
    leaq 88(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq 24(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setne %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %ecx
    movl %r15d, %r14d
    andl %ecx, %r14d
    testl %r14d, %r14d
    jne .L13_16
    jmp .L13_17
.L13_16:
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
    jmp .L13_13
.L13_17:
    movq %rbx, %r10
    movq (%r10), %r12
    movq 0(%rbp), %r10
    movq %r12, (%r10)
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 24(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L13_13:
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_19
    jmp .L13_18
.L13_19:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 224(%rbp), %r12
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
    movq 312(%rbp), %rdi
    movq $48, %rdx
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
.L13_20:
.L13_18:
    movq 0(%rbp), %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 24(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setg %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L13_24
    jmp .L13_31
.L13_31:
    movl %ebx, %r12d
    jmp .L13_25
.L13_24:
    movq 16(%rbp), %r10
    movq (%r10), %rbx
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq $1, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq 32(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call fread
    addq $32, %rsp
    movq %rax, %rbx
    cmpq %rbx, %r12
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L13_25:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L13_21
    jmp .L13_22
.L13_21:
    leaq 72(%rbp), %rbx
    movq 16(%rbp), %r10
    movq (%r10), %r12
    movq 16(%rbp), %rax
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
    movq 8(%rbp), %r10
    movq (%r10), %r12
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L13_27
    jmp .L13_26
.L13_27:
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
.L13_26:
    leaq 224(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_47(%rip), %r13
    leaq 56(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 312(%rbp), %rdi
    movq $48, %rdx
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
.L13_28:
    jmp .L13_23
.L13_22:
.L13_23:
    movq 16(%rbp), %r10
    movq (%r10), %rbx
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 40(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq 224(%rbp), %rbx
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
    movq 312(%rbp), %rdi
    movq $48, %rdx
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
.L13_29:
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_17temporary_windows
lb_process_17temporary_windows:
    .seh_proc lb_process_17temporary_windows
    pushq %rbp
    .seh_pushreg %rbp
    movq $66144, %rax
    call ___chkstk_ms
    subq $66144, %rsp
    .seh_stackalloc 66144
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 65960(%rbp)
    movq %rdi, 66136(%rbp)
    .seh_savereg %rdi, 66136
    movq %rsi, 66128(%rbp)
    .seh_savereg %rsi, 66128
    movdqu %xmm6, 66112(%rbp)
    .seh_savexmm %xmm6, 66112
    movdqu %xmm7, 66096(%rbp)
    .seh_savexmm %xmm7, 66096
    movdqu %xmm8, 66080(%rbp)
    .seh_savexmm %xmm8, 66080
    movdqu %xmm9, 66064(%rbp)
    .seh_savexmm %xmm9, 66064
    movdqu %xmm10, 66048(%rbp)
    .seh_savexmm %xmm10, 66048
    movdqu %xmm11, 66032(%rbp)
    .seh_savexmm %xmm11, 66032
    movdqu %xmm12, 66016(%rbp)
    .seh_savexmm %xmm12, 66016
    movdqu %xmm13, 66000(%rbp)
    .seh_savexmm %xmm13, 66000
    movdqu %xmm14, 65984(%rbp)
    .seh_savexmm %xmm14, 65984
    movdqu %xmm15, 65968(%rbp)
    .seh_savexmm %xmm15, 65968
    movq %rbx, 65952(%rbp)
    .seh_savereg %rbx, 65952
    movq %r12, 65944(%rbp)
    .seh_savereg %r12, 65944
    movq %r13, 65936(%rbp)
    .seh_savereg %r13, 65936
    movq %r14, 65928(%rbp)
    .seh_savereg %r14, 65928
    movq %r15, 65920(%rbp)
    .seh_savereg %r15, 65920
    .seh_endprologue
    movq %rcx, 66160(%rbp)
    movq %rdx, 66168(%rbp)
    movq %r8, 66176(%rbp)
    movq %r9, 66184(%rbp)
    leaq 344(%rbp), %rbx
    movq %rbx, %rdi
    xorl %esi, %esi
    movq $65536, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memset
    addq $32, %rsp
    subq $32, %rsp
    movl $32768, %eax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call GetTempPathW
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L14_43
    jmp .L14_4
.L14_43:
    movl %r13d, %r14d
    jmp .L14_5
.L14_4:
    movl %r12d, %r13d
    movq $33, %rcx
    addq %rcx, %r13
    movq $32768, %rcx
    cmpq %rcx, %r13
    setae %al
    movzbl %al, %r14d
.L14_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L14_1
    jmp .L14_2
.L14_1:
    leaq 65880(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_53(%rip), %r13
    leaq 328(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $44, %rax
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
    movq 65960(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 65960(%rbp), %rax
    movq 66136(%rbp), %rdi
    movq 66128(%rbp), %rsi
    movdqu 66112(%rbp), %xmm6
    movdqu 66096(%rbp), %xmm7
    movdqu 66080(%rbp), %xmm8
    movdqu 66064(%rbp), %xmm9
    movdqu 66048(%rbp), %xmm10
    movdqu 66032(%rbp), %xmm11
    movdqu 66016(%rbp), %xmm12
    movdqu 66000(%rbp), %xmm13
    movdqu 65984(%rbp), %xmm14
    movdqu 65968(%rbp), %xmm15
    movq 65952(%rbp), %rbx
    movq 65944(%rbp), %r12
    movq 65936(%rbp), %r13
    movq 65928(%rbp), %r14
    movq 65920(%rbp), %r15
    leaq 66144(%rbp), %rsp
    popq %rbp
    ret
.L14_2:
.L14_3:
    leaq 312(%rbp), %rax
    movq %rax, 160(%rbp)
    leaq 296(%rbp), %rax
    movq %rax, 152(%rbp)
    movq 152(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 144(%rbp)
    leaq 264(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 136(%rbp)
    leaq 248(%rbp), %rax
    movq %rax, 128(%rbp)
    leaq .Ltext_54(%rip), %rax
    movq %rax, 120(%rbp)
    leaq 232(%rbp), %rax
    movq %rax, 112(%rbp)
    movq 112(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 104(%rbp)
    movl %r12d, %eax
    movq %rax, 96(%rbp)
    movl %r12d, %eax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq $0, %rax
    movq %rax, 24(%rbp)
.L14_7:
    movq 24(%rbp), %rax
    movq $128, %rcx
    cmpq %rcx, %rax
    jge .L14_10
.L14_8:
    movq 160(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq 160(%rbp), %rax
    movq 152(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq 144(%rbp), %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq 152(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 264(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_os_12random_bytes
    addq $48, %rsp
    movq 136(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L14_12
    jmp .L14_11
.L14_12:
    leaq 65880(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 16(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 65960(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 65960(%rbp), %rax
    movq 66136(%rbp), %rdi
    movq 66128(%rbp), %rsi
    movdqu 66112(%rbp), %xmm6
    movdqu 66096(%rbp), %xmm7
    movdqu 66080(%rbp), %xmm8
    movdqu 66064(%rbp), %xmm9
    movdqu 66048(%rbp), %xmm10
    movdqu 66032(%rbp), %xmm11
    movdqu 66016(%rbp), %xmm12
    movdqu 66000(%rbp), %xmm13
    movdqu 65984(%rbp), %xmm14
    movdqu 65968(%rbp), %xmm15
    movq 65952(%rbp), %rbx
    movq 65944(%rbp), %r12
    movq 65936(%rbp), %r13
    movq 65928(%rbp), %r14
    movq 65920(%rbp), %r15
    leaq 66144(%rbp), %rsp
    popq %rbp
    ret
.L14_11:
    movq 120(%rbp), %rax
    movq 112(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq 104(%rbp), %r10
    movq %rax, (%r10)
    movq 112(%rbp), %r10
    movq 128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rax, 8(%rbp)
.L14_14:
    movq 8(%rbp), %rax
    movq $16, %rcx
    cmpq %rcx, %rax
    jae .L14_17
.L14_15:
    movq 8(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, 88(%rbp)
    movq 96(%rbp), %rax
    movq 88(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 80(%rbp)
    movq 80(%rbp), %rax
    movq $32768, %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 80(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq 160(%rbp), %rax
    movq 8(%rbp), %rcx
    addq %rcx, %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %r10
    movzbl (%r10), %r15d
.L14_19:
    movl $4, %ecx
    movl %r15d, %r13d
    shrl %cl, %r13d
    movzbl %r13b, %r13d
    movl %r13d, %r13d
    movq $16, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 120(%rbp), %rax
    movq %r13, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl %r13d, %r13d
    movzwl %r13w, %r13d
    movq %r14, %r10
    movw %r13w, (%r10)
    movq 80(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq $32768, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_57(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $2, %rcx
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq 64(%rbp), %r10
    movzbl (%r10), %r12d
    movl $15, %ecx
    andl %ecx, %r12d
    movl %r12d, %r12d
    movq 120(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl %r12d, %r12d
    movzwl %r12w, %r12d
    movq %r13, %r10
    movw %r12w, (%r10)
.L14_16:
    movq 8(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %rax
    movq %rax, 8(%rbp)
    jmp .L14_14
.L14_17:
    movq 48(%rbp), %rax
    movq $32768, %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_58(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl $0, %eax
    movq 32(%rbp), %r10
    movw %ax, (%r10)
    subq $64, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $3221225472, %eax
    movq %rax, 8(%rsp)
    movl $7, %eax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    movl $1, %eax
    movq %rax, 32(%rsp)
    movl $67109120, %eax
    movq %rax, 40(%rsp)
    movq $0, %rax
    movq %rax, 48(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call CreateFileW
    addq $64, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L14_20
    jmp .L14_21
.L14_21:
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_41(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L14_20:
    movq $-1, %rcx
    cmpq %rcx, %r12
    jne .L14_23
.L14_22:
    subq $32, %rsp
    call GetLastError
    addq $32, %rsp
    movl %eax, %r12d
    movl $80, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L14_44
    jmp .L14_28
.L14_44:
    movl %r12d, %r13d
    jmp .L14_29
.L14_28:
    subq $32, %rsp
    call GetLastError
    addq $32, %rsp
    movl %eax, %r12d
    movl $183, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L14_29:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L14_25
    jmp .L14_26
.L14_25:
    jmp .L14_9
.L14_26:
.L14_27:
    leaq 65880(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_60(%rip), %r13
    leaq 216(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $41, %rax
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
    movq 65960(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 65960(%rbp), %rax
    movq 66136(%rbp), %rdi
    movq 66128(%rbp), %rsi
    movdqu 66112(%rbp), %xmm6
    movdqu 66096(%rbp), %xmm7
    movdqu 66080(%rbp), %xmm8
    movdqu 66064(%rbp), %xmm9
    movdqu 66048(%rbp), %xmm10
    movdqu 66032(%rbp), %xmm11
    movdqu 66016(%rbp), %xmm12
    movdqu 66000(%rbp), %xmm13
    movdqu 65984(%rbp), %xmm14
    movdqu 65968(%rbp), %xmm15
    movq 65952(%rbp), %rbx
    movq 65944(%rbp), %r12
    movq 65936(%rbp), %r13
    movq 65928(%rbp), %r14
    movq 65920(%rbp), %r15
    leaq 66144(%rbp), %rsp
    popq %rbp
    ret
.L14_23:
.L14_24:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movl $32898, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call _open_osfhandle
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jge .L14_33
.L14_32:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    leaq 65880(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    leaq lb_process_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_61(%rip), %r14
    leaq 200(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $47, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 65960(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 65960(%rbp), %rax
    movq 66136(%rbp), %rdi
    movq 66128(%rbp), %rsi
    movdqu 66112(%rbp), %xmm6
    movdqu 66096(%rbp), %xmm7
    movdqu 66080(%rbp), %xmm8
    movdqu 66064(%rbp), %xmm9
    movdqu 66048(%rbp), %xmm10
    movdqu 66032(%rbp), %xmm11
    movdqu 66016(%rbp), %xmm12
    movdqu 66000(%rbp), %xmm13
    movdqu 65984(%rbp), %xmm14
    movdqu 65968(%rbp), %xmm15
    movq 65952(%rbp), %rbx
    movq 65944(%rbp), %r12
    movq 65936(%rbp), %r13
    movq 65928(%rbp), %r14
    movq 65920(%rbp), %r15
    leaq 66144(%rbp), %rsp
    popq %rbp
    ret
.L14_33:
.L14_34:
    leaq .Ltext_62(%rip), %r12
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call _fdopen
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L14_39
    jmp .L14_37
.L14_39:
.L14_36:
    leaq 65880(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 65960(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 65960(%rbp), %rax
    movq 66136(%rbp), %rdi
    movq 66128(%rbp), %rsi
    movdqu 66112(%rbp), %xmm6
    movdqu 66096(%rbp), %xmm7
    movdqu 66080(%rbp), %xmm8
    movdqu 66064(%rbp), %xmm9
    movdqu 66048(%rbp), %xmm10
    movdqu 66032(%rbp), %xmm11
    movdqu 66016(%rbp), %xmm12
    movdqu 66000(%rbp), %xmm13
    movdqu 65984(%rbp), %xmm14
    movdqu 65968(%rbp), %xmm15
    movq 65952(%rbp), %rbx
    movq 65944(%rbp), %r12
    movq 65936(%rbp), %r13
    movq 65928(%rbp), %r14
    movq 65920(%rbp), %r15
    leaq 66144(%rbp), %rsp
    popq %rbp
    ret
.L14_37:
.L14_38:
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _close
    addq $32, %rsp
    movl %eax, %ebx
    leaq 65880(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    leaq lb_process_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_63(%rip), %r14
    leaq 184(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $43, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 65960(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 65960(%rbp), %rax
    movq 66136(%rbp), %rdi
    movq 66128(%rbp), %rsi
    movdqu 66112(%rbp), %xmm6
    movdqu 66096(%rbp), %xmm7
    movdqu 66080(%rbp), %xmm8
    movdqu 66064(%rbp), %xmm9
    movdqu 66048(%rbp), %xmm10
    movdqu 66032(%rbp), %xmm11
    movdqu 66016(%rbp), %xmm12
    movdqu 66000(%rbp), %xmm13
    movdqu 65984(%rbp), %xmm14
    movdqu 65968(%rbp), %xmm15
    movq 65952(%rbp), %rbx
    movq 65944(%rbp), %r12
    movq 65936(%rbp), %r13
    movq 65928(%rbp), %r14
    movq 65920(%rbp), %r15
    leaq 66144(%rbp), %rsp
    popq %rbp
    ret
.L14_9:
    movq 24(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %rax
    movq %rax, 24(%rbp)
    jmp .L14_7
.L14_10:
    leaq 65880(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_64(%rip), %r13
    leaq 168(%rbp), %r14
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
    movq 65960(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 65960(%rbp), %rax
    movq 66136(%rbp), %rdi
    movq 66128(%rbp), %rsi
    movdqu 66112(%rbp), %xmm6
    movdqu 66096(%rbp), %xmm7
    movdqu 66080(%rbp), %xmm8
    movdqu 66064(%rbp), %xmm9
    movdqu 66048(%rbp), %xmm10
    movdqu 66032(%rbp), %xmm11
    movdqu 66016(%rbp), %xmm12
    movdqu 66000(%rbp), %xmm13
    movdqu 65984(%rbp), %xmm14
    movdqu 65968(%rbp), %xmm15
    movq 65952(%rbp), %rbx
    movq 65944(%rbp), %r12
    movq 65936(%rbp), %r13
    movq 65928(%rbp), %r14
    movq 65920(%rbp), %r15
    leaq 66144(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_process_11run_windows
lb_process_11run_windows:
    .seh_proc lb_process_11run_windows
    pushq %rbp
    .seh_pushreg %rbp
    subq $3296, %rsp
    .seh_stackalloc 3296
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 3112(%rbp)
    movq %rdi, 3288(%rbp)
    .seh_savereg %rdi, 3288
    movq %rsi, 3280(%rbp)
    .seh_savereg %rsi, 3280
    movdqu %xmm6, 3264(%rbp)
    .seh_savexmm %xmm6, 3264
    movdqu %xmm7, 3248(%rbp)
    .seh_savexmm %xmm7, 3248
    movdqu %xmm8, 3232(%rbp)
    .seh_savexmm %xmm8, 3232
    movdqu %xmm9, 3216(%rbp)
    .seh_savexmm %xmm9, 3216
    movdqu %xmm10, 3200(%rbp)
    .seh_savexmm %xmm10, 3200
    movdqu %xmm11, 3184(%rbp)
    .seh_savexmm %xmm11, 3184
    movdqu %xmm12, 3168(%rbp)
    .seh_savexmm %xmm12, 3168
    movdqu %xmm13, 3152(%rbp)
    .seh_savexmm %xmm13, 3152
    movdqu %xmm14, 3136(%rbp)
    .seh_savexmm %xmm14, 3136
    movdqu %xmm15, 3120(%rbp)
    .seh_savexmm %xmm15, 3120
    movq %rbx, 3104(%rbp)
    .seh_savereg %rbx, 3104
    movq %r12, 3096(%rbp)
    .seh_savereg %r12, 3096
    movq %r13, 3088(%rbp)
    .seh_savereg %r13, 3088
    movq %r14, 3080(%rbp)
    .seh_savereg %r14, 3080
    movq %r15, 3072(%rbp)
    .seh_savereg %r15, 3072
    .seh_endprologue
    movq %rcx, 3312(%rbp)
    movq %rdx, 3320(%rbp)
    movq %r8, 3328(%rbp)
    movq %r9, 3336(%rbp)
    movq 3320(%rbp), %rax
    movq %rax, 2984(%rbp)
    movq 3328(%rbp), %r10
    leaq 2968(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 3336(%rbp), %rax
    movq %rax, 2952(%rbp)
    movq 3344(%rbp), %r10
    leaq 2928(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 3352(%rbp), %rax
    movq %rax, 2912(%rbp)
    leaq 2896(%rbp), %rax
    movq %rax, 936(%rbp)
    leaq 2984(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r13
    leaq 2880(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq %r14, %r10
    movq 936(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 2872(%rbp), %r12
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq $2, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq %r12, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qmul_u
    addq $32, %rsp
    movl %eax, %r13d
    leaq 2856(%rbp), %r14
    movq %r12, %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movb %r13b, (%r10)
    movq %r14, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L15_1
    jmp .L15_2
.L15_1:
    jmp .L15_3
.L15_2:
    leaq 3000(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_66(%rip), %r13
    leaq 2840(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $31, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 3112(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3112(%rbp), %rax
    movq 3288(%rbp), %rdi
    movq 3280(%rbp), %rsi
    movdqu 3264(%rbp), %xmm6
    movdqu 3248(%rbp), %xmm7
    movdqu 3232(%rbp), %xmm8
    movdqu 3216(%rbp), %xmm9
    movdqu 3200(%rbp), %xmm10
    movdqu 3184(%rbp), %xmm11
    movdqu 3168(%rbp), %xmm12
    movdqu 3152(%rbp), %xmm13
    movdqu 3136(%rbp), %xmm14
    movdqu 3120(%rbp), %xmm15
    movq 3104(%rbp), %rbx
    movq 3096(%rbp), %r12
    movq 3088(%rbp), %r13
    movq 3080(%rbp), %r14
    movq 3072(%rbp), %r15
    leaq 3296(%rbp), %rsp
    popq %rbp
    ret
.L15_4:
.L15_3:
    leaq 2832(%rbp), %r13
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq $4, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %r14d
    leaq 2816(%rbp), %r15
    movq %r13, %r10
    movq (%r10), %r13
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movb %r14b, (%r10)
    movq %r15, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L15_5
    jmp .L15_6
.L15_5:
    jmp .L15_7
.L15_6:
    leaq 3000(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_66(%rip), %r13
    leaq 2800(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $31, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 3112(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3112(%rbp), %rax
    movq 3288(%rbp), %rdi
    movq 3280(%rbp), %rsi
    movdqu 3264(%rbp), %xmm6
    movdqu 3248(%rbp), %xmm7
    movdqu 3232(%rbp), %xmm8
    movdqu 3216(%rbp), %xmm9
    movdqu 3200(%rbp), %xmm10
    movdqu 3184(%rbp), %xmm11
    movdqu 3168(%rbp), %xmm12
    movdqu 3152(%rbp), %xmm13
    movdqu 3136(%rbp), %xmm14
    movdqu 3120(%rbp), %xmm15
    movq 3104(%rbp), %rbx
    movq 3096(%rbp), %r12
    movq 3088(%rbp), %r13
    movq 3080(%rbp), %r14
    movq 3072(%rbp), %r15
    leaq 3296(%rbp), %rsp
    popq %rbp
    ret
.L15_8:
.L15_7:
    leaq 2968(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 928(%rbp)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 920(%rbp)
    leaq 2784(%rbp), %rax
    movq %rax, 912(%rbp)
    movq 912(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 904(%rbp)
    leaq 2776(%rbp), %rax
    movq %rax, 896(%rbp)
    leaq 2760(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 888(%rbp)
    leaq 2736(%rbp), %rax
    movq %rax, 880(%rbp)
    leaq 2720(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 872(%rbp)
    leaq 2696(%rbp), %rax
    movq %rax, 864(%rbp)
    leaq 2680(%rbp), %r15
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, 856(%rbp)
    movq %r13, %rax
    movq %rax, 72(%rbp)
    movq $0, %rax
    movq %rax, %rbx
.L15_9:
    movq 920(%rbp), %rcx
    cmpq %rcx, %rbx
    jae .L15_12
.L15_10:
    movq $8, %rcx
    movq %rbx, %r13
    imulq %rcx, %r13
    movq 928(%rbp), %rax
    movq %r13, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r12
    movq 912(%rbp), %r10
    movq %r13, (%r10)
    movq 904(%rbp), %r10
    movq %r12, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq $2, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq 896(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qmul_u
    addq $32, %rsp
    movl %eax, %r12d
    movq 896(%rbp), %r10
    movq (%r10), %r13
    movq 8(%rbp), %r10
    movq %r13, (%r10)
    movq 888(%rbp), %r10
    movb %r12b, (%r10)
    movq 888(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L15_13
    jmp .L15_14
.L15_13:
    jmp .L15_15
.L15_14:
    leaq 3000(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_66(%rip), %r13
    leaq 2744(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $31, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 3112(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3112(%rbp), %rax
    movq 3288(%rbp), %rdi
    movq 3280(%rbp), %rsi
    movdqu 3264(%rbp), %xmm6
    movdqu 3248(%rbp), %xmm7
    movdqu 3232(%rbp), %xmm8
    movdqu 3216(%rbp), %xmm9
    movdqu 3200(%rbp), %xmm10
    movdqu 3184(%rbp), %xmm11
    movdqu 3168(%rbp), %xmm12
    movdqu 3152(%rbp), %xmm13
    movdqu 3136(%rbp), %xmm14
    movdqu 3120(%rbp), %xmm15
    movq 3104(%rbp), %rbx
    movq 3096(%rbp), %r12
    movq 3088(%rbp), %r13
    movq 3080(%rbp), %r14
    movq 3072(%rbp), %r15
    leaq 3296(%rbp), %rsp
    popq %rbp
    ret
.L15_16:
.L15_15:
    subq $32, %rsp
    movq 72(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq 880(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %r12d
    movq 880(%rbp), %r10
    movq (%r10), %r14
    movq 0(%rbp), %r10
    movq %r14, (%r10)
    movq 872(%rbp), %r10
    movb %r12b, (%r10)
    movq 872(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L15_17
    jmp .L15_18
.L15_17:
    jmp .L15_19
.L15_18:
    leaq 3000(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_66(%rip), %r13
    leaq 2704(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $31, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 3112(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3112(%rbp), %rax
    movq 3288(%rbp), %rdi
    movq 3280(%rbp), %rsi
    movdqu 3264(%rbp), %xmm6
    movdqu 3248(%rbp), %xmm7
    movdqu 3232(%rbp), %xmm8
    movdqu 3216(%rbp), %xmm9
    movdqu 3200(%rbp), %xmm10
    movdqu 3184(%rbp), %xmm11
    movdqu 3168(%rbp), %xmm12
    movdqu 3152(%rbp), %xmm13
    movdqu 3136(%rbp), %xmm14
    movdqu 3120(%rbp), %xmm15
    movq 3104(%rbp), %rbx
    movq 3096(%rbp), %r12
    movq 3088(%rbp), %r13
    movq 3080(%rbp), %r14
    movq 3072(%rbp), %r15
    leaq 3296(%rbp), %rsp
    popq %rbp
    ret
.L15_20:
.L15_19:
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq $3, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq 864(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %r12d
    movq 864(%rbp), %r10
    movq (%r10), %r13
    movq %r15, %r10
    movq %r13, (%r10)
    movq 856(%rbp), %r10
    movb %r12b, (%r10)
    movq 856(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L15_21
    jmp .L15_22
.L15_21:
    jmp .L15_23
.L15_22:
    leaq 3000(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_66(%rip), %r13
    leaq 2664(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $31, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 3112(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3112(%rbp), %rax
    movq 3288(%rbp), %rdi
    movq 3280(%rbp), %rsi
    movdqu 3264(%rbp), %xmm6
    movdqu 3248(%rbp), %xmm7
    movdqu 3232(%rbp), %xmm8
    movdqu 3216(%rbp), %xmm9
    movdqu 3200(%rbp), %xmm10
    movdqu 3184(%rbp), %xmm11
    movdqu 3168(%rbp), %xmm12
    movdqu 3152(%rbp), %xmm13
    movdqu 3136(%rbp), %xmm14
    movdqu 3120(%rbp), %xmm15
    movq 3104(%rbp), %rbx
    movq 3096(%rbp), %r12
    movq 3088(%rbp), %r13
    movq 3080(%rbp), %r14
    movq 3072(%rbp), %r15
    leaq 3296(%rbp), %rsp
    popq %rbp
    ret
.L15_24:
.L15_23:
.L15_11:
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %rax
    movq %rax, 72(%rbp)
    movq %r12, %rbx
    jmp .L15_9
.L15_12:
    leaq 2648(%rbp), %rax
    movq %rax, 64(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 56(%rbp)
    leaq 2600(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 72(%rbp), %rax
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %rax
    jbe .L15_26
.L15_25:
    movq 48(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %r15
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 48(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L15_27
.L15_26:
    movq 56(%rbp), %r10
    movq (%r10), %rbx
    movq 56(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L15_28
    jmp .L15_29
.L15_29:
    leaq .Ltext_67(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L15_28:
    movq %r12, %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 72(%rbp), %rax
    movq %rax, 16(%rsp)
    movq $1, %rax
    movq %rax, 24(%rsp)
    leaq 2576(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r15, %r11
    call *%r11
    addq $32, %rsp
    leaq 2576(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movq 72(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setne %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    andl %r15d, %r13d
    testl %r13d, %r13d
    jne .L15_30
    jmp .L15_31
.L15_30:
    movq 48(%rbp), %rax
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
    movq 48(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L15_27
.L15_31:
    movq %r14, %r10
    movq (%r10), %rbx
    movq 48(%rbp), %r10
    movq %rbx, (%r10)
    movq 48(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 72(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 48(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L15_27:
    movq 48(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L15_33
    jmp .L15_32
.L15_33:
    movq 48(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 3000(%rbp), %r12
    movq $40, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $64, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 3112(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3112(%rbp), %rax
    movq 3288(%rbp), %rdi
    movq 3280(%rbp), %rsi
    movdqu 3264(%rbp), %xmm6
    movdqu 3248(%rbp), %xmm7
    movdqu 3232(%rbp), %xmm8
    movdqu 3216(%rbp), %xmm9
    movdqu 3200(%rbp), %xmm10
    movdqu 3184(%rbp), %xmm11
    movdqu 3168(%rbp), %xmm12
    movdqu 3152(%rbp), %xmm13
    movdqu 3136(%rbp), %xmm14
    movdqu 3120(%rbp), %xmm15
    movq 3104(%rbp), %rbx
    movq 3096(%rbp), %r12
    movq 3088(%rbp), %r13
    movq 3080(%rbp), %r14
    movq 3072(%rbp), %r15
    leaq 3296(%rbp), %rsp
    popq %rbp
    ret
.L15_34:
.L15_32:
    movq 48(%rbp), %r10
    movq 64(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 2568(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq 64(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 936(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_process_13quote_windows
    addq $64, %rsp
    movq 64(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    leaq 2552(%rbp), %rax
    movq %rax, 816(%rbp)
    movq 816(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 808(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L15_35:
    movq 920(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L15_38
.L15_36:
    movq $8, %rcx
    movq %r15, %rax
    imulq %rcx, %rax
    movq %rax, 848(%rbp)
    movq 928(%rbp), %rax
    movq 848(%rbp), %rcx
    addq %rcx, %rax
    movq %rax, 840(%rbp)
    movq 840(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 832(%rbp)
    movq %rbx, %r10
    movq (%r10), %r13
    movq 64(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 824(%rbp)
    movq %r12, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_68(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 824(%rbp), %rcx
    addq %rcx, %r13
    movl $32, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_69(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %rbx, %r10
    movq %r13, (%r10)
    subq $32, %rsp
    movq 832(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r13
    movq 832(%rbp), %rax
    movq 816(%rbp), %r10
    movq %rax, (%r10)
    movq 808(%rbp), %r10
    movq %r13, (%r10)
    subq $64, %rsp
    movq 64(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 816(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_process_13quote_windows
    addq $64, %rsp
.L15_37:
    movq $1, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r15
    jmp .L15_35
.L15_38:
    movq %rbx, %r10
    movq (%r10), %r12
    movq 64(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 800(%rbp)
    movq 64(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 792(%rbp)
    movq 792(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r12
    jb 1f
    leaq .Ltext_70(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 800(%rbp), %rcx
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 2536(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 64(%rbp), %r10
    movq (%r10), %r15
    movq 792(%rbp), %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq (%r10), %r13
    movq $1, %rcx
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_71(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_71(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r13, %rax
    jbe .L15_39
.L15_40:
    leaq .Ltext_71(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L15_39:
    leaq 2520(%rbp), %rax
    movq %rax, 784(%rbp)
    movq 784(%rbp), %r10
    movq %r15, (%r10)
    movq 784(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 776(%rbp)
    movq 776(%rbp), %r10
    movq %r13, (%r10)
    leaq 2504(%rbp), %rax
    movq %rax, 768(%rbp)
    movq 768(%rbp), %r10
    movq %r15, (%r10)
    movq 768(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 760(%rbp)
    movq 760(%rbp), %r10
    movq %r13, (%r10)
    leaq lb_process_failed(%rip), %rax
    movq %rax, 752(%rbp)
    movq 752(%rbp), %r10
    movl (%r10), %r12d
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movl %r12d, %eax
    movq %rax, 16(%rsp)
    leaq 2456(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_12windows_text_wide
    addq $32, %rsp
    leaq 2456(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L15_42
    jmp .L15_41
.L15_42:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq 3000(%rbp), %rax
    movq %rax, 744(%rbp)
    movq 744(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 744(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 2440(%rbp), %r12
    movq 64(%rbp), %r10
    movq (%r10), %r15
    movq 792(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r13
    movq 56(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L15_44
    jmp .L15_43
.L15_44:
    movq $16, %rcx
    movq %r15, %rbx
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
.L15_43:
    movq 744(%rbp), %rsi
    movq 3112(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3112(%rbp), %rax
    movq 3288(%rbp), %rdi
    movq 3280(%rbp), %rsi
    movdqu 3264(%rbp), %xmm6
    movdqu 3248(%rbp), %xmm7
    movdqu 3232(%rbp), %xmm8
    movdqu 3216(%rbp), %xmm9
    movdqu 3200(%rbp), %xmm10
    movdqu 3184(%rbp), %xmm11
    movdqu 3168(%rbp), %xmm12
    movdqu 3152(%rbp), %xmm13
    movdqu 3136(%rbp), %xmm14
    movdqu 3120(%rbp), %xmm15
    movq 3104(%rbp), %rbx
    movq 3096(%rbp), %r12
    movq 3088(%rbp), %r13
    movq 3080(%rbp), %r14
    movq 3072(%rbp), %r15
    leaq 3296(%rbp), %rsp
    popq %rbp
    ret
.L15_45:
.L15_41:
    movq %rbx, %r10
    movq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 40(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 736(%rbp)
    movq 736(%rbp), %rax
    movq $32768, %rcx
    cmpq %rcx, %rax
    jbe .L15_47
.L15_46:
    leaq 3000(%rbp), %rax
    movq %rax, 728(%rbp)
    movq 728(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq 752(%rbp), %r10
    movl (%r10), %r15d
    movq %r13, %r10
    movl %r15d, (%r10)
    leaq .Ltext_66(%rip), %r15
    leaq 2424(%rbp), %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $31, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 728(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq 2408(%rbp), %r13
    movq 40(%rbp), %r10
    movq (%r10), %r14
    movq 736(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_72(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
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
    movq 56(%rbp), %r10
    movq (%r10), %r14
    movq 56(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L15_50
    jmp .L15_49
.L15_50:
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
.L15_49:
    leaq 2392(%rbp), %rbx
    movq 64(%rbp), %r10
    movq (%r10), %r12
    movq 792(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L15_52
    jmp .L15_51
.L15_52:
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
.L15_51:
    movq 728(%rbp), %rsi
    movq 3112(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3112(%rbp), %rax
    movq 3288(%rbp), %rdi
    movq 3280(%rbp), %rsi
    movdqu 3264(%rbp), %xmm6
    movdqu 3248(%rbp), %xmm7
    movdqu 3232(%rbp), %xmm8
    movdqu 3216(%rbp), %xmm9
    movdqu 3200(%rbp), %xmm10
    movdqu 3184(%rbp), %xmm11
    movdqu 3168(%rbp), %xmm12
    movdqu 3152(%rbp), %xmm13
    movdqu 3136(%rbp), %xmm14
    movdqu 3120(%rbp), %xmm15
    movq 3104(%rbp), %rbx
    movq 3096(%rbp), %r12
    movq 3088(%rbp), %r13
    movq 3080(%rbp), %r14
    movq 3072(%rbp), %r15
    leaq 3296(%rbp), %rsp
    popq %rbp
    ret
.L15_53:
    jmp .L15_48
.L15_47:
.L15_48:
    leaq 2376(%rbp), %rax
    movq %rax, 720(%rbp)
    movq 720(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 2952(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r14
    leaq 2360(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $0, %rcx
    cmpq %rcx, %r14
    jbe .L15_55
.L15_54:
    movq 752(%rbp), %r10
    movl (%r10), %r14d
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movl %r14d, %eax
    movq %rax, 16(%rsp)
    leaq 2312(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_12windows_text_wide
    addq $32, %rsp
    leaq 2312(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L15_58
    jmp .L15_57
.L15_58:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 3000(%rbp), %rax
    movq %rax, 712(%rbp)
    movq 712(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 704(%rbp)
    movq %rbx, %r10
    movq 704(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 712(%rbp), %rax
    movq $64, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 2296(%rbp), %rbx
    movq 40(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 696(%rbp)
    movq 736(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq 696(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 688(%rbp)
    movq 688(%rbp), %r10
    movq %r13, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r13
    movq 56(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 680(%rbp)
    movq 680(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L15_60
    jmp .L15_59
.L15_60:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
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
    movq %r12, %r11
    call *%r11
    addq $48, %rsp
.L15_59:
    leaq 2280(%rbp), %rbx
    movq 64(%rbp), %r10
    movq (%r10), %r12
    movq 792(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r12
    movq 680(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L15_62
    jmp .L15_61
.L15_62:
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
.L15_61:
    movq 712(%rbp), %rsi
    movq 3112(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3112(%rbp), %rax
    movq 3288(%rbp), %rdi
    movq 3280(%rbp), %rsi
    movdqu 3264(%rbp), %xmm6
    movdqu 3248(%rbp), %xmm7
    movdqu 3232(%rbp), %xmm8
    movdqu 3216(%rbp), %xmm9
    movdqu 3200(%rbp), %xmm10
    movdqu 3184(%rbp), %xmm11
    movdqu 3168(%rbp), %xmm12
    movdqu 3152(%rbp), %xmm13
    movdqu 3136(%rbp), %xmm14
    movdqu 3120(%rbp), %xmm15
    movq 3104(%rbp), %rbx
    movq 3096(%rbp), %r12
    movq 3088(%rbp), %r13
    movq 3080(%rbp), %r14
    movq 3072(%rbp), %r15
    leaq 3296(%rbp), %rsp
    popq %rbp
    ret
.L15_63:
.L15_57:
    movq %r15, %r10
    movq 720(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L15_56
.L15_55:
.L15_56:
    leaq 2264(%rbp), %rax
    movq %rax, 672(%rbp)
    movq 672(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 2928(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L15_67
    jmp .L15_65
.L15_67:
    leaq 2248(%rbp), %r14
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L15_64:
    subq $48, %rsp
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 2200(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_19environment_windows
    addq $48, %rsp
    leaq 2200(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L15_69
    jmp .L15_68
.L15_69:
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    leaq 3000(%rbp), %rax
    movq %rax, 664(%rbp)
    movq 664(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 664(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 2184(%rbp), %r12
    movq 40(%rbp), %r10
    movq (%r10), %r14
    movq 736(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, 656(%rbp)
    movq %r12, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq 656(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r14
    movq 56(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 648(%rbp)
    movq 648(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L15_71
    jmp .L15_70
.L15_71:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r14, %rax
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
.L15_70:
    leaq 2168(%rbp), %rbx
    movq 64(%rbp), %r10
    movq (%r10), %r12
    movq 792(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r12
    movq 648(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L15_73
    jmp .L15_72
.L15_73:
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
.L15_72:
    movq 664(%rbp), %rsi
    movq 3112(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3112(%rbp), %rax
    movq 3288(%rbp), %rdi
    movq 3280(%rbp), %rsi
    movdqu 3264(%rbp), %xmm6
    movdqu 3248(%rbp), %xmm7
    movdqu 3232(%rbp), %xmm8
    movdqu 3216(%rbp), %xmm9
    movdqu 3200(%rbp), %xmm10
    movdqu 3184(%rbp), %xmm11
    movdqu 3168(%rbp), %xmm12
    movdqu 3152(%rbp), %xmm13
    movdqu 3136(%rbp), %xmm14
    movdqu 3120(%rbp), %xmm15
    movq 3104(%rbp), %rbx
    movq 3096(%rbp), %r12
    movq 3088(%rbp), %r13
    movq 3080(%rbp), %r14
    movq 3072(%rbp), %r15
    leaq 3296(%rbp), %rsp
    popq %rbp
    ret
.L15_74:
.L15_68:
    movq %r13, %r10
    movq 672(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L15_66
.L15_65:
.L15_66:
    subq $32, %rsp
    leaq 2128(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_process_17temporary_windows
    addq $32, %rsp
    leaq 2128(%rbp), %r13
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L15_76
    jmp .L15_75
.L15_76:
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq 3000(%rbp), %rax
    movq %rax, 640(%rbp)
    movq 640(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 632(%rbp)
    movq %r12, %r10
    movq 632(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 640(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $48, %rsp
    movq 672(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 2112(%rbp), %r12
    movq 40(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 624(%rbp)
    movq 736(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq 624(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 616(%rbp)
    movq 616(%rbp), %r10
    movq %r14, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r14
    movq 56(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 608(%rbp)
    movq 608(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L15_78
    jmp .L15_77
.L15_78:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r14, %rax
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
.L15_77:
    leaq 2096(%rbp), %rbx
    movq 64(%rbp), %r10
    movq (%r10), %r12
    movq 792(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r12
    movq 608(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L15_80
    jmp .L15_79
.L15_80:
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
.L15_79:
    movq 640(%rbp), %rsi
    movq 3112(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3112(%rbp), %rax
    movq 3288(%rbp), %rdi
    movq 3280(%rbp), %rsi
    movdqu 3264(%rbp), %xmm6
    movdqu 3248(%rbp), %xmm7
    movdqu 3232(%rbp), %xmm8
    movdqu 3216(%rbp), %xmm9
    movdqu 3200(%rbp), %xmm10
    movdqu 3184(%rbp), %xmm11
    movdqu 3168(%rbp), %xmm12
    movdqu 3152(%rbp), %xmm13
    movdqu 3136(%rbp), %xmm14
    movdqu 3120(%rbp), %xmm15
    movq 3104(%rbp), %rbx
    movq 3096(%rbp), %r12
    movq 3088(%rbp), %r13
    movq 3080(%rbp), %r14
    movq 3072(%rbp), %r15
    leaq 3296(%rbp), %rsp
    popq %rbp
    ret
.L15_81:
.L15_75:
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 600(%rbp)
    subq $32, %rsp
    leaq 2056(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_process_17temporary_windows
    addq $32, %rsp
    leaq 2056(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L15_83
    jmp .L15_82
.L15_83:
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    leaq 3000(%rbp), %rax
    movq %rax, 592(%rbp)
    movq 592(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 592(%rbp), %rax
    movq $64, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 600(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $48, %rsp
    movq 672(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 2040(%rbp), %rbx
    movq 40(%rbp), %r10
    movq (%r10), %r13
    movq 736(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, 584(%rbp)
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq 584(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r13
    movq 56(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 576(%rbp)
    movq 576(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L15_85
    jmp .L15_84
.L15_85:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
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
    movq %r12, %r11
    call *%r11
    addq $48, %rsp
.L15_84:
    leaq 2024(%rbp), %rbx
    movq 64(%rbp), %r10
    movq (%r10), %r12
    movq 792(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r12
    movq 576(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L15_87
    jmp .L15_86
.L15_87:
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
.L15_86:
    movq 592(%rbp), %rsi
    movq 3112(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3112(%rbp), %rax
    movq 3288(%rbp), %rdi
    movq 3280(%rbp), %rsi
    movdqu 3264(%rbp), %xmm6
    movdqu 3248(%rbp), %xmm7
    movdqu 3232(%rbp), %xmm8
    movdqu 3216(%rbp), %xmm9
    movdqu 3200(%rbp), %xmm10
    movdqu 3184(%rbp), %xmm11
    movdqu 3168(%rbp), %xmm12
    movdqu 3152(%rbp), %xmm13
    movdqu 3136(%rbp), %xmm14
    movdqu 3120(%rbp), %xmm15
    movq 3104(%rbp), %rbx
    movq 3096(%rbp), %r12
    movq 3088(%rbp), %r13
    movq 3080(%rbp), %r14
    movq 3072(%rbp), %r15
    leaq 3296(%rbp), %rsp
    popq %rbp
    ret
.L15_88:
.L15_82:
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, 568(%rbp)
    leaq .Ltext_77(%rip), %r13
    leaq .Ltext_78(%rip), %r14
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call fopen
    addq $32, %rsp
    movq %rax, 32(%rbp)
    movq 32(%rbp), %rax
    testq %rax, %rax
    jne .L15_89
    jmp .L15_90
.L15_89:
    jmp .L15_91
.L15_90:
    leaq 3000(%rbp), %rax
    movq %rax, 560(%rbp)
    movq 560(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq 752(%rbp), %r10
    movl (%r10), %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    leaq .Ltext_79(%rip), %r15
    leaq 2008(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq $35, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 560(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 568(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 600(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $48, %rsp
    movq 672(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 1992(%rbp), %r12
    movq 40(%rbp), %r10
    movq (%r10), %r14
    movq 736(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq %r12, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r14
    movq 56(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L15_93
    jmp .L15_92
.L15_93:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r14, %rax
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
.L15_92:
    leaq 1976(%rbp), %rbx
    movq 64(%rbp), %r10
    movq (%r10), %r12
    movq 792(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L15_95
    jmp .L15_94
.L15_95:
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
.L15_94:
    movq 560(%rbp), %rsi
    movq 3112(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3112(%rbp), %rax
    movq 3288(%rbp), %rdi
    movq 3280(%rbp), %rsi
    movdqu 3264(%rbp), %xmm6
    movdqu 3248(%rbp), %xmm7
    movdqu 3232(%rbp), %xmm8
    movdqu 3216(%rbp), %xmm9
    movdqu 3200(%rbp), %xmm10
    movdqu 3184(%rbp), %xmm11
    movdqu 3168(%rbp), %xmm12
    movdqu 3152(%rbp), %xmm13
    movdqu 3136(%rbp), %xmm14
    movdqu 3120(%rbp), %xmm15
    movq 3104(%rbp), %rbx
    movq 3096(%rbp), %r12
    movq 3088(%rbp), %r13
    movq 3080(%rbp), %r14
    movq 3072(%rbp), %r15
    leaq 3296(%rbp), %rsp
    popq %rbp
    ret
.L15_96:
.L15_91:
    subq $32, %rsp
    movq 600(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 1936(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_12inherit_file
    addq $32, %rsp
    leaq 1936(%rbp), %r13
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L15_98
    jmp .L15_97
.L15_98:
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq 3000(%rbp), %rax
    movq %rax, 552(%rbp)
    movq 552(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 544(%rbp)
    movq %r12, %r10
    movq 544(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 552(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 568(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 600(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $48, %rsp
    movq 672(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 1920(%rbp), %r12
    movq 40(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 536(%rbp)
    movq 736(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq 536(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 528(%rbp)
    movq 528(%rbp), %r10
    movq %r14, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r14
    movq 56(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 520(%rbp)
    movq 520(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L15_100
    jmp .L15_99
.L15_100:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r14, %rax
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
.L15_99:
    leaq 1904(%rbp), %rbx
    movq 64(%rbp), %r10
    movq (%r10), %r12
    movq 792(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r12
    movq 520(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L15_102
    jmp .L15_101
.L15_102:
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
.L15_101:
    movq 552(%rbp), %rsi
    movq 3112(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3112(%rbp), %rax
    movq 3288(%rbp), %rdi
    movq 3280(%rbp), %rsi
    movdqu 3264(%rbp), %xmm6
    movdqu 3248(%rbp), %xmm7
    movdqu 3232(%rbp), %xmm8
    movdqu 3216(%rbp), %xmm9
    movdqu 3200(%rbp), %xmm10
    movdqu 3184(%rbp), %xmm11
    movdqu 3168(%rbp), %xmm12
    movdqu 3152(%rbp), %xmm13
    movdqu 3136(%rbp), %xmm14
    movdqu 3120(%rbp), %xmm15
    movq 3104(%rbp), %rbx
    movq 3096(%rbp), %r12
    movq 3088(%rbp), %r13
    movq 3080(%rbp), %r14
    movq 3072(%rbp), %r15
    leaq 3296(%rbp), %rsp
    popq %rbp
    ret
.L15_103:
.L15_97:
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 512(%rbp)
    subq $32, %rsp
    movq 568(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 1864(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_12inherit_file
    addq $32, %rsp
    leaq 1864(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L15_105
    jmp .L15_104
.L15_105:
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    leaq 3000(%rbp), %rax
    movq %rax, 504(%rbp)
    movq 504(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 504(%rbp), %rax
    movq $64, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 512(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 568(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 600(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $48, %rsp
    movq 672(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 1848(%rbp), %rbx
    movq 40(%rbp), %r10
    movq (%r10), %r13
    movq 736(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, 496(%rbp)
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq 496(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r13
    movq 56(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 488(%rbp)
    movq 488(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L15_107
    jmp .L15_106
.L15_107:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
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
    movq %r12, %r11
    call *%r11
    addq $48, %rsp
.L15_106:
    leaq 1832(%rbp), %rbx
    movq 64(%rbp), %r10
    movq (%r10), %r12
    movq 792(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r12
    movq 488(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L15_109
    jmp .L15_108
.L15_109:
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
.L15_108:
    movq 504(%rbp), %rsi
    movq 3112(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3112(%rbp), %rax
    movq 3288(%rbp), %rdi
    movq 3280(%rbp), %rsi
    movdqu 3264(%rbp), %xmm6
    movdqu 3248(%rbp), %xmm7
    movdqu 3232(%rbp), %xmm8
    movdqu 3216(%rbp), %xmm9
    movdqu 3200(%rbp), %xmm10
    movdqu 3184(%rbp), %xmm11
    movdqu 3168(%rbp), %xmm12
    movdqu 3152(%rbp), %xmm13
    movdqu 3136(%rbp), %xmm14
    movdqu 3120(%rbp), %xmm15
    movq 3104(%rbp), %rbx
    movq 3096(%rbp), %r12
    movq 3088(%rbp), %r13
    movq 3080(%rbp), %r14
    movq 3072(%rbp), %r15
    leaq 3296(%rbp), %rsp
    popq %rbp
    ret
.L15_110:
.L15_104:
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, 480(%rbp)
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 1792(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_12inherit_file
    addq $32, %rsp
    leaq 1792(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L15_112
    jmp .L15_111
.L15_112:
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    leaq 3000(%rbp), %rax
    movq %rax, 472(%rbp)
    movq 472(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 472(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 480(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 512(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 568(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 600(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $48, %rsp
    movq 672(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 1776(%rbp), %r12
    movq 40(%rbp), %r10
    movq (%r10), %r13
    movq 736(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, 464(%rbp)
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq 464(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r13
    movq 56(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 456(%rbp)
    movq 456(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L15_114
    jmp .L15_113
.L15_114:
    movq $16, %rcx
    movq %r15, %rbx
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
.L15_113:
    leaq 1760(%rbp), %rbx
    movq 64(%rbp), %r10
    movq (%r10), %r12
    movq 792(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r12
    movq 456(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L15_116
    jmp .L15_115
.L15_116:
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
.L15_115:
    movq 472(%rbp), %rsi
    movq 3112(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3112(%rbp), %rax
    movq 3288(%rbp), %rdi
    movq 3280(%rbp), %rsi
    movdqu 3264(%rbp), %xmm6
    movdqu 3248(%rbp), %xmm7
    movdqu 3232(%rbp), %xmm8
    movdqu 3216(%rbp), %xmm9
    movdqu 3200(%rbp), %xmm10
    movdqu 3184(%rbp), %xmm11
    movdqu 3168(%rbp), %xmm12
    movdqu 3152(%rbp), %xmm13
    movdqu 3136(%rbp), %xmm14
    movdqu 3120(%rbp), %xmm15
    movq 3104(%rbp), %rbx
    movq 3096(%rbp), %r12
    movq 3088(%rbp), %r13
    movq 3080(%rbp), %r14
    movq 3072(%rbp), %r15
    leaq 3296(%rbp), %rsp
    popq %rbp
    ret
.L15_117:
.L15_111:
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 448(%rbp)
    leaq 1656(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movups %xmm8, 80(%r11)
    movq $0, 96(%r11)
    movl $104, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq $60, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movl $256, %eax
    movq %r15, %r10
    movl %eax, (%r10)
    movq $80, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq 448(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $88, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq 512(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $96, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq 480(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq 1632(%rbp), %r15
    movq %r15, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq 40(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 440(%rbp)
    leaq 2912(%rbp), %rax
    movq %rax, 432(%rbp)
    movq 432(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 424(%rbp)
    movq 424(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %eax
    movl %eax, 416(%rbp)
    movl 416(%rbp), %eax
    testl %eax, %eax
    jne .L15_121
    jmp .L15_122
.L15_121:
    movl $4, %eax
    movl %eax, %r14d
    jmp .L15_123
.L15_122:
    movl $0, %eax
    movl %eax, %r14d
.L15_123:
    movl $134218752, %ecx
    movl %r14d, %r12d
    orl %ecx, %r12d
    movq 672(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L15_125
.L15_124:
    movq 672(%rbp), %r10
    movq (%r10), %rbx
    jmp .L15_126
.L15_125:
    movq $0, %rax
    movq %rax, %rbx
.L15_126:
    movq 720(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    jbe .L15_128
.L15_127:
    movq 720(%rbp), %r10
    movq (%r10), %r14
    jmp .L15_129
.L15_128:
    movq $0, %rax
    movq %rax, %r14
.L15_129:
    subq $80, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq 440(%rbp), %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    movl $1, %eax
    movq %rax, 32(%rsp)
    movl %r12d, %eax
    movq %rax, 40(%rsp)
    movq %rbx, %rax
    movq %rax, 48(%rsp)
    movq %r14, %rax
    movq %rax, 56(%rsp)
    movq %r13, %rax
    movq %rax, 64(%rsp)
    movq %r15, %rax
    movq %rax, 72(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call CreateProcessW
    addq $80, %rsp
    movl %eax, 408(%rbp)
    movl 408(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jne .L15_119
.L15_118:
    leaq 3000(%rbp), %rax
    movq %rax, 392(%rbp)
    movq 392(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 752(%rbp), %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_84(%rip), %r13
    leaq 1616(%rbp), %r14
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
    movq 392(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 448(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 480(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 512(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 568(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 600(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %r12d
    subq $48, %rsp
    movq 672(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 1600(%rbp), %r12
    movq 736(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq 440(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r13
    movq 56(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L15_131
    jmp .L15_130
.L15_131:
    movq $16, %rcx
    movq %r15, %rbx
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
.L15_130:
    leaq 1584(%rbp), %rbx
    movq 64(%rbp), %r10
    movq (%r10), %r12
    movq 792(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L15_133
    jmp .L15_132
.L15_133:
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
.L15_132:
    movq 392(%rbp), %rsi
    movq 3112(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3112(%rbp), %rax
    movq 3288(%rbp), %rdi
    movq 3280(%rbp), %rsi
    movdqu 3264(%rbp), %xmm6
    movdqu 3248(%rbp), %xmm7
    movdqu 3232(%rbp), %xmm8
    movdqu 3216(%rbp), %xmm9
    movdqu 3200(%rbp), %xmm10
    movdqu 3184(%rbp), %xmm11
    movdqu 3168(%rbp), %xmm12
    movdqu 3152(%rbp), %xmm13
    movdqu 3136(%rbp), %xmm14
    movdqu 3120(%rbp), %xmm15
    movq 3104(%rbp), %rbx
    movq 3096(%rbp), %r12
    movq 3088(%rbp), %r13
    movq 3080(%rbp), %r14
    movq 3072(%rbp), %r15
    leaq 3296(%rbp), %rsp
    popq %rbp
    ret
.L15_134:
    jmp .L15_120
.L15_119:
.L15_120:
    movq %r15, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L15_135
    jmp .L15_136
.L15_135:
    jmp .L15_137
.L15_136:
    leaq .Ltext_86(%rip), %rbx
    leaq 1568(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $33, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_87(%rip), %rbx
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
    leaq .Ltext_87(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L15_137:
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    testq %rax, %rax
    jne .L15_138
    jmp .L15_139
.L15_138:
    jmp .L15_140
.L15_139:
    leaq .Ltext_88(%rip), %rbx
    leaq 1552(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $32, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_89(%rip), %rbx
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
    leaq .Ltext_89(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L15_140:
    movq 424(%rbp), %rax
    testq %rax, %rax
    jne .L15_144
    jmp .L15_142
.L15_144:
.L15_141:
    subq $48, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 24(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 600(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 568(%rbp), %rax
    movq %rax, 32(%rsp)
    movq 424(%rbp), %rax
    movq %rax, 40(%rsp)
    leaq 1520(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_process_15monitor_windows
    addq $48, %rsp
    leaq 1520(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L15_146
    jmp .L15_145
.L15_146:
    leaq 3000(%rbp), %rax
    movq %rax, 384(%rbp)
    movq 384(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 376(%rbp)
    movq %r14, %r10
    movq 376(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 384(%rbp), %rax
    movq $64, %rcx
    addq %rcx, %rax
    movq %rax, 368(%rbp)
    movl $1, %eax
    movq 368(%rbp), %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 24(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 448(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 480(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 512(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 568(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 600(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $48, %rsp
    movq 672(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 1504(%rbp), %rax
    movq %rax, 360(%rbp)
    movq 736(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq 440(%rbp), %rax
    movq 360(%rbp), %r10
    movq %rax, (%r10)
    movq 360(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 352(%rbp)
    movq 352(%rbp), %r10
    movq %r13, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r13
    movq 56(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 344(%rbp)
    movq 344(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L15_148
    jmp .L15_147
.L15_148:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 360(%rbp), %r10
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
.L15_147:
    leaq 1488(%rbp), %rbx
    movq 64(%rbp), %r10
    movq (%r10), %r12
    movq 792(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r12
    movq 344(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L15_150
    jmp .L15_149
.L15_150:
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
.L15_149:
    movq 384(%rbp), %rsi
    movq 3112(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3112(%rbp), %rax
    movq 3288(%rbp), %rdi
    movq 3280(%rbp), %rsi
    movdqu 3264(%rbp), %xmm6
    movdqu 3248(%rbp), %xmm7
    movdqu 3232(%rbp), %xmm8
    movdqu 3216(%rbp), %xmm9
    movdqu 3200(%rbp), %xmm10
    movdqu 3184(%rbp), %xmm11
    movdqu 3168(%rbp), %xmm12
    movdqu 3152(%rbp), %xmm13
    movdqu 3136(%rbp), %xmm14
    movdqu 3120(%rbp), %xmm15
    movq 3104(%rbp), %rbx
    movq 3096(%rbp), %r12
    movq 3088(%rbp), %r13
    movq 3080(%rbp), %r14
    movq 3072(%rbp), %r15
    leaq 3296(%rbp), %rsp
    popq %rbp
    ret
.L15_151:
.L15_145:
    jmp .L15_143
.L15_142:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $4294967295, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call WaitForSingleObject
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L15_153
.L15_152:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateProcess
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $4294967295, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call WaitForSingleObject
    addq $32, %rsp
    movl %eax, %r12d
    leaq 3000(%rbp), %rax
    movq %rax, 336(%rbp)
    movq 336(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq 752(%rbp), %r10
    movl (%r10), %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    leaq .Ltext_91(%rip), %r15
    leaq 1472(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq $30, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 336(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 24(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 448(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 480(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 512(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 568(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 600(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $48, %rsp
    movq 672(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 1456(%rbp), %r12
    movq 736(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq 440(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r14
    movq 56(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L15_156
    jmp .L15_155
.L15_156:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r14, %rax
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
.L15_155:
    leaq 1440(%rbp), %rbx
    movq 64(%rbp), %r10
    movq (%r10), %r12
    movq 792(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L15_158
    jmp .L15_157
.L15_158:
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
.L15_157:
    movq 336(%rbp), %rsi
    movq 3112(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3112(%rbp), %rax
    movq 3288(%rbp), %rdi
    movq 3280(%rbp), %rsi
    movdqu 3264(%rbp), %xmm6
    movdqu 3248(%rbp), %xmm7
    movdqu 3232(%rbp), %xmm8
    movdqu 3216(%rbp), %xmm9
    movdqu 3200(%rbp), %xmm10
    movdqu 3184(%rbp), %xmm11
    movdqu 3168(%rbp), %xmm12
    movdqu 3152(%rbp), %xmm13
    movdqu 3136(%rbp), %xmm14
    movdqu 3120(%rbp), %xmm15
    movq 3104(%rbp), %rbx
    movq 3096(%rbp), %r12
    movq 3088(%rbp), %r13
    movq 3080(%rbp), %r14
    movq 3072(%rbp), %r15
    leaq 3296(%rbp), %rsp
    popq %rbp
    ret
.L15_159:
    jmp .L15_154
.L15_153:
.L15_154:
.L15_143:
    leaq 1436(%rbp), %rax
    movq %rax, 328(%rbp)
    movl $0, %eax
    movq 328(%rbp), %r10
    movl %eax, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 328(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call GetExitCodeProcess
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L15_161
.L15_160:
    leaq 3000(%rbp), %rax
    movq %rax, 320(%rbp)
    movq 320(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq 752(%rbp), %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_93(%rip), %r14
    leaq 1416(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $38, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 320(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 24(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 448(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 480(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 512(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 568(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 600(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $48, %rsp
    movq 672(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 1400(%rbp), %r13
    movq 736(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq 440(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r14
    movq 56(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L15_164
    jmp .L15_163
.L15_164:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
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
    movq %rbx, %r11
    call *%r11
    addq $48, %rsp
.L15_163:
    leaq 1384(%rbp), %rbx
    movq 64(%rbp), %r10
    movq (%r10), %r12
    movq 792(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L15_166
    jmp .L15_165
.L15_166:
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
.L15_165:
    movq 320(%rbp), %rsi
    movq 3112(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3112(%rbp), %rax
    movq 3288(%rbp), %rdi
    movq 3280(%rbp), %rsi
    movdqu 3264(%rbp), %xmm6
    movdqu 3248(%rbp), %xmm7
    movdqu 3232(%rbp), %xmm8
    movdqu 3216(%rbp), %xmm9
    movdqu 3200(%rbp), %xmm10
    movdqu 3184(%rbp), %xmm11
    movdqu 3168(%rbp), %xmm12
    movdqu 3152(%rbp), %xmm13
    movdqu 3136(%rbp), %xmm14
    movdqu 3120(%rbp), %xmm15
    movq 3104(%rbp), %rbx
    movq 3096(%rbp), %r12
    movq 3088(%rbp), %r13
    movq 3080(%rbp), %r14
    movq 3072(%rbp), %r15
    leaq 3296(%rbp), %rsp
    popq %rbp
    ret
.L15_167:
    jmp .L15_162
.L15_161:
.L15_162:
    movl 416(%rbp), %eax
    testl %eax, %eax
    jne .L15_168
    jmp .L15_169
.L15_168:
    leaq 1344(%rbp), %r12
    movq 328(%rbp), %r10
    movl (%r10), %eax
    movl %eax, 312(%rbp)
    movl 312(%rbp), %eax
    movl %eax, %eax
    movq %rax, 304(%rbp)
    movl 304(%rbp), %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_95(%rip), %rax
    movq %rax, 296(%rbp)
    leaq 1328(%rbp), %r14
    movq 296(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $0, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 1312(%rbp), %r14
    movq 296(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, 288(%rbp)
    movq $0, %rax
    movq 288(%rbp), %r10
    movq %rax, (%r10)
    movq $24, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 280(%rbp)
    movq %r14, %r10
    movq 280(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 3000(%rbp), %rax
    movq %rax, 272(%rbp)
    movq %r12, %r10
    movq 272(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq 272(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 24(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 448(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 480(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 512(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 568(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 600(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $48, %rsp
    movq 672(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 1296(%rbp), %r12
    movq 736(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq 440(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r14
    movq 56(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L15_172
    jmp .L15_171
.L15_172:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r14, %rax
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
.L15_171:
    leaq 1280(%rbp), %rbx
    movq 64(%rbp), %r10
    movq (%r10), %r12
    movq 792(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L15_174
    jmp .L15_173
.L15_174:
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
.L15_173:
    movq 272(%rbp), %rsi
    movq 3112(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3112(%rbp), %rax
    movq 3288(%rbp), %rdi
    movq 3280(%rbp), %rsi
    movdqu 3264(%rbp), %xmm6
    movdqu 3248(%rbp), %xmm7
    movdqu 3232(%rbp), %xmm8
    movdqu 3216(%rbp), %xmm9
    movdqu 3200(%rbp), %xmm10
    movdqu 3184(%rbp), %xmm11
    movdqu 3168(%rbp), %xmm12
    movdqu 3152(%rbp), %xmm13
    movdqu 3136(%rbp), %xmm14
    movdqu 3120(%rbp), %xmm15
    movq 3104(%rbp), %rbx
    movq 3096(%rbp), %r12
    movq 3088(%rbp), %r13
    movq 3080(%rbp), %r14
    movq 3072(%rbp), %r15
    leaq 3296(%rbp), %rsp
    popq %rbp
    ret
.L15_175:
    jmp .L15_170
.L15_169:
.L15_170:
    leaq 1264(%rbp), %rax
    movq %rax, 16(%rbp)
    subq $32, %rsp
    movq 600(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 1216(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_15capture_windows
    addq $32, %rsp
    leaq 1216(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L15_177
    jmp .L15_176
.L15_177:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq 3000(%rbp), %rax
    movq %rax, 264(%rbp)
    movq 264(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 256(%rbp)
    movq %r12, %r10
    movq 256(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 264(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 24(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 448(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 480(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 512(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 568(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 600(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $48, %rsp
    movq 672(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 1200(%rbp), %r12
    movq 736(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, 248(%rbp)
    movq 440(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq 248(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r13
    movq 56(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 240(%rbp)
    movq 240(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L15_179
    jmp .L15_178
.L15_179:
    movq $16, %rcx
    movq %r15, %rbx
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
.L15_178:
    leaq 1184(%rbp), %rbx
    movq 64(%rbp), %r10
    movq (%r10), %r12
    movq 792(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r12
    movq 240(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L15_181
    jmp .L15_180
.L15_181:
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
.L15_180:
    movq 264(%rbp), %rsi
    movq 3112(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3112(%rbp), %rax
    movq 3288(%rbp), %rdi
    movq 3280(%rbp), %rsi
    movdqu 3264(%rbp), %xmm6
    movdqu 3248(%rbp), %xmm7
    movdqu 3232(%rbp), %xmm8
    movdqu 3216(%rbp), %xmm9
    movdqu 3200(%rbp), %xmm10
    movdqu 3184(%rbp), %xmm11
    movdqu 3168(%rbp), %xmm12
    movdqu 3152(%rbp), %xmm13
    movdqu 3136(%rbp), %xmm14
    movdqu 3120(%rbp), %xmm15
    movq 3104(%rbp), %rbx
    movq 3096(%rbp), %r12
    movq 3088(%rbp), %r13
    movq 3080(%rbp), %r14
    movq 3072(%rbp), %r15
    leaq 3296(%rbp), %rsp
    popq %rbp
    ret
.L15_182:
.L15_176:
    movq %r14, %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 1168(%rbp), %r13
    subq $32, %rsp
    movq 568(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 1080(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_15capture_windows
    addq $32, %rsp
    leaq 1080(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L15_186
    jmp .L15_185
.L15_186:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq 1128(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L15_183
.L15_185:
    leaq 1152(%rbp), %rax
    movq %rax, 232(%rbp)
    movq %r15, %r10
    movq 232(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L15_184
.L15_183:
    subq $48, %rsp
    movq 16(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_release
    addq $48, %rsp
    leaq 3000(%rbp), %rax
    movq %rax, 224(%rbp)
    movq 224(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r13, %r10
    movl (%r10), %eax
    movl %eax, 216(%rbp)
    movl 216(%rbp), %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, 208(%rbp)
    movq $8, %rcx
    addq %rcx, %r14
    movq 208(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 224(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 24(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 448(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 480(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 512(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 568(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 600(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $48, %rsp
    movq 672(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 1064(%rbp), %r14
    movq 736(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, 200(%rbp)
    movq 440(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq 200(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r12
    movq 56(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 192(%rbp)
    movq 192(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L15_188
    jmp .L15_187
.L15_188:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r14, %r10
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
.L15_187:
    leaq 1048(%rbp), %rbx
    movq 64(%rbp), %r10
    movq (%r10), %r12
    movq 792(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r12
    movq 192(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L15_190
    jmp .L15_189
.L15_190:
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
.L15_189:
    movq 224(%rbp), %rsi
    movq 3112(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3112(%rbp), %rax
    movq 3288(%rbp), %rdi
    movq 3280(%rbp), %rsi
    movdqu 3264(%rbp), %xmm6
    movdqu 3248(%rbp), %xmm7
    movdqu 3232(%rbp), %xmm8
    movdqu 3216(%rbp), %xmm9
    movdqu 3200(%rbp), %xmm10
    movdqu 3184(%rbp), %xmm11
    movdqu 3168(%rbp), %xmm12
    movdqu 3152(%rbp), %xmm13
    movdqu 3136(%rbp), %xmm14
    movdqu 3120(%rbp), %xmm15
    movq 3104(%rbp), %rbx
    movq 3096(%rbp), %r12
    movq 3088(%rbp), %r13
    movq 3080(%rbp), %r14
    movq 3072(%rbp), %r15
    leaq 3296(%rbp), %rsp
    popq %rbp
    ret
.L15_191:
.L15_184:
    movq 232(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 1008(%rbp), %r12
    movq 328(%rbp), %r10
    movl (%r10), %eax
    movl %eax, 184(%rbp)
    movl 184(%rbp), %eax
    movl %eax, %eax
    movq %rax, 176(%rbp)
    movl 176(%rbp), %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 168(%rbp)
    movq 16(%rbp), %r10
    movq 168(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 160(%rbp)
    movq %r13, %r10
    movq 160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 3000(%rbp), %rax
    movq %rax, 152(%rbp)
    movq %r12, %r10
    movq 152(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq 152(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 24(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 448(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 480(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 512(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 568(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 600(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $48, %rsp
    movq 672(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 992(%rbp), %r12
    movq 736(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, 144(%rbp)
    movq 440(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq 144(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r14
    movq 56(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 136(%rbp)
    movq 136(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L15_193
    jmp .L15_192
.L15_193:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r14, %rax
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
.L15_192:
    leaq 976(%rbp), %rbx
    movq 64(%rbp), %r10
    movq (%r10), %r12
    movq 792(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 56(%rbp), %r10
    movq (%r10), %r12
    movq 136(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L15_195
    jmp .L15_194
.L15_195:
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
.L15_194:
    movq 152(%rbp), %rsi
    movq 3112(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3112(%rbp), %rax
    movq 3288(%rbp), %rdi
    movq 3280(%rbp), %rsi
    movdqu 3264(%rbp), %xmm6
    movdqu 3248(%rbp), %xmm7
    movdqu 3232(%rbp), %xmm8
    movdqu 3216(%rbp), %xmm9
    movdqu 3200(%rbp), %xmm10
    movdqu 3184(%rbp), %xmm11
    movdqu 3168(%rbp), %xmm12
    movdqu 3152(%rbp), %xmm13
    movdqu 3136(%rbp), %xmm14
    movdqu 3120(%rbp), %xmm15
    movq 3104(%rbp), %rbx
    movq 3096(%rbp), %r12
    movq 3088(%rbp), %r13
    movq 3080(%rbp), %r14
    movq 3072(%rbp), %r15
    leaq 3296(%rbp), %rsp
    popq %rbp
    ret
.L15_196:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    movq %r14, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    movq %r13, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    movq %r12, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    movq %r15, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    movq 80(%rbp), %rax
    movq %rax, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    movq 88(%rbp), %rax
    movq %rax, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    movq 96(%rbp), %rax
    movq %rax, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    leaq 2264(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 2376(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 2536(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 128(%rbp)
    leaq 960(%rbp), %rax
    movq %rax, 120(%rbp)
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 112(%rbp)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_99(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 112(%rbp), %rax
    movq 120(%rbp), %r10
    movq %rax, (%r10)
    movq 120(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 104(%rbp)
    movq 104(%rbp), %r10
    movq %rbx, (%r10)
    movq 128(%rbp), %r10
    movq (%r10), %r12
    movq 128(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L15_198
    jmp .L15_197
.L15_198:
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 120(%rbp), %r10
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
.L15_197:
    leaq 2648(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 944(%rbp), %r13
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
    leaq .Ltext_99(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
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
    jne .L15_200
    jmp .L15_199
.L15_200:
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
.L15_199:
    leaq .Ltext_99(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_TerminationStatus_requested
lb_process_TerminationStatus_requested:
    .seh_proc lb_process_TerminationStatus_requested
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
    movq %rax, 8(%rbp)
    leaq 8(%rbp), %r10
    movq (%r10), %r12
    leaq lb_process_22termination_generation(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, %rbx
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
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
    movq 16(%rbp), %r12
    leaq 208(%rbp), %rsp
    popq %rbp
    ret
.L16_1:
    leaq .Ltext_100(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_Termination_init
lb_process_Termination_init:
    .seh_proc lb_process_Termination_init
    pushq %rbp
    .seh_pushreg %rbp
    subq $480, %rsp
    .seh_stackalloc 480
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 296(%rbp)
    movq %rdi, 472(%rbp)
    .seh_savereg %rdi, 472
    movq %rsi, 464(%rbp)
    .seh_savereg %rsi, 464
    movdqu %xmm6, 448(%rbp)
    .seh_savexmm %xmm6, 448
    movdqu %xmm7, 432(%rbp)
    .seh_savexmm %xmm7, 432
    movdqu %xmm8, 416(%rbp)
    .seh_savexmm %xmm8, 416
    movdqu %xmm9, 400(%rbp)
    .seh_savexmm %xmm9, 400
    movdqu %xmm10, 384(%rbp)
    .seh_savexmm %xmm10, 384
    movdqu %xmm11, 368(%rbp)
    .seh_savexmm %xmm11, 368
    movdqu %xmm12, 352(%rbp)
    .seh_savexmm %xmm12, 352
    movdqu %xmm13, 336(%rbp)
    .seh_savexmm %xmm13, 336
    movdqu %xmm14, 320(%rbp)
    .seh_savexmm %xmm14, 320
    movdqu %xmm15, 304(%rbp)
    .seh_savexmm %xmm15, 304
    movq %rbx, 288(%rbp)
    .seh_savereg %rbx, 288
    movq %r12, 280(%rbp)
    .seh_savereg %r12, 280
    movq %r13, 272(%rbp)
    .seh_savereg %r13, 272
    movq %r14, 264(%rbp)
    .seh_savereg %r14, 264
    movq %r15, 256(%rbp)
    .seh_savereg %r15, 256
    .seh_endprologue
    movq %rcx, 496(%rbp)
    movq %rdx, 504(%rbp)
    movq %r8, 512(%rbp)
    movq %r9, 520(%rbp)
    movq 504(%rbp), %rax
    movq %rax, 216(%rbp)
    leaq 216(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    leaq lb_process_16termination_lock(%rip), %rax
    movq %rax, 16(%rbp)
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_lock
    addq $32, %rsp
    leaq lb_process_19termination_closing(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %eax
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L17_1
    jmp .L17_2
.L17_1:
    leaq 224(%rbp), %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_101(%rip), %r13
    leaq 200(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $30, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    movq %r12, %rsi
    movq 296(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 296(%rbp), %rax
    movq 472(%rbp), %rdi
    movq 464(%rbp), %rsi
    movdqu 448(%rbp), %xmm6
    movdqu 432(%rbp), %xmm7
    movdqu 416(%rbp), %xmm8
    movdqu 400(%rbp), %xmm9
    movdqu 384(%rbp), %xmm10
    movdqu 368(%rbp), %xmm11
    movdqu 352(%rbp), %xmm12
    movdqu 336(%rbp), %xmm13
    movdqu 320(%rbp), %xmm14
    movdqu 304(%rbp), %xmm15
    movq 288(%rbp), %rbx
    movq 280(%rbp), %r12
    movq 272(%rbp), %r13
    movq 264(%rbp), %r14
    movq 256(%rbp), %r15
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
.L17_4:
    jmp .L17_3
.L17_2:
.L17_3:
    leaq 192(%rbp), %r12
    movq %r12, %r11
    movq $0, 0(%r11)
    leaq lb_process_22termination_generation(%rip), %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, %r14
    movq %r12, %r10
    movq %r14, (%r10)
    movq %r12, %r10
    movq 8(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq lb_process_18termination_owners(%rip), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, %r14
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_102(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq %r15, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $0, %rcx
    cmpq %rcx, %r14
    jne .L17_6
.L17_5:
    leaq lb_process_28termination_console_received(%rip), %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call SetConsoleCtrlHandler
    addq $32, %rsp
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L17_17
.L17_16:
    leaq 40(%rbp), %r14
    leaq lb_process_failed(%rip), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    leaq .Ltext_108(%rip), %r15
    leaq 24(%rbp), %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $54, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r13, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r14, %r10
    leaq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L17_20
.L17_19:
    jmp .L17_18
.L17_17:
.L17_18:
    leaq 40(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r13, %r10
    leaq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L17_20:
    leaq 72(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L17_14
    jmp .L17_13
.L17_14:
    leaq 104(%rbp), %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %r13, %r10
    leaq 136(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L17_21
.L17_15:
.L17_13:
    leaq 104(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r13, %r10
    leaq 136(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L17_21:
    leaq 136(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L17_11
    jmp .L17_10
.L17_11:
    leaq 168(%rbp), %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L17_8
.L17_10:
    jmp .L17_9
.L17_8:
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 224(%rbp), %r14
    movq %r13, %r10
    movl (%r10), %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    movq %r14, %rsi
    movq 296(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 296(%rbp), %rax
    movq 472(%rbp), %rdi
    movq 464(%rbp), %rsi
    movdqu 448(%rbp), %xmm6
    movdqu 432(%rbp), %xmm7
    movdqu 416(%rbp), %xmm8
    movdqu 400(%rbp), %xmm9
    movdqu 384(%rbp), %xmm10
    movdqu 368(%rbp), %xmm11
    movdqu 352(%rbp), %xmm12
    movdqu 336(%rbp), %xmm13
    movdqu 320(%rbp), %xmm14
    movdqu 304(%rbp), %xmm15
    movq 288(%rbp), %rbx
    movq 280(%rbp), %r12
    movq 272(%rbp), %r13
    movq 264(%rbp), %r14
    movq 256(%rbp), %r15
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
.L17_12:
.L17_9:
    jmp .L17_7
.L17_6:
.L17_7:
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    leaq 224(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 296(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 296(%rbp), %rax
    movq 472(%rbp), %rdi
    movq 464(%rbp), %rsi
    movdqu 448(%rbp), %xmm6
    movdqu 432(%rbp), %xmm7
    movdqu 416(%rbp), %xmm8
    movdqu 400(%rbp), %xmm9
    movdqu 384(%rbp), %xmm10
    movdqu 368(%rbp), %xmm11
    movdqu 352(%rbp), %xmm12
    movdqu 336(%rbp), %xmm13
    movdqu 320(%rbp), %xmm14
    movdqu 304(%rbp), %xmm15
    movq 288(%rbp), %rbx
    movq 280(%rbp), %r12
    movq 272(%rbp), %r13
    movq 264(%rbp), %r14
    movq 256(%rbp), %r15
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_process_Termination_status
lb_process_Termination_status:
    .seh_proc lb_process_Termination_status
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
    movq %rax, 0(%rbp)
    leaq 0(%rbp), %r10
    movq (%r10), %r12
    leaq 8(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
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
.L18_1:
    leaq .Ltext_103(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_Termination_close
lb_process_Termination_close:
    .seh_proc lb_process_Termination_close
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
    movq 224(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 0(%rbp), %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L19_2
.L19_1:
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
.L19_4:
    jmp .L19_3
.L19_2:
.L19_3:
    leaq lb_process_16termination_lock(%rip), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_lock
    addq $32, %rsp
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq lb_process_18termination_owners(%rip), %r13
    movq $1, %rcx
    movq %r13, %r10
    negq %rcx
    lock xaddq %rcx, (%r10)
    movq %rcx, %r13
    movq $1, %rcx
    cmpq %rcx, %r13
    jne .L19_6
.L19_5:
    leaq lb_process_28termination_console_received(%rip), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $0, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call SetConsoleCtrlHandler
    addq $32, %rsp
    movl %eax, %ebx
.L19_8:
.L19_9:
    jmp .L19_7
.L19_6:
.L19_7:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
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
    movq 16(%rbp), %r12
    movq 8(%rbp), %r13
    leaq 208(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_process_20termination_received
lb_process_20termination_received:
    .seh_proc lb_process_20termination_received
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
    leaq lb_process_22termination_generation(%rip), %rbx
    movq $1, %rcx
    movq %rbx, %r10
    lock xaddq %rcx, (%r10)
    movq %rcx, %rbx
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

    .p2align 4
    .globl lb_process_25termination_posix_install
lb_process_25termination_posix_install:
    .seh_proc lb_process_25termination_posix_install
    pushq %rbp
    .seh_pushreg %rbp
    subq $320, %rsp
    .seh_stackalloc 320
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 136(%rbp)
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
    movq %rbx, 128(%rbp)
    .seh_savereg %rbx, 128
    movq %r12, 120(%rbp)
    .seh_savereg %r12, 120
    movq %r13, 112(%rbp)
    .seh_savereg %r13, 112
    movq %r14, 104(%rbp)
    .seh_savereg %r14, 104
    movq %r15, 96(%rbp)
    .seh_savereg %r15, 96
    .seh_endprologue
    movq %rcx, 336(%rbp)
    movq %rdx, 344(%rbp)
    movq %r8, 352(%rbp)
    movq %r9, 360(%rbp)
    leaq lb_process_18previous_interrupt(%rip), %rbx
    leaq lb_process_16interrupt_signal(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r13
    leaq lb_process_20termination_received(%rip), %r14
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call signal
    addq $32, %rsp
    movq %rax, %r13
    movq %rbx, %r10
    movq %r13, (%r10)
    leaq 16(%rbp), %r10
    movq %r13, (%r10)
    testq %r13, %r13
    jne .L21_12
    jmp .L21_10
.L21_12:
.L21_9:
    movq $-1, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r15d
    movzbl %r15b, %r15d
    leaq 8(%rbp), %r10
    movl %r15d, (%r10)
    jmp .L21_15
.L21_13:
    jmp .L21_11
.L21_10:
.L21_11:
    movl $0, %eax
    leaq 8(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, %r15d
    jmp .L21_15
.L21_14:
    leaq .Ltext_104(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L21_15:
    testl %r15d, %r15d
    jne .L21_1
    jmp .L21_2
.L21_1:
    leaq 64(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_105(%rip), %r12
    leaq 48(%rbp), %r13
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
    movq 136(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 136(%rbp), %rax
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
    movq 128(%rbp), %rbx
    movq 120(%rbp), %r12
    movq 112(%rbp), %r13
    movq 104(%rbp), %r14
    movq 96(%rbp), %r15
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L21_4:
    jmp .L21_3
.L21_2:
.L21_3:
    leaq lb_process_18previous_terminate(%rip), %r13
    leaq lb_process_16terminate_signal(%rip), %r15
    movq %r15, %r10
    movslq (%r10), %r15
    subq $32, %rsp
    movl %r15d, %eax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call signal
    addq $32, %rsp
    movq %rax, %r15
    movq %r13, %r10
    movq %r15, (%r10)
    leaq 16(%rbp), %r10
    movq %r15, (%r10)
    testq %r15, %r15
    jne .L21_19
    jmp .L21_17
.L21_19:
.L21_16:
    movq $-1, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %r13d
    movzbl %r13b, %r13d
    leaq 0(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L21_22
.L21_20:
    jmp .L21_18
.L21_17:
.L21_18:
    movl $0, %eax
    leaq 0(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, %r13d
    jmp .L21_22
.L21_21:
    leaq .Ltext_104(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L21_22:
    testl %r13d, %r13d
    jne .L21_5
    jmp .L21_6
.L21_5:
    movq %r12, %r10
    movslq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call signal
    addq $32, %rsp
    movq %rax, %rbx
    leaq 64(%rbp), %r13
    leaq lb_process_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_106(%rip), %r14
    leaq 32(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $38, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 136(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 136(%rbp), %rax
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
    movq 128(%rbp), %rbx
    movq 120(%rbp), %r12
    movq 112(%rbp), %r13
    movq 104(%rbp), %r14
    movq 96(%rbp), %r15
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L21_8:
    jmp .L21_7
.L21_6:
.L21_7:
    leaq 64(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 136(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 136(%rbp), %rax
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
    movq 128(%rbp), %rbx
    movq 120(%rbp), %r12
    movq 112(%rbp), %r13
    movq 104(%rbp), %r14
    movq 96(%rbp), %r15
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_process_25termination_posix_restore
lb_process_25termination_posix_restore:
    .seh_proc lb_process_25termination_posix_restore
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
    leaq lb_process_16interrupt_signal(%rip), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_process_18previous_interrupt(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call signal
    addq $32, %rsp
    movq %rax, %rbx
    leaq lb_process_16terminate_signal(%rip), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_process_18previous_terminate(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call signal
    addq $32, %rsp
    movq %rax, %rbx
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
    .seh_endproc

    .p2align 4
    .globl lb_process_28termination_console_received
lb_process_28termination_console_received:
    .seh_proc lb_process_28termination_console_received
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
    movq %r14, 32(%rbp)
    .seh_savereg %r14, 32
    movq %r15, 24(%rbp)
    .seh_savereg %r15, 24
    .seh_endprologue
    movq %rcx, 256(%rbp)
    movq %rdx, 264(%rbp)
    movq %r8, 272(%rbp)
    movq %r9, 280(%rbp)
    movq 256(%rbp), %rax
    movl %eax, 8(%rbp)
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    leaq lb_process_13console_close(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    cmpl %r12d, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L23_25
    jmp .L23_1
.L23_25:
    movl %r12d, %r13d
    jmp .L23_2
.L23_1:
    leaq lb_process_14console_logoff(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    cmpl %r12d, %ebx
    sete %al
    movzbl %al, %r13d
.L23_2:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L23_26
    jmp .L23_3
.L23_26:
    movl %r12d, %r13d
    jmp .L23_4
.L23_3:
    leaq lb_process_16console_shutdown(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    cmpl %r12d, %ebx
    sete %al
    movzbl %al, %r13d
.L23_4:
    movzbl %r13b, %r12d
    movzbl %r12b, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L23_8
    jmp .L23_27
.L23_27:
    movl %r14d, %r13d
    jmp .L23_9
.L23_8:
    leaq lb_process_17console_interrupt(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
.L23_9:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L23_10
    jmp .L23_28
.L23_28:
    movl %r14d, %ebx
    jmp .L23_11
.L23_10:
    leaq lb_process_13console_break(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    cmpl %r13d, %ebx
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L23_11:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L23_5
    jmp .L23_6
.L23_5:
    movl $0, %eax
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
    movq 32(%rbp), %r14
    movq 24(%rbp), %r15
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L23_12:
    jmp .L23_7
.L23_6:
.L23_7:
    testl %r12d, %r12d
    jne .L23_13
    jmp .L23_14
.L23_13:
    leaq lb_process_19termination_closing(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L23_15
.L23_14:
.L23_15:
    leaq lb_process_22termination_generation(%rip), %rbx
    movq $1, %rcx
    movq %rbx, %r10
    lock xaddq %rcx, (%r10)
    movq %rcx, %rbx
    testl %r12d, %r12d
    jne .L23_16
    jmp .L23_17
.L23_16:
    subq $32, %rsp
    call GetTickCount64
    addq $32, %rsp
    movq %rax, %rbx
    leaq lb_process_18termination_owners(%rip), %r12
    leaq lb_process_26console_acknowledgement_ms(%rip), %r13
.L23_19:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    seta %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L23_22
    jmp .L23_29
.L23_29:
    movl %r14d, %r15d
    jmp .L23_23
.L23_22:
    subq $32, %rsp
    call GetTickCount64
    addq $32, %rsp
    movq %rax, %r14
    subq %rbx, %r14
    movq %r13, %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    setb %al
    movzbl %al, %r15d
.L23_23:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L23_20
    jmp .L23_21
.L23_20:
    subq $32, %rsp
    movl $1, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call Sleep
    addq $32, %rsp
    jmp .L23_19
.L23_21:
    jmp .L23_18
.L23_17:
.L23_18:
    movl $1, %eax
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
    movq 32(%rbp), %r14
    movq 24(%rbp), %r15
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L23_24:
    leaq .Ltext_107(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_19environment_address
lb_process_19environment_address:
    .seh_proc lb_process_19environment_address
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
    leaq environ(%rip), %rbx
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
.L24_1:
    leaq .Ltext_109(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_16environment_name
lb_process_16environment_name:
    .seh_proc lb_process_16environment_name
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
    movq %r15, 144(%rbp)
    .seh_savereg %r15, 144
    .seh_endprologue
    movq %rcx, 384(%rbp)
    movq %rdx, 392(%rbp)
    movq %r8, 400(%rbp)
    movq %r9, 408(%rbp)
    movq 392(%rbp), %rax
    movq %rax, 80(%rbp)
    leaq 64(%rbp), %rbx
    leaq 80(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r13
    leaq 48(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rax, %rbx
.L25_1:
    cmpq %r13, %rbx
    jae .L25_4
.L25_2:
    movq %r12, %r14
    addq %rbx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $61, %ecx
    cmpl %ecx, %r14d
    jne .L25_6
.L25_5:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L25_9
.L25_8:
    jmp .L25_4
.L25_11:
    jmp .L25_10
.L25_9:
.L25_10:
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $0, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_111(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_111(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %rbx, %rax
    jbe .L25_12
.L25_13:
    leaq .Ltext_111(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L25_12:
    leaq 32(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    leaq 16(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    leaq 96(%rbp), %r14
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
    movq 184(%rbp), %rdi
    movq $48, %rdx
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
    movq 144(%rbp), %r15
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
.L25_14:
    jmp .L25_7
.L25_6:
.L25_7:
.L25_3:
    movq $1, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %rbx
    jmp .L25_1
.L25_4:
    leaq 96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_112(%rip), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $63, %rax
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
    movq 184(%rbp), %rdi
    movq $48, %rdx
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
    movq 144(%rbp), %r15
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
.L25_15:
    leaq .Ltext_113(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_17environment_posix
lb_process_17environment_posix:
    .seh_proc lb_process_17environment_posix
    pushq %rbp
    .seh_pushreg %rbp
    subq $1136, %rsp
    .seh_stackalloc 1136
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 952(%rbp)
    movq %rdi, 1128(%rbp)
    .seh_savereg %rdi, 1128
    movq %rsi, 1120(%rbp)
    .seh_savereg %rsi, 1120
    movdqu %xmm6, 1104(%rbp)
    .seh_savexmm %xmm6, 1104
    movdqu %xmm7, 1088(%rbp)
    .seh_savexmm %xmm7, 1088
    movdqu %xmm8, 1072(%rbp)
    .seh_savexmm %xmm8, 1072
    movdqu %xmm9, 1056(%rbp)
    .seh_savexmm %xmm9, 1056
    movdqu %xmm10, 1040(%rbp)
    .seh_savexmm %xmm10, 1040
    movdqu %xmm11, 1024(%rbp)
    .seh_savexmm %xmm11, 1024
    movdqu %xmm12, 1008(%rbp)
    .seh_savexmm %xmm12, 1008
    movdqu %xmm13, 992(%rbp)
    .seh_savexmm %xmm13, 992
    movdqu %xmm14, 976(%rbp)
    .seh_savexmm %xmm14, 976
    movdqu %xmm15, 960(%rbp)
    .seh_savexmm %xmm15, 960
    movq %rbx, 944(%rbp)
    .seh_savereg %rbx, 944
    movq %r12, 936(%rbp)
    .seh_savereg %r12, 936
    movq %r13, 928(%rbp)
    .seh_savereg %r13, 928
    movq %r14, 920(%rbp)
    .seh_savereg %r14, 920
    movq %r15, 912(%rbp)
    .seh_savereg %r15, 912
    .seh_endprologue
    movq %rcx, 1152(%rbp)
    movq %rdx, 1160(%rbp)
    movq %r8, 1168(%rbp)
    movq %r9, 1176(%rbp)
    movq 1160(%rbp), %r10
    leaq 848(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1168(%rbp), %rax
    movq %rax, 832(%rbp)
    leaq 848(%rbp), %rax
    movq %rax, 328(%rbp)
    movq 328(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 320(%rbp)
    leaq 816(%rbp), %r14
    leaq 768(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 304(%rbp)
    leaq 720(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 296(%rbp)
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, 288(%rbp)
    movq 0(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 280(%rbp)
    movq $0, %rax
    movq %rax, 88(%rbp)
.L26_1:
    movq 88(%rbp), %rax
    movq 320(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L26_4
.L26_2:
    movq 328(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 312(%rbp)
    movq 88(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq 312(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 768(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_16environment_name
    addq $32, %rsp
    movq 304(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L26_6
    jmp .L26_5
.L26_6:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 864(%rbp), %r12
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
    movq 952(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 952(%rbp), %rax
    movq 1128(%rbp), %rdi
    movq 1120(%rbp), %rsi
    movdqu 1104(%rbp), %xmm6
    movdqu 1088(%rbp), %xmm7
    movdqu 1072(%rbp), %xmm8
    movdqu 1056(%rbp), %xmm9
    movdqu 1040(%rbp), %xmm10
    movdqu 1024(%rbp), %xmm11
    movdqu 1008(%rbp), %xmm12
    movdqu 992(%rbp), %xmm13
    movdqu 976(%rbp), %xmm14
    movdqu 960(%rbp), %xmm15
    movq 944(%rbp), %rbx
    movq 936(%rbp), %r12
    movq 928(%rbp), %r13
    movq 920(%rbp), %r14
    movq 912(%rbp), %r15
    leaq 1136(%rbp), %rsp
    popq %rbp
    ret
.L26_7:
.L26_5:
    movq 8(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rax, %r12
.L26_8:
    movq 88(%rbp), %rcx
    cmpq %rcx, %r12
    jae .L26_11
.L26_9:
    movq $8, %rcx
    movq %r12, %rbx
    imulq %rcx, %rbx
    movq 312(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 720(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_16environment_name
    addq $32, %rsp
    movq 296(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L26_16
    jmp .L26_15
.L26_16:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 864(%rbp), %r12
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
    movq 952(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 952(%rbp), %rax
    movq 1128(%rbp), %rdi
    movq 1120(%rbp), %rsi
    movdqu 1104(%rbp), %xmm6
    movdqu 1088(%rbp), %xmm7
    movdqu 1072(%rbp), %xmm8
    movdqu 1056(%rbp), %xmm9
    movdqu 1040(%rbp), %xmm10
    movdqu 1024(%rbp), %xmm11
    movdqu 1008(%rbp), %xmm12
    movdqu 992(%rbp), %xmm13
    movdqu 976(%rbp), %xmm14
    movdqu 960(%rbp), %xmm15
    movq 944(%rbp), %rbx
    movq 936(%rbp), %r12
    movq 928(%rbp), %r13
    movq 920(%rbp), %r14
    movq 912(%rbp), %r15
    leaq 1136(%rbp), %rsp
    popq %rbp
    ret
.L26_17:
.L26_15:
    movq 288(%rbp), %r10
    movq (%r10), %rbx
    movq 280(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L26_18
    jmp .L26_77
.L26_77:
    movl %r13d, %ebx
    jmp .L26_19
.L26_18:
    movq %r14, %r10
    movq (%r10), %r13
    movq 0(%rbp), %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
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
    movl %r13d, %ebx
.L26_19:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L26_12
    jmp .L26_13
.L26_12:
    leaq 864(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_116(%rip), %r13
    leaq 704(%rbp), %r14
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
    movq %rbx, %rsi
    movq 952(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 952(%rbp), %rax
    movq 1128(%rbp), %rdi
    movq 1120(%rbp), %rsi
    movdqu 1104(%rbp), %xmm6
    movdqu 1088(%rbp), %xmm7
    movdqu 1072(%rbp), %xmm8
    movdqu 1056(%rbp), %xmm9
    movdqu 1040(%rbp), %xmm10
    movdqu 1024(%rbp), %xmm11
    movdqu 1008(%rbp), %xmm12
    movdqu 992(%rbp), %xmm13
    movdqu 976(%rbp), %xmm14
    movdqu 960(%rbp), %xmm15
    movq 944(%rbp), %rbx
    movq 936(%rbp), %r12
    movq 928(%rbp), %r13
    movq 920(%rbp), %r14
    movq 912(%rbp), %r15
    leaq 1136(%rbp), %rsp
    popq %rbp
    ret
.L26_20:
    jmp .L26_14
.L26_13:
.L26_14:
.L26_10:
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r12
    jmp .L26_8
.L26_11:
.L26_3:
    movq 88(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, 88(%rbp)
    jmp .L26_1
.L26_4:
    leaq 832(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 272(%rbp)
    movq $0, %rax
    movq %rax, 80(%rbp)
.L26_21:
    movq 80(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq 272(%rbp), %rax
    movq %r13, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L26_23
.L26_22:
    movq 80(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_117(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r13, %rax
    movq %rax, 80(%rbp)
    jmp .L26_21
.L26_23:
    leaq 696(%rbp), %r13
    subq $32, %rsp
    movq 80(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 320(%rbp), %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %r14d
    leaq 680(%rbp), %r15
    movq %r13, %r10
    movq (%r10), %r13
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movb %r14b, (%r10)
    movq %r15, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L26_24
    jmp .L26_25
.L26_24:
    jmp .L26_26
.L26_25:
    leaq 864(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_118(%rip), %r13
    leaq 664(%rbp), %r14
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
    movq 952(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 952(%rbp), %rax
    movq 1128(%rbp), %rdi
    movq 1120(%rbp), %rsi
    movdqu 1104(%rbp), %xmm6
    movdqu 1088(%rbp), %xmm7
    movdqu 1072(%rbp), %xmm8
    movdqu 1056(%rbp), %xmm9
    movdqu 1040(%rbp), %xmm10
    movdqu 1024(%rbp), %xmm11
    movdqu 1008(%rbp), %xmm12
    movdqu 992(%rbp), %xmm13
    movdqu 976(%rbp), %xmm14
    movdqu 960(%rbp), %xmm15
    movq 944(%rbp), %rbx
    movq 936(%rbp), %r12
    movq 928(%rbp), %r13
    movq 920(%rbp), %r14
    movq 912(%rbp), %r15
    leaq 1136(%rbp), %rsp
    popq %rbp
    ret
.L26_27:
.L26_26:
    leaq 656(%rbp), %r14
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq $1, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq %r14, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %r15d
    leaq 640(%rbp), %rbx
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 264(%rbp)
    movq 264(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movb %r15b, (%r10)
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L26_28
    jmp .L26_29
.L26_28:
    jmp .L26_30
.L26_29:
    leaq 864(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_118(%rip), %r13
    leaq 624(%rbp), %r14
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
    movq 952(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 952(%rbp), %rax
    movq 1128(%rbp), %rdi
    movq 1120(%rbp), %rsi
    movdqu 1104(%rbp), %xmm6
    movdqu 1088(%rbp), %xmm7
    movdqu 1072(%rbp), %xmm8
    movdqu 1056(%rbp), %xmm9
    movdqu 1040(%rbp), %xmm10
    movdqu 1024(%rbp), %xmm11
    movdqu 1008(%rbp), %xmm12
    movdqu 992(%rbp), %xmm13
    movdqu 976(%rbp), %xmm14
    movdqu 960(%rbp), %xmm15
    movq 944(%rbp), %rbx
    movq 936(%rbp), %r12
    movq 928(%rbp), %r13
    movq 920(%rbp), %r14
    movq 912(%rbp), %r15
    leaq 1136(%rbp), %rsp
    popq %rbp
    ret
.L26_31:
.L26_30:
    leaq 608(%rbp), %rax
    movq %rax, 72(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 64(%rbp)
    leaq 560(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 264(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L26_33
.L26_32:
    movq 56(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %r14
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 56(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L26_34
.L26_33:
    movq 264(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq 64(%rbp), %r10
    movq (%r10), %rbx
    movq 64(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L26_35
    jmp .L26_36
.L26_36:
    leaq .Ltext_119(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L26_35:
    movq %r13, %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 536(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r15, %r11
    call *%r11
    addq $32, %rsp
    leaq 536(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, 256(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl 256(%rbp), %eax
    andl %r15d, %eax
    movl %eax, 248(%rbp)
    movl 248(%rbp), %eax
    testl %eax, %eax
    jne .L26_37
    jmp .L26_38
.L26_37:
    movq 56(%rbp), %rax
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
    movq 56(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L26_34
.L26_38:
    movq %r14, %r10
    movq (%r10), %rbx
    movq 56(%rbp), %r10
    movq %rbx, (%r10)
    movq 56(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 264(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 56(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L26_34:
    movq 56(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L26_40
    jmp .L26_39
.L26_40:
    movq 56(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 864(%rbp), %r12
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
    movq 952(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 952(%rbp), %rax
    movq 1128(%rbp), %rdi
    movq 1120(%rbp), %rsi
    movdqu 1104(%rbp), %xmm6
    movdqu 1088(%rbp), %xmm7
    movdqu 1072(%rbp), %xmm8
    movdqu 1056(%rbp), %xmm9
    movdqu 1040(%rbp), %xmm10
    movdqu 1024(%rbp), %xmm11
    movdqu 1008(%rbp), %xmm12
    movdqu 992(%rbp), %xmm13
    movdqu 976(%rbp), %xmm14
    movdqu 960(%rbp), %xmm15
    movq 944(%rbp), %rbx
    movq 936(%rbp), %r12
    movq 928(%rbp), %r13
    movq 920(%rbp), %r14
    movq 912(%rbp), %r15
    leaq 1136(%rbp), %rsp
    popq %rbp
    ret
.L26_41:
.L26_39:
    movq 56(%rbp), %r10
    movq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 504(%rbp), %r14
    leaq 416(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 240(%rbp)
    leaq 488(%rbp), %rax
    movq %rax, 216(%rbp)
    movq 24(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 232(%rbp)
    leaq 464(%rbp), %rax
    movq %rax, 224(%rbp)
    leaq .Ltext_95(%rip), %rax
    movq %rax, 208(%rbp)
    leaq 400(%rbp), %rax
    movq %rax, 200(%rbp)
    movq 200(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 192(%rbp)
    leaq 488(%rbp), %rax
    movq %rax, 184(%rbp)
    leaq 488(%rbp), %rax
    movq %rax, 176(%rbp)
    leaq 352(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 160(%rbp)
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, 152(%rbp)
    movq 16(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 144(%rbp)
    movq 72(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 136(%rbp)
    movq $0, %rax
    movq %rax, 48(%rbp)
    movq $0, %rax
    movq %rax, 40(%rbp)
.L26_42:
    movq 40(%rbp), %rax
    movq 80(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L26_45
.L26_43:
    movq 40(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq 272(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %rax
    testq %rax, %rax
    jne .L26_46
    jmp .L26_47
.L26_46:
    jmp .L26_48
.L26_47:
    leaq .Ltext_120(%rip), %rbx
    leaq 520(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_121(%rip), %rbx
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
    leaq .Ltext_121(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L26_48:
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 416(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_16environment_name
    addq $32, %rsp
    movq 240(%rbp), %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L26_52
    jmp .L26_51
.L26_52:
    movq 232(%rbp), %r10
    movq 224(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L26_49
.L26_51:
    movq 24(%rbp), %r10
    movq 216(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L26_50
.L26_49:
    movq 208(%rbp), %rax
    movq 200(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq 192(%rbp), %r10
    movq %rax, (%r10)
    movq 200(%rbp), %r10
    movq 184(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L26_50
.L26_53:
.L26_50:
    movq 176(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 328(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 168(%rbp)
    movq $0, %rax
    movq %rax, %rbx
.L26_54:
    movq 320(%rbp), %rcx
    cmpq %rcx, %rbx
    jb .L26_55
.L26_78:
    movl $0, %eax
    movl %eax, %ebx
    jmp .L26_57
.L26_55:
    movq $8, %rcx
    movq %rbx, %r13
    imulq %rcx, %r13
    movq 168(%rbp), %rax
    movq %r13, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    leaq 352(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_16environment_name
    addq $32, %rsp
    movq 160(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L26_62
    jmp .L26_61
.L26_62:
    movq 16(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 864(%rbp), %r12
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
    leaq 336(%rbp), %rbx
    movq 72(%rbp), %r10
    movq (%r10), %r13
    movq 72(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_122(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq 64(%rbp), %r10
    movq (%r10), %r13
    movq 64(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L26_64
    jmp .L26_63
.L26_64:
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
.L26_63:
    movq %r12, %rsi
    movq 952(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 952(%rbp), %rax
    movq 1128(%rbp), %rdi
    movq 1120(%rbp), %rsi
    movdqu 1104(%rbp), %xmm6
    movdqu 1088(%rbp), %xmm7
    movdqu 1072(%rbp), %xmm8
    movdqu 1056(%rbp), %xmm9
    movdqu 1040(%rbp), %xmm10
    movdqu 1024(%rbp), %xmm11
    movdqu 1008(%rbp), %xmm12
    movdqu 992(%rbp), %xmm13
    movdqu 976(%rbp), %xmm14
    movdqu 960(%rbp), %xmm15
    movq 944(%rbp), %rbx
    movq 936(%rbp), %r12
    movq 928(%rbp), %r13
    movq 920(%rbp), %r14
    movq 912(%rbp), %r15
    leaq 1136(%rbp), %rsp
    popq %rbp
    ret
.L26_65:
.L26_61:
    movq 152(%rbp), %r10
    movq (%r10), %r13
    movq 144(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r13
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L26_66
    jmp .L26_79
.L26_79:
    movl %r15d, %r13d
    jmp .L26_67
.L26_66:
    movq %r14, %r10
    movq (%r10), %r15
    movq 16(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
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
    movl %r12d, %r13d
.L26_67:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L26_58
    jmp .L26_59
.L26_58:
    movl $1, %eax
    movl %eax, %ebx
    jmp .L26_57
.L26_68:
    jmp .L26_60
.L26_59:
.L26_60:
.L26_56:
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %rbx
    jmp .L26_54
.L26_57:
    movzbl %bl, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L26_70
.L26_69:
    movq 72(%rbp), %r10
    movq (%r10), %rbx
    movq 136(%rbp), %r10
    movq (%r10), %r12
    movq 48(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_123(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 48(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    addq %r12, %rbx
    movq 32(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 48(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    jmp .L26_71
.L26_70:
    movq 48(%rbp), %rax
    movq %rax, %rbx
.L26_71:
.L26_44:
    movq 40(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %rbx, %rax
    movq %rax, 48(%rbp)
    movq %r12, %rax
    movq %rax, 40(%rbp)
    jmp .L26_42
.L26_45:
    movq 328(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 128(%rbp)
    movq 72(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 96(%rbp)
    movq 72(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq 48(%rbp), %rax
    movq %rax, %r14
    movq $0, %rax
    movq %rax, %r15
.L26_72:
    movq 320(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L26_75
.L26_73:
    movq $8, %rcx
    movq %r15, %rax
    imulq %rcx, %rax
    movq %rax, 120(%rbp)
    movq 128(%rbp), %rax
    movq 120(%rbp), %rcx
    addq %rcx, %rax
    movq %rax, 112(%rbp)
    movq 112(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 104(%rbp)
    cmpq %r13, %r14
    jb 1f
    leaq .Ltext_125(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %r14, %r12
    imulq %rcx, %r12
    movq 96(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 104(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $1, %rcx
    movq %r14, %r12
    addq %rcx, %r12
.L26_74:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %r12, %r14
    movq %rbx, %r15
    jmp .L26_72
.L26_75:
    movq 72(%rbp), %r10
    movq (%r10), %rbx
    movq 72(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %r14
    jb 1f
    leaq .Ltext_127(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %r14, %r12
    imulq %rcx, %r12
    addq %r12, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 864(%rbp), %rbx
    movq 72(%rbp), %r10
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
    movq 952(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 952(%rbp), %rax
    movq 1128(%rbp), %rdi
    movq 1120(%rbp), %rsi
    movdqu 1104(%rbp), %xmm6
    movdqu 1088(%rbp), %xmm7
    movdqu 1072(%rbp), %xmm8
    movdqu 1056(%rbp), %xmm9
    movdqu 1040(%rbp), %xmm10
    movdqu 1024(%rbp), %xmm11
    movdqu 1008(%rbp), %xmm12
    movdqu 992(%rbp), %xmm13
    movdqu 976(%rbp), %xmm14
    movdqu 960(%rbp), %xmm15
    movq 944(%rbp), %rbx
    movq 936(%rbp), %r12
    movq 928(%rbp), %r13
    movq 920(%rbp), %r14
    movq 912(%rbp), %r15
    leaq 1136(%rbp), %rsp
    popq %rbp
    ret
.L26_76:
    leaq .Ltext_128(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_23environment_windows_key
lb_process_23environment_windows_key:
    .seh_proc lb_process_23environment_windows_key
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
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $1, %rax
    movq %rax, %r14
.L27_1:
    movq 8(%rbp), %rcx
    cmpq %rcx, %r14
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L27_4
    jmp .L27_9
.L27_9:
    movl %r15d, %r12d
    jmp .L27_5
.L27_4:
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
.L27_5:
    movzbl %r12b, %r15d
    testl %r15d, %r15d
    jne .L27_2
    jmp .L27_3
.L27_2:
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_130(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %r12, %r14
    jmp .L27_1
.L27_3:
    movq %rbx, %r10
    movq (%r10), %r13
    movq 8(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_131(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r12, %r14
    jb 1f
    leaq .Ltext_131(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r14, %rax
    jbe .L27_6
.L27_7:
    leaq .Ltext_131(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L27_6:
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
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
.L27_8:
    leaq .Ltext_131(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_27environment_windows_compare
lb_process_27environment_windows_compare:
    .seh_proc lb_process_27environment_windows_compare
    pushq %rbp
    .seh_pushreg %rbp
    subq $304, %rsp
    .seh_stackalloc 304
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 120(%rbp)
    .seh_savereg %rbx, 120
    movq %r12, 112(%rbp)
    .seh_savereg %r12, 112
    movq %r13, 104(%rbp)
    .seh_savereg %r13, 104
    movq %r14, 96(%rbp)
    .seh_savereg %r14, 96
    .seh_endprologue
    movq %rcx, 320(%rbp)
    movq %rdx, 328(%rbp)
    movq %r8, 336(%rbp)
    movq %r9, 344(%rbp)
    movq 320(%rbp), %r10
    leaq 80(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 328(%rbp), %r10
    leaq 64(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rbp), %rbx
    leaq 80(%rbp), %r12
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 32(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_23environment_windows_key
    addq $48, %rsp
    leaq 32(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 16(%rbp), %r12
    leaq 64(%rbp), %r13
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_23environment_windows_key
    addq $48, %rsp
    leaq 0(%rbp), %r13
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
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movl %r12d, %eax
    movq %rax, 24(%rsp)
    movl $1, %eax
    movq %rax, 32(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call CompareStringOrdinal
    addq $48, %rsp
    movl %eax, %ebx
    movl %ebx, %eax
    movl $2, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_132(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %ebx
    movl %ebx, %eax
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
    movq 120(%rbp), %rbx
    movq 112(%rbp), %r12
    movq 104(%rbp), %r13
    movq 96(%rbp), %r14
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L28_1:
    leaq .Ltext_132(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_19environment_windows
lb_process_19environment_windows:
    .seh_proc lb_process_19environment_windows
    pushq %rbp
    .seh_pushreg %rbp
    subq $1488, %rsp
    .seh_stackalloc 1488
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 1304(%rbp)
    movq %rdi, 1480(%rbp)
    .seh_savereg %rdi, 1480
    movq %rsi, 1472(%rbp)
    .seh_savereg %rsi, 1472
    movdqu %xmm6, 1456(%rbp)
    .seh_savexmm %xmm6, 1456
    movdqu %xmm7, 1440(%rbp)
    .seh_savexmm %xmm7, 1440
    movdqu %xmm8, 1424(%rbp)
    .seh_savexmm %xmm8, 1424
    movdqu %xmm9, 1408(%rbp)
    .seh_savexmm %xmm9, 1408
    movdqu %xmm10, 1392(%rbp)
    .seh_savexmm %xmm10, 1392
    movdqu %xmm11, 1376(%rbp)
    .seh_savexmm %xmm11, 1376
    movdqu %xmm12, 1360(%rbp)
    .seh_savexmm %xmm12, 1360
    movdqu %xmm13, 1344(%rbp)
    .seh_savexmm %xmm13, 1344
    movdqu %xmm14, 1328(%rbp)
    .seh_savexmm %xmm14, 1328
    movdqu %xmm15, 1312(%rbp)
    .seh_savexmm %xmm15, 1312
    movq %rbx, 1296(%rbp)
    .seh_savereg %rbx, 1296
    movq %r12, 1288(%rbp)
    .seh_savereg %r12, 1288
    movq %r13, 1280(%rbp)
    .seh_savereg %r13, 1280
    movq %r14, 1272(%rbp)
    .seh_savereg %r14, 1272
    movq %r15, 1264(%rbp)
    .seh_savereg %r15, 1264
    .seh_endprologue
    movq %rcx, 1504(%rbp)
    movq %rdx, 1512(%rbp)
    movq %r8, 1520(%rbp)
    movq %r9, 1528(%rbp)
    movq 1512(%rbp), %r10
    leaq 1200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    call GetEnvironmentStringsW
    addq $32, %rsp
    movq %rax, 168(%rbp)
    movq 168(%rbp), %rax
    testq %rax, %rax
    jne .L29_1
    jmp .L29_2
.L29_1:
    jmp .L29_3
.L29_2:
    leaq 1216(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_133(%rip), %r13
    leaq 1184(%rbp), %r14
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
    movq 1304(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1304(%rbp), %rax
    movq 1480(%rbp), %rdi
    movq 1472(%rbp), %rsi
    movdqu 1456(%rbp), %xmm6
    movdqu 1440(%rbp), %xmm7
    movdqu 1424(%rbp), %xmm8
    movdqu 1408(%rbp), %xmm9
    movdqu 1392(%rbp), %xmm10
    movdqu 1376(%rbp), %xmm11
    movdqu 1360(%rbp), %xmm12
    movdqu 1344(%rbp), %xmm13
    movdqu 1328(%rbp), %xmm14
    movdqu 1312(%rbp), %xmm15
    movq 1296(%rbp), %rbx
    movq 1288(%rbp), %r12
    movq 1280(%rbp), %r13
    movq 1272(%rbp), %r14
    movq 1264(%rbp), %r15
    leaq 1488(%rbp), %rsp
    popq %rbp
    ret
.L29_4:
.L29_3:
    movq $0, %rax
    movq %rax, 160(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L29_5:
    movq $2, %rcx
    movq %r13, %r14
    imulq %rcx, %r14
    movq 168(%rbp), %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movzwl (%r10), %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L29_7
.L29_6:
    movq 160(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_134(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %r13, %r15
.L29_8:
    movq $2, %rcx
    movq %r15, %r12
    imulq %rcx, %r12
    movq 168(%rbp), %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movzwl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L29_10
.L29_9:
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_135(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %r12, %r15
    jmp .L29_8
.L29_10:
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_136(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r14, %rax
    movq %rax, 160(%rbp)
    jmp .L29_5
.L29_7:
    leaq 1168(%rbp), %rax
    movq %rax, 152(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 144(%rbp)
    leaq 1200(%rbp), %rax
    movq %rax, 464(%rbp)
    movq 464(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 136(%rbp)
    leaq 1120(%rbp), %rax
    movq %rax, 128(%rbp)
    movq 136(%rbp), %rax
    movabsq $288230376151711744, %rcx
    cmpq %rcx, %rax
    jbe .L29_12
.L29_11:
    movq 128(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $208273409, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %rbx
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
    movq 128(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L29_13
.L29_12:
    movq 136(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq 144(%rbp), %r10
    movq (%r10), %rbx
    movq 144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L29_14
    jmp .L29_15
.L29_15:
    leaq .Ltext_137(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L29_14:
    movq %r12, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 1096(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r13, %r11
    call *%r11
    addq $32, %rsp
    leaq 1096(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r14
    setne %al
    movzbl %al, %eax
    movl %eax, 456(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl 456(%rbp), %eax
    movl %r13d, %ecx
    movl %eax, %r13d
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L29_16
    jmp .L29_17
.L29_16:
    movq 128(%rbp), %rax
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
    movq 128(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L29_13
.L29_17:
    movq %r15, %r10
    movq (%r10), %rbx
    movq 128(%rbp), %r10
    movq %rbx, (%r10)
    movq 128(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 136(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 128(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L29_13:
    movq 128(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L29_19
    jmp .L29_18
.L29_19:
    movq 128(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 1216(%rbp), %r12
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
    subq $32, %rsp
    movq 168(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call FreeEnvironmentStringsW
    addq $32, %rsp
    movl %eax, %ebx
    movq %r12, %rsi
    movq 1304(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1304(%rbp), %rax
    movq 1480(%rbp), %rdi
    movq 1472(%rbp), %rsi
    movdqu 1456(%rbp), %xmm6
    movdqu 1440(%rbp), %xmm7
    movdqu 1424(%rbp), %xmm8
    movdqu 1408(%rbp), %xmm9
    movdqu 1392(%rbp), %xmm10
    movdqu 1376(%rbp), %xmm11
    movdqu 1360(%rbp), %xmm12
    movdqu 1344(%rbp), %xmm13
    movdqu 1328(%rbp), %xmm14
    movdqu 1312(%rbp), %xmm15
    movq 1296(%rbp), %rbx
    movq 1288(%rbp), %r12
    movq 1280(%rbp), %r13
    movq 1272(%rbp), %r14
    movq 1264(%rbp), %r15
    leaq 1488(%rbp), %rsp
    popq %rbp
    ret
.L29_20:
.L29_18:
    movq 128(%rbp), %r10
    movq 152(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 1048(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 448(%rbp)
    movq 152(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 440(%rbp)
    leaq lb_process_failed(%rip), %rax
    movq %rax, 416(%rbp)
    leaq 984(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 408(%rbp)
    movq $0, %rax
    movq %rax, 120(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L29_21:
    movq 136(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L29_24
.L29_22:
    movq 464(%rbp), %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r14, %r15
    imulq %rcx, %r15
    addq %r15, %r12
    movq %r12, %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 8(%rsp)
    leaq 1048(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_16environment_name
    addq $32, %rsp
    movq 448(%rbp), %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L29_26
    jmp .L29_25
.L29_26:
    movq 16(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 1216(%rbp), %r12
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
    subq $48, %rsp
    movq 152(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 120(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_27environment_windows_release
    addq $48, %rsp
    leaq 1032(%rbp), %rbx
    movq 152(%rbp), %r10
    movq (%r10), %r14
    movq 152(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_138(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
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
    movq 144(%rbp), %r10
    movq (%r10), %r14
    movq 144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L29_28
    jmp .L29_27
.L29_28:
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
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
    movq %r13, %r11
    call *%r11
    addq $48, %rsp
.L29_27:
    subq $32, %rsp
    movq 168(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call FreeEnvironmentStringsW
    addq $32, %rsp
    movl %eax, %ebx
    movq %r12, %rsi
    movq 1304(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1304(%rbp), %rax
    movq 1480(%rbp), %rdi
    movq 1472(%rbp), %rsi
    movdqu 1456(%rbp), %xmm6
    movdqu 1440(%rbp), %xmm7
    movdqu 1424(%rbp), %xmm8
    movdqu 1408(%rbp), %xmm9
    movdqu 1392(%rbp), %xmm10
    movdqu 1376(%rbp), %xmm11
    movdqu 1360(%rbp), %xmm12
    movdqu 1344(%rbp), %xmm13
    movdqu 1328(%rbp), %xmm14
    movdqu 1312(%rbp), %xmm15
    movq 1296(%rbp), %rbx
    movq 1288(%rbp), %r12
    movq 1280(%rbp), %r13
    movq 1272(%rbp), %r14
    movq 1264(%rbp), %r15
    leaq 1488(%rbp), %rsp
    popq %rbp
    ret
.L29_29:
.L29_25:
    movq 152(%rbp), %r10
    movq (%r10), %r15
    movq 440(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 432(%rbp)
    movq 432(%rbp), %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_139(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $16, %rcx
    movq %r14, %rax
    imulq %rcx, %rax
    movq %rax, 424(%rbp)
    movq 424(%rbp), %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %r12, %r10
    movq (%r10), %r15
    movq 416(%rbp), %r10
    movl (%r10), %r13d
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    leaq 984(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_12windows_text_wide
    addq $32, %rsp
    movq 408(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L29_31
    jmp .L29_30
.L29_31:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 1216(%rbp), %r12
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
    subq $48, %rsp
    movq 152(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 120(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_27environment_windows_release
    addq $48, %rsp
    leaq 968(%rbp), %rbx
    movq 152(%rbp), %r10
    movq (%r10), %r13
    movq 440(%rbp), %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_139(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq 144(%rbp), %r10
    movq (%r10), %r13
    movq 144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L29_33
    jmp .L29_32
.L29_33:
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
.L29_32:
    subq $32, %rsp
    movq 168(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call FreeEnvironmentStringsW
    addq $32, %rsp
    movl %eax, %ebx
    movq %r12, %rsi
    movq 1304(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1304(%rbp), %rax
    movq 1480(%rbp), %rdi
    movq 1472(%rbp), %rsi
    movdqu 1456(%rbp), %xmm6
    movdqu 1440(%rbp), %xmm7
    movdqu 1424(%rbp), %xmm8
    movdqu 1408(%rbp), %xmm9
    movdqu 1392(%rbp), %xmm10
    movdqu 1376(%rbp), %xmm11
    movdqu 1360(%rbp), %xmm12
    movdqu 1344(%rbp), %xmm13
    movdqu 1328(%rbp), %xmm14
    movdqu 1312(%rbp), %xmm15
    movq 1296(%rbp), %rbx
    movq 1288(%rbp), %r12
    movq 1280(%rbp), %r13
    movq 1272(%rbp), %r14
    movq 1264(%rbp), %r15
    leaq 1488(%rbp), %rsp
    popq %rbp
    ret
.L29_34:
.L29_30:
    movq 8(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 120(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_140(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 400(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L29_35:
    cmpq %r14, %r13
    jae .L29_38
.L29_36:
    movq 152(%rbp), %r10
    movq (%r10), %rbx
    movq 440(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    jb 1f
    leaq .Ltext_141(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 424(%rbp), %rax
    movq %rax, %r15
    addq %rbx, %r15
    movq $16, %rcx
    movq %r13, %r12
    imulq %rcx, %r12
    addq %r12, %rbx
    subq $64, %rsp
    movq %r15, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_27environment_windows_compare
    addq $64, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L29_40
.L29_39:
    leaq 1216(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 416(%rbp), %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_116(%rip), %r13
    leaq 952(%rbp), %r14
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
    subq $48, %rsp
    movq 152(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 400(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_27environment_windows_release
    addq $48, %rsp
    leaq 936(%rbp), %r12
    movq 152(%rbp), %r10
    movq (%r10), %r13
    movq 440(%rbp), %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_142(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
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
    movq 144(%rbp), %r10
    movq (%r10), %r13
    movq 144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L29_43
    jmp .L29_42
.L29_43:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
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
    movq %r15, %r11
    call *%r11
    addq $48, %rsp
.L29_42:
    subq $32, %rsp
    movq 168(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call FreeEnvironmentStringsW
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 1304(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1304(%rbp), %rax
    movq 1480(%rbp), %rdi
    movq 1472(%rbp), %rsi
    movdqu 1456(%rbp), %xmm6
    movdqu 1440(%rbp), %xmm7
    movdqu 1424(%rbp), %xmm8
    movdqu 1408(%rbp), %xmm9
    movdqu 1392(%rbp), %xmm10
    movdqu 1376(%rbp), %xmm11
    movdqu 1360(%rbp), %xmm12
    movdqu 1344(%rbp), %xmm13
    movdqu 1328(%rbp), %xmm14
    movdqu 1312(%rbp), %xmm15
    movq 1296(%rbp), %rbx
    movq 1288(%rbp), %r12
    movq 1280(%rbp), %r13
    movq 1272(%rbp), %r14
    movq 1264(%rbp), %r15
    leaq 1488(%rbp), %rsp
    popq %rbp
    ret
.L29_44:
    jmp .L29_41
.L29_40:
.L29_41:
.L29_37:
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r13
    jmp .L29_35
.L29_38:
.L29_23:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq 400(%rbp), %rax
    movq %rax, 120(%rbp)
    movq %rbx, %r14
    jmp .L29_21
.L29_24:
    leaq 928(%rbp), %rbx
    subq $32, %rsp
    movq 160(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 136(%rbp), %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq %rbx, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %r12d
    leaq 912(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 392(%rbp)
    movq 392(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movb %r12b, (%r10)
    movq %r13, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L29_45
    jmp .L29_46
.L29_45:
    jmp .L29_47
.L29_46:
    leaq 1216(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_118(%rip), %r13
    leaq 896(%rbp), %r14
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
    subq $48, %rsp
    movq 152(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 120(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_27environment_windows_release
    addq $48, %rsp
    leaq 880(%rbp), %r12
    movq 152(%rbp), %r10
    movq (%r10), %r13
    movq 152(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_143(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
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
    movq 144(%rbp), %r10
    movq (%r10), %r13
    movq 144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L29_49
    jmp .L29_48
.L29_49:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
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
    movq %r15, %r11
    call *%r11
    addq $48, %rsp
.L29_48:
    subq $32, %rsp
    movq 168(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call FreeEnvironmentStringsW
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 1304(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1304(%rbp), %rax
    movq 1480(%rbp), %rdi
    movq 1472(%rbp), %rsi
    movdqu 1456(%rbp), %xmm6
    movdqu 1440(%rbp), %xmm7
    movdqu 1424(%rbp), %xmm8
    movdqu 1408(%rbp), %xmm9
    movdqu 1392(%rbp), %xmm10
    movdqu 1376(%rbp), %xmm11
    movdqu 1360(%rbp), %xmm12
    movdqu 1344(%rbp), %xmm13
    movdqu 1328(%rbp), %xmm14
    movdqu 1312(%rbp), %xmm15
    movq 1296(%rbp), %rbx
    movq 1288(%rbp), %r12
    movq 1280(%rbp), %r13
    movq 1272(%rbp), %r14
    movq 1264(%rbp), %r15
    leaq 1488(%rbp), %rsp
    popq %rbp
    ret
.L29_50:
.L29_47:
    leaq 864(%rbp), %rax
    movq %rax, 112(%rbp)
    leaq 816(%rbp), %rax
    movq %rax, 104(%rbp)
    movq 392(%rbp), %rax
    movabsq $288230376151711744, %rcx
    cmpq %rcx, %rax
    jbe .L29_52
.L29_51:
    movq 104(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %r12
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
    movq 104(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L29_53
.L29_52:
    movq 392(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq 144(%rbp), %r10
    movq (%r10), %r12
    movq 144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L29_54
    jmp .L29_55
.L29_55:
    leaq .Ltext_144(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L29_54:
    movq %r15, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 792(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %rbx, %r11
    call *%r11
    addq $32, %rsp
    leaq 792(%rbp), %r14
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq $0, %rcx
    cmpq %rcx, %r13
    setne %al
    movzbl %al, %eax
    movl %eax, 384(%rbp)
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl 384(%rbp), %eax
    movl %ebx, %ecx
    movl %eax, %ebx
    andl %ecx, %ebx
    testl %ebx, %ebx
    jne .L29_56
    jmp .L29_57
.L29_56:
    movq 104(%rbp), %rax
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
    movq 104(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L29_53
.L29_57:
    movq %r14, %r10
    movq (%r10), %rbx
    movq 104(%rbp), %r10
    movq %rbx, (%r10)
    movq 104(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 392(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L29_53:
    movq 104(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L29_59
    jmp .L29_58
.L29_59:
    movq 104(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 1216(%rbp), %r12
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
    subq $48, %rsp
    movq 152(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 120(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_27environment_windows_release
    addq $48, %rsp
    leaq 776(%rbp), %rbx
    movq 152(%rbp), %r10
    movq (%r10), %r13
    movq 152(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_144(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq 144(%rbp), %r10
    movq (%r10), %r13
    movq 144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L29_61
    jmp .L29_60
.L29_61:
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
.L29_60:
    subq $32, %rsp
    movq 168(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call FreeEnvironmentStringsW
    addq $32, %rsp
    movl %eax, %ebx
    movq %r12, %rsi
    movq 1304(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1304(%rbp), %rax
    movq 1480(%rbp), %rdi
    movq 1472(%rbp), %rsi
    movdqu 1456(%rbp), %xmm6
    movdqu 1440(%rbp), %xmm7
    movdqu 1424(%rbp), %xmm8
    movdqu 1408(%rbp), %xmm9
    movdqu 1392(%rbp), %xmm10
    movdqu 1376(%rbp), %xmm11
    movdqu 1360(%rbp), %xmm12
    movdqu 1344(%rbp), %xmm13
    movdqu 1328(%rbp), %xmm14
    movdqu 1312(%rbp), %xmm15
    movq 1296(%rbp), %rbx
    movq 1288(%rbp), %r12
    movq 1280(%rbp), %r13
    movq 1272(%rbp), %r14
    movq 1264(%rbp), %r15
    leaq 1488(%rbp), %rsp
    popq %rbp
    ret
.L29_62:
.L29_58:
    movq 104(%rbp), %r10
    movq 112(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 760(%rbp), %rax
    movq %rax, 368(%rbp)
    leaq 744(%rbp), %r12
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 360(%rbp)
    movq 152(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 352(%rbp)
    movq 112(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 344(%rbp)
    movq $0, %rax
    movq %rax, %r15
    movq $0, %rax
    movq %rax, 96(%rbp)
.L29_63:
    movq $2, %rcx
    movq %r15, %r14
    imulq %rcx, %r14
    movq 168(%rbp), %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movzwl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L29_65
.L29_64:
    movq %r15, %rbx
.L29_66:
    movq $2, %rcx
    movq %rbx, %r13
    imulq %rcx, %r13
    movq 168(%rbp), %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movzwl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L29_68
.L29_67:
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_145(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r13, %rbx
    jmp .L29_66
.L29_68:
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_146(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 376(%rbp)
    movq 376(%rbp), %rax
    movq %r15, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_147(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r12, %r10
    movq %r14, (%r10)
    movq 360(%rbp), %r10
    movq %r13, (%r10)
    movq %r12, %r10
    movq 368(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rax, %r13
.L29_69:
    movq 120(%rbp), %rcx
    cmpq %rcx, %r13
    jb .L29_70
.L29_139:
    movl $0, %eax
    movl %eax, %ebx
    jmp .L29_72
.L29_70:
    movq 152(%rbp), %r10
    movq (%r10), %rbx
    movq 352(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_148(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $16, %rcx
    movq %r13, %r14
    imulq %rcx, %r14
    addq %r14, %rbx
    subq $64, %rsp
    movq 368(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_27environment_windows_compare
    addq $64, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L29_74
.L29_73:
    movl $1, %eax
    movl %eax, %ebx
    jmp .L29_72
.L29_76:
    jmp .L29_75
.L29_74:
.L29_75:
.L29_71:
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r13
    jmp .L29_69
.L29_72:
    movzbl %bl, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L29_78
.L29_77:
    movq 112(%rbp), %r10
    movq (%r10), %rbx
    movq 344(%rbp), %r10
    movq (%r10), %r13
    movq 96(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_149(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 96(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    addq %r13, %rbx
    movq 368(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 96(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    jmp .L29_79
.L29_78:
    movq 96(%rbp), %rax
    movq %rax, %rbx
.L29_79:
    movq 376(%rbp), %rax
    movq %rax, %r15
    movq %rbx, %rax
    movq %rax, 96(%rbp)
    jmp .L29_63
.L29_65:
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 152(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 96(%rbp), %rax
    movq %rax, 88(%rbp)
    movq $0, %rax
    movq %rax, 80(%rbp)
.L29_80:
    movq 80(%rbp), %rax
    movq 120(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L29_83
.L29_81:
    movq 112(%rbp), %r10
    movq (%r10), %r15
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 336(%rbp)
    movq 88(%rbp), %rax
    movq 336(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_151(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 88(%rbp), %rax
    movq $16, %rcx
    imulq %rcx, %rax
    movq %rax, 328(%rbp)
    movq 328(%rbp), %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, 320(%rbp)
    movq 152(%rbp), %r10
    movq (%r10), %r15
    movq %r12, %r10
    movq (%r10), %r14
    movq 80(%rbp), %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_151(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 80(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq %r14, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq 320(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 88(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
.L29_82:
    movq 80(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r14, %rax
    movq %rax, 88(%rbp)
    movq %r15, %rax
    movq %rax, 80(%rbp)
    jmp .L29_80
.L29_83:
    leaq 728(%rbp), %rax
    movq %rax, 312(%rbp)
    movq 112(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 304(%rbp)
    movq $1, %rax
    movq %rax, 72(%rbp)
.L29_84:
    movq 72(%rbp), %rax
    movq 88(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L29_87
.L29_85:
    movq 112(%rbp), %r10
    movq (%r10), %r15
    movq 304(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 296(%rbp)
    movq 72(%rbp), %rax
    movq 296(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_153(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 72(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq 312(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 72(%rbp), %rax
    movq %rax, %r13
.L29_88:
    movq $0, %rcx
    cmpq %rcx, %r13
    seta %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L29_91
    jmp .L29_140
.L29_140:
    movl %r12d, %r14d
    jmp .L29_92
.L29_91:
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_154(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 296(%rbp), %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_154(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $16, %rcx
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    subq $64, %rsp
    movq 312(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r12, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_27environment_windows_compare
    addq $64, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    setl %al
    movzbl %al, %r14d
.L29_92:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L29_89
    jmp .L29_90
.L29_89:
    movq 296(%rbp), %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_155(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
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
    leaq .Ltext_155(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq 296(%rbp), %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_155(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
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
    jmp .L29_88
.L29_90:
    movq 296(%rbp), %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_157(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $16, %rcx
    movq %r13, %rbx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq 312(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L29_86:
    movq 72(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, 72(%rbp)
    jmp .L29_84
.L29_87:
    movq 112(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 280(%rbp)
    leaq 720(%rbp), %rax
    movq %rax, 264(%rbp)
    leaq 704(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 256(%rbp)
    movq $1, %rax
    movq %rax, %r14
    movq $0, %rax
    movq %rax, %r15
.L29_93:
    movq 88(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L29_96
.L29_94:
    movq 112(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 288(%rbp)
    movq 280(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 272(%rbp)
    movq 272(%rbp), %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_158(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $16, %rcx
    movq %r15, %r12
    imulq %rcx, %r12
    movq 288(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq 264(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %r12d
    movq 264(%rbp), %r10
    movq (%r10), %r13
    movq 24(%rbp), %r10
    movq %r13, (%r10)
    movq 256(%rbp), %r10
    movb %r12b, (%r10)
    movq 256(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L29_97
    jmp .L29_98
.L29_97:
    jmp .L29_99
.L29_98:
    leaq 1216(%rbp), %rax
    movq %rax, 248(%rbp)
    movq 248(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_118(%rip), %r13
    leaq 688(%rbp), %r14
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
    movq 248(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 672(%rbp), %r12
    movq 272(%rbp), %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_158(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 288(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq 144(%rbp), %r10
    movq (%r10), %r13
    movq 144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L29_101
    jmp .L29_100
.L29_101:
    movq $16, %rcx
    movq %r15, %rbx
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
.L29_100:
    subq $48, %rsp
    movq 152(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 120(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_27environment_windows_release
    addq $48, %rsp
    leaq 656(%rbp), %rbx
    movq 152(%rbp), %r10
    movq (%r10), %r12
    movq 152(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_158(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 144(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L29_103
    jmp .L29_102
.L29_103:
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
.L29_102:
    subq $32, %rsp
    movq 168(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call FreeEnvironmentStringsW
    addq $32, %rsp
    movl %eax, %ebx
    movq 248(%rbp), %rsi
    movq 1304(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1304(%rbp), %rax
    movq 1480(%rbp), %rdi
    movq 1472(%rbp), %rsi
    movdqu 1456(%rbp), %xmm6
    movdqu 1440(%rbp), %xmm7
    movdqu 1424(%rbp), %xmm8
    movdqu 1408(%rbp), %xmm9
    movdqu 1392(%rbp), %xmm10
    movdqu 1376(%rbp), %xmm11
    movdqu 1360(%rbp), %xmm12
    movdqu 1344(%rbp), %xmm13
    movdqu 1328(%rbp), %xmm14
    movdqu 1312(%rbp), %xmm15
    movq 1296(%rbp), %rbx
    movq 1288(%rbp), %r12
    movq 1280(%rbp), %r13
    movq 1272(%rbp), %r14
    movq 1264(%rbp), %r15
    leaq 1488(%rbp), %rsp
    popq %rbp
    ret
.L29_104:
.L29_99:
.L29_95:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %r13, %r14
    movq %rbx, %r15
    jmp .L29_93
.L29_96:
    leaq 640(%rbp), %rax
    movq %rax, 64(%rbp)
    movq 88(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jbe .L29_106
.L29_105:
    movq %r14, %rax
    movq %rax, 56(%rbp)
    jmp .L29_107
.L29_106:
    movq $2, %rax
    movq %rax, 56(%rbp)
.L29_107:
    leaq 592(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 56(%rbp), %rax
    movabsq $2305843009213693952, %rcx
    cmpq %rcx, %rax
    jbe .L29_109
.L29_108:
    movq 48(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %r13
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
    movq 48(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L29_110
.L29_109:
    movq 56(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq 144(%rbp), %r10
    movq (%r10), %r13
    movq 144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L29_111
    jmp .L29_112
.L29_112:
    leaq .Ltext_159(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L29_111:
    movq %r15, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq $2, %rax
    movq %rax, 24(%rsp)
    leaq 568(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %rbx, %r11
    call *%r11
    addq $32, %rsp
    leaq 568(%rbp), %r14
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, 240(%rbp)
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl 240(%rbp), %eax
    movl %ebx, %ecx
    movl %eax, %ebx
    andl %ecx, %ebx
    testl %ebx, %ebx
    jne .L29_113
    jmp .L29_114
.L29_113:
    movq 48(%rbp), %rax
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
    movq 48(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L29_110
.L29_114:
    movq %r14, %r10
    movq (%r10), %rbx
    movq 48(%rbp), %r10
    movq %rbx, (%r10)
    movq 48(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 56(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 48(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L29_110:
    movq 48(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L29_116
    jmp .L29_115
.L29_116:
    movq 48(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 1216(%rbp), %rax
    movq %rax, 232(%rbp)
    movq 232(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 232(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 552(%rbp), %rbx
    movq 112(%rbp), %r10
    movq (%r10), %r13
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_159(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq 144(%rbp), %r10
    movq (%r10), %r13
    movq 144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L29_118
    jmp .L29_117
.L29_118:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
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
    movq %r12, %r11
    call *%r11
    addq $48, %rsp
.L29_117:
    subq $48, %rsp
    movq 152(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 120(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_27environment_windows_release
    addq $48, %rsp
    leaq 536(%rbp), %rbx
    movq 152(%rbp), %r10
    movq (%r10), %r12
    movq 152(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_159(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 144(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L29_120
    jmp .L29_119
.L29_120:
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
.L29_119:
    subq $32, %rsp
    movq 168(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call FreeEnvironmentStringsW
    addq $32, %rsp
    movl %eax, %ebx
    movq 232(%rbp), %rsi
    movq 1304(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1304(%rbp), %rax
    movq 1480(%rbp), %rdi
    movq 1472(%rbp), %rsi
    movdqu 1456(%rbp), %xmm6
    movdqu 1440(%rbp), %xmm7
    movdqu 1424(%rbp), %xmm8
    movdqu 1408(%rbp), %xmm9
    movdqu 1392(%rbp), %xmm10
    movdqu 1376(%rbp), %xmm11
    movdqu 1360(%rbp), %xmm12
    movdqu 1344(%rbp), %xmm13
    movdqu 1328(%rbp), %xmm14
    movdqu 1312(%rbp), %xmm15
    movq 1296(%rbp), %rbx
    movq 1288(%rbp), %r12
    movq 1280(%rbp), %r13
    movq 1272(%rbp), %r14
    movq 1264(%rbp), %r15
    leaq 1488(%rbp), %rsp
    popq %rbp
    ret
.L29_121:
.L29_115:
    movq 48(%rbp), %r10
    movq 64(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 112(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 224(%rbp)
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq 64(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 208(%rbp)
    movq 64(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 200(%rbp)
    movq $0, %rax
    movq %rax, %r15
    movq $0, %rax
    movq %rax, %r13
.L29_122:
    movq 88(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L29_125
.L29_123:
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_160(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $16, %rcx
    movq %r13, %r14
    imulq %rcx, %r14
    movq 224(%rbp), %rax
    movq %r14, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 216(%rbp)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r15, %rax
    movq %rax, 40(%rbp)
    movq $0, %rax
    movq %rax, 32(%rbp)
.L29_126:
    movq 32(%rbp), %rax
    cmpq %r14, %rax
    jae .L29_129
.L29_127:
    movq 32(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq 216(%rbp), %rax
    movq %r15, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzwl (%r10), %r15d
    movq 40(%rbp), %rax
    movq 200(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_161(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 40(%rbp), %rax
    movq $2, %rcx
    movq %rax, %rbx
    imulq %rcx, %rbx
    movq 208(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movzwl %r15w, %r15d
    movq %rbx, %r10
    movw %r15w, (%r10)
    movq 40(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
.L29_128:
    movq 32(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %rbx, %rax
    movq %rax, 40(%rbp)
    movq %r15, %rax
    movq %rax, 32(%rbp)
    jmp .L29_126
.L29_129:
.L29_124:
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq 40(%rbp), %rax
    movq %rax, %r15
    movq %rbx, %r13
    jmp .L29_122
.L29_125:
    movq 64(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 192(%rbp)
    movq 64(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_163(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $2, %rcx
    movq %r15, %r12
    imulq %rcx, %r12
    movq 192(%rbp), %rax
    addq %r12, %rax
    movq %rax, 184(%rbp)
    movl $0, %eax
    movq 184(%rbp), %r10
    movw %ax, (%r10)
    leaq 1216(%rbp), %rax
    movq %rax, 176(%rbp)
    movq 64(%rbp), %r10
    movq 176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 176(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 520(%rbp), %r12
    movq 112(%rbp), %r10
    movq (%r10), %r13
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_164(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
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
    movq 144(%rbp), %r10
    movq (%r10), %r13
    movq 144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L29_131
    jmp .L29_130
.L29_131:
    movq $16, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
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
    movq %r15, %r11
    call *%r11
    addq $48, %rsp
.L29_130:
    subq $48, %rsp
    movq 152(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 120(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_27environment_windows_release
    addq $48, %rsp
    leaq 504(%rbp), %rbx
    movq 152(%rbp), %r10
    movq (%r10), %r12
    movq 152(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_164(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 144(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L29_133
    jmp .L29_132
.L29_133:
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
.L29_132:
    subq $32, %rsp
    movq 168(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call FreeEnvironmentStringsW
    addq $32, %rsp
    movl %eax, %ebx
    movq 176(%rbp), %rsi
    movq 1304(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1304(%rbp), %rax
    movq 1480(%rbp), %rdi
    movq 1472(%rbp), %rsi
    movdqu 1456(%rbp), %xmm6
    movdqu 1440(%rbp), %xmm7
    movdqu 1424(%rbp), %xmm8
    movdqu 1408(%rbp), %xmm9
    movdqu 1392(%rbp), %xmm10
    movdqu 1376(%rbp), %xmm11
    movdqu 1360(%rbp), %xmm12
    movdqu 1344(%rbp), %xmm13
    movdqu 1328(%rbp), %xmm14
    movdqu 1312(%rbp), %xmm15
    movq 1296(%rbp), %rbx
    movq 1288(%rbp), %r12
    movq 1280(%rbp), %r13
    movq 1272(%rbp), %r14
    movq 1264(%rbp), %r15
    leaq 1488(%rbp), %rsp
    popq %rbp
    ret
.L29_134:
    leaq 864(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 488(%rbp), %r13
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
    leaq .Ltext_164(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
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
    jne .L29_136
    jmp .L29_135
.L29_136:
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
.L29_135:
    leaq 1168(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_27environment_windows_release
    addq $48, %rsp
    leaq 1168(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 472(%rbp), %r13
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
    leaq .Ltext_164(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
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
    jne .L29_138
    jmp .L29_137
.L29_138:
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
.L29_137:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call FreeEnvironmentStringsW
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_164(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_27environment_windows_release
lb_process_27environment_windows_release:
    .seh_proc lb_process_27environment_windows_release
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
    movq 336(%rbp), %r10
    leaq 88(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 344(%rbp), %rax
    movq %rax, 72(%rbp)
    leaq 72(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 48(%rbp)
    leaq 88(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    leaq 56(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 8(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L30_1:
    movq 48(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L30_4
.L30_2:
    movq 40(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 32(%rbp)
    movq %r13, %r10
    movq (%r10), %rbx
    cmpq %rbx, %r15
    jb 1f
    leaq .Ltext_165(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $16, %rcx
    movq %r15, %rbx
    imulq %rcx, %rbx
    movq 32(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 24(%rbp)
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
    leaq .Ltext_165(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 16(%rbp), %r10
    movq %r14, (%r10)
    movq 8(%rbp), %r10
    movq %rbx, (%r10)
    movq 24(%rbp), %r10
    movq (%r10), %rbx
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L30_6
    jmp .L30_5
.L30_6:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 16(%rbp), %r10
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
.L30_5:
.L30_3:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r15
    jmp .L30_1
.L30_4:
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

    .p2align 4
    .globl lb_process_12command_text
lb_process_12command_text:
    .seh_proc lb_process_12command_text
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
    movq 424(%rbp), %r10
    leaq 112(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 112(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_utf8_valid
    addq $48, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L31_2
.L31_1:
    leaq 128(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_166(%rip), %r13
    leaq 96(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 216(%rbp), %rdi
    movq $48, %rdx
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
.L31_4:
    jmp .L31_3
.L31_2:
.L31_3:
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rax
    movq %rax, %r14
.L31_5:
    cmpq %r13, %r14
    jae .L31_8
.L31_6:
    movq %r12, %r15
    addq %r14, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movzbl %r15b, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L31_10
.L31_9:
    leaq 128(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_167(%rip), %r13
    leaq 80(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $37, %rax
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
    movq 216(%rbp), %rdi
    movq $48, %rdx
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
.L31_12:
    jmp .L31_11
.L31_10:
.L31_11:
.L31_7:
    movq $1, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r14
    jmp .L31_5
.L31_8:
    leaq 64(%rbp), %rax
    movq %rax, 8(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_memory_heap(%rip), %r14
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 16(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_copy
    addq $48, %rsp
    leaq 16(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L31_14
    jmp .L31_13
.L31_14:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 128(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq 8(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %rsi
    movq 216(%rbp), %rdi
    movq $48, %rdx
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
.L31_15:
.L31_13:
    leaq 128(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq 8(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rsi
    movq 216(%rbp), %rdi
    movq $48, %rdx
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
.L31_16:
    leaq 64(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_168(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_Command_init
lb_process_Command_init:
    .seh_proc lb_process_Command_init
    pushq %rbp
    .seh_pushreg %rbp
    subq $1216, %rsp
    .seh_stackalloc 1216
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 1032(%rbp)
    movq %rdi, 1208(%rbp)
    .seh_savereg %rdi, 1208
    movq %rsi, 1200(%rbp)
    .seh_savereg %rsi, 1200
    movdqu %xmm6, 1184(%rbp)
    .seh_savexmm %xmm6, 1184
    movdqu %xmm7, 1168(%rbp)
    .seh_savexmm %xmm7, 1168
    movdqu %xmm8, 1152(%rbp)
    .seh_savexmm %xmm8, 1152
    movdqu %xmm9, 1136(%rbp)
    .seh_savexmm %xmm9, 1136
    movdqu %xmm10, 1120(%rbp)
    .seh_savexmm %xmm10, 1120
    movdqu %xmm11, 1104(%rbp)
    .seh_savexmm %xmm11, 1104
    movdqu %xmm12, 1088(%rbp)
    .seh_savexmm %xmm12, 1088
    movdqu %xmm13, 1072(%rbp)
    .seh_savexmm %xmm13, 1072
    movdqu %xmm14, 1056(%rbp)
    .seh_savexmm %xmm14, 1056
    movdqu %xmm15, 1040(%rbp)
    .seh_savexmm %xmm15, 1040
    movq %rbx, 1024(%rbp)
    .seh_savereg %rbx, 1024
    movq %r12, 1016(%rbp)
    .seh_savereg %r12, 1016
    movq %r13, 1008(%rbp)
    .seh_savereg %r13, 1008
    movq %r14, 1000(%rbp)
    .seh_savereg %r14, 1000
    movq %r15, 992(%rbp)
    .seh_savereg %r15, 992
    .seh_endprologue
    movq %rcx, 1232(%rbp)
    movq %rdx, 1240(%rbp)
    movq %r8, 1248(%rbp)
    movq %r9, 1256(%rbp)
    movq 1240(%rbp), %rax
    movq %rax, 952(%rbp)
    movq 1248(%rbp), %r10
    leaq 936(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1256(%rbp), %r10
    leaq 920(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1264(%rbp), %r10
    leaq 904(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1272(%rbp), %rax
    movq %rax, 888(%rbp)
    movq 1280(%rbp), %r10
    leaq 864(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 952(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 96(%rbp)
    leaq 936(%rbp), %rax
    movq %rax, 168(%rbp)
    movq 168(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L32_64
    jmp .L32_4
.L32_64:
    movl %r12d, %r14d
    jmp .L32_5
.L32_4:
    leaq 888(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $1, %rcx
    cmpq %rcx, %r12
    setb %al
    movzbl %al, %r14d
.L32_5:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L32_65
    jmp .L32_6
.L32_65:
    movl %r12d, %r14d
    jmp .L32_7
.L32_6:
    leaq 888(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $16777216, %rcx
    cmpq %rcx, %r12
    seta %al
    movzbl %al, %r14d
.L32_7:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L32_1
    jmp .L32_2
.L32_1:
    leaq 960(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_169(%rip), %r12
    leaq 848(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $58, %rax
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
    movq 1032(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1032(%rbp), %rax
    movq 1208(%rbp), %rdi
    movq 1200(%rbp), %rsi
    movdqu 1184(%rbp), %xmm6
    movdqu 1168(%rbp), %xmm7
    movdqu 1152(%rbp), %xmm8
    movdqu 1136(%rbp), %xmm9
    movdqu 1120(%rbp), %xmm10
    movdqu 1104(%rbp), %xmm11
    movdqu 1088(%rbp), %xmm12
    movdqu 1072(%rbp), %xmm13
    movdqu 1056(%rbp), %xmm14
    movdqu 1040(%rbp), %xmm15
    movq 1024(%rbp), %rbx
    movq 1016(%rbp), %r12
    movq 1008(%rbp), %r13
    movq 1000(%rbp), %r14
    movq 992(%rbp), %r15
    leaq 1216(%rbp), %rsp
    popq %rbp
    ret
.L32_8:
    jmp .L32_3
.L32_2:
.L32_3:
    leaq lb_memory_heap(%rip), %rax
    movq %rax, 160(%rbp)
    leaq 832(%rbp), %r14
    movq 160(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 792(%rbp), %rax
    movq %rax, 88(%rbp)
    movq %r14, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L32_9
    jmp .L32_10
.L32_10:
    leaq .Ltext_170(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L32_9:
    movq %r14, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq $160, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 768(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r12, %r11
    call *%r11
    addq $32, %rsp
    leaq 768(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L32_11
    jmp .L32_12
.L32_12:
    movq 88(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_5(%rip), %r12
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
    movq 88(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L32_13
.L32_11:
    movq %rbx, %r10
    movq (%r10), %r12
    leaq 608(%rbp), %r14
    movq %r14, %rdi
    xorl %esi, %esi
    movq $160, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memset
    addq $32, %rsp
    leaq 888(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $48, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $136, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $-1, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    movq %r14, %rsi
    movq $160, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 88(%rbp), %r10
    movq %r12, (%r10)
    movq 88(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L32_13:
    movq 88(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L32_15
    jmp .L32_14
.L32_15:
    movq 88(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 960(%rbp), %r12
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
    movq 1032(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1032(%rbp), %rax
    movq 1208(%rbp), %rdi
    movq 1200(%rbp), %rsi
    movdqu 1184(%rbp), %xmm6
    movdqu 1168(%rbp), %xmm7
    movdqu 1152(%rbp), %xmm8
    movdqu 1136(%rbp), %xmm9
    movdqu 1120(%rbp), %xmm10
    movdqu 1104(%rbp), %xmm11
    movdqu 1088(%rbp), %xmm12
    movdqu 1072(%rbp), %xmm13
    movdqu 1056(%rbp), %xmm14
    movdqu 1040(%rbp), %xmm15
    movq 1024(%rbp), %rbx
    movq 1016(%rbp), %r12
    movq 1008(%rbp), %r13
    movq 1000(%rbp), %r14
    movq 992(%rbp), %r15
    leaq 1216(%rbp), %rsp
    popq %rbp
    ret
.L32_16:
.L32_14:
    movq 88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 152(%rbp)
    movq 152(%rbp), %rax
    movq $56, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    subq $48, %rsp
    movq 168(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 560(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_12command_text
    addq $48, %rsp
    leaq 560(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L32_18
    jmp .L32_17
.L32_18:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq 960(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 152(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15command_dispose
    addq $32, %rsp
    movq %r13, %rsi
    movq 1032(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1032(%rbp), %rax
    movq 1208(%rbp), %rdi
    movq 1200(%rbp), %rsi
    movdqu 1184(%rbp), %xmm6
    movdqu 1168(%rbp), %xmm7
    movdqu 1152(%rbp), %xmm8
    movdqu 1136(%rbp), %xmm9
    movdqu 1120(%rbp), %xmm10
    movdqu 1104(%rbp), %xmm11
    movdqu 1088(%rbp), %xmm12
    movdqu 1072(%rbp), %xmm13
    movdqu 1056(%rbp), %xmm14
    movdqu 1040(%rbp), %xmm15
    movq 1024(%rbp), %rbx
    movq 1016(%rbp), %r12
    movq 1008(%rbp), %r13
    movq 1000(%rbp), %r14
    movq 992(%rbp), %r15
    leaq 1216(%rbp), %rsp
    popq %rbp
    ret
.L32_19:
.L32_17:
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 152(%rbp), %rax
    movq $72, %rcx
    addq %rcx, %rax
    movq %rax, 80(%rbp)
    leaq 904(%rbp), %r12
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 512(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_12command_text
    addq $48, %rsp
    leaq 512(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L32_21
    jmp .L32_20
.L32_21:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq 960(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 152(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15command_dispose
    addq $32, %rsp
    movq %r13, %rsi
    movq 1032(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1032(%rbp), %rax
    movq 1208(%rbp), %rdi
    movq 1200(%rbp), %rsi
    movdqu 1184(%rbp), %xmm6
    movdqu 1168(%rbp), %xmm7
    movdqu 1152(%rbp), %xmm8
    movdqu 1136(%rbp), %xmm9
    movdqu 1120(%rbp), %xmm10
    movdqu 1104(%rbp), %xmm11
    movdqu 1088(%rbp), %xmm12
    movdqu 1072(%rbp), %xmm13
    movdqu 1056(%rbp), %xmm14
    movdqu 1040(%rbp), %xmm15
    movq 1024(%rbp), %rbx
    movq 1016(%rbp), %r12
    movq 1008(%rbp), %r13
    movq 1000(%rbp), %r14
    movq 992(%rbp), %r15
    leaq 1216(%rbp), %rsp
    popq %rbp
    ret
.L32_22:
.L32_20:
    movq %r15, %r10
    movq 80(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 152(%rbp), %rax
    movq $88, %rcx
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    leaq 920(%rbp), %rax
    movq %rax, 144(%rbp)
    movq 144(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 64(%rbp)
    leaq 464(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 64(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L32_24
.L32_23:
    movq 56(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $208273409, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %r15
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
    movq 56(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L32_25
.L32_24:
    movq 64(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq 160(%rbp), %r10
    movq (%r10), %rbx
    movq 160(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L32_26
    jmp .L32_27
.L32_27:
    leaq .Ltext_171(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L32_26:
    movq %r13, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r15, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 440(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r12, %r11
    call *%r11
    addq $32, %rsp
    leaq 440(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq $0, %rcx
    cmpq %rcx, %r15
    setne %al
    movzbl %al, %eax
    movl %eax, 136(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl 136(%rbp), %eax
    movl %r12d, %ecx
    movl %eax, %r12d
    andl %ecx, %r12d
    testl %r12d, %r12d
    jne .L32_28
    jmp .L32_29
.L32_28:
    movq 56(%rbp), %rax
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
    movq 56(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L32_25
.L32_29:
    movq %r14, %r10
    movq (%r10), %rbx
    movq 56(%rbp), %r10
    movq %rbx, (%r10)
    movq 56(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 64(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 56(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L32_25:
    movq 56(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L32_31
    jmp .L32_30
.L32_31:
    movq 56(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 960(%rbp), %r12
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
    subq $32, %rsp
    movq 152(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15command_dispose
    addq $32, %rsp
    movq %r12, %rsi
    movq 1032(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1032(%rbp), %rax
    movq 1208(%rbp), %rdi
    movq 1200(%rbp), %rsi
    movdqu 1184(%rbp), %xmm6
    movdqu 1168(%rbp), %xmm7
    movdqu 1152(%rbp), %xmm8
    movdqu 1136(%rbp), %xmm9
    movdqu 1120(%rbp), %xmm10
    movdqu 1104(%rbp), %xmm11
    movdqu 1088(%rbp), %xmm12
    movdqu 1072(%rbp), %xmm13
    movdqu 1056(%rbp), %xmm14
    movdqu 1040(%rbp), %xmm15
    movq 1024(%rbp), %rbx
    movq 1016(%rbp), %r12
    movq 1008(%rbp), %r13
    movq 1000(%rbp), %r14
    movq 992(%rbp), %r15
    leaq 1216(%rbp), %rsp
    popq %rbp
    ret
.L32_32:
.L32_30:
    movq 56(%rbp), %r10
    movq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 72(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 392(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 152(%rbp), %rax
    movq $104, %rcx
    addq %rcx, %rax
    movq %rax, 128(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L32_33:
    movq 64(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L32_36
.L32_34:
    movq 72(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    jb 1f
    leaq .Ltext_172(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %r14, %r15
    imulq %rcx, %r15
    movq %r13, %rax
    addq %r15, %rax
    movq %rax, 8(%rbp)
    movq 144(%rbp), %r10
    movq (%r10), %r13
    movq $16, %rcx
    movq %r14, %r15
    imulq %rcx, %r15
    addq %r15, %r13
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 392(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_12command_text
    addq $48, %rsp
    movq %r12, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L32_38
    jmp .L32_37
.L32_38:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 960(%rbp), %r12
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
    subq $32, %rsp
    movq 152(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15command_dispose
    addq $32, %rsp
    movq %r12, %rsi
    movq 1032(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1032(%rbp), %rax
    movq 1208(%rbp), %rdi
    movq 1200(%rbp), %rsi
    movdqu 1184(%rbp), %xmm6
    movdqu 1168(%rbp), %xmm7
    movdqu 1152(%rbp), %xmm8
    movdqu 1136(%rbp), %xmm9
    movdqu 1120(%rbp), %xmm10
    movdqu 1104(%rbp), %xmm11
    movdqu 1088(%rbp), %xmm12
    movdqu 1072(%rbp), %xmm13
    movdqu 1056(%rbp), %xmm14
    movdqu 1040(%rbp), %xmm15
    movq 1024(%rbp), %rbx
    movq 1016(%rbp), %r12
    movq 1008(%rbp), %r13
    movq 1000(%rbp), %r14
    movq 992(%rbp), %r15
    leaq 1216(%rbp), %rsp
    popq %rbp
    ret
.L32_39:
.L32_37:
    movq 0(%rbp), %r10
    movq (%r10), %r13
    movq 8(%rbp), %r10
    movq %r13, (%r10)
    movq 128(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_173(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 128(%rbp), %r10
    movq %r13, (%r10)
.L32_35:
    movq $1, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r14
    jmp .L32_33
.L32_36:
    leaq 864(%rbp), %r12
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L32_43
    jmp .L32_41
.L32_43:
    leaq 376(%rbp), %rax
    movq %rax, 120(%rbp)
    movq %r12, %r10
    movq 120(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L32_40:
    movq 152(%rbp), %rax
    movq $112, %rcx
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq 120(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 40(%rbp)
    leaq 328(%rbp), %rax
    movq %rax, 32(%rbp)
    movq 40(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L32_45
.L32_44:
    movq 32(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %rbx
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 32(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L32_46
.L32_45:
    movq 40(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq 160(%rbp), %r10
    movq (%r10), %rbx
    movq 160(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L32_47
    jmp .L32_48
.L32_48:
    leaq .Ltext_174(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L32_47:
    movq %r12, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 304(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r14, %r11
    call *%r11
    addq $32, %rsp
    leaq 304(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq $0, %rcx
    cmpq %rcx, %r13
    setne %al
    movzbl %al, %eax
    movl %eax, 112(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl 112(%rbp), %eax
    movl %r14d, %ecx
    movl %eax, %r14d
    andl %ecx, %r14d
    testl %r14d, %r14d
    jne .L32_49
    jmp .L32_50
.L32_49:
    movq 32(%rbp), %rax
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
    movq 32(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L32_46
.L32_50:
    movq %r15, %r10
    movq (%r10), %rbx
    movq 32(%rbp), %r10
    movq %rbx, (%r10)
    movq 32(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 40(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 32(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L32_46:
    movq 32(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L32_52
    jmp .L32_51
.L32_52:
    movq 32(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 960(%rbp), %r12
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
    subq $32, %rsp
    movq 152(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15command_dispose
    addq $32, %rsp
    movq %r12, %rsi
    movq 1032(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1032(%rbp), %rax
    movq 1208(%rbp), %rdi
    movq 1200(%rbp), %rsi
    movdqu 1184(%rbp), %xmm6
    movdqu 1168(%rbp), %xmm7
    movdqu 1152(%rbp), %xmm8
    movdqu 1136(%rbp), %xmm9
    movdqu 1120(%rbp), %xmm10
    movdqu 1104(%rbp), %xmm11
    movdqu 1088(%rbp), %xmm12
    movdqu 1072(%rbp), %xmm13
    movdqu 1056(%rbp), %xmm14
    movdqu 1040(%rbp), %xmm15
    movq 1024(%rbp), %rbx
    movq 1016(%rbp), %r12
    movq 1008(%rbp), %r13
    movq 1000(%rbp), %r14
    movq 992(%rbp), %r15
    leaq 1216(%rbp), %rsp
    popq %rbp
    ret
.L32_53:
.L32_51:
    movq 32(%rbp), %r10
    movq 48(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 48(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 256(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 152(%rbp), %rax
    movq $128, %rcx
    addq %rcx, %rax
    movq %rax, 104(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L32_54:
    movq 40(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L32_57
.L32_55:
    movq 48(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    jb 1f
    leaq .Ltext_175(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $8, %rcx
    movq %r14, %r15
    imulq %rcx, %r15
    movq %r13, %rax
    addq %r15, %rax
    movq %rax, 24(%rbp)
    movq 120(%rbp), %r10
    movq (%r10), %r13
    movq $16, %rcx
    movq %r14, %r15
    imulq %rcx, %r15
    addq %r15, %r13
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 256(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_12command_text
    addq $48, %rsp
    movq %r12, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L32_59
    jmp .L32_58
.L32_59:
    movq 16(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 960(%rbp), %r12
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
    subq $32, %rsp
    movq 152(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15command_dispose
    addq $32, %rsp
    movq %r12, %rsi
    movq 1032(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1032(%rbp), %rax
    movq 1208(%rbp), %rdi
    movq 1200(%rbp), %rsi
    movdqu 1184(%rbp), %xmm6
    movdqu 1168(%rbp), %xmm7
    movdqu 1152(%rbp), %xmm8
    movdqu 1136(%rbp), %xmm9
    movdqu 1120(%rbp), %xmm10
    movdqu 1104(%rbp), %xmm11
    movdqu 1088(%rbp), %xmm12
    movdqu 1072(%rbp), %xmm13
    movdqu 1056(%rbp), %xmm14
    movdqu 1040(%rbp), %xmm15
    movq 1024(%rbp), %rbx
    movq 1016(%rbp), %r12
    movq 1008(%rbp), %r13
    movq 1000(%rbp), %r14
    movq 992(%rbp), %r15
    leaq 1216(%rbp), %rsp
    popq %rbp
    ret
.L32_60:
.L32_58:
    movq 16(%rbp), %r10
    movq (%r10), %r13
    movq 24(%rbp), %r10
    movq %r13, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_176(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 104(%rbp), %r10
    movq %r13, (%r10)
.L32_56:
    movq $1, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r14
    jmp .L32_54
.L32_57:
    jmp .L32_42
.L32_41:
.L32_42:
    leaq 248(%rbp), %r14
    leaq lb_process_13command_entry(%rip), %rbx
    leaq .Ltext_177(%rip), %r12
    leaq 232(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $7, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 152(%rbp), %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    movq %r13, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 32(%rsp)
    leaq 192(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_thread_spawn
    addq $64, %rsp
    leaq 192(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L32_62
    jmp .L32_61
.L32_62:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 960(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 152(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15command_dispose
    addq $32, %rsp
    movq %r13, %rsi
    movq 1032(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1032(%rbp), %rax
    movq 1208(%rbp), %rdi
    movq 1200(%rbp), %rsi
    movdqu 1184(%rbp), %xmm6
    movdqu 1168(%rbp), %xmm7
    movdqu 1152(%rbp), %xmm8
    movdqu 1136(%rbp), %xmm9
    movdqu 1120(%rbp), %xmm10
    movdqu 1104(%rbp), %xmm11
    movdqu 1088(%rbp), %xmm12
    movdqu 1072(%rbp), %xmm13
    movdqu 1056(%rbp), %xmm14
    movdqu 1040(%rbp), %xmm15
    movq 1024(%rbp), %rbx
    movq 1016(%rbp), %r12
    movq 1008(%rbp), %r13
    movq 1000(%rbp), %r14
    movq 992(%rbp), %r15
    leaq 1216(%rbp), %rsp
    popq %rbp
    ret
.L32_63:
.L32_61:
    movq %r12, %r10
    movq %r14, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq 152(%rbp), %rax
    movq 96(%rbp), %r10
    movq %rax, (%r10)
    movq 96(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 176(%rbp), %r13
    movq %r14, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 960(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 1032(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1032(%rbp), %rax
    movq 1208(%rbp), %rdi
    movq 1200(%rbp), %rsi
    movdqu 1184(%rbp), %xmm6
    movdqu 1168(%rbp), %xmm7
    movdqu 1152(%rbp), %xmm8
    movdqu 1136(%rbp), %xmm9
    movdqu 1120(%rbp), %xmm10
    movdqu 1104(%rbp), %xmm11
    movdqu 1088(%rbp), %xmm12
    movdqu 1072(%rbp), %xmm13
    movdqu 1056(%rbp), %xmm14
    movdqu 1040(%rbp), %xmm15
    movq 1024(%rbp), %rbx
    movq 1016(%rbp), %r12
    movq 1008(%rbp), %r13
    movq 1000(%rbp), %r14
    movq 992(%rbp), %r15
    leaq 1216(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_process_Command_state
lb_process_Command_state:
    .seh_proc lb_process_Command_state
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
    movq %rax, 24(%rbp)
    leaq 24(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L33_1
    jmp .L33_2
.L33_1:
    jmp .L33_3
.L33_2:
    leaq .Ltext_178(%rip), %rbx
    leaq 8(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $21, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_179(%rip), %rbx
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
    leaq .Ltext_179(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L33_3:
    movq %rbx, %rax
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
.L33_4:
    leaq .Ltext_179(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_Command_11is_finished
lb_process_Command_11is_finished:
    .seh_proc lb_process_Command_11is_finished
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
    movq 208(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 0(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %rbx
    movq $1, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %eax
    movl %eax, %ebx
    movzbl %bl, %ebx
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
.L34_1:
    leaq .Ltext_180(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_Command_revision
lb_process_Command_revision:
    .seh_proc lb_process_Command_revision
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
    movq 208(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 0(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, %rbx
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
.L35_1:
    leaq .Ltext_181(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_Command_9exit_code
lb_process_Command_9exit_code:
    .seh_proc lb_process_Command_9exit_code
    pushq %rbp
    .seh_pushreg %rbp
    subq $272, %rsp
    .seh_stackalloc 272
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 88(%rbp)
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
    movq %rbx, 80(%rbp)
    .seh_savereg %rbx, 80
    movq %r12, 72(%rbp)
    .seh_savereg %r12, 72
    movq %r13, 64(%rbp)
    .seh_savereg %r13, 64
    .seh_endprologue
    movq %rcx, 288(%rbp)
    movq %rdx, 296(%rbp)
    movq %r8, 304(%rbp)
    movq %r9, 312(%rbp)
    movq 296(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq 40(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_11is_finished
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L36_2
.L36_1:
    leaq 24(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 88(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 88(%rbp), %rax
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
    movq 80(%rbp), %rbx
    movq 72(%rbp), %r12
    movq 64(%rbp), %r13
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
.L36_4:
    jmp .L36_3
.L36_2:
.L36_3:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %rbx
    movq $136, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 8(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 48(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rsi
    movq 88(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 88(%rbp), %rax
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
    movq 80(%rbp), %rbx
    movq 72(%rbp), %r12
    movq 64(%rbp), %r13
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
.L36_5:
    leaq .Ltext_182(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_Command_output
lb_process_Command_output:
    .seh_proc lb_process_Command_output
    pushq %rbp
    .seh_pushreg %rbp
    subq $928, %rsp
    .seh_stackalloc 928
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 744(%rbp)
    movq %rdi, 920(%rbp)
    .seh_savereg %rdi, 920
    movq %rsi, 912(%rbp)
    .seh_savereg %rsi, 912
    movdqu %xmm6, 896(%rbp)
    .seh_savexmm %xmm6, 896
    movdqu %xmm7, 880(%rbp)
    .seh_savexmm %xmm7, 880
    movdqu %xmm8, 864(%rbp)
    .seh_savexmm %xmm8, 864
    movdqu %xmm9, 848(%rbp)
    .seh_savexmm %xmm9, 848
    movdqu %xmm10, 832(%rbp)
    .seh_savexmm %xmm10, 832
    movdqu %xmm11, 816(%rbp)
    .seh_savexmm %xmm11, 816
    movdqu %xmm12, 800(%rbp)
    .seh_savexmm %xmm12, 800
    movdqu %xmm13, 784(%rbp)
    .seh_savexmm %xmm13, 784
    movdqu %xmm14, 768(%rbp)
    .seh_savexmm %xmm14, 768
    movdqu %xmm15, 752(%rbp)
    .seh_savexmm %xmm15, 752
    movq %rbx, 736(%rbp)
    .seh_savereg %rbx, 736
    movq %r12, 728(%rbp)
    .seh_savereg %r12, 728
    movq %r13, 720(%rbp)
    .seh_savereg %r13, 720
    movq %r14, 712(%rbp)
    .seh_savereg %r14, 712
    movq %r15, 704(%rbp)
    .seh_savereg %r15, 704
    .seh_endprologue
    movq %rcx, 944(%rbp)
    movq %rdx, 952(%rbp)
    movq %r8, 960(%rbp)
    movq %r9, 968(%rbp)
    movq 952(%rbp), %rax
    movq %rax, 640(%rbp)
    leaq 640(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 56(%rbp)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_lock
    addq $32, %rsp
    leaq 624(%rbp), %rax
    movq %rax, 208(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 200(%rbp)
    movq 200(%rbp), %r10
    movq 208(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_memory_heap(%rip), %r13
    movq %r13, %r10
    movq 200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 584(%rbp), %rax
    movq %rax, 48(%rbp)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %r13
    movq $40, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    leaq 512(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_Builder_create
    addq $32, %rsp
    leaq 512(%rbp), %r15
    movq $64, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L37_2
    jmp .L37_1
.L37_2:
    movq $40, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    leaq 648(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq 208(%rbp), %r10
    movq 200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    movq %r14, %rsi
    movq 744(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 744(%rbp), %rax
    movq 920(%rbp), %rdi
    movq 912(%rbp), %rsi
    movdqu 896(%rbp), %xmm6
    movdqu 880(%rbp), %xmm7
    movdqu 864(%rbp), %xmm8
    movdqu 848(%rbp), %xmm9
    movdqu 832(%rbp), %xmm10
    movdqu 816(%rbp), %xmm11
    movdqu 800(%rbp), %xmm12
    movdqu 784(%rbp), %xmm13
    movdqu 768(%rbp), %xmm14
    movdqu 752(%rbp), %xmm15
    movq 736(%rbp), %rbx
    movq 728(%rbp), %r12
    movq 720(%rbp), %r13
    movq 712(%rbp), %r14
    movq 704(%rbp), %r15
    leaq 928(%rbp), %rsp
    popq %rbp
    ret
.L37_3:
.L37_1:
    movq %r15, %r10
    movq 48(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    leaq 496(%rbp), %rax
    movq %rax, 40(%rbp)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %rbx
    movq $24, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %r13
    movq $40, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $1, %rcx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_183(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_183(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r13, %rax
    jbe .L37_4
.L37_5:
    leaq .Ltext_183(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L37_4:
    leaq 480(%rbp), %rax
    movq %rax, 192(%rbp)
    movq 192(%rbp), %r10
    movq %r12, (%r10)
    movq 192(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 184(%rbp)
    movq 184(%rbp), %r10
    movq %r13, (%r10)
    movq 192(%rbp), %r10
    movq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 40(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 176(%rbp)
    leaq 456(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 168(%rbp)
    leaq .Ltext_184(%rip), %rax
    movq %rax, 88(%rbp)
    leaq 320(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    leaq 288(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 64(%rbp)
    leaq 440(%rbp), %rax
    movq %rax, 160(%rbp)
    movq 160(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 120(%rbp)
    leaq 376(%rbp), %r15
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, 112(%rbp)
    leaq 336(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 104(%rbp)
    leaq .Ltext_184(%rip), %rax
    movq %rax, 152(%rbp)
    leaq 424(%rbp), %rax
    movq %rax, 144(%rbp)
    movq 144(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 136(%rbp)
    leaq 392(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 128(%rbp)
    movq 160(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 96(%rbp)
    movq $0, %rax
    movq %rax, 32(%rbp)
.L37_6:
    movq 176(%rbp), %r10
    movq (%r10), %r12
    movq 32(%rbp), %rax
    cmpq %r12, %rax
    jae .L37_8
.L37_7:
    subq $48, %rsp
    movq 40(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 32(%rbp), %rax
    movq %rax, 16(%rsp)
    leaq 456(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_utf8_decode
    addq $48, %rsp
    movq 168(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L37_12
    jmp .L37_10
.L37_12:
    movq 24(%rbp), %r10
    movq 160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L37_9:
    movq 160(%rbp), %r10
    movl (%r10), %r12d
    movl %r12d, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L37_14
.L37_13:
    movq 152(%rbp), %rax
    movq 144(%rbp), %r10
    movq %rax, (%r10)
    movq $3, %rax
    movq 136(%rbp), %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq 48(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 144(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 392(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_Builder_put
    addq $48, %rsp
    movq 128(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L37_17
    jmp .L37_16
.L37_17:
    leaq 648(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq 0(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_Builder_destroy
    addq $32, %rsp
    movq 208(%rbp), %r10
    movq 200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %r13
    movq $16, %rcx
    addq %rcx, %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    movq %r12, %rsi
    movq 744(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 744(%rbp), %rax
    movq 920(%rbp), %rdi
    movq 912(%rbp), %rsi
    movdqu 896(%rbp), %xmm6
    movdqu 880(%rbp), %xmm7
    movdqu 864(%rbp), %xmm8
    movdqu 848(%rbp), %xmm9
    movdqu 832(%rbp), %xmm10
    movdqu 816(%rbp), %xmm11
    movdqu 800(%rbp), %xmm12
    movdqu 784(%rbp), %xmm13
    movdqu 768(%rbp), %xmm14
    movdqu 752(%rbp), %xmm15
    movq 736(%rbp), %rbx
    movq 728(%rbp), %r12
    movq 720(%rbp), %r13
    movq 712(%rbp), %r14
    movq 704(%rbp), %r15
    leaq 928(%rbp), %rsp
    popq %rbp
    ret
.L37_18:
.L37_16:
    jmp .L37_15
.L37_14:
    movq 40(%rbp), %r10
    movq (%r10), %rbx
    movq 176(%rbp), %r10
    movq (%r10), %r12
    movq 120(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq 32(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_185(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq $1, %rcx
    addq %rcx, %r12
    movq 32(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_185(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_185(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 32(%rbp), %rax
    cmpq %r13, %rax
    jbe .L37_19
.L37_20:
    leaq .Ltext_185(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L37_19:
    movq 32(%rbp), %rax
    movq %rax, %r12
    addq %rbx, %r12
    movq 32(%rbp), %rcx
    movq %r13, %r14
    subq %rcx, %r14
    movq %r15, %r10
    movq %r12, (%r10)
    movq 112(%rbp), %r10
    movq %r14, (%r10)
    subq $48, %rsp
    movq 48(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %r15, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 336(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_Builder_write
    addq $48, %rsp
    movq 104(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L37_22
    jmp .L37_21
.L37_22:
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 648(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_Builder_destroy
    addq $32, %rsp
    movq 208(%rbp), %r10
    movq 200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    movq %r12, %rsi
    movq 744(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 744(%rbp), %rax
    movq 920(%rbp), %rdi
    movq 912(%rbp), %rsi
    movdqu 896(%rbp), %xmm6
    movdqu 880(%rbp), %xmm7
    movdqu 864(%rbp), %xmm8
    movdqu 848(%rbp), %xmm9
    movdqu 832(%rbp), %xmm10
    movdqu 816(%rbp), %xmm11
    movdqu 800(%rbp), %xmm12
    movdqu 784(%rbp), %xmm13
    movdqu 768(%rbp), %xmm14
    movdqu 752(%rbp), %xmm15
    movq 736(%rbp), %rbx
    movq 728(%rbp), %r12
    movq 720(%rbp), %r13
    movq 712(%rbp), %r14
    movq 704(%rbp), %r15
    leaq 928(%rbp), %rsp
    popq %rbp
    ret
.L37_23:
.L37_21:
.L37_15:
    movq 96(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq 32(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_186(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    jmp .L37_11
.L37_10:
    movq 88(%rbp), %rax
    movq 80(%rbp), %r10
    movq %rax, (%r10)
    movq $3, %rax
    movq 72(%rbp), %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq 48(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 80(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 288(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_strings_Builder_put
    addq $48, %rsp
    movq 64(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L37_25
    jmp .L37_24
.L37_25:
    leaq 648(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 16(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_Builder_destroy
    addq $32, %rsp
    movq 208(%rbp), %r10
    movq 200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %r12
    movq $16, %rcx
    addq %rcx, %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    movq %rbx, %rsi
    movq 744(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 744(%rbp), %rax
    movq 920(%rbp), %rdi
    movq 912(%rbp), %rsi
    movdqu 896(%rbp), %xmm6
    movdqu 880(%rbp), %xmm7
    movdqu 864(%rbp), %xmm8
    movdqu 848(%rbp), %xmm9
    movdqu 832(%rbp), %xmm10
    movdqu 816(%rbp), %xmm11
    movdqu 800(%rbp), %xmm12
    movdqu 784(%rbp), %xmm13
    movdqu 768(%rbp), %xmm14
    movdqu 752(%rbp), %xmm15
    movq 736(%rbp), %rbx
    movq 728(%rbp), %r12
    movq 720(%rbp), %r13
    movq 712(%rbp), %r14
    movq 704(%rbp), %r15
    leaq 928(%rbp), %rsp
    popq %rbp
    ret
.L37_26:
.L37_24:
    movq 32(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
.L37_11:
    movq %rbx, %rax
    movq %rax, 32(%rbp)
    jmp .L37_6
.L37_8:
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 272(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_Builder_view
    addq $32, %rsp
    leaq 272(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 216(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_interop_9copy_text
    addq $48, %rsp
    leaq 216(%rbp), %r12
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L37_28
    jmp .L37_27
.L37_28:
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 648(%rbp), %r13
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
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_Builder_destroy
    addq $32, %rsp
    movq 208(%rbp), %r10
    movq 200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    movq %r13, %rsi
    movq 744(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 744(%rbp), %rax
    movq 920(%rbp), %rdi
    movq 912(%rbp), %rsi
    movdqu 896(%rbp), %xmm6
    movdqu 880(%rbp), %xmm7
    movdqu 864(%rbp), %xmm8
    movdqu 848(%rbp), %xmm9
    movdqu 832(%rbp), %xmm10
    movdqu 816(%rbp), %xmm11
    movdqu 800(%rbp), %xmm12
    movdqu 784(%rbp), %xmm13
    movdqu 768(%rbp), %xmm14
    movdqu 752(%rbp), %xmm15
    movq 736(%rbp), %rbx
    movq 728(%rbp), %r12
    movq 720(%rbp), %r13
    movq 712(%rbp), %r14
    movq 704(%rbp), %r15
    leaq 928(%rbp), %rsp
    popq %rbp
    ret
.L37_29:
.L37_27:
    leaq 648(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_Builder_destroy
    addq $32, %rsp
    movq 208(%rbp), %r10
    movq 200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %r13
    movq $16, %rcx
    addq %rcx, %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    movq %rbx, %rsi
    movq 744(%rbp), %rdi
    movq $56, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 744(%rbp), %rax
    movq 920(%rbp), %rdi
    movq 912(%rbp), %rsi
    movdqu 896(%rbp), %xmm6
    movdqu 880(%rbp), %xmm7
    movdqu 864(%rbp), %xmm8
    movdqu 848(%rbp), %xmm9
    movdqu 832(%rbp), %xmm10
    movdqu 816(%rbp), %xmm11
    movdqu 800(%rbp), %xmm12
    movdqu 784(%rbp), %xmm13
    movdqu 768(%rbp), %xmm14
    movdqu 752(%rbp), %xmm15
    movq 736(%rbp), %rbx
    movq 728(%rbp), %r12
    movq 720(%rbp), %r13
    movq 712(%rbp), %r14
    movq 704(%rbp), %r15
    leaq 928(%rbp), %rsp
    popq %rbp
    ret
.L37_30:
    leaq 584(%rbp), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_Builder_destroy
    addq $32, %rsp
    leaq 624(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    leaq .Ltext_188(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_Command_13error_message
lb_process_Command_13error_message:
    .seh_proc lb_process_Command_13error_message
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
    .seh_endprologue
    movq %rcx, 432(%rbp)
    movq %rdx, 440(%rbp)
    movq %r8, 448(%rbp)
    movq %r9, 456(%rbp)
    movq 440(%rbp), %rax
    movq %rax, 136(%rbp)
    leaq 136(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_11is_finished
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L38_2
.L38_1:
    leaq .Ltext_95(%rip), %rbx
    leaq 120(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 64(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_interop_9copy_text
    addq $48, %rsp
    leaq 64(%rbp), %r12
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L38_5
    jmp .L38_4
.L38_5:
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 144(%rbp), %r13
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
    movq 232(%rbp), %rdi
    movq $56, %rdx
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
    leaq 416(%rbp), %rsp
    popq %rbp
    ret
.L38_6:
.L38_4:
    leaq 144(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 232(%rbp), %rdi
    movq $56, %rdx
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
    leaq 416(%rbp), %rsp
    popq %rbp
    ret
.L38_7:
    jmp .L38_3
.L38_2:
.L38_3:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_state
    addq $32, %rsp
    movq %rax, %rbx
    movq $144, %rcx
    addq %rcx, %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_interop_9copy_text
    addq $48, %rsp
    leaq 8(%rbp), %r13
    movq $48, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L38_9
    jmp .L38_8
.L38_9:
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 144(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 232(%rbp), %rdi
    movq $56, %rdx
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
    leaq 416(%rbp), %rsp
    popq %rbp
    ret
.L38_10:
.L38_8:
    leaq 144(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 232(%rbp), %rdi
    movq $56, %rdx
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
    leaq 416(%rbp), %rsp
    popq %rbp
    ret
.L38_11:
    leaq .Ltext_189(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_Command_cancel
lb_process_Command_cancel:
    .seh_proc lb_process_Command_cancel
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
    movq 208(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 0(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L39_4
    jmp .L39_2
.L39_4:
.L39_1:
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L39_3
.L39_2:
.L39_3:
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
    .globl lb_process_Command_close
lb_process_Command_close:
    .seh_proc lb_process_Command_close
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
    movq %rax, 112(%rbp)
    leaq 112(%rbp), %r10
    movq (%r10), %r12
    leaq 104(%rbp), %r13
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L40_1
    jmp .L40_2
.L40_1:
    leaq 96(%rbp), %rbx
    movq 0(%rbp), %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    jmp .L40_3
.L40_2:
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
.L40_4:
.L40_3:
    movq %rbx, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_Command_cancel
    addq $32, %rsp
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    leaq 40(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_thread_Handle_join
    addq $32, %rsp
    leaq 40(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L40_8
    jmp .L40_7
.L40_8:
    leaq 72(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L40_5
.L40_7:
    jmp .L40_6
.L40_5:
    leaq .Ltext_190(%rip), %rbx
    leaq 24(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $36, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_191(%rip), %rbx
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
    call lb_core_12trap_text_at
    addq $48, %rsp
.L40_6:
    leaq 8(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq 0(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L40_9
    jmp .L40_10
.L40_9:
    jmp .L40_11
.L40_10:
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
.L40_12:
.L40_11:
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15command_dispose
    addq $32, %rsp
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
    .seh_endproc

    .p2align 4
    .globl lb_process_15command_dispose
lb_process_15command_dispose:
    .seh_proc lb_process_15command_dispose
    pushq %rbp
    .seh_pushreg %rbp
    subq $464, %rsp
    .seh_stackalloc 464
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 280(%rbp)
    .seh_savereg %rbx, 280
    movq %r12, 272(%rbp)
    .seh_savereg %r12, 272
    movq %r13, 264(%rbp)
    .seh_savereg %r13, 264
    movq %r14, 256(%rbp)
    .seh_savereg %r14, 256
    movq %r15, 248(%rbp)
    .seh_savereg %r15, 248
    .seh_endprologue
    movq %rcx, 480(%rbp)
    movq %rdx, 488(%rbp)
    movq %r8, 496(%rbp)
    movq %r9, 504(%rbp)
    movq 480(%rbp), %rax
    movq %rax, 232(%rbp)
    leaq 216(%rbp), %rax
    movq %rax, 80(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %r10
    movq 80(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_memory_heap(%rip), %r13
    movq %r13, %r10
    movq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 232(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %rax
    movq $56, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    jbe .L41_2
.L41_1:
    subq $48, %rsp
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    jmp .L41_3
.L41_2:
.L41_3:
    movq 64(%rbp), %rax
    movq $72, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L41_5
.L41_4:
    subq $48, %rsp
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    jmp .L41_6
.L41_5:
.L41_6:
    movq 64(%rbp), %rax
    movq $88, %rcx
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    movq 56(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %r10
    movq (%r10), %rbx
    movq 64(%rbp), %rax
    movq $104, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    movq $1, %rcx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_192(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_192(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    movq 8(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L41_11
.L41_12:
    leaq .Ltext_192(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L41_11:
    leaq 200(%rbp), %rbx
    movq 16(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq 8(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 184(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %rax, %r15
.L41_7:
    movq 8(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L41_10
.L41_8:
    movq $8, %rcx
    movq %r15, %r14
    imulq %rcx, %r14
    movq 16(%rbp), %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r12
    movq %rbx, %r10
    movq %r14, (%r10)
    movq %r13, %r10
    movq %r12, (%r10)
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
.L41_9:
    movq $1, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r15
    jmp .L41_7
.L41_10:
    movq 56(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L41_14
.L41_13:
    leaq 168(%rbp), %rbx
    movq 56(%rbp), %r10
    movq (%r10), %r12
    movq 48(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_193(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 72(%rbp), %r10
    movq (%r10), %r12
    movq 72(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L41_17
    jmp .L41_16
.L41_17:
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
.L41_16:
    jmp .L41_15
.L41_14:
.L41_15:
    movq 64(%rbp), %rax
    movq $112, %rcx
    addq %rcx, %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %r10
    movq (%r10), %r15
    movq 40(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r10
    movq (%r10), %r13
    movq 64(%rbp), %rax
    movq $128, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 0(%rbp)
    movq $1, %rcx
    addq %rcx, %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_194(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 0(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_194(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    movq 0(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L41_22
.L41_23:
    leaq .Ltext_194(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L41_22:
    leaq 152(%rbp), %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq 0(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq 136(%rbp), %r13
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, 24(%rbp)
    movq $0, %rax
    movq %rax, %rbx
.L41_18:
    movq 0(%rbp), %rcx
    cmpq %rcx, %rbx
    jae .L41_21
.L41_19:
    movq $8, %rcx
    movq %rbx, %r12
    imulq %rcx, %r12
    addq %r15, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r14
    movq %r13, %r10
    movq %r12, (%r10)
    movq 24(%rbp), %r10
    movq %r14, (%r10)
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
.L41_20:
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %rbx
    jmp .L41_18
.L41_21:
    movq 40(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L41_25
.L41_24:
    leaq 120(%rbp), %rbx
    movq 40(%rbp), %r10
    movq (%r10), %r12
    movq 32(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_195(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 72(%rbp), %r10
    movq (%r10), %r12
    movq 72(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L41_28
    jmp .L41_27
.L41_28:
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
.L41_27:
    jmp .L41_26
.L41_25:
.L41_26:
    movq 64(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jbe .L41_30
.L41_29:
    leaq 104(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq (%r10), %r15
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq 72(%rbp), %r10
    movq (%r10), %r14
    movq 72(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L41_33
    jmp .L41_32
.L41_33:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
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
    movq %rbx, %r11
    call *%r11
    addq $48, %rsp
.L41_32:
    jmp .L41_31
.L41_30:
.L41_31:
    movq 64(%rbp), %rax
    movq $144, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L41_35
.L41_34:
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    jmp .L41_36
.L41_35:
.L41_36:
    leaq 88(%rbp), %rbx
    movq 64(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $160, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 72(%rbp), %r10
    movq (%r10), %r12
    movq 72(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L41_38
    jmp .L41_37
.L41_38:
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
.L41_37:
    movq 80(%rbp), %r10
    movq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
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
    movq 280(%rbp), %rbx
    movq 272(%rbp), %r12
    movq 264(%rbp), %r13
    movq 256(%rbp), %r14
    movq 248(%rbp), %r15
    leaq 464(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_process_13command_entry
lb_process_13command_entry:
    .seh_proc lb_process_13command_entry
    pushq %rbp
    .seh_pushreg %rbp
    subq $608, %rsp
    .seh_stackalloc 608
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 600(%rbp)
    .seh_savereg %rdi, 600
    movq %rsi, 592(%rbp)
    .seh_savereg %rsi, 592
    movdqu %xmm6, 576(%rbp)
    .seh_savexmm %xmm6, 576
    movdqu %xmm7, 560(%rbp)
    .seh_savexmm %xmm7, 560
    movdqu %xmm8, 544(%rbp)
    .seh_savexmm %xmm8, 544
    movdqu %xmm9, 528(%rbp)
    .seh_savexmm %xmm9, 528
    movdqu %xmm10, 512(%rbp)
    .seh_savexmm %xmm10, 512
    movdqu %xmm11, 496(%rbp)
    .seh_savexmm %xmm11, 496
    movdqu %xmm12, 480(%rbp)
    .seh_savexmm %xmm12, 480
    movdqu %xmm13, 464(%rbp)
    .seh_savexmm %xmm13, 464
    movdqu %xmm14, 448(%rbp)
    .seh_savexmm %xmm14, 448
    movdqu %xmm15, 432(%rbp)
    .seh_savexmm %xmm15, 432
    movq %rbx, 424(%rbp)
    .seh_savereg %rbx, 424
    movq %r12, 416(%rbp)
    .seh_savereg %r12, 416
    movq %r13, 408(%rbp)
    .seh_savereg %r13, 408
    movq %r14, 400(%rbp)
    .seh_savereg %r14, 400
    movq %r15, 392(%rbp)
    .seh_savereg %r15, 392
    .seh_endprologue
    movq %rcx, 624(%rbp)
    movq %rdx, 632(%rbp)
    movq %r8, 640(%rbp)
    movq %r9, 648(%rbp)
    movq 624(%rbp), %rax
    movq %rax, 376(%rbp)
    leaq 376(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L42_1
    jmp .L42_2
.L42_1:
    jmp .L42_3
.L42_2:
    movq 600(%rbp), %rdi
    movq 592(%rbp), %rsi
    movdqu 576(%rbp), %xmm6
    movdqu 560(%rbp), %xmm7
    movdqu 544(%rbp), %xmm8
    movdqu 528(%rbp), %xmm9
    movdqu 512(%rbp), %xmm10
    movdqu 496(%rbp), %xmm11
    movdqu 480(%rbp), %xmm12
    movdqu 464(%rbp), %xmm13
    movdqu 448(%rbp), %xmm14
    movdqu 432(%rbp), %xmm15
    movq 424(%rbp), %rbx
    movq 416(%rbp), %r12
    movq 408(%rbp), %r13
    movq 400(%rbp), %r14
    movq 392(%rbp), %r15
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
.L42_4:
.L42_3:
    leaq 336(%rbp), %rax
    movq %rax, 8(%rbp)
    movq $56, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    movq $88, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $72, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $128, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    jbe .L42_8
.L42_7:
    movq $112, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    leaq 224(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    leaq 248(%rbp), %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L42_9
.L42_8:
    leaq 200(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq 248(%rbp), %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
.L42_9:
    leaq 248(%rbp), %r12
    subq $96, %rsp
    movq 16(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %r13, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq %r14, %rax
    movq %rax, 24(%rsp)
    movq %r12, %r10
    leaq 64(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 64(%rsp), %rax
    movq %rax, 32(%rsp)
    movq %rbx, %rax
    movq %rax, 40(%rsp)
    leaq 128(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_process_14run_controlled
    addq $96, %rsp
    leaq 128(%rbp), %r15
    movq $64, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L42_11
    jmp .L42_10
.L42_11:
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq 272(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L42_5
.L42_10:
    leaq 296(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L42_6
.L42_5:
    movq $144, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 40(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_copy
    addq $48, %rsp
    leaq 40(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L42_15
    jmp .L42_14
.L42_15:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq 88(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L42_12
.L42_14:
    leaq 112(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L42_13
.L42_12:
    leaq .Ltext_95(%rip), %r12
    leaq 24(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 112(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L42_13
.L42_16:
.L42_13:
    leaq 112(%rbp), %r12
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq 600(%rbp), %rdi
    movq 592(%rbp), %rsi
    movdqu 576(%rbp), %xmm6
    movdqu 560(%rbp), %xmm7
    movdqu 544(%rbp), %xmm8
    movdqu 528(%rbp), %xmm9
    movdqu 512(%rbp), %xmm10
    movdqu 496(%rbp), %xmm11
    movdqu 480(%rbp), %xmm12
    movdqu 464(%rbp), %xmm13
    movdqu 448(%rbp), %xmm14
    movdqu 432(%rbp), %xmm15
    movq 424(%rbp), %rbx
    movq 416(%rbp), %r12
    movq 408(%rbp), %r13
    movq 400(%rbp), %r14
    movq 392(%rbp), %r15
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
.L42_17:
.L42_6:
    movq %r12, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $136, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq 8(%rbp), %r10
    movslq (%r10), %r14
    movslq %r14d, %r14
    movq %r13, %r10
    movq %r14, (%r10)
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_release
    addq $48, %rsp
    movq 8(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_release
    addq $48, %rsp
    movq $1, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq 600(%rbp), %rdi
    movq 592(%rbp), %rsi
    movdqu 576(%rbp), %xmm6
    movdqu 560(%rbp), %xmm7
    movdqu 544(%rbp), %xmm8
    movdqu 528(%rbp), %xmm9
    movdqu 512(%rbp), %xmm10
    movdqu 496(%rbp), %xmm11
    movdqu 480(%rbp), %xmm12
    movdqu 464(%rbp), %xmm13
    movdqu 448(%rbp), %xmm14
    movdqu 432(%rbp), %xmm15
    movq 424(%rbp), %rbx
    movq 416(%rbp), %r12
    movq 408(%rbp), %r13
    movq 400(%rbp), %r14
    movq 392(%rbp), %r15
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_process_14command_append
lb_process_14command_append:
    .seh_proc lb_process_14command_append
    pushq %rbp
    .seh_pushreg %rbp
    subq $544, %rsp
    .seh_stackalloc 544
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 360(%rbp)
    movq %rdi, 536(%rbp)
    .seh_savereg %rdi, 536
    movq %rsi, 528(%rbp)
    .seh_savereg %rsi, 528
    movdqu %xmm6, 512(%rbp)
    .seh_savexmm %xmm6, 512
    movdqu %xmm7, 496(%rbp)
    .seh_savexmm %xmm7, 496
    movdqu %xmm8, 480(%rbp)
    .seh_savexmm %xmm8, 480
    movdqu %xmm9, 464(%rbp)
    .seh_savexmm %xmm9, 464
    movdqu %xmm10, 448(%rbp)
    .seh_savexmm %xmm10, 448
    movdqu %xmm11, 432(%rbp)
    .seh_savexmm %xmm11, 432
    movdqu %xmm12, 416(%rbp)
    .seh_savexmm %xmm12, 416
    movdqu %xmm13, 400(%rbp)
    .seh_savexmm %xmm13, 400
    movdqu %xmm14, 384(%rbp)
    .seh_savexmm %xmm14, 384
    movdqu %xmm15, 368(%rbp)
    .seh_savexmm %xmm15, 368
    movq %rbx, 352(%rbp)
    .seh_savereg %rbx, 352
    movq %r12, 344(%rbp)
    .seh_savereg %r12, 344
    movq %r13, 336(%rbp)
    .seh_savereg %r13, 336
    movq %r14, 328(%rbp)
    .seh_savereg %r14, 328
    movq %r15, 320(%rbp)
    .seh_savereg %r15, 320
    .seh_endprologue
    movq %rcx, 560(%rbp)
    movq %rdx, 568(%rbp)
    movq %r8, 576(%rbp)
    movq %r9, 584(%rbp)
    movq 568(%rbp), %rax
    movq %rax, 272(%rbp)
    movq 576(%rbp), %r10
    leaq 256(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 272(%rbp), %rax
    movq %rax, 96(%rbp)
    movq 96(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 88(%rbp)
    movq 88(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 80(%rbp)
    subq $32, %rsp
    movq 80(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_lock
    addq $32, %rsp
    leaq 256(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %r10
    movq (%r10), %rbx
    movq 88(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %r10
    movq (%r10), %r15
    movq 88(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %rax
    movq %r12, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_197(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    cmpq %r12, %rbx
    jbe .L43_2
.L43_1:
    leaq 288(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_198(%rip), %r12
    leaq 240(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $37, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 80(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    movq %rbx, %rsi
    movq 360(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 360(%rbp), %rax
    movq 536(%rbp), %rdi
    movq 528(%rbp), %rsi
    movdqu 512(%rbp), %xmm6
    movdqu 496(%rbp), %xmm7
    movdqu 480(%rbp), %xmm8
    movdqu 464(%rbp), %xmm9
    movdqu 448(%rbp), %xmm10
    movdqu 432(%rbp), %xmm11
    movdqu 416(%rbp), %xmm12
    movdqu 400(%rbp), %xmm13
    movdqu 384(%rbp), %xmm14
    movdqu 368(%rbp), %xmm15
    movq 352(%rbp), %rbx
    movq 344(%rbp), %r12
    movq 336(%rbp), %r13
    movq 328(%rbp), %r14
    movq 320(%rbp), %r15
    leaq 544(%rbp), %rsp
    popq %rbp
    ret
.L43_4:
    jmp .L43_3
.L43_2:
.L43_3:
    movq 48(%rbp), %r10
    movq (%r10), %r12
    movq %rbx, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_199(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 40(%rbp)
    movq 88(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %r10
    movq (%r10), %r13
    movq 40(%rbp), %rax
    cmpq %r13, %rax
    jbe .L43_6
.L43_5:
    movq 56(%rbp), %r10
    movq (%r10), %rbx
    movq 24(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_200(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    subq $32, %rsp
    movq $4096, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_13math_max_size
    addq $32, %rsp
    movq %rax, %r13
    subq $32, %rsp
    movq 40(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_13math_max_size
    addq $32, %rsp
    movq %rax, %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_13math_min_size
    addq $32, %rsp
    movq %rax, %rbx
    movq 24(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L43_9
.L43_8:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 192(%rbp), %rax
    movq %rax, 0(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %rbx
    jbe .L43_12
.L43_11:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_2(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L43_13
.L43_12:
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L43_14
    jmp .L43_15
.L43_15:
    leaq .Ltext_201(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L43_14:
    movq %r15, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq $1, %rax
    movq %rax, 24(%rsp)
    leaq 168(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r12, %r11
    call *%r11
    addq $32, %rsp
    leaq 168(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq $0, %rcx
    cmpq %rcx, %rbx
    setne %al
    movzbl %al, %eax
    movl %eax, 16(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl 16(%rbp), %eax
    movl %r12d, %ecx
    movl %eax, %r12d
    andl %ecx, %r12d
    testl %r12d, %r12d
    jne .L43_16
    jmp .L43_17
.L43_16:
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
    jmp .L43_13
.L43_17:
    movq %r14, %r10
    movq (%r10), %r12
    movq 0(%rbp), %r10
    movq %r12, (%r10)
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L43_13:
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L43_19
    jmp .L43_18
.L43_19:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 288(%rbp), %r12
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
    subq $32, %rsp
    movq 80(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    movq %r12, %rsi
    movq 360(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 360(%rbp), %rax
    movq 536(%rbp), %rdi
    movq 528(%rbp), %rsi
    movdqu 512(%rbp), %xmm6
    movdqu 496(%rbp), %xmm7
    movdqu 480(%rbp), %xmm8
    movdqu 464(%rbp), %xmm9
    movdqu 448(%rbp), %xmm10
    movdqu 432(%rbp), %xmm11
    movdqu 416(%rbp), %xmm12
    movdqu 400(%rbp), %xmm13
    movdqu 384(%rbp), %xmm14
    movdqu 368(%rbp), %xmm15
    movq 352(%rbp), %rbx
    movq 344(%rbp), %r12
    movq 336(%rbp), %r13
    movq 328(%rbp), %r14
    movq 320(%rbp), %r15
    leaq 544(%rbp), %rsp
    popq %rbp
    ret
.L43_20:
.L43_18:
    movq 0(%rbp), %r10
    movq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L43_10
.L43_9:
    subq $48, %rsp
    movq 32(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    leaq 120(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_grow
    addq $48, %rsp
    leaq 120(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L43_22
    jmp .L43_21
.L43_22:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 288(%rbp), %r12
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
    subq $32, %rsp
    movq 80(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    movq %r12, %rsi
    movq 360(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 360(%rbp), %rax
    movq 536(%rbp), %rdi
    movq 528(%rbp), %rsi
    movdqu 512(%rbp), %xmm6
    movdqu 496(%rbp), %xmm7
    movdqu 480(%rbp), %xmm8
    movdqu 464(%rbp), %xmm9
    movdqu 448(%rbp), %xmm10
    movdqu 432(%rbp), %xmm11
    movdqu 416(%rbp), %xmm12
    movdqu 400(%rbp), %xmm13
    movdqu 384(%rbp), %xmm14
    movdqu 368(%rbp), %xmm15
    movq 352(%rbp), %rbx
    movq 344(%rbp), %r12
    movq 336(%rbp), %r13
    movq 328(%rbp), %r14
    movq 320(%rbp), %r15
    leaq 544(%rbp), %rsp
    popq %rbp
    ret
.L43_23:
.L43_21:
    movq %r13, %r10
    movq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L43_10:
    jmp .L43_7
.L43_6:
.L43_7:
    movq 32(%rbp), %r10
    movq (%r10), %r12
    movq 24(%rbp), %r10
    movq (%r10), %r13
    movq 48(%rbp), %r10
    movq (%r10), %r14
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    cmpq %rbx, %r14
    jb 1f
    leaq .Ltext_202(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_202(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r13, %r14
    jbe .L43_24
.L43_25:
    leaq .Ltext_202(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L43_24:
    movq %r12, %rbx
    addq %r14, %rbx
    movq %r13, %rax
    subq %r14, %rax
    movq %rax, 8(%rbp)
    leaq 104(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq 8(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 64(%rbp), %r10
    movq (%r10), %rbx
    subq $64, %rsp
    movq %r15, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 72(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_copy_0g1_u8
    addq $64, %rsp
    movq 40(%rbp), %rax
    movq 48(%rbp), %r10
    movq %rax, (%r10)
    movq 88(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $1, %rcx
    movq %rbx, %r10
    lock xaddq %rcx, (%r10)
    movq %rcx, %rbx
    movq 96(%rbp), %r10
    movq (%r10), %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    leaq 288(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $0, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 360(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 360(%rbp), %rax
    movq 536(%rbp), %rdi
    movq 528(%rbp), %rsi
    movdqu 512(%rbp), %xmm6
    movdqu 496(%rbp), %xmm7
    movdqu 480(%rbp), %xmm8
    movdqu 464(%rbp), %xmm9
    movdqu 448(%rbp), %xmm10
    movdqu 432(%rbp), %xmm11
    movdqu 416(%rbp), %xmm12
    movdqu 400(%rbp), %xmm13
    movdqu 384(%rbp), %xmm14
    movdqu 368(%rbp), %xmm15
    movq 352(%rbp), %rbx
    movq 344(%rbp), %r12
    movq 336(%rbp), %r13
    movq 328(%rbp), %r14
    movq 320(%rbp), %r15
    leaq 544(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_process_13math_min_size
lb_process_13math_min_size:
    .seh_proc lb_process_13math_min_size
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
    movq 264(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 8(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jae .L44_2
.L44_1:
    movq %rbx, %r12
    jmp .L44_3
.L44_2:
.L44_3:
    movq %r12, %rax
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
.L44_4:
    leaq .Ltext_203(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_13math_max_size
lb_process_13math_max_size:
    .seh_proc lb_process_13math_max_size
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
    movq 264(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 8(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jbe .L45_2
.L45_1:
    movq %rbx, %r12
    jmp .L45_3
.L45_2:
.L45_3:
    movq %r12, %rax
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
.L45_4:
    leaq .Ltext_204(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_15capture_command
lb_process_15capture_command:
    .seh_proc lb_process_15capture_command
    pushq %rbp
    .seh_pushreg %rbp
    subq $704, %rsp
    .seh_stackalloc 704
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 520(%rbp)
    movq %rdi, 696(%rbp)
    .seh_savereg %rdi, 696
    movq %rsi, 688(%rbp)
    .seh_savereg %rsi, 688
    movdqu %xmm6, 672(%rbp)
    .seh_savexmm %xmm6, 672
    movdqu %xmm7, 656(%rbp)
    .seh_savexmm %xmm7, 656
    movdqu %xmm8, 640(%rbp)
    .seh_savexmm %xmm8, 640
    movdqu %xmm9, 624(%rbp)
    .seh_savexmm %xmm9, 624
    movdqu %xmm10, 608(%rbp)
    .seh_savexmm %xmm10, 608
    movdqu %xmm11, 592(%rbp)
    .seh_savexmm %xmm11, 592
    movdqu %xmm12, 576(%rbp)
    .seh_savexmm %xmm12, 576
    movdqu %xmm13, 560(%rbp)
    .seh_savexmm %xmm13, 560
    movdqu %xmm14, 544(%rbp)
    .seh_savexmm %xmm14, 544
    movdqu %xmm15, 528(%rbp)
    .seh_savexmm %xmm15, 528
    movq %rbx, 512(%rbp)
    .seh_savereg %rbx, 512
    movq %r12, 504(%rbp)
    .seh_savereg %r12, 504
    movq %r13, 496(%rbp)
    .seh_savereg %r13, 496
    movq %r14, 488(%rbp)
    .seh_savereg %r14, 488
    movq %r15, 480(%rbp)
    .seh_savereg %r15, 480
    .seh_endprologue
    movq %rcx, 720(%rbp)
    movq %rdx, 728(%rbp)
    movq %r8, 736(%rbp)
    movq %r9, 744(%rbp)
    movq 728(%rbp), %rax
    movl %eax, 424(%rbp)
    movq 736(%rbp), %rax
    movq %rax, 408(%rbp)
    movq 744(%rbp), %rax
    movq %rax, 392(%rbp)
    movq 752(%rbp), %rax
    movq %rax, 376(%rbp)
    leaq 408(%rbp), %rax
    movq %rax, 184(%rbp)
    movq 184(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq lb_process_9set_flags(%rip), %r13
    movq %r13, %r10
    movslq (%r10), %r14
    leaq lb_process_12non_blocking(%rip), %r15
    movq %r15, %r10
    movslq (%r10), %rbx
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movl %r14d, %eax
    movq %rax, 8(%rsp)
    movl %ebx, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call fcntl
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    setl %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L46_65
    jmp .L46_4
.L46_65:
    movl %ebx, %r12d
    jmp .L46_5
.L46_4:
    leaq 392(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movq %r13, %r10
    movslq (%r10), %r12
    movq %r15, %r10
    movslq (%r10), %r14
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movl %r14d, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call fcntl
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    setl %al
    movzbl %al, %r12d
.L46_5:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L46_1
    jmp .L46_2
.L46_1:
    leaq 440(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_206(%rip), %r13
    leaq 360(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $33, %rax
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
    leaq 424(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq 192(%rbp), %r10
    movl %r12d, (%r10)
    movl $0, %eax
    movl %r12d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_205(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r13d
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movl $9, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call kill
    addq $32, %rsp
    movl %eax, %r13d
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_terminate
    addq $32, %rsp
.L46_59:
    movq %rbx, %rsi
    movq 520(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 520(%rbp), %rax
    movq 696(%rbp), %rdi
    movq 688(%rbp), %rsi
    movdqu 672(%rbp), %xmm6
    movdqu 656(%rbp), %xmm7
    movdqu 640(%rbp), %xmm8
    movdqu 624(%rbp), %xmm9
    movdqu 608(%rbp), %xmm10
    movdqu 592(%rbp), %xmm11
    movdqu 576(%rbp), %xmm12
    movdqu 560(%rbp), %xmm13
    movdqu 544(%rbp), %xmm14
    movdqu 528(%rbp), %xmm15
    movq 512(%rbp), %rbx
    movq 504(%rbp), %r12
    movq 496(%rbp), %r13
    movq 488(%rbp), %r14
    movq 480(%rbp), %r15
    leaq 704(%rbp), %rsp
    popq %rbp
    ret
.L46_2:
.L46_3:
    leaq 376(%rbp), %rax
    movq %rax, 176(%rbp)
    leaq 328(%rbp), %r12
    leaq 320(%rbp), %r15
    leaq lb_process_7poll_in(%rip), %rax
    movq %rax, 152(%rbp)
    movq $4, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, 136(%rbp)
    movq $6, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, 128(%rbp)
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 24(%rbp)
    leaq 312(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 392(%rbp), %rax
    movq %rax, 120(%rbp)
    movq 16(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, 104(%rbp)
    movq 16(%rbp), %rax
    movq $6, %rcx
    addq %rcx, %rax
    movq %rax, 96(%rbp)
    movq $6, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 80(%rbp)
    leaq 264(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    movq 24(%rbp), %rax
    movq $6, %rcx
    addq %rcx, %rax
    movq %rax, 64(%rbp)
    leaq 232(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    leaq 228(%rbp), %rax
    movq %rax, 48(%rbp)
    leaq 424(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq lb_c_interrupted(%rip), %rax
    movq %rax, 32(%rbp)
    leaq lb_c_interrupted(%rip), %rax
    movq %rax, 88(%rbp)
.L46_7:
.L46_8:
    movq 176(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %r10
    movzbl (%r10), %eax
    movl %eax, %r13d
    testl %r13d, %r13d
    jne .L46_10
    jmp .L46_11
.L46_10:
    leaq 440(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_207(%rip), %r13
    leaq 344(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $17, %rax
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
    leaq 424(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq 192(%rbp), %r10
    movl %r12d, (%r10)
    movl $0, %eax
    movl %r12d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_205(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r13d
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movl $9, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call kill
    addq $32, %rsp
    movl %eax, %r13d
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_terminate
    addq $32, %rsp
.L46_60:
    movq %rbx, %rsi
    movq 520(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 520(%rbp), %rax
    movq 696(%rbp), %rdi
    movq 688(%rbp), %rsi
    movdqu 672(%rbp), %xmm6
    movdqu 656(%rbp), %xmm7
    movdqu 640(%rbp), %xmm8
    movdqu 624(%rbp), %xmm9
    movdqu 608(%rbp), %xmm10
    movdqu 592(%rbp), %xmm11
    movdqu 576(%rbp), %xmm12
    movdqu 560(%rbp), %xmm13
    movdqu 544(%rbp), %xmm14
    movdqu 528(%rbp), %xmm15
    movq 512(%rbp), %rbx
    movq 504(%rbp), %r12
    movq 496(%rbp), %r13
    movq 488(%rbp), %r14
    movq 480(%rbp), %r15
    leaq 704(%rbp), %rsp
    popq %rbp
    ret
.L46_11:
.L46_12:
    movq %r15, %r11
    movq $0, 0(%r11)
    movq 184(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 168(%rbp)
    movq 168(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 160(%rbp)
    movq 160(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L46_14
    jmp .L46_15
.L46_14:
    movq 168(%rbp), %r10
    movslq (%r10), %rbx
    jmp .L46_16
.L46_15:
    movl $4294967295, %eax
    movl %eax, %ebx
.L46_16:
    movq %r15, %r10
    movl %ebx, (%r10)
    movq 152(%rbp), %r10
    movswl (%r10), %eax
    movl %eax, 144(%rbp)
    movl 144(%rbp), %eax
    movq 136(%rbp), %r10
    movw %ax, (%r10)
    movl $0, %eax
    movq 128(%rbp), %r10
    movw %ax, (%r10)
    movq %r15, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq 16(%rbp), %r11
    movq $0, 0(%r11)
    movq 120(%rbp), %r10
    movq (%r10), %r14
    movq $32, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, 112(%rbp)
    movq 112(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L46_17
    jmp .L46_18
.L46_17:
    movq %r14, %r10
    movslq (%r10), %rbx
    jmp .L46_19
.L46_18:
    movl $4294967295, %eax
    movl %eax, %ebx
.L46_19:
    movq 16(%rbp), %r10
    movl %ebx, (%r10)
    movl 144(%rbp), %eax
    movq 104(%rbp), %r10
    movw %ax, (%r10)
    movl $0, %eax
    movq 96(%rbp), %r10
    movw %ax, (%r10)
    movq 16(%rbp), %r10
    movq 24(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movl $2, %eax
    movq %rax, 8(%rsp)
    movl $20, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call poll
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jge .L46_21
.L46_20:
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %ebx
    movq 88(%rbp), %r10
    movslq (%r10), %r13
    cmpl %r13d, %ebx
    jne .L46_24
.L46_23:
    jmp .L46_7
.L46_24:
.L46_25:
    leaq 440(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_206(%rip), %r13
    leaq 296(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $33, %rax
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
    leaq 424(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq 192(%rbp), %r10
    movl %r12d, (%r10)
    movl $0, %eax
    movl %r12d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_205(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r13d
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movl $9, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call kill
    addq $32, %rsp
    movl %eax, %r13d
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_terminate
    addq $32, %rsp
.L46_61:
    movq %rbx, %rsi
    movq 520(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 520(%rbp), %rax
    movq 696(%rbp), %rdi
    movq 688(%rbp), %rsi
    movdqu 672(%rbp), %xmm6
    movdqu 656(%rbp), %xmm7
    movdqu 640(%rbp), %xmm8
    movdqu 624(%rbp), %xmm9
    movdqu 608(%rbp), %xmm10
    movdqu 592(%rbp), %xmm11
    movdqu 576(%rbp), %xmm12
    movdqu 560(%rbp), %xmm13
    movdqu 544(%rbp), %xmm14
    movdqu 528(%rbp), %xmm15
    movq 512(%rbp), %rbx
    movq 504(%rbp), %r12
    movq 496(%rbp), %r13
    movq 488(%rbp), %r14
    movq 480(%rbp), %r15
    leaq 704(%rbp), %rsp
    popq %rbp
    ret
.L46_21:
.L46_22:
    movq 160(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L46_31
    jmp .L46_66
.L46_66:
    movl %ebx, %r13d
    jmp .L46_32
.L46_31:
    movq 80(%rbp), %r10
    movswl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L46_32:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L46_28
    jmp .L46_29
.L46_28:
    movq 176(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq 168(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    leaq 264(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_process_12pull_command
    addq $32, %rsp
    movq 72(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L46_34
    jmp .L46_33
.L46_34:
    leaq 440(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 8(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 424(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq 192(%rbp), %r10
    movl %r12d, (%r10)
    movl $0, %eax
    movl %r12d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_205(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r13d
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movl $9, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call kill
    addq $32, %rsp
    movl %eax, %r13d
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_terminate
    addq $32, %rsp
.L46_62:
    movq %rbx, %rsi
    movq 520(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 520(%rbp), %rax
    movq 696(%rbp), %rdi
    movq 688(%rbp), %rsi
    movdqu 672(%rbp), %xmm6
    movdqu 656(%rbp), %xmm7
    movdqu 640(%rbp), %xmm8
    movdqu 624(%rbp), %xmm9
    movdqu 608(%rbp), %xmm10
    movdqu 592(%rbp), %xmm11
    movdqu 576(%rbp), %xmm12
    movdqu 560(%rbp), %xmm13
    movdqu 544(%rbp), %xmm14
    movdqu 528(%rbp), %xmm15
    movq 512(%rbp), %rbx
    movq 504(%rbp), %r12
    movq 496(%rbp), %r13
    movq 488(%rbp), %r14
    movq 480(%rbp), %r15
    leaq 704(%rbp), %rsp
    popq %rbp
    ret
.L46_33:
    jmp .L46_30
.L46_29:
.L46_30:
    movq 112(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L46_39
    jmp .L46_67
.L46_67:
    movl %ebx, %r13d
    jmp .L46_40
.L46_39:
    movq 64(%rbp), %r10
    movswl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L46_40:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L46_36
    jmp .L46_37
.L46_36:
    movq 176(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    leaq 232(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_process_12pull_command
    addq $32, %rsp
    movq 56(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L46_42
    jmp .L46_41
.L46_42:
    leaq 440(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 0(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 424(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq 192(%rbp), %r10
    movl %r12d, (%r10)
    movl $0, %eax
    movl %r12d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_205(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r13d
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movl $9, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call kill
    addq $32, %rsp
    movl %eax, %r13d
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_terminate
    addq $32, %rsp
.L46_63:
    movq %rbx, %rsi
    movq 520(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 520(%rbp), %rax
    movq 696(%rbp), %rdi
    movq 688(%rbp), %rsi
    movdqu 672(%rbp), %xmm6
    movdqu 656(%rbp), %xmm7
    movdqu 640(%rbp), %xmm8
    movdqu 624(%rbp), %xmm9
    movdqu 608(%rbp), %xmm10
    movdqu 592(%rbp), %xmm11
    movdqu 576(%rbp), %xmm12
    movdqu 560(%rbp), %xmm13
    movdqu 544(%rbp), %xmm14
    movdqu 528(%rbp), %xmm15
    movq 512(%rbp), %rbx
    movq 504(%rbp), %r12
    movq 496(%rbp), %r13
    movq 488(%rbp), %r14
    movq 480(%rbp), %r15
    leaq 704(%rbp), %rsp
    popq %rbp
    ret
.L46_41:
    jmp .L46_38
.L46_37:
.L46_38:
    movq 160(%rbp), %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L46_47
    jmp .L46_68
.L46_68:
    movl %ebx, %r13d
    jmp .L46_48
.L46_47:
    movq 112(%rbp), %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L46_48:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L46_44
    jmp .L46_45
.L46_44:
    movl $0, %eax
    movq 48(%rbp), %r10
    movl %eax, (%r10)
    movq 40(%rbp), %r10
    movslq (%r10), %rbx
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 48(%rbp), %rax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call waitpid
    addq $32, %rsp
    movl %eax, %r13d
    cmpl %r13d, %ebx
    jne .L46_50
.L46_49:
    movq 48(%rbp), %r10
    movslq (%r10), %rbx
    leaq 440(%rbp), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 520(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 520(%rbp), %rax
    movq 696(%rbp), %rdi
    movq 688(%rbp), %rsi
    movdqu 672(%rbp), %xmm6
    movdqu 656(%rbp), %xmm7
    movdqu 640(%rbp), %xmm8
    movdqu 624(%rbp), %xmm9
    movdqu 608(%rbp), %xmm10
    movdqu 592(%rbp), %xmm11
    movdqu 576(%rbp), %xmm12
    movdqu 560(%rbp), %xmm13
    movdqu 544(%rbp), %xmm14
    movdqu 528(%rbp), %xmm15
    movq 512(%rbp), %rbx
    movq 504(%rbp), %r12
    movq 496(%rbp), %r13
    movq 488(%rbp), %r14
    movq 480(%rbp), %r15
    leaq 704(%rbp), %rsp
    popq %rbp
    ret
.L46_50:
.L46_51:
    movl $0, %ecx
    cmpl %ecx, %r13d
    setl %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L46_56
    jmp .L46_69
.L46_69:
    movl %r14d, %r13d
    jmp .L46_57
.L46_56:
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %r13d
    movq 32(%rbp), %r10
    movslq (%r10), %r14
    cmpl %r14d, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
.L46_57:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L46_53
    jmp .L46_54
.L46_53:
    leaq 440(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    leaq lb_process_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_212(%rip), %r14
    leaq 208(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $33, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq 192(%rbp), %r10
    movl %ebx, (%r10)
    movl $0, %eax
    movl %ebx, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_205(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r13d
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movl $9, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call kill
    addq $32, %rsp
    movl %eax, %r13d
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_terminate
    addq $32, %rsp
.L46_64:
    movq %r12, %rsi
    movq 520(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 520(%rbp), %rax
    movq 696(%rbp), %rdi
    movq 688(%rbp), %rsi
    movdqu 672(%rbp), %xmm6
    movdqu 656(%rbp), %xmm7
    movdqu 640(%rbp), %xmm8
    movdqu 624(%rbp), %xmm9
    movdqu 608(%rbp), %xmm10
    movdqu 592(%rbp), %xmm11
    movdqu 576(%rbp), %xmm12
    movdqu 560(%rbp), %xmm13
    movdqu 544(%rbp), %xmm14
    movdqu 528(%rbp), %xmm15
    movq 512(%rbp), %rbx
    movq 504(%rbp), %r12
    movq 496(%rbp), %r13
    movq 488(%rbp), %r14
    movq 480(%rbp), %r15
    leaq 704(%rbp), %rsp
    popq %rbp
    ret
.L46_54:
.L46_55:
    jmp .L46_46
.L46_45:
.L46_46:
    jmp .L46_7
    .seh_endproc

    .p2align 4
    .globl lb_process_12pull_command
lb_process_12pull_command:
    .seh_proc lb_process_12pull_command
    pushq %rbp
    .seh_pushreg %rbp
    movq $4448, %rax
    call ___chkstk_ms
    subq $4448, %rsp
    .seh_stackalloc 4448
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 4264(%rbp)
    movq %rdi, 4440(%rbp)
    .seh_savereg %rdi, 4440
    movq %rsi, 4432(%rbp)
    .seh_savereg %rsi, 4432
    movdqu %xmm6, 4416(%rbp)
    .seh_savexmm %xmm6, 4416
    movdqu %xmm7, 4400(%rbp)
    .seh_savexmm %xmm7, 4400
    movdqu %xmm8, 4384(%rbp)
    .seh_savexmm %xmm8, 4384
    movdqu %xmm9, 4368(%rbp)
    .seh_savexmm %xmm9, 4368
    movdqu %xmm10, 4352(%rbp)
    .seh_savexmm %xmm10, 4352
    movdqu %xmm11, 4336(%rbp)
    .seh_savexmm %xmm11, 4336
    movdqu %xmm12, 4320(%rbp)
    .seh_savexmm %xmm12, 4320
    movdqu %xmm13, 4304(%rbp)
    .seh_savexmm %xmm13, 4304
    movdqu %xmm14, 4288(%rbp)
    .seh_savexmm %xmm14, 4288
    movdqu %xmm15, 4272(%rbp)
    .seh_savexmm %xmm15, 4272
    movq %rbx, 4256(%rbp)
    .seh_savereg %rbx, 4256
    movq %r12, 4248(%rbp)
    .seh_savereg %r12, 4248
    movq %r13, 4240(%rbp)
    .seh_savereg %r13, 4240
    movq %r14, 4232(%rbp)
    .seh_savereg %r14, 4232
    movq %r15, 4224(%rbp)
    .seh_savereg %r15, 4224
    .seh_endprologue
    movq %rcx, 4464(%rbp)
    movq %rdx, 4472(%rbp)
    movq %r8, 4480(%rbp)
    movq %r9, 4488(%rbp)
    movq 4472(%rbp), %rax
    movq %rax, 4176(%rbp)
    movq 4480(%rbp), %rax
    movq %rax, 4160(%rbp)
    leaq 64(%rbp), %rbx
    movq %rbx, %rdi
    xorl %esi, %esi
    movq $4096, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memset
    addq $32, %rsp
    leaq 4176(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %r10
    movslq (%r10), %r13
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq $4096, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call read
    addq $32, %rsp
    movq %rax, %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L47_2
.L47_1:
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L47_3
.L47_2:
    movq $0, %rcx
    cmpq %rcx, %r13
    jle .L47_5
.L47_4:
    leaq 4160(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $4097, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_215(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r13, %rax
    jbe .L47_7
.L47_8:
    leaq .Ltext_215(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L47_7:
    leaq 48(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 16(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_process_14command_append
    addq $48, %rsp
    leaq 16(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L47_10
    jmp .L47_9
.L47_10:
    leaq 4192(%rbp), %rbx
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
    movq %rbx, %rsi
    movq 4264(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 4264(%rbp), %rax
    movq 4440(%rbp), %rdi
    movq 4432(%rbp), %rsi
    movdqu 4416(%rbp), %xmm6
    movdqu 4400(%rbp), %xmm7
    movdqu 4384(%rbp), %xmm8
    movdqu 4368(%rbp), %xmm9
    movdqu 4352(%rbp), %xmm10
    movdqu 4336(%rbp), %xmm11
    movdqu 4320(%rbp), %xmm12
    movdqu 4304(%rbp), %xmm13
    movdqu 4288(%rbp), %xmm14
    movdqu 4272(%rbp), %xmm15
    movq 4256(%rbp), %rbx
    movq 4248(%rbp), %r12
    movq 4240(%rbp), %r13
    movq 4232(%rbp), %r14
    movq 4224(%rbp), %r15
    leaq 4448(%rbp), %rsp
    popq %rbp
    ret
.L47_11:
.L47_9:
    jmp .L47_6
.L47_5:
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %ebx
    leaq lb_c_interrupted(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    cmpl %r12d, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L47_15
    jmp .L47_18
.L47_18:
    movl %ebx, %r12d
    jmp .L47_16
.L47_15:
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %ebx
    leaq lb_process_11would_block(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    cmpl %r12d, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L47_16:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L47_12
    jmp .L47_13
.L47_12:
    leaq 4192(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_206(%rip), %r12
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $33, %rax
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
    movq 4264(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 4264(%rbp), %rax
    movq 4440(%rbp), %rdi
    movq 4432(%rbp), %rsi
    movdqu 4416(%rbp), %xmm6
    movdqu 4400(%rbp), %xmm7
    movdqu 4384(%rbp), %xmm8
    movdqu 4368(%rbp), %xmm9
    movdqu 4352(%rbp), %xmm10
    movdqu 4336(%rbp), %xmm11
    movdqu 4320(%rbp), %xmm12
    movdqu 4304(%rbp), %xmm13
    movdqu 4288(%rbp), %xmm14
    movdqu 4272(%rbp), %xmm15
    movq 4256(%rbp), %rbx
    movq 4248(%rbp), %r12
    movq 4240(%rbp), %r13
    movq 4232(%rbp), %r14
    movq 4224(%rbp), %r15
    leaq 4448(%rbp), %rsp
    popq %rbp
    ret
.L47_17:
    jmp .L47_14
.L47_13:
.L47_14:
.L47_6:
.L47_3:
    leaq 4192(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 4264(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 4264(%rbp), %rax
    movq 4440(%rbp), %rdi
    movq 4432(%rbp), %rsi
    movdqu 4416(%rbp), %xmm6
    movdqu 4400(%rbp), %xmm7
    movdqu 4384(%rbp), %xmm8
    movdqu 4368(%rbp), %xmm9
    movdqu 4352(%rbp), %xmm10
    movdqu 4336(%rbp), %xmm11
    movdqu 4320(%rbp), %xmm12
    movdqu 4304(%rbp), %xmm13
    movdqu 4288(%rbp), %xmm14
    movdqu 4272(%rbp), %xmm15
    movq 4256(%rbp), %rbx
    movq 4248(%rbp), %r12
    movq 4240(%rbp), %r13
    movq 4232(%rbp), %r14
    movq 4224(%rbp), %r15
    leaq 4448(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_process_15monitor_windows
lb_process_15monitor_windows:
    .seh_proc lb_process_15monitor_windows
    pushq %rbp
    .seh_pushreg %rbp
    subq $656, %rsp
    .seh_stackalloc 656
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 472(%rbp)
    movq %rdi, 648(%rbp)
    .seh_savereg %rdi, 648
    movq %rsi, 640(%rbp)
    .seh_savereg %rsi, 640
    movdqu %xmm6, 624(%rbp)
    .seh_savexmm %xmm6, 624
    movdqu %xmm7, 608(%rbp)
    .seh_savexmm %xmm7, 608
    movdqu %xmm8, 592(%rbp)
    .seh_savexmm %xmm8, 592
    movdqu %xmm9, 576(%rbp)
    .seh_savexmm %xmm9, 576
    movdqu %xmm10, 560(%rbp)
    .seh_savexmm %xmm10, 560
    movdqu %xmm11, 544(%rbp)
    .seh_savexmm %xmm11, 544
    movdqu %xmm12, 528(%rbp)
    .seh_savexmm %xmm12, 528
    movdqu %xmm13, 512(%rbp)
    .seh_savexmm %xmm13, 512
    movdqu %xmm14, 496(%rbp)
    .seh_savexmm %xmm14, 496
    movdqu %xmm15, 480(%rbp)
    .seh_savexmm %xmm15, 480
    movq %rbx, 464(%rbp)
    .seh_savereg %rbx, 464
    movq %r12, 456(%rbp)
    .seh_savereg %r12, 456
    movq %r13, 448(%rbp)
    .seh_savereg %r13, 448
    movq %r14, 440(%rbp)
    .seh_savereg %r14, 440
    movq %r15, 432(%rbp)
    .seh_savereg %r15, 432
    .seh_endprologue
    movq %rcx, 672(%rbp)
    movq %rdx, 680(%rbp)
    movq %r8, 688(%rbp)
    movq %r9, 696(%rbp)
    movq 680(%rbp), %rax
    movq %rax, 384(%rbp)
    movq 688(%rbp), %rax
    movq %rax, 368(%rbp)
    movq 696(%rbp), %rax
    movq %rax, 352(%rbp)
    movq 704(%rbp), %rax
    movq %rax, 336(%rbp)
    movq 712(%rbp), %rax
    movq %rax, 320(%rbp)
    subq $32, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call CreateJobObjectW
    addq $32, %rsp
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    testq %rax, %rax
    jne .L48_1
    jmp .L48_2
.L48_1:
    jmp .L48_3
.L48_2:
    leaq 400(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_216(%rip), %r12
    leaq 304(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $34, %rax
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
    leaq 384(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateProcess
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L48_3:
    leaq 384(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 80(%rbp)
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 80(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call AssignProcessToJobObject
    addq $32, %rsp
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L48_40
    jmp .L48_8
.L48_40:
    movl %r14d, %r15d
    jmp .L48_9
.L48_8:
    leaq 368(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call ResumeThread
    addq $32, %rsp
    movl %eax, %r14d
    movl $4294967295, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L48_9:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L48_5
    jmp .L48_6
.L48_5:
    leaq 400(%rbp), %r12
    leaq lb_process_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_217(%rip), %r14
    leaq 288(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $43, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateJobObject
    addq $32, %rsp
    movl %eax, %r14d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 80(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateProcess
    addq $32, %rsp
    movl %eax, %ebx
    movq %r12, %rsi
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L48_6:
.L48_7:
    leaq 352(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 8(%rsp)
    leaq 248(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_14command_reader
    addq $32, %rsp
    leaq 248(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L48_12
    jmp .L48_11
.L48_12:
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq 400(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateJobObject
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 80(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateProcess
    addq $32, %rsp
    movl %eax, %ebx
    movq %r14, %rsi
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L48_11:
    movq %r15, %r10
    movq (%r10), %r14
    leaq 336(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 208(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_14command_reader
    addq $32, %rsp
    leaq 208(%rbp), %r13
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L48_15
    jmp .L48_14
.L48_15:
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq 400(%rbp), %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateJobObject
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 80(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateProcess
    addq $32, %rsp
    movl %eax, %ebx
    movq %r15, %rsi
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L48_14:
    movq %r13, %r10
    movq (%r10), %r12
    leaq 200(%rbp), %rax
    movq %rax, 72(%rbp)
    movq $0, %rax
    movq 72(%rbp), %r10
    movq %rax, (%r10)
    leaq 192(%rbp), %rax
    movq %rax, 64(%rbp)
    movq $0, %rax
    movq 64(%rbp), %r10
    movq %rax, (%r10)
    leaq 320(%rbp), %rax
    movq %rax, 56(%rbp)
    leaq 128(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    leaq 96(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 24(%rbp)
.L48_17:
.L48_18:
    movq 56(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %r10
    movzbl (%r10), %eax
    movl %eax, %r13d
    testl %r13d, %r13d
    jne .L48_20
    jmp .L48_21
.L48_20:
    leaq 400(%rbp), %rbx
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_207(%rip), %r13
    leaq 176(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $17, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateJobObject
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    movq 88(%rbp), %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateProcess
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L48_21:
.L48_22:
    movq 88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 48(%rbp)
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $20, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call WaitForSingleObject
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %eax
    movl %eax, 40(%rbp)
    movl 40(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L48_27
    jmp .L48_41
.L48_41:
    movl %r15d, %ebx
    jmp .L48_28
.L48_27:
    movl $258, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl %r15d, %ebx
.L48_28:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L48_24
    jmp .L48_25
.L48_24:
    leaq 400(%rbp), %rbx
    leaq lb_process_failed(%rip), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movq %rbx, %r10
    movl %r15d, (%r10)
    leaq .Ltext_218(%rip), %r15
    leaq 160(%rbp), %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $30, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r13, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateJobObject
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateProcess
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L48_25:
.L48_26:
    movq 56(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 72(%rbp), %rax
    movq %rax, 16(%rsp)
    movq %rbx, %rax
    movq %rax, 24(%rsp)
    leaq 128(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_process_12pull_windows
    addq $32, %rsp
    movq 32(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L48_31
    jmp .L48_30
.L48_31:
    leaq 400(%rbp), %rbx
    movq 8(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateJobObject
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateProcess
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L48_30:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 64(%rbp), %rax
    movq %rax, 16(%rsp)
    movq %rbx, %rax
    movq %rax, 24(%rsp)
    leaq 96(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_process_12pull_windows
    addq $32, %rsp
    movq 24(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L48_34
    jmp .L48_33
.L48_34:
    leaq 400(%rbp), %rbx
    movq 0(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateJobObject
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateProcess
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L48_33:
    movl 40(%rbp), %eax
    testl %eax, %eax
    jne .L48_36
    jmp .L48_37
.L48_36:
    leaq 400(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateJobObject
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 472(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 472(%rbp), %rax
    movq 648(%rbp), %rdi
    movq 640(%rbp), %rsi
    movdqu 624(%rbp), %xmm6
    movdqu 608(%rbp), %xmm7
    movdqu 592(%rbp), %xmm8
    movdqu 576(%rbp), %xmm9
    movdqu 560(%rbp), %xmm10
    movdqu 544(%rbp), %xmm11
    movdqu 528(%rbp), %xmm12
    movdqu 512(%rbp), %xmm13
    movdqu 496(%rbp), %xmm14
    movdqu 480(%rbp), %xmm15
    movq 464(%rbp), %rbx
    movq 456(%rbp), %r12
    movq 448(%rbp), %r13
    movq 440(%rbp), %r14
    movq 432(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L48_37:
.L48_38:
    jmp .L48_17
    .seh_endproc

    .p2align 4
    .globl lb_process_12pull_windows
lb_process_12pull_windows:
    .seh_proc lb_process_12pull_windows
    pushq %rbp
    .seh_pushreg %rbp
    movq $4624, %rax
    call ___chkstk_ms
    subq $4624, %rsp
    .seh_stackalloc 4624
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 4440(%rbp)
    movq %rdi, 4616(%rbp)
    .seh_savereg %rdi, 4616
    movq %rsi, 4608(%rbp)
    .seh_savereg %rsi, 4608
    movdqu %xmm6, 4592(%rbp)
    .seh_savexmm %xmm6, 4592
    movdqu %xmm7, 4576(%rbp)
    .seh_savexmm %xmm7, 4576
    movdqu %xmm8, 4560(%rbp)
    .seh_savexmm %xmm8, 4560
    movdqu %xmm9, 4544(%rbp)
    .seh_savexmm %xmm9, 4544
    movdqu %xmm10, 4528(%rbp)
    .seh_savexmm %xmm10, 4528
    movdqu %xmm11, 4512(%rbp)
    .seh_savexmm %xmm11, 4512
    movdqu %xmm12, 4496(%rbp)
    .seh_savexmm %xmm12, 4496
    movdqu %xmm13, 4480(%rbp)
    .seh_savexmm %xmm13, 4480
    movdqu %xmm14, 4464(%rbp)
    .seh_savexmm %xmm14, 4464
    movdqu %xmm15, 4448(%rbp)
    .seh_savexmm %xmm15, 4448
    movq %rbx, 4432(%rbp)
    .seh_savereg %rbx, 4432
    movq %r12, 4424(%rbp)
    .seh_savereg %r12, 4424
    movq %r13, 4416(%rbp)
    .seh_savereg %r13, 4416
    movq %r14, 4408(%rbp)
    .seh_savereg %r14, 4408
    movq %r15, 4400(%rbp)
    .seh_savereg %r15, 4400
    .seh_endprologue
    movq %rcx, 4640(%rbp)
    movq %rdx, 4648(%rbp)
    movq %r8, 4656(%rbp)
    movq %r9, 4664(%rbp)
    movq 4648(%rbp), %rax
    movq %rax, 4352(%rbp)
    movq 4656(%rbp), %rax
    movq %rax, 4336(%rbp)
    movq 4664(%rbp), %rax
    movq %rax, 4320(%rbp)
    leaq 4312(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 4352(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call GetFileSizeEx
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L49_33
    jmp .L49_4
.L49_33:
    movl %r13d, %r14d
    jmp .L49_5
.L49_4:
    movq %rbx, %r10
    movq (%r10), %r13
    leaq 4336(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    setl %al
    movzbl %al, %r14d
.L49_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L49_1
    jmp .L49_2
.L49_1:
    leaq 4368(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_219(%rip), %r12
    leaq 4296(%rbp), %r13
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
    movq 4440(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 4440(%rbp), %rax
    movq 4616(%rbp), %rdi
    movq 4608(%rbp), %rsi
    movdqu 4592(%rbp), %xmm6
    movdqu 4576(%rbp), %xmm7
    movdqu 4560(%rbp), %xmm8
    movdqu 4544(%rbp), %xmm9
    movdqu 4528(%rbp), %xmm10
    movdqu 4512(%rbp), %xmm11
    movdqu 4496(%rbp), %xmm12
    movdqu 4480(%rbp), %xmm13
    movdqu 4464(%rbp), %xmm14
    movdqu 4448(%rbp), %xmm15
    movq 4432(%rbp), %rbx
    movq 4424(%rbp), %r12
    movq 4416(%rbp), %r13
    movq 4408(%rbp), %r14
    movq 4400(%rbp), %r15
    leaq 4624(%rbp), %rsp
    popq %rbp
    ret
.L49_6:
    jmp .L49_3
.L49_2:
.L49_3:
    movq %rbx, %r10
    movq (%r10), %r13
    leaq 4336(%rbp), %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %r10
    movq (%r10), %r15
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, 56(%rbp)
    movq %r13, %rax
    movq 56(%rbp), %rcx
    subq %rcx, %rax
    jno 1f
    leaq .Ltext_220(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    leaq 4320(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %r10
    movq (%r10), %r14
    movq $48, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    jbe .L49_8
.L49_7:
    leaq 4368(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_198(%rip), %r12
    leaq 4280(%rbp), %r13
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
    movq 4440(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 4440(%rbp), %rax
    movq 4616(%rbp), %rdi
    movq 4608(%rbp), %rsi
    movdqu 4592(%rbp), %xmm6
    movdqu 4576(%rbp), %xmm7
    movdqu 4560(%rbp), %xmm8
    movdqu 4544(%rbp), %xmm9
    movdqu 4528(%rbp), %xmm10
    movdqu 4512(%rbp), %xmm11
    movdqu 4496(%rbp), %xmm12
    movdqu 4480(%rbp), %xmm13
    movdqu 4464(%rbp), %xmm14
    movdqu 4448(%rbp), %xmm15
    movq 4432(%rbp), %rbx
    movq 4424(%rbp), %r12
    movq 4416(%rbp), %r13
    movq 4408(%rbp), %r14
    movq 4400(%rbp), %r15
    leaq 4624(%rbp), %rsp
    popq %rbp
    ret
.L49_10:
    jmp .L49_9
.L49_8:
.L49_9:
    leaq 184(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %rdi
    xorl %esi, %esi
    movq $4096, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memset
    addq $32, %rsp
    leaq 148(%rbp), %rax
    movq %rax, 32(%rbp)
    leaq 112(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 16(%rbp)
    leaq 80(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 8(%rbp)
    movq %r15, %r12
    movq %r14, %r13
.L49_11:
    movq %r12, %r10
    movq (%r10), %r14
    movq %rbx, %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    jge .L49_13
.L49_12:
    movq %r13, %r10
    movzbl (%r10), %eax
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L49_14
    jmp .L49_15
.L49_14:
    leaq 4368(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_207(%rip), %r12
    leaq 168(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $17, %rax
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
    movq 4440(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 4440(%rbp), %rax
    movq 4616(%rbp), %rdi
    movq 4608(%rbp), %rsi
    movdqu 4592(%rbp), %xmm6
    movdqu 4576(%rbp), %xmm7
    movdqu 4560(%rbp), %xmm8
    movdqu 4544(%rbp), %xmm9
    movdqu 4528(%rbp), %xmm10
    movdqu 4512(%rbp), %xmm11
    movdqu 4496(%rbp), %xmm12
    movdqu 4480(%rbp), %xmm13
    movdqu 4464(%rbp), %xmm14
    movdqu 4448(%rbp), %xmm15
    movq 4432(%rbp), %rbx
    movq 4424(%rbp), %r12
    movq 4416(%rbp), %r13
    movq 4408(%rbp), %r14
    movq 4400(%rbp), %r15
    leaq 4624(%rbp), %rsp
    popq %rbp
    ret
.L49_17:
    jmp .L49_16
.L49_15:
.L49_16:
    movq 72(%rbp), %r10
    movq (%r10), %r12
    movq 64(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movl $0, %eax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call SetFilePointerEx
    addq $32, %rsp
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L49_19
.L49_18:
    leaq 4368(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_221(%rip), %r12
    leaq 152(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $39, %rax
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
    movq 4440(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 4440(%rbp), %rax
    movq 4616(%rbp), %rdi
    movq 4608(%rbp), %rsi
    movdqu 4592(%rbp), %xmm6
    movdqu 4576(%rbp), %xmm7
    movdqu 4560(%rbp), %xmm8
    movdqu 4544(%rbp), %xmm9
    movdqu 4528(%rbp), %xmm10
    movdqu 4512(%rbp), %xmm11
    movdqu 4496(%rbp), %xmm12
    movdqu 4480(%rbp), %xmm13
    movdqu 4464(%rbp), %xmm14
    movdqu 4448(%rbp), %xmm15
    movq 4432(%rbp), %rbx
    movq 4424(%rbp), %r12
    movq 4416(%rbp), %r13
    movq 4408(%rbp), %r14
    movq 4400(%rbp), %r15
    leaq 4624(%rbp), %rsp
    popq %rbp
    ret
.L49_21:
    jmp .L49_20
.L49_19:
.L49_20:
    movl $0, %eax
    movq 32(%rbp), %r10
    movl %eax, (%r10)
    movq %rbx, %r10
    movq (%r10), %r14
    movq %r13, %r10
    movq (%r10), %r15
    movq %r14, %rax
    movq %r15, %rcx
    subq %rcx, %rax
    jno 1f
    leaq .Ltext_222(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    subq $32, %rsp
    movq $4096, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_13math_min_size
    addq $32, %rsp
    movq %rax, %r14
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 40(%rbp), %rax
    movq %rax, 8(%rsp)
    movl %r14d, %eax
    movq %rax, 16(%rsp)
    movq 32(%rbp), %rax
    movq %rax, 24(%rsp)
    movq $0, %rax
    movq %rax, 32(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call ReadFile
    addq $48, %rsp
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L49_34
    jmp .L49_25
.L49_34:
    movl %r14d, %r12d
    jmp .L49_26
.L49_25:
    movq 32(%rbp), %r10
    movl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L49_26:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L49_22
    jmp .L49_23
.L49_22:
    leaq 4368(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_206(%rip), %r12
    leaq 128(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $33, %rax
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
    movq 4440(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 4440(%rbp), %rax
    movq 4616(%rbp), %rdi
    movq 4608(%rbp), %rsi
    movdqu 4592(%rbp), %xmm6
    movdqu 4576(%rbp), %xmm7
    movdqu 4560(%rbp), %xmm8
    movdqu 4544(%rbp), %xmm9
    movdqu 4528(%rbp), %xmm10
    movdqu 4512(%rbp), %xmm11
    movdqu 4496(%rbp), %xmm12
    movdqu 4480(%rbp), %xmm13
    movdqu 4464(%rbp), %xmm14
    movdqu 4448(%rbp), %xmm15
    movq 4432(%rbp), %rbx
    movq 4424(%rbp), %r12
    movq 4416(%rbp), %r13
    movq 4408(%rbp), %r14
    movq 4400(%rbp), %r15
    leaq 4624(%rbp), %rsp
    popq %rbp
    ret
.L49_27:
    jmp .L49_24
.L49_23:
.L49_24:
    movq 48(%rbp), %r10
    movq (%r10), %r14
    movq 32(%rbp), %r10
    movl (%r10), %r12d
    movl %r12d, %r15d
    movq $4097, %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_224(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r15, %rax
    jbe .L49_28
.L49_29:
    leaq .Ltext_224(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L49_28:
    movq 40(%rbp), %rax
    movq 24(%rbp), %r10
    movq %rax, (%r10)
    movq 16(%rbp), %r10
    movq %r15, (%r10)
    subq $48, %rsp
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 24(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 80(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_process_14command_append
    addq $48, %rsp
    movq 8(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L49_31
    jmp .L49_30
.L49_31:
    leaq 4368(%rbp), %rbx
    movq 0(%rbp), %r10
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
    movq 4440(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 4440(%rbp), %rax
    movq 4616(%rbp), %rdi
    movq 4608(%rbp), %rsi
    movdqu 4592(%rbp), %xmm6
    movdqu 4576(%rbp), %xmm7
    movdqu 4560(%rbp), %xmm8
    movdqu 4544(%rbp), %xmm9
    movdqu 4528(%rbp), %xmm10
    movdqu 4512(%rbp), %xmm11
    movdqu 4496(%rbp), %xmm12
    movdqu 4480(%rbp), %xmm13
    movdqu 4464(%rbp), %xmm14
    movdqu 4448(%rbp), %xmm15
    movq 4432(%rbp), %rbx
    movq 4424(%rbp), %r12
    movq 4416(%rbp), %r13
    movq 4408(%rbp), %r14
    movq 4400(%rbp), %r15
    leaq 4624(%rbp), %rsp
    popq %rbp
    ret
.L49_32:
.L49_30:
    movq %r13, %r10
    movq (%r10), %r12
    movq 32(%rbp), %r10
    movl (%r10), %r15d
    movl %r15d, %r15d
    movq %r12, %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jno 1f
    leaq .Ltext_225(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %r13, %r10
    movq %r12, (%r10)
    movq %r13, %r12
    movq %r14, %r13
    jmp .L49_11
.L49_13:
    leaq 4368(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 4440(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 4440(%rbp), %rax
    movq 4616(%rbp), %rdi
    movq 4608(%rbp), %rsi
    movdqu 4592(%rbp), %xmm6
    movdqu 4576(%rbp), %xmm7
    movdqu 4560(%rbp), %xmm8
    movdqu 4544(%rbp), %xmm9
    movdqu 4528(%rbp), %xmm10
    movdqu 4512(%rbp), %xmm11
    movdqu 4496(%rbp), %xmm12
    movdqu 4480(%rbp), %xmm13
    movdqu 4464(%rbp), %xmm14
    movdqu 4448(%rbp), %xmm15
    movq 4432(%rbp), %rbx
    movq 4424(%rbp), %r12
    movq 4416(%rbp), %r13
    movq 4408(%rbp), %r14
    movq 4400(%rbp), %r15
    leaq 4624(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_process_14command_reader
lb_process_14command_reader:
    .seh_proc lb_process_14command_reader
    pushq %rbp
    .seh_pushreg %rbp
    movq $65840, %rax
    call ___chkstk_ms
    subq $65840, %rsp
    .seh_stackalloc 65840
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 65656(%rbp)
    movq %rdi, 65832(%rbp)
    .seh_savereg %rdi, 65832
    movq %rsi, 65824(%rbp)
    .seh_savereg %rsi, 65824
    movdqu %xmm6, 65808(%rbp)
    .seh_savexmm %xmm6, 65808
    movdqu %xmm7, 65792(%rbp)
    .seh_savexmm %xmm7, 65792
    movdqu %xmm8, 65776(%rbp)
    .seh_savexmm %xmm8, 65776
    movdqu %xmm9, 65760(%rbp)
    .seh_savexmm %xmm9, 65760
    movdqu %xmm10, 65744(%rbp)
    .seh_savexmm %xmm10, 65744
    movdqu %xmm11, 65728(%rbp)
    .seh_savexmm %xmm11, 65728
    movdqu %xmm12, 65712(%rbp)
    .seh_savexmm %xmm12, 65712
    movdqu %xmm13, 65696(%rbp)
    .seh_savexmm %xmm13, 65696
    movdqu %xmm14, 65680(%rbp)
    .seh_savexmm %xmm14, 65680
    movdqu %xmm15, 65664(%rbp)
    .seh_savexmm %xmm15, 65664
    movq %rbx, 65648(%rbp)
    .seh_savereg %rbx, 65648
    movq %r12, 65640(%rbp)
    .seh_savereg %r12, 65640
    movq %r13, 65632(%rbp)
    .seh_savereg %r13, 65632
    movq %r14, 65624(%rbp)
    .seh_savereg %r14, 65624
    .seh_endprologue
    movq %rcx, 65856(%rbp)
    movq %rdx, 65864(%rbp)
    movq %r8, 65872(%rbp)
    movq %r9, 65880(%rbp)
    movq 65864(%rbp), %rax
    movq %rax, 65568(%rbp)
    leaq 32(%rbp), %rbx
    movq %rbx, %rdi
    xorl %esi, %esi
    movq $65536, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memset
    addq $32, %rsp
    leaq 65568(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _fileno
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _get_osfhandle
    addq $32, %rsp
    movq %rax, %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl $32768, %eax
    movq %rax, 16(%rsp)
    movl $0, %eax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call GetFinalPathNameByHandleW
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L50_14
    jmp .L50_4
.L50_14:
    movl %r13d, %r12d
    jmp .L50_5
.L50_4:
    movl $32768, %ecx
    cmpl %ecx, %r12d
    setae %al
    movzbl %al, %r13d
    movl %r13d, %r12d
.L50_5:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L50_1
    jmp .L50_2
.L50_1:
    leaq 65584(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_227(%rip), %r13
    leaq 16(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $39, %rax
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
    movq 65656(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 65656(%rbp), %rax
    movq 65832(%rbp), %rdi
    movq 65824(%rbp), %rsi
    movdqu 65808(%rbp), %xmm6
    movdqu 65792(%rbp), %xmm7
    movdqu 65776(%rbp), %xmm8
    movdqu 65760(%rbp), %xmm9
    movdqu 65744(%rbp), %xmm10
    movdqu 65728(%rbp), %xmm11
    movdqu 65712(%rbp), %xmm12
    movdqu 65696(%rbp), %xmm13
    movdqu 65680(%rbp), %xmm14
    movdqu 65664(%rbp), %xmm15
    movq 65648(%rbp), %rbx
    movq 65640(%rbp), %r12
    movq 65632(%rbp), %r13
    movq 65624(%rbp), %r14
    leaq 65840(%rbp), %rsp
    popq %rbp
    ret
.L50_6:
    jmp .L50_3
.L50_2:
.L50_3:
    subq $64, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $2147483648, %eax
    movq %rax, 8(%rsp)
    movl $7, %eax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    movl $3, %eax
    movq %rax, 32(%rsp)
    movl $128, %eax
    movq %rax, 40(%rsp)
    movq $0, %rax
    movq %rax, 48(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call CreateFileW
    addq $64, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L50_7
    jmp .L50_8
.L50_8:
    leaq .Ltext_228(%rip), %rdi
    leaq .Ltext_41(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L50_7:
    movq $-1, %rcx
    cmpq %rcx, %r12
    jne .L50_10
.L50_9:
    leaq 65584(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_229(%rip), %r13
    leaq 0(%rbp), %r14
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
    movq 65656(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 65656(%rbp), %rax
    movq 65832(%rbp), %rdi
    movq 65824(%rbp), %rsi
    movdqu 65808(%rbp), %xmm6
    movdqu 65792(%rbp), %xmm7
    movdqu 65776(%rbp), %xmm8
    movdqu 65760(%rbp), %xmm9
    movdqu 65744(%rbp), %xmm10
    movdqu 65728(%rbp), %xmm11
    movdqu 65712(%rbp), %xmm12
    movdqu 65696(%rbp), %xmm13
    movdqu 65680(%rbp), %xmm14
    movdqu 65664(%rbp), %xmm15
    movq 65648(%rbp), %rbx
    movq 65640(%rbp), %r12
    movq 65632(%rbp), %r13
    movq 65624(%rbp), %r14
    leaq 65840(%rbp), %rsp
    popq %rbp
    ret
.L50_12:
    jmp .L50_11
.L50_10:
.L50_11:
    leaq 65584(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 65656(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 65656(%rbp), %rax
    movq 65832(%rbp), %rdi
    movq 65824(%rbp), %rsi
    movdqu 65808(%rbp), %xmm6
    movdqu 65792(%rbp), %xmm7
    movdqu 65776(%rbp), %xmm8
    movdqu 65760(%rbp), %xmm9
    movdqu 65744(%rbp), %xmm10
    movdqu 65728(%rbp), %xmm11
    movdqu 65712(%rbp), %xmm12
    movdqu 65696(%rbp), %xmm13
    movdqu 65680(%rbp), %xmm14
    movdqu 65664(%rbp), %xmm15
    movq 65648(%rbp), %rbx
    movq 65640(%rbp), %r12
    movq 65632(%rbp), %r13
    movq 65624(%rbp), %r14
    leaq 65840(%rbp), %rsp
    popq %rbp
    ret
.L50_13:
    leaq .Ltext_230(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .section .text$lb_memory_copy_0g1_u8,"xr"
    .p2align 4
    .globl lb_memory_copy_0g1_u8
lb_memory_copy_0g1_u8:
    .seh_proc lb_memory_copy_0g1_u8
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
    movq 288(%rbp), %r10
    leaq 48(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 296(%rbp), %r10
    leaq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 304(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 48(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L51_11
    jmp .L51_4
.L51_11:
    movl %r13d, %r14d
    jmp .L51_5
.L51_4:
    leaq 32(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L51_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L51_1
    jmp .L51_2
.L51_1:
    leaq .Ltext_8(%rip), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_231(%rip), %r13
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_12trap_text_at
    addq $48, %rsp
    jmp .L51_3
.L51_2:
.L51_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L51_7
.L51_6:
    movq %r12, %r10
    movq (%r10), %r13
    leaq 32(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L51_9
    jmp .L51_10
.L51_10:
    leaq .Ltext_232(%rip), %rdi
    leaq .Ltext_41(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L51_9:
    jmp .L51_8
.L51_7:
.L51_8:
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
    .seh_endproc

    .text

    .section .text$lb_process_15release_storage_0g1_u16,"xr"
    .p2align 4
    .globl lb_process_15release_storage_0g1_u16
lb_process_15release_storage_0g1_u16:
    .seh_proc lb_process_15release_storage_0g1_u16
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
    movq %r14, 48(%rbp)
    .seh_savereg %r14, 48
    movq %r15, 40(%rbp)
    .seh_savereg %r15, 40
    .seh_endprologue
    movq %rcx, 272(%rbp)
    movq %rdx, 280(%rbp)
    movq %r8, 288(%rbp)
    movq %r9, 296(%rbp)
    movq 272(%rbp), %r10
    leaq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 24(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L52_2
.L52_1:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 0(%rbp)
    leaq 8(%rbp), %r14
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r12, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_233(%rip), %rdi
    leaq .Ltext_234(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq 0(%rbp), %r10
    movq (%r10), %r13
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L52_5
    jmp .L52_4
.L52_5:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %r10
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
.L52_4:
    jmp .L52_3
.L52_2:
.L52_3:
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
    movq 48(%rbp), %r14
    movq 40(%rbp), %r15
    leaq 256(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .text

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_process_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "Command"
.Ltext_1:
    .asciz "src/std/process/module.lucb:43:9"
.Ltext_2:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_3:
    .asciz "memory.unset"
.Ltext_4:
    .asciz "src/std/process/module.lucb:45:17"
.Ltext_5:
    .asciz "memory.exhausted"
.Ltext_6:
    .asciz "src/std/process/module.lucb:47:17"
.Ltext_7:
    .asciz "src/std/process/module.lucb:48:9"
.Ltext_8:
    .asciz "index out of bounds"
.Ltext_9:
    .asciz "src/std/process/module.lucb:52:13"
.Ltext_10:
    .asciz "the program's output cannot be read"
.Ltext_11:
    .asciz "src/std/process/module.lucb:62:17"
.Ltext_12:
    .asciz "src/std/process/module.lucb:65:9"
.Ltext_13:
    .asciz "src/std/process/module.lucb:67:9"
.Ltext_14:
    .asciz "unreachable"
.Ltext_15:
    .asciz "src/std/process/module.lucb:69:9"
.Ltext_16:
    .asciz "src/std/process/module.lucb:73:13"
.Ltext_17:
    .asciz "src/std/process/module.lucb:89:5"
.Ltext_18:
    .asciz "src/std/process/module.lucb:93:9"
.Ltext_19:
    .asciz "src/std/process/module.lucb:184:9"
.Ltext_20:
    .asciz "src/std/process/module.lucb:185:9"
.Ltext_21:
    .asciz "src/std/process/module.lucb:190:9"
.Ltext_22:
    .asciz "src/std/process/module.lucb:192:9"
.Ltext_23:
    .asciz "run"
.Ltext_24:
    .asciz "src/std/process/module.lucb:201:5"
.Ltext_25:
    .asciz "src/std/process/module.lucb:213:9"
.Ltext_26:
    .asciz "src/std/process/windows.lucb:53:13"
.Ltext_27:
    .asciz "src/std/process/windows.lucb:54:13"
.Ltext_28:
    .asciz "src/std/process/windows.lucb:56:5"
.Ltext_29:
    .asciz "src/std/process/windows.lucb:57:5"
.Ltext_30:
    .asciz "src/std/process/windows.lucb:61:13"
.Ltext_31:
    .asciz "src/std/process/windows.lucb:63:9"
.Ltext_32:
    .asciz "src/std/process/windows.lucb:66:13"
.Ltext_33:
    .asciz "src/std/process/windows.lucb:67:13"
.Ltext_34:
    .asciz "src/std/process/windows.lucb:68:9"
.Ltext_35:
    .asciz "src/std/process/windows.lucb:69:9"
.Ltext_36:
    .asciz "src/std/process/windows.lucb:71:5"
.Ltext_37:
    .asciz "src/std/process/windows.lucb:73:9"
.Ltext_38:
    .asciz "src/std/process/windows.lucb:74:9"
.Ltext_39:
    .asciz "src/std/process/windows.lucb:75:5"
.Ltext_40:
    .asciz "src/std/process/windows.lucb:76:5"
.Ltext_41:
    .asciz "null_foreign"
.Ltext_42:
    .asciz "src/std/process/windows.lucb:80:5"
.Ltext_43:
    .asciz "a child stream could not be inherited"
.Ltext_44:
    .asciz "a child stream has no handle"
.Ltext_45:
    .asciz "src/std/process/windows.lucb:83:5"
.Ltext_46:
    .asciz "a child stream could not be measured"
.Ltext_47:
    .asciz "a child stream could not be read"
.Ltext_48:
    .asciz "src/std/process/windows.lucb:91:5"
.Ltext_49:
    .asciz "src/std/process/windows.lucb:93:9"
.Ltext_50:
    .asciz "src/std/process/windows.lucb:95:5"
.Ltext_51:
    .asciz "src/std/process/windows.lucb:100:5"
.Ltext_52:
    .asciz "src/std/process/windows.lucb:101:5"
.Ltext_53:
    .asciz "the child temporary directory is unavailable"
.Ltext_54:
    .asciz "0123456789abcdef"
.Ltext_55:
    .asciz "src/std/process/windows.lucb:109:13"
.Ltext_56:
    .asciz "shift count out of range"
.Ltext_57:
    .asciz "src/std/process/windows.lucb:110:13"
.Ltext_58:
    .asciz "src/std/process/windows.lucb:111:9"
.Ltext_59:
    .asciz "src/std/process/windows.lucb:112:9"
.Ltext_60:
    .asciz "a child capture file could not be created"
.Ltext_61:
    .asciz "a child capture descriptor could not be created"
.Ltext_62:
    .asciz "w+b"
.Ltext_63:
    .asciz "a child capture stream could not be created"
.Ltext_64:
    .asciz "no unused child capture name was found"
.Ltext_65:
    .asciz "src/std/process/windows.lucb:124:5"
.Ltext_66:
    .asciz "the process command is too long"
.Ltext_67:
    .asciz "src/std/process/windows.lucb:134:5"
.Ltext_68:
    .asciz "src/std/process/windows.lucb:139:9"
.Ltext_69:
    .asciz "src/std/process/windows.lucb:140:9"
.Ltext_70:
    .asciz "src/std/process/windows.lucb:142:5"
.Ltext_71:
    .asciz "src/std/process/windows.lucb:143:5"
.Ltext_72:
    .asciz "src/std/process/windows.lucb:146:9"
.Ltext_73:
    .asciz "src/std/process/windows.lucb:149:9"
.Ltext_74:
    .asciz "src/std/process/windows.lucb:153:9"
.Ltext_75:
    .asciz "src/std/process/windows.lucb:155:5"
.Ltext_76:
    .asciz "src/std/process/windows.lucb:157:5"
.Ltext_77:
    .asciz "NUL"
.Ltext_78:
    .asciz "rb"
.Ltext_79:
    .asciz "the child input could not be opened"
.Ltext_80:
    .asciz "src/std/process/windows.lucb:159:5"
.Ltext_81:
    .asciz "src/std/process/windows.lucb:161:5"
.Ltext_82:
    .asciz "src/std/process/windows.lucb:163:5"
.Ltext_83:
    .asciz "src/std/process/windows.lucb:165:5"
.Ltext_84:
    .asciz "the process could not be started"
.Ltext_85:
    .asciz "src/std/process/windows.lucb:177:9"
.Ltext_86:
    .asciz "CreateProcess returned no process"
.Ltext_87:
    .asciz "src/std/process/windows.lucb:178:5"
.Ltext_88:
    .asciz "CreateProcess returned no thread"
.Ltext_89:
    .asciz "src/std/process/windows.lucb:179:5"
.Ltext_90:
    .asciz "src/std/process/windows.lucb:183:9"
.Ltext_91:
    .asciz "waiting for the process failed"
.Ltext_92:
    .asciz "src/std/process/windows.lucb:187:9"
.Ltext_93:
    .asciz "the process exit status is unavailable"
.Ltext_94:
    .asciz "src/std/process/windows.lucb:190:9"
.Ltext_95:
    .asciz ""
.Ltext_96:
    .asciz "src/std/process/windows.lucb:192:9"
.Ltext_97:
    .asciz "src/std/process/windows.lucb:193:5"
.Ltext_98:
    .asciz "src/std/process/windows.lucb:196:9"
.Ltext_99:
    .asciz "src/std/process/windows.lucb:197:5"
.Ltext_100:
    .asciz "src/std/process/termination/module.lucb:14:9"
.Ltext_101:
    .asciz "the process is already closing"
.Ltext_102:
    .asciz "src/std/process/termination/module.lucb:33:9"
.Ltext_103:
    .asciz "src/std/process/termination/module.lucb:41:9"
.Ltext_104:
    .asciz "src/std/process/termination/posix.lucb:16:5"
.Ltext_105:
    .asciz "SIGINT handler could not be installed"
.Ltext_106:
    .asciz "SIGTERM handler could not be installed"
.Ltext_107:
    .asciz "src/std/process/termination/windows.lucb:25:5"
.Ltext_108:
    .asciz "the console termination handler could not be installed"
.Ltext_109:
    .asciz "src/std/process/environment/posix.lucb:10:5"
.Ltext_110:
    .asciz "src/std/process/environment/posix.lucb:15:9"
.Ltext_111:
    .asciz "src/std/process/environment/posix.lucb:18:13"
.Ltext_112:
    .asciz "an environment override must be NAME=value with a nonempty name"
.Ltext_113:
    .asciz "src/std/process/environment/posix.lucb:19:5"
.Ltext_114:
    .asciz "src/std/process/environment/posix.lucb:23:9"
.Ltext_115:
    .asciz "src/std/process/environment/posix.lucb:25:13"
.Ltext_116:
    .asciz "an environment override repeats a name"
.Ltext_117:
    .asciz "src/std/process/environment/posix.lucb:29:9"
.Ltext_118:
    .asciz "the environment is too large"
.Ltext_119:
    .asciz "src/std/process/environment/posix.lucb:32:5"
.Ltext_120:
    .asciz "the environment changed during process creation"
.Ltext_121:
    .asciz "src/std/process/environment/posix.lucb:36:9"
.Ltext_122:
    .asciz "src/std/process/environment/posix.lucb:41:13"
.Ltext_123:
    .asciz "src/std/process/environment/posix.lucb:45:13"
.Ltext_124:
    .asciz "src/std/process/environment/posix.lucb:46:13"
.Ltext_125:
    .asciz "src/std/process/environment/posix.lucb:48:9"
.Ltext_126:
    .asciz "src/std/process/environment/posix.lucb:49:9"
.Ltext_127:
    .asciz "src/std/process/environment/posix.lucb:50:5"
.Ltext_128:
    .asciz "src/std/process/environment/posix.lucb:51:5"
.Ltext_129:
    .asciz "src/std/process/environment/windows.lucb:10:5"
.Ltext_130:
    .asciz "src/std/process/environment/windows.lucb:11:9"
.Ltext_131:
    .asciz "src/std/process/environment/windows.lucb:12:5"
.Ltext_132:
    .asciz "src/std/process/environment/windows.lucb:17:5"
.Ltext_133:
    .asciz "the inherited environment is unavailable"
.Ltext_134:
    .asciz "src/std/process/environment/windows.lucb:25:9"
.Ltext_135:
    .asciz "src/std/process/environment/windows.lucb:27:13"
.Ltext_136:
    .asciz "src/std/process/environment/windows.lucb:28:9"
.Ltext_137:
    .asciz "src/std/process/environment/windows.lucb:29:5"
.Ltext_138:
    .asciz "src/std/process/environment/windows.lucb:34:9"
.Ltext_139:
    .asciz "src/std/process/environment/windows.lucb:35:9"
.Ltext_140:
    .asciz "src/std/process/environment/windows.lucb:36:9"
.Ltext_141:
    .asciz "src/std/process/environment/windows.lucb:38:13"
.Ltext_142:
    .asciz "src/std/process/environment/windows.lucb:39:17"
.Ltext_143:
    .asciz "src/std/process/environment/windows.lucb:40:5"
.Ltext_144:
    .asciz "src/std/process/environment/windows.lucb:41:5"
.Ltext_145:
    .asciz "src/std/process/environment/windows.lucb:48:13"
.Ltext_146:
    .asciz "src/std/process/environment/windows.lucb:49:9"
.Ltext_147:
    .asciz "src/std/process/environment/windows.lucb:50:9"
.Ltext_148:
    .asciz "src/std/process/environment/windows.lucb:53:13"
.Ltext_149:
    .asciz "src/std/process/environment/windows.lucb:57:13"
.Ltext_150:
    .asciz "src/std/process/environment/windows.lucb:58:13"
.Ltext_151:
    .asciz "src/std/process/environment/windows.lucb:60:9"
.Ltext_152:
    .asciz "src/std/process/environment/windows.lucb:61:9"
.Ltext_153:
    .asciz "src/std/process/environment/windows.lucb:63:9"
.Ltext_154:
    .asciz "src/std/process/environment/windows.lucb:65:9"
.Ltext_155:
    .asciz "src/std/process/environment/windows.lucb:66:13"
.Ltext_156:
    .asciz "src/std/process/environment/windows.lucb:67:13"
.Ltext_157:
    .asciz "src/std/process/environment/windows.lucb:68:9"
.Ltext_158:
    .asciz "src/std/process/environment/windows.lucb:71:9"
.Ltext_159:
    .asciz "src/std/process/environment/windows.lucb:72:5"
.Ltext_160:
    .asciz "src/std/process/environment/windows.lucb:75:9"
.Ltext_161:
    .asciz "src/std/process/environment/windows.lucb:76:13"
.Ltext_162:
    .asciz "src/std/process/environment/windows.lucb:77:13"
.Ltext_163:
    .asciz "src/std/process/environment/windows.lucb:78:5"
.Ltext_164:
    .asciz "src/std/process/environment/windows.lucb:79:5"
.Ltext_165:
    .asciz "src/std/process/environment/windows.lucb:83:9"
.Ltext_166:
    .asciz "a command argument must be UTF-8"
.Ltext_167:
    .asciz "a command argument cannot contain NUL"
.Ltext_168:
    .asciz "src/std/process/command/module.lucb:32:9"
.Ltext_169:
    .asciz "a command needs a program and an output limit in 1..16 MiB"
.Ltext_170:
    .asciz "src/std/process/command/module.lucb:44:9"
.Ltext_171:
    .asciz "src/std/process/command/module.lucb:48:9"
.Ltext_172:
    .asciz "src/std/process/command/module.lucb:50:13"
.Ltext_173:
    .asciz "src/std/process/command/module.lucb:51:13"
.Ltext_174:
    .asciz "src/std/process/command/module.lucb:53:13"
.Ltext_175:
    .asciz "src/std/process/command/module.lucb:55:17"
.Ltext_176:
    .asciz "src/std/process/command/module.lucb:56:17"
.Ltext_177:
    .asciz "command"
.Ltext_178:
    .asciz "the command is closed"
.Ltext_179:
    .asciz "src/std/process/command/module.lucb:62:9"
.Ltext_180:
    .asciz "src/std/process/command/module.lucb:65:9"
.Ltext_181:
    .asciz "src/std/process/command/module.lucb:68:9"
.Ltext_182:
    .asciz "src/std/process/command/module.lucb:73:9"
.Ltext_183:
    .asciz "src/std/process/command/module.lucb:84:13"
.Ltext_184:
    .asciz "\357\277\275"
.Ltext_185:
    .asciz "src/std/process/command/module.lucb:90:25"
.Ltext_186:
    .asciz "src/std/process/command/module.lucb:91:21"
.Ltext_187:
    .asciz "src/std/process/command/module.lucb:94:21"
.Ltext_188:
    .asciz "src/std/process/command/module.lucb:95:13"
.Ltext_189:
    .asciz "src/std/process/command/module.lucb:100:9"
.Ltext_190:
    .asciz "a command worker could not be joined"
.Ltext_191:
    .asciz "src/std/process/command/module.lucb:110:13"
.Ltext_192:
    .asciz "src/std/process/command/module.lucb:125:9"
.Ltext_193:
    .asciz "src/std/process/command/module.lucb:128:13"
.Ltext_194:
    .asciz "src/std/process/command/module.lucb:129:9"
.Ltext_195:
    .asciz "src/std/process/command/module.lucb:132:13"
.Ltext_196:
    .asciz "src/std/process/command/module.lucb:134:13"
.Ltext_197:
    .asciz "src/std/process/command/module.lucb:153:5"
.Ltext_198:
    .asciz "the command exceeded its output limit"
.Ltext_199:
    .asciz "src/std/process/command/module.lucb:155:5"
.Ltext_200:
    .asciz "src/std/process/command/module.lucb:157:9"
.Ltext_201:
    .asciz "src/std/process/command/module.lucb:159:13"
.Ltext_202:
    .asciz "src/std/process/command/module.lucb:162:5"
.Ltext_203:
    .asciz "src/std/process/command/module.lucb:167:5"
.Ltext_204:
    .asciz "src/std/process/command/module.lucb:170:5"
.Ltext_205:
    .asciz "src/std/process/command/posix.lucb:7:5"
.Ltext_206:
    .asciz "the command output cannot be read"
.Ltext_207:
    .asciz "command cancelled"
.Ltext_208:
    .asciz "src/std/process/command/posix.lucb:18:9"
.Ltext_209:
    .asciz "src/std/process/command/posix.lucb:19:9"
.Ltext_210:
    .asciz "src/std/process/command/posix.lucb:24:9"
.Ltext_211:
    .asciz "src/std/process/command/posix.lucb:26:9"
.Ltext_212:
    .asciz "the command status cannot be read"
.Ltext_213:
    .asciz "src/std/process/command/posix.lucb:36:17"
.Ltext_214:
    .asciz "src/std/process/command/posix.lucb:40:5"
.Ltext_215:
    .asciz "src/std/process/command/posix.lucb:44:9"
.Ltext_216:
    .asciz "a command job could not be created"
.Ltext_217:
    .asciz "the command could not enter its process job"
.Ltext_218:
    .asciz "waiting for the command failed"
.Ltext_219:
    .asciz "the command output cannot be measured"
.Ltext_220:
    .asciz "src/std/process/command/windows.lucb:40:5"
.Ltext_221:
    .asciz "the command output cannot be positioned"
.Ltext_222:
    .asciz "src/std/process/command/windows.lucb:49:9"
.Ltext_223:
    .asciz "src/std/process/command/windows.lucb:50:9"
.Ltext_224:
    .asciz "src/std/process/command/windows.lucb:52:9"
.Ltext_225:
    .asciz "src/std/process/command/windows.lucb:53:9"
.Ltext_226:
    .asciz "src/std/process/command/windows.lucb:62:5"
.Ltext_227:
    .asciz "the command capture path is unavailable"
.Ltext_228:
    .asciz "src/std/process/command/windows.lucb:65:5"
.Ltext_229:
    .asciz "the command capture reader could not be opened"
.Ltext_230:
    .asciz "src/std/process/command/windows.lucb:68:5"
.Ltext_231:
    .asciz "src/std/memory.lucb:326:9"
.Ltext_232:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_233:
    .asciz "src/std/process/module.lucb:174:9"
.Ltext_234:
    .asciz "integer overflow"

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_process_7poll_in
    .p2align 1
lb_process_7poll_in:
    .zero 2

    .bss
    .globl lb_process_12poll_hang_up
    .p2align 1
lb_process_12poll_hang_up:
    .zero 2

    .bss
    .globl lb_process_10poll_error
    .p2align 1
lb_process_10poll_error:
    .zero 2

    .bss
    .globl lb_process_9set_flags
    .p2align 2
lb_process_9set_flags:
    .zero 4

    .bss
    .globl lb_process_12non_blocking
    .p2align 2
lb_process_12non_blocking:
    .zero 4

    .bss
    .globl lb_process_11would_block
    .p2align 2
lb_process_11would_block:
    .zero 4

    .bss
    .globl lb_process_failed
    .p2align 2
lb_process_failed:
    .zero 4

    .bss
    .globl lb_process_16termination_lock
    .p2align 2
lb_process_16termination_lock:
    .zero 4

    .bss
    .globl lb_process_18termination_owners
    .p2align 3
lb_process_18termination_owners:
    .zero 8

    .bss
    .globl lb_process_22termination_generation
    .p2align 3
lb_process_22termination_generation:
    .zero 8

    .bss
    .globl lb_process_19termination_closing
    .p2align 0
lb_process_19termination_closing:
    .zero 1

    .bss
    .globl lb_process_18previous_interrupt
    .p2align 3
lb_process_18previous_interrupt:
    .zero 8

    .bss
    .globl lb_process_18previous_terminate
    .p2align 3
lb_process_18previous_terminate:
    .zero 8

    .bss
    .globl lb_process_16interrupt_signal
    .p2align 2
lb_process_16interrupt_signal:
    .zero 4

    .bss
    .globl lb_process_16terminate_signal
    .p2align 2
lb_process_16terminate_signal:
    .zero 4

    .bss
    .globl lb_process_17console_interrupt
    .p2align 2
lb_process_17console_interrupt:
    .zero 4

    .bss
    .globl lb_process_13console_break
    .p2align 2
lb_process_13console_break:
    .zero 4

    .bss
    .globl lb_process_13console_close
    .p2align 2
lb_process_13console_close:
    .zero 4

    .bss
    .globl lb_process_14console_logoff
    .p2align 2
lb_process_14console_logoff:
    .zero 4

    .bss
    .globl lb_process_16console_shutdown
    .p2align 2
lb_process_16console_shutdown:
    .zero 4

    .bss
    .globl lb_process_26console_acknowledgement_ms
    .p2align 3
lb_process_26console_acknowledgement_ms:
    .zero 8

    .bss
    .globl lb_process_12command_type
    .p2align 3
lb_process_12command_type:
    .zero 40
