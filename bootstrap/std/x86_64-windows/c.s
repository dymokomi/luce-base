    .text

    .p2align 4
    .globl lb_c_0init
lb_c_0init:
    .seh_proc lb_c_0init
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
    leaq lb_platform_wasm32(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L0_1
    jmp .L0_2
.L0_1:
    movl $27, %eax
    movl %eax, %ebx
    jmp .L0_3
.L0_2:
    movl $4, %eax
    movl %eax, %ebx
.L0_3:
    leaq lb_c_interrupted(%rip), %r12
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
    .globl lb_c_errno
lb_c_errno:
    .seh_proc lb_c_errno
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
    subq $32, %rsp
    call _errno
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L1_1
    jmp .L1_2
.L1_2:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_1:
    movq %rbx, %r10
    movslq (%r10), %r12
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
.L1_3:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_c_9set_errno
lb_c_9set_errno:
    .seh_proc lb_c_9set_errno
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
    subq $32, %rsp
    call _errno
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L2_1
    jmp .L2_2
.L2_2:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_1:
    leaq 0(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movq %rbx, %r10
    movl %r12d, (%r10)
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
    .seh_endproc

    .p2align 4
    .globl lb_c_stdin
lb_c_stdin:
    .seh_proc lb_c_stdin
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
    leaq .Ltext_4(%rip), %rbx
    leaq 0(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $23, %rax
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
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_c_stdout
lb_c_stdout:
    .seh_proc lb_c_stdout
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
    leaq .Ltext_4(%rip), %rbx
    leaq 0(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $23, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_6(%rip), %rbx
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
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_c_stderr
lb_c_stderr:
    .seh_proc lb_c_stderr
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
    leaq .Ltext_4(%rip), %rbx
    leaq 0(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $23, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_7(%rip), %rbx
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
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_c_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "null_foreign"
.Ltext_1:
    .asciz "src/std/c.lucb:13:9"
.Ltext_2:
    .asciz "unreachable"
.Ltext_3:
    .asciz "src/std/c.lucb:22:9"
.Ltext_4:
    .asciz "supplied by the backend"
.Ltext_5:
    .asciz "src/std/c.lucb:34:5"
.Ltext_6:
    .asciz "src/std/c.lucb:37:5"
.Ltext_7:
    .asciz "src/std/c.lucb:40:5"

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_c_interrupted
    .p2align 2
lb_c_interrupted:
    .zero 4
