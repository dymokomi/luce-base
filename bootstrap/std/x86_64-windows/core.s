    .text

    .p2align 4
    .globl lb_core_0init
lb_core_0init:
    .seh_proc lb_core_0init
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
    .globl lb_core_17on_initial_thread
lb_core_17on_initial_thread:
    .seh_proc lb_core_17on_initial_thread
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
    leaq lb_core_14initial_thread(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_1
    jmp .L1_4
.L1_4:
    movl %r12d, %ebx
    jmp .L1_2
.L1_1:
    subq $32, %rsp
    call GetCurrentThreadId
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %r10
    movl (%r10), %r13d
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r12d
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
    movq 8(%rbp), %r13
    leaq 208(%rbp), %rsp
    popq %rbp
    ret
.L1_3:
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
    .globl lb_core_13process_start
lb_core_13process_start:
    .seh_proc lb_core_13process_start
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
    leaq lb_core_14initial_thread(%rip), %rbx
    subq $32, %rsp
    call GetCurrentThreadId
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    subq $32, %rsp
    movl $0, %eax
    movq %rax, 0(%rsp)
    movl $32768, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call _setmode
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movl $1, %eax
    movq %rax, 0(%rsp)
    movl $32768, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call _setmode
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movl $32768, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call _setmode
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
    movq 0(%rbp), %r12
    leaq 192(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_core_write
lb_core_write:
    .seh_proc lb_core_write
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
    .seh_endprologue
    movq %rcx, 272(%rbp)
    movq %rdx, 280(%rbp)
    movq %r8, 288(%rbp)
    movq %r9, 296(%rbp)
    movq 272(%rbp), %rax
    movl %eax, 32(%rbp)
    movq 280(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 288(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 32(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq 16(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $2147483647, %rcx
    cmpq %rcx, %r13
    jae .L3_2
.L3_1:
    movq %r13, %r14
    jmp .L3_3
.L3_2:
    movq $2147483647, %rax
    movq %rax, %r14
.L3_3:
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movl %r14d, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call _write
    addq $32, %rsp
    movl %eax, %r13d
    movslq %r13d, %r13
    movq %r13, %rax
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
    leaq 256(%rbp), %rsp
    popq %rbp
    ret
.L3_4:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_trap
lb_core_trap:
    .seh_proc lb_core_trap
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
    movq %rax, 64(%rbp)
    leaq 48(%rbp), %rbx
    leaq .Ltext_3(%rip), %r12
    leaq 32(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $6, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $6, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
    leaq 64(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r12
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
    leaq 16(%rbp), %rbx
    leaq .Ltext_4(%rip), %r12
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $1, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $1, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
    subq $32, %rsp
    movl $1, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call exit
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
    .globl lb_core_7trap_at
lb_core_7trap_at:
    .seh_proc lb_core_7trap_at
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
    .seh_endprologue
    movq %rcx, 352(%rbp)
    movq %rdx, 360(%rbp)
    movq %r8, 368(%rbp)
    movq %r9, 376(%rbp)
    movq 352(%rbp), %rax
    movq %rax, 112(%rbp)
    movq 360(%rbp), %rax
    movq %rax, 96(%rbp)
    leaq 80(%rbp), %rbx
    leaq .Ltext_3(%rip), %r12
    leaq 64(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $6, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $6, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
    leaq 112(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r12
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
    leaq 48(%rbp), %rbx
    leaq .Ltext_5(%rip), %r12
    leaq 32(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $2, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $2, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
    leaq 96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r12
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
    leaq 16(%rbp), %rbx
    leaq .Ltext_4(%rip), %r12
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $1, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $1, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
    subq $32, %rsp
    movl $1, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call exit
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
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_core_11trap_two_at
lb_core_11trap_two_at:
    .seh_proc lb_core_11trap_two_at
    pushq %rbp
    .seh_pushreg %rbp
    subq $352, %rsp
    .seh_stackalloc 352
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 168(%rbp)
    .seh_savereg %rbx, 168
    movq %r12, 160(%rbp)
    .seh_savereg %r12, 160
    movq %r13, 152(%rbp)
    .seh_savereg %r13, 152
    movq %r14, 144(%rbp)
    .seh_savereg %r14, 144
    .seh_endprologue
    movq %rcx, 368(%rbp)
    movq %rdx, 376(%rbp)
    movq %r8, 384(%rbp)
    movq %r9, 392(%rbp)
    movq 368(%rbp), %rax
    movq %rax, 128(%rbp)
    movq 376(%rbp), %rax
    movq %rax, 112(%rbp)
    movq 384(%rbp), %rax
    movq %rax, 96(%rbp)
    leaq 80(%rbp), %rbx
    leaq .Ltext_3(%rip), %r12
    leaq 64(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $6, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $6, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
    leaq 128(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r12
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
    leaq 48(%rbp), %rbx
    leaq .Ltext_5(%rip), %r12
    leaq 32(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $2, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $2, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
    leaq 112(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r13
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $2, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
    leaq 96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r12
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
    leaq 16(%rbp), %rbx
    leaq .Ltext_4(%rip), %r12
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $1, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $1, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
    subq $32, %rsp
    movl $1, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call exit
    addq $32, %rsp
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
    movq 168(%rbp), %rbx
    movq 160(%rbp), %r12
    movq 152(%rbp), %r13
    movq 144(%rbp), %r14
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_core_8trap_two
lb_core_8trap_two:
    .seh_proc lb_core_8trap_two
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
    .seh_endprologue
    movq %rcx, 352(%rbp)
    movq %rdx, 360(%rbp)
    movq %r8, 368(%rbp)
    movq %r9, 376(%rbp)
    movq 352(%rbp), %rax
    movq %rax, 112(%rbp)
    movq 360(%rbp), %rax
    movq %rax, 96(%rbp)
    leaq 80(%rbp), %rbx
    leaq .Ltext_3(%rip), %r12
    leaq 64(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $6, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $6, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
    leaq 112(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r12
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
    leaq 48(%rbp), %rbx
    leaq .Ltext_5(%rip), %r12
    leaq 32(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $2, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $2, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
    leaq 96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r12
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
    leaq 16(%rbp), %rbx
    leaq .Ltext_4(%rip), %r12
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $1, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $1, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
    subq $32, %rsp
    movl $1, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call exit
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
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_core_12trap_text_at
lb_core_12trap_text_at:
    .seh_proc lb_core_12trap_text_at
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
    .seh_endprologue
    movq %rcx, 352(%rbp)
    movq %rdx, 360(%rbp)
    movq %r8, 368(%rbp)
    movq %r9, 376(%rbp)
    movq 352(%rbp), %rax
    movq %rax, 112(%rbp)
    movq 360(%rbp), %r10
    leaq 96(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 112(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 64(%rbp), %r10
    movq %rbx, (%r10)
    leaq .Ltext_3(%rip), %r12
    leaq 48(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $6, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_16write_diagnostic
    addq $48, %rsp
    leaq 32(%rbp), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r13
    leaq 16(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_16write_diagnostic
    addq $48, %rsp
    leaq .Ltext_5(%rip), %rbx
    leaq 0(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $2, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_16write_diagnostic
    addq $48, %rsp
.L8_1:
    leaq 96(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_16write_diagnostic
    addq $48, %rsp
    leaq .Ltext_4(%rip), %rbx
    leaq 80(%rbp), %r12
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
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_16write_diagnostic
    addq $48, %rsp
    subq $32, %rsp
    movl $1, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call exit
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
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_core_14trap_detail_at
lb_core_14trap_detail_at:
    .seh_proc lb_core_14trap_detail_at
    pushq %rbp
    .seh_pushreg %rbp
    subq $416, %rsp
    .seh_stackalloc 416
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 232(%rbp)
    .seh_savereg %rbx, 232
    movq %r12, 224(%rbp)
    .seh_savereg %r12, 224
    movq %r13, 216(%rbp)
    .seh_savereg %r13, 216
    movq %r14, 208(%rbp)
    .seh_savereg %r14, 208
    movq %r15, 200(%rbp)
    .seh_savereg %r15, 200
    .seh_endprologue
    movq %rcx, 432(%rbp)
    movq %rdx, 440(%rbp)
    movq %r8, 448(%rbp)
    movq %r9, 456(%rbp)
    movq 432(%rbp), %rax
    movq %rax, 184(%rbp)
    movq 440(%rbp), %rax
    movq %rax, 168(%rbp)
    movq 448(%rbp), %r10
    leaq 152(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 184(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 72(%rbp), %r10
    movq %rbx, (%r10)
    leaq .Ltext_3(%rip), %r12
    leaq 56(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $6, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_16write_diagnostic
    addq $48, %rsp
    leaq 40(%rbp), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r13
    leaq 24(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_16write_diagnostic
    addq $48, %rsp
    leaq .Ltext_5(%rip), %rbx
    leaq 8(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $2, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_16write_diagnostic
    addq $48, %rsp
.L9_1:
    leaq 136(%rbp), %r12
    leaq 168(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r14
    leaq 120(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_16write_diagnostic
    addq $48, %rsp
    leaq 104(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $2, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_16write_diagnostic
    addq $48, %rsp
    leaq 152(%rbp), %r12
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_16write_diagnostic
    addq $48, %rsp
    leaq .Ltext_4(%rip), %r12
    leaq 88(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $1, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_16write_diagnostic
    addq $48, %rsp
    subq $32, %rsp
    movl $1, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call exit
    addq $32, %rsp
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
    movq 232(%rbp), %rbx
    movq 224(%rbp), %r12
    movq 216(%rbp), %r13
    movq 208(%rbp), %r14
    movq 200(%rbp), %r15
    leaq 416(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_core_16write_diagnostic
lb_core_16write_diagnostic:
    .seh_proc lb_core_16write_diagnostic
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
    movq %r15, 88(%rbp)
    .seh_savereg %r15, 88
    .seh_endprologue
    movq %rcx, 320(%rbp)
    movq %rdx, 328(%rbp)
    movq %r8, 336(%rbp)
    movq %r9, 344(%rbp)
    movq 320(%rbp), %r10
    leaq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 72(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    leaq 56(%rbp), %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 24(%rbp)
    leaq lb_c_interrupted(%rip), %rax
    movq %rax, 16(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L10_1:
    movq 48(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r15
    jae .L10_3
.L10_2:
    movq %r14, %rax
    subq %r15, %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %rax
    movq $1073741824, %rcx
    cmpq %rcx, %rax
    jae .L10_5
.L10_4:
    movq 40(%rbp), %rax
    movq %rax, 8(%rbp)
    jmp .L10_6
.L10_5:
    movq $1073741824, %rax
    movq %rax, 8(%rbp)
.L10_6:
    movq %rbx, %r10
    movq (%r10), %r13
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
    jbe .L10_7
.L10_8:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L10_7:
    movq %r15, %r12
    addq %r13, %r12
    movq 32(%rbp), %r10
    movq %r12, (%r10)
    movq 40(%rbp), %rax
    movq 24(%rbp), %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 8(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    setl %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L10_12
    jmp .L10_19
.L10_19:
    movl %r14d, %r13d
    jmp .L10_13
.L10_12:
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %r13d
    movq 16(%rbp), %r10
    movslq (%r10), %r14
    cmpl %r14d, %r13d
    sete %al
    movzbl %al, %r13d
.L10_13:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L10_9
    jmp .L10_10
.L10_9:
    jmp .L10_1
.L10_14:
    jmp .L10_11
.L10_10:
.L10_11:
    movq $0, %rcx
    cmpq %rcx, %r12
    jg .L10_16
.L10_15:
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
    movq 88(%rbp), %r15
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L10_18:
    jmp .L10_17
.L10_16:
.L10_17:
    movq %r12, %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r13, %r15
    jmp .L10_1
.L10_3:
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
    movq 88(%rbp), %r15
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_core_10format_put
lb_core_10format_put:
    .seh_proc lb_core_10format_put
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
    movq 288(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 296(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 304(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 40(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    cmpq %r14, %rbx
    seta %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L11_17
    jmp .L11_4
.L11_17:
    movl %r14d, %r15d
    jmp .L11_5
.L11_4:
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq %rbx, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    cmpq %r15, %r14
    seta %al
    movzbl %al, %r15d
.L11_5:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L11_1
    jmp .L11_2
.L11_1:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %r13, %r10
    movq (%r10), %r14
    movq $1, %rcx
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, (%r10)
    movl $1, %eax
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
.L11_6:
    jmp .L11_3
.L11_2:
.L11_3:
    leaq 24(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L11_10
    jmp .L11_8
.L11_10:
.L11_7:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L11_12
.L11_11:
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq (%r10), %r15
    addq %r15, %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L11_14
    jmp .L11_15
.L11_15:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L11_14:
    jmp .L11_13
.L11_12:
.L11_13:
    jmp .L11_9
.L11_8:
.L11_9:
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    movq %rbx, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %r13, %r10
    movq %r14, (%r10)
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
.L11_16:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_10format_u64
lb_core_10format_u64:
    .seh_proc lb_core_10format_u64
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
    movq 288(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 296(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L12_2
.L12_1:
    leaq 0(%rbp), %r12
    movq $23, %rcx
    addq %rcx, %r12
    movl $48, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $1, %rax
    movq %rax, %r12
    jmp .L12_3
.L12_2:
    movq $0, %rax
    movq %rax, %r12
.L12_3:
    leaq 0(%rbp), %r13
    movq %r12, %r14
    movq %rbx, %r15
.L12_4:
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L12_6
.L12_5:
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq $24, %rax
    movq %rbx, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq $24, %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    addq %r13, %r12
.L12_8:
    movq $10, %rcx
    movq %r15, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rdx, %r14
    movq %r14, %rax
    movq $48, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movzbl %r14b, %r14d
    movq %r12, %r10
    movb %r14b, (%r10)
.L12_10:
    movq $10, %rcx
    movq %r15, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %r12
    movq %rbx, %r14
    movq %r12, %r15
    jmp .L12_4
.L12_6:
    leaq 40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $24, %rax
    movq %r14, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    leaq 0(%rbp), %r13
    movq $25, %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    addq %r13, %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
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
    movq 64(%rbp), %r14
    movq 56(%rbp), %r15
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_core_10format_i64
lb_core_10format_i64:
    .seh_proc lb_core_10format_i64
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
    movq 312(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq 40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jge .L13_2
.L13_1:
    leaq 24(%rbp), %r12
    leaq .Ltext_21(%rip), %r13
    leaq 8(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $1, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq $1, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L13_5
.L13_4:
    movl $1, %eax
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
.L13_7:
    jmp .L13_6
.L13_5:
.L13_6:
    movq $0, %rax
    movq %rax, %r13
    subq %rbx, %r13
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_10format_u64
    addq $32, %rsp
    movl %eax, %r13d
    movl %r13d, %eax
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
.L13_8:
    jmp .L13_3
.L13_2:
.L13_3:
    leaq 56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_10format_u64
    addq $32, %rsp
    movl %eax, %r12d
    movl %r12d, %eax
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
.L13_9:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_10format_f64
lb_core_10format_f64:
    .seh_proc lb_core_10format_f64
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
    movsd %xmm1, 328(%rbp)
    movq 320(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 328(%rbp), %rax
    movq %rax, 64(%rbp)
    leaq 0(%rbp), %rbx
    leaq .Ltext_24(%rip), %r12
    leaq 64(%rbp), %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq $64, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r9, %xmm3
    call snprintf
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jge .L14_2
.L14_1:
    movl $1, %eax
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
.L14_4:
    jmp .L14_3
.L14_2:
.L14_3:
    leaq 80(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movslq %r12d, %r14
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %r13d
    movl %r13d, %eax
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
.L14_5:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_11format_bool
lb_core_11format_bool:
    .seh_proc lb_core_11format_bool
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
    leaq 48(%rbp), %r12
    leaq 64(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L15_1
    jmp .L15_2
.L15_1:
    leaq .Ltext_26(%rip), %rbx
    leaq 16(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $4, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq 32(%rbp), %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $4, %rax
    movq %rax, %r13
    jmp .L15_3
.L15_2:
    leaq .Ltext_27(%rip), %rbx
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $5, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq 32(%rbp), %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $5, %rax
    movq %rax, %r13
.L15_3:
    leaq 32(%rbp), %r14
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 80(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %r14d
    movl %r14d, %eax
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
.L15_4:
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_11format_char
lb_core_11format_char:
    .seh_proc lb_core_11format_char
    pushq %rbp
    .seh_pushreg %rbp
    subq $384, %rsp
    .seh_stackalloc 384
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 200(%rbp)
    .seh_savereg %rbx, 200
    movq %r12, 192(%rbp)
    .seh_savereg %r12, 192
    movq %r13, 184(%rbp)
    .seh_savereg %r13, 184
    movq %r14, 176(%rbp)
    .seh_savereg %r14, 176
    movq %r15, 168(%rbp)
    .seh_savereg %r15, 168
    .seh_endprologue
    movq %rcx, 400(%rbp)
    movq %rdx, 408(%rbp)
    movq %r8, 416(%rbp)
    movq %r9, 424(%rbp)
    movq 400(%rbp), %rax
    movq %rax, 152(%rbp)
    movq 408(%rbp), %rax
    movl %eax, 136(%rbp)
    leaq 136(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    leaq 132(%rbp), %r12
    movq %r12, %r11
    movl $0, 0(%r11)
    movl $128, %ecx
    cmpl %ecx, %ebx
    jae .L16_2
.L16_1:
    movl %ebx, %r13d
    leaq .Ltext_29(%rip), %r14
    subq $64, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movl $32, %eax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movl $8, %eax
    movq %rax, 24(%rsp)
    movl $0, %eax
    movq %rax, 32(%rsp)
    movl $0, %eax
    movq %rax, 40(%rsp)
    movq %r14, %rax
    movq %rax, 48(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6conv_u
    addq $64, %rsp
    movq %rax, %r13
    movzbl %r13b, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
    movq $1, %rax
    movq %rax, 0(%rbp)
    jmp .L16_3
.L16_2:
    movl $2048, %ecx
    cmpl %ecx, %ebx
    jae .L16_5
.L16_4:
.L16_8:
    movl $6, %ecx
    movl %ebx, %r13d
    shrl %cl, %r13d
    movl $192, %ecx
    orl %ecx, %r13d
    movl %r13d, %r13d
    leaq .Ltext_30(%rip), %r14
    subq $64, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movl $32, %eax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movl $8, %eax
    movq %rax, 24(%rsp)
    movl $0, %eax
    movq %rax, 32(%rsp)
    movl $0, %eax
    movq %rax, 40(%rsp)
    movq %r14, %rax
    movq %rax, 48(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6conv_u
    addq $64, %rsp
    movq %rax, %r13
    movzbl %r13b, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $63, %ecx
    movl %ebx, %r14d
    andl %ecx, %r14d
    movl $128, %ecx
    orl %ecx, %r14d
    movl %r14d, %r14d
    leaq .Ltext_32(%rip), %r15
    subq $64, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movl $32, %eax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movl $8, %eax
    movq %rax, 24(%rsp)
    movl $0, %eax
    movq %rax, 32(%rsp)
    movl $0, %eax
    movq %rax, 40(%rsp)
    movq %r15, %rax
    movq %rax, 48(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6conv_u
    addq $64, %rsp
    movq %rax, %r14
    movzbl %r14b, %r14d
    movq %r13, %r10
    movb %r14b, (%r10)
    movq $2, %rax
    movq %rax, 8(%rbp)
    jmp .L16_6
.L16_5:
    movl $65536, %ecx
    cmpl %ecx, %ebx
    jae .L16_10
.L16_9:
.L16_13:
    movl $12, %ecx
    movl %ebx, %r13d
    shrl %cl, %r13d
    movl $224, %ecx
    orl %ecx, %r13d
    movl %r13d, %r13d
    leaq .Ltext_33(%rip), %r14
    subq $64, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movl $32, %eax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movl $8, %eax
    movq %rax, 24(%rsp)
    movl $0, %eax
    movq %rax, 32(%rsp)
    movl $0, %eax
    movq %rax, 40(%rsp)
    movq %r14, %rax
    movq %rax, 48(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6conv_u
    addq $64, %rsp
    movq %rax, %r13
    movzbl %r13b, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
.L16_15:
    movl $6, %ecx
    movl %ebx, %eax
    shrl %cl, %eax
    movl %eax, 120(%rbp)
    movl 120(%rbp), %eax
    movl $63, %ecx
    andl %ecx, %eax
    movl %eax, 112(%rbp)
    movl 112(%rbp), %eax
    movl $128, %ecx
    orl %ecx, %eax
    movl %eax, 104(%rbp)
    movl 104(%rbp), %eax
    movl %eax, %eax
    movq %rax, 96(%rbp)
    leaq .Ltext_34(%rip), %r15
    subq $64, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $32, %eax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movl $8, %eax
    movq %rax, 24(%rsp)
    movl $0, %eax
    movq %rax, 32(%rsp)
    movl $0, %eax
    movq %rax, 40(%rsp)
    movq %r15, %rax
    movq %rax, 48(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6conv_u
    addq $64, %rsp
    movq %rax, 88(%rbp)
    movl 88(%rbp), %eax
    movzbl %al, %eax
    movl %eax, 80(%rbp)
    movl 80(%rbp), %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $2, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    movl $63, %ecx
    movl %ebx, %r15d
    andl %ecx, %r15d
    movl $128, %ecx
    orl %ecx, %r15d
    movl %r15d, %r15d
    leaq .Ltext_35(%rip), %r14
    subq $64, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movl $32, %eax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movl $8, %eax
    movq %rax, 24(%rsp)
    movl $0, %eax
    movq %rax, 32(%rsp)
    movl $0, %eax
    movq %rax, 40(%rsp)
    movq %r14, %rax
    movq %rax, 48(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6conv_u
    addq $64, %rsp
    movq %rax, %r14
    movzbl %r14b, %r14d
    movq 72(%rbp), %r10
    movb %r14b, (%r10)
    movq $3, %rax
    movq %rax, %r14
    jmp .L16_11
.L16_10:
.L16_17:
    movl $18, %ecx
    movl %ebx, %r13d
    shrl %cl, %r13d
    movl $240, %ecx
    orl %ecx, %r13d
    movl %r13d, %r13d
    leaq .Ltext_36(%rip), %r14
    subq $64, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movl $32, %eax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movl $8, %eax
    movq %rax, 24(%rsp)
    movl $0, %eax
    movq %rax, 32(%rsp)
    movl $0, %eax
    movq %rax, 40(%rsp)
    movq %r14, %rax
    movq %rax, 48(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6conv_u
    addq $64, %rsp
    movq %rax, %r13
    movzbl %r13b, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
.L16_19:
    movl $12, %ecx
    movl %ebx, %r14d
    shrl %cl, %r14d
    movl $63, %ecx
    andl %ecx, %r14d
    movl $128, %ecx
    orl %ecx, %r14d
    movl %r14d, %r14d
    leaq .Ltext_37(%rip), %r15
    subq $64, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movl $32, %eax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movl $8, %eax
    movq %rax, 24(%rsp)
    movl $0, %eax
    movq %rax, 32(%rsp)
    movl $0, %eax
    movq %rax, 40(%rsp)
    movq %r15, %rax
    movq %rax, 48(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6conv_u
    addq $64, %rsp
    movq %rax, %r14
    movzbl %r14b, %r14d
    movq %r13, %r10
    movb %r14b, (%r10)
    movq $2, %rcx
    movq %r12, %r14
    addq %rcx, %r14
.L16_21:
    movl $6, %ecx
    movl %ebx, %eax
    shrl %cl, %eax
    movl %eax, 64(%rbp)
    movl 64(%rbp), %eax
    movl $63, %ecx
    andl %ecx, %eax
    movl %eax, 56(%rbp)
    movl 56(%rbp), %eax
    movl $128, %ecx
    orl %ecx, %eax
    movl %eax, 48(%rbp)
    movl 48(%rbp), %eax
    movl %eax, %eax
    movq %rax, 40(%rbp)
    leaq .Ltext_38(%rip), %r15
    subq $64, %rsp
    movq 40(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $32, %eax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movl $8, %eax
    movq %rax, 24(%rsp)
    movl $0, %eax
    movq %rax, 32(%rsp)
    movl $0, %eax
    movq %rax, 40(%rsp)
    movq %r15, %rax
    movq %rax, 48(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6conv_u
    addq $64, %rsp
    movq %rax, 32(%rbp)
    movl 32(%rbp), %eax
    movzbl %al, %eax
    movl %eax, 24(%rbp)
    movl 24(%rbp), %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq $3, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 16(%rbp)
    movl $63, %ecx
    movl %ebx, %r15d
    andl %ecx, %r15d
    movl $128, %ecx
    orl %ecx, %r15d
    movl %r15d, %r15d
    leaq .Ltext_39(%rip), %r13
    subq $64, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movl $32, %eax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movl $8, %eax
    movq %rax, 24(%rsp)
    movl $0, %eax
    movq %rax, 32(%rsp)
    movl $0, %eax
    movq %rax, 40(%rsp)
    movq %r13, %rax
    movq %rax, 48(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6conv_u
    addq $64, %rsp
    movq %rax, %r13
    movzbl %r13b, %r13d
    movq 16(%rbp), %r10
    movb %r13b, (%r10)
    movq $4, %rax
    movq %rax, %r14
.L16_11:
    movq %r14, %rax
    movq %rax, 8(%rbp)
.L16_6:
    movq 8(%rbp), %rax
    movq %rax, 0(%rbp)
.L16_3:
    leaq 152(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %ebx
    movl %ebx, %eax
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
    movq 200(%rbp), %rbx
    movq 192(%rbp), %r12
    movq 184(%rbp), %r13
    movq 176(%rbp), %r14
    movq 168(%rbp), %r15
    leaq 384(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_core_13format_finish
lb_core_13format_finish:
    .seh_proc lb_core_13format_finish
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
    movq %rax, 48(%rbp)
    leaq 48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    cmpq %r15, %r13
    jae .L17_2
.L17_1:
    movq %r12, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %r15
    addq %r15, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    jmp .L17_3
.L17_2:
.L17_3:
    movq %r12, %r10
    movq (%r10), %r13
    movq %r14, %r10
    movq (%r10), %r15
    cmpq %r15, %r13
    jbe .L17_5
.L17_4:
    leaq .Ltext_41(%rip), %rbx
    leaq 32(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 64(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rsi
    movq 120(%rbp), %rdi
    movq $16, %rdx
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
.L17_7:
    jmp .L17_6
.L17_5:
.L17_6:
    movq %rbx, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq (%r10), %r14
    leaq 16(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    leaq 0(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    leaq 64(%rbp), %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %rsi
    movq 120(%rbp), %rdi
    movq $16, %rdx
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
.L17_8:
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_9show_take
lb_core_9show_take:
    .seh_proc lb_core_9show_take
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
    movq %rax, 64(%rbp)
    movq 352(%rbp), %rax
    movq %rax, 48(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_core_9show_next@SECREL32(%rax), %rax
    movq %rax, %rbx
    movq %rbx, %r10
    movl (%r10), %r12d
    movl $3, %ecx
    movl %r12d, %r13d
    andl %ecx, %r13d
    movl %r13d, %r13d
    movq $256, %rcx
    imulq %rcx, %r13
    movl $1, %ecx
    addl %ecx, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq 48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $255, %rcx
    cmpq %rcx, %rbx
    jbe .L18_2
.L18_1:
    movq $255, %rax
    movq %rax, %rbx
    jmp .L18_3
.L18_2:
.L18_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L18_5
.L18_4:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_core_10show_bytes@SECREL32(%rax), %rax
    movq %rax, %r12
    movq $1025, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r12, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq 64(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r12, %rax
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
    movq %rax, %r12
    testq %r12, %r12
    jne .L18_7
    jmp .L18_8
.L18_8:
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L18_7:
    jmp .L18_6
.L18_5:
.L18_6:
    movq %r13, %rax
    movq %rbx, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_core_10show_bytes@SECREL32(%rax), %rax
    movq %rax, %r14
    movq $1024, %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r12, %r15
    addq %r14, %r15
    movl $0, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq $1025, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r12, %r13
    jbe .L18_9
.L18_10:
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L18_9:
    movq %r13, %rbx
    addq %r14, %rbx
    movq %r12, %rax
    subq %r13, %rax
    movq %rax, 8(%rbp)
    leaq 32(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq 8(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq 16(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq 8(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 80(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rsi
    movq 136(%rbp), %rdi
    movq $16, %rdx
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
.L18_11:
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_8show_hex
lb_core_8show_hex:
    .seh_proc lb_core_8show_hex
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
    movq %rax, 48(%rbp)
    leaq 48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L19_2
.L19_1:
    leaq 32(%rbp), %r12
    movq $15, %rcx
    addq %rcx, %r12
    movl $48, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $1, %rax
    movq %rax, %r12
    jmp .L19_3
.L19_2:
    movq $0, %rax
    movq %rax, %r12
.L19_3:
    leaq 32(%rbp), %r13
    movq %r12, %r14
    movq %rbx, %r15
.L19_4:
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L19_6
.L19_5:
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 8(%rbp)
    movq $15, %rcx
    movq %r15, %r12
    andq %rcx, %r12
    movzbl %r12b, %r12d
    movq $16, %rax
    movq 8(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq $16, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rbx, %rax
    addq %r13, %rax
    movq %rax, 0(%rbp)
    movzbl %r12b, %ebx
    movl $10, %ecx
    cmpl %ecx, %ebx
    jae .L19_8
.L19_7:
    movl $48, %ecx
    movl %ebx, %r14d
    addl %ecx, %r14d
    movzbl %r14b, %r12d
    cmpl %r14d, %r12d
    je .L19_10
.L19_11:
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L19_10:
    movl %r14d, %ebx
    jmp .L19_9
.L19_8:
    movl $87, %ecx
    movl %ebx, %r14d
    addl %ecx, %r14d
    movzbl %r14b, %r12d
    cmpl %r14d, %r12d
    je .L19_12
.L19_13:
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L19_12:
    movl %r14d, %ebx
.L19_9:
    movzbl %bl, %r12d
    movq 0(%rbp), %r10
    movb %r12b, (%r10)
.L19_15:
    movq $4, %rcx
    movq %r15, %rbx
    shrq %cl, %rbx
    movq 8(%rbp), %rax
    movq %rax, %r14
    movq %rbx, %r15
    jmp .L19_4
.L19_6:
    movq $16, %rax
    movq %r14, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    leaq 32(%rbp), %r12
    movq $17, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    addq %r12, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    leaq 16(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_9show_take
    addq $32, %rsp
    leaq 16(%rbp), %rbx
    leaq 64(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 120(%rbp), %rdi
    movq $16, %rdx
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
    .seh_endproc

    .p2align 4
    .globl lb_core_8show_bin
lb_core_8show_bin:
    .seh_proc lb_core_8show_bin
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
    movq %rax, 96(%rbp)
    leaq 96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L20_2
.L20_1:
    leaq 32(%rbp), %r12
    movq $63, %rcx
    addq %rcx, %r12
    movl $48, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $1, %rax
    movq %rax, %r12
    jmp .L20_3
.L20_2:
    movq $0, %rax
    movq %rax, %r12
.L20_3:
    leaq 32(%rbp), %r13
    movq %r12, %r14
    movq %rbx, %r15
.L20_4:
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L20_6
.L20_5:
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 8(%rbp)
    movq $64, %rax
    movq 8(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq $64, %rcx
    cmpq %rcx, %r12
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
    movq %r12, %rax
    addq %r13, %rax
    movq %rax, 0(%rbp)
    movq $1, %rcx
    movq %r15, %r12
    andq %rcx, %r12
    movzbl %r12b, %r12d
    movl $48, %ecx
    movl %r12d, %ebx
    addl %ecx, %ebx
    movzbl %bl, %r12d
    cmpl %ebx, %r12d
    je .L20_7
.L20_8:
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L20_7:
    movq 0(%rbp), %r10
    movb %bl, (%r10)
.L20_10:
    movq $1, %rcx
    movq %r15, %rbx
    shrq %cl, %rbx
    movq 8(%rbp), %rax
    movq %rax, %r14
    movq %rbx, %r15
    jmp .L20_4
.L20_6:
    movq $64, %rax
    movq %r14, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_57(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    leaq 32(%rbp), %r12
    movq $65, %rcx
    cmpq %rcx, %rbx
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
    addq %r12, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    leaq 16(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_9show_take
    addq $32, %rsp
    leaq 16(%rbp), %rbx
    leaq 112(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 168(%rbp), %rdi
    movq $16, %rdx
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

    .p2align 4
    .globl lb_core_8show_pad
lb_core_8show_pad:
    .seh_proc lb_core_8show_pad
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
    movq 600(%rbp), %r10
    leaq 320(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 608(%rbp), %rax
    movq %rax, 304(%rbp)
    leaq 320(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 304(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jb .L21_2
.L21_1:
    movq 8(%rbp), %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    leaq 288(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_9show_take
    addq $32, %rsp
    leaq 288(%rbp), %r13
    leaq 336(%rbp), %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %rsi
    movq 392(%rbp), %rdi
    movq $16, %rdx
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
.L21_4:
    jmp .L21_3
.L21_2:
.L21_3:
    movq %r13, %r14
    subq %r12, %r14
    movq $255, %rcx
    cmpq %rcx, %r13
    jbe .L21_6
.L21_5:
    movq $255, %rcx
    cmpq %rcx, %r12
    jbe .L21_9
.L21_8:
    movq $255, %rax
    movq %rax, %r12
    jmp .L21_10
.L21_9:
.L21_10:
    movq $255, %rax
    movq %r12, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r12, %r15
    jmp .L21_7
.L21_6:
    movq %r12, %r15
    movq %r14, %r13
.L21_7:
    leaq 32(%rbp), %r12
    movq $0, %rax
    movq %rax, %r14
.L21_11:
    cmpq %r13, %r14
    jae .L21_14
.L21_12:
    movq $256, %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r12, %rbx
    addq %r14, %rbx
    movl $32, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L21_13:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r14
    jmp .L21_11
.L21_14:
    movq $0, %rcx
    cmpq %rcx, %r15
    jbe .L21_16
.L21_15:
    leaq 32(%rbp), %rbx
    movq $257, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    addq %r13, %rbx
    movq 8(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r15, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L21_18
    jmp .L21_19
.L21_19:
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L21_18:
    jmp .L21_17
.L21_16:
.L21_17:
    leaq 32(%rbp), %rbx
    movq %r15, %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    leaq 16(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_9show_take
    addq $32, %rsp
    leaq 16(%rbp), %rbx
    leaq 336(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 392(%rbp), %rdi
    movq $16, %rdx
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
.L21_20:
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_arguments
lb_core_arguments:
    .seh_proc lb_core_arguments
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
    movl %eax, 304(%rbp)
    movq 592(%rbp), %rax
    movq %rax, 288(%rbp)
    leaq 272(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 304(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq 288(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 176(%rbp), %r10
    movl %ebx, (%r10)
    leaq 160(%rbp), %r10
    movq %r12, (%r10)
    leaq lb_core_23windows_argument_vector(%rip), %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L22_16
.L22_15:
    leaq 128(%rbp), %r12
    movq 72(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    leaq 144(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L22_44
.L22_18:
    jmp .L22_17
.L22_16:
.L22_17:
    leaq 124(%rbp), %rax
    movq %rax, 64(%rbp)
    movl $0, %eax
    movq 64(%rbp), %r10
    movl %eax, (%r10)
    subq $32, %rsp
    call GetCommandLineW
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L22_19
    jmp .L22_20
.L22_20:
    leaq .Ltext_70(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L22_19:
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 64(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call CommandLineToArgvW
    addq $32, %rsp
    movq %rax, %r15
    testq %r15, %r15
    jne .L22_21
    jmp .L22_22
.L22_21:
    jmp .L22_23
.L22_22:
    leaq .Ltext_71(%rip), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_trap
    addq $32, %rsp
    leaq .Ltext_70(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L22_23:
    movq 64(%rbp), %r10
    movslq (%r10), %r14
    movslq %r14d, %r14
    movq %r14, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_72(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call malloc
    addq $32, %rsp
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    testq %rax, %rax
    jne .L22_24
    jmp .L22_25
.L22_24:
    jmp .L22_26
.L22_25:
    leaq .Ltext_64(%rip), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_trap
    addq $32, %rsp
    leaq .Ltext_72(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L22_26:
    movq 64(%rbp), %r10
    movslq (%r10), %r13
    movslq %r13d, %rax
    movq %rax, 56(%rbp)
    leaq .Ltext_73(%rip), %rax
    movq %rax, 32(%rbp)
    leaq .Ltext_75(%rip), %rax
    movq %rax, 24(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L22_27:
    movq 56(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L22_30
.L22_28:
    movq $8, %rcx
    movq %r14, %rax
    imulq %rcx, %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %rax
    addq %r15, %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %r10
    movq (%r10), %r12
    subq $64, %rsp
    movl $65001, %eax
    movq %rax, 0(%rsp)
    movl $128, %eax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movl $4294967295, %eax
    movq %rax, 24(%rsp)
    movq $0, %rax
    movq %rax, 32(%rsp)
    movl $0, %eax
    movq %rax, 40(%rsp)
    movq $0, %rax
    movq %rax, 48(%rsp)
    movq $0, %rax
    movq %rax, 56(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call WideCharToMultiByte
    addq $64, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jg .L22_32
.L22_31:
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_trap
    addq $32, %rsp
    jmp .L22_33
.L22_32:
.L22_33:
    movslq %r12d, %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call malloc
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L22_34
    jmp .L22_35
.L22_34:
    jmp .L22_36
.L22_35:
    leaq .Ltext_64(%rip), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_trap
    addq $32, %rsp
    leaq .Ltext_74(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L22_36:
    movq 40(%rbp), %r10
    movq (%r10), %rbx
    subq $64, %rsp
    movl $65001, %eax
    movq %rax, 0(%rsp)
    movl $128, %eax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movl $4294967295, %eax
    movq %rax, 24(%rsp)
    movq %r13, %rax
    movq %rax, 32(%rsp)
    movl %r12d, %eax
    movq %rax, 40(%rsp)
    movq $0, %rax
    movq %rax, 48(%rsp)
    movq $0, %rax
    movq %rax, 56(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call WideCharToMultiByte
    addq $64, %rsp
    movl %eax, %ebx
    cmpl %ebx, %r12d
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L22_38
.L22_37:
    subq $32, %rsp
    movq 24(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_trap
    addq $32, %rsp
    jmp .L22_39
.L22_38:
.L22_39:
    movq 48(%rbp), %rax
    movq 8(%rbp), %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
.L22_29:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r14
    jmp .L22_27
.L22_30:
    movq 64(%rbp), %r10
    movslq (%r10), %rbx
    movslq %ebx, %rbx
    leaq 104(%rbp), %r12
    movq 8(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_core_22free_windows_arguments(%rip), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call atexit
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L22_41
.L22_40:
    leaq .Ltext_76(%rip), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_trap
    addq $32, %rsp
    jmp .L22_42
.L22_41:
.L22_42:
    leaq 128(%rbp), %rbx
    movq 72(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call LocalFree
    addq $32, %rsp
    movq %rax, %r12
    movq %rbx, %r10
    leaq 144(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L22_44
.L22_43:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call LocalFree
    addq $32, %rsp
    movq %rax, %rbx
    leaq .Ltext_77(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L22_44:
    leaq 144(%rbp), %rbx
    leaq 192(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    leaq 256(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L22_45
.L22_14:
    leaq .Ltext_69(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L22_45:
    leaq 256(%rbp), %rbx
    movq %rbx, %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 96(%rbp)
    movq 96(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jbe .L22_2
.L22_1:
    movq 96(%rbp), %rax
    movq %rax, %r12
    jmp .L22_3
.L22_2:
    movq $1, %rax
    movq %rax, %r12
.L22_3:
    movq %r12, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call malloc
    addq $32, %rsp
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    testq %rax, %rax
    jne .L22_4
    jmp .L22_5
.L22_4:
    jmp .L22_6
.L22_5:
    leaq .Ltext_64(%rip), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_trap
    addq $32, %rsp
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L22_6:
    leaq 240(%rbp), %rax
    movq %rax, 88(%rbp)
    leaq 224(%rbp), %r14
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    leaq .Ltext_66(%rip), %rax
    movq %rax, 80(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L22_7:
    movq 96(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L22_9
.L22_8:
    movq 16(%rbp), %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r13, %rbx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r12
    movq %r14, %r10
    movq %rbx, (%r10)
    movq %r15, %r10
    movq %r12, (%r10)
    movq %r14, %r10
    movq 88(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_7utf8_ok
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L22_11
.L22_10:
    subq $32, %rsp
    movq 80(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_trap
    addq $32, %rsp
    jmp .L22_12
.L22_11:
.L22_12:
    movq $16, %rcx
    movq %r13, %rbx
    imulq %rcx, %rbx
    movq 0(%rbp), %rcx
    addq %rcx, %rbx
    movq 88(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r13
    jmp .L22_7
.L22_9:
    leaq 208(%rbp), %rbx
    movq 0(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 96(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 320(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 376(%rbp), %rdi
    movq $16, %rdx
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
.L22_13:
    leaq .Ltext_68(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_22free_windows_arguments
lb_core_22free_windows_arguments:
    .seh_proc lb_core_22free_windows_arguments
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
    movq %r15, 8(%rbp)
    .seh_savereg %r15, 8
    .seh_endprologue
    movq %rcx, 240(%rbp)
    movq %rdx, 248(%rbp)
    movq %r8, 256(%rbp)
    movq %r9, 264(%rbp)
    leaq lb_core_23windows_argument_vector(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rax
    movq %rax, %r14
.L23_1:
    cmpq %r13, %r14
    jae .L23_4
.L23_2:
    movq $8, %rcx
    movq %r14, %r15
    imulq %rcx, %r15
    movq %r15, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call free
    addq $32, %rsp
.L23_3:
    movq $1, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r14
    jmp .L23_1
.L23_4:
    movq %rbx, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call free
    addq $32, %rsp
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
    movq 8(%rbp), %r15
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_core_11main_failed
lb_core_11main_failed:
    .seh_proc lb_core_11main_failed
    pushq %rbp
    .seh_pushreg %rbp
    subq $1440, %rsp
    .seh_stackalloc 1440
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 1432(%rbp)
    .seh_savereg %rdi, 1432
    movq %rsi, 1424(%rbp)
    .seh_savereg %rsi, 1424
    movdqu %xmm6, 1408(%rbp)
    .seh_savexmm %xmm6, 1408
    movdqu %xmm7, 1392(%rbp)
    .seh_savexmm %xmm7, 1392
    movdqu %xmm8, 1376(%rbp)
    .seh_savexmm %xmm8, 1376
    movdqu %xmm9, 1360(%rbp)
    .seh_savexmm %xmm9, 1360
    movdqu %xmm10, 1344(%rbp)
    .seh_savexmm %xmm10, 1344
    movdqu %xmm11, 1328(%rbp)
    .seh_savexmm %xmm11, 1328
    movdqu %xmm12, 1312(%rbp)
    .seh_savexmm %xmm12, 1312
    movdqu %xmm13, 1296(%rbp)
    .seh_savexmm %xmm13, 1296
    movdqu %xmm14, 1280(%rbp)
    .seh_savexmm %xmm14, 1280
    movdqu %xmm15, 1264(%rbp)
    .seh_savexmm %xmm15, 1264
    movq %rbx, 1256(%rbp)
    .seh_savereg %rbx, 1256
    movq %r12, 1248(%rbp)
    .seh_savereg %r12, 1248
    movq %r13, 1240(%rbp)
    .seh_savereg %r13, 1240
    movq %r14, 1232(%rbp)
    .seh_savereg %r14, 1232
    movq %r15, 1224(%rbp)
    .seh_savereg %r15, 1224
    .seh_endprologue
    movq %rcx, 1456(%rbp)
    movq %rdx, 1464(%rbp)
    movq %r8, 1472(%rbp)
    movq %r9, 1480(%rbp)
    movq 1456(%rbp), %rax
    movl %eax, 1208(%rbp)
    movq 1464(%rbp), %r10
    leaq 1192(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 152(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 168(%rbp), %rbx
    leaq 96(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $1024, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 72(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $1024, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_78(%rip), %r14
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq $6, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %r14d
    leaq 1208(%rbp), %r14
    movq %r14, %r10
    movslq (%r10), %r14
    movslq %r14d, %r14
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_10format_i64
    addq $32, %rsp
    movl %eax, %r14d
    leaq .Ltext_5(%rip), %r14
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq $2, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %r14d
    leaq 1192(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %r14d
    leaq .Ltext_4(%rip), %r14
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq $1, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %r14d
    leaq 24(%rbp), %r14
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %rbx
    cmpq %rbx, %r13
    jbe .L24_4
.L24_3:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_79(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $60, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L24_5
.L24_4:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_13format_finish
    addq $32, %rsp
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L24_5:
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L24_7
    jmp .L24_6
.L24_7:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 112(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L24_1
.L24_6:
    leaq 136(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L24_2
.L24_1:
    movl $1, %eax
    movq 1432(%rbp), %rdi
    movq 1424(%rbp), %rsi
    movdqu 1408(%rbp), %xmm6
    movdqu 1392(%rbp), %xmm7
    movdqu 1376(%rbp), %xmm8
    movdqu 1360(%rbp), %xmm9
    movdqu 1344(%rbp), %xmm10
    movdqu 1328(%rbp), %xmm11
    movdqu 1312(%rbp), %xmm12
    movdqu 1296(%rbp), %xmm13
    movdqu 1280(%rbp), %xmm14
    movdqu 1264(%rbp), %xmm15
    movq 1256(%rbp), %rbx
    movq 1248(%rbp), %r12
    movq 1240(%rbp), %r13
    movq 1232(%rbp), %r14
    movq 1224(%rbp), %r15
    leaq 1440(%rbp), %rsp
    popq %rbp
    ret
.L24_8:
.L24_2:
    movq %rbx, %r10
    movq 0(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 0(%rbp), %r10
    movq (%r10), %r12
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
    movl $1, %eax
    movq 1432(%rbp), %rdi
    movq 1424(%rbp), %rsi
    movdqu 1408(%rbp), %xmm6
    movdqu 1392(%rbp), %xmm7
    movdqu 1376(%rbp), %xmm8
    movdqu 1360(%rbp), %xmm9
    movdqu 1344(%rbp), %xmm10
    movdqu 1328(%rbp), %xmm11
    movdqu 1312(%rbp), %xmm12
    movdqu 1296(%rbp), %xmm13
    movdqu 1280(%rbp), %xmm14
    movdqu 1264(%rbp), %xmm15
    movq 1256(%rbp), %rbx
    movq 1248(%rbp), %r12
    movq 1240(%rbp), %r13
    movq 1232(%rbp), %r14
    movq 1224(%rbp), %r15
    leaq 1440(%rbp), %rsp
    popq %rbp
    ret
.L24_9:
    leaq .Ltext_80(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_11test_report
lb_core_11test_report:
    .seh_proc lb_core_11test_report
    pushq %rbp
    .seh_pushreg %rbp
    subq $3616, %rsp
    .seh_stackalloc 3616
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 3608(%rbp)
    .seh_savereg %rdi, 3608
    movq %rsi, 3600(%rbp)
    .seh_savereg %rsi, 3600
    movdqu %xmm6, 3584(%rbp)
    .seh_savexmm %xmm6, 3584
    movdqu %xmm7, 3568(%rbp)
    .seh_savexmm %xmm7, 3568
    movdqu %xmm8, 3552(%rbp)
    .seh_savexmm %xmm8, 3552
    movdqu %xmm9, 3536(%rbp)
    .seh_savexmm %xmm9, 3536
    movdqu %xmm10, 3520(%rbp)
    .seh_savexmm %xmm10, 3520
    movdqu %xmm11, 3504(%rbp)
    .seh_savexmm %xmm11, 3504
    movdqu %xmm12, 3488(%rbp)
    .seh_savexmm %xmm12, 3488
    movdqu %xmm13, 3472(%rbp)
    .seh_savexmm %xmm13, 3472
    movdqu %xmm14, 3456(%rbp)
    .seh_savexmm %xmm14, 3456
    movdqu %xmm15, 3440(%rbp)
    .seh_savexmm %xmm15, 3440
    movq %rbx, 3432(%rbp)
    .seh_savereg %rbx, 3432
    movq %r12, 3424(%rbp)
    .seh_savereg %r12, 3424
    movq %r13, 3416(%rbp)
    .seh_savereg %r13, 3416
    movq %r14, 3408(%rbp)
    .seh_savereg %r14, 3408
    movq %r15, 3400(%rbp)
    .seh_savereg %r15, 3400
    .seh_endprologue
    movq %rcx, 3632(%rbp)
    movq %rdx, 3640(%rbp)
    movq %r8, 3648(%rbp)
    movq %r9, 3656(%rbp)
    movq 3632(%rbp), %r10
    leaq 3384(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 3640(%rbp), %rax
    movl %eax, 3368(%rbp)
    movq 3648(%rbp), %r10
    leaq 3352(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 2312(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 2328(%rbp), %rbx
    leaq 2256(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $1024, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 2232(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, 16(%rbp)
    movq $1024, %rax
    movq 16(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 3368(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L25_3
    jmp .L25_4
.L25_3:
    leaq 1192(%rbp), %r13
    leaq 1168(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $1024, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_81(%rip), %r13
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq $6, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %ebx
    leaq 3384(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_82(%rip), %rbx
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq $14, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %ebx
    leaq 3352(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_4(%rip), %rbx
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq $1, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 8(%rsp)
    leaq 1152(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_13format_finish
    addq $32, %rsp
    leaq 1152(%rbp), %rbx
    leaq 2216(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L25_5
.L25_4:
    leaq 128(%rbp), %rbx
    leaq 104(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $1024, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_83(%rip), %rbx
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq $6, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %ebx
    leaq 3384(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
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
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_4(%rip), %rbx
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq $1, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    leaq 88(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_13format_finish
    addq $32, %rsp
    leaq 88(%rbp), %rbx
    leaq 2216(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L25_5:
    leaq 2216(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %ebx
    leaq 40(%rbp), %r14
    movq %r12, %r10
    movq (%r10), %rbx
    movq 16(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    jbe .L25_7
.L25_6:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_79(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $60, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L25_8
.L25_7:
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 8(%rsp)
    leaq 24(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_13format_finish
    addq $32, %rsp
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L25_8:
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L25_10
    jmp .L25_9
.L25_10:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 2272(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L25_1
.L25_9:
    leaq 2296(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L25_2
.L25_1:
    movq 3608(%rbp), %rdi
    movq 3600(%rbp), %rsi
    movdqu 3584(%rbp), %xmm6
    movdqu 3568(%rbp), %xmm7
    movdqu 3552(%rbp), %xmm8
    movdqu 3536(%rbp), %xmm9
    movdqu 3520(%rbp), %xmm10
    movdqu 3504(%rbp), %xmm11
    movdqu 3488(%rbp), %xmm12
    movdqu 3472(%rbp), %xmm13
    movdqu 3456(%rbp), %xmm14
    movdqu 3440(%rbp), %xmm15
    movq 3432(%rbp), %rbx
    movq 3424(%rbp), %r12
    movq 3416(%rbp), %r13
    movq 3408(%rbp), %r14
    movq 3400(%rbp), %r15
    leaq 3616(%rbp), %rsp
    popq %rbp
    ret
.L25_11:
.L25_2:
    movq %rbx, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 8(%rbp), %r10
    movq (%r10), %r12
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movl $1, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
    movq 3608(%rbp), %rdi
    movq 3600(%rbp), %rsi
    movdqu 3584(%rbp), %xmm6
    movdqu 3568(%rbp), %xmm7
    movdqu 3552(%rbp), %xmm8
    movdqu 3536(%rbp), %xmm9
    movdqu 3520(%rbp), %xmm10
    movdqu 3504(%rbp), %xmm11
    movdqu 3488(%rbp), %xmm12
    movdqu 3472(%rbp), %xmm13
    movdqu 3456(%rbp), %xmm14
    movdqu 3440(%rbp), %xmm15
    movq 3432(%rbp), %rbx
    movq 3424(%rbp), %r12
    movq 3416(%rbp), %r13
    movq 3408(%rbp), %r14
    movq 3400(%rbp), %r15
    leaq 3616(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_core_12test_summary
lb_core_12test_summary:
    .seh_proc lb_core_12test_summary
    pushq %rbp
    .seh_pushreg %rbp
    subq $480, %rsp
    .seh_stackalloc 480
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 296(%rbp)
    .seh_savereg %rbx, 296
    movq %r12, 288(%rbp)
    .seh_savereg %r12, 288
    movq %r13, 280(%rbp)
    .seh_savereg %r13, 280
    movq %r14, 272(%rbp)
    .seh_savereg %r14, 272
    movq %r15, 264(%rbp)
    .seh_savereg %r15, 264
    .seh_endprologue
    movq %rcx, 496(%rbp)
    movq %rdx, 504(%rbp)
    movq %r8, 512(%rbp)
    movq %r9, 520(%rbp)
    movq 496(%rbp), %rax
    movl %eax, 248(%rbp)
    movq 504(%rbp), %rax
    movl %eax, 232(%rbp)
    leaq 152(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 168(%rbp), %rbx
    leaq 96(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $64, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 72(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $64, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq 248(%rbp), %r14
    movq %r14, %r10
    movslq (%r10), %r14
    leaq 232(%rbp), %r15
    movq %r15, %r10
    movslq (%r10), %r15
    movl %r14d, %eax
    movl %r15d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_84(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r14d
    movslq %r14d, %r14
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_10format_i64
    addq $32, %rsp
    movl %eax, %r14d
    leaq .Ltext_85(%rip), %r14
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq $8, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_10format_put
    addq $32, %rsp
    movl %eax, %r14d
    leaq 24(%rbp), %r14
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %rbx
    cmpq %rbx, %r13
    jbe .L26_4
.L26_3:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_79(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $60, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L26_5
.L26_4:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_13format_finish
    addq $32, %rsp
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L26_5:
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L26_7
    jmp .L26_6
.L26_7:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 112(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L26_1
.L26_6:
    leaq 136(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L26_2
.L26_1:
    movl $1, %eax
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
    movq 296(%rbp), %rbx
    movq 288(%rbp), %r12
    movq 280(%rbp), %r13
    movq 272(%rbp), %r14
    movq 264(%rbp), %r15
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
.L26_8:
.L26_2:
    movq %rbx, %r10
    movq 0(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 0(%rbp), %r10
    movq (%r10), %r12
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movl $1, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L26_10
.L26_9:
    movl $0, %eax
    movl %eax, %ebx
    jmp .L26_11
.L26_10:
    movl $1, %eax
    movl %eax, %ebx
.L26_11:
    movl %ebx, %eax
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
    movq 296(%rbp), %rbx
    movq 288(%rbp), %r12
    movq 280(%rbp), %r13
    movq 272(%rbp), %r14
    movq 264(%rbp), %r15
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
.L26_12:
    leaq .Ltext_86(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_9print_str
lb_core_9print_str:
    .seh_proc lb_core_9print_str
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
    .seh_endprologue
    movq %rcx, 272(%rbp)
    movq %rdx, 280(%rbp)
    movq %r8, 288(%rbp)
    movq %r9, 296(%rbp)
    movq 272(%rbp), %r10
    leaq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movl $1, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
    leaq 16(%rbp), %rbx
    leaq .Ltext_4(%rip), %r12
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $1, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movl $1, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $1, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
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
    leaq 256(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_core_9print_i64
lb_core_9print_i64:
    .seh_proc lb_core_9print_i64
    pushq %rbp
    .seh_pushreg %rbp
    subq $368, %rsp
    .seh_stackalloc 368
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 184(%rbp)
    .seh_savereg %rbx, 184
    movq %r12, 176(%rbp)
    .seh_savereg %r12, 176
    movq %r13, 168(%rbp)
    .seh_savereg %r13, 168
    movq %r14, 160(%rbp)
    .seh_savereg %r14, 160
    .seh_endprologue
    movq %rcx, 384(%rbp)
    movq %rdx, 392(%rbp)
    movq %r8, 400(%rbp)
    movq %r9, 408(%rbp)
    movq 384(%rbp), %rax
    movq %rax, 144(%rbp)
    leaq 96(%rbp), %rbx
    leaq 112(%rbp), %r12
    leaq 80(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $32, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 56(%rbp), %rbx
    leaq 32(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $32, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $0, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq 144(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_10format_i64
    addq $32, %rsp
    movl %eax, %r13d
    movq $16, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movl $1, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
    leaq 16(%rbp), %rbx
    leaq .Ltext_4(%rip), %r12
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $1, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movl $1, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $1, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_core_write
    addq $32, %rsp
    movq %rax, %rbx
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
    movq 184(%rbp), %rbx
    movq 176(%rbp), %r12
    movq 168(%rbp), %r13
    movq 160(%rbp), %r14
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_core_11str_compare
lb_core_11str_compare:
    .seh_proc lb_core_11str_compare
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
    movq 296(%rbp), %r10
    leaq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 40(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    leaq 24(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    movq 16(%rbp), %rax
    movq 8(%rbp), %rcx
    cmpq %rcx, %rax
    setb %al
    movzbl %al, %eax
    movl %eax, 0(%rbp)
    movl 0(%rbp), %eax
    testl %eax, %eax
    jne .L29_1
    jmp .L29_2
.L29_1:
    movq 16(%rbp), %rax
    movq %rax, %r15
    jmp .L29_3
.L29_2:
    movq 8(%rbp), %rax
    movq %rax, %r15
.L29_3:
    movq $0, %rcx
    cmpq %rcx, %r15
    jbe .L29_5
.L29_4:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r13, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq %r15, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcmp
    addq $32, %rsp
    movl %eax, %r12d
    jmp .L29_6
.L29_5:
    movl $0, %eax
    movl %eax, %r12d
.L29_6:
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L29_8
.L29_7:
    movl $0, %ecx
    cmpl %ecx, %r12d
    jge .L29_11
.L29_10:
    movl $4294967295, %eax
    movl %eax, %ebx
    jmp .L29_12
.L29_11:
    movl $1, %eax
    movl %eax, %ebx
.L29_12:
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
    movq 64(%rbp), %r14
    movq 56(%rbp), %r15
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
.L29_13:
    jmp .L29_9
.L29_8:
.L29_9:
    movl 0(%rbp), %eax
    testl %eax, %eax
    jne .L29_14
    jmp .L29_15
.L29_14:
    movl $4294967295, %eax
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
.L29_17:
    jmp .L29_16
.L29_15:
.L29_16:
    movq 16(%rbp), %rax
    movq 8(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L29_19
.L29_18:
    movl $1, %eax
    movl %eax, %ebx
    jmp .L29_20
.L29_19:
    movl $0, %eax
    movl %eax, %ebx
.L29_20:
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
    movq 64(%rbp), %r14
    movq 56(%rbp), %r15
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
.L29_21:
    leaq .Ltext_87(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_11utf8_scalar
lb_core_11utf8_scalar:
    .seh_proc lb_core_11utf8_scalar
    pushq %rbp
    .seh_pushreg %rbp
    subq $352, %rsp
    .seh_stackalloc 352
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 168(%rbp)
    .seh_savereg %rbx, 168
    movq %r12, 160(%rbp)
    .seh_savereg %r12, 160
    movq %r13, 152(%rbp)
    .seh_savereg %r13, 152
    movq %r14, 144(%rbp)
    .seh_savereg %r14, 144
    movq %r15, 136(%rbp)
    .seh_savereg %r15, 136
    .seh_endprologue
    movq %rcx, 368(%rbp)
    movq %rdx, 376(%rbp)
    movq %r8, 384(%rbp)
    movq %r9, 392(%rbp)
    movq 368(%rbp), %rax
    movq %rax, 120(%rbp)
    movq 376(%rbp), %rax
    movq %rax, 104(%rbp)
    movq 384(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 392(%rbp), %rax
    movq %rax, 72(%rbp)
    leaq 88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 120(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movzbl %r13b, %r13d
    movl %r13d, %r14d
    movl $240, %ecx
    cmpl %ecx, %r13d
    jb .L30_2
.L30_1:
    movl $7, %ecx
    movl %r13d, %r14d
    andl %ecx, %r14d
    movl %r14d, %r14d
    movq $4, %rax
    movq %rax, %r15
    jmp .L30_3
.L30_2:
    movl $224, %ecx
    cmpl %ecx, %r13d
    jb .L30_5
.L30_4:
    movl $15, %ecx
    movl %r13d, %r14d
    andl %ecx, %r14d
    movl %r14d, %r14d
    movq $3, %rax
    movq %rax, %r15
    jmp .L30_6
.L30_5:
    movl $192, %ecx
    cmpl %ecx, %r13d
    jb .L30_8
.L30_7:
    movl $31, %ecx
    movl %r13d, %r14d
    andl %ecx, %r14d
    movl %r14d, %r14d
    movq $2, %rax
    movq %rax, %r15
    jmp .L30_9
.L30_8:
    movq $1, %rax
    movq %rax, %r15
.L30_9:
.L30_6:
.L30_3:
    movq %rbx, %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_88(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    leaq 104(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    jbe .L30_11
.L30_10:
    movq %r12, %rax
    movq %rbx, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_89(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r13, %rax
    movq %rax, 8(%rbp)
    jmp .L30_12
.L30_11:
    movq %r15, %rax
    movq %rax, 8(%rbp)
.L30_12:
    movl %r14d, %r12d
    movq $1, %rax
    movq %rax, %r15
.L30_13:
    movq 8(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L30_15
.L30_14:
.L30_17:
    movl $6, %ecx
    movl %r12d, %r14d
    shll %cl, %r14d
    movq %rbx, %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_90(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 16(%rbp), %rax
    movq %r13, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $63, %ecx
    andl %ecx, %r13d
    movl %r13d, %r13d
    movl %r13d, %ecx
    movl %r14d, %r13d
    orl %ecx, %r13d
    movq $1, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movl %r13d, %r12d
    movq %r14, %r15
    jmp .L30_13
.L30_15:
    leaq 72(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq 8(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movl %r12d, %ebx
    movl %ebx, %ebx
    leaq .Ltext_92(%rip), %r13
    leaq 56(%rbp), %r10
    movq %rbx, (%r10)
    movl $0, %eax
    leaq 40(%rbp), %r10
    movl %eax, (%r10)
    leaq 24(%rbp), %r10
    movq %r13, (%r10)
    movq $1114111, %rcx
    cmpq %rcx, %rbx
    seta %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L30_30
    jmp .L30_19
.L30_30:
    movl %r14d, %r12d
    jmp .L30_20
.L30_19:
    movq $55296, %rcx
    cmpq %rcx, %rbx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L30_21
    jmp .L30_31
.L30_31:
    movl %r12d, %r14d
    jmp .L30_22
.L30_21:
    movq $57343, %rcx
    cmpq %rcx, %rbx
    setbe %al
    movzbl %al, %r14d
.L30_22:
    movzbl %r14b, %r12d
.L30_20:
    movzbl %r12b, %r14d
    movzbl %r14b, %r14d
    testl %r14d, %r14d
    jne .L30_26
    jmp .L30_32
.L30_32:
    movl %r14d, %r12d
    jmp .L30_27
.L30_26:
    movl $1, %eax
    movl %eax, %r12d
.L30_27:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L30_23
    jmp .L30_24
.L30_23:
    leaq .Ltext_114(%rip), %r12
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_7trap_at
    addq $32, %rsp
    jmp .L30_25
.L30_24:
.L30_25:
    movabsq $4294967295, %rcx
    movq %rbx, %r12
    andq %rcx, %r12
.L30_29:
    movl %r12d, %eax
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
    movq 168(%rbp), %rbx
    movq 160(%rbp), %r12
    movq 152(%rbp), %r13
    movq 144(%rbp), %r14
    movq 136(%rbp), %r15
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_core_7utf8_ok
lb_core_7utf8_ok:
    .seh_proc lb_core_7utf8_ok
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
    movq 312(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq 56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    testq %rax, %rax
    jne .L31_1
    jmp .L31_2
.L31_1:
    jmp .L31_3
.L31_2:
    leaq 40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
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
.L31_3:
    leaq 40(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 32(%rbp)
    movq $0, %rax
    movq %rax, 8(%rbp)
.L31_5:
    movq 8(%rbp), %rax
    movq 32(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L31_7
.L31_6:
    movq 16(%rbp), %rax
    movq 8(%rbp), %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movzbl %r14b, %r14d
    movl $128, %ecx
    cmpl %ecx, %r14d
    jae .L31_9
.L31_8:
    movl %r14d, %r15d
    movq $1, %rax
    movq %rax, 0(%rbp)
    jmp .L31_10
.L31_9:
    movl $224, %ecx
    movl %r14d, %ebx
    andl %ecx, %ebx
    movl $192, %ecx
    cmpl %ecx, %ebx
    jne .L31_12
.L31_11:
    movl $31, %ecx
    movl %r14d, %ebx
    andl %ecx, %ebx
    movl %ebx, %ebx
    movq $2, %rax
    movq %rax, %r15
    movl %ebx, %r12d
    jmp .L31_13
.L31_12:
    movl $240, %ecx
    movl %r14d, %ebx
    andl %ecx, %ebx
    movl $224, %ecx
    cmpl %ecx, %ebx
    jne .L31_15
.L31_14:
    movl $15, %ecx
    movl %r14d, %ebx
    andl %ecx, %ebx
    movl %ebx, %ebx
    movq $3, %rax
    movq %rax, %r15
    jmp .L31_16
.L31_15:
    movl $248, %ecx
    movl %r14d, %ebx
    andl %ecx, %ebx
    movl $240, %ecx
    cmpl %ecx, %ebx
    jne .L31_18
.L31_17:
    movl $7, %ecx
    movl %r14d, %ebx
    andl %ecx, %ebx
    movl %ebx, %ebx
    jmp .L31_19
.L31_18:
    movl $0, %eax
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
.L31_19:
    movq $4, %rax
    movq %rax, %r15
.L31_16:
    movl %ebx, %r12d
.L31_13:
    movq %r15, %rax
    movq %rax, 0(%rbp)
    movl %r12d, %r15d
.L31_10:
    movq 8(%rbp), %rax
    movq 0(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_93(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq 32(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L31_22
.L31_21:
    movl $0, %eax
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
.L31_22:
.L31_23:
    movl %r15d, %r14d
    movq $1, %rax
    movq %rax, %r12
.L31_25:
    movq 0(%rbp), %rcx
    cmpq %rcx, %r12
    jae .L31_27
.L31_26:
    movq 8(%rbp), %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_94(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq 16(%rbp), %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movzbl %r15b, %r15d
    movl $192, %ecx
    movl %r15d, %ebx
    andl %ecx, %ebx
    movl $128, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L31_29
.L31_28:
    movl $0, %eax
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
.L31_29:
.L31_30:
.L31_33:
    movl $6, %ecx
    movl %r14d, %ebx
    shll %cl, %ebx
    movl $63, %ecx
    movl %r15d, %r13d
    andl %ecx, %r13d
    movl %r13d, %r13d
    orl %r13d, %ebx
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl %ebx, %r14d
    movq %r13, %r12
    jmp .L31_25
.L31_27:
    movq 0(%rbp), %rax
    movq $2, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L31_37
    jmp .L31_63
.L31_63:
    movl %ebx, %r12d
    jmp .L31_38
.L31_37:
    movl $128, %ecx
    cmpl %ecx, %r14d
    setb %al
    movzbl %al, %r12d
.L31_38:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L31_34
    jmp .L31_35
.L31_34:
    movl $0, %eax
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
.L31_35:
.L31_36:
    movq 0(%rbp), %rax
    movq $3, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L31_43
    jmp .L31_64
.L31_64:
    movl %ebx, %r12d
    jmp .L31_44
.L31_43:
    movl $2048, %ecx
    cmpl %ecx, %r14d
    setb %al
    movzbl %al, %r12d
.L31_44:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L31_40
    jmp .L31_41
.L31_40:
    movl $0, %eax
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
.L31_41:
.L31_42:
    movq 0(%rbp), %rax
    movq $4, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L31_49
    jmp .L31_65
.L31_65:
    movl %ebx, %r12d
    jmp .L31_50
.L31_49:
    movl $65536, %ecx
    cmpl %ecx, %r14d
    setb %al
    movzbl %al, %r12d
.L31_50:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L31_46
    jmp .L31_47
.L31_46:
    movl $0, %eax
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
.L31_47:
.L31_48:
    movl $55296, %ecx
    cmpl %ecx, %r14d
    setae %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L31_55
    jmp .L31_66
.L31_66:
    movl %ebx, %r12d
    jmp .L31_56
.L31_55:
    movl $57343, %ecx
    cmpl %ecx, %r14d
    setbe %al
    movzbl %al, %r12d
.L31_56:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L31_52
    jmp .L31_53
.L31_52:
    movl $0, %eax
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
.L31_53:
.L31_54:
    movl $1114111, %ecx
    cmpl %ecx, %r14d
    jbe .L31_59
.L31_58:
    movl $0, %eax
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
.L31_59:
.L31_60:
    movq 24(%rbp), %rax
    movq %rax, 8(%rbp)
    jmp .L31_5
.L31_7:
    movl $1, %eax
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
    .globl lb_core_9hash_seed
lb_core_9hash_seed:
    .seh_proc lb_core_9hash_seed
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
    leaq lb_core_11hash_seeded(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L32_2
.L32_1:
    leaq lb_core_15hash_seed_value(%rip), %r12
    movabsq $-7046029254386353131, %rcx
    movq %r12, %r13
    xorq %rcx, %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L32_3
.L32_2:
.L32_3:
    leaq lb_core_15hash_seed_value(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
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
.L32_4:
    leaq .Ltext_99(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_8hash_mix
lb_core_8hash_mix:
    .seh_proc lb_core_8hash_mix
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
    movq %rax, 16(%rbp)
    movq 248(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 0(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    xorq %r12, %rbx
    movabsq $-7046029254386353131, %rcx
    imulq %rcx, %rbx
.L33_2:
    movq $32, %rcx
    movq %rbx, %r12
    shrq %cl, %r12
    movq %r12, %rcx
    movq %rbx, %r12
    xorq %rcx, %r12
    movq %r12, %rax
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
    .seh_endproc

    .p2align 4
    .globl lb_core_10hash_bytes
lb_core_10hash_bytes:
    .seh_proc lb_core_10hash_bytes
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
    movq 288(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 296(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 304(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 24(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L34_4
    jmp .L34_2
.L34_4:
.L34_1:
    leaq 8(%rbp), %rax
    movq %rax, 0(%rbp)
    movq %rbx, %r14
    movq $0, %rax
    movq %rax, %r15
.L34_5:
    movq 0(%rbp), %r10
    movq (%r10), %rbx
    cmpq %rbx, %r15
    jae .L34_7
.L34_6:
    movq %r12, %rbx
    addq %r15, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl %ebx, %ebx
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_8hash_mix
    addq $32, %rsp
    movq %rax, %rbx
    movq $1, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %rbx, %r14
    movq %r13, %r15
    jmp .L34_5
.L34_7:
    movq %r14, %rbx
    jmp .L34_3
.L34_2:
.L34_3:
    leaq 8(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_8hash_mix
    addq $32, %rsp
    movq %rax, %r12
    movq %r12, %rax
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
.L34_8:
    leaq .Ltext_103(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_7mask_of
lb_core_7mask_of:
    .seh_proc lb_core_7mask_of
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
    movq 240(%rbp), %rax
    movl %eax, 8(%rbp)
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $64, %ecx
    cmpl %ecx, %ebx
    jl .L35_2
.L35_1:
    movq $-1, %rax
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
.L35_4:
    jmp .L35_3
.L35_2:
.L35_3:
    movslq %ebx, %r13
    movq $64, %rcx
    cmpq %rcx, %r13
    jb .L35_6
.L35_5:
    leaq .Ltext_104(%rip), %rdi
    leaq .Ltext_31(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L35_6:
    movq %r13, %rcx
    movq $1, %rax
    movq %rax, %rbx
    shlq %cl, %rbx
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_104(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
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
    movq 24(%rbp), %r13
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L35_7:
    leaq .Ltext_104(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_11sign_extend
lb_core_11sign_extend:
    .seh_proc lb_core_11sign_extend
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
    movslq (%r10), %rbx
    movl $64, %ecx
    cmpl %ecx, %ebx
    jl .L36_2
.L36_1:
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
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
.L36_4:
    jmp .L36_3
.L36_2:
.L36_3:
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_7mask_of
    addq $32, %rsp
    movq %rax, %r12
    leaq 24(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rcx
    movq %r12, %r13
    andq %rcx, %r13
    movl %ebx, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_105(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r14d
    movslq %r14d, %r15
    movq $64, %rcx
    cmpq %rcx, %r15
    jb .L36_9
.L36_8:
    leaq .Ltext_105(%rip), %rdi
    leaq .Ltext_31(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L36_9:
    movq %r15, %rcx
    movq $1, %rax
    movq %rax, %rbx
    shlq %cl, %rbx
    movq %rbx, %rcx
    movq %r13, %rbx
    andq %rcx, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L36_6
.L36_5:
    movq $-1, %rcx
    movq %r12, %rbx
    xorq %rcx, %rbx
    movq %rbx, %rcx
    movq %r13, %rbx
    orq %rcx, %rbx
    movq %rbx, %rax
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
.L36_10:
    jmp .L36_7
.L36_6:
.L36_7:
    movq %r13, %rax
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
.L36_11:
    leaq .Ltext_106(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_10signed_min
lb_core_10signed_min:
    .seh_proc lb_core_10signed_min
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
    movq 240(%rbp), %rax
    movl %eax, 8(%rbp)
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $64, %ecx
    cmpl %ecx, %ebx
    jl .L37_2
.L37_1:
    movabsq $-9223372036854775808, %rax
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
.L37_4:
    jmp .L37_3
.L37_2:
.L37_3:
    movl %ebx, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_109(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r12d
    movslq %r12d, %r13
    movq $64, %rcx
    cmpq %rcx, %r13
    jb .L37_6
.L37_5:
    leaq .Ltext_109(%rip), %rdi
    leaq .Ltext_31(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L37_6:
    movq %r13, %rcx
    movq $1, %rax
    movq %rax, %rbx
    shlq %cl, %rbx
    movq $0, %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    subq %rcx, %rbx
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
    movq 24(%rbp), %r13
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L37_7:
    leaq .Ltext_109(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_10signed_max
lb_core_10signed_max:
    .seh_proc lb_core_10signed_max
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
    movq 240(%rbp), %rax
    movl %eax, 8(%rbp)
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $64, %ecx
    cmpl %ecx, %ebx
    jl .L38_2
.L38_1:
    movabsq $9223372036854775807, %rax
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
.L38_4:
    jmp .L38_3
.L38_2:
.L38_3:
    movl %ebx, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_110(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r12d
    movslq %r12d, %r13
    movq $64, %rcx
    cmpq %rcx, %r13
    jb .L38_6
.L38_5:
    leaq .Ltext_110(%rip), %rdi
    leaq .Ltext_31(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L38_6:
    movq %r13, %rcx
    movq $1, %rax
    movq %rax, %rbx
    shlq %cl, %rbx
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jno 1f
    leaq .Ltext_110(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
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
    movq 24(%rbp), %r13
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L38_7:
    leaq .Ltext_110(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_11fits_signed
lb_core_11fits_signed:
    .seh_proc lb_core_11fits_signed
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
    movl %eax, 8(%rbp)
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 8(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_10signed_min
    addq $32, %rsp
    movq %rax, %r13
    cmpq %r13, %rbx
    setge %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L39_1
    jmp .L39_4
.L39_4:
    movl %r13d, %ebx
    jmp .L39_2
.L39_1:
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_10signed_max
    addq $32, %rsp
    movq %rax, %r13
    cmpq %r13, %rbx
    setle %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L39_2:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
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
.L39_3:
    leaq .Ltext_111(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_magnitude
lb_core_magnitude:
    .seh_proc lb_core_magnitude
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
    .seh_endprologue
    movq %rcx, 352(%rbp)
    movq %rdx, 360(%rbp)
    movq %r8, 368(%rbp)
    movq %r9, 376(%rbp)
    movq 360(%rbp), %rax
    movq %rax, 96(%rbp)
    movq 368(%rbp), %rax
    movl %eax, 80(%rbp)
    movq 376(%rbp), %rax
    movl %eax, 64(%rbp)
    leaq 64(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L40_2
.L40_1:
    leaq 96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 80(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_11sign_extend
    addq $32, %rsp
    movq %rax, %rbx
    leaq 48(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rcx
    cmpq %rcx, %rbx
    setl %al
    movzbl %al, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    leaq 112(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rsi
    movq 152(%rbp), %rdi
    movq $16, %rdx
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
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L40_4:
    jmp .L40_3
.L40_2:
.L40_3:
    leaq 32(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq 96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 80(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq 16(%rbp), %r10
    movq %rbx, (%r10)
    leaq 0(%rbp), %r10
    movl %r12d, (%r10)
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_7mask_of
    addq $32, %rsp
    movq %rax, %r12
    andq %r12, %rbx
    jmp .L40_7
.L40_6:
    leaq .Ltext_107(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L40_7:
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq 112(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 152(%rbp), %rdi
    movq $16, %rdx
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
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L40_5:
    leaq .Ltext_113(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_12checked_bits
lb_core_12checked_bits:
    .seh_proc lb_core_12checked_bits
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
    .seh_endprologue
    movq %rcx, 320(%rbp)
    movq %rdx, 328(%rbp)
    movq %r8, 336(%rbp)
    movq %r9, 344(%rbp)
    movq 320(%rbp), %r10
    leaq 88(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 328(%rbp), %rax
    movl %eax, 72(%rbp)
    movq 336(%rbp), %rax
    movl %eax, 56(%rbp)
    movq 344(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq 56(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L41_2
.L41_1:
    leaq 88(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L41_4
    jmp .L41_5
.L41_4:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 72(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_10signed_min
    addq $32, %rsp
    movq %rax, %r13
    cmpq %r13, %r12
    setl %al
    movzbl %al, %r12d
    jmp .L41_6
.L41_5:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 72(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_10signed_max
    addq $32, %rsp
    movq %rax, %r13
    cmpq %r13, %r12
    seta %al
    movzbl %al, %r12d
.L41_6:
    movzbl %r12b, %ebx
    jmp .L41_3
.L41_2:
    leaq 88(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L41_15
    jmp .L41_7
.L41_15:
    movl %r12d, %ebx
    jmp .L41_8
.L41_7:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 72(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    leaq 24(%rbp), %r10
    movq %r12, (%r10)
    leaq 8(%rbp), %r10
    movl %r13d, (%r10)
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_7mask_of
    addq $32, %rsp
    movq %rax, %r13
    cmpq %r13, %r12
    setbe %al
    movzbl %al, %r12d
    movzbl %r12b, %r12d
    leaq 0(%rbp), %r10
    movl %r12d, (%r10)
    jmp .L41_14
.L41_13:
    leaq .Ltext_112(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L41_14:
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %ebx
.L41_8:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L41_3:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L41_9
    jmp .L41_10
.L41_9:
    leaq 40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq .Ltext_114(%rip), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_7trap_at
    addq $32, %rsp
    jmp .L41_11
.L41_10:
.L41_11:
    leaq 88(%rbp), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L41_12:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_6conv_s
lb_core_6conv_s:
    .seh_proc lb_core_6conv_s
    pushq %rbp
    .seh_pushreg %rbp
    subq $352, %rsp
    .seh_stackalloc 352
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 168(%rbp)
    .seh_savereg %rbx, 168
    movq %r12, 160(%rbp)
    .seh_savereg %r12, 160
    movq %r13, 152(%rbp)
    .seh_savereg %r13, 152
    movq %r14, 144(%rbp)
    .seh_savereg %r14, 144
    .seh_endprologue
    movq %rcx, 368(%rbp)
    movq %rdx, 376(%rbp)
    movq %r8, 384(%rbp)
    movq %r9, 392(%rbp)
    movq 368(%rbp), %rax
    movq %rax, 128(%rbp)
    movq 376(%rbp), %rax
    movl %eax, 112(%rbp)
    movq 384(%rbp), %rax
    movl %eax, 96(%rbp)
    movq 392(%rbp), %rax
    movl %eax, 80(%rbp)
    movq 400(%rbp), %rax
    movl %eax, 64(%rbp)
    movq 408(%rbp), %rax
    movl %eax, 48(%rbp)
    movq 416(%rbp), %rax
    movq %rax, 32(%rbp)
    leaq 16(%rbp), %rbx
    leaq 128(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 112(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    leaq 96(%rbp), %r14
    movq %r14, %r10
    movslq (%r10), %r14
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    movl %r14d, %eax
    movq %rax, 24(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_magnitude
    addq $32, %rsp
    leaq 0(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L42_2
.L42_1:
    leaq 80(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq 64(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    leaq 32(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    movq %r14, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_12checked_bits
    addq $48, %rsp
    movq %rax, %r12
    movq %r12, %rax
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
    movq 168(%rbp), %rbx
    movq 160(%rbp), %r12
    movq 152(%rbp), %r13
    movq 144(%rbp), %r14
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L42_4:
    jmp .L42_3
.L42_2:
.L42_3:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 80(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_7mask_of
    addq $32, %rsp
    movq %rax, %r14
    andq %r14, %r12
    leaq 64(%rbp), %r14
    movq %r14, %r10
    movslq (%r10), %r14
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L42_6
.L42_5:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movl %r13d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_11sign_extend
    addq $32, %rsp
    movq %rax, %rbx
    movq %rbx, %rax
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
    movq 168(%rbp), %rbx
    movq 160(%rbp), %r12
    movq 152(%rbp), %r13
    movq 144(%rbp), %r14
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L42_8:
    jmp .L42_7
.L42_6:
.L42_7:
    movq %r12, %rax
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
    movq 168(%rbp), %rbx
    movq 160(%rbp), %r12
    movq 152(%rbp), %r13
    movq 144(%rbp), %r14
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L42_9:
    leaq .Ltext_116(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_6conv_u
lb_core_6conv_u:
    .seh_proc lb_core_6conv_u
    pushq %rbp
    .seh_pushreg %rbp
    subq $384, %rsp
    .seh_stackalloc 384
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 200(%rbp)
    .seh_savereg %rbx, 200
    movq %r12, 192(%rbp)
    .seh_savereg %r12, 192
    movq %r13, 184(%rbp)
    .seh_savereg %r13, 184
    movq %r14, 176(%rbp)
    .seh_savereg %r14, 176
    .seh_endprologue
    movq %rcx, 400(%rbp)
    movq %rdx, 408(%rbp)
    movq %r8, 416(%rbp)
    movq %r9, 424(%rbp)
    movq 400(%rbp), %rax
    movq %rax, 160(%rbp)
    movq 408(%rbp), %rax
    movl %eax, 144(%rbp)
    movq 416(%rbp), %rax
    movl %eax, 128(%rbp)
    movq 424(%rbp), %rax
    movl %eax, 112(%rbp)
    movq 432(%rbp), %rax
    movl %eax, 96(%rbp)
    movq 440(%rbp), %rax
    movl %eax, 80(%rbp)
    movq 448(%rbp), %rax
    movq %rax, 64(%rbp)
    leaq 48(%rbp), %rbx
    leaq 160(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 144(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    leaq 128(%rbp), %r14
    movq %r14, %r10
    movslq (%r10), %r14
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    movl %r14d, %eax
    movq %rax, 24(%rsp)
    leaq 32(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_magnitude
    addq $32, %rsp
    leaq 32(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 80(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L43_2
.L43_1:
    leaq 112(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq 96(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    leaq 64(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    movq %r14, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_12checked_bits
    addq $48, %rsp
    movq %rax, %r12
    movq %r12, %rax
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
    movq 200(%rbp), %rbx
    movq 192(%rbp), %r12
    movq 184(%rbp), %r13
    movq 176(%rbp), %r14
    leaq 384(%rbp), %rsp
    popq %rbp
    ret
.L43_4:
    jmp .L43_3
.L43_2:
.L43_3:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 112(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    leaq 16(%rbp), %r10
    movq %r12, (%r10)
    leaq 0(%rbp), %r10
    movl %r13d, (%r10)
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_7mask_of
    addq $32, %rsp
    movq %rax, %r13
    andq %r13, %r12
    jmp .L43_7
.L43_6:
    leaq .Ltext_107(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L43_7:
    movq %r12, %rax
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
    movq 200(%rbp), %rbx
    movq 192(%rbp), %r12
    movq 184(%rbp), %r13
    movq 176(%rbp), %r14
    leaq 384(%rbp), %rsp
    popq %rbp
    ret
.L43_5:
    leaq .Ltext_117(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_6f_to_s
lb_core_6f_to_s:
    .seh_proc lb_core_6f_to_s
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
    .seh_endprologue
    movq %rcx, 336(%rbp)
    movq %rdx, 344(%rbp)
    movq %r8, 352(%rbp)
    movq %r9, 360(%rbp)
    movsd %xmm0, 336(%rbp)
    movq 336(%rbp), %rax
    movq %rax, 104(%rbp)
    movq 344(%rbp), %rax
    movl %eax, 88(%rbp)
    movq 352(%rbp), %rax
    movl %eax, 72(%rbp)
    movq 360(%rbp), %rax
    movq %rax, 56(%rbp)
    leaq 88(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq 40(%rbp), %r10
    movl %ebx, (%r10)
    movl %ebx, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_120(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r12d
    movslq %r12d, %r13
    movq $64, %rcx
    cmpq %rcx, %r13
    jb .L44_26
.L44_25:
    leaq .Ltext_120(%rip), %rdi
    leaq .Ltext_31(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L44_26:
    movq %r13, %rcx
    movq $1, %rax
    movq %rax, %r12
    shlq %cl, %r12
    movq %r12, %rcx
    testq %rcx, %rcx
    js 1f
    cvtsi2sdq %rcx, %xmm8
    jmp 2f
1:
    movq %rcx, %rax
    shrq $1, %rax
    andl $1, %ecx
    orq %rcx, %rax
    cvtsi2sdq %rax, %xmm8
    addsd %xmm8, %xmm8
2:
    movapd %xmm8, %xmm12
    jmp .L44_28
.L44_27:
    leaq .Ltext_120(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L44_28:
    movq $0, %rax
    movq %rax, %xmm13
    movaps %xmm13, %xmm8
    subsd %xmm12, %xmm8
    movapd %xmm8, %xmm14
    leaq 72(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L44_2
.L44_1:
    leaq 104(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, 8(%rbp)
    movsd 8(%rbp), %xmm8
    leaq 24(%rbp), %r10
    movsd %xmm8, (%r10)
    movsd 8(%rbp), %xmm8
    movsd 8(%rbp), %xmm9
    subsd %xmm9, %xmm8
    movapd %xmm8, %xmm15
    ucomisd %xmm15, %xmm13
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    leaq 16(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L44_30
.L44_29:
    leaq .Ltext_119(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L44_30:
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L44_31
    jmp .L44_7
.L44_31:
    movl %r12d, %ebx
    jmp .L44_8
.L44_7:
    movsd 8(%rbp), %xmm8
    ucomisd %xmm8, %xmm14
    seta %al
    movzbl %al, %ebx
.L44_8:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L44_32
    jmp .L44_9
.L44_32:
    movl %r12d, %ebx
    jmp .L44_10
.L44_9:
    movsd 8(%rbp), %xmm8
    ucomisd %xmm12, %xmm8
    setae %al
    movzbl %al, %ebx
.L44_10:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L44_4
    jmp .L44_5
.L44_4:
    leaq 56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq .Ltext_114(%rip), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_7trap_at
    addq $32, %rsp
    jmp .L44_6
.L44_5:
.L44_6:
    movsd 8(%rbp), %xmm8
    cvttsd2si %xmm8, %rbx
    movq %rbx, %rax
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
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L44_11:
    jmp .L44_3
.L44_2:
.L44_3:
    leaq 104(%rbp), %r12
    movq %r12, %r10
    movsd (%r10), %xmm13
    ucomisd %xmm13, %xmm13
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L44_13
.L44_12:
    movq $0, %rax
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
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L44_15:
    jmp .L44_14
.L44_13:
.L44_14:
    ucomisd %xmm13, %xmm14
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L44_16
    jmp .L44_17
.L44_16:
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_10signed_min
    addq $32, %rsp
    movq %rax, %r12
    movq %r12, %rax
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
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L44_19:
    jmp .L44_18
.L44_17:
.L44_18:
    ucomisd %xmm12, %xmm13
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L44_20
    jmp .L44_21
.L44_20:
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_10signed_max
    addq $32, %rsp
    movq %rax, %r12
    movq %r12, %rax
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
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L44_23:
    jmp .L44_22
.L44_21:
.L44_22:
    cvttsd2si %xmm13, %rbx
    movq %rbx, %rax
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
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L44_24:
    leaq .Ltext_122(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_6f_to_u
lb_core_6f_to_u:
    .seh_proc lb_core_6f_to_u
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
    .seh_endprologue
    movq %rcx, 352(%rbp)
    movq %rdx, 360(%rbp)
    movq %r8, 368(%rbp)
    movq %r9, 376(%rbp)
    movsd %xmm0, 352(%rbp)
    movq 352(%rbp), %rax
    movq %rax, 120(%rbp)
    movq 360(%rbp), %rax
    movl %eax, 104(%rbp)
    movq 368(%rbp), %rax
    movl %eax, 88(%rbp)
    movq 376(%rbp), %rax
    movq %rax, 72(%rbp)
    leaq 104(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq 56(%rbp), %r10
    movl %ebx, (%r10)
    leaq 40(%rbp), %r10
    movl %ebx, (%r10)
    movl %ebx, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_120(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r12d
    movslq %r12d, %r13
    movq $64, %rcx
    cmpq %rcx, %r13
    jb .L45_25
.L45_24:
    leaq .Ltext_120(%rip), %rdi
    leaq .Ltext_31(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L45_25:
    movq %r13, %rcx
    movq $1, %rax
    movq %rax, %r12
    shlq %cl, %r12
    movq %r12, %rcx
    testq %rcx, %rcx
    js 1f
    cvtsi2sdq %rcx, %xmm8
    jmp 2f
1:
    movq %rcx, %rax
    shrq $1, %rax
    andl $1, %ecx
    orq %rcx, %rax
    cvtsi2sdq %rax, %xmm8
    addsd %xmm8, %xmm8
2:
    movapd %xmm8, %xmm12
    jmp .L45_27
.L45_26:
    leaq .Ltext_120(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L45_27:
    movabsq $4611686018427387904, %rax
    movq %rax, %xmm13
    movaps %xmm13, %xmm8
    mulsd %xmm12, %xmm8
    movapd %xmm8, %xmm13
    jmp .L45_28
.L45_23:
    leaq .Ltext_121(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L45_28:
    leaq 88(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L45_2
.L45_1:
    leaq 120(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, 8(%rbp)
    movsd 8(%rbp), %xmm8
    leaq 24(%rbp), %r10
    movsd %xmm8, (%r10)
    movsd 8(%rbp), %xmm8
    movsd 8(%rbp), %xmm9
    subsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movq $0, %rax
    movq %rax, %xmm14
    ucomisd %xmm14, %xmm12
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    leaq 16(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L45_30
.L45_29:
    leaq .Ltext_119(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L45_30:
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L45_31
    jmp .L45_7
.L45_31:
    movl %r12d, %ebx
    jmp .L45_8
.L45_7:
    movsd 8(%rbp), %xmm8
    ucomisd %xmm8, %xmm14
    seta %al
    movzbl %al, %ebx
.L45_8:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L45_32
    jmp .L45_9
.L45_32:
    movl %r12d, %ebx
    jmp .L45_10
.L45_9:
    movsd 8(%rbp), %xmm8
    ucomisd %xmm13, %xmm8
    setae %al
    movzbl %al, %ebx
.L45_10:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L45_4
    jmp .L45_5
.L45_4:
    leaq 72(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq .Ltext_114(%rip), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_7trap_at
    addq $32, %rsp
    jmp .L45_6
.L45_5:
.L45_6:
    movsd 8(%rbp), %xmm8
    movaps %xmm8, %xmm10
    movabsq $4890909195324358656, %rax
    movq %rax, %xmm9
    ucomisd %xmm9, %xmm10
    jae 1f
    cvttsd2si %xmm10, %rbx
    jmp 2f
1:
    subsd %xmm9, %xmm10
    cvttsd2si %xmm10, %rbx
    btcq $63, %rbx
2:
    movq %rbx, %rax
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
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L45_11:
    jmp .L45_3
.L45_2:
.L45_3:
    leaq 120(%rbp), %r12
    movq %r12, %r10
    movsd (%r10), %xmm12
    ucomisd %xmm12, %xmm12
    sete %al
    setnp %cl
    andb %cl, %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L45_33
    jmp .L45_15
.L45_33:
    movl %r12d, %r13d
    jmp .L45_16
.L45_15:
    movq $0, %rax
    movq %rax, %xmm14
    ucomisd %xmm12, %xmm14
    seta %al
    movzbl %al, %r13d
.L45_16:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L45_12
    jmp .L45_13
.L45_12:
    movq $0, %rax
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
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L45_17:
    jmp .L45_14
.L45_13:
.L45_14:
    ucomisd %xmm13, %xmm12
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L45_18
    jmp .L45_19
.L45_18:
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_7mask_of
    addq $32, %rsp
    movq %rax, %r12
    movq %r12, %rax
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
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L45_21:
    jmp .L45_20
.L45_19:
.L45_20:
    movaps %xmm12, %xmm10
    movabsq $4890909195324358656, %rax
    movq %rax, %xmm9
    ucomisd %xmm9, %xmm10
    jae 1f
    cvttsd2si %xmm10, %rbx
    jmp 2f
1:
    subsd %xmm9, %xmm10
    cvttsd2si %xmm10, %rbx
    btcq $63, %rbx
2:
    movq %rbx, %rax
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
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L45_22:
    leaq .Ltext_123(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_15mul_overflows_s
lb_core_15mul_overflows_s:
    .seh_proc lb_core_15mul_overflows_s
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
    movq %rax, 8(%rbp)
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L46_20
    jmp .L46_4
.L46_20:
    movl %r12d, %r13d
    jmp .L46_5
.L46_4:
    leaq 8(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
.L46_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L46_1
    jmp .L46_2
.L46_1:
    movl $0, %eax
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
.L46_6:
    jmp .L46_3
.L46_2:
.L46_3:
    movq $-1, %rcx
    cmpq %rcx, %rbx
    jne .L46_8
.L46_7:
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movl $64, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_10signed_min
    addq $32, %rsp
    movq %rax, %r12
    cmpq %r12, %rbx
    sete %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
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
.L46_10:
    jmp .L46_9
.L46_8:
.L46_9:
    leaq 8(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $-1, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L46_11
    jmp .L46_12
.L46_11:
    subq $32, %rsp
    movl $64, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_10signed_min
    addq $32, %rsp
    movq %rax, %r12
    cmpq %r12, %rbx
    sete %al
    movzbl %al, %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
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
.L46_14:
    jmp .L46_13
.L46_12:
.L46_13:
    movq %rbx, %r15
    imulq %r12, %r15
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L46_16
.L46_15:
    leaq .Ltext_126(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L46_16:
    movabsq $-9223372036854775808, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %r14d
    movl %r14d, %ecx
    movl %r13d, %r14d
    andl %ecx, %r14d
    testl %r14d, %r14d
    jne .L46_17
    jmp .L46_18
.L46_17:
    leaq .Ltext_126(%rip), %rdi
    leaq .Ltext_50(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L46_18:
    movq %r15, %rax
    cqto
    idivq %r12
    movq %rax, %r13
    cmpq %r13, %rbx
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movzbl %r13b, %r13d
    movl %r13d, %eax
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
.L46_19:
    leaq .Ltext_126(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_6adds_s
lb_core_6adds_s:
    .seh_proc lb_core_6adds_s
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
    movq 336(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 344(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 352(%rbp), %rax
    movl %eax, 56(%rbp)
    leaq 88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 56(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_11sign_extend
    addq $32, %rsp
    movq %rax, %rbx
    leaq 72(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_11sign_extend
    addq $32, %rsp
    movq %rax, %r13
    movq %rbx, %r14
    addq %r13, %r14
    leaq 40(%rbp), %r10
    movq %rbx, (%r10)
    leaq 24(%rbp), %r10
    movq %r13, (%r10)
    leaq 8(%rbp), %r10
    movq %r14, (%r10)
    movq %rbx, %r15
    xorq %r14, %r15
    xorq %r14, %r13
    movq %r13, %rcx
    movq %r15, %r13
    andq %rcx, %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    setl %al
    movzbl %al, %r13d
    movzbl %r13b, %r13d
    leaq 0(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L47_12
.L47_11:
    leaq .Ltext_124(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L47_12:
    testl %r13d, %r13d
    jne .L47_13
    jmp .L47_4
.L47_13:
    movl %r13d, %r15d
    jmp .L47_5
.L47_4:
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_11fits_signed
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r15d
.L47_5:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L47_1
    jmp .L47_2
.L47_1:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jge .L47_7
.L47_6:
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_10signed_min
    addq $32, %rsp
    movq %rax, %rbx
    jmp .L47_8
.L47_7:
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_10signed_max
    addq $32, %rsp
    movq %rax, %rbx
.L47_8:
    movq %rbx, %rax
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
.L47_9:
    jmp .L47_3
.L47_2:
.L47_3:
    movq %r14, %rax
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
.L47_10:
    leaq .Ltext_127(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_6adds_u
lb_core_6adds_u:
    .seh_proc lb_core_6adds_u
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
    movq %rax, 104(%rbp)
    movq 360(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 368(%rbp), %rax
    movl %eax, 72(%rbp)
    leaq 104(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 72(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq 56(%rbp), %r10
    movq %rbx, (%r10)
    leaq 40(%rbp), %r10
    movl %r12d, (%r10)
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_7mask_of
    addq $32, %rsp
    movq %rax, %r13
    andq %r13, %rbx
    jmp .L48_9
.L48_8:
    leaq .Ltext_107(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L48_9:
    leaq 88(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq 56(%rbp), %r10
    movq %r13, (%r10)
    leaq 40(%rbp), %r10
    movl %r12d, (%r10)
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_7mask_of
    addq $32, %rsp
    movq %rax, %r14
    andq %r14, %r13
    jmp .L48_11
.L48_10:
    leaq .Ltext_107(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L48_11:
    movq %rbx, %r14
    addq %r13, %r14
    cmpq %rbx, %r14
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L48_14
    jmp .L48_4
.L48_14:
    movl %r15d, %ebx
    jmp .L48_5
.L48_4:
    leaq 24(%rbp), %r10
    movq %r14, (%r10)
    leaq 8(%rbp), %r10
    movl %r12d, (%r10)
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_7mask_of
    addq $32, %rsp
    movq %rax, %rbx
    cmpq %rbx, %r14
    setbe %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    leaq 0(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L48_13
.L48_12:
    leaq .Ltext_112(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L48_13:
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L48_5:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L48_1
    jmp .L48_2
.L48_1:
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_7mask_of
    addq $32, %rsp
    movq %rax, %rbx
    movq %rbx, %rax
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
.L48_6:
    jmp .L48_3
.L48_2:
.L48_3:
    movq %r14, %rax
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
.L48_7:
    leaq .Ltext_128(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_6subs_s
lb_core_6subs_s:
    .seh_proc lb_core_6subs_s
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
    movq 336(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 344(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 352(%rbp), %rax
    movl %eax, 56(%rbp)
    leaq 88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 56(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_11sign_extend
    addq $32, %rsp
    movq %rax, %rbx
    leaq 72(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_11sign_extend
    addq $32, %rsp
    movq %rax, %r13
    movq %rbx, %r14
    subq %r13, %r14
    leaq 40(%rbp), %r10
    movq %rbx, (%r10)
    leaq 24(%rbp), %r10
    movq %r13, (%r10)
    leaq 8(%rbp), %r10
    movq %r14, (%r10)
    movq %r13, %rcx
    movq %rbx, %r13
    xorq %rcx, %r13
    movq %rbx, %r15
    xorq %r14, %r15
    andq %r15, %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    setl %al
    movzbl %al, %r13d
    movzbl %r13b, %r13d
    leaq 0(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L49_12
.L49_11:
    leaq .Ltext_125(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L49_12:
    testl %r13d, %r13d
    jne .L49_13
    jmp .L49_4
.L49_13:
    movl %r13d, %r15d
    jmp .L49_5
.L49_4:
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_11fits_signed
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r15d
.L49_5:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L49_1
    jmp .L49_2
.L49_1:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jge .L49_7
.L49_6:
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_10signed_min
    addq $32, %rsp
    movq %rax, %rbx
    jmp .L49_8
.L49_7:
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_10signed_max
    addq $32, %rsp
    movq %rax, %rbx
.L49_8:
    movq %rbx, %rax
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
.L49_9:
    jmp .L49_3
.L49_2:
.L49_3:
    movq %r14, %rax
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
.L49_10:
    leaq .Ltext_129(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_6subs_u
lb_core_6subs_u:
    .seh_proc lb_core_6subs_u
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
    movq %rax, 64(%rbp)
    movq 312(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 320(%rbp), %rax
    movl %eax, 32(%rbp)
    leaq 64(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 32(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq 16(%rbp), %r10
    movq %rbx, (%r10)
    leaq 0(%rbp), %r10
    movl %r12d, (%r10)
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_7mask_of
    addq $32, %rsp
    movq %rax, %r13
    andq %r13, %rbx
    jmp .L50_7
.L50_6:
    leaq .Ltext_107(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L50_7:
    leaq 48(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq 16(%rbp), %r10
    movq %r13, (%r10)
    leaq 0(%rbp), %r10
    movl %r12d, (%r10)
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_7mask_of
    addq $32, %rsp
    movq %rax, %r14
    andq %r14, %r13
    jmp .L50_9
.L50_8:
    leaq .Ltext_107(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L50_9:
    cmpq %r13, %rbx
    jae .L50_2
.L50_1:
    movq $0, %rax
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
.L50_4:
    jmp .L50_3
.L50_2:
.L50_3:
    movq %rbx, %r12
    subq %r13, %r12
    movq %r12, %rax
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
.L50_5:
    leaq .Ltext_130(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_6muls_s
lb_core_6muls_s:
    .seh_proc lb_core_6muls_s
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
    movq 288(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 296(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 304(%rbp), %rax
    movl %eax, 8(%rbp)
    leaq 40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 8(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_11sign_extend
    addq $32, %rsp
    movq %rax, %rbx
    leaq 24(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_11sign_extend
    addq $32, %rsp
    movq %rax, %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_15mul_overflows_s
    addq $32, %rsp
    movl %eax, %r14d
    testl %r14d, %r14d
    jne .L51_11
    jmp .L51_4
.L51_11:
    movl %r14d, %r15d
    jmp .L51_5
.L51_4:
    movq %rbx, %r14
    imulq %r13, %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_11fits_signed
    addq $32, %rsp
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L51_5:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L51_1
    jmp .L51_2
.L51_1:
    movq $0, %rcx
    cmpq %rcx, %rbx
    setl %al
    movzbl %al, %r14d
    movq $0, %rcx
    cmpq %rcx, %r13
    setl %al
    movzbl %al, %r15d
    cmpl %r15d, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L51_7
.L51_6:
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_10signed_min
    addq $32, %rsp
    movq %rax, %rbx
    jmp .L51_8
.L51_7:
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_10signed_max
    addq $32, %rsp
    movq %rax, %rbx
.L51_8:
    movq %rbx, %rax
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
.L51_9:
    jmp .L51_3
.L51_2:
.L51_3:
    movq %rbx, %r12
    imulq %r13, %r12
    movq %r12, %rax
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
.L51_10:
    leaq .Ltext_131(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_6muls_u
lb_core_6muls_u:
    .seh_proc lb_core_6muls_u
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
    movq %r15, 88(%rbp)
    .seh_savereg %r15, 88
    .seh_endprologue
    movq %rcx, 320(%rbp)
    movq %rdx, 328(%rbp)
    movq %r8, 336(%rbp)
    movq %r9, 344(%rbp)
    movq 320(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 328(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 336(%rbp), %rax
    movl %eax, 40(%rbp)
    leaq 72(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 40(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq 24(%rbp), %r10
    movq %rbx, (%r10)
    leaq 8(%rbp), %r10
    movl %r12d, (%r10)
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_7mask_of
    addq $32, %rsp
    movq %rax, %r13
    andq %r13, %rbx
    jmp .L52_11
.L52_10:
    leaq .Ltext_107(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L52_11:
    leaq 56(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq 24(%rbp), %r10
    movq %r13, (%r10)
    leaq 8(%rbp), %r10
    movl %r12d, (%r10)
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_7mask_of
    addq $32, %rsp
    movq %rax, %r14
    andq %r14, %r13
    jmp .L52_13
.L52_12:
    leaq .Ltext_107(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L52_13:
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L52_4
    jmp .L52_16
.L52_16:
    movl %r15d, %r14d
    jmp .L52_5
.L52_4:
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_7mask_of
    addq $32, %rsp
    movq %rax, %r15
    testl %r14d, %r14d
    jne .L52_6
    jmp .L52_7
.L52_6:
    leaq .Ltext_132(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L52_7:
    movq %r15, %rax
    xorl %edx, %edx
    divq %r13
    movq %rax, %r14
    cmpq %r14, %rbx
    seta %al
    movzbl %al, %r14d
.L52_5:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L52_1
    jmp .L52_2
.L52_1:
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_7mask_of
    addq $32, %rsp
    movq %rax, %rbx
    movq %rbx, %rax
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
    movq 88(%rbp), %r15
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L52_8:
    jmp .L52_3
.L52_2:
.L52_3:
    movq %rbx, %r14
    imulq %r13, %r14
    leaq 24(%rbp), %r10
    movq %r14, (%r10)
    leaq 8(%rbp), %r10
    movl %r12d, (%r10)
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_7mask_of
    addq $32, %rsp
    movq %rax, %r15
    andq %r15, %r14
    jmp .L52_15
.L52_14:
    leaq .Ltext_107(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L52_15:
    movq %r14, %rax
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
    movq 88(%rbp), %r15
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L52_9:
    leaq .Ltext_133(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_6qadd_s
lb_core_6qadd_s:
    .seh_proc lb_core_6qadd_s
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
    .seh_endprologue
    movq %rcx, 352(%rbp)
    movq %rdx, 360(%rbp)
    movq %r8, 368(%rbp)
    movq %r9, 376(%rbp)
    movq 352(%rbp), %rax
    movq %rax, 112(%rbp)
    movq 360(%rbp), %rax
    movq %rax, 96(%rbp)
    movq 368(%rbp), %rax
    movl %eax, 80(%rbp)
    movq 376(%rbp), %rax
    movq %rax, 64(%rbp)
    leaq 112(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 80(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_11sign_extend
    addq $32, %rsp
    movq %rax, %rbx
    leaq 96(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_11sign_extend
    addq $32, %rsp
    movq %rax, %r13
    movq %rbx, %r14
    addq %r13, %r14
    leaq 48(%rbp), %r10
    movq %rbx, (%r10)
    leaq 32(%rbp), %r10
    movq %r13, (%r10)
    leaq 16(%rbp), %r10
    movq %r14, (%r10)
    xorq %r14, %rbx
    xorq %r14, %r13
    andq %r13, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    setl %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    leaq 8(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L53_9
.L53_8:
    leaq .Ltext_124(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L53_9:
    testl %ebx, %ebx
    jne .L53_10
    jmp .L53_4
.L53_10:
    movl %ebx, %r12d
    jmp .L53_5
.L53_4:
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_11fits_signed
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl %ebx, %r12d
.L53_5:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L53_1
    jmp .L53_2
.L53_1:
    movl $0, %eax
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
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L53_6:
    jmp .L53_3
.L53_2:
.L53_3:
    leaq 64(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movl $1, %eax
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
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L53_7:
    leaq .Ltext_134(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_6qadd_u
lb_core_6qadd_u:
    .seh_proc lb_core_6qadd_u
    pushq %rbp
    .seh_pushreg %rbp
    subq $352, %rsp
    .seh_stackalloc 352
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 168(%rbp)
    .seh_savereg %rbx, 168
    movq %r12, 160(%rbp)
    .seh_savereg %r12, 160
    movq %r13, 152(%rbp)
    .seh_savereg %r13, 152
    movq %r14, 144(%rbp)
    .seh_savereg %r14, 144
    movq %r15, 136(%rbp)
    .seh_savereg %r15, 136
    .seh_endprologue
    movq %rcx, 368(%rbp)
    movq %rdx, 376(%rbp)
    movq %r8, 384(%rbp)
    movq %r9, 392(%rbp)
    movq 368(%rbp), %rax
    movq %rax, 120(%rbp)
    movq 376(%rbp), %rax
    movq %rax, 104(%rbp)
    movq 384(%rbp), %rax
    movl %eax, 88(%rbp)
    movq 392(%rbp), %rax
    movq %rax, 72(%rbp)
    leaq 120(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 88(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq 56(%rbp), %r10
    movq %rbx, (%r10)
    leaq 40(%rbp), %r10
    movl %r12d, (%r10)
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_7mask_of
    addq $32, %rsp
    movq %rax, %r13
    andq %r13, %rbx
    jmp .L54_9
.L54_8:
    leaq .Ltext_107(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_9:
    leaq 104(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq 56(%rbp), %r10
    movq %r13, (%r10)
    leaq 40(%rbp), %r10
    movl %r12d, (%r10)
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_7mask_of
    addq $32, %rsp
    movq %rax, %r14
    andq %r14, %r13
    jmp .L54_11
.L54_10:
    leaq .Ltext_107(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_11:
    movq %rbx, %r14
    addq %r13, %r14
    cmpq %rbx, %r14
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L54_14
    jmp .L54_4
.L54_14:
    movl %r15d, %ebx
    jmp .L54_5
.L54_4:
    leaq 24(%rbp), %r10
    movq %r14, (%r10)
    leaq 8(%rbp), %r10
    movl %r12d, (%r10)
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_7mask_of
    addq $32, %rsp
    movq %rax, %rbx
    cmpq %rbx, %r14
    setbe %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    leaq 0(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L54_13
.L54_12:
    leaq .Ltext_112(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_13:
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L54_5:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L54_1
    jmp .L54_2
.L54_1:
    movl $0, %eax
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
    movq 168(%rbp), %rbx
    movq 160(%rbp), %r12
    movq 152(%rbp), %r13
    movq 144(%rbp), %r14
    movq 136(%rbp), %r15
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L54_6:
    jmp .L54_3
.L54_2:
.L54_3:
    leaq 72(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movl $1, %eax
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
    movq 168(%rbp), %rbx
    movq 160(%rbp), %r12
    movq 152(%rbp), %r13
    movq 144(%rbp), %r14
    movq 136(%rbp), %r15
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L54_7:
    leaq .Ltext_135(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_6qsub_s
lb_core_6qsub_s:
    .seh_proc lb_core_6qsub_s
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
    .seh_endprologue
    movq %rcx, 352(%rbp)
    movq %rdx, 360(%rbp)
    movq %r8, 368(%rbp)
    movq %r9, 376(%rbp)
    movq 352(%rbp), %rax
    movq %rax, 112(%rbp)
    movq 360(%rbp), %rax
    movq %rax, 96(%rbp)
    movq 368(%rbp), %rax
    movl %eax, 80(%rbp)
    movq 376(%rbp), %rax
    movq %rax, 64(%rbp)
    leaq 112(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 80(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_11sign_extend
    addq $32, %rsp
    movq %rax, %rbx
    leaq 96(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_11sign_extend
    addq $32, %rsp
    movq %rax, %r13
    movq %rbx, %r14
    subq %r13, %r14
    leaq 48(%rbp), %r10
    movq %rbx, (%r10)
    leaq 32(%rbp), %r10
    movq %r13, (%r10)
    leaq 16(%rbp), %r10
    movq %r14, (%r10)
    movq %r13, %rcx
    movq %rbx, %r13
    xorq %rcx, %r13
    xorq %r14, %rbx
    movq %rbx, %rcx
    movq %r13, %rbx
    andq %rcx, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    setl %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    leaq 8(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L55_9
.L55_8:
    leaq .Ltext_125(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_9:
    testl %ebx, %ebx
    jne .L55_10
    jmp .L55_4
.L55_10:
    movl %ebx, %r12d
    jmp .L55_5
.L55_4:
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_11fits_signed
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl %ebx, %r12d
.L55_5:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L55_1
    jmp .L55_2
.L55_1:
    movl $0, %eax
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
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L55_6:
    jmp .L55_3
.L55_2:
.L55_3:
    leaq 64(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movl $1, %eax
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
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L55_7:
    leaq .Ltext_136(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_6qsub_u
lb_core_6qsub_u:
    .seh_proc lb_core_6qsub_u
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
    movq %rax, 64(%rbp)
    movq 336(%rbp), %rax
    movl %eax, 48(%rbp)
    movq 344(%rbp), %rax
    movq %rax, 32(%rbp)
    leaq 80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 48(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq 16(%rbp), %r10
    movq %rbx, (%r10)
    leaq 0(%rbp), %r10
    movl %r12d, (%r10)
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_7mask_of
    addq $32, %rsp
    movq %rax, %r13
    andq %r13, %rbx
    jmp .L56_7
.L56_6:
    leaq .Ltext_107(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L56_7:
    leaq 64(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq 16(%rbp), %r10
    movq %r13, (%r10)
    leaq 0(%rbp), %r10
    movl %r12d, (%r10)
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_7mask_of
    addq $32, %rsp
    movq %rax, %r14
    andq %r14, %r13
    jmp .L56_9
.L56_8:
    leaq .Ltext_107(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L56_9:
    cmpq %r13, %rbx
    jae .L56_2
.L56_1:
    movl $0, %eax
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
.L56_4:
    jmp .L56_3
.L56_2:
.L56_3:
    leaq 32(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r14
    subq %r13, %r14
    movq %r12, %r10
    movq %r14, (%r10)
    movl $1, %eax
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
.L56_5:
    leaq .Ltext_138(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_6qmul_s
lb_core_6qmul_s:
    .seh_proc lb_core_6qmul_s
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
    movq 288(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 296(%rbp), %rax
    movq %rax, 32(%rbp)
    movq 304(%rbp), %rax
    movl %eax, 16(%rbp)
    movq 312(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 16(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_11sign_extend
    addq $32, %rsp
    movq %rax, %rbx
    leaq 32(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_11sign_extend
    addq $32, %rsp
    movq %rax, %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_15mul_overflows_s
    addq $32, %rsp
    movl %eax, %r14d
    testl %r14d, %r14d
    jne .L57_8
    jmp .L57_4
.L57_8:
    movl %r14d, %r12d
    jmp .L57_5
.L57_4:
    movq %rbx, %r14
    imulq %r13, %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_core_11fits_signed
    addq $32, %rsp
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r12d
.L57_5:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L57_1
    jmp .L57_2
.L57_1:
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
    leaq 272(%rbp), %rsp
    popq %rbp
    ret
.L57_6:
    jmp .L57_3
.L57_2:
.L57_3:
    leaq 0(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r14
    imulq %r13, %r14
    movq %r12, %r10
    movq %r14, (%r10)
    movl $1, %eax
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
.L57_7:
    leaq .Ltext_139(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_6qmul_u
lb_core_6qmul_u:
    .seh_proc lb_core_6qmul_u
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
    movq 336(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 344(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 352(%rbp), %rax
    movl %eax, 56(%rbp)
    movq 360(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq 88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 56(%rbp), %r12
    movq %r12, %r10
    movslq (%r10), %r12
    leaq 24(%rbp), %r10
    movq %rbx, (%r10)
    leaq 8(%rbp), %r10
    movl %r12d, (%r10)
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_7mask_of
    addq $32, %rsp
    movq %rax, %r13
    andq %r13, %rbx
    jmp .L58_11
.L58_10:
    leaq .Ltext_107(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L58_11:
    leaq 72(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq 24(%rbp), %r10
    movq %r13, (%r10)
    leaq 8(%rbp), %r10
    movl %r12d, (%r10)
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_7mask_of
    addq $32, %rsp
    movq %rax, %r14
    andq %r14, %r13
    jmp .L58_13
.L58_12:
    leaq .Ltext_107(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L58_13:
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L58_4
    jmp .L58_14
.L58_14:
    movl %r15d, %r12d
    jmp .L58_5
.L58_4:
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_core_7mask_of
    addq $32, %rsp
    movq %rax, %r15
    testl %r14d, %r14d
    jne .L58_6
    jmp .L58_7
.L58_6:
    leaq .Ltext_140(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L58_7:
    movq %r15, %rax
    xorl %edx, %edx
    divq %r13
    movq %rax, %r12
    cmpq %r12, %rbx
    seta %al
    movzbl %al, %r12d
.L58_5:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L58_1
    jmp .L58_2
.L58_1:
    movl $0, %eax
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
.L58_8:
    jmp .L58_3
.L58_2:
.L58_3:
    leaq 40(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r14
    imulq %r13, %r14
    movq %r12, %r10
    movq %r14, (%r10)
    movl $1, %eax
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
.L58_9:
    leaq .Ltext_141(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_core_exit
lb_core_exit:
    .seh_proc lb_core_exit
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
    call exit
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

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_core_0init
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
    .asciz "src/std/core.lucb:10:9"
.Ltext_2:
    .asciz "src/std/core.lucb:26:9"
.Ltext_3:
    .asciz "trap: "
.Ltext_4:
    .asciz "\n"
.Ltext_5:
    .asciz ": "
.Ltext_6:
    .asciz "src/std/core.lucb:112:9"
.Ltext_7:
    .asciz "src/std/core.lucb:114:9"
.Ltext_8:
    .asciz "index out of bounds"
.Ltext_9:
    .asciz "src/std/core.lucb:119:9"
.Ltext_10:
    .asciz "src/std/core.lucb:129:5"
.Ltext_11:
    .asciz "null_foreign"
.Ltext_12:
    .asciz "src/std/core.lucb:134:13"
.Ltext_13:
    .asciz "src/std/core.lucb:135:5"
.Ltext_14:
    .asciz "src/std/core.lucb:136:5"
.Ltext_15:
    .asciz "src/std/core.lucb:143:9"
.Ltext_16:
    .asciz "src/std/core.lucb:146:9"
.Ltext_17:
    .asciz "src/std/core.lucb:147:9"
.Ltext_18:
    .asciz "division by zero"
.Ltext_19:
    .asciz "src/std/core.lucb:148:9"
.Ltext_20:
    .asciz "src/std/core.lucb:149:5"
.Ltext_21:
    .asciz "-"
.Ltext_22:
    .asciz "src/std/core.lucb:157:5"
.Ltext_23:
    .asciz "src/std/core.lucb:162:5"
.Ltext_24:
    .asciz "%g"
.Ltext_25:
    .asciz "src/std/core.lucb:165:5"
.Ltext_26:
    .asciz "true"
.Ltext_27:
    .asciz "false"
.Ltext_28:
    .asciz "src/std/core.lucb:169:5"
.Ltext_29:
    .asciz "src/std/core.lucb:177:9"
.Ltext_30:
    .asciz "src/std/core.lucb:180:9"
.Ltext_31:
    .asciz "shift count out of range"
.Ltext_32:
    .asciz "src/std/core.lucb:181:9"
.Ltext_33:
    .asciz "src/std/core.lucb:184:9"
.Ltext_34:
    .asciz "src/std/core.lucb:185:9"
.Ltext_35:
    .asciz "src/std/core.lucb:186:9"
.Ltext_36:
    .asciz "src/std/core.lucb:189:9"
.Ltext_37:
    .asciz "src/std/core.lucb:190:9"
.Ltext_38:
    .asciz "src/std/core.lucb:191:9"
.Ltext_39:
    .asciz "src/std/core.lucb:192:9"
.Ltext_40:
    .asciz "src/std/core.lucb:194:5"
.Ltext_41:
    .asciz ""
.Ltext_42:
    .asciz "src/std/core.lucb:202:5"
.Ltext_43:
    .asciz "src/std/core.lucb:210:5"
.Ltext_44:
    .asciz "src/std/core.lucb:216:9"
.Ltext_45:
    .asciz "src/std/core.lucb:217:5"
.Ltext_46:
    .asciz "src/std/core.lucb:218:5"
.Ltext_47:
    .asciz "src/std/core.lucb:225:9"
.Ltext_48:
    .asciz "src/std/core.lucb:228:9"
.Ltext_49:
    .asciz "src/std/core.lucb:230:9"
.Ltext_50:
    .asciz "integer overflow"
.Ltext_51:
    .asciz "src/std/core.lucb:231:9"
.Ltext_52:
    .asciz "src/std/core.lucb:232:5"
.Ltext_53:
    .asciz "src/std/core.lucb:239:9"
.Ltext_54:
    .asciz "src/std/core.lucb:242:9"
.Ltext_55:
    .asciz "src/std/core.lucb:243:9"
.Ltext_56:
    .asciz "src/std/core.lucb:244:9"
.Ltext_57:
    .asciz "src/std/core.lucb:245:5"
.Ltext_58:
    .asciz "src/std/core.lucb:252:5"
.Ltext_59:
    .asciz "src/std/core.lucb:256:9"
.Ltext_60:
    .asciz "src/std/core.lucb:258:9"
.Ltext_61:
    .asciz "src/std/core.lucb:260:9"
.Ltext_62:
    .asciz "src/std/core.lucb:261:5"
.Ltext_63:
    .asciz "src/std/core.lucb:267:5"
.Ltext_64:
    .asciz "memory.exhausted"
.Ltext_65:
    .asciz "src/std/core.lucb:271:9"
.Ltext_66:
    .asciz "invalid_utf8"
.Ltext_67:
    .asciz "src/std/core.lucb:275:9"
.Ltext_68:
    .asciz "src/std/core.lucb:276:5"
.Ltext_69:
    .asciz "src/std/core.lucb:280:9"
.Ltext_70:
    .asciz "src/std/core.lucb:301:9"
.Ltext_71:
    .asciz "could not read the Windows command line"
.Ltext_72:
    .asciz "src/std/core.lucb:303:9"
.Ltext_73:
    .asciz "the command line contains invalid UTF-16"
.Ltext_74:
    .asciz "src/std/core.lucb:308:13"
.Ltext_75:
    .asciz "could not encode the command line as UTF-8"
.Ltext_76:
    .asciz "could not register command line cleanup"
.Ltext_77:
    .asciz "src/std/core.lucb:315:9"
.Ltext_78:
    .asciz "error "
.Ltext_79:
    .asciz "memory.exhausted: the formatted text does not fit its buffer"
.Ltext_80:
    .asciz "src/std/core.lucb:324:5"
.Ltext_81:
    .asciz "FAIL  "
.Ltext_82:
    .asciz "\n      error: "
.Ltext_83:
    .asciz "ok    "
.Ltext_84:
    .asciz "src/std/core.lucb:335:5"
.Ltext_85:
    .asciz " passed\n"
.Ltext_86:
    .asciz "src/std/core.lucb:338:5"
.Ltext_87:
    .asciz "src/std/core.lucb:365:5"
.Ltext_88:
    .asciz "src/std/core.lucb:382:5"
.Ltext_89:
    .asciz "src/std/core.lucb:383:9"
.Ltext_90:
    .asciz "src/std/core.lucb:386:9"
.Ltext_91:
    .asciz "src/std/core.lucb:387:9"
.Ltext_92:
    .asciz "src/std/core.lucb:389:5"
.Ltext_93:
    .asciz "src/std/core.lucb:412:9"
.Ltext_94:
    .asciz "src/std/core.lucb:416:13"
.Ltext_95:
    .asciz "src/std/core.lucb:419:13"
.Ltext_96:
    .asciz "src/std/core.lucb:420:13"
.Ltext_97:
    .asciz "src/std/core.lucb:431:9"
.Ltext_98:
    .asciz "src/std/core.lucb:432:5"
.Ltext_99:
    .asciz "src/std/core.lucb:442:5"
.Ltext_100:
    .asciz "src/std/core.lucb:447:5"
.Ltext_101:
    .asciz "src/std/core.lucb:448:5"
.Ltext_102:
    .asciz "src/std/core.lucb:457:13"
.Ltext_103:
    .asciz "src/std/core.lucb:458:5"
.Ltext_104:
    .asciz "src/std/core.lucb:464:5"
.Ltext_105:
    .asciz "src/std/core.lucb:471:5"
.Ltext_106:
    .asciz "src/std/core.lucb:473:5"
.Ltext_107:
    .asciz "src/std/core.lucb:476:5"
.Ltext_108:
    .asciz "src/std/core.lucb:480:9"
.Ltext_109:
    .asciz "src/std/core.lucb:481:5"
.Ltext_110:
    .asciz "src/std/core.lucb:486:5"
.Ltext_111:
    .asciz "src/std/core.lucb:489:5"
.Ltext_112:
    .asciz "src/std/core.lucb:492:5"
.Ltext_113:
    .asciz "src/std/core.lucb:504:5"
.Ltext_114:
    .asciz "integer conversion out of range"
.Ltext_115:
    .asciz "src/std/core.lucb:516:5"
.Ltext_116:
    .asciz "src/std/core.lucb:526:5"
.Ltext_117:
    .asciz "src/std/core.lucb:532:5"
.Ltext_118:
    .asciz "src/std/core.lucb:539:5"
.Ltext_119:
    .asciz "src/std/core.lucb:542:5"
.Ltext_120:
    .asciz "src/std/core.lucb:546:5"
.Ltext_121:
    .asciz "src/std/core.lucb:549:5"
.Ltext_122:
    .asciz "src/std/core.lucb:565:5"
.Ltext_123:
    .asciz "src/std/core.lucb:577:5"
.Ltext_124:
    .asciz "src/std/core.lucb:581:5"
.Ltext_125:
    .asciz "src/std/core.lucb:584:5"
.Ltext_126:
    .asciz "src/std/core.lucb:593:5"
.Ltext_127:
    .asciz "src/std/core.lucb:601:5"
.Ltext_128:
    .asciz "src/std/core.lucb:609:5"
.Ltext_129:
    .asciz "src/std/core.lucb:617:5"
.Ltext_130:
    .asciz "src/std/core.lucb:624:5"
.Ltext_131:
    .asciz "src/std/core.lucb:631:5"
.Ltext_132:
    .asciz "src/std/core.lucb:636:5"
.Ltext_133:
    .asciz "src/std/core.lucb:638:5"
.Ltext_134:
    .asciz "src/std/core.lucb:648:5"
.Ltext_135:
    .asciz "src/std/core.lucb:657:5"
.Ltext_136:
    .asciz "src/std/core.lucb:666:5"
.Ltext_137:
    .asciz "src/std/core.lucb:673:5"
.Ltext_138:
    .asciz "src/std/core.lucb:674:5"
.Ltext_139:
    .asciz "src/std/core.lucb:682:5"
.Ltext_140:
    .asciz "src/std/core.lucb:687:5"
.Ltext_141:
    .asciz "src/std/core.lucb:690:5"

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_core_14initial_thread
    .p2align 2
lb_core_14initial_thread:
    .zero 4

    .section .tls$LUCE,"dw"
    .globl lb_core_10show_bytes
    .p2align 0
lb_core_10show_bytes:
    .zero 1024

    .section .tls$LUCE,"dw"
    .globl lb_core_9show_next
    .p2align 2
lb_core_9show_next:
    .zero 4

    .bss
    .globl lb_core_23windows_argument_vector
    .p2align 3
lb_core_23windows_argument_vector:
    .zero 16

    .bss
    .globl lb_core_15hash_seed_value
    .p2align 3
lb_core_15hash_seed_value:
    .zero 8

    .bss
    .globl lb_core_11hash_seeded
    .p2align 0
lb_core_11hash_seeded:
    .zero 1
