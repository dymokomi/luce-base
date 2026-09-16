    .text

    .p2align 4
    .globl lb_window_module_0init
lb_window_module_0init:
    .seh_proc lb_window_module_0init
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
    leaq lb_window_unsupported(%rip), %rbx
    movl $208273493, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_window_12wrong_thread(%rip), %rbx
    movl $208273494, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_window_15invalid_options(%rip), %rbx
    movl $208273495, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_window_failed(%rip), %rbx
    movl $208273496, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_window_closed(%rip), %rbx
    movl $208273497, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_window_19presentation_in_use(%rip), %rbx
    movl $208273498, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
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
    .globl lb_window_supported
lb_window_supported:
    .seh_proc lb_window_supported
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
.L1_2:
.L1_3:
.L1_5:
.L1_6:
    movl $1, %eax
    movl %eax, %ebx
.L1_4:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
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
    .globl lb_window_Window_open
lb_window_Window_open:
    .seh_proc lb_window_Window_open
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
    movq 440(%rbp), %r10
    leaq 128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    subq $32, %rsp
    leaq 96(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_window_12check_thread
    addq $32, %rsp
    leaq 96(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_2
    jmp .L2_1
.L2_2:
    leaq 160(%rbp), %rbx
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
    movq 232(%rbp), %rdi
    movq $40, %rdx
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
.L2_3:
.L2_1:
    leaq 128(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq $20, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    leaq 64(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_window_12check_extent
    addq $32, %rsp
    leaq 64(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_5
    jmp .L2_4
.L2_5:
    leaq 160(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
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
    movq 232(%rbp), %rdi
    movq $40, %rdx
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
.L2_6:
.L2_4:
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
    jne .L2_8
.L2_7:
    leaq 160(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
    leaq 48(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $35, %rax
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
    movq 232(%rbp), %rdi
    movq $40, %rdx
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
.L2_10:
    jmp .L2_9
.L2_8:
.L2_9:
    leaq 40(%rbp), %r13
    movq %r13, %r11
    movq $0, 0(%r11)
    subq $64, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_8win_open
    addq $64, %rsp
    leaq 0(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_12
    jmp .L2_11
.L2_12:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 160(%rbp), %r12
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
    movq 232(%rbp), %rdi
    movq $40, %rdx
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
.L2_13:
.L2_11:
    movq %r14, %r10
    movq (%r10), %rbx
    movq %r13, %r10
    movq %rbx, (%r10)
    leaq 160(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 232(%rbp), %rdi
    movq $40, %rdx
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
.L2_14:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_Window_show
lb_window_Window_show:
    .seh_proc lb_window_Window_show
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
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Window_checked
    addq $32, %rsp
    leaq 0(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_2
    jmp .L3_1
.L3_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 48(%rbp), %r13
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
.L3_3:
.L3_1:
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_required
    addq $32, %rsp
    movq %rax, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $5, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call ShowWindow
    addq $32, %rsp
    movl %eax, %ebx
    leaq 48(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
    .globl lb_window_Window_size
lb_window_Window_size:
    .seh_proc lb_window_Window_size
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
    movq %rax, 88(%rbp)
    leaq 88(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 48(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Window_checked
    addq $32, %rsp
    leaq 48(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_2
    jmp .L4_1
.L4_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 96(%rbp), %r13
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
    movq 200(%rbp), %rdi
    movq $72, %rdx
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
.L4_3:
.L4_1:
    movq %r12, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_8win_size
    addq $32, %rsp
    leaq 8(%rbp), %rbx
    leaq 96(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $64, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 200(%rbp), %rdi
    movq $72, %rdx
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
    .globl lb_window_Window_resize
lb_window_Window_resize:
    .seh_proc lb_window_Window_resize
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
    movq 440(%rbp), %rax
    movq %rax, 152(%rbp)
    movq 448(%rbp), %rax
    movl %eax, 136(%rbp)
    movq 456(%rbp), %rax
    movl %eax, 120(%rbp)
    leaq 152(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 80(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Window_checked
    addq $32, %rsp
    leaq 80(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_2
    jmp .L5_1
.L5_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 160(%rbp), %r13
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
    movq 232(%rbp), %rdi
    movq $32, %rdx
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
.L5_3:
.L5_1:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    leaq 136(%rbp), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    leaq 120(%rbp), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 8(%rsp)
    movl %r14d, %eax
    movq %rax, 16(%rsp)
    leaq 48(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_window_12check_extent
    addq $32, %rsp
    leaq 48(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L5_5
    jmp .L5_4
.L5_5:
    leaq 160(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 232(%rbp), %rdi
    movq $32, %rdx
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
.L5_6:
.L5_4:
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    movl %r14d, %eax
    movq %rax, 24(%rsp)
    leaq 16(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_window_10win_resize
    addq $32, %rsp
    leaq 16(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_8
    jmp .L5_7
.L5_8:
    leaq 160(%rbp), %rbx
    movq %r12, %r10
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
    movq %rbx, %rsi
    movq 232(%rbp), %rdi
    movq $32, %rdx
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
.L5_9:
.L5_7:
    leaq 160(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 232(%rbp), %rdi
    movq $32, %rdx
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
    .seh_endproc

    .p2align 4
    .globl lb_window_Window_14set_text_input
lb_window_Window_14set_text_input:
    .seh_proc lb_window_Window_14set_text_input
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
    movq 344(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 352(%rbp), %rax
    movl %eax, 40(%rbp)
    leaq 56(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Window_checked
    addq $32, %rsp
    leaq 0(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_2
    jmp .L6_1
.L6_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 64(%rbp), %r13
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
    movq 104(%rbp), %r14
    movq 96(%rbp), %r15
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L6_3:
.L6_1:
    movq %r12, %r10
    movq (%r10), %rbx
    movq $14380, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r14d
    leaq 40(%rbp), %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    cmpl %r15d, %r14d
    jne .L6_5
.L6_4:
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
.L6_7:
    jmp .L6_6
.L6_5:
.L6_6:
    movq %r13, %r10
    movb %r15b, (%r10)
    movq $14382, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    leaq 64(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r12, %rsi
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
    .globl lb_window_Window_10set_cursor
lb_window_Window_10set_cursor:
    .seh_proc lb_window_Window_10set_cursor
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
    movq 392(%rbp), %rax
    movq %rax, 112(%rbp)
    movq 400(%rbp), %rax
    movl %eax, 96(%rbp)
    leaq 112(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 56(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Window_checked
    addq $32, %rsp
    leaq 56(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_2
    jmp .L7_1
.L7_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 120(%rbp), %r13
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
    movq 184(%rbp), %rdi
    movq $32, %rdx
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
.L7_3:
.L7_1:
    movq %r12, %r10
    movq (%r10), %rbx
    leaq 96(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl %r13d, %r14d
    movzbl %r14b, %r14d
    movl $7, %ecx
    cmpl %ecx, %r14d
    jbe .L7_5
.L7_4:
    leaq 120(%rbp), %rbx
    leaq lb_window_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_5(%rip), %r12
    leaq 40(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $21, %rax
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
    movq 184(%rbp), %rdi
    movq $32, %rdx
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
.L7_7:
    jmp .L7_6
.L7_5:
.L7_6:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_window_14win_set_cursor
    addq $32, %rsp
    leaq 8(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L7_9
    jmp .L7_8
.L7_9:
    leaq 120(%rbp), %rbx
    movq %r14, %r10
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
    movq 184(%rbp), %rdi
    movq $32, %rdx
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
.L7_10:
.L7_8:
    leaq 120(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 184(%rbp), %rdi
    movq $32, %rdx
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
    .seh_endproc

    .p2align 4
    .globl lb_window_Window_cursor
lb_window_Window_cursor:
    .seh_proc lb_window_Window_cursor
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
    movq %rax, 40(%rbp)
    leaq 40(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Window_checked
    addq $32, %rsp
    leaq 0(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_2
    jmp .L8_1
.L8_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 48(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L8_3:
.L8_1:
    movq %r12, %r10
    movq (%r10), %rbx
    movq $14385, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    leaq 48(%rbp), %r13
    movq %r13, %r10
    movb %bl, (%r10)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L8_4:
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
    .globl lb_window_Window_20acquire_presentation
lb_window_Window_20acquire_presentation:
    .seh_proc lb_window_Window_20acquire_presentation
    pushq %rbp
    .seh_pushreg %rbp
    subq $336, %rsp
    .seh_stackalloc 336
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 152(%rbp)
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
    movq %rbx, 144(%rbp)
    .seh_savereg %rbx, 144
    movq %r12, 136(%rbp)
    .seh_savereg %r12, 136
    movq %r13, 128(%rbp)
    .seh_savereg %r13, 128
    movq %r14, 120(%rbp)
    .seh_savereg %r14, 120
    .seh_endprologue
    movq %rcx, 352(%rbp)
    movq %rdx, 360(%rbp)
    movq %r8, 368(%rbp)
    movq %r9, 376(%rbp)
    movq 360(%rbp), %rax
    movq %rax, 72(%rbp)
    leaq 72(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 32(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Window_checked
    addq $32, %rsp
    leaq 32(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L9_2
    jmp .L9_1
.L9_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 80(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 152(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 152(%rbp), %rax
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
    movq 144(%rbp), %rbx
    movq 136(%rbp), %r12
    movq 128(%rbp), %r13
    movq 120(%rbp), %r14
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L9_3:
.L9_1:
    movq %r12, %r10
    movq (%r10), %rbx
    movq $14378, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L9_4
    jmp .L9_5
.L9_4:
    leaq 80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_19presentation_in_use(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_7(%rip), %r13
    leaq 16(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $45, %rax
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
    movq 152(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 152(%rbp), %rax
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
    movq 144(%rbp), %rbx
    movq 136(%rbp), %r12
    movq 128(%rbp), %r13
    movq 120(%rbp), %r14
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L9_7:
    jmp .L9_6
.L9_5:
.L9_6:
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq 8(%rbp), %r12
    movq %r12, %r11
    movq $0, 0(%r11)
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq 80(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r14, %rsi
    movq 152(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 152(%rbp), %rax
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
    movq 144(%rbp), %rbx
    movq 136(%rbp), %r12
    movq 128(%rbp), %r13
    movq 120(%rbp), %r14
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L9_8:
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_Window_13request_close
lb_window_Window_13request_close:
    .seh_proc lb_window_Window_13request_close
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
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Window_checked
    addq $32, %rsp
    leaq 0(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L10_2
    jmp .L10_1
.L10_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 48(%rbp), %r13
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
.L10_3:
.L10_1:
    movq %r12, %r10
    movq (%r10), %rbx
    movq $14377, %rcx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 48(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
    .globl lb_window_Window_poll
lb_window_Window_poll:
    .seh_proc lb_window_Window_poll
    pushq %rbp
    .seh_pushreg %rbp
    subq $608, %rsp
    .seh_stackalloc 608
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 424(%rbp)
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
    movq %rbx, 416(%rbp)
    .seh_savereg %rbx, 416
    movq %r12, 408(%rbp)
    .seh_savereg %r12, 408
    movq %r13, 400(%rbp)
    .seh_savereg %r13, 400
    movq %r14, 392(%rbp)
    .seh_savereg %r14, 392
    .seh_endprologue
    movq %rcx, 624(%rbp)
    movq %rdx, 632(%rbp)
    movq %r8, 640(%rbp)
    movq %r9, 648(%rbp)
    movq 632(%rbp), %rax
    movq %rax, 288(%rbp)
    leaq 288(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 248(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Window_checked
    addq $32, %rsp
    leaq 248(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_2
    jmp .L11_1
.L11_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 296(%rbp), %r13
    movq $64, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $88, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 424(%rbp), %rdi
    movq $96, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 424(%rbp), %rax
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
    movq 416(%rbp), %rbx
    movq 408(%rbp), %r12
    movq 400(%rbp), %r13
    movq 392(%rbp), %r14
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
.L11_3:
.L11_1:
    movq %r12, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 184(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_9pop_event
    addq $32, %rsp
    leaq 184(%rbp), %r14
    movq $56, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L11_7
    jmp .L11_5
.L11_7:
    leaq 128(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
.L11_4:
    leaq 64(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq $56, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq 296(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq $88, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 424(%rbp), %rdi
    movq $96, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 424(%rbp), %rax
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
    movq 416(%rbp), %rbx
    movq 408(%rbp), %r12
    movq 400(%rbp), %r13
    movq 392(%rbp), %r14
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
.L11_8:
    jmp .L11_6
.L11_5:
.L11_6:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_8win_pump
    addq $32, %rsp
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_9pop_event
    addq $32, %rsp
    leaq 0(%rbp), %r12
    leaq 296(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq $88, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 424(%rbp), %rdi
    movq $96, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 424(%rbp), %rax
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
    movq 416(%rbp), %rbx
    movq 408(%rbp), %r12
    movq 400(%rbp), %r13
    movq 392(%rbp), %r14
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
.L11_9:
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_Window_destroy
lb_window_Window_destroy:
    .seh_proc lb_window_Window_destroy
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
    .seh_endprologue
    movq %rcx, 304(%rbp)
    movq %rdx, 312(%rbp)
    movq %r8, 320(%rbp)
    movq %r9, 328(%rbp)
    movq 304(%rbp), %rax
    movq %rax, 72(%rbp)
    leaq 72(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L12_1
    jmp .L12_2
.L12_1:
    jmp .L12_3
.L12_2:
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
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L12_4:
.L12_3:
    subq $32, %rsp
    leaq 16(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_window_12check_thread
    addq $32, %rsp
    leaq 16(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L12_8
    jmp .L12_7
.L12_8:
    leaq 48(%rbp), %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L12_5
.L12_7:
    jmp .L12_6
.L12_5:
    leaq .Ltext_10(%rip), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $43, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_11(%rip), %r13
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
.L12_6:
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_11win_destroy
    addq $32, %rsp
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
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_Window_checked
lb_window_Window_checked:
    .seh_proc lb_window_Window_checked
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
    movq %rax, 56(%rbp)
    leaq 56(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    leaq 24(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_window_12check_thread
    addq $32, %rsp
    leaq 24(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_2
    jmp .L13_1
.L13_2:
    leaq 64(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
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
.L13_3:
.L13_1:
    movq %r12, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L13_4
    jmp .L13_5
.L13_4:
    jmp .L13_6
.L13_5:
    leaq 64(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_12(%rip), %r13
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
.L13_7:
.L13_6:
    leaq 64(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
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
.L13_8:
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
    .globl lb_window_12check_thread
lb_window_12check_thread:
    .seh_proc lb_window_12check_thread
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
    subq $32, %rsp
    call lb_window_supported
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L14_2
.L14_1:
    leaq 32(%rbp), %rbx
    leaq lb_window_unsupported(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_14(%rip), %r12
    leaq 16(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $50, %rax
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
    movq 88(%rbp), %rdi
    movq $32, %rdx
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
.L14_2:
.L14_3:
.L14_8:
    subq $32, %rsp
    call lb_thread_7is_main
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L14_9:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L14_5
    jmp .L14_6
.L14_5:
    leaq 32(%rbp), %rbx
    leaq lb_window_12wrong_thread(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_15(%rip), %r12
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $41, %rax
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
    movq 88(%rbp), %rdi
    movq $32, %rdx
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
.L14_6:
.L14_7:
    leaq 32(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 88(%rbp), %rdi
    movq $32, %rdx
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
    .seh_endproc

    .p2align 4
    .globl lb_window_12check_extent
lb_window_12check_extent:
    .seh_proc lb_window_12check_extent
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
    movl %eax, 32(%rbp)
    movq 320(%rbp), %rax
    movl %eax, 16(%rbp)
    leaq 32(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L15_11
    jmp .L15_4
.L15_11:
    movl %r12d, %r13d
    jmp .L15_5
.L15_4:
    leaq 16(%rbp), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L15_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L15_12
    jmp .L15_6
.L15_12:
    movl %r12d, %ebx
    jmp .L15_7
.L15_6:
    movl $10000, %ecx
    cmpl %ecx, %ebx
    seta %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L15_7:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L15_13
    jmp .L15_8
.L15_13:
    movl %r12d, %ebx
    jmp .L15_9
.L15_8:
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl $10000, %ecx
    cmpl %ecx, %ebx
    seta %al
    movzbl %al, %ebx
.L15_9:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L15_1
    jmp .L15_2
.L15_1:
    leaq 48(%rbp), %rbx
    leaq lb_window_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_16(%rip), %r12
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $52, %rax
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
.L15_10:
    jmp .L15_3
.L15_2:
.L15_3:
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

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_window_module_0init
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
    .asciz "src/std/window/module.lucb:18:5"
.Ltext_2:
    .asciz "the window title is not valid UTF-8"
.Ltext_3:
    .asciz "src/std/window/module.lucb:53:13"
.Ltext_4:
    .asciz "src/std/window/module.lucb:68:13"
.Ltext_5:
    .asciz "unknown system cursor"
.Ltext_6:
    .asciz "src/std/window/module.lucb:103:9"
.Ltext_7:
    .asciz "the window already has a presentation surface"
.Ltext_8:
    .asciz "src/std/window/module.lucb:112:9"
.Ltext_9:
    .asciz "src/std/window/module.lucb:132:9"
.Ltext_10:
    .asciz "window destruction requires the main thread"
.Ltext_11:
    .asciz "src/std/window/module.lucb:140:13"
.Ltext_12:
    .asciz "the window is closed"
.Ltext_13:
    .asciz "src/std/window/module.lucb:149:9"
.Ltext_14:
    .asciz "native windows are not implemented for this target"
.Ltext_15:
    .asciz "window operations require the main thread"
.Ltext_16:
    .asciz "window dimensions must be between 1 and 10000 points"

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_window_unsupported
    .p2align 2
lb_window_unsupported:
    .zero 4

    .bss
    .globl lb_window_12wrong_thread
    .p2align 2
lb_window_12wrong_thread:
    .zero 4

    .bss
    .globl lb_window_15invalid_options
    .p2align 2
lb_window_15invalid_options:
    .zero 4

    .bss
    .globl lb_window_failed
    .p2align 2
lb_window_failed:
    .zero 4

    .bss
    .globl lb_window_closed
    .p2align 2
lb_window_closed:
    .zero 4

    .bss
    .globl lb_window_19presentation_in_use
    .p2align 2
lb_window_19presentation_in_use:
    .zero 4
