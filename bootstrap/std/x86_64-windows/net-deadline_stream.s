    .text

    .p2align 4
    .globl lb_net_15deadline_stream_0init
lb_net_15deadline_stream_0init:
    .seh_proc lb_net_15deadline_stream_0init
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
    leaq lb_platform_windows(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L0_1
    jmp .L0_2
.L0_1:
    movl $0, %eax
    movl %eax, %ebx
    jmp .L0_3
.L0_2:
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L0_4
    jmp .L0_5
.L0_4:
    movl $128, %eax
    movl %eax, %ebx
    jmp .L0_6
.L0_5:
    movl $64, %eax
    movl %eax, %ebx
.L0_6:
.L0_3:
    leaq lb_net_14dont_wait_flag(%rip), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
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
    .globl lb_net_DeadlineStream_over
lb_net_DeadlineStream_over:
    .seh_proc lb_net_DeadlineStream_over
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
    .seh_endprologue
    movq %rcx, 416(%rbp)
    movq %rdx, 424(%rbp)
    movq %r8, 432(%rbp)
    movq %r9, 440(%rbp)
    movq 424(%rbp), %rax
    movq %rax, 104(%rbp)
    movq 432(%rbp), %r10
    leaq 88(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 440(%rbp), %rax
    movq %rax, 72(%rbp)
    leaq 104(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 40(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_19require_nonblocking
    addq $32, %rsp
    leaq 40(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_2
    jmp .L1_1
.L1_2:
    leaq 120(%rbp), %rbx
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $56, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 216(%rbp), %rdi
    movq $64, %rdx
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
    leaq 400(%rbp), %rsp
    popq %rbp
    ret
.L1_3:
.L1_1:
    leaq 8(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq 88(%rbp), %r13
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 72(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    leaq 120(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $56, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 216(%rbp), %rdi
    movq $64, %rdx
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
    leaq 400(%rbp), %rsp
    popq %rbp
    ret
.L1_4:
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
    .globl lb_net_DeadlineStream_read
lb_net_DeadlineStream_read:
    .seh_proc lb_net_DeadlineStream_read
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
    movq %rax, 224(%rbp)
    movq 528(%rbp), %r10
    leaq 208(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 224(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L2_1
    jmp .L2_2
.L2_1:
    jmp .L2_3
.L2_2:
    leaq 232(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
    leaq 192(%rbp), %r14
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
    movq 312(%rbp), %rdi
    movq $40, %rdx
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
.L2_3:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 152(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_SocketHandle_require
    addq $32, %rsp
    leaq 152(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L2_6
    jmp .L2_5
.L2_6:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 232(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 312(%rbp), %rdi
    movq $40, %rdx
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
.L2_5:
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 48(%rbp)
    leaq 208(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L2_9
.L2_8:
    leaq 232(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 312(%rbp), %rdi
    movq $40, %rdx
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
.L2_9:
.L2_10:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 120(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_19require_nonblocking
    addq $32, %rsp
    leaq 120(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L2_13
    jmp .L2_12
.L2_13:
    leaq 232(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r15, %r10
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
    movq 312(%rbp), %rdi
    movq $40, %rdx
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
.L2_12:
    leaq lb_net_14transfer_limit(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    jae .L2_16
.L2_15:
    movq %r13, %rax
    movq %rax, 8(%rbp)
    jmp .L2_17
.L2_16:
    movq %r12, %rax
    movq %rax, 8(%rbp)
.L2_17:
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $24, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    leaq 88(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    leaq lb_net_14dont_wait_flag(%rip), %rax
    movq %rax, 24(%rbp)
    leaq 56(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 16(%rbp)
.L2_18:
.L2_19:
    movq %r14, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    leaq 88(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_15check_operation
    addq $48, %rsp
    movq 32(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_22
    jmp .L2_21
.L2_22:
    leaq 232(%rbp), %rbx
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
    movq %rbx, %rsi
    movq 312(%rbp), %rdi
    movq $40, %rdx
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
.L2_21:
    movq 40(%rbp), %r10
    movq (%r10), %rbx
    movq 24(%rbp), %r10
    movslq (%r10), %r15
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 8(%rbp), %rax
    movq %rax, 16(%rsp)
    movl %r15d, %eax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_net_recv
    addq $32, %rsp
    movq %rax, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jl .L2_25
.L2_24:
    leaq 232(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 312(%rbp), %rdi
    movq $40, %rdx
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
.L2_25:
.L2_26:
    subq $32, %rsp
    call lb_net_12socket_errno
    addq $32, %rsp
    movl %eax, %ebx
    movq %r14, %r10
    movq (%r10), %r15
    subq $64, %rsp
    movq 48(%rbp), %rax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movl %ebx, %eax
    movq %rax, 24(%rsp)
    movq %r13, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 32(%rsp)
    movq %r15, %rax
    movq %rax, 40(%rsp)
    leaq 56(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_net_20await_transfer_retry
    addq $64, %rsp
    movq 16(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_29
    jmp .L2_28
.L2_29:
    leaq 232(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 312(%rbp), %rdi
    movq $40, %rdx
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
.L2_28:
    jmp .L2_18
    .seh_endproc

    .p2align 4
    .globl lb_net_DeadlineStream_write
lb_net_DeadlineStream_write:
    .seh_proc lb_net_DeadlineStream_write
    pushq %rbp
    .seh_pushreg %rbp
    subq $576, %rsp
    .seh_stackalloc 576
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 392(%rbp)
    movq %rdi, 568(%rbp)
    .seh_savereg %rdi, 568
    movq %rsi, 560(%rbp)
    .seh_savereg %rsi, 560
    movdqu %xmm6, 544(%rbp)
    .seh_savexmm %xmm6, 544
    movdqu %xmm7, 528(%rbp)
    .seh_savexmm %xmm7, 528
    movdqu %xmm8, 512(%rbp)
    .seh_savexmm %xmm8, 512
    movdqu %xmm9, 496(%rbp)
    .seh_savexmm %xmm9, 496
    movdqu %xmm10, 480(%rbp)
    .seh_savexmm %xmm10, 480
    movdqu %xmm11, 464(%rbp)
    .seh_savexmm %xmm11, 464
    movdqu %xmm12, 448(%rbp)
    .seh_savexmm %xmm12, 448
    movdqu %xmm13, 432(%rbp)
    .seh_savexmm %xmm13, 432
    movdqu %xmm14, 416(%rbp)
    .seh_savexmm %xmm14, 416
    movdqu %xmm15, 400(%rbp)
    .seh_savexmm %xmm15, 400
    movq %rbx, 384(%rbp)
    .seh_savereg %rbx, 384
    movq %r12, 376(%rbp)
    .seh_savereg %r12, 376
    movq %r13, 368(%rbp)
    .seh_savereg %r13, 368
    movq %r14, 360(%rbp)
    .seh_savereg %r14, 360
    movq %r15, 352(%rbp)
    .seh_savereg %r15, 352
    .seh_endprologue
    movq %rcx, 592(%rbp)
    movq %rdx, 600(%rbp)
    movq %r8, 608(%rbp)
    movq %r9, 616(%rbp)
    movq 600(%rbp), %rax
    movq %rax, 304(%rbp)
    movq 608(%rbp), %r10
    leaq 288(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 304(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L3_1
    jmp .L3_2
.L3_1:
    jmp .L3_3
.L3_2:
    leaq 312(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
    leaq 272(%rbp), %r14
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
    movq 392(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 392(%rbp), %rax
    movq 568(%rbp), %rdi
    movq 560(%rbp), %rsi
    movdqu 544(%rbp), %xmm6
    movdqu 528(%rbp), %xmm7
    movdqu 512(%rbp), %xmm8
    movdqu 496(%rbp), %xmm9
    movdqu 480(%rbp), %xmm10
    movdqu 464(%rbp), %xmm11
    movdqu 448(%rbp), %xmm12
    movdqu 432(%rbp), %xmm13
    movdqu 416(%rbp), %xmm14
    movdqu 400(%rbp), %xmm15
    movq 384(%rbp), %rbx
    movq 376(%rbp), %r12
    movq 368(%rbp), %r13
    movq 360(%rbp), %r14
    movq 352(%rbp), %r15
    leaq 576(%rbp), %rsp
    popq %rbp
    ret
.L3_3:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 232(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_SocketHandle_require
    addq $32, %rsp
    leaq 232(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L3_6
    jmp .L3_5
.L3_6:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 312(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 392(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 392(%rbp), %rax
    movq 568(%rbp), %rdi
    movq 560(%rbp), %rsi
    movdqu 544(%rbp), %xmm6
    movdqu 528(%rbp), %xmm7
    movdqu 512(%rbp), %xmm8
    movdqu 496(%rbp), %xmm9
    movdqu 480(%rbp), %xmm10
    movdqu 464(%rbp), %xmm11
    movdqu 448(%rbp), %xmm12
    movdqu 432(%rbp), %xmm13
    movdqu 416(%rbp), %xmm14
    movdqu 400(%rbp), %xmm15
    movq 384(%rbp), %rbx
    movq 376(%rbp), %r12
    movq 368(%rbp), %r13
    movq 360(%rbp), %r14
    movq 352(%rbp), %r15
    leaq 576(%rbp), %rsp
    popq %rbp
    ret
.L3_5:
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 64(%rbp)
    leaq 288(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L3_9
.L3_8:
    leaq 312(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 392(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 392(%rbp), %rax
    movq 568(%rbp), %rdi
    movq 560(%rbp), %rsi
    movdqu 544(%rbp), %xmm6
    movdqu 528(%rbp), %xmm7
    movdqu 512(%rbp), %xmm8
    movdqu 496(%rbp), %xmm9
    movdqu 480(%rbp), %xmm10
    movdqu 464(%rbp), %xmm11
    movdqu 448(%rbp), %xmm12
    movdqu 432(%rbp), %xmm13
    movdqu 416(%rbp), %xmm14
    movdqu 400(%rbp), %xmm15
    movq 384(%rbp), %rbx
    movq 376(%rbp), %r12
    movq 368(%rbp), %r13
    movq 360(%rbp), %r14
    movq 352(%rbp), %r15
    leaq 576(%rbp), %rsp
    popq %rbp
    ret
.L3_9:
.L3_10:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 200(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_19require_nonblocking
    addq $32, %rsp
    leaq 200(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L3_13
    jmp .L3_12
.L3_13:
    leaq 312(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r15, %r10
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
    movq 392(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 392(%rbp), %rax
    movq 568(%rbp), %rdi
    movq 560(%rbp), %rsi
    movdqu 544(%rbp), %xmm6
    movdqu 528(%rbp), %xmm7
    movdqu 512(%rbp), %xmm8
    movdqu 496(%rbp), %xmm9
    movdqu 480(%rbp), %xmm10
    movdqu 464(%rbp), %xmm11
    movdqu 448(%rbp), %xmm12
    movdqu 432(%rbp), %xmm13
    movdqu 416(%rbp), %xmm14
    movdqu 400(%rbp), %xmm15
    movq 384(%rbp), %rbx
    movq 376(%rbp), %r12
    movq 368(%rbp), %r13
    movq 360(%rbp), %r14
    movq 352(%rbp), %r15
    leaq 576(%rbp), %rsp
    popq %rbp
    ret
.L3_12:
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq $24, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %r10
    movq (%r10), %r15
    subq $48, %rsp
    movq 48(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r15, %rax
    movq %rax, 16(%rsp)
    leaq 168(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_15check_operation
    addq $48, %rsp
    leaq 168(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L3_16
    jmp .L3_15
.L3_16:
    leaq 312(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r10
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
    movq 392(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 392(%rbp), %rax
    movq 568(%rbp), %rdi
    movq 560(%rbp), %rsi
    movdqu 544(%rbp), %xmm6
    movdqu 528(%rbp), %xmm7
    movdqu 512(%rbp), %xmm8
    movdqu 496(%rbp), %xmm9
    movdqu 480(%rbp), %xmm10
    movdqu 464(%rbp), %xmm11
    movdqu 448(%rbp), %xmm12
    movdqu 432(%rbp), %xmm13
    movdqu 416(%rbp), %xmm14
    movdqu 400(%rbp), %xmm15
    movq 384(%rbp), %rbx
    movq 376(%rbp), %r12
    movq 368(%rbp), %r13
    movq 360(%rbp), %r14
    movq 352(%rbp), %r15
    leaq 576(%rbp), %rsp
    popq %rbp
    ret
.L3_15:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_net_Connection_guard
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L3_19
.L3_18:
    leaq 312(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_4(%rip), %r13
    leaq 152(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $21, %rax
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
    movq 392(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 392(%rbp), %rax
    movq 568(%rbp), %rdi
    movq 560(%rbp), %rsi
    movdqu 544(%rbp), %xmm6
    movdqu 528(%rbp), %xmm7
    movdqu 512(%rbp), %xmm8
    movdqu 496(%rbp), %xmm9
    movdqu 480(%rbp), %xmm10
    movdqu 464(%rbp), %xmm11
    movdqu 448(%rbp), %xmm12
    movdqu 432(%rbp), %xmm13
    movdqu 416(%rbp), %xmm14
    movdqu 400(%rbp), %xmm15
    movq 384(%rbp), %rbx
    movq 376(%rbp), %r12
    movq 368(%rbp), %r13
    movq 360(%rbp), %r14
    movq 352(%rbp), %r15
    leaq 576(%rbp), %rsp
    popq %rbp
    ret
.L3_19:
.L3_20:
    leaq lb_net_14transfer_limit(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    cmpq %rbx, %r13
    jae .L3_23
.L3_22:
    movq %r13, %rax
    movq %rax, 16(%rbp)
    jmp .L3_24
.L3_23:
    movq %rbx, %rax
    movq %rax, 16(%rbp)
.L3_24:
    leaq 120(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    leaq lb_net_10send_flags(%rip), %r13
    leaq lb_net_14dont_wait_flag(%rip), %r14
    leaq 72(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 24(%rbp)
.L3_25:
.L3_26:
    movq 40(%rbp), %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq 48(%rbp), %r10
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
    call lb_net_15check_operation
    addq $48, %rsp
    movq 32(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_29
    jmp .L3_28
.L3_29:
    leaq 312(%rbp), %rbx
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
    movq %rbx, %rsi
    movq 392(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 392(%rbp), %rax
    movq 568(%rbp), %rdi
    movq 560(%rbp), %rsi
    movdqu 544(%rbp), %xmm6
    movdqu 528(%rbp), %xmm7
    movdqu 512(%rbp), %xmm8
    movdqu 496(%rbp), %xmm9
    movdqu 480(%rbp), %xmm10
    movdqu 464(%rbp), %xmm11
    movdqu 448(%rbp), %xmm12
    movdqu 432(%rbp), %xmm13
    movdqu 416(%rbp), %xmm14
    movdqu 400(%rbp), %xmm15
    movq 384(%rbp), %rbx
    movq 376(%rbp), %r12
    movq 368(%rbp), %r13
    movq 360(%rbp), %r14
    movq 352(%rbp), %r15
    leaq 576(%rbp), %rsp
    popq %rbp
    ret
.L3_28:
    movq 56(%rbp), %r10
    movq (%r10), %rbx
    movq %r13, %r10
    movslq (%r10), %r12
    movq %r14, %r10
    movslq (%r10), %r15
    orl %r15d, %r12d
    subq $32, %rsp
    movq 64(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 16(%rbp), %rax
    movq %rax, 16(%rsp)
    movl %r12d, %eax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_net_send
    addq $32, %rsp
    movq %rax, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jle .L3_32
.L3_31:
    leaq 312(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 392(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 392(%rbp), %rax
    movq 568(%rbp), %rdi
    movq 560(%rbp), %rsi
    movdqu 544(%rbp), %xmm6
    movdqu 528(%rbp), %xmm7
    movdqu 512(%rbp), %xmm8
    movdqu 496(%rbp), %xmm9
    movdqu 480(%rbp), %xmm10
    movdqu 464(%rbp), %xmm11
    movdqu 448(%rbp), %xmm12
    movdqu 432(%rbp), %xmm13
    movdqu 416(%rbp), %xmm14
    movdqu 400(%rbp), %xmm15
    movq 384(%rbp), %rbx
    movq 376(%rbp), %r12
    movq 368(%rbp), %r13
    movq 360(%rbp), %r14
    movq 352(%rbp), %r15
    leaq 576(%rbp), %rsp
    popq %rbp
    ret
.L3_32:
.L3_33:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L3_36
.L3_35:
    leaq 312(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_11no_progress(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_5(%rip), %r13
    leaq 104(%rbp), %r14
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
    movq 392(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 392(%rbp), %rax
    movq 568(%rbp), %rdi
    movq 560(%rbp), %rsi
    movdqu 544(%rbp), %xmm6
    movdqu 528(%rbp), %xmm7
    movdqu 512(%rbp), %xmm8
    movdqu 496(%rbp), %xmm9
    movdqu 480(%rbp), %xmm10
    movdqu 464(%rbp), %xmm11
    movdqu 448(%rbp), %xmm12
    movdqu 432(%rbp), %xmm13
    movdqu 416(%rbp), %xmm14
    movdqu 400(%rbp), %xmm15
    movq 384(%rbp), %rbx
    movq 376(%rbp), %r12
    movq 368(%rbp), %r13
    movq 360(%rbp), %r14
    movq 352(%rbp), %r15
    leaq 576(%rbp), %rsp
    popq %rbp
    ret
.L3_36:
.L3_37:
    subq $32, %rsp
    call lb_net_12socket_errno
    addq $32, %rsp
    movl %eax, %ebx
    movq 40(%rbp), %r10
    movq (%r10), %r12
    subq $64, %rsp
    movq 64(%rbp), %rax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    movl %ebx, %eax
    movq %rax, 24(%rsp)
    movq 48(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 32(%rsp)
    movq %r12, %rax
    movq %rax, 40(%rsp)
    leaq 72(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_net_20await_transfer_retry
    addq $64, %rsp
    movq 24(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_40
    jmp .L3_39
.L3_40:
    leaq 312(%rbp), %rbx
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
    movq %rbx, %rsi
    movq 392(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 392(%rbp), %rax
    movq 568(%rbp), %rdi
    movq 560(%rbp), %rsi
    movdqu 544(%rbp), %xmm6
    movdqu 528(%rbp), %xmm7
    movdqu 512(%rbp), %xmm8
    movdqu 496(%rbp), %xmm9
    movdqu 480(%rbp), %xmm10
    movdqu 464(%rbp), %xmm11
    movdqu 448(%rbp), %xmm12
    movdqu 432(%rbp), %xmm13
    movdqu 416(%rbp), %xmm14
    movdqu 400(%rbp), %xmm15
    movq 384(%rbp), %rbx
    movq 376(%rbp), %r12
    movq 368(%rbp), %r13
    movq 360(%rbp), %r14
    movq 352(%rbp), %r15
    leaq 576(%rbp), %rsp
    popq %rbp
    ret
.L3_39:
    jmp .L3_25
    .seh_endproc

    .p2align 4
    .globl lb_net_20await_transfer_retry
lb_net_20await_transfer_retry:
    .seh_proc lb_net_20await_transfer_retry
    pushq %rbp
    .seh_pushreg %rbp
    subq $384, %rsp
    .seh_stackalloc 384
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 200(%rbp)
    movq %rdi, 376(%rbp)
    .seh_savereg %rdi, 376
    movq %rsi, 368(%rbp)
    .seh_savereg %rsi, 368
    movdqu %xmm6, 352(%rbp)
    .seh_savexmm %xmm6, 352
    movdqu %xmm7, 336(%rbp)
    .seh_savexmm %xmm7, 336
    movdqu %xmm8, 320(%rbp)
    .seh_savexmm %xmm8, 320
    movdqu %xmm9, 304(%rbp)
    .seh_savexmm %xmm9, 304
    movdqu %xmm10, 288(%rbp)
    .seh_savexmm %xmm10, 288
    movdqu %xmm11, 272(%rbp)
    .seh_savexmm %xmm11, 272
    movdqu %xmm12, 256(%rbp)
    .seh_savexmm %xmm12, 256
    movdqu %xmm13, 240(%rbp)
    .seh_savexmm %xmm13, 240
    movdqu %xmm14, 224(%rbp)
    .seh_savexmm %xmm14, 224
    movdqu %xmm15, 208(%rbp)
    .seh_savexmm %xmm15, 208
    movq %rbx, 192(%rbp)
    .seh_savereg %rbx, 192
    movq %r12, 184(%rbp)
    .seh_savereg %r12, 184
    movq %r13, 176(%rbp)
    .seh_savereg %r13, 176
    movq %r14, 168(%rbp)
    .seh_savereg %r14, 168
    .seh_endprologue
    movq %rcx, 400(%rbp)
    movq %rdx, 408(%rbp)
    movq %r8, 416(%rbp)
    movq %r9, 424(%rbp)
    movq 408(%rbp), %rax
    movq %rax, 120(%rbp)
    movq 416(%rbp), %rax
    movl %eax, 104(%rbp)
    movq 424(%rbp), %rax
    movl %eax, 88(%rbp)
    movq 432(%rbp), %r10
    leaq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 440(%rbp), %rax
    movq %rax, 56(%rbp)
    leaq 88(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq lb_net_18socket_interrupted(%rip), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    cmpl %r12d, %ebx
    jne .L4_2
.L4_1:
    leaq 136(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 200(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 200(%rbp), %rax
    movq 376(%rbp), %rdi
    movq 368(%rbp), %rsi
    movdqu 352(%rbp), %xmm6
    movdqu 336(%rbp), %xmm7
    movdqu 320(%rbp), %xmm8
    movdqu 304(%rbp), %xmm9
    movdqu 288(%rbp), %xmm10
    movdqu 272(%rbp), %xmm11
    movdqu 256(%rbp), %xmm12
    movdqu 240(%rbp), %xmm13
    movdqu 224(%rbp), %xmm14
    movdqu 208(%rbp), %xmm15
    movq 192(%rbp), %rbx
    movq 184(%rbp), %r12
    movq 176(%rbp), %r13
    movq 168(%rbp), %r14
    leaq 384(%rbp), %rsp
    popq %rbp
    ret
.L4_4:
    jmp .L4_3
.L4_2:
.L4_3:
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_net_12socket_error
    addq $32, %rsp
    movl %eax, %r12d
    leaq lb_io_11would_block(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L4_6
.L4_5:
    leaq 136(%rbp), %rbx
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_7(%rip), %r13
    leaq 40(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $35, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 200(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 200(%rbp), %rax
    movq 376(%rbp), %rdi
    movq 368(%rbp), %rsi
    movdqu 352(%rbp), %xmm6
    movdqu 336(%rbp), %xmm7
    movdqu 320(%rbp), %xmm8
    movdqu 304(%rbp), %xmm9
    movdqu 288(%rbp), %xmm10
    movdqu 272(%rbp), %xmm11
    movdqu 256(%rbp), %xmm12
    movdqu 240(%rbp), %xmm13
    movdqu 224(%rbp), %xmm14
    movdqu 208(%rbp), %xmm15
    movq 192(%rbp), %rbx
    movq 184(%rbp), %r12
    movq 176(%rbp), %r13
    movq 168(%rbp), %r14
    leaq 384(%rbp), %rsp
    popq %rbp
    ret
.L4_8:
    jmp .L4_7
.L4_6:
.L4_7:
    leaq 120(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 104(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 72(%rbp), %r13
    leaq 56(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $64, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl %r12d, %eax
    movq %rax, 16(%rsp)
    movq %r13, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 24(%rsp)
    movq %r14, %rax
    movq %rax, 32(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_net_11wait_socket
    addq $64, %rsp
    leaq 0(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_10
    jmp .L4_9
.L4_10:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 136(%rbp), %r13
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
    movq 200(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 200(%rbp), %rax
    movq 376(%rbp), %rdi
    movq 368(%rbp), %rsi
    movdqu 352(%rbp), %xmm6
    movdqu 336(%rbp), %xmm7
    movdqu 320(%rbp), %xmm8
    movdqu 304(%rbp), %xmm9
    movdqu 288(%rbp), %xmm10
    movdqu 272(%rbp), %xmm11
    movdqu 256(%rbp), %xmm12
    movdqu 240(%rbp), %xmm13
    movdqu 224(%rbp), %xmm14
    movdqu 208(%rbp), %xmm15
    movq 192(%rbp), %rbx
    movq 184(%rbp), %r12
    movq 176(%rbp), %r13
    movq 168(%rbp), %r14
    leaq 384(%rbp), %rsp
    popq %rbp
    ret
.L4_11:
.L4_9:
    leaq 136(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 200(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 200(%rbp), %rax
    movq 376(%rbp), %rdi
    movq 368(%rbp), %rsi
    movdqu 352(%rbp), %xmm6
    movdqu 336(%rbp), %xmm7
    movdqu 320(%rbp), %xmm8
    movdqu 304(%rbp), %xmm9
    movdqu 288(%rbp), %xmm10
    movdqu 272(%rbp), %xmm11
    movdqu 256(%rbp), %xmm12
    movdqu 240(%rbp), %xmm13
    movdqu 224(%rbp), %xmm14
    movdqu 208(%rbp), %xmm15
    movq 192(%rbp), %rbx
    movq 184(%rbp), %r12
    movq 176(%rbp), %r13
    movq 168(%rbp), %r14
    leaq 384(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_net_19require_nonblocking
lb_net_19require_nonblocking:
    .seh_proc lb_net_19require_nonblocking
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
    .seh_endprologue
    movq %rcx, 336(%rbp)
    movq %rdx, 344(%rbp)
    movq %r8, 352(%rbp)
    movq %r9, 360(%rbp)
    movq 344(%rbp), %rax
    movq %rax, 64(%rbp)
    leaq 64(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 24(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_Connection_14is_nonblocking
    addq $32, %rsp
    leaq 24(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_5
    jmp .L5_4
.L5_5:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 80(%rbp), %r13
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
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L5_6:
.L5_4:
    movq %r12, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L5_2
.L5_1:
    leaq 80(%rbp), %rbx
    leaq lb_net_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_8(%rip), %r12
    leaq 8(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $51, %rax
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
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L5_7:
    jmp .L5_3
.L5_2:
.L5_3:
    leaq 80(%rbp), %rbx
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
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_net_15deadline_stream_0init
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
    .asciz "src/std/net/deadline_stream.lucb:17:9"
.Ltext_2:
    .asciz "the deadline stream has no connection"
.Ltext_3:
    .asciz "src/std/net/deadline_stream.lucb:35:13"
.Ltext_4:
    .asciz "the connection closed"
.Ltext_5:
    .asciz "the connection made no write progress"
.Ltext_6:
    .asciz "src/std/net/deadline_stream.lucb:57:13"
.Ltext_7:
    .asciz "the deadline stream transfer failed"
.Ltext_8:
    .asciz "a deadline stream requires a nonblocking connection"

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_net_14dont_wait_flag
    .p2align 2
lb_net_14dont_wait_flag:
    .zero 4
