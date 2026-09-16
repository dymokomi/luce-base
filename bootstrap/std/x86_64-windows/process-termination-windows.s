    .text

    .p2align 4
    .globl lb_process_19termination_windows_0init
lb_process_19termination_windows_0init:
    .seh_proc lb_process_19termination_windows_0init
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
    leaq lb_process_17console_interrupt(%rip), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_process_13console_break(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_process_13console_close(%rip), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_process_14console_logoff(%rip), %rbx
    movl $5, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_process_16console_shutdown(%rip), %rbx
    movl $6, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_process_26console_acknowledgement_ms(%rip), %rbx
    movq $4000, %rax
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
    .globl lb_process_28termination_console_received
lb_process_28termination_console_received:
    .seh_proc lb_process_28termination_console_received
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
    movq %r14, 16(%rbp)
    .seh_savereg %r14, 16
    .seh_endprologue
    movq %rcx, 240(%rbp)
    movq %rdx, 248(%rbp)
    movq %r8, 256(%rbp)
    movq %r9, 264(%rbp)
    movq 240(%rbp), %rax
    movl %eax, 0(%rbp)
    leaq 0(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_25
    jmp .L1_1
.L1_25:
    movl %r12d, %r13d
    jmp .L1_2
.L1_1:
    movl $5, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L1_2:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_26
    jmp .L1_3
.L1_26:
    movl %r12d, %r13d
    jmp .L1_4
.L1_3:
    movl $6, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L1_4:
    movzbl %r13b, %r12d
    movzbl %r12b, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_8
    jmp .L1_27
.L1_27:
    movl %r14d, %r13d
    jmp .L1_9
.L1_8:
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
.L1_9:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L1_10
    jmp .L1_28
.L1_28:
    movl %r14d, %ebx
    jmp .L1_11
.L1_10:
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L1_11:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L1_5
    jmp .L1_6
.L1_5:
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
    movq 16(%rbp), %r14
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L1_12:
    jmp .L1_7
.L1_6:
.L1_7:
    testl %r12d, %r12d
    jne .L1_13
    jmp .L1_14
.L1_13:
    leaq lb_process_19termination_closing(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_15
.L1_14:
.L1_15:
    leaq lb_process_22termination_generation(%rip), %rbx
    movq $1, %rcx
    movq %rbx, %r10
    lock xaddq %rcx, (%r10)
    movq %rcx, %rbx
    testl %r12d, %r12d
    jne .L1_16
    jmp .L1_17
.L1_16:
    subq $32, %rsp
    call GetTickCount64
    addq $32, %rsp
    movq %rax, %rbx
    leaq lb_process_18termination_owners(%rip), %r12
.L1_19:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L1_22
    jmp .L1_29
.L1_29:
    movl %r13d, %r14d
    jmp .L1_23
.L1_22:
    subq $32, %rsp
    call GetTickCount64
    addq $32, %rsp
    movq %rax, %r13
    subq %rbx, %r13
    movq $4000, %rcx
    cmpq %rcx, %r13
    setb %al
    movzbl %al, %r14d
.L1_23:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L1_20
    jmp .L1_21
.L1_20:
    subq $32, %rsp
    movl $1, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call Sleep
    addq $32, %rsp
    jmp .L1_19
.L1_21:
    jmp .L1_18
.L1_17:
.L1_18:
    movl $1, %eax
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
    movq 16(%rbp), %r14
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L1_24:
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
    .globl lb_process_27termination_windows_install
lb_process_27termination_windows_install:
    .seh_proc lb_process_27termination_windows_install
    pushq %rbp
    .seh_pushreg %rbp
    subq $256, %rsp
    .seh_stackalloc 256
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 72(%rbp)
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
    movq %rbx, 64(%rbp)
    .seh_savereg %rbx, 64
    movq %r12, 56(%rbp)
    .seh_savereg %r12, 56
    movq %r13, 48(%rbp)
    .seh_savereg %r13, 48
    .seh_endprologue
    movq %rcx, 272(%rbp)
    movq %rdx, 280(%rbp)
    movq %r8, 288(%rbp)
    movq %r9, 296(%rbp)
    leaq lb_process_28termination_console_received(%rip), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call SetConsoleCtrlHandler
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L2_2
.L2_1:
    leaq 16(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_2(%rip), %r12
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $54, %rax
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
    movq 72(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 72(%rbp), %rax
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
    movq 64(%rbp), %rbx
    movq 56(%rbp), %r12
    movq 48(%rbp), %r13
    leaq 256(%rbp), %rsp
    popq %rbp
    ret
.L2_4:
    jmp .L2_3
.L2_2:
.L2_3:
    leaq 16(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 72(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 72(%rbp), %rax
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
    movq 64(%rbp), %rbx
    movq 56(%rbp), %r12
    movq 48(%rbp), %r13
    leaq 256(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_process_27termination_windows_restore
lb_process_27termination_windows_restore:
    .seh_proc lb_process_27termination_windows_restore
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

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_process_19termination_windows_0init
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
    .asciz "src/std/process/termination/windows.lucb:25:5"
.Ltext_2:
    .asciz "the console termination handler could not be installed"

    .section .rdata,"dr"
    .p2align 3

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
