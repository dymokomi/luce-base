    .weak lb_process_15release_storage_0g1_u16
    .text

    .p2align 4
    .globl lb_process_windows_0init
lb_process_windows_0init:
    .seh_proc lb_process_windows_0init
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
    .globl lb_process_13quote_windows
lb_process_13quote_windows:
    .seh_proc lb_process_13quote_windows
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
    movq 352(%rbp), %r10
    leaq 104(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 360(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 368(%rbp), %r10
    leaq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 72(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r13d
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 56(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L1_1:
    movq 64(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L1_4
.L1_2:
    movq 56(%rbp), %rax
    movq %rax, %r15
    addq %r14, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movzbl %r15b, %r15d
    movl $32, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_43
    jmp .L1_8
.L1_43:
    movl %r12d, %ebx
    jmp .L1_9
.L1_8:
    movl $9, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %ebx
.L1_9:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L1_44
    jmp .L1_10
.L1_44:
    movl %r12d, %ebx
    jmp .L1_11
.L1_10:
    movl $10, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %ebx
.L1_11:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L1_45
    jmp .L1_12
.L1_45:
    movl %r12d, %ebx
    jmp .L1_13
.L1_12:
    movl $13, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %ebx
.L1_13:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L1_46
    jmp .L1_14
.L1_46:
    movl %r12d, %ebx
    jmp .L1_15
.L1_14:
    movl $34, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %ebx
.L1_15:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L1_5
    jmp .L1_6
.L1_5:
    movl $1, %eax
    movl %eax, %r13d
    jmp .L1_7
.L1_6:
.L1_7:
.L1_3:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r14
    jmp .L1_1
.L1_4:
    movzbl %r13b, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L1_17
.L1_16:
    leaq 88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 104(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rax
    movq %rax, %r14
.L1_19:
    movq 64(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L1_22
.L1_20:
    movq 56(%rbp), %rax
    addq %r14, %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %r10
    movzbl (%r10), %eax
    movl %eax, 40(%rbp)
    movq %rbx, %r10
    movq (%r10), %r15
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    addq %r13, %r15
    movl 40(%rbp), %eax
    movzbl %al, %eax
    movl %eax, 32(%rbp)
    movl 32(%rbp), %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_90(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq %rbx, %r10
    movq %r15, (%r10)
.L1_21:
    movq $1, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r14
    jmp .L1_19
.L1_22:
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
.L1_23:
    jmp .L1_18
.L1_17:
.L1_18:
    leaq 88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    leaq 104(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 24(%rbp), %rcx
    addq %rcx, %r12
    movl $34, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_90(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $0, %rax
    movq %rax, %r12
    movq $0, %rax
    movq %rax, 8(%rbp)
.L1_24:
    movq 8(%rbp), %rax
    movq 64(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L1_27
.L1_25:
    movq 56(%rbp), %rax
    movq 8(%rbp), %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movzbl %r14b, %r14d
    movl $92, %ecx
    cmpl %ecx, %r14d
    jne .L1_29
.L1_28:
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_90(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    jmp .L1_26
.L1_31:
    jmp .L1_30
.L1_29:
.L1_30:
    movl $34, %ecx
    cmpl %ecx, %r14d
    jne .L1_33
.L1_32:
    movq %r12, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_90(%rip), %rsi
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
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_90(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    jmp .L1_34
.L1_33:
    movq %r12, %r13
.L1_34:
    movq $0, %rax
    movq %rax, %r12
.L1_35:
    cmpq %r13, %r12
    jae .L1_38
.L1_36:
    movq %rbx, %r10
    movq (%r10), %r15
    movq 16(%rbp), %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 24(%rbp), %rax
    movq %r15, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movl $92, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_90(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq %rbx, %r10
    movq %r15, (%r10)
.L1_37:
    movq $1, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r12
    jmp .L1_35
.L1_38:
    movq %rbx, %r10
    movq (%r10), %r12
    movq 16(%rbp), %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 24(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movb %r14b, (%r10)
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_90(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $0, %rax
    movq %rax, %r13
.L1_26:
    movq 8(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r13, %r12
    movq %r14, %rax
    movq %rax, 8(%rbp)
    jmp .L1_24
.L1_27:
    movq %r12, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_90(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq $0, %rax
    movq %rax, %r14
.L1_39:
    cmpq %r13, %r14
    jae .L1_42
.L1_40:
    movq %rbx, %r10
    movq (%r10), %r12
    movq 16(%rbp), %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 24(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $92, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_90(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
.L1_41:
    movq $1, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r14
    jmp .L1_39
.L1_42:
    movq %rbx, %r10
    movq (%r10), %r12
    movq 16(%rbp), %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 24(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $34, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_90(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
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
    .seh_endproc

    .p2align 4
    .globl lb_process_12inherit_file
lb_process_12inherit_file:
    .seh_proc lb_process_12inherit_file
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
    movq %rax, 48(%rbp)
    leaq 40(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    call GetCurrentProcess
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L2_1
    jmp .L2_2
.L2_2:
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_15(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_1:
    leaq 48(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _fileno
    addq $32, %rsp
    movl %eax, %r13d
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _get_osfhandle
    addq $32, %rsp
    movq %rax, %r13
    subq $64, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq %rbx, %rax
    movq %rax, 24(%rsp)
    movl $0, %eax
    movq %rax, 32(%rsp)
    movl $1, %eax
    movq %rax, 40(%rsp)
    movl $2, %eax
    movq %rax, 48(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call DuplicateHandle
    addq $64, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L2_4
.L2_3:
    leaq 64(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_17(%rip), %r13
    leaq 24(%rbp), %r14
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
.L2_6:
    jmp .L2_5
.L2_4:
.L2_5:
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L2_7
    jmp .L2_8
.L2_7:
    jmp .L2_9
.L2_8:
    leaq 64(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_18(%rip), %r13
    leaq 8(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $28, %rax
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
.L2_10:
.L2_9:
    leaq 64(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
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
.L2_11:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_19(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_15capture_windows
lb_process_15capture_windows:
    .seh_proc lb_process_15capture_windows
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
    movq %rax, 208(%rbp)
    leaq 208(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 32(%rbp)
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movl $2, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call _fseeki64
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L3_2
.L3_1:
    leaq 224(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_21(%rip), %r13
    leaq 192(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $36, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 312(%rbp), %rdi
    movq $48, %rdx
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
.L3_4:
    jmp .L3_3
.L3_2:
.L3_3:
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _ftelli64
    addq $32, %rsp
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setl %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L3_30
    jmp .L3_8
.L3_30:
    movl %r13d, %r14d
    jmp .L3_9
.L3_8:
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call _fseeki64
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L3_9:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L3_5
    jmp .L3_6
.L3_5:
    leaq 224(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_22(%rip), %r13
    leaq 176(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 312(%rbp), %rdi
    movq $48, %rdx
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
.L3_10:
    jmp .L3_7
.L3_6:
.L3_7:
    leaq 160(%rbp), %rax
    movq %rax, 16(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 8(%rbp)
    leaq 112(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 24(%rbp), %rax
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %rax
    jbe .L3_12
.L3_11:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $208273409, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    leaq .Ltext_23(%rip), %r14
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $47, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L3_13
.L3_12:
    movq 8(%rbp), %r10
    movq (%r10), %r12
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L3_14
    jmp .L3_15
.L3_15:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L3_14:
    movq %r13, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 24(%rbp), %rax
    movq %rax, 16(%rsp)
    movq $1, %rax
    movq %rax, 24(%rsp)
    leaq 88(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r14, %r11
    call *%r11
    addq $32, %rsp
    leaq 88(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq 24(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setne %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %ecx
    movl %r15d, %r14d
    andl %ecx, %r14d
    testl %r14d, %r14d
    jne .L3_16
    jmp .L3_17
.L3_16:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_26(%rip), %r12
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
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L3_13
.L3_17:
    movq %rbx, %r10
    movq (%r10), %r12
    movq 0(%rbp), %r10
    movq %r12, (%r10)
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 24(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L3_13:
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_19
    jmp .L3_18
.L3_19:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 224(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 312(%rbp), %rdi
    movq $48, %rdx
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
.L3_20:
.L3_18:
    movq 0(%rbp), %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 24(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setg %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L3_24
    jmp .L3_31
.L3_31:
    movl %ebx, %r12d
    jmp .L3_25
.L3_24:
    movq 16(%rbp), %r10
    movq (%r10), %rbx
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq $1, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq 32(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call fread
    addq $32, %rsp
    movq %rax, %rbx
    cmpq %rbx, %r12
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L3_25:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L3_21
    jmp .L3_22
.L3_21:
    leaq 72(%rbp), %rbx
    movq 16(%rbp), %r10
    movq (%r10), %r12
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 8(%rbp), %r10
    movq (%r10), %r12
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L3_27
    jmp .L3_26
.L3_27:
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
.L3_26:
    leaq 224(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_22(%rip), %r13
    leaq 56(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 312(%rbp), %rdi
    movq $48, %rdx
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
.L3_28:
    jmp .L3_23
.L3_22:
.L3_23:
    movq 16(%rbp), %r10
    movq (%r10), %rbx
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 40(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq 224(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 312(%rbp), %rdi
    movq $48, %rdx
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
.L3_29:
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_19(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_process_17temporary_windows
lb_process_17temporary_windows:
    .seh_proc lb_process_17temporary_windows
    pushq %rbp
    .seh_pushreg %rbp
    movq $66144, %rax
    call ___chkstk_ms
    subq $66144, %rsp
    .seh_stackalloc 66144
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 65960(%rbp)
    movq %rdi, 66136(%rbp)
    .seh_savereg %rdi, 66136
    movq %rsi, 66128(%rbp)
    .seh_savereg %rsi, 66128
    movdqu %xmm6, 66112(%rbp)
    .seh_savexmm %xmm6, 66112
    movdqu %xmm7, 66096(%rbp)
    .seh_savexmm %xmm7, 66096
    movdqu %xmm8, 66080(%rbp)
    .seh_savexmm %xmm8, 66080
    movdqu %xmm9, 66064(%rbp)
    .seh_savexmm %xmm9, 66064
    movdqu %xmm10, 66048(%rbp)
    .seh_savexmm %xmm10, 66048
    movdqu %xmm11, 66032(%rbp)
    .seh_savexmm %xmm11, 66032
    movdqu %xmm12, 66016(%rbp)
    .seh_savexmm %xmm12, 66016
    movdqu %xmm13, 66000(%rbp)
    .seh_savexmm %xmm13, 66000
    movdqu %xmm14, 65984(%rbp)
    .seh_savexmm %xmm14, 65984
    movdqu %xmm15, 65968(%rbp)
    .seh_savexmm %xmm15, 65968
    movq %rbx, 65952(%rbp)
    .seh_savereg %rbx, 65952
    movq %r12, 65944(%rbp)
    .seh_savereg %r12, 65944
    movq %r13, 65936(%rbp)
    .seh_savereg %r13, 65936
    movq %r14, 65928(%rbp)
    .seh_savereg %r14, 65928
    movq %r15, 65920(%rbp)
    .seh_savereg %r15, 65920
    .seh_endprologue
    movq %rcx, 66160(%rbp)
    movq %rdx, 66168(%rbp)
    movq %r8, 66176(%rbp)
    movq %r9, 66184(%rbp)
    leaq 344(%rbp), %rbx
    movq %rbx, %rdi
    xorl %esi, %esi
    movq $65536, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memset
    addq $32, %rsp
    subq $32, %rsp
    movl $32768, %eax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call GetTempPathW
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L4_43
    jmp .L4_4
.L4_43:
    movl %r13d, %r14d
    jmp .L4_5
.L4_4:
    movl %r12d, %r13d
    movq $33, %rcx
    addq %rcx, %r13
    movq $32768, %rcx
    cmpq %rcx, %r13
    setae %al
    movzbl %al, %r14d
.L4_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L4_1
    jmp .L4_2
.L4_1:
    leaq 65880(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_31(%rip), %r13
    leaq 328(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $44, %rax
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
    movq 65960(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 65960(%rbp), %rax
    movq 66136(%rbp), %rdi
    movq 66128(%rbp), %rsi
    movdqu 66112(%rbp), %xmm6
    movdqu 66096(%rbp), %xmm7
    movdqu 66080(%rbp), %xmm8
    movdqu 66064(%rbp), %xmm9
    movdqu 66048(%rbp), %xmm10
    movdqu 66032(%rbp), %xmm11
    movdqu 66016(%rbp), %xmm12
    movdqu 66000(%rbp), %xmm13
    movdqu 65984(%rbp), %xmm14
    movdqu 65968(%rbp), %xmm15
    movq 65952(%rbp), %rbx
    movq 65944(%rbp), %r12
    movq 65936(%rbp), %r13
    movq 65928(%rbp), %r14
    movq 65920(%rbp), %r15
    leaq 66144(%rbp), %rsp
    popq %rbp
    ret
.L4_2:
.L4_3:
    leaq 312(%rbp), %rax
    movq %rax, 160(%rbp)
    leaq 296(%rbp), %rax
    movq %rax, 152(%rbp)
    movq 152(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 144(%rbp)
    leaq 264(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 136(%rbp)
    leaq 248(%rbp), %rax
    movq %rax, 128(%rbp)
    leaq .Ltext_32(%rip), %rax
    movq %rax, 120(%rbp)
    leaq 232(%rbp), %rax
    movq %rax, 112(%rbp)
    movq 112(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 104(%rbp)
    movl %r12d, %eax
    movq %rax, 96(%rbp)
    movl %r12d, %eax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq $0, %rax
    movq %rax, 24(%rbp)
.L4_7:
    movq 24(%rbp), %rax
    movq $128, %rcx
    cmpq %rcx, %rax
    jge .L4_10
.L4_8:
    movq 160(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq 160(%rbp), %rax
    movq 152(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq 144(%rbp), %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq 152(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 264(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_os_12random_bytes
    addq $48, %rsp
    movq 136(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L4_12
    jmp .L4_11
.L4_12:
    leaq 65880(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 16(%rbp), %r10
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
    movq 65960(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 65960(%rbp), %rax
    movq 66136(%rbp), %rdi
    movq 66128(%rbp), %rsi
    movdqu 66112(%rbp), %xmm6
    movdqu 66096(%rbp), %xmm7
    movdqu 66080(%rbp), %xmm8
    movdqu 66064(%rbp), %xmm9
    movdqu 66048(%rbp), %xmm10
    movdqu 66032(%rbp), %xmm11
    movdqu 66016(%rbp), %xmm12
    movdqu 66000(%rbp), %xmm13
    movdqu 65984(%rbp), %xmm14
    movdqu 65968(%rbp), %xmm15
    movq 65952(%rbp), %rbx
    movq 65944(%rbp), %r12
    movq 65936(%rbp), %r13
    movq 65928(%rbp), %r14
    movq 65920(%rbp), %r15
    leaq 66144(%rbp), %rsp
    popq %rbp
    ret
.L4_11:
    movq 120(%rbp), %rax
    movq 112(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq 104(%rbp), %r10
    movq %rax, (%r10)
    movq 112(%rbp), %r10
    movq 128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rax, 8(%rbp)
.L4_14:
    movq 8(%rbp), %rax
    movq $16, %rcx
    cmpq %rcx, %rax
    jae .L4_17
.L4_15:
    movq 8(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, 88(%rbp)
    movq 96(%rbp), %rax
    movq 88(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_90(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 80(%rbp)
    movq 80(%rbp), %rax
    movq $32768, %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 80(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq 160(%rbp), %rax
    movq 8(%rbp), %rcx
    addq %rcx, %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %r10
    movzbl (%r10), %r15d
.L4_19:
    movl $4, %ecx
    movl %r15d, %r13d
    shrl %cl, %r13d
    movzbl %r13b, %r13d
    movl %r13d, %r13d
    movq $16, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 120(%rbp), %rax
    movq %r13, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl %r13d, %r13d
    movzwl %r13w, %r13d
    movq %r14, %r10
    movw %r13w, (%r10)
    movq 80(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq $32768, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $2, %rcx
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq 64(%rbp), %r10
    movzbl (%r10), %r12d
    movl $15, %ecx
    andl %ecx, %r12d
    movl %r12d, %r12d
    movq 120(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl %r12d, %r12d
    movzwl %r12w, %r12d
    movq %r13, %r10
    movw %r12w, (%r10)
.L4_16:
    movq 8(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %rax
    movq %rax, 8(%rbp)
    jmp .L4_14
.L4_17:
    movq 48(%rbp), %rax
    movq $32768, %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl $0, %eax
    movq 32(%rbp), %r10
    movw %ax, (%r10)
    subq $64, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $3221225472, %eax
    movq %rax, 8(%rsp)
    movl $7, %eax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    movl $1, %eax
    movq %rax, 32(%rsp)
    movl $67109120, %eax
    movq %rax, 40(%rsp)
    movq $0, %rax
    movq %rax, 48(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call CreateFileW
    addq $64, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L4_20
    jmp .L4_21
.L4_21:
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_15(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L4_20:
    movq $-1, %rcx
    cmpq %rcx, %r12
    jne .L4_23
.L4_22:
    subq $32, %rsp
    call GetLastError
    addq $32, %rsp
    movl %eax, %r12d
    movl $80, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L4_44
    jmp .L4_28
.L4_44:
    movl %r12d, %r13d
    jmp .L4_29
.L4_28:
    subq $32, %rsp
    call GetLastError
    addq $32, %rsp
    movl %eax, %r12d
    movl $183, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L4_29:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L4_25
    jmp .L4_26
.L4_25:
    jmp .L4_9
.L4_26:
.L4_27:
    leaq 65880(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_38(%rip), %r13
    leaq 216(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $41, %rax
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
    movq 65960(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 65960(%rbp), %rax
    movq 66136(%rbp), %rdi
    movq 66128(%rbp), %rsi
    movdqu 66112(%rbp), %xmm6
    movdqu 66096(%rbp), %xmm7
    movdqu 66080(%rbp), %xmm8
    movdqu 66064(%rbp), %xmm9
    movdqu 66048(%rbp), %xmm10
    movdqu 66032(%rbp), %xmm11
    movdqu 66016(%rbp), %xmm12
    movdqu 66000(%rbp), %xmm13
    movdqu 65984(%rbp), %xmm14
    movdqu 65968(%rbp), %xmm15
    movq 65952(%rbp), %rbx
    movq 65944(%rbp), %r12
    movq 65936(%rbp), %r13
    movq 65928(%rbp), %r14
    movq 65920(%rbp), %r15
    leaq 66144(%rbp), %rsp
    popq %rbp
    ret
.L4_23:
.L4_24:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movl $32898, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call _open_osfhandle
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jge .L4_33
.L4_32:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    leaq 65880(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    leaq lb_process_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_39(%rip), %r14
    leaq 200(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $47, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 65960(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 65960(%rbp), %rax
    movq 66136(%rbp), %rdi
    movq 66128(%rbp), %rsi
    movdqu 66112(%rbp), %xmm6
    movdqu 66096(%rbp), %xmm7
    movdqu 66080(%rbp), %xmm8
    movdqu 66064(%rbp), %xmm9
    movdqu 66048(%rbp), %xmm10
    movdqu 66032(%rbp), %xmm11
    movdqu 66016(%rbp), %xmm12
    movdqu 66000(%rbp), %xmm13
    movdqu 65984(%rbp), %xmm14
    movdqu 65968(%rbp), %xmm15
    movq 65952(%rbp), %rbx
    movq 65944(%rbp), %r12
    movq 65936(%rbp), %r13
    movq 65928(%rbp), %r14
    movq 65920(%rbp), %r15
    leaq 66144(%rbp), %rsp
    popq %rbp
    ret
.L4_33:
.L4_34:
    leaq .Ltext_40(%rip), %r12
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call _fdopen
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L4_39
    jmp .L4_37
.L4_39:
.L4_36:
    leaq 65880(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 65960(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 65960(%rbp), %rax
    movq 66136(%rbp), %rdi
    movq 66128(%rbp), %rsi
    movdqu 66112(%rbp), %xmm6
    movdqu 66096(%rbp), %xmm7
    movdqu 66080(%rbp), %xmm8
    movdqu 66064(%rbp), %xmm9
    movdqu 66048(%rbp), %xmm10
    movdqu 66032(%rbp), %xmm11
    movdqu 66016(%rbp), %xmm12
    movdqu 66000(%rbp), %xmm13
    movdqu 65984(%rbp), %xmm14
    movdqu 65968(%rbp), %xmm15
    movq 65952(%rbp), %rbx
    movq 65944(%rbp), %r12
    movq 65936(%rbp), %r13
    movq 65928(%rbp), %r14
    movq 65920(%rbp), %r15
    leaq 66144(%rbp), %rsp
    popq %rbp
    ret
.L4_37:
.L4_38:
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _close
    addq $32, %rsp
    movl %eax, %ebx
    leaq 65880(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    leaq lb_process_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_41(%rip), %r14
    leaq 184(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $43, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 65960(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 65960(%rbp), %rax
    movq 66136(%rbp), %rdi
    movq 66128(%rbp), %rsi
    movdqu 66112(%rbp), %xmm6
    movdqu 66096(%rbp), %xmm7
    movdqu 66080(%rbp), %xmm8
    movdqu 66064(%rbp), %xmm9
    movdqu 66048(%rbp), %xmm10
    movdqu 66032(%rbp), %xmm11
    movdqu 66016(%rbp), %xmm12
    movdqu 66000(%rbp), %xmm13
    movdqu 65984(%rbp), %xmm14
    movdqu 65968(%rbp), %xmm15
    movq 65952(%rbp), %rbx
    movq 65944(%rbp), %r12
    movq 65936(%rbp), %r13
    movq 65928(%rbp), %r14
    movq 65920(%rbp), %r15
    leaq 66144(%rbp), %rsp
    popq %rbp
    ret
.L4_9:
    movq 24(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %rax
    movq %rax, 24(%rbp)
    jmp .L4_7
.L4_10:
    leaq 65880(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_42(%rip), %r13
    leaq 168(%rbp), %r14
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
    movq 65960(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 65960(%rbp), %rax
    movq 66136(%rbp), %rdi
    movq 66128(%rbp), %rsi
    movdqu 66112(%rbp), %xmm6
    movdqu 66096(%rbp), %xmm7
    movdqu 66080(%rbp), %xmm8
    movdqu 66064(%rbp), %xmm9
    movdqu 66048(%rbp), %xmm10
    movdqu 66032(%rbp), %xmm11
    movdqu 66016(%rbp), %xmm12
    movdqu 66000(%rbp), %xmm13
    movdqu 65984(%rbp), %xmm14
    movdqu 65968(%rbp), %xmm15
    movq 65952(%rbp), %rbx
    movq 65944(%rbp), %r12
    movq 65936(%rbp), %r13
    movq 65928(%rbp), %r14
    movq 65920(%rbp), %r15
    leaq 66144(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_process_11run_windows
lb_process_11run_windows:
    .seh_proc lb_process_11run_windows
    pushq %rbp
    .seh_pushreg %rbp
    movq $4096, %rax
    call ___chkstk_ms
    subq $4096, %rsp
    .seh_stackalloc 4096
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 3912(%rbp)
    movq %rdi, 4088(%rbp)
    .seh_savereg %rdi, 4088
    movq %rsi, 4080(%rbp)
    .seh_savereg %rsi, 4080
    movdqu %xmm6, 4064(%rbp)
    .seh_savexmm %xmm6, 4064
    movdqu %xmm7, 4048(%rbp)
    .seh_savexmm %xmm7, 4048
    movdqu %xmm8, 4032(%rbp)
    .seh_savexmm %xmm8, 4032
    movdqu %xmm9, 4016(%rbp)
    .seh_savexmm %xmm9, 4016
    movdqu %xmm10, 4000(%rbp)
    .seh_savexmm %xmm10, 4000
    movdqu %xmm11, 3984(%rbp)
    .seh_savexmm %xmm11, 3984
    movdqu %xmm12, 3968(%rbp)
    .seh_savexmm %xmm12, 3968
    movdqu %xmm13, 3952(%rbp)
    .seh_savexmm %xmm13, 3952
    movdqu %xmm14, 3936(%rbp)
    .seh_savexmm %xmm14, 3936
    movdqu %xmm15, 3920(%rbp)
    .seh_savexmm %xmm15, 3920
    movq %rbx, 3904(%rbp)
    .seh_savereg %rbx, 3904
    movq %r12, 3896(%rbp)
    .seh_savereg %r12, 3896
    movq %r13, 3888(%rbp)
    .seh_savereg %r13, 3888
    movq %r14, 3880(%rbp)
    .seh_savereg %r14, 3880
    movq %r15, 3872(%rbp)
    .seh_savereg %r15, 3872
    .seh_endprologue
    movq %rcx, 4112(%rbp)
    movq %rdx, 4120(%rbp)
    movq %r8, 4128(%rbp)
    movq %r9, 4136(%rbp)
    movq 4120(%rbp), %rax
    movq %rax, 3784(%rbp)
    movq 4128(%rbp), %r10
    leaq 3768(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 4136(%rbp), %rax
    movq %rax, 3752(%rbp)
    movq 4144(%rbp), %r10
    leaq 3728(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 4152(%rbp), %rax
    movq %rax, 3712(%rbp)
    leaq 3696(%rbp), %rax
    movq %rax, 1112(%rbp)
    leaq 3784(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, 1104(%rbp)
    leaq 3680(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq 1104(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq 1112(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 3664(%rbp), %r12
    leaq 3752(%rbp), %rax
    movq %rax, 1096(%rbp)
    movq 1096(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 1088(%rbp)
    subq $32, %rsp
    movq 1088(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, 1080(%rbp)
    leaq 3648(%rbp), %r15
    movq 1088(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, 1072(%rbp)
    movq 1080(%rbp), %rax
    movq 1072(%rbp), %r10
    movq %rax, (%r10)
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1112(%rbp), %r10
    movq (%r10), %r12
    movq 1112(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 1064(%rbp)
    movq 1064(%rbp), %r10
    movq (%r10), %r15
    movl $0, %eax
    movl %eax, %r13d
    movq $0, %rax
    movq %rax, %rbx
.L5_1:
    cmpq %r15, %rbx
    jae .L5_4
.L5_2:
    movq %r12, %r14
    addq %rbx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movzbl %r14b, %r14d
    subq $32, %rsp
    movl %r14d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_paths_separator
    addq $32, %rsp
    movl %eax, %r14d
    testl %r14d, %r14d
    jne .L5_5
    jmp .L5_6
.L5_5:
    movl $1, %eax
    movl %eax, %r13d
    jmp .L5_7
.L5_6:
.L5_7:
.L5_3:
    movq $1, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %rbx
    jmp .L5_1
.L5_4:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L5_8
    jmp .L5_298
.L5_298:
    movl %ebx, %r12d
    jmp .L5_9
.L5_8:
    movq 1080(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    seta %al
    movzbl %al, %r12d
.L5_9:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L5_10
    jmp .L5_299
.L5_299:
    movl %ebx, %r12d
    jmp .L5_11
.L5_10:
    subq $48, %rsp
    movq 1112(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 3632(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_paths_root
    addq $48, %rsp
    leaq 3632(%rbp), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r12d
.L5_11:
    movzbl %r12b, %eax
    movl %eax, 1056(%rbp)
    leaq 3624(%rbp), %r13
    subq $32, %rsp
    movq 1080(%rbp), %rax
    movq %rax, 0(%rsp)
    movq $2, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %r14d
    leaq 3608(%rbp), %r15
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 1048(%rbp)
    movq 1048(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movb %r14b, (%r10)
    movq %r15, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L5_12
    jmp .L5_13
.L5_12:
    jmp .L5_14
.L5_13:
    leaq 3800(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_44(%rip), %r13
    leaq 3592(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $31, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_15:
.L5_14:
    movq 1064(%rbp), %r10
    movq (%r10), %r12
    leaq 3584(%rbp), %r14
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq $2, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq %r14, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qmul_u
    addq $32, %rsp
    movl %eax, %r12d
    leaq 3568(%rbp), %r15
    movq %r14, %r10
    movq (%r10), %r14
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movb %r12b, (%r10)
    movq %r15, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L5_16
    jmp .L5_17
.L5_16:
    jmp .L5_18
.L5_17:
    leaq 3800(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_44(%rip), %r13
    leaq 3552(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $31, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_19:
.L5_18:
    leaq 3544(%rbp), %r12
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq $4, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq %r12, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %r15d
    leaq 3528(%rbp), %rbx
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movb %r15b, (%r10)
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_20
    jmp .L5_21
.L5_20:
    jmp .L5_22
.L5_21:
    leaq 3800(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_44(%rip), %r13
    leaq 3512(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $31, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_23:
.L5_22:
    leaq 3504(%rbp), %rbx
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 1048(%rbp), %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq %rbx, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %r14d
    leaq 3488(%rbp), %r15
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movb %r14b, (%r10)
    movq %r15, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L5_24
    jmp .L5_25
.L5_24:
    jmp .L5_26
.L5_25:
    leaq 3800(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_44(%rip), %r13
    leaq 3472(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $31, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_27:
.L5_26:
    leaq 3768(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 1040(%rbp)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 1032(%rbp)
    leaq 3456(%rbp), %rax
    movq %rax, 1024(%rbp)
    movq 1024(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 1016(%rbp)
    leaq 3448(%rbp), %rax
    movq %rax, 1008(%rbp)
    leaq 3432(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 1000(%rbp)
    leaq 3408(%rbp), %rax
    movq %rax, 992(%rbp)
    leaq 3392(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 984(%rbp)
    leaq 3368(%rbp), %rax
    movq %rax, 976(%rbp)
    leaq 3352(%rbp), %r15
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, 968(%rbp)
    movq %rbx, %rax
    movq %rax, 120(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L5_28:
    movq 1032(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L5_31
.L5_29:
    movq $8, %rcx
    movq %r13, %rbx
    imulq %rcx, %rbx
    movq 1040(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
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
    movq 1024(%rbp), %r10
    movq %rbx, (%r10)
    movq 1016(%rbp), %r10
    movq %r12, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq $2, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq 1008(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qmul_u
    addq $32, %rsp
    movl %eax, %ebx
    movq 1008(%rbp), %r10
    movq (%r10), %r12
    movq 8(%rbp), %r10
    movq %r12, (%r10)
    movq 1000(%rbp), %r10
    movb %bl, (%r10)
    movq 1000(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_32
    jmp .L5_33
.L5_32:
    jmp .L5_34
.L5_33:
    leaq 3800(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_44(%rip), %r13
    leaq 3416(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $31, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_35:
.L5_34:
    subq $32, %rsp
    movq 120(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq 992(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %ebx
    movq 992(%rbp), %r10
    movq (%r10), %r14
    movq 0(%rbp), %r10
    movq %r14, (%r10)
    movq 984(%rbp), %r10
    movb %bl, (%r10)
    movq 984(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_36
    jmp .L5_37
.L5_36:
    jmp .L5_38
.L5_37:
    leaq 3800(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_44(%rip), %r13
    leaq 3376(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $31, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_39:
.L5_38:
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq $3, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq 976(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %ebx
    movq 976(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq %r12, (%r10)
    movq 968(%rbp), %r10
    movb %bl, (%r10)
    movq 968(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_40
    jmp .L5_41
.L5_40:
    jmp .L5_42
.L5_41:
    leaq 3800(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_44(%rip), %r13
    leaq 3336(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $31, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_43:
.L5_42:
.L5_30:
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %r12, %rax
    movq %rax, 120(%rbp)
    movq %rbx, %r13
    jmp .L5_28
.L5_31:
    leaq 3320(%rbp), %rax
    movq %rax, 112(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 104(%rbp)
    leaq 3272(%rbp), %rax
    movq %rax, 96(%rbp)
    movq 120(%rbp), %rax
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %rax
    jbe .L5_45
.L5_44:
    movq 96(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_23(%rip), %r15
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 96(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L5_46
.L5_45:
    movq 104(%rbp), %r10
    movq (%r10), %rbx
    movq 104(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L5_47
    jmp .L5_48
.L5_48:
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L5_47:
    movq %r12, %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 120(%rbp), %rax
    movq %rax, 16(%rsp)
    movq $1, %rax
    movq %rax, 24(%rsp)
    leaq 3248(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r15, %r11
    call *%r11
    addq $32, %rsp
    leaq 3248(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movq 120(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setne %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    andl %r15d, %r13d
    testl %r13d, %r13d
    jne .L5_49
    jmp .L5_50
.L5_49:
    movq 96(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_26(%rip), %r12
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
    movq 96(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L5_46
.L5_50:
    movq %r14, %r10
    movq (%r10), %rbx
    movq 96(%rbp), %r10
    movq %rbx, (%r10)
    movq 96(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 120(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 96(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L5_46:
    movq 96(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_52
    jmp .L5_51
.L5_52:
    movq 96(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 3800(%rbp), %r12
    movq $40, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $64, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_53:
.L5_51:
    movq 96(%rbp), %r10
    movq 112(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 3240(%rbp), %rax
    movq %rax, 960(%rbp)
    movq $0, %rax
    movq 960(%rbp), %r10
    movq %rax, (%r10)
    movq 1064(%rbp), %r10
    movq (%r10), %r12
    leaq 3232(%rbp), %r13
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 1048(%rbp), %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %r12d
    leaq 3216(%rbp), %r14
    movq %r13, %r10
    movq (%r10), %r13
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movb %r12b, (%r10)
    movq %r14, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L5_54
    jmp .L5_55
.L5_54:
    jmp .L5_56
.L5_55:
    leaq 3800(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_44(%rip), %r13
    leaq 3200(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $31, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 3184(%rbp), %r12
    movq 112(%rbp), %r10
    movq (%r10), %r13
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r13
    movq 104(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L5_58
    jmp .L5_57
.L5_58:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
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
    movq %r15, %r11
    call *%r11
    addq $48, %rsp
.L5_57:
    movq %rbx, %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_59:
.L5_56:
    leaq 3168(%rbp), %rax
    movq %rax, 88(%rbp)
    leaq 3120(%rbp), %rax
    movq %rax, 80(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r13
    jbe .L5_61
.L5_60:
    movq 80(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_23(%rip), %r13
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 80(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L5_62
.L5_61:
    movq 104(%rbp), %r10
    movq (%r10), %rbx
    movq 104(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L5_63
    jmp .L5_64
.L5_64:
    leaq .Ltext_47(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L5_63:
    movq %r12, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq $1, %rax
    movq %rax, 24(%rsp)
    leaq 3096(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r14, %r11
    call *%r11
    addq $32, %rsp
    leaq 3096(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq $0, %rcx
    cmpq %rcx, %r13
    setne %al
    movzbl %al, %eax
    movl %eax, 952(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl 952(%rbp), %eax
    movl %r14d, %ecx
    movl %eax, %r14d
    andl %ecx, %r14d
    testl %r14d, %r14d
    jne .L5_65
    jmp .L5_66
.L5_65:
    movq 80(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_26(%rip), %r12
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
    movq 80(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L5_62
.L5_66:
    movq %r15, %r10
    movq (%r10), %rbx
    movq 80(%rbp), %r10
    movq %rbx, (%r10)
    movq 80(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq 80(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L5_62:
    movq 80(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_68
    jmp .L5_67
.L5_68:
    movq 80(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 3800(%rbp), %r12
    movq $40, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $64, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 3080(%rbp), %rbx
    movq 112(%rbp), %r10
    movq (%r10), %r13
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r13
    movq 104(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L5_70
    jmp .L5_69
.L5_70:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
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
    movq %r15, %r11
    call *%r11
    addq $48, %rsp
.L5_69:
    movq %r12, %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_71:
.L5_67:
    movq 80(%rbp), %r10
    movq 88(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl 1056(%rbp), %eax
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L5_72
    jmp .L5_73
.L5_72:
    movq 88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 928(%rbp)
    movq 88(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rax
    movq %rax, %r13
    movq $0, %rax
    movq %rax, %r14
.L5_75:
    movq 1080(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L5_78
.L5_76:
    movq 1088(%rbp), %rax
    addq %r14, %rax
    movq %rax, 944(%rbp)
    movq 944(%rbp), %r10
    movzbl (%r10), %eax
    movl %eax, 936(%rbp)
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 928(%rbp), %rax
    addq %r13, %rax
    movq %rax, 72(%rbp)
    movl 936(%rbp), %eax
    movzbl %al, %eax
    movl %eax, 920(%rbp)
    movl 920(%rbp), %eax
    movl $47, %ecx
    cmpl %ecx, %eax
    jne .L5_80
.L5_79:
    movl $92, %eax
    movl %eax, %r15d
    jmp .L5_81
.L5_80:
    movl 920(%rbp), %eax
    movl %eax, %r15d
.L5_81:
    movzbl %r15b, %ebx
    movq 72(%rbp), %r10
    movb %bl, (%r10)
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
.L5_77:
    movq $1, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %rbx, %r13
    movq %r15, %r14
    jmp .L5_75
.L5_78:
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_90(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 88(%rbp), %r10
    movq (%r10), %r12
    movq 88(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    addq %r12, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $92, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L5_83
.L5_82:
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r12, %rbx
    addq %r13, %rbx
    movl $92, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    jmp .L5_84
.L5_83:
    movq %r13, %rbx
.L5_84:
    movq %rbx, %r12
    jmp .L5_74
.L5_73:
    movq $0, %rax
    movq %rax, %r12
.L5_74:
    movq 1112(%rbp), %r10
    movq (%r10), %rbx
    movq 1064(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 912(%rbp)
    movq 88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 904(%rbp)
    movq 88(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r12, %rax
    movq %rax, 64(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L5_85:
    movq 912(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L5_88
.L5_86:
    movq %rbx, %r12
    addq %r14, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq 64(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 904(%rbp), %rax
    movq 64(%rbp), %rcx
    addq %rcx, %rax
    movq %rax, 16(%rbp)
    movzbl %r12b, %r12d
    movl $47, %ecx
    cmpl %ecx, %r12d
    jne .L5_90
.L5_89:
    movl $92, %eax
    movl %eax, %r12d
    jmp .L5_91
.L5_90:
.L5_91:
    movzbl %r12b, %r13d
    movq 16(%rbp), %r10
    movb %r13b, (%r10)
    movq 64(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
.L5_87:
    movq $1, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r13, %rax
    movq %rax, 64(%rbp)
    movq %r12, %r14
    jmp .L5_85
.L5_88:
    movq 88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 56(%rbp)
    movq 88(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 896(%rbp)
    movq 896(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 64(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    movq 64(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L5_92
.L5_93:
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L5_92:
    leaq 3064(%rbp), %r12
    movq 56(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq 64(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 3048(%rbp), %r12
    movq 56(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq 64(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq 112(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 960(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %r12, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_process_13quote_windows
    addq $64, %rsp
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    leaq 3032(%rbp), %rax
    movq %rax, 864(%rbp)
    movq 864(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 856(%rbp)
    movq $0, %rax
    movq %rax, %rbx
.L5_94:
    movq 1032(%rbp), %rcx
    cmpq %rcx, %rbx
    jae .L5_97
.L5_95:
    movq $8, %rcx
    movq %rbx, %rax
    imulq %rcx, %rax
    movq %rax, 888(%rbp)
    movq 1040(%rbp), %rax
    movq 888(%rbp), %rcx
    addq %rcx, %rax
    movq %rax, 880(%rbp)
    movq 880(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 872(%rbp)
    movq 960(%rbp), %r10
    movq (%r10), %r15
    movq 112(%rbp), %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq (%r10), %r13
    cmpq %r13, %r15
    jb 1f
    leaq .Ltext_57(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r15, %r13
    addq %r14, %r13
    movl $32, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq 960(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_58(%rip), %rdi
    leaq .Ltext_90(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 960(%rbp), %r10
    movq %r13, (%r10)
    subq $32, %rsp
    movq 872(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r13
    movq 872(%rbp), %rax
    movq 864(%rbp), %r10
    movq %rax, (%r10)
    movq 856(%rbp), %r10
    movq %r13, (%r10)
    subq $64, %rsp
    movq 112(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 960(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 864(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_process_13quote_windows
    addq $64, %rsp
.L5_96:
    movq $1, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %rbx
    jmp .L5_94
.L5_97:
    movq 960(%rbp), %r10
    movq (%r10), %rbx
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq 112(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 848(%rbp)
    movq 848(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    addq %r12, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 3016(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 112(%rbp), %r10
    movq (%r10), %r14
    movq 848(%rbp), %r10
    movq (%r10), %rbx
    movq 960(%rbp), %r10
    movq (%r10), %r15
    movq $1, %rcx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %rbx, %r15
    jb 1f
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r15, %rax
    jbe .L5_98
.L5_99:
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L5_98:
    leaq 3000(%rbp), %rax
    movq %rax, 840(%rbp)
    movq 840(%rbp), %r10
    movq %r14, (%r10)
    movq 840(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 832(%rbp)
    movq 832(%rbp), %r10
    movq %r15, (%r10)
    leaq 2984(%rbp), %rax
    movq %rax, 824(%rbp)
    movq 824(%rbp), %r10
    movq %r14, (%r10)
    movq 824(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 816(%rbp)
    movq 816(%rbp), %r10
    movq %r15, (%r10)
    leaq lb_process_failed(%rip), %rax
    movq %rax, 808(%rbp)
    movq 808(%rbp), %r10
    movl (%r10), %ebx
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movl %ebx, %eax
    movq %rax, 16(%rsp)
    leaq 2936(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_12windows_text_wide
    addq $32, %rsp
    leaq 2936(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_101
    jmp .L5_100
.L5_101:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 3800(%rbp), %rax
    movq %rax, 800(%rbp)
    movq 800(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 800(%rbp), %rax
    movq $64, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 2920(%rbp), %rbx
    movq 56(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq 896(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r15
    movq 104(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 792(%rbp)
    movq 792(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L5_103
    jmp .L5_102
.L5_103:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %r15, %rax
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
.L5_102:
    leaq 2904(%rbp), %rbx
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq 848(%rbp), %r10
    movq (%r10), %r14
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq 792(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L5_105
    jmp .L5_104
.L5_105:
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
.L5_104:
    movq 800(%rbp), %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_106:
.L5_100:
    movq %r12, %r10
    movq 48(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 48(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 784(%rbp)
    movq 784(%rbp), %rax
    movq $32768, %rcx
    cmpq %rcx, %rax
    jbe .L5_108
.L5_107:
    leaq 3800(%rbp), %rax
    movq %rax, 776(%rbp)
    movq 776(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq 808(%rbp), %r10
    movl (%r10), %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    leaq .Ltext_44(%rip), %r15
    leaq 2888(%rbp), %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $31, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 776(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq 2872(%rbp), %r13
    movq 48(%rbp), %r10
    movq (%r10), %r14
    movq 784(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_90(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r14
    movq 104(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L5_111
    jmp .L5_110
.L5_111:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r13, %r10
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
.L5_110:
    leaq 2856(%rbp), %rbx
    movq 56(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 896(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_113
    jmp .L5_112
.L5_113:
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
.L5_112:
    leaq 2840(%rbp), %rbx
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq 848(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_115
    jmp .L5_114
.L5_115:
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
.L5_114:
    movq 776(%rbp), %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_116:
    jmp .L5_109
.L5_108:
.L5_109:
    leaq 2824(%rbp), %rax
    movq %rax, 768(%rbp)
    movq 768(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq 1088(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r13
    leaq 2808(%rbp), %r14
    movq 1088(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $0, %rcx
    cmpq %rcx, %r13
    jbe .L5_118
.L5_117:
    movq 808(%rbp), %r10
    movl (%r10), %r13d
    subq $32, %rsp
    movq 1088(%rbp), %rax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    leaq 2760(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_12windows_text_wide
    addq $32, %rsp
    leaq 2760(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L5_121
    jmp .L5_120
.L5_121:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq 3800(%rbp), %rax
    movq %rax, 760(%rbp)
    movq 760(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 752(%rbp)
    movq %r12, %r10
    movq 752(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 760(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 2744(%rbp), %r12
    movq 48(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 744(%rbp)
    movq 784(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq 744(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 736(%rbp)
    movq 736(%rbp), %r10
    movq %r13, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r13
    movq 104(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 728(%rbp)
    movq 728(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L5_123
    jmp .L5_122
.L5_123:
    movq $16, %rcx
    movq %r15, %rbx
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
.L5_122:
    leaq 2728(%rbp), %rbx
    movq 56(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 896(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq 728(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_125
    jmp .L5_124
.L5_125:
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
.L5_124:
    leaq 2712(%rbp), %rbx
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq 848(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq 728(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_127
    jmp .L5_126
.L5_127:
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
.L5_126:
    movq 760(%rbp), %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_128:
.L5_120:
    movq %r14, %r10
    movq 768(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L5_119
.L5_118:
.L5_119:
    leaq 2696(%rbp), %rax
    movq %rax, 720(%rbp)
    movq 720(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 3728(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L5_132
    jmp .L5_130
.L5_132:
    leaq 2680(%rbp), %r14
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L5_129:
    subq $48, %rsp
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 2632(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_19environment_windows
    addq $48, %rsp
    leaq 2632(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L5_134
    jmp .L5_133
.L5_134:
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    leaq 3800(%rbp), %rax
    movq %rax, 712(%rbp)
    movq 712(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 712(%rbp), %rax
    movq $64, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $48, %rsp
    movq 768(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 2616(%rbp), %rbx
    movq 48(%rbp), %r10
    movq (%r10), %r14
    movq 784(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, 704(%rbp)
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq 704(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r14
    movq 104(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 696(%rbp)
    movq 696(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L5_136
    jmp .L5_135
.L5_136:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %r14, %rax
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
.L5_135:
    leaq 2600(%rbp), %rbx
    movq 56(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 896(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq 696(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_138
    jmp .L5_137
.L5_138:
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
.L5_137:
    leaq 2584(%rbp), %rbx
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq 848(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq 696(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_140
    jmp .L5_139
.L5_140:
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
.L5_139:
    movq 712(%rbp), %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_141:
.L5_133:
    movq %r13, %r10
    movq 720(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L5_131
.L5_130:
.L5_131:
    subq $32, %rsp
    leaq 2544(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_process_17temporary_windows
    addq $32, %rsp
    leaq 2544(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_143
    jmp .L5_142
.L5_143:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 3800(%rbp), %rax
    movq %rax, 688(%rbp)
    movq 688(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 680(%rbp)
    movq %rbx, %r10
    movq 680(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 688(%rbp), %rax
    movq $64, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 768(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 2528(%rbp), %rbx
    movq 48(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 672(%rbp)
    movq 784(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq 672(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 664(%rbp)
    movq 664(%rbp), %r10
    movq %r14, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r14
    movq 104(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 656(%rbp)
    movq 656(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L5_145
    jmp .L5_144
.L5_145:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %r14, %rax
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
.L5_144:
    leaq 2512(%rbp), %rbx
    movq 56(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 896(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq 656(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_147
    jmp .L5_146
.L5_147:
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
.L5_146:
    leaq 2496(%rbp), %rbx
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq 848(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq 656(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_149
    jmp .L5_148
.L5_149:
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
.L5_148:
    movq 688(%rbp), %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_150:
.L5_142:
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 648(%rbp)
    subq $32, %rsp
    leaq 2456(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_process_17temporary_windows
    addq $32, %rsp
    leaq 2456(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L5_152
    jmp .L5_151
.L5_152:
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    leaq 3800(%rbp), %rax
    movq %rax, 640(%rbp)
    movq 640(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 640(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 648(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 768(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 2440(%rbp), %r12
    movq 48(%rbp), %r10
    movq (%r10), %r13
    movq 784(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, 632(%rbp)
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq 632(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r13
    movq 104(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 624(%rbp)
    movq 624(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L5_154
    jmp .L5_153
.L5_154:
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
.L5_153:
    leaq 2424(%rbp), %rbx
    movq 56(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 896(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq 624(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_156
    jmp .L5_155
.L5_156:
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
.L5_155:
    leaq 2408(%rbp), %rbx
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq 848(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq 624(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_158
    jmp .L5_157
.L5_158:
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
.L5_157:
    movq 640(%rbp), %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_159:
.L5_151:
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, 616(%rbp)
    leaq .Ltext_66(%rip), %r13
    leaq .Ltext_67(%rip), %r14
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call fopen
    addq $32, %rsp
    movq %rax, 40(%rbp)
    movq 40(%rbp), %rax
    testq %rax, %rax
    jne .L5_160
    jmp .L5_161
.L5_160:
    jmp .L5_162
.L5_161:
    leaq 3800(%rbp), %rax
    movq %rax, 608(%rbp)
    movq 608(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq 808(%rbp), %r10
    movl (%r10), %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    leaq .Ltext_68(%rip), %r15
    leaq 2392(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq $35, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 608(%rbp), %rax
    movq $64, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 616(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 648(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 768(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 2376(%rbp), %rbx
    movq 48(%rbp), %r10
    movq (%r10), %r14
    movq 784(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r14
    movq 104(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_164
    jmp .L5_163
.L5_164:
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %r14, %rax
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
.L5_163:
    leaq 2360(%rbp), %rbx
    movq 56(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 896(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_166
    jmp .L5_165
.L5_166:
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
.L5_165:
    leaq 2344(%rbp), %rbx
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq 848(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_168
    jmp .L5_167
.L5_168:
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
.L5_167:
    movq 608(%rbp), %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_169:
.L5_162:
    subq $32, %rsp
    movq 648(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 2304(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_12inherit_file
    addq $32, %rsp
    leaq 2304(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_171
    jmp .L5_170
.L5_171:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 3800(%rbp), %rax
    movq %rax, 600(%rbp)
    movq 600(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 592(%rbp)
    movq %rbx, %r10
    movq 592(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 600(%rbp), %rax
    movq $64, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 40(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 616(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 648(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 768(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 2288(%rbp), %rbx
    movq 48(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 584(%rbp)
    movq 784(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq 584(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 576(%rbp)
    movq 576(%rbp), %r10
    movq %r14, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r14
    movq 104(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 568(%rbp)
    movq 568(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L5_173
    jmp .L5_172
.L5_173:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %r14, %rax
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
.L5_172:
    leaq 2272(%rbp), %rbx
    movq 56(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 896(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq 568(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_175
    jmp .L5_174
.L5_175:
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
.L5_174:
    leaq 2256(%rbp), %rbx
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq 848(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq 568(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_177
    jmp .L5_176
.L5_177:
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
.L5_176:
    movq 600(%rbp), %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_178:
.L5_170:
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 560(%rbp)
    subq $32, %rsp
    movq 616(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 2216(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_12inherit_file
    addq $32, %rsp
    leaq 2216(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L5_180
    jmp .L5_179
.L5_180:
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    leaq 3800(%rbp), %rax
    movq %rax, 552(%rbp)
    movq 552(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 552(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 560(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 40(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 616(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 648(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 768(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 2200(%rbp), %r12
    movq 48(%rbp), %r10
    movq (%r10), %r13
    movq 784(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, 544(%rbp)
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq 544(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r13
    movq 104(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 536(%rbp)
    movq 536(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L5_182
    jmp .L5_181
.L5_182:
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
.L5_181:
    leaq 2184(%rbp), %rbx
    movq 56(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 896(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq 536(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_184
    jmp .L5_183
.L5_184:
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
.L5_183:
    leaq 2168(%rbp), %rbx
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq 848(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq 536(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_186
    jmp .L5_185
.L5_186:
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
.L5_185:
    movq 552(%rbp), %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_187:
.L5_179:
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, 528(%rbp)
    subq $32, %rsp
    movq 40(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 2128(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_12inherit_file
    addq $32, %rsp
    leaq 2128(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L5_189
    jmp .L5_188
.L5_189:
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    leaq 3800(%rbp), %rax
    movq %rax, 520(%rbp)
    movq 520(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 520(%rbp), %rax
    movq $64, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 528(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 560(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 40(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 616(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 648(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 768(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 2112(%rbp), %rbx
    movq 48(%rbp), %r10
    movq (%r10), %r13
    movq 784(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, 512(%rbp)
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq 512(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r13
    movq 104(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 504(%rbp)
    movq 504(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L5_191
    jmp .L5_190
.L5_191:
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
.L5_190:
    leaq 2096(%rbp), %rbx
    movq 56(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 896(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq 504(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_193
    jmp .L5_192
.L5_193:
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
.L5_192:
    leaq 2080(%rbp), %rbx
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq 848(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq 504(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_195
    jmp .L5_194
.L5_195:
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
.L5_194:
    movq 520(%rbp), %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_196:
.L5_188:
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 496(%rbp)
    leaq 1976(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movups %xmm8, 80(%r11)
    movq $0, 96(%r11)
    movl $104, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq $60, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movl $256, %eax
    movq %r15, %r10
    movl %eax, (%r10)
    movq $80, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq 496(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $88, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq 560(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $96, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq 528(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq 1952(%rbp), %r15
    movq %r15, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq 48(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 488(%rbp)
    leaq 3712(%rbp), %rax
    movq %rax, 480(%rbp)
    movq 480(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 472(%rbp)
    movq 472(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %eax
    movl %eax, 464(%rbp)
    movl 464(%rbp), %eax
    testl %eax, %eax
    jne .L5_200
    jmp .L5_201
.L5_200:
    movl $4, %eax
    movl %eax, %r14d
    jmp .L5_202
.L5_201:
    movl $0, %eax
    movl %eax, %r14d
.L5_202:
    movl $134218752, %ecx
    movl %r14d, %ebx
    orl %ecx, %ebx
    movq 720(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L5_204
.L5_203:
    movq 720(%rbp), %r10
    movq (%r10), %r12
    jmp .L5_205
.L5_204:
    movq $0, %rax
    movq %rax, %r12
.L5_205:
    movq 768(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    jbe .L5_207
.L5_206:
    movq 768(%rbp), %r10
    movq (%r10), %r14
    jmp .L5_208
.L5_207:
    movq $0, %rax
    movq %rax, %r14
.L5_208:
    subq $80, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq 488(%rbp), %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    movl $1, %eax
    movq %rax, 32(%rsp)
    movl %ebx, %eax
    movq %rax, 40(%rsp)
    movq %r12, %rax
    movq %rax, 48(%rsp)
    movq %r14, %rax
    movq %rax, 56(%rsp)
    movq %r13, %rax
    movq %rax, 64(%rsp)
    movq %r15, %rax
    movq %rax, 72(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call CreateProcessW
    addq $80, %rsp
    movl %eax, 456(%rbp)
    movl 456(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jne .L5_198
.L5_197:
    leaq 3800(%rbp), %rax
    movq %rax, 440(%rbp)
    movq 440(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 808(%rbp), %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_73(%rip), %r13
    leaq 1936(%rbp), %r14
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
    movq 440(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 496(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 528(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 560(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 40(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 616(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq 648(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %r12d
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 768(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 1920(%rbp), %r12
    movq 784(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq 488(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r13
    movq 104(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L5_210
    jmp .L5_209
.L5_210:
    movq $16, %rcx
    movq %r15, %rbx
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
.L5_209:
    leaq 1904(%rbp), %rbx
    movq 56(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 896(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_212
    jmp .L5_211
.L5_212:
    movq $16, %rcx
    movq %r13, %r15
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
.L5_211:
    leaq 1888(%rbp), %rbx
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq 848(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_214
    jmp .L5_213
.L5_214:
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
.L5_213:
    movq 440(%rbp), %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_215:
    jmp .L5_199
.L5_198:
.L5_199:
    movq %r15, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L5_216
    jmp .L5_217
.L5_216:
    jmp .L5_218
.L5_217:
    leaq .Ltext_75(%rip), %rbx
    leaq 1872(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $33, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_76(%rip), %rbx
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
    leaq .Ltext_76(%rip), %rdi
    leaq .Ltext_19(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L5_218:
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %rax
    testq %rax, %rax
    jne .L5_219
    jmp .L5_220
.L5_219:
    jmp .L5_221
.L5_220:
    leaq .Ltext_77(%rip), %rbx
    leaq 1856(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $32, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_78(%rip), %rbx
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
    leaq .Ltext_78(%rip), %rdi
    leaq .Ltext_19(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L5_221:
    movq 472(%rbp), %rax
    testq %rax, %rax
    jne .L5_225
    jmp .L5_223
.L5_225:
.L5_222:
    subq $48, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 32(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 648(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 616(%rbp), %rax
    movq %rax, 32(%rsp)
    movq 472(%rbp), %rax
    movq %rax, 40(%rsp)
    leaq 1824(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_process_15monitor_windows
    addq $48, %rsp
    leaq 1824(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L5_227
    jmp .L5_226
.L5_227:
    leaq 3800(%rbp), %rax
    movq %rax, 432(%rbp)
    movq 432(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 424(%rbp)
    movq %r14, %r10
    movq 424(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 432(%rbp), %rax
    movq $64, %rcx
    addq %rcx, %rax
    movq %rax, 416(%rbp)
    movl $1, %eax
    movq 416(%rbp), %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 496(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 528(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 560(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 40(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 616(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 648(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 768(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 1808(%rbp), %rax
    movq %rax, 408(%rbp)
    movq 784(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq 488(%rbp), %rax
    movq 408(%rbp), %r10
    movq %rax, (%r10)
    movq 408(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 400(%rbp)
    movq 400(%rbp), %r10
    movq %r13, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r13
    movq 104(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 392(%rbp)
    movq 392(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L5_229
    jmp .L5_228
.L5_229:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 408(%rbp), %r10
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
.L5_228:
    leaq 1792(%rbp), %rbx
    movq 56(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 896(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq 392(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_231
    jmp .L5_230
.L5_231:
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
.L5_230:
    leaq 1776(%rbp), %rbx
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq 848(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq 392(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_233
    jmp .L5_232
.L5_233:
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
.L5_232:
    movq 432(%rbp), %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_234:
.L5_226:
    jmp .L5_224
.L5_223:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $4294967295, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call WaitForSingleObject
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L5_236
.L5_235:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call TerminateProcess
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $4294967295, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call WaitForSingleObject
    addq $32, %rsp
    movl %eax, %r12d
    leaq 3800(%rbp), %rax
    movq %rax, 384(%rbp)
    movq 384(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq 808(%rbp), %r10
    movl (%r10), %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    leaq .Ltext_80(%rip), %r15
    leaq 1760(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq $30, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 384(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 496(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 528(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 560(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 40(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 616(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 648(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 768(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 1744(%rbp), %r12
    movq 784(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq 488(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r14
    movq 104(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_239
    jmp .L5_238
.L5_239:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r14, %rax
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
.L5_238:
    leaq 1728(%rbp), %rbx
    movq 56(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 896(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_241
    jmp .L5_240
.L5_241:
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
.L5_240:
    leaq 1712(%rbp), %rbx
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq 848(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_243
    jmp .L5_242
.L5_243:
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
.L5_242:
    movq 384(%rbp), %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_244:
    jmp .L5_237
.L5_236:
.L5_237:
.L5_224:
    leaq 1708(%rbp), %rax
    movq %rax, 376(%rbp)
    movl $0, %eax
    movq 376(%rbp), %r10
    movl %eax, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 376(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call GetExitCodeProcess
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L5_246
.L5_245:
    leaq 3800(%rbp), %rax
    movq %rax, 368(%rbp)
    movq 368(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq 808(%rbp), %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_82(%rip), %r14
    leaq 1688(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $38, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 368(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 496(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 528(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 560(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 40(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 616(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 648(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 768(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 1672(%rbp), %r13
    movq 784(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq 488(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r14
    movq 104(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L5_249
    jmp .L5_248
.L5_249:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r13, %r10
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
.L5_248:
    leaq 1656(%rbp), %rbx
    movq 56(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 896(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_251
    jmp .L5_250
.L5_251:
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
.L5_250:
    leaq 1640(%rbp), %rbx
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq 848(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_253
    jmp .L5_252
.L5_253:
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
.L5_252:
    movq 368(%rbp), %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_254:
    jmp .L5_247
.L5_246:
.L5_247:
    movl 464(%rbp), %eax
    testl %eax, %eax
    jne .L5_255
    jmp .L5_256
.L5_255:
    leaq 1600(%rbp), %r12
    movq 376(%rbp), %r10
    movl (%r10), %eax
    movl %eax, 360(%rbp)
    movl 360(%rbp), %eax
    movl %eax, %eax
    movq %rax, 352(%rbp)
    movl 352(%rbp), %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_84(%rip), %rax
    movq %rax, 344(%rbp)
    leaq 1584(%rbp), %r14
    movq 344(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $0, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 1568(%rbp), %r14
    movq 344(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, 336(%rbp)
    movq $0, %rax
    movq 336(%rbp), %r10
    movq %rax, (%r10)
    movq $24, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 328(%rbp)
    movq %r14, %r10
    movq 328(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 3800(%rbp), %rax
    movq %rax, 320(%rbp)
    movq %r12, %r10
    movq 320(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq 320(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 496(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 528(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 560(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 40(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 616(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 648(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 768(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 1552(%rbp), %r12
    movq 784(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq 488(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r14
    movq 104(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_259
    jmp .L5_258
.L5_259:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r14, %rax
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
.L5_258:
    leaq 1536(%rbp), %rbx
    movq 56(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 896(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_261
    jmp .L5_260
.L5_261:
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
.L5_260:
    leaq 1520(%rbp), %rbx
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq 848(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_263
    jmp .L5_262
.L5_263:
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
.L5_262:
    movq 320(%rbp), %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_264:
    jmp .L5_257
.L5_256:
.L5_257:
    leaq 1504(%rbp), %rax
    movq %rax, 24(%rbp)
    subq $32, %rsp
    movq 648(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 1456(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_15capture_windows
    addq $32, %rsp
    leaq 1456(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L5_266
    jmp .L5_265
.L5_266:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq 3800(%rbp), %rax
    movq %rax, 312(%rbp)
    movq 312(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 304(%rbp)
    movq %r12, %r10
    movq 304(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 312(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 496(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 528(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 560(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 40(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 616(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 648(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 768(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 1440(%rbp), %r12
    movq 784(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, 296(%rbp)
    movq 488(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq 296(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r13
    movq 104(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 288(%rbp)
    movq 288(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L5_268
    jmp .L5_267
.L5_268:
    movq $16, %rcx
    movq %r15, %rbx
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
.L5_267:
    leaq 1424(%rbp), %rbx
    movq 56(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 896(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq 288(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_270
    jmp .L5_269
.L5_270:
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
.L5_269:
    leaq 1408(%rbp), %rbx
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq 848(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq 288(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_272
    jmp .L5_271
.L5_272:
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
.L5_271:
    movq 312(%rbp), %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_273:
.L5_265:
    movq %r14, %r10
    movq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 1392(%rbp), %r13
    subq $32, %rsp
    movq 616(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 1304(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_process_15capture_windows
    addq $32, %rsp
    leaq 1304(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L5_277
    jmp .L5_276
.L5_277:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq 1352(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L5_274
.L5_276:
    leaq 1376(%rbp), %rax
    movq %rax, 280(%rbp)
    movq %r15, %r10
    movq 280(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L5_275
.L5_274:
    subq $48, %rsp
    movq 24(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_release
    addq $48, %rsp
    leaq 3800(%rbp), %rax
    movq %rax, 272(%rbp)
    movq 272(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r13, %r10
    movl (%r10), %eax
    movl %eax, 264(%rbp)
    movl 264(%rbp), %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, 256(%rbp)
    movq $8, %rcx
    addq %rcx, %r14
    movq 256(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 272(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 496(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 528(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 560(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 40(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 616(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 648(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 768(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 1288(%rbp), %r14
    movq 784(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, 248(%rbp)
    movq 488(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq 248(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq 104(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 240(%rbp)
    movq 240(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L5_279
    jmp .L5_278
.L5_279:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r14, %r10
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
.L5_278:
    leaq 1272(%rbp), %rbx
    movq 56(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 896(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq 240(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_281
    jmp .L5_280
.L5_281:
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
.L5_280:
    leaq 1256(%rbp), %rbx
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq 848(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq 240(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_283
    jmp .L5_282
.L5_283:
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
.L5_282:
    movq 272(%rbp), %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_284:
.L5_275:
    movq 280(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 1216(%rbp), %r12
    movq 376(%rbp), %r10
    movl (%r10), %eax
    movl %eax, 232(%rbp)
    movl 232(%rbp), %eax
    movl %eax, %eax
    movq %rax, 224(%rbp)
    movl 224(%rbp), %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 216(%rbp)
    movq 24(%rbp), %r10
    movq 216(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 208(%rbp)
    movq %r13, %r10
    movq 208(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 3800(%rbp), %rax
    movq %rax, 200(%rbp)
    movq %r12, %r10
    movq 200(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq 200(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 496(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 528(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 560(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 40(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 616(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 648(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    subq $48, %rsp
    movq 720(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    subq $48, %rsp
    movq 768(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 1200(%rbp), %r12
    movq 784(%rbp), %rax
    movq $2, %rcx
    imulq %rcx, %rax
    movq %rax, 192(%rbp)
    movq 488(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq 192(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r14
    movq 104(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 184(%rbp)
    movq 184(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L5_286
    jmp .L5_285
.L5_286:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r14, %rax
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
.L5_285:
    leaq 1184(%rbp), %rbx
    movq 56(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 896(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq 184(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_288
    jmp .L5_287
.L5_288:
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
.L5_287:
    leaq 1168(%rbp), %rbx
    movq 112(%rbp), %r10
    movq (%r10), %r12
    movq 848(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq 104(%rbp), %r10
    movq (%r10), %r12
    movq 184(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L5_290
    jmp .L5_289
.L5_290:
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
.L5_289:
    movq 200(%rbp), %rsi
    movq 3912(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 3912(%rbp), %rax
    movq 4088(%rbp), %rdi
    movq 4080(%rbp), %rsi
    movdqu 4064(%rbp), %xmm6
    movdqu 4048(%rbp), %xmm7
    movdqu 4032(%rbp), %xmm8
    movdqu 4016(%rbp), %xmm9
    movdqu 4000(%rbp), %xmm10
    movdqu 3984(%rbp), %xmm11
    movdqu 3968(%rbp), %xmm12
    movdqu 3952(%rbp), %xmm13
    movdqu 3936(%rbp), %xmm14
    movdqu 3920(%rbp), %xmm15
    movq 3904(%rbp), %rbx
    movq 3896(%rbp), %r12
    movq 3888(%rbp), %r13
    movq 3880(%rbp), %r14
    movq 3872(%rbp), %r15
    leaq 4096(%rbp), %rsp
    popq %rbp
    ret
.L5_291:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    movq %r14, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    movq %r13, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    movq %r12, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    movq %r15, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    movq 128(%rbp), %rax
    movq %rax, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    movq 136(%rbp), %rax
    movq %rax, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    movq 144(%rbp), %rax
    movq %rax, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call fclose
    addq $32, %rsp
    movl %eax, %ebx
    leaq 2696(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 2824(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_process_15release_storage_0g1_u16
    addq $48, %rsp
    leaq 3016(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 176(%rbp)
    leaq 1152(%rbp), %rax
    movq %rax, 168(%rbp)
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 160(%rbp)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_88(%rip), %rdi
    leaq .Ltext_90(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 160(%rbp), %rax
    movq 168(%rbp), %r10
    movq %rax, (%r10)
    movq 168(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 152(%rbp)
    movq 152(%rbp), %r10
    movq %rbx, (%r10)
    movq 176(%rbp), %r10
    movq (%r10), %r12
    movq 176(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L5_293
    jmp .L5_292
.L5_293:
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 168(%rbp), %r10
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
.L5_292:
    leaq 3168(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 1136(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_88(%rip), %rdi
    leaq .Ltext_90(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L5_295
    jmp .L5_294
.L5_295:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r13, %r10
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
.L5_294:
    leaq 3320(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 1120(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_88(%rip), %rdi
    leaq .Ltext_90(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L5_297
    jmp .L5_296
.L5_297:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r13, %r10
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
.L5_296:
    leaq .Ltext_88(%rip), %rdi
    leaq .Ltext_19(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .section .text$lb_process_15release_storage_0g1_u16,"xr"
    .p2align 4
    .globl lb_process_15release_storage_0g1_u16
lb_process_15release_storage_0g1_u16:
    .seh_proc lb_process_15release_storage_0g1_u16
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
    movq 272(%rbp), %r10
    leaq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 24(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L6_2
.L6_1:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 0(%rbp)
    leaq 8(%rbp), %r14
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r12, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_89(%rip), %rdi
    leaq .Ltext_90(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq 0(%rbp), %r10
    movq (%r10), %r13
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L6_5
    jmp .L6_4
.L6_5:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
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
    movq %rbx, %r11
    call *%r11
    addq $48, %rsp
.L6_4:
    jmp .L6_3
.L6_2:
.L6_3:
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

    .text

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_process_windows_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/process/windows.lucb:55:13"
.Ltext_1:
    .asciz "src/std/process/windows.lucb:56:13"
.Ltext_2:
    .asciz "src/std/process/windows.lucb:58:5"
.Ltext_3:
    .asciz "src/std/process/windows.lucb:59:5"
.Ltext_4:
    .asciz "src/std/process/windows.lucb:63:13"
.Ltext_5:
    .asciz "src/std/process/windows.lucb:65:9"
.Ltext_6:
    .asciz "src/std/process/windows.lucb:68:13"
.Ltext_7:
    .asciz "src/std/process/windows.lucb:69:13"
.Ltext_8:
    .asciz "src/std/process/windows.lucb:70:9"
.Ltext_9:
    .asciz "src/std/process/windows.lucb:71:9"
.Ltext_10:
    .asciz "src/std/process/windows.lucb:73:5"
.Ltext_11:
    .asciz "src/std/process/windows.lucb:75:9"
.Ltext_12:
    .asciz "src/std/process/windows.lucb:76:9"
.Ltext_13:
    .asciz "src/std/process/windows.lucb:77:5"
.Ltext_14:
    .asciz "src/std/process/windows.lucb:78:5"
.Ltext_15:
    .asciz "null_foreign"
.Ltext_16:
    .asciz "src/std/process/windows.lucb:82:5"
.Ltext_17:
    .asciz "a child stream could not be inherited"
.Ltext_18:
    .asciz "a child stream has no handle"
.Ltext_19:
    .asciz "unreachable"
.Ltext_20:
    .asciz "src/std/process/windows.lucb:85:5"
.Ltext_21:
    .asciz "a child stream could not be measured"
.Ltext_22:
    .asciz "a child stream could not be read"
.Ltext_23:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_24:
    .asciz "memory.unset"
.Ltext_25:
    .asciz "src/std/process/windows.lucb:93:5"
.Ltext_26:
    .asciz "memory.exhausted"
.Ltext_27:
    .asciz "src/std/process/windows.lucb:95:9"
.Ltext_28:
    .asciz "src/std/process/windows.lucb:97:5"
.Ltext_29:
    .asciz "src/std/process/windows.lucb:102:5"
.Ltext_30:
    .asciz "src/std/process/windows.lucb:103:5"
.Ltext_31:
    .asciz "the child temporary directory is unavailable"
.Ltext_32:
    .asciz "0123456789abcdef"
.Ltext_33:
    .asciz "src/std/process/windows.lucb:111:13"
.Ltext_34:
    .asciz "shift count out of range"
.Ltext_35:
    .asciz "src/std/process/windows.lucb:112:13"
.Ltext_36:
    .asciz "src/std/process/windows.lucb:113:9"
.Ltext_37:
    .asciz "src/std/process/windows.lucb:114:9"
.Ltext_38:
    .asciz "a child capture file could not be created"
.Ltext_39:
    .asciz "a child capture descriptor could not be created"
.Ltext_40:
    .asciz "w+b"
.Ltext_41:
    .asciz "a child capture stream could not be created"
.Ltext_42:
    .asciz "no unused child capture name was found"
.Ltext_43:
    .asciz "src/std/process/windows.lucb:126:5"
.Ltext_44:
    .asciz "the process command is too long"
.Ltext_45:
    .asciz "src/std/process/windows.lucb:150:5"
.Ltext_46:
    .asciz "src/std/process/windows.lucb:153:5"
.Ltext_47:
    .asciz "src/std/process/windows.lucb:154:5"
.Ltext_48:
    .asciz "src/std/process/windows.lucb:159:13"
.Ltext_49:
    .asciz "src/std/process/windows.lucb:160:13"
.Ltext_50:
    .asciz "src/std/process/windows.lucb:161:9"
.Ltext_51:
    .asciz "src/std/process/windows.lucb:162:13"
.Ltext_52:
    .asciz "src/std/process/windows.lucb:163:13"
.Ltext_53:
    .asciz "src/std/process/windows.lucb:165:9"
.Ltext_54:
    .asciz "src/std/process/windows.lucb:166:9"
.Ltext_55:
    .asciz "src/std/process/windows.lucb:167:5"
.Ltext_56:
    .asciz "index out of bounds"
.Ltext_57:
    .asciz "src/std/process/windows.lucb:169:9"
.Ltext_58:
    .asciz "src/std/process/windows.lucb:170:9"
.Ltext_59:
    .asciz "src/std/process/windows.lucb:172:5"
.Ltext_60:
    .asciz "src/std/process/windows.lucb:173:5"
.Ltext_61:
    .asciz "src/std/process/windows.lucb:176:9"
.Ltext_62:
    .asciz "src/std/process/windows.lucb:179:9"
.Ltext_63:
    .asciz "src/std/process/windows.lucb:183:9"
.Ltext_64:
    .asciz "src/std/process/windows.lucb:185:5"
.Ltext_65:
    .asciz "src/std/process/windows.lucb:187:5"
.Ltext_66:
    .asciz "NUL"
.Ltext_67:
    .asciz "rb"
.Ltext_68:
    .asciz "the child input could not be opened"
.Ltext_69:
    .asciz "src/std/process/windows.lucb:189:5"
.Ltext_70:
    .asciz "src/std/process/windows.lucb:191:5"
.Ltext_71:
    .asciz "src/std/process/windows.lucb:193:5"
.Ltext_72:
    .asciz "src/std/process/windows.lucb:195:5"
.Ltext_73:
    .asciz "the process could not be started"
.Ltext_74:
    .asciz "src/std/process/windows.lucb:207:9"
.Ltext_75:
    .asciz "CreateProcess returned no process"
.Ltext_76:
    .asciz "src/std/process/windows.lucb:208:5"
.Ltext_77:
    .asciz "CreateProcess returned no thread"
.Ltext_78:
    .asciz "src/std/process/windows.lucb:209:5"
.Ltext_79:
    .asciz "src/std/process/windows.lucb:213:9"
.Ltext_80:
    .asciz "waiting for the process failed"
.Ltext_81:
    .asciz "src/std/process/windows.lucb:217:9"
.Ltext_82:
    .asciz "the process exit status is unavailable"
.Ltext_83:
    .asciz "src/std/process/windows.lucb:220:9"
.Ltext_84:
    .asciz ""
.Ltext_85:
    .asciz "src/std/process/windows.lucb:222:9"
.Ltext_86:
    .asciz "src/std/process/windows.lucb:223:5"
.Ltext_87:
    .asciz "src/std/process/windows.lucb:226:9"
.Ltext_88:
    .asciz "src/std/process/windows.lucb:227:5"
.Ltext_89:
    .asciz "src/std/process/module.lucb:172:9"
.Ltext_90:
    .asciz "integer overflow"

    .section .rdata,"dr"
    .p2align 3
