    .text

    .p2align 4
    .globl lb_window_queue_0init
lb_window_queue_0init:
    .seh_proc lb_window_queue_0init
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
    .globl lb_window_11push_scalar
lb_window_11push_scalar:
    .seh_proc lb_window_11push_scalar
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
    movq 320(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 328(%rbp), %rax
    movl %eax, 64(%rbp)
    leaq 64(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl $32, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_4
    jmp .L1_12
.L1_12:
    movl %r12d, %r13d
    jmp .L1_5
.L1_4:
    movl $127, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L1_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_6
    jmp .L1_13
.L1_13:
    movl %r12d, %r13d
    jmp .L1_7
.L1_6:
    movl $1114111, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L1_7:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_8
    jmp .L1_14
.L1_14:
    movl %r12d, %r13d
    jmp .L1_9
.L1_8:
    movl $55296, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_10
    jmp .L1_15
.L1_15:
    movl %r12d, %r13d
    jmp .L1_11
.L1_10:
    movl $57343, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L1_11:
    movzbl %r13b, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %r13d
.L1_9:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_1
    jmp .L1_2
.L1_1:
    leaq 80(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 8(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $13, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $52, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl %ebx, (%r10)
    subq $96, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_10push_event
    addq $96, %rsp
    jmp .L1_3
.L1_2:
.L1_3:
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
    .seh_endproc

    .p2align 4
    .globl lb_window_10push_utf16
lb_window_10push_utf16:
    .seh_proc lb_window_10push_utf16
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
    movq %rax, 24(%rbp)
    movq 280(%rbp), %rax
    movl %eax, 8(%rbp)
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
    movl $55296, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L2_4
    jmp .L2_22
.L2_22:
    movl %r12d, %r13d
    jmp .L2_5
.L2_4:
    movl $56319, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L2_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L2_1
    jmp .L2_2
.L2_1:
    leaq 24(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $14382, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzwl (%r10), %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L2_7
.L2_6:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movl $65533, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_11push_scalar
    addq $32, %rsp
    jmp .L2_8
.L2_7:
.L2_8:
    movq %r13, %r10
    movw %bx, (%r10)
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
.L2_9:
    jmp .L2_3
.L2_2:
.L2_3:
    movl $56320, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L2_13
    jmp .L2_23
.L2_23:
    movl %r12d, %r13d
    jmp .L2_14
.L2_13:
    movl $57343, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L2_14:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L2_10
    jmp .L2_11
.L2_10:
    leaq 24(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $14382, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzwl (%r10), %r14d
    movl $0, %eax
    movq %r13, %r10
    movw %ax, (%r10)
    movzwl %r14w, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L2_16
.L2_15:
    movl %r13d, %r14d
    movl %r14d, %eax
    movl $55296, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r14d
    movl %r14d, %eax
    movl $1024, %ecx
    mull %ecx
    jnc 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r14d
    movl %r14d, %eax
    movl $65536, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r14d
    movl %ebx, %r15d
    movl %r14d, %eax
    movl %r15d, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r14d
    movl %r14d, %eax
    movl $56320, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r14d
    jmp .L2_17
.L2_16:
    movl $65533, %eax
    movl %eax, %r14d
.L2_17:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movl %r14d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_11push_scalar
    addq $32, %rsp
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
.L2_18:
    jmp .L2_12
.L2_11:
.L2_12:
    leaq 24(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $14382, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzwl (%r10), %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L2_20
.L2_19:
    movl $0, %eax
    movq %r13, %r10
    movw %ax, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movl $65533, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_11push_scalar
    addq $32, %rsp
    jmp .L2_21
.L2_20:
.L2_21:
    movl %ebx, %r13d
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movl %r13d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_11push_scalar
    addq $32, %rsp
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
    .globl lb_window_10push_event
lb_window_10push_event:
    .seh_proc lb_window_10push_event
    pushq %rbp
    .seh_pushreg %rbp
    subq $288, %rsp
    .seh_stackalloc 288
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 104(%rbp)
    .seh_savereg %rbx, 104
    movq %r12, 96(%rbp)
    .seh_savereg %r12, 96
    movq %r13, 88(%rbp)
    .seh_savereg %r13, 88
    movq %r14, 80(%rbp)
    .seh_savereg %r14, 80
    movq %r15, 72(%rbp)
    .seh_savereg %r15, 72
    .seh_endprologue
    movq %rcx, 304(%rbp)
    movq %rdx, 312(%rbp)
    movq %r8, 320(%rbp)
    movq %r9, 328(%rbp)
    movq 304(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 312(%rbp), %r10
    leaq 0(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq 56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $14368, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $256, %rcx
    cmpq %rcx, %r13
    jne .L3_2
.L3_1:
    movq $14360, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $14376, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    jmp .L3_3
.L3_2:
.L3_3:
    movq $14360, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq (%r10), %r14
    movq %r13, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
.L3_5:
    movq $256, %rcx
    movq %r13, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rdx, %r14
    movq $24, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq $256, %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $56, %rcx
    imulq %rcx, %r14
    movq %r14, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    leaq 0(%rbp), %r15
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq %r12, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %r12, %r10
    movq %r14, (%r10)
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
    movq 104(%rbp), %rbx
    movq 96(%rbp), %r12
    movq 88(%rbp), %r13
    movq 80(%rbp), %r14
    movq 72(%rbp), %r15
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_9pop_event
lb_window_9pop_event:
    .seh_proc lb_window_9pop_event
    pushq %rbp
    .seh_pushreg %rbp
    subq $736, %rsp
    .seh_stackalloc 736
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 552(%rbp)
    movq %rdi, 728(%rbp)
    .seh_savereg %rdi, 728
    movq %rsi, 720(%rbp)
    .seh_savereg %rsi, 720
    movdqu %xmm6, 704(%rbp)
    .seh_savexmm %xmm6, 704
    movdqu %xmm7, 688(%rbp)
    .seh_savexmm %xmm7, 688
    movdqu %xmm8, 672(%rbp)
    .seh_savexmm %xmm8, 672
    movdqu %xmm9, 656(%rbp)
    .seh_savexmm %xmm9, 656
    movdqu %xmm10, 640(%rbp)
    .seh_savexmm %xmm10, 640
    movdqu %xmm11, 624(%rbp)
    .seh_savexmm %xmm11, 624
    movdqu %xmm12, 608(%rbp)
    .seh_savexmm %xmm12, 608
    movdqu %xmm13, 592(%rbp)
    .seh_savexmm %xmm13, 592
    movdqu %xmm14, 576(%rbp)
    .seh_savexmm %xmm14, 576
    movdqu %xmm15, 560(%rbp)
    .seh_savexmm %xmm15, 560
    movq %rbx, 544(%rbp)
    .seh_savereg %rbx, 544
    movq %r12, 536(%rbp)
    .seh_savereg %r12, 536
    movq %r13, 528(%rbp)
    .seh_savereg %r13, 528
    movq %r14, 520(%rbp)
    .seh_savereg %r14, 520
    movq %r15, 512(%rbp)
    .seh_savereg %r15, 512
    .seh_endprologue
    movq %rcx, 752(%rbp)
    movq %rdx, 760(%rbp)
    movq %r8, 768(%rbp)
    movq %r9, 776(%rbp)
    movq 760(%rbp), %rax
    movq %rax, 432(%rbp)
    leaq 432(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $14377, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L4_1
    jmp .L4_2
.L4_1:
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 376(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 312(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq $56, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 448(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq %rbx, %rsi
    movq 552(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 552(%rbp), %rax
    movq 728(%rbp), %rdi
    movq 720(%rbp), %rsi
    movdqu 704(%rbp), %xmm6
    movdqu 688(%rbp), %xmm7
    movdqu 672(%rbp), %xmm8
    movdqu 656(%rbp), %xmm9
    movdqu 640(%rbp), %xmm10
    movdqu 624(%rbp), %xmm11
    movdqu 608(%rbp), %xmm12
    movdqu 592(%rbp), %xmm13
    movdqu 576(%rbp), %xmm14
    movdqu 560(%rbp), %xmm15
    movq 544(%rbp), %rbx
    movq 536(%rbp), %r12
    movq 528(%rbp), %r13
    movq 520(%rbp), %r14
    movq 512(%rbp), %r15
    leaq 736(%rbp), %rsp
    popq %rbp
    ret
.L4_2:
.L4_3:
    movq $14376, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L4_5
    jmp .L4_6
.L4_5:
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 256(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $12, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 192(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq $56, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 448(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq %rbx, %rsi
    movq 552(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 552(%rbp), %rax
    movq 728(%rbp), %rdi
    movq 720(%rbp), %rsi
    movdqu 704(%rbp), %xmm6
    movdqu 688(%rbp), %xmm7
    movdqu 672(%rbp), %xmm8
    movdqu 656(%rbp), %xmm9
    movdqu 640(%rbp), %xmm10
    movdqu 624(%rbp), %xmm11
    movdqu 608(%rbp), %xmm12
    movdqu 592(%rbp), %xmm13
    movdqu 576(%rbp), %xmm14
    movdqu 560(%rbp), %xmm15
    movq 544(%rbp), %rbx
    movq 536(%rbp), %r12
    movq 528(%rbp), %r13
    movq 520(%rbp), %r14
    movq 512(%rbp), %r15
    leaq 736(%rbp), %rsp
    popq %rbp
    ret
.L4_6:
.L4_7:
    movq $14368, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L4_10
.L4_9:
    leaq 128(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    leaq 448(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq %r12, %rsi
    movq 552(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 552(%rbp), %rax
    movq 728(%rbp), %rdi
    movq 720(%rbp), %rsi
    movdqu 704(%rbp), %xmm6
    movdqu 688(%rbp), %xmm7
    movdqu 672(%rbp), %xmm8
    movdqu 656(%rbp), %xmm9
    movdqu 640(%rbp), %xmm10
    movdqu 624(%rbp), %xmm11
    movdqu 608(%rbp), %xmm12
    movdqu 592(%rbp), %xmm13
    movdqu 576(%rbp), %xmm14
    movdqu 560(%rbp), %xmm15
    movq 544(%rbp), %rbx
    movq 536(%rbp), %r12
    movq 528(%rbp), %r13
    movq 520(%rbp), %r14
    movq 512(%rbp), %r15
    leaq 736(%rbp), %rsp
    popq %rbp
    ret
.L4_10:
.L4_11:
    leaq 72(%rbp), %r13
    movq $14360, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $256, %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $56, %rcx
    imulq %rcx, %r15
    addq %r15, %r12
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq %r14, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
.L4_14:
    movq $256, %rcx
    movq %r12, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rdx, %rbx
    movq %r14, %r10
    movq %rbx, (%r10)
    movq 0(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 0(%rbp), %r10
    movq %rbx, (%r10)
    leaq 8(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq $56, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    leaq 448(%rbp), %r15
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq %r15, %rsi
    movq 552(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 552(%rbp), %rax
    movq 728(%rbp), %rdi
    movq 720(%rbp), %rsi
    movdqu 704(%rbp), %xmm6
    movdqu 688(%rbp), %xmm7
    movdqu 672(%rbp), %xmm8
    movdqu 656(%rbp), %xmm9
    movdqu 640(%rbp), %xmm10
    movdqu 624(%rbp), %xmm11
    movdqu 608(%rbp), %xmm12
    movdqu 592(%rbp), %xmm13
    movdqu 576(%rbp), %xmm14
    movdqu 560(%rbp), %xmm15
    movq 544(%rbp), %rbx
    movq 536(%rbp), %r12
    movq 528(%rbp), %r13
    movq 520(%rbp), %r14
    movq 512(%rbp), %r15
    leaq 736(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_window_queue_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/window/queue.lucb:41:9"
.Ltext_1:
    .asciz "src/std/window/queue.lucb:53:5"
.Ltext_2:
    .asciz "division by zero"
.Ltext_3:
    .asciz "src/std/window/queue.lucb:54:5"
.Ltext_4:
    .asciz "src/std/window/queue.lucb:65:5"
.Ltext_5:
    .asciz "src/std/window/queue.lucb:66:5"
.Ltext_6:
    .asciz "src/std/window/queue.lucb:67:5"
.Ltext_7:
    .asciz "unreachable"
.Ltext_8:
    .asciz "src/std/window/queue.lucb:68:5"
.Ltext_9:
    .asciz "integer overflow"
.Ltext_10:
    .asciz "index out of bounds"

    .section .rdata,"dr"
    .p2align 3
