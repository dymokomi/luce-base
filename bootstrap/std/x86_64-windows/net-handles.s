    .text

    .p2align 4
    .globl lb_net_handles_0init
lb_net_handles_0init:
    .seh_proc lb_net_handles_0init
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
    leaq lb_net_14transfer_limit(%rip), %rbx
    movq $1073741824, %rax
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
    .globl lb_net_SocketHandle_create
lb_net_SocketHandle_create:
    .seh_proc lb_net_SocketHandle_create
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
    movl %eax, 112(%rbp)
    movq 432(%rbp), %rax
    movl %eax, 96(%rbp)
    subq $32, %rsp
    leaq 64(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_net_22windows_socket_startup
    addq $32, %rsp
    leaq 64(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_2
    jmp .L1_1
.L1_2:
    leaq 128(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 216(%rbp), %rdi
    movq $56, %rdx
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
    leaq 96(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L1_5
.L1_4:
    movl $2, %eax
    movl %eax, %ebx
    jmp .L1_6
.L1_5:
    movl $23, %eax
    movl %eax, %ebx
.L1_6:
    leaq 112(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    subq $48, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    movl $0, %eax
    movq %rax, 32(%rsp)
    movl $128, %eax
    movq %rax, 40(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call WSASocketW
    addq $48, %rsp
    movq %rax, %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jge .L1_8
.L1_7:
    leaq 128(%rbp), %rbx
    movq $24, %rcx
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
    leaq .Ltext_0(%rip), %r13
    leaq 48(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $29, %rax
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
    movq %rbx, %rsi
    movq 216(%rbp), %rdi
    movq $56, %rdx
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
.L1_10:
    jmp .L1_9
.L1_8:
.L1_9:
    leaq 24(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq 8(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 128(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 216(%rbp), %rdi
    movq $56, %rdx
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
.L1_11:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_SocketHandle_adopt
lb_net_SocketHandle_adopt:
    .seh_proc lb_net_SocketHandle_adopt
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
    movq %rax, 216(%rbp)
    leaq 216(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jge .L2_2
.L2_1:
    leaq 232(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_3(%rip), %r13
    leaq 200(%rbp), %r14
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
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 328(%rbp), %rdi
    movq $56, %rdx
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
.L2_4:
    jmp .L2_3
.L2_2:
.L2_3:
    subq $32, %rsp
    leaq 168(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_net_22windows_socket_startup
    addq $32, %rsp
    leaq 168(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_6
    jmp .L2_5
.L2_6:
    leaq 232(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
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
    movq %rbx, %rsi
    movq 328(%rbp), %rdi
    movq $56, %rdx
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
.L2_7:
.L2_5:
    leaq 144(%rbp), %r12
    leaq 120(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq 104(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call SetHandleInformation
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L2_9
.L2_8:
    leaq 232(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    leaq lb_net_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_4(%rip), %r14
    leaq 88(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $40, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $48, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_SocketHandle_close
    addq $32, %rsp
    leaq 0(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L2_19
    jmp .L2_18
.L2_19:
    leaq 32(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L2_16
.L2_18:
    jmp .L2_17
.L2_16:
.L2_17:
.L2_20:
    movq %rbx, %rsi
    movq 328(%rbp), %rdi
    movq $56, %rdx
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
.L2_11:
    jmp .L2_10
.L2_9:
.L2_10:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    leaq 56(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_15set_nonblocking
    addq $32, %rsp
    leaq 56(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L2_13
    jmp .L2_12
.L2_13:
    leaq 232(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_SocketHandle_close
    addq $32, %rsp
    leaq 0(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L2_24
    jmp .L2_23
.L2_24:
    leaq 32(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L2_21
.L2_23:
    jmp .L2_22
.L2_21:
.L2_22:
.L2_25:
    movq %rbx, %rsi
    movq 328(%rbp), %rdi
    movq $56, %rdx
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
.L2_14:
.L2_12:
    leaq 232(%rbp), %rbx
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
    movq 328(%rbp), %rdi
    movq $56, %rdx
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
.L2_15:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_SocketHandle_require
lb_net_SocketHandle_require:
    .seh_proc lb_net_SocketHandle_require
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
    .seh_endprologue
    movq %rcx, 304(%rbp)
    movq %rdx, 312(%rbp)
    movq %r8, 320(%rbp)
    movq %r9, 328(%rbp)
    movq 312(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq 24(%rbp), %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_1
    jmp .L3_2
.L3_1:
    movq %r12, %r10
    movq (%r10), %rbx
    jmp .L3_3
.L3_2:
    leaq 32(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_6(%rip), %r13
    leaq 8(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $20, %rax
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
    movq 104(%rbp), %rdi
    movq $40, %rdx
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
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L3_4:
.L3_3:
    leaq 32(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 104(%rbp), %rdi
    movq $40, %rdx
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
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L3_5:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_SocketHandle_close
lb_net_SocketHandle_close:
    .seh_proc lb_net_SocketHandle_close
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
    .seh_endprologue
    movq %rcx, 304(%rbp)
    movq %rdx, 312(%rbp)
    movq %r8, 320(%rbp)
    movq %r9, 328(%rbp)
    movq 312(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq 40(%rbp), %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_1
    jmp .L4_2
.L4_1:
    movq %r12, %r10
    movq (%r10), %rbx
    jmp .L4_3
.L4_2:
    leaq 48(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 104(%rbp), %rdi
    movq $32, %rdx
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
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L4_4:
.L4_3:
    leaq 24(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_net_close
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L4_6
.L4_5:
    leaq 48(%rbp), %rbx
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
    leaq .Ltext_8(%rip), %r12
    leaq 8(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $30, %rax
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
    movq 104(%rbp), %rdi
    movq $32, %rdx
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
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L4_8:
    jmp .L4_7
.L4_6:
.L4_7:
    leaq 48(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 104(%rbp), %rdi
    movq $32, %rdx
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
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_net_SocketHandle_destroy
lb_net_SocketHandle_destroy:
    .seh_proc lb_net_SocketHandle_destroy
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
    .seh_endprologue
    movq %rcx, 272(%rbp)
    movq %rdx, 280(%rbp)
    movq %r8, 288(%rbp)
    movq %r9, 296(%rbp)
    movq 272(%rbp), %rax
    movq %rax, 56(%rbp)
    leaq 56(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_net_SocketHandle_close
    addq $32, %rsp
    leaq 0(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_4
    jmp .L5_3
.L5_4:
    leaq 32(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L5_1
.L5_3:
    jmp .L5_2
.L5_1:
.L5_2:
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
    leaq 256(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_net_14socket_address
lb_net_14socket_address:
    .seh_proc lb_net_14socket_address
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
    movq %r15, 224(%rbp)
    .seh_savereg %r15, 224
    .seh_endprologue
    movq %rcx, 464(%rbp)
    movq %rdx, 472(%rbp)
    movq %r8, 480(%rbp)
    movq %r9, 488(%rbp)
    movq 472(%rbp), %rax
    movq %rax, 152(%rbp)
    movq 480(%rbp), %rax
    movl %eax, 136(%rbp)
    leaq 108(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    leaq 104(%rbp), %r12
    movl $28, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq 152(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq 136(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 8(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movl %r14d, %eax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_net_13query_address
    addq $32, %rsp
    movl %eax, %r15d
    movl %r15d, %eax
    movl %eax, 0(%rbp)
.L6_1:
    movl 0(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    setl %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L6_4
    jmp .L6_18
.L6_18:
    movl %ebx, %r15d
    jmp .L6_5
.L6_4:
    subq $32, %rsp
    call lb_net_12socket_errno
    addq $32, %rsp
    movl %eax, %ebx
    movl $10004, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r15d
.L6_5:
    movzbl %r15b, %ebx
    testl %ebx, %ebx
    jne .L6_2
    jmp .L6_3
.L6_2:
    movl $28, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 8(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movl %r14d, %eax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_net_13query_address
    addq $32, %rsp
    movl %eax, %ebx
    movl %ebx, %eax
    movl %eax, 0(%rbp)
    jmp .L6_1
.L6_3:
    movl 0(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L6_7
.L6_6:
    leaq 168(%rbp), %rbx
    movq $24, %rcx
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
    leaq .Ltext_9(%rip), %r13
    leaq 88(%rbp), %r14
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
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 264(%rbp), %rdi
    movq $56, %rdx
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
    movq 224(%rbp), %r15
    leaq 448(%rbp), %rsp
    popq %rbp
    ret
.L6_9:
    jmp .L6_8
.L6_7:
.L6_8:
    movq %r12, %r10
    movl (%r10), %ebx
    movl $28, %ecx
    cmpl %ecx, %ebx
    jbe .L6_11
.L6_10:
    leaq 168(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_10(%rip), %r13
    leaq 72(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $51, %rax
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
    movq %rbx, %rsi
    movq 264(%rbp), %rdi
    movq $56, %rdx
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
    movq 224(%rbp), %r15
    leaq 448(%rbp), %rsp
    popq %rbp
    ret
.L6_13:
    jmp .L6_12
.L6_11:
.L6_12:
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 8(%rsp)
    movl %ebx, %eax
    movq %rax, 16(%rsp)
    leaq 16(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_14decode_address
    addq $32, %rsp
    leaq 16(%rbp), %r13
    movq $48, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L6_15
    jmp .L6_14
.L6_15:
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 168(%rbp), %r12
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
    movq 264(%rbp), %rdi
    movq $56, %rdx
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
    movq 224(%rbp), %r15
    leaq 448(%rbp), %rsp
    popq %rbp
    ret
.L6_16:
.L6_14:
    leaq 168(%rbp), %rbx
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
    movq 264(%rbp), %rdi
    movq $56, %rdx
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
    movq 224(%rbp), %r15
    leaq 448(%rbp), %rsp
    popq %rbp
    ret
.L6_17:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_13query_address
lb_net_13query_address:
    .seh_proc lb_net_13query_address
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
    .seh_endprologue
    movq %rcx, 288(%rbp)
    movq %rdx, 296(%rbp)
    movq %r8, 304(%rbp)
    movq %r9, 312(%rbp)
    movq 288(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 296(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 304(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 312(%rbp), %rax
    movl %eax, 8(%rbp)
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_1
    jmp .L7_2
.L7_1:
    leaq 56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 40(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 24(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call getpeername
    addq $32, %rsp
    movl %eax, %ebx
    movl %ebx, %eax
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
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
.L7_4:
    jmp .L7_3
.L7_2:
.L7_3:
    leaq 56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 40(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 24(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call getsockname
    addq $32, %rsp
    movl %eax, %ebx
    movl %ebx, %eax
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
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
.L7_5:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_18set_socket_integer
lb_net_18set_socket_integer:
    .seh_proc lb_net_18set_socket_integer
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
    movq %r15, 128(%rbp)
    .seh_savereg %r15, 128
    .seh_endprologue
    movq %rcx, 368(%rbp)
    movq %rdx, 376(%rbp)
    movq %r8, 384(%rbp)
    movq %r9, 392(%rbp)
    movq 376(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 384(%rbp), %rax
    movl %eax, 64(%rbp)
    movq 392(%rbp), %rax
    movl %eax, 48(%rbp)
    movq 400(%rbp), %rax
    movl %eax, 32(%rbp)
    leaq 80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    leaq 64(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq 48(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    leaq 32(%rbp), %r14
    subq $48, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    movq %r14, %rax
    movq %rax, 24(%rsp)
    movl $4, %eax
    movq %rax, 32(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call setsockopt
    addq $48, %rsp
    movl %eax, %r15d
    movl %r15d, %eax
    movl %eax, 0(%rbp)
.L8_1:
    movl 0(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    setl %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L8_4
    jmp .L8_10
.L8_10:
    movl %ebx, %r15d
    jmp .L8_5
.L8_4:
    subq $32, %rsp
    call lb_net_12socket_errno
    addq $32, %rsp
    movl %eax, %ebx
    movl $10004, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r15d
.L8_5:
    movzbl %r15b, %ebx
    testl %ebx, %ebx
    jne .L8_2
    jmp .L8_3
.L8_2:
    subq $48, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    movq %r14, %rax
    movq %rax, 24(%rsp)
    movl $4, %eax
    movq %rax, 32(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call setsockopt
    addq $48, %rsp
    movl %eax, %ebx
    movl %ebx, %eax
    movl %eax, 0(%rbp)
    jmp .L8_1
.L8_3:
    movl 0(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L8_7
.L8_6:
    leaq 96(%rbp), %rbx
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
    leaq .Ltext_13(%rip), %r12
    leaq 16(%rbp), %r13
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
    movq 128(%rbp), %r15
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L8_9:
    jmp .L8_8
.L8_7:
.L8_8:
    leaq 96(%rbp), %rbx
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
    movq 128(%rbp), %r15
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_net_handles_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "a socket could not be created"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/net/handles.lucb:18:13"
.Ltext_3:
    .asciz "the socket descriptor is invalid"
.Ltext_4:
    .asciz "socket inheritance could not be disabled"
.Ltext_5:
    .asciz "src/std/net/handles.lucb:40:13"
.Ltext_6:
    .asciz "the socket is closed"
.Ltext_7:
    .asciz "src/std/net/handles.lucb:60:9"
.Ltext_8:
    .asciz "the socket could not be closed"
.Ltext_9:
    .asciz "the socket address could not be queried"
.Ltext_10:
    .asciz "the socket address exceeds the supported IP storage"
.Ltext_11:
    .asciz "src/std/net/handles.lucb:83:5"
.Ltext_12:
    .asciz "src/std/net/handles.lucb:88:5"
.Ltext_13:
    .asciz "the socket option could not be set"

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_net_14transfer_limit
    .p2align 3
lb_net_14transfer_limit:
    .zero 8
