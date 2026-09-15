    .text

    .p2align 4
    .globl lb_window_14windows_cursor_0init
lb_window_14windows_cursor_0init:
    .seh_proc lb_window_14windows_cursor_0init
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
    .globl lb_window_10win_cursor
lb_window_10win_cursor:
    .seh_proc lb_window_10win_cursor
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
    .seh_endprologue
    movq %rcx, 320(%rbp)
    movq %rdx, 328(%rbp)
    movq %r8, 336(%rbp)
    movq %r9, 344(%rbp)
    movq 328(%rbp), %rax
    movl %eax, 32(%rbp)
    leaq 32(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    leaq 31(%rbp), %r12
    movq %r12, %r10
    movb %bl, (%r10)
    leaq 30(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movzbl 0(%r10), %eax
    movb %al, 0(%r11)
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $1, %ecx
    cmpl %ecx, %ebx
    je .L1_2
.L1_4:
    jmp .L1_3
.L1_2:
    movq $32513, %rax
    movq %rax, %rbx
    jmp .L1_1
.L1_3:
    movl $2, %ecx
    cmpl %ecx, %ebx
    je .L1_5
.L1_7:
    jmp .L1_6
.L1_5:
    movq $32649, %rax
    movq %rax, %rbx
    jmp .L1_1
.L1_6:
    movl $3, %ecx
    cmpl %ecx, %ebx
    je .L1_8
.L1_10:
    jmp .L1_9
.L1_8:
    movq $32644, %rax
    movq %rax, %rbx
    jmp .L1_1
.L1_9:
    movl $4, %ecx
    cmpl %ecx, %ebx
    je .L1_11
.L1_13:
    jmp .L1_12
.L1_11:
    movq $32645, %rax
    movq %rax, %rbx
    jmp .L1_1
.L1_12:
    movl $5, %ecx
    cmpl %ecx, %ebx
    je .L1_14
.L1_16:
    jmp .L1_15
.L1_14:
    movq $32646, %rax
    movq %rax, %rbx
    jmp .L1_1
.L1_15:
    movl $6, %ecx
    cmpl %ecx, %ebx
    je .L1_17
.L1_19:
    jmp .L1_18
.L1_17:
    movq $32646, %rax
    movq %rax, %rbx
    jmp .L1_1
.L1_18:
    movl $7, %ecx
    cmpl %ecx, %ebx
    je .L1_20
.L1_22:
    jmp .L1_21
.L1_20:
    movq $32648, %rax
    movq %rax, %rbx
    jmp .L1_1
.L1_21:
    jmp .L1_23
.L1_25:
    jmp .L1_24
.L1_23:
    movq $32512, %rax
    movq %rax, %rbx
    jmp .L1_1
.L1_24:
.L1_1:
    subq $32, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call LoadCursorW
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L1_26
    jmp .L1_27
.L1_26:
    jmp .L1_28
.L1_27:
    leaq 48(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_0(%rip), %r13
    leaq 8(%rbp), %r14
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L1_29:
.L1_28:
    leaq 48(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L1_30:
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
    .globl lb_window_14win_set_cursor
lb_window_14win_set_cursor:
    .seh_proc lb_window_14win_set_cursor
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
    leaq 80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $14392, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L2_4
    jmp .L2_34
.L2_34:
    movl %r13d, %r14d
    jmp .L2_5
.L2_4:
    movq $14385, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    leaq 64(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    cmpl %r14d, %r13d
    sete %al
    movzbl %al, %r14d
.L2_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L2_1
    jmp .L2_2
.L2_1:
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
.L2_6:
    jmp .L2_3
.L2_2:
.L2_3:
    movq %r12, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L2_35
    jmp .L2_10
.L2_35:
    movl %r13d, %r14d
    jmp .L2_11
.L2_10:
    movq $14385, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    leaq 64(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    cmpl %r14d, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L2_11:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L2_7
    jmp .L2_8
.L2_7:
    leaq 64(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 8(%rsp)
    leaq 24(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_10win_cursor
    addq $32, %rsp
    leaq 24(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L2_13
    jmp .L2_12
.L2_13:
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 96(%rbp), %r12
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
.L2_14:
.L2_12:
    movq %r15, %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq %r14, (%r10)
    movq $14385, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movb %r13b, (%r10)
    jmp .L2_9
.L2_8:
.L2_9:
    movq %rbx, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_required
    addq $32, %rsp
    movq %rax, %r13
    leaq 16(%rbp), %r14
    movq %r14, %r11
    movq $0, 0(%r11)
    subq $32, %rsp
    call GetCapture
    addq $32, %rsp
    movq %rax, %r15
    cmpq %r15, %r13
    jne .L2_16
.L2_15:
    movq %r12, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call SetCursor
    addq $32, %rsp
    movq %rax, %rbx
    jmp .L2_17
.L2_16:
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GetCursorPos
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L2_21
    jmp .L2_36
.L2_36:
    movl %ebx, %r15d
    jmp .L2_22
.L2_21:
    subq $32, %rsp
    movq %r14, %r10
    movq 0(%r10), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call WindowFromPoint
    addq $32, %rsp
    movq %rax, %rbx
    cmpq %rbx, %r13
    sete %al
    movzbl %al, %r15d
.L2_22:
    movzbl %r15b, %ebx
    testl %ebx, %ebx
    jne .L2_18
    jmp .L2_19
.L2_18:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call ScreenToClient
    addq $32, %rsp
    movl %eax, %ebx
    leaq 0(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call GetClientRect
    addq $32, %rsp
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L2_26
    jmp .L2_37
.L2_37:
    movl %r15d, %r13d
    jmp .L2_27
.L2_26:
    movq %r14, %r10
    movslq (%r10), %r13
    movl $0, %ecx
    cmpl %ecx, %r13d
    setge %al
    movzbl %al, %r13d
.L2_27:
    movzbl %r13b, %r15d
    testl %r15d, %r15d
    jne .L2_28
    jmp .L2_38
.L2_38:
    movl %r15d, %r13d
    jmp .L2_29
.L2_28:
    movq $4, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movl $0, %ecx
    cmpl %ecx, %r13d
    setge %al
    movzbl %al, %r13d
.L2_29:
    movzbl %r13b, %r15d
    testl %r15d, %r15d
    jne .L2_30
    jmp .L2_39
.L2_39:
    movl %r15d, %r13d
    jmp .L2_31
.L2_30:
    movq %r14, %r10
    movslq (%r10), %r13
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movslq (%r10), %r15
    cmpl %r15d, %r13d
    setl %al
    movzbl %al, %r13d
.L2_31:
    movzbl %r13b, %r15d
    testl %r15d, %r15d
    jne .L2_32
    jmp .L2_40
.L2_40:
    movl %r15d, %ebx
    jmp .L2_33
.L2_32:
    movq $4, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movq $12, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movslq (%r10), %r15
    cmpl %r15d, %r13d
    setl %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L2_33:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L2_23
    jmp .L2_24
.L2_23:
    movq %r12, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call SetCursor
    addq $32, %rsp
    movq %rax, %rbx
    jmp .L2_25
.L2_24:
.L2_25:
    jmp .L2_20
.L2_19:
.L2_20:
.L2_17:
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
    .quad lb_window_14windows_cursor_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "Windows could not load a system cursor"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/window/windows/cursor.lucb:19:5"

    .section .rdata,"dr"
    .p2align 3
