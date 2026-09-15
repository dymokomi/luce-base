    .weak lb_memory_copy_0g1_u8
    .text

    .p2align 4
    .globl lb_thread_0init
lb_thread_0init:
    .seh_proc lb_thread_0init
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
    leaq lb_thread_failed(%rip), %rbx
    movl $208273413, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_thread_11least_stack(%rip), %rbx
    movq $16384, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_thread_9name_room(%rip), %rbx
    movq $16, %rax
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
    .globl lb_thread_Handle_join
lb_thread_Handle_join:
    .seh_proc lb_thread_Handle_join
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
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L1_1
    jmp .L1_2
.L1_1:
    jmp .L1_3
.L1_2:
    leaq 48(%rbp), %rbx
    leaq lb_thread_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_2(%rip), %r12
    leaq 24(%rbp), %r13
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
.L1_4:
.L1_3:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call pthread_join
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_6
.L1_5:
    leaq 48(%rbp), %rbx
    leaq lb_thread_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_3(%rip), %r12
    leaq 8(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $4, %rax
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
.L1_8:
    jmp .L1_7
.L1_6:
.L1_7:
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
    .globl lb_thread_Handle_detach
lb_thread_Handle_detach:
    .seh_proc lb_thread_Handle_detach
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
    jne .L2_1
    jmp .L2_2
.L2_1:
    jmp .L2_3
.L2_2:
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
.L2_4:
.L2_3:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call pthread_detach
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
    .globl lb_thread_trampoline
lb_thread_trampoline:
    .seh_proc lb_thread_trampoline
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
    leaq 120(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_memory_heap(%rip), %rax
    movq %rax, 48(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 40(%rbp)
    movq 48(%rbp), %r10
    movq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 32(%rbp)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq $32, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    jbe .L3_2
.L3_1:
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $1, %rcx
    addq %rcx, %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r13, %r15
    jb 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r15, %rax
    jbe .L3_4
.L3_5:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L3_4:
    leaq 104(%rbp), %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    leaq 88(%rbp), %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    subq $32, %rsp
    call pthread_self
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L3_6
    jmp .L3_7
.L3_7:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L3_6:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call pthread_setname_np
    addq $32, %rsp
    movl %eax, %r13d
    jmp .L3_3
.L3_2:
.L3_3:
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    leaq 72(%rbp), %r14
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq 16(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %r10
    movq %r13, (%r10)
    movq 48(%rbp), %r10
    movq (%r10), %r13
    movq 48(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L3_9
    jmp .L3_8
.L3_9:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
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
    movq %r12, %r11
    call *%r11
    addq $48, %rsp
.L3_8:
    leaq 56(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $40, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq 48(%rbp), %r10
    movq (%r10), %r13
    movq 0(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L3_11
    jmp .L3_10
.L3_11:
    movq $16, %rcx
    movq %r14, %rbx
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
.L3_10:
    subq $32, %rsp
    movq 24(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    movq 32(%rbp), %r11
    call *%r11
    addq $32, %rsp
    movq $0, %rax
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
.L3_12:
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
    .globl lb_thread_spawn
lb_thread_spawn:
    .seh_proc lb_thread_spawn
    pushq %rbp
    .seh_pushreg %rbp
    subq $1040, %rsp
    .seh_stackalloc 1040
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 856(%rbp)
    movq %rdi, 1032(%rbp)
    .seh_savereg %rdi, 1032
    movq %rsi, 1024(%rbp)
    .seh_savereg %rsi, 1024
    movdqu %xmm6, 1008(%rbp)
    .seh_savexmm %xmm6, 1008
    movdqu %xmm7, 992(%rbp)
    .seh_savexmm %xmm7, 992
    movdqu %xmm8, 976(%rbp)
    .seh_savexmm %xmm8, 976
    movdqu %xmm9, 960(%rbp)
    .seh_savexmm %xmm9, 960
    movdqu %xmm10, 944(%rbp)
    .seh_savexmm %xmm10, 944
    movdqu %xmm11, 928(%rbp)
    .seh_savexmm %xmm11, 928
    movdqu %xmm12, 912(%rbp)
    .seh_savexmm %xmm12, 912
    movdqu %xmm13, 896(%rbp)
    .seh_savexmm %xmm13, 896
    movdqu %xmm14, 880(%rbp)
    .seh_savexmm %xmm14, 880
    movdqu %xmm15, 864(%rbp)
    .seh_savexmm %xmm15, 864
    movq %rbx, 848(%rbp)
    .seh_savereg %rbx, 848
    movq %r12, 840(%rbp)
    .seh_savereg %r12, 840
    movq %r13, 832(%rbp)
    .seh_savereg %r13, 832
    movq %r14, 824(%rbp)
    .seh_savereg %r14, 824
    movq %r15, 816(%rbp)
    .seh_savereg %r15, 816
    .seh_endprologue
    movq %rcx, 1056(%rbp)
    movq %rdx, 1064(%rbp)
    movq %r8, 1072(%rbp)
    movq %r9, 1080(%rbp)
    movq 1064(%rbp), %rax
    movq %rax, 760(%rbp)
    movq 1072(%rbp), %rax
    movq %rax, 744(%rbp)
    movq 1080(%rbp), %rax
    movq %rax, 728(%rbp)
    movq 1088(%rbp), %r10
    leaq 712(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 696(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, 32(%rbp)
    leaq lb_thread_9name_room(%rip), %rax
    movq %rax, 88(%rbp)
    movq 88(%rbp), %r10
    movq (%r10), %r15
    leaq 648(%rbp), %rax
    movq %rax, 24(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r15
    jbe .L4_2
.L4_1:
    movq 24(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_10(%rip), %r15
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $16, %rcx
    addq %rcx, %r12
    movq $47, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 24(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L4_3
.L4_2:
    movq 32(%rbp), %r10
    movq (%r10), %r12
    movq 32(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L4_4
    jmp .L4_5
.L4_5:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L4_4:
    movq %r13, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r15, %rax
    movq %rax, 16(%rsp)
    movq $1, %rax
    movq %rax, 24(%rsp)
    leaq 624(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r14, %r11
    call *%r11
    addq $32, %rsp
    leaq 624(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq $0, %rcx
    cmpq %rcx, %r15
    setne %al
    movzbl %al, %eax
    movl %eax, 80(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl 80(%rbp), %eax
    andl %r14d, %eax
    movl %eax, 72(%rbp)
    movl 72(%rbp), %eax
    testl %eax, %eax
    jne .L4_6
    jmp .L4_7
.L4_6:
    movq 24(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_13(%rip), %r12
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
    movq 24(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L4_3
.L4_7:
    movq %rbx, %r10
    movq (%r10), %r12
    movq 24(%rbp), %r10
    movq %r12, (%r10)
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq 24(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L4_3:
    movq 24(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_9
    jmp .L4_8
.L4_9:
    movq 24(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 776(%rbp), %r12
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
    movq 856(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 856(%rbp), %rax
    movq 1032(%rbp), %rdi
    movq 1024(%rbp), %rsi
    movdqu 1008(%rbp), %xmm6
    movdqu 992(%rbp), %xmm7
    movdqu 976(%rbp), %xmm8
    movdqu 960(%rbp), %xmm9
    movdqu 944(%rbp), %xmm10
    movdqu 928(%rbp), %xmm11
    movdqu 912(%rbp), %xmm12
    movdqu 896(%rbp), %xmm13
    movdqu 880(%rbp), %xmm14
    movdqu 864(%rbp), %xmm15
    movq 848(%rbp), %rbx
    movq 840(%rbp), %r12
    movq 832(%rbp), %r13
    movq 824(%rbp), %r14
    movq 816(%rbp), %r15
    leaq 1040(%rbp), %rsp
    popq %rbp
    ret
.L4_10:
.L4_8:
    movq 24(%rbp), %r10
    movq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 712(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq 88(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_39(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    cmpq %r13, %r12
    jae .L4_12
.L4_11:
    movq %r12, %rax
    movq %rax, 16(%rbp)
    jmp .L4_13
.L4_12:
    movq %r13, %rax
    movq %rax, 16(%rbp)
.L4_13:
    subq $64, %rsp
    movq 40(%rbp), %r10
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
    movq 16(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_copy_0g1_u8
    addq $64, %rsp
    movq 40(%rbp), %r10
    movq (%r10), %r12
    movq 40(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %r10
    movq (%r10), %r15
    movq 16(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 16(%rbp), %rcx
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 584(%rbp), %r12
    movq 32(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 544(%rbp), %rax
    movq %rax, 8(%rbp)
    movq %r12, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L4_16
    jmp .L4_17
.L4_17:
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L4_16:
    movq %r12, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq $40, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 520(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %rbx, %r11
    call *%r11
    addq $32, %rsp
    leaq 520(%rbp), %r13
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_18
    jmp .L4_19
.L4_19:
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_13(%rip), %r12
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
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L4_20
.L4_18:
    movq %r13, %r10
    movq (%r10), %rbx
    leaq 480(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq 760(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r12, %r10
    movq %r15, (%r10)
    leaq 744(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq 40(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq 16(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq 8(%rbp), %r10
    movq %rbx, (%r10)
    movq 8(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L4_20:
    movq 8(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_22
    jmp .L4_21
.L4_22:
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 600(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L4_14
.L4_21:
    movq 8(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 56(%rbp)
    jmp .L4_15
.L4_14:
    leaq 464(%rbp), %rbx
    movq 40(%rbp), %r10
    movq (%r10), %r12
    movq 64(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 32(%rbp), %r10
    movq (%r10), %r12
    movq 32(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L4_24
    jmp .L4_23
.L4_24:
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
.L4_23:
    leaq 776(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_13(%rip), %r13
    leaq 448(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $16, %rax
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
    movq 856(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 856(%rbp), %rax
    movq 1032(%rbp), %rdi
    movq 1024(%rbp), %rsi
    movdqu 1008(%rbp), %xmm6
    movdqu 992(%rbp), %xmm7
    movdqu 976(%rbp), %xmm8
    movdqu 960(%rbp), %xmm9
    movdqu 944(%rbp), %xmm10
    movdqu 928(%rbp), %xmm11
    movdqu 912(%rbp), %xmm12
    movdqu 896(%rbp), %xmm13
    movdqu 880(%rbp), %xmm14
    movdqu 864(%rbp), %xmm15
    movq 848(%rbp), %rbx
    movq 840(%rbp), %r12
    movq 832(%rbp), %r13
    movq 824(%rbp), %r14
    movq 816(%rbp), %r15
    leaq 1040(%rbp), %rsp
    popq %rbp
    ret
.L4_25:
.L4_15:
    leaq 320(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movups %xmm8, 80(%r11)
    movups %xmm8, 96(%r11)
    movups %xmm8, 112(%r11)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call pthread_attr_init
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L4_27
.L4_26:
    leaq 304(%rbp), %r12
    movq 40(%rbp), %r10
    movq (%r10), %r13
    movq 64(%rbp), %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq 32(%rbp), %r10
    movq (%r10), %r13
    movq 32(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L4_30
    jmp .L4_29
.L4_30:
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
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
    movq %r14, %r11
    call *%r11
    addq $48, %rsp
.L4_29:
    leaq 288(%rbp), %r12
    movq 56(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $40, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq 32(%rbp), %r10
    movq (%r10), %r13
    movq 48(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L4_32
    jmp .L4_31
.L4_32:
    movq $16, %rcx
    movq %r14, %rbx
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
.L4_31:
    leaq 776(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_thread_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_20(%rip), %r13
    leaq 272(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $5, %rax
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
    movq 856(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 856(%rbp), %rax
    movq 1032(%rbp), %rdi
    movq 1024(%rbp), %rsi
    movdqu 1008(%rbp), %xmm6
    movdqu 992(%rbp), %xmm7
    movdqu 976(%rbp), %xmm8
    movdqu 960(%rbp), %xmm9
    movdqu 944(%rbp), %xmm10
    movdqu 928(%rbp), %xmm11
    movdqu 912(%rbp), %xmm12
    movdqu 896(%rbp), %xmm13
    movdqu 880(%rbp), %xmm14
    movdqu 864(%rbp), %xmm15
    movq 848(%rbp), %rbx
    movq 840(%rbp), %r12
    movq 832(%rbp), %r13
    movq 824(%rbp), %r14
    movq 816(%rbp), %r15
    leaq 1040(%rbp), %rsp
    popq %rbp
    ret
.L4_33:
    jmp .L4_28
.L4_27:
.L4_28:
    leaq 728(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jbe .L4_35
.L4_34:
    leaq 96(%rbp), %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GetSystemInfo
    addq $32, %rsp
    movq $4, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl %r14d, %r14d
    jmp .L4_64
.L4_63:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L4_64:
    leaq lb_thread_11least_stack(%rip), %r15
    movq %r15, %r10
    movq (%r10), %r15
    cmpq %r15, %r13
    jbe .L4_38
.L4_37:
    movq %r13, %rbx
    jmp .L4_39
.L4_38:
    movq %r15, %rbx
.L4_39:
    movq %r14, %rax
    movq %rbx, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_39(%rip), %rsi
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
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_39(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq $0, %rcx
    cmpq %rcx, %r14
    jne .L4_41
.L4_40:
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_22(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L4_41:
    movq %r15, %rax
    xorl %edx, %edx
    divq %r14
    movq %rax, %rbx
    movq %rbx, %rax
    movq %r14, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_39(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call pthread_attr_setstacksize
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L4_43
.L4_42:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call pthread_attr_destroy
    addq $32, %rsp
    movl %eax, %ebx
    leaq 256(%rbp), %rbx
    movq 40(%rbp), %r10
    movq (%r10), %r13
    movq 64(%rbp), %r10
    movq (%r10), %r14
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq 32(%rbp), %r10
    movq (%r10), %r13
    movq 32(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L4_46
    jmp .L4_45
.L4_46:
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
.L4_45:
    leaq 240(%rbp), %rbx
    movq 56(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $40, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 32(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L4_48
    jmp .L4_47
.L4_48:
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
.L4_47:
    leaq 776(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_thread_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_26(%rip), %r13
    leaq 224(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $25, %rax
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
    movq 856(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 856(%rbp), %rax
    movq 1032(%rbp), %rdi
    movq 1024(%rbp), %rsi
    movdqu 1008(%rbp), %xmm6
    movdqu 992(%rbp), %xmm7
    movdqu 976(%rbp), %xmm8
    movdqu 960(%rbp), %xmm9
    movdqu 944(%rbp), %xmm10
    movdqu 928(%rbp), %xmm11
    movdqu 912(%rbp), %xmm12
    movdqu 896(%rbp), %xmm13
    movdqu 880(%rbp), %xmm14
    movdqu 864(%rbp), %xmm15
    movq 848(%rbp), %rbx
    movq 840(%rbp), %r12
    movq 832(%rbp), %r13
    movq 824(%rbp), %r14
    movq 816(%rbp), %r15
    leaq 1040(%rbp), %rsp
    popq %rbp
    ret
.L4_49:
    jmp .L4_44
.L4_43:
.L4_44:
    jmp .L4_36
.L4_35:
.L4_36:
    leaq 216(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_thread_trampoline(%rip), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq 56(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call pthread_create
    addq $32, %rsp
    movl %eax, %r13d
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call pthread_attr_destroy
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L4_51
.L4_50:
    leaq 200(%rbp), %rbx
    movq 40(%rbp), %r10
    movq (%r10), %r12
    movq 64(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 32(%rbp), %r10
    movq (%r10), %r12
    movq 32(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L4_54
    jmp .L4_53
.L4_54:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
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
    movq %r15, %r11
    call *%r11
    addq $48, %rsp
.L4_53:
    leaq 184(%rbp), %rbx
    movq 56(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $40, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 32(%rbp), %r10
    movq (%r10), %r12
    movq %r13, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L4_56
    jmp .L4_55
.L4_56:
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
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
    movq %r13, %r11
    call *%r11
    addq $48, %rsp
.L4_55:
    leaq 776(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_thread_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_20(%rip), %r13
    leaq 168(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $5, %rax
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
    movq 856(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 856(%rbp), %rax
    movq 1032(%rbp), %rdi
    movq 1024(%rbp), %rsi
    movdqu 1008(%rbp), %xmm6
    movdqu 992(%rbp), %xmm7
    movdqu 976(%rbp), %xmm8
    movdqu 960(%rbp), %xmm9
    movdqu 944(%rbp), %xmm10
    movdqu 928(%rbp), %xmm11
    movdqu 912(%rbp), %xmm12
    movdqu 896(%rbp), %xmm13
    movdqu 880(%rbp), %xmm14
    movdqu 864(%rbp), %xmm15
    movq 848(%rbp), %rbx
    movq 840(%rbp), %r12
    movq 832(%rbp), %r13
    movq 824(%rbp), %r14
    movq 816(%rbp), %r15
    leaq 1040(%rbp), %rsp
    popq %rbp
    ret
.L4_57:
    jmp .L4_52
.L4_51:
.L4_52:
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L4_58
    jmp .L4_59
.L4_58:
    jmp .L4_60
.L4_59:
    leaq 776(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_thread_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_20(%rip), %r13
    leaq 152(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $5, %rax
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
    movq 856(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 856(%rbp), %rax
    movq 1032(%rbp), %rdi
    movq 1024(%rbp), %rsi
    movdqu 1008(%rbp), %xmm6
    movdqu 992(%rbp), %xmm7
    movdqu 976(%rbp), %xmm8
    movdqu 960(%rbp), %xmm9
    movdqu 944(%rbp), %xmm10
    movdqu 928(%rbp), %xmm11
    movdqu 912(%rbp), %xmm12
    movdqu 896(%rbp), %xmm13
    movdqu 880(%rbp), %xmm14
    movdqu 864(%rbp), %xmm15
    movq 848(%rbp), %rbx
    movq 840(%rbp), %r12
    movq 832(%rbp), %r13
    movq 824(%rbp), %r14
    movq 816(%rbp), %r15
    leaq 1040(%rbp), %rsp
    popq %rbp
    ret
.L4_61:
.L4_60:
    leaq 144(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq 776(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 856(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 856(%rbp), %rax
    movq 1032(%rbp), %rdi
    movq 1024(%rbp), %rsi
    movdqu 1008(%rbp), %xmm6
    movdqu 992(%rbp), %xmm7
    movdqu 976(%rbp), %xmm8
    movdqu 960(%rbp), %xmm9
    movdqu 944(%rbp), %xmm10
    movdqu 928(%rbp), %xmm11
    movdqu 912(%rbp), %xmm12
    movdqu 896(%rbp), %xmm13
    movdqu 880(%rbp), %xmm14
    movdqu 864(%rbp), %xmm15
    movq 848(%rbp), %rbx
    movq 840(%rbp), %r12
    movq 832(%rbp), %r13
    movq 824(%rbp), %r14
    movq 816(%rbp), %r15
    leaq 1040(%rbp), %rsp
    popq %rbp
    ret
.L4_62:
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_thread_current
lb_thread_current:
    .seh_proc lb_thread_current
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
    leaq 8(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    subq $32, %rsp
    call pthread_self
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L5_1
    jmp .L5_2
.L5_2:
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L5_1:
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq 16(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r13, %r10
    movq 0(%r10), %rax
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
.L5_3:
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_thread_7is_main
lb_thread_7is_main:
    .seh_proc lb_thread_7is_main
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
    call lb_core_17on_initial_thread
    addq $32, %rsp
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
.L6_1:
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_thread_pause
lb_thread_pause:
    .seh_proc lb_thread_pause
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
pause

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
    .globl lb_thread_yield
lb_thread_yield:
    .seh_proc lb_thread_yield
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
    call sched_yield
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
    .globl lb_thread_sleep
lb_thread_sleep:
    .seh_proc lb_thread_sleep
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
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 8(%rbp), %r10
    movq %rbx, (%r10)
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L9_3
.L9_2:
    subq $32, %rsp
    movl $0, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call Sleep
    addq $32, %rsp
    jmp .L9_14
.L9_3:
.L9_4:
    subq $32, %rsp
    call lb_time_now
    addq $32, %rsp
    movq %rax, %r12
    movq $0, %rax
    movq %rax, %r13
.L9_6:
    cmpq %rbx, %r13
    jae .L9_8
.L9_7:
    movq %rbx, %r14
    subq %r13, %r14
    movabsq $4294967294, %rcx
    cmpq %rcx, %r14
    jae .L9_10
.L9_9:
    movq %r14, %r13
    jmp .L9_11
.L9_10:
    movabsq $4294967294, %rax
    movq %rax, %r13
.L9_11:
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call Sleep
    addq $32, %rsp
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_time_since
    addq $32, %rsp
    movq %rax, %r14
.L9_13:
    movq $1000000, %rcx
    movq %r14, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %r13
    jmp .L9_6
.L9_8:
.L9_14:
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
    jne .L10_11
    jmp .L10_4
.L10_11:
    movl %r13d, %r14d
    jmp .L10_5
.L10_4:
    leaq 32(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L10_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L10_1
    jmp .L10_2
.L10_1:
    leaq .Ltext_5(%rip), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_37(%rip), %r13
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
    jmp .L10_3
.L10_2:
.L10_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L10_7
.L10_6:
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
    jne .L10_9
    jmp .L10_10
.L10_10:
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L10_9:
    jmp .L10_8
.L10_7:
.L10_8:
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

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_thread_0init
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
    .asciz "src/std/thread.lucb:30:9"
.Ltext_2:
    .asciz "no thread to join"
.Ltext_3:
    .asciz "join"
.Ltext_4:
    .asciz "src/std/thread.lucb:72:9"
.Ltext_5:
    .asciz "index out of bounds"
.Ltext_6:
    .asciz "null_foreign"
.Ltext_7:
    .asciz "src/std/thread.lucb:76:13"
.Ltext_8:
    .asciz "src/std/thread.lucb:77:5"
.Ltext_9:
    .asciz "src/std/thread.lucb:80:5"
.Ltext_10:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_11:
    .asciz "memory.unset"
.Ltext_12:
    .asciz "src/std/thread.lucb:86:5"
.Ltext_13:
    .asciz "memory.exhausted"
.Ltext_14:
    .asciz "src/std/thread.lucb:87:5"
.Ltext_15:
    .asciz "src/std/thread.lucb:89:5"
.Ltext_16:
    .asciz "src/std/thread.lucb:90:5"
.Ltext_17:
    .asciz "src/std/thread.lucb:91:9"
.Ltext_18:
    .asciz "src/std/thread.lucb:94:5"
.Ltext_19:
    .asciz "src/std/thread.lucb:95:9"
.Ltext_20:
    .asciz "spawn"
.Ltext_21:
    .asciz "src/std/thread.lucb:101:9"
.Ltext_22:
    .asciz "division by zero"
.Ltext_23:
    .asciz "src/std/thread.lucb:102:9"
.Ltext_24:
    .asciz "src/std/thread.lucb:103:13"
.Ltext_25:
    .asciz "src/std/thread.lucb:104:13"
.Ltext_26:
    .asciz "the stack size is refused"
.Ltext_27:
    .asciz "src/std/thread.lucb:108:5"
.Ltext_28:
    .asciz "src/std/thread.lucb:109:5"
.Ltext_29:
    .asciz "src/std/thread.lucb:111:9"
.Ltext_30:
    .asciz "src/std/thread.lucb:115:5"
.Ltext_31:
    .asciz "src/std/thread.lucb:118:5"
.Ltext_32:
    .asciz "src/std/thread.lucb:123:9"
.Ltext_33:
    .asciz "x86_64"
.Ltext_34:
    .asciz "pause\n"
.Ltext_35:
    .asciz "src/std/thread.lucb:162:9"
.Ltext_36:
    .asciz "src/std/thread.lucb:164:9"
.Ltext_37:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_38:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_39:
    .asciz "integer overflow"

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_thread_failed
    .p2align 2
lb_thread_failed:
    .zero 4

    .bss
    .globl lb_thread_11least_stack
    .p2align 3
lb_thread_11least_stack:
    .zero 8

    .bss
    .globl lb_thread_9name_room
    .p2align 3
lb_thread_9name_room:
    .zero 8
