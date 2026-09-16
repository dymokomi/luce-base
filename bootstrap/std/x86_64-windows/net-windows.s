    .text

    .p2align 4
    .globl lb_net_windows_0init
lb_net_windows_0init:
    .seh_proc lb_net_windows_0init
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
    .globl lb_net_22windows_socket_cleanup
lb_net_22windows_socket_cleanup:
    .seh_proc lb_net_22windows_socket_cleanup
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
    call WSACleanup
    addq $32, %rsp
    movl %eax, %ebx
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
    .globl lb_net_22windows_socket_startup
lb_net_22windows_socket_startup:
    .seh_proc lb_net_22windows_socket_startup
    pushq %rbp
    .seh_pushreg %rbp
    subq $800, %rsp
    .seh_stackalloc 800
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 616(%rbp)
    movq %rdi, 792(%rbp)
    .seh_savereg %rdi, 792
    movq %rsi, 784(%rbp)
    .seh_savereg %rsi, 784
    movdqu %xmm6, 768(%rbp)
    .seh_savexmm %xmm6, 768
    movdqu %xmm7, 752(%rbp)
    .seh_savexmm %xmm7, 752
    movdqu %xmm8, 736(%rbp)
    .seh_savexmm %xmm8, 736
    movdqu %xmm9, 720(%rbp)
    .seh_savexmm %xmm9, 720
    movdqu %xmm10, 704(%rbp)
    .seh_savexmm %xmm10, 704
    movdqu %xmm11, 688(%rbp)
    .seh_savexmm %xmm11, 688
    movdqu %xmm12, 672(%rbp)
    .seh_savexmm %xmm12, 672
    movdqu %xmm13, 656(%rbp)
    .seh_savexmm %xmm13, 656
    movdqu %xmm14, 640(%rbp)
    .seh_savexmm %xmm14, 640
    movdqu %xmm15, 624(%rbp)
    .seh_savexmm %xmm15, 624
    movq %rbx, 608(%rbp)
    .seh_savereg %rbx, 608
    movq %r12, 600(%rbp)
    .seh_savereg %r12, 600
    movq %r13, 592(%rbp)
    .seh_savereg %r13, 592
    movq %r14, 584(%rbp)
    .seh_savereg %r14, 584
    movq %r15, 576(%rbp)
    .seh_savereg %r15, 576
    .seh_endprologue
    movq %rcx, 816(%rbp)
    movq %rdx, 824(%rbp)
    movq %r8, 832(%rbp)
    movq %r9, 840(%rbp)
    leaq lb_net_12winsock_lock(%rip), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_lock
    addq $32, %rsp
    leaq lb_net_13winsock_ready(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L2_1
    jmp .L2_2
.L2_1:
    leaq 544(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    movq %r12, %rsi
    movq 616(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 616(%rbp), %rax
    movq 792(%rbp), %rdi
    movq 784(%rbp), %rsi
    movdqu 768(%rbp), %xmm6
    movdqu 752(%rbp), %xmm7
    movdqu 736(%rbp), %xmm8
    movdqu 720(%rbp), %xmm9
    movdqu 704(%rbp), %xmm10
    movdqu 688(%rbp), %xmm11
    movdqu 672(%rbp), %xmm12
    movdqu 656(%rbp), %xmm13
    movdqu 640(%rbp), %xmm14
    movdqu 624(%rbp), %xmm15
    movq 608(%rbp), %rbx
    movq 600(%rbp), %r12
    movq 592(%rbp), %r13
    movq 584(%rbp), %r14
    movq 576(%rbp), %r15
    leaq 800(%rbp), %rsp
    popq %rbp
    ret
.L2_4:
    jmp .L2_3
.L2_2:
.L2_3:
    leaq 32(%rbp), %r13
    movq %r13, %rdi
    xorl %esi, %esi
    movq $512, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memset
    addq $32, %rsp
    subq $32, %rsp
    movl $514, %eax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call WSAStartup
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L2_6
.L2_5:
    leaq 544(%rbp), %r12
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_net_12socket_error
    addq $32, %rsp
    movl %eax, %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_1(%rip), %r14
    leaq 16(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $28, %rax
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
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    movq %r12, %rsi
    movq 616(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 616(%rbp), %rax
    movq 792(%rbp), %rdi
    movq 784(%rbp), %rsi
    movdqu 768(%rbp), %xmm6
    movdqu 752(%rbp), %xmm7
    movdqu 736(%rbp), %xmm8
    movdqu 720(%rbp), %xmm9
    movdqu 704(%rbp), %xmm10
    movdqu 688(%rbp), %xmm11
    movdqu 672(%rbp), %xmm12
    movdqu 656(%rbp), %xmm13
    movdqu 640(%rbp), %xmm14
    movdqu 624(%rbp), %xmm15
    movq 608(%rbp), %rbx
    movq 600(%rbp), %r12
    movq 592(%rbp), %r13
    movq 584(%rbp), %r14
    movq 576(%rbp), %r15
    leaq 800(%rbp), %rsp
    popq %rbp
    ret
.L2_8:
    jmp .L2_7
.L2_6:
.L2_7:
    leaq lb_net_22windows_socket_cleanup(%rip), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call atexit
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L2_10
.L2_9:
    subq $32, %rsp
    call WSACleanup
    addq $32, %rsp
    movl %eax, %r12d
    leaq 544(%rbp), %r12
    leaq lb_net_18resource_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $39, %rax
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
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    movq %r12, %rsi
    movq 616(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 616(%rbp), %rax
    movq 792(%rbp), %rdi
    movq 784(%rbp), %rsi
    movdqu 768(%rbp), %xmm6
    movdqu 752(%rbp), %xmm7
    movdqu 736(%rbp), %xmm8
    movdqu 720(%rbp), %xmm9
    movdqu 704(%rbp), %xmm10
    movdqu 688(%rbp), %xmm11
    movdqu 672(%rbp), %xmm12
    movdqu 656(%rbp), %xmm13
    movdqu 640(%rbp), %xmm14
    movdqu 624(%rbp), %xmm15
    movq 608(%rbp), %rbx
    movq 600(%rbp), %r12
    movq 592(%rbp), %r13
    movq 584(%rbp), %r14
    movq 576(%rbp), %r15
    leaq 800(%rbp), %rsp
    popq %rbp
    ret
.L2_12:
    jmp .L2_11
.L2_10:
.L2_11:
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_sync_Mutex_unlock
    addq $32, %rsp
    leaq 544(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 616(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 616(%rbp), %rax
    movq 792(%rbp), %rdi
    movq 784(%rbp), %rsi
    movdqu 768(%rbp), %xmm6
    movdqu 752(%rbp), %xmm7
    movdqu 736(%rbp), %xmm8
    movdqu 720(%rbp), %xmm9
    movdqu 704(%rbp), %xmm10
    movdqu 688(%rbp), %xmm11
    movdqu 672(%rbp), %xmm12
    movdqu 656(%rbp), %xmm13
    movdqu 640(%rbp), %xmm14
    movdqu 624(%rbp), %xmm15
    movq 608(%rbp), %rbx
    movq 600(%rbp), %r12
    movq 592(%rbp), %r13
    movq 584(%rbp), %r14
    movq 576(%rbp), %r15
    leaq 800(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_net_12windows_poll
lb_net_12windows_poll:
    .seh_proc lb_net_12windows_poll
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
    movq 296(%rbp), %rax
    movl %eax, 24(%rbp)
    leaq 40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 8(%rbp), %r13
    movq $0, %rax
    movq %rax, %r14
.L3_1:
    cmpq %rbx, %r14
    jae .L3_4
.L3_2:
    movq $16, %rcx
    movq %r14, %r15
    imulq %rcx, %r15
    movq %r15, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    jl .L3_6
.L3_5:
    leaq 24(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call WSAPoll
    addq $32, %rsp
    movl %eax, %r13d
    movl %r13d, %eax
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
.L3_8:
    jmp .L3_7
.L3_6:
.L3_7:
.L3_3:
    movq $1, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r14
    jmp .L3_1
.L3_4:
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jl .L3_10
.L3_9:
    movslq %ebx, %r12
    jmp .L3_11
.L3_10:
    movl $1000, %eax
    movl %eax, %r12d
.L3_11:
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call Sleep
    addq $32, %rsp
    movl $0, %eax
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
.L3_12:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_net_15windows_receive
lb_net_15windows_receive:
    .seh_proc lb_net_15windows_receive
    pushq %rbp
    .seh_pushreg %rbp
    subq $560, %rsp
    .seh_stackalloc 560
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 376(%rbp)
    movq %rdi, 552(%rbp)
    .seh_savereg %rdi, 552
    movq %rsi, 544(%rbp)
    .seh_savereg %rsi, 544
    movdqu %xmm6, 528(%rbp)
    .seh_savexmm %xmm6, 528
    movdqu %xmm7, 512(%rbp)
    .seh_savexmm %xmm7, 512
    movdqu %xmm8, 496(%rbp)
    .seh_savexmm %xmm8, 496
    movdqu %xmm9, 480(%rbp)
    .seh_savexmm %xmm9, 480
    movdqu %xmm10, 464(%rbp)
    .seh_savexmm %xmm10, 464
    movdqu %xmm11, 448(%rbp)
    .seh_savexmm %xmm11, 448
    movdqu %xmm12, 432(%rbp)
    .seh_savexmm %xmm12, 432
    movdqu %xmm13, 416(%rbp)
    .seh_savexmm %xmm13, 416
    movdqu %xmm14, 400(%rbp)
    .seh_savexmm %xmm14, 400
    movdqu %xmm15, 384(%rbp)
    .seh_savexmm %xmm15, 384
    movq %rbx, 368(%rbp)
    .seh_savereg %rbx, 368
    movq %r12, 360(%rbp)
    .seh_savereg %r12, 360
    movq %r13, 352(%rbp)
    .seh_savereg %r13, 352
    movq %r14, 344(%rbp)
    .seh_savereg %r14, 344
    movq %r15, 336(%rbp)
    .seh_savereg %r15, 336
    .seh_endprologue
    movq %rcx, 576(%rbp)
    movq %rdx, 584(%rbp)
    movq %r8, 592(%rbp)
    movq %r9, 600(%rbp)
    movq 584(%rbp), %rax
    movq %rax, 256(%rbp)
    movq 592(%rbp), %r10
    leaq 240(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 212(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $0, 24(%r11)
    leaq 211(%rbp), %r12
    movq %r12, %r11
    movb $0, 0(%r11)
    leaq 240(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    seta %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L4_1
    jmp .L4_2
.L4_1:
    movq %r13, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq %rax, 8(%rbp)
    jmp .L4_3
.L4_2:
    movq %r12, %rax
    movq %rax, 8(%rbp)
.L4_3:
    testl %r15d, %r15d
    jne .L4_4
    jmp .L4_5
.L4_4:
    movq 48(%rbp), %rax
    leaq 64(%rbp), %r10
    movq %rax, (%r10)
    movq 48(%rbp), %rax
    movq $1073741824, %rcx
    cmpq %rcx, %rax
    jae .L4_27
.L4_26:
    movq 48(%rbp), %rax
    movq %rax, %r13
    jmp .L4_28
.L4_27:
    movq $1073741824, %rax
    movq %rax, %r13
.L4_28:
    leaq 56(%rbp), %r10
    movl %r13d, (%r10)
.L4_30:
    movl %r13d, %r15d
    jmp .L4_6
.L4_5:
    movl $1, %eax
    movl %eax, %r15d
.L4_6:
    leaq 204(%rbp), %r13
    leaq 256(%rbp), %rax
    movq %rax, 40(%rbp)
.L4_7:
.L4_8:
    movl $28, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq 40(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 32(%rbp)
    subq $48, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 8(%rbp), %rax
    movq %rax, 8(%rsp)
    movl %r15d, %eax
    movq %rax, 16(%rsp)
    movl $0, %eax
    movq %rax, 24(%rsp)
    movq %rbx, %rax
    movq %rax, 32(%rsp)
    movq %r13, %rax
    movq %rax, 40(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call recvfrom
    addq $48, %rsp
    movl %eax, 24(%rbp)
    movl 24(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jge .L4_11
.L4_10:
    subq $32, %rsp
    call WSAGetLastError
    addq $32, %rsp
    movl %eax, %r12d
    movl $10004, %ecx
    cmpl %ecx, %r12d
    jne .L4_14
.L4_13:
    jmp .L4_7
.L4_14:
.L4_15:
    leaq 272(%rbp), %rbx
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_net_12socket_error
    addq $32, %rsp
    movl %eax, %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_6(%rip), %r14
    leaq 184(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $34, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $56, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 376(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 376(%rbp), %rax
    movq 552(%rbp), %rdi
    movq 544(%rbp), %rsi
    movdqu 528(%rbp), %xmm6
    movdqu 512(%rbp), %xmm7
    movdqu 496(%rbp), %xmm8
    movdqu 480(%rbp), %xmm9
    movdqu 464(%rbp), %xmm10
    movdqu 448(%rbp), %xmm11
    movdqu 432(%rbp), %xmm12
    movdqu 416(%rbp), %xmm13
    movdqu 400(%rbp), %xmm14
    movdqu 384(%rbp), %xmm15
    movq 368(%rbp), %rbx
    movq 360(%rbp), %r12
    movq 352(%rbp), %r13
    movq 344(%rbp), %r14
    movq 336(%rbp), %r15
    leaq 560(%rbp), %rsp
    popq %rbp
    ret
.L4_11:
.L4_12:
    movl 24(%rbp), %eax
    movslq %eax, %r12
    movq 48(%rbp), %rcx
    cmpq %rcx, %r12
    jbe .L4_19
.L4_18:
    leaq 272(%rbp), %rbx
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_17message_too_large(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_7(%rip), %r13
    leaq 168(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $49, %rax
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
    movq %rbx, %rsi
    movq 376(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 376(%rbp), %rax
    movq 552(%rbp), %rdi
    movq 544(%rbp), %rsi
    movdqu 528(%rbp), %xmm6
    movdqu 512(%rbp), %xmm7
    movdqu 496(%rbp), %xmm8
    movdqu 480(%rbp), %xmm9
    movdqu 464(%rbp), %xmm10
    movdqu 448(%rbp), %xmm11
    movdqu 432(%rbp), %xmm12
    movdqu 416(%rbp), %xmm13
    movdqu 400(%rbp), %xmm14
    movdqu 384(%rbp), %xmm15
    movq 368(%rbp), %rbx
    movq 360(%rbp), %r12
    movq 352(%rbp), %r13
    movq 344(%rbp), %r14
    movq 336(%rbp), %r15
    leaq 560(%rbp), %rsp
    popq %rbp
    ret
.L4_19:
.L4_20:
    leaq 136(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %r10
    movq %r12, (%r10)
    movq %r13, %r10
    movl (%r10), %r14d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl %r14d, %eax
    movq %rax, 16(%rsp)
    leaq 80(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_net_14decode_address
    addq $32, %rsp
    leaq 80(%rbp), %r15
    movq $48, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L4_23
    jmp .L4_22
.L4_23:
    movq $24, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 272(%rbp), %r12
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
    movq %r12, %rsi
    movq 376(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 376(%rbp), %rax
    movq 552(%rbp), %rdi
    movq 544(%rbp), %rsi
    movdqu 528(%rbp), %xmm6
    movdqu 512(%rbp), %xmm7
    movdqu 496(%rbp), %xmm8
    movdqu 480(%rbp), %xmm9
    movdqu 464(%rbp), %xmm10
    movdqu 448(%rbp), %xmm11
    movdqu 432(%rbp), %xmm12
    movdqu 416(%rbp), %xmm13
    movdqu 400(%rbp), %xmm14
    movdqu 384(%rbp), %xmm15
    movq 368(%rbp), %rbx
    movq 360(%rbp), %r12
    movq 352(%rbp), %r13
    movq 344(%rbp), %r14
    movq 336(%rbp), %r15
    leaq 560(%rbp), %rsp
    popq %rbp
    ret
.L4_22:
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 272(%rbp), %rbx
    movq 0(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $56, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 376(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 376(%rbp), %rax
    movq 552(%rbp), %rdi
    movq 544(%rbp), %rsi
    movdqu 528(%rbp), %xmm6
    movdqu 512(%rbp), %xmm7
    movdqu 496(%rbp), %xmm8
    movdqu 480(%rbp), %xmm9
    movdqu 464(%rbp), %xmm10
    movdqu 448(%rbp), %xmm11
    movdqu 432(%rbp), %xmm12
    movdqu 416(%rbp), %xmm13
    movdqu 400(%rbp), %xmm14
    movdqu 384(%rbp), %xmm15
    movq 368(%rbp), %rbx
    movq 360(%rbp), %r12
    movq 352(%rbp), %r13
    movq 344(%rbp), %r14
    movq 336(%rbp), %r15
    leaq 560(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_net_windows_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/net/windows.lucb:29:5"
.Ltext_1:
    .asciz "Winsock could not initialize"
.Ltext_2:
    .asciz "Winsock cleanup could not be registered"
.Ltext_3:
    .asciz "unreachable"
.Ltext_4:
    .asciz "src/std/net/windows.lucb:42:5"
.Ltext_5:
    .asciz "src/std/net/windows.lucb:47:5"
.Ltext_6:
    .asciz "the datagram could not be received"
.Ltext_7:
    .asciz "the receive buffer was too small for the datagram"
.Ltext_8:
    .asciz "src/std/net/windows.lucb:59:9"
.Ltext_9:
    .asciz "src/std/net/windows.lucb:62:5"

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_net_12winsock_lock
    .p2align 2
lb_net_12winsock_lock:
    .zero 4

    .bss
    .globl lb_net_13winsock_ready
    .p2align 0
lb_net_13winsock_ready:
    .zero 1
