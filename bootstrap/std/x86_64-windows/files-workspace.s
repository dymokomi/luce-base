    .text

    .p2align 4
    .globl lb_files_workspace_0init
lb_files_workspace_0init:
    .seh_proc lb_files_workspace_0init
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
    .globl lb_files_canonical
lb_files_canonical:
    .seh_proc lb_files_canonical
    pushq %rbp
    .seh_pushreg %rbp
    subq $624, %rsp
    .seh_stackalloc 624
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 440(%rbp)
    movq %rdi, 616(%rbp)
    .seh_savereg %rdi, 616
    movq %rsi, 608(%rbp)
    .seh_savereg %rsi, 608
    movdqu %xmm6, 592(%rbp)
    .seh_savexmm %xmm6, 592
    movdqu %xmm7, 576(%rbp)
    .seh_savexmm %xmm7, 576
    movdqu %xmm8, 560(%rbp)
    .seh_savexmm %xmm8, 560
    movdqu %xmm9, 544(%rbp)
    .seh_savexmm %xmm9, 544
    movdqu %xmm10, 528(%rbp)
    .seh_savexmm %xmm10, 528
    movdqu %xmm11, 512(%rbp)
    .seh_savexmm %xmm11, 512
    movdqu %xmm12, 496(%rbp)
    .seh_savexmm %xmm12, 496
    movdqu %xmm13, 480(%rbp)
    .seh_savexmm %xmm13, 480
    movdqu %xmm14, 464(%rbp)
    .seh_savexmm %xmm14, 464
    movdqu %xmm15, 448(%rbp)
    .seh_savexmm %xmm15, 448
    movq %rbx, 432(%rbp)
    .seh_savereg %rbx, 432
    movq %r12, 424(%rbp)
    .seh_savereg %r12, 424
    movq %r13, 416(%rbp)
    .seh_savereg %r13, 416
    movq %r14, 408(%rbp)
    .seh_savereg %r14, 408
    movq %r15, 400(%rbp)
    .seh_savereg %r15, 400
    .seh_endprologue
    movq %rcx, 640(%rbp)
    movq %rdx, 648(%rbp)
    movq %r8, 656(%rbp)
    movq %r9, 664(%rbp)
    movq 648(%rbp), %rax
    movq %rax, 336(%rbp)
    leaq 336(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    movl $0, %eax
    movq %rax, 24(%rsp)
    leaq 296(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_files_19windows_path_handle
    addq $32, %rsp
    leaq 296(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_2
    jmp .L1_1
.L1_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 352(%rbp), %r13
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 440(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 440(%rbp), %rax
    movq 616(%rbp), %rdi
    movq 608(%rbp), %rsi
    movdqu 592(%rbp), %xmm6
    movdqu 576(%rbp), %xmm7
    movdqu 560(%rbp), %xmm8
    movdqu 544(%rbp), %xmm9
    movdqu 528(%rbp), %xmm10
    movdqu 512(%rbp), %xmm11
    movdqu 496(%rbp), %xmm12
    movdqu 480(%rbp), %xmm13
    movdqu 464(%rbp), %xmm14
    movdqu 448(%rbp), %xmm15
    movq 432(%rbp), %rbx
    movq 424(%rbp), %r12
    movq 416(%rbp), %r13
    movq 408(%rbp), %r14
    movq 400(%rbp), %r15
    leaq 624(%rbp), %rsp
    popq %rbp
    ret
.L1_1:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 56(%rbp)
    leaq 280(%rbp), %rax
    movq %rax, 24(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 16(%rbp)
    leaq 232(%rbp), %r15
.L1_5:
    movq 16(%rbp), %r10
    movq (%r10), %r12
    movq 16(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L1_7
    jmp .L1_8
.L1_8:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_7:
    movq %r13, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $65536, %rax
    movq %rax, 16(%rsp)
    movq $2, %rax
    movq %rax, 24(%rsp)
    leaq 208(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r14, %r11
    call *%r11
    addq $32, %rsp
    leaq 208(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $1, %ecx
    andl %ecx, %r14d
    testl %r14d, %r14d
    jne .L1_9
    jmp .L1_10
.L1_9:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_3(%rip), %r12
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
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_6
.L1_10:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq $32768, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L1_6:
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_12
    jmp .L1_11
.L1_12:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 352(%rbp), %r12
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
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    movq %r12, %rsi
    movq 440(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 440(%rbp), %rax
    movq 616(%rbp), %rdi
    movq 608(%rbp), %rsi
    movdqu 592(%rbp), %xmm6
    movdqu 576(%rbp), %xmm7
    movdqu 560(%rbp), %xmm8
    movdqu 544(%rbp), %xmm9
    movdqu 528(%rbp), %xmm10
    movdqu 512(%rbp), %xmm11
    movdqu 496(%rbp), %xmm12
    movdqu 480(%rbp), %xmm13
    movdqu 464(%rbp), %xmm14
    movdqu 448(%rbp), %xmm15
    movq 432(%rbp), %rbx
    movq 424(%rbp), %r12
    movq 416(%rbp), %r13
    movq 408(%rbp), %r14
    movq 400(%rbp), %r15
    leaq 624(%rbp), %rsp
    popq %rbp
    ret
.L1_11:
    movq %r15, %r10
    movq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 24(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 40(%rbp)
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 32(%rbp)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 40(%rbp), %rax
    movq %rax, 8(%rsp)
    movl 32(%rbp), %eax
    movq %rax, 16(%rsp)
    movl $0, %eax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call GetFinalPathNameByHandleW
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_63
    jmp .L1_17
.L1_63:
    movl %r14d, %r15d
    jmp .L1_18
.L1_17:
    movl 32(%rbp), %ecx
    cmpl %ecx, %r13d
    setae %al
    movzbl %al, %r15d
.L1_18:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L1_14
    jmp .L1_15
.L1_14:
    leaq 352(%rbp), %r13
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    leaq lb_files_failed(%rip), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    leaq .Ltext_4(%rip), %r15
    leaq 192(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq $41, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 176(%rbp), %rbx
    movq 32(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq 40(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq 16(%rbp), %r10
    movq (%r10), %r14
    movq 48(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L1_20
    jmp .L1_19
.L1_20:
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
.L1_19:
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    movq %r13, %rsi
    movq 440(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 440(%rbp), %rax
    movq 616(%rbp), %rdi
    movq 608(%rbp), %rsi
    movdqu 592(%rbp), %xmm6
    movdqu 576(%rbp), %xmm7
    movdqu 560(%rbp), %xmm8
    movdqu 544(%rbp), %xmm9
    movdqu 528(%rbp), %xmm10
    movdqu 512(%rbp), %xmm11
    movdqu 496(%rbp), %xmm12
    movdqu 480(%rbp), %xmm13
    movdqu 464(%rbp), %xmm14
    movdqu 448(%rbp), %xmm15
    movq 432(%rbp), %rbx
    movq 424(%rbp), %r12
    movq 416(%rbp), %r13
    movq 408(%rbp), %r14
    movq 400(%rbp), %r15
    leaq 624(%rbp), %rsp
    popq %rbp
    ret
.L1_15:
.L1_16:
    movl $4, %ecx
    cmpl %ecx, %r13d
    setae %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L1_25
    jmp .L1_64
.L1_64:
    movl %ebx, %r14d
    jmp .L1_26
.L1_25:
    movq $0, %rax
    movq 32(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 40(%rbp), %r10
    movzwl (%r10), %ebx
    movl $92, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r14d
.L1_26:
    movzbl %r14b, %ebx
    testl %ebx, %ebx
    jne .L1_27
    jmp .L1_65
.L1_65:
    movl %ebx, %r14d
    jmp .L1_28
.L1_27:
    movq $1, %rax
    movq 32(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 40(%rbp), %rax
    movq $2, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
    movl $92, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r14d
.L1_28:
    movzbl %r14b, %ebx
    testl %ebx, %ebx
    jne .L1_29
    jmp .L1_66
.L1_66:
    movl %ebx, %r14d
    jmp .L1_30
.L1_29:
    movq $2, %rax
    movq 32(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 40(%rbp), %rax
    movq $4, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
    movl $63, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r14d
.L1_30:
    movzbl %r14b, %ebx
    testl %ebx, %ebx
    jne .L1_31
    jmp .L1_67
.L1_67:
    movl %ebx, %r14d
    jmp .L1_32
.L1_31:
    movq $3, %rax
    movq 32(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 40(%rbp), %rax
    movq $6, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
    movl $92, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r14d
.L1_32:
    movzbl %r14b, %ebx
    testl %ebx, %ebx
    jne .L1_22
    jmp .L1_23
.L1_22:
    movl $8, %ecx
    cmpl %ecx, %r13d
    setae %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L1_36
    jmp .L1_68
.L1_68:
    movl %ebx, %r14d
    jmp .L1_37
.L1_36:
    movq $4, %rax
    movq 32(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 40(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
    movl $85, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r14d
.L1_37:
    movzbl %r14b, %ebx
    testl %ebx, %ebx
    jne .L1_38
    jmp .L1_69
.L1_69:
    movl %ebx, %r14d
    jmp .L1_39
.L1_38:
    movq $5, %rax
    movq 32(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 40(%rbp), %rax
    movq $10, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
    movl $78, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r14d
.L1_39:
    movzbl %r14b, %ebx
    testl %ebx, %ebx
    jne .L1_40
    jmp .L1_70
.L1_70:
    movl %ebx, %r14d
    jmp .L1_41
.L1_40:
    movq $6, %rax
    movq 32(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 40(%rbp), %rax
    movq $12, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
    movl $67, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r14d
.L1_41:
    movzbl %r14b, %ebx
    testl %ebx, %ebx
    jne .L1_42
    jmp .L1_71
.L1_71:
    movl %ebx, %r14d
    jmp .L1_43
.L1_42:
    movq $7, %rax
    movq 32(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 40(%rbp), %rax
    movq $14, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
    movl $92, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r14d
.L1_43:
    movzbl %r14b, %ebx
    testl %ebx, %ebx
    jne .L1_33
    jmp .L1_34
.L1_33:
    movq $6, %rax
    movq 32(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 40(%rbp), %rax
    movq $12, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $92, %eax
    movq %rbx, %r10
    movw %ax, (%r10)
    movq $6, %rax
    movq %rax, %rbx
    jmp .L1_35
.L1_34:
    movq $4, %rax
    movq %rax, %rbx
.L1_35:
    movq %rbx, %r14
    jmp .L1_24
.L1_23:
    movq $0, %rax
    movq %rax, %r14
.L1_24:
    leaq 160(%rbp), %rax
    movq %rax, 8(%rbp)
    movl %r13d, %r15d
    movq 32(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    cmpq %rbx, %r14
    jb 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %rbx, %r15
    jb 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r15, %r14
    jbe .L1_44
.L1_45:
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_44:
    movq $2, %rcx
    movq %r14, %rbx
    imulq %rcx, %rbx
    movq 40(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %r15, %r13
    subq %r14, %r13
    leaq 144(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    leaq lb_files_15invalid_options(%rip), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movl %ebx, %eax
    movq %rax, 16(%rsp)
    leaq 96(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_12windows_text_narrow
    addq $48, %rsp
    leaq 96(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_47
    jmp .L1_46
.L1_47:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 352(%rbp), %r13
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 80(%rbp), %rbx
    movq 32(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq 40(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq 16(%rbp), %r10
    movq (%r10), %r14
    movq 48(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L1_49
    jmp .L1_48
.L1_49:
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
.L1_48:
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %ebx
    movq %r13, %rsi
    movq 440(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 440(%rbp), %rax
    movq 616(%rbp), %rdi
    movq 608(%rbp), %rsi
    movdqu 592(%rbp), %xmm6
    movdqu 576(%rbp), %xmm7
    movdqu 560(%rbp), %xmm8
    movdqu 544(%rbp), %xmm9
    movdqu 528(%rbp), %xmm10
    movdqu 512(%rbp), %xmm11
    movdqu 496(%rbp), %xmm12
    movdqu 480(%rbp), %xmm13
    movdqu 464(%rbp), %xmm14
    movdqu 448(%rbp), %xmm15
    movq 432(%rbp), %rbx
    movq 424(%rbp), %r12
    movq 416(%rbp), %r13
    movq 408(%rbp), %r14
    movq 400(%rbp), %r15
    leaq 624(%rbp), %rsp
    popq %rbp
    ret
.L1_46:
    movq %r12, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 8(%rbp), %r10
    movq (%r10), %rbx
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rax
    movq %rax, %r14
.L1_51:
    cmpq %r13, %r14
    jae .L1_54
.L1_52:
    movq %rbx, %r12
    addq %r14, %r12
    movq %r12, %r10
    movzbl (%r10), %r15d
    movl $92, %ecx
    cmpl %ecx, %r15d
    jne .L1_56
.L1_55:
    movl $47, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L1_57
.L1_56:
.L1_57:
.L1_53:
    movq $1, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r14
    jmp .L1_51
.L1_54:
    leaq 352(%rbp), %rbx
    movq 8(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 64(%rbp), %r12
    movq 32(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 40(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq 16(%rbp), %r10
    movq (%r10), %r13
    movq 48(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L1_59
    jmp .L1_58
.L1_59:
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
.L1_58:
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CloseHandle
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 440(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 440(%rbp), %rax
    movq 616(%rbp), %rdi
    movq 608(%rbp), %rsi
    movdqu 592(%rbp), %xmm6
    movdqu 576(%rbp), %xmm7
    movdqu 560(%rbp), %xmm8
    movdqu 544(%rbp), %xmm9
    movdqu 528(%rbp), %xmm10
    movdqu 512(%rbp), %xmm11
    movdqu 496(%rbp), %xmm12
    movdqu 480(%rbp), %xmm13
    movdqu 464(%rbp), %xmm14
    movdqu 448(%rbp), %xmm15
    movq 432(%rbp), %rbx
    movq 424(%rbp), %r12
    movq 416(%rbp), %r13
    movq 408(%rbp), %r14
    movq 400(%rbp), %r15
    leaq 624(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_files_26create_temporary_directory
lb_files_26create_temporary_directory:
    .seh_proc lb_files_26create_temporary_directory
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
    movq %rax, 448(%rbp)
    movq 768(%rbp), %rax
    movl %eax, 432(%rbp)
    leaq 416(%rbp), %rax
    movq %rax, 32(%rbp)
    leaq 448(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r12
    leaq 400(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq .Ltext_13(%rip), %rbx
    leaq 384(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r12, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 336(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_paths_join
    addq $64, %rsp
    leaq 336(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_2
    jmp .L2_1
.L2_2:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 464(%rbp), %r13
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 552(%rbp), %rdi
    movq $48, %rdx
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
.L2_1:
    movq %r12, %r10
    movq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 320(%rbp), %rax
    movq %rax, 160(%rbp)
    leaq .Ltext_14(%rip), %rax
    movq %rax, 152(%rbp)
    leaq 304(%rbp), %r15
    movq 152(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, 144(%rbp)
    movq $16, %rax
    movq 144(%rbp), %r10
    movq %rax, (%r10)
    movq %r15, %r10
    movq 160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 32(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 136(%rbp)
    movq 32(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 128(%rbp)
    movq 128(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 120(%rbp)
    movq 120(%rbp), %rax
    movq $32, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 112(%rbp)
    leaq 288(%rbp), %rax
    movq %rax, 104(%rbp)
    leaq 272(%rbp), %rax
    movq %rax, 96(%rbp)
    movq 96(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 88(%rbp)
    leaq 240(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 80(%rbp)
    leaq 432(%rbp), %rax
    movq %rax, 64(%rbp)
    leaq 184(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    leaq 216(%rbp), %rax
    movq %rax, 48(%rbp)
    leaq lb_files_14already_exists(%rip), %rax
    movq %rax, 40(%rbp)
    movq $0, %rax
    movq %rax, 24(%rbp)
.L2_4:
    movq 24(%rbp), %rax
    movq $128, %rcx
    cmpq %rcx, %rax
    jae .L2_6
.L2_5:
    movq 104(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq 104(%rbp), %rax
    movq 96(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq 88(%rbp), %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq 96(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 240(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_os_12random_bytes
    addq $48, %rsp
    movq 80(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_8
    jmp .L2_7
.L2_8:
    leaq 464(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 16(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $48, %rsp
    movq 32(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    movq %rbx, %rsi
    movq 552(%rbp), %rdi
    movq $48, %rdx
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
.L2_7:
    movq $0, %rax
    movq %rax, 8(%rbp)
.L2_10:
    movq 8(%rbp), %rax
    movq $16, %rcx
    cmpq %rcx, %rax
    jae .L2_13
.L2_11:
    movq 8(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq 112(%rbp), %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 136(%rbp), %rax
    movq %rax, %r14
    addq %r13, %r14
    movq 104(%rbp), %rax
    movq 8(%rbp), %rcx
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %r10
    movzbl (%r10), %ebx
.L2_15:
    movl $4, %ecx
    movl %ebx, %r15d
    shrl %cl, %r15d
    movzbl %r15b, %r15d
    movl %r15d, %r15d
    movq $16, %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_10(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 152(%rbp), %rax
    movq %r15, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movq %r14, %r10
    movb %r15b, (%r10)
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq 136(%rbp), %rax
    movq %r15, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq 72(%rbp), %r10
    movzbl (%r10), %r12d
    movl $15, %ecx
    andl %ecx, %r12d
    movl %r12d, %r12d
    movq 152(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq %r15, %r10
    movb %r12b, (%r10)
.L2_12:
    movq 8(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, 8(%rbp)
    jmp .L2_10
.L2_13:
    movq 32(%rbp), %r10
    movq (%r10), %rbx
    movq 64(%rbp), %r10
    movl (%r10), %r12d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl %r12d, %eax
    movq %rax, 16(%rsp)
    leaq 184(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_files_16create_directory
    addq $32, %rsp
    movq 56(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_19
    jmp .L2_18
.L2_19:
    movq 0(%rbp), %r10
    movq 48(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L2_16
.L2_18:
    jmp .L2_17
.L2_16:
    movq 48(%rbp), %r10
    movl (%r10), %ebx
    movq 40(%rbp), %r10
    movl (%r10), %r12d
    cmpl %r12d, %ebx
    jne .L2_21
.L2_20:
    movq 24(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, 24(%rbp)
    jmp .L2_4
.L2_21:
.L2_22:
    leaq 464(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl %ebx, (%r10)
    movq 48(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq $8, %rcx
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $48, %rsp
    movq 32(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    movq %r12, %rsi
    movq 552(%rbp), %rdi
    movq $48, %rdx
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
.L2_17:
    leaq 464(%rbp), %rbx
    movq 32(%rbp), %r10
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
    movq 552(%rbp), %rdi
    movq $48, %rdx
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
.L2_6:
    leaq 464(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_14already_exists(%rip), %r13
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
    movq $44, %rax
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
    subq $48, %rsp
    movq 32(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    movq %rbx, %rsi
    movq 552(%rbp), %rdi
    movq $48, %rdx
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

    .p2align 4
    .globl lb_files_11remove_tree
lb_files_11remove_tree:
    .seh_proc lb_files_11remove_tree
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
    movq %rax, 768(%rbp)
    leaq 640(%rbp), %r13
    leaq 768(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 64(%rbp)
    subq $32, %rsp
    movq 64(%rbp), %rax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    leaq 328(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_files_metadata
    addq $32, %rsp
    leaq 328(%rbp), %r14
    movq $152, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_4
    jmp .L3_3
.L3_4:
    movq $128, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 488(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L3_1
.L3_3:
    leaq 512(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movups 64(%r10), %xmm8
    movups %xmm8, 64(%r11)
    movups 80(%r10), %xmm8
    movups %xmm8, 80(%r11)
    movups 96(%r10), %xmm8
    movups %xmm8, 96(%r11)
    movups 112(%r10), %xmm8
    movups %xmm8, 112(%r11)
    jmp .L3_2
.L3_1:
    movq %r12, %r10
    movl (%r10), %ebx
    leaq lb_files_missing(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    cmpl %r13d, %ebx
    jne .L3_6
.L3_5:
    leaq 784(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 856(%rbp), %rdi
    movq $32, %rdx
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
.L3_8:
    jmp .L3_7
.L3_6:
.L3_7:
    leaq 784(%rbp), %r13
    movq %r13, %r10
    movl %ebx, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 856(%rbp), %rdi
    movq $32, %rdx
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
.L3_9:
.L3_2:
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
    movups 64(%r10), %xmm8
    movups %xmm8, 64(%r11)
    movups 80(%r10), %xmm8
    movups %xmm8, 80(%r11)
    movups 96(%r10), %xmm8
    movups %xmm8, 96(%r11)
    movups 112(%r10), %xmm8
    movups %xmm8, 112(%r11)
    movq %r13, %r10
    movzbl (%r10), %r14d
    movl $2, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L3_11
.L3_10:
    subq $32, %rsp
    movq 64(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 296(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_11remove_file
    addq $32, %rsp
    leaq 296(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_14
    jmp .L3_13
.L3_14:
    leaq 784(%rbp), %rbx
    movq %r13, %r10
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
    movq 856(%rbp), %rdi
    movq $32, %rdx
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
.L3_15:
.L3_13:
    leaq 784(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 856(%rbp), %rdi
    movq $32, %rdx
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
.L3_16:
    jmp .L3_12
.L3_11:
.L3_12:
    leaq 280(%rbp), %r13
    subq $32, %rsp
    movq 64(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 232(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_list
    addq $32, %rsp
    leaq 232(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_18
    jmp .L3_17
.L3_18:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 784(%rbp), %r12
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
    movq 856(%rbp), %rdi
    movq $32, %rdx
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
.L3_19:
.L3_17:
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 56(%rbp)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    leaq 216(%rbp), %rax
    movq %rax, 48(%rbp)
    leaq 200(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 184(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    leaq 136(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 24(%rbp)
    leaq 104(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 16(%rbp)
    movq $0, %rax
    movq %rax, %rbx
.L3_20:
    cmpq %r15, %rbx
    jae .L3_23
.L3_21:
    movq $16, %rcx
    movq %rbx, %r14
    imulq %rcx, %r14
    movq 56(%rbp), %rax
    movq %r14, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq 48(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq 64(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r14
    movq 64(%rbp), %rax
    movq 40(%rbp), %r10
    movq %rax, (%r10)
    movq 32(%rbp), %r10
    movq %r14, (%r10)
    subq $64, %rsp
    movq 40(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 48(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 136(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_paths_join
    addq $64, %rsp
    movq 24(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L3_25
    jmp .L3_24
.L3_25:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 784(%rbp), %r12
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
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_12release_list
    addq $48, %rsp
    movq %r12, %rsi
    movq 856(%rbp), %rdi
    movq $32, %rdx
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
.L3_26:
.L3_24:
    movq 0(%rbp), %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 8(%rbp), %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 8(%rsp)
    leaq 104(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_11remove_tree
    addq $32, %rsp
    movq 16(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L3_28
    jmp .L3_27
.L3_28:
    leaq 784(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    subq $48, %rsp
    movq 8(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_12release_list
    addq $48, %rsp
    movq %rbx, %rsi
    movq 856(%rbp), %rdi
    movq $32, %rdx
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
.L3_29:
.L3_27:
    subq $48, %rsp
    movq 8(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
.L3_22:
    movq $1, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %rbx
    jmp .L3_20
.L3_23:
    subq $32, %rsp
    movq 64(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 72(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_16remove_directory
    addq $32, %rsp
    leaq 72(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_31
    jmp .L3_30
.L3_31:
    leaq 784(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_12release_list
    addq $48, %rsp
    movq %rbx, %rsi
    movq 856(%rbp), %rdi
    movq $32, %rdx
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
.L3_32:
.L3_30:
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_12release_list
    addq $48, %rsp
    leaq 784(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 856(%rbp), %rdi
    movq $32, %rdx
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
    .seh_endproc

    .p2align 4
    .globl lb_files_TemporaryDirectory_init
lb_files_TemporaryDirectory_init:
    .seh_proc lb_files_TemporaryDirectory_init
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
    movq %rax, 136(%rbp)
    leaq 152(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 0(%rbp)
    leaq 120(%rbp), %r15
    leaq 136(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r12
    leaq 88(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L4_2
.L4_1:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call strlen
    addq $32, %rsp
    movq %rax, %r12
    leaq 72(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    leaq 104(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L4_3
.L4_2:
    subq $32, %rsp
    leaq 56(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_io_path_temp
    addq $32, %rsp
    leaq 56(%rbp), %rbx
    leaq 104(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L4_3:
    leaq 104(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r15, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl $448, %eax
    movq %rax, 16(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_files_26create_temporary_directory
    addq $32, %rsp
    leaq 8(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_5
    jmp .L4_4
.L4_5:
    movq $16, %rcx
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
.L4_6:
.L4_4:
    movq %r12, %r10
    movq 0(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 160(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
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
    .seh_endproc

    .p2align 4
    .globl lb_files_TemporaryDirectory_path
lb_files_TemporaryDirectory_path:
    .seh_proc lb_files_TemporaryDirectory_path
    pushq %rbp
    .seh_pushreg %rbp
    subq $224, %rsp
    .seh_stackalloc 224
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 40(%rbp)
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
    movq %rbx, 32(%rbp)
    .seh_savereg %rbx, 32
    movq %r12, 24(%rbp)
    .seh_savereg %r12, 24
    .seh_endprologue
    movq %rcx, 240(%rbp)
    movq %rdx, 248(%rbp)
    movq %r8, 256(%rbp)
    movq %r9, 264(%rbp)
    movq 248(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 0(%rbp), %r10
    movq (%r10), %r12
    leaq 8(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rsi
    movq 40(%rbp), %rdi
    movq $16, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 40(%rbp), %rax
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
    movq 32(%rbp), %rbx
    movq 24(%rbp), %r12
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L5_1:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_files_TemporaryDirectory_12release_name
lb_files_TemporaryDirectory_12release_name:
    .seh_proc lb_files_TemporaryDirectory_12release_name
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
    movq %rax, 112(%rbp)
    leaq 112(%rbp), %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L6_2
.L6_1:
    leaq 96(%rbp), %r13
    movq $16, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L6_4
    jmp .L6_5
.L6_4:
    leaq 80(%rbp), %rbx
    movq 8(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L6_6
.L6_5:
    leaq .Ltext_23(%rip), %rbx
    leaq 64(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $40, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_24(%rip), %rbx
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
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L6_6:
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rbp), %r15
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r14
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq %r14, %r11
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
    call lb_strings_release
    addq $48, %rsp
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_25(%rip), %r14
    leaq 32(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $0, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 16(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L6_3
.L6_2:
.L6_3:
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
    .globl lb_files_TemporaryDirectory_close
lb_files_TemporaryDirectory_close:
    .seh_proc lb_files_TemporaryDirectory_close
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
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L7_2
.L7_1:
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
.L7_4:
    jmp .L7_3
.L7_2:
.L7_3:
    movq %r12, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_11remove_tree
    addq $32, %rsp
    leaq 8(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_6
    jmp .L7_5
.L7_6:
    leaq 48(%rbp), %rbx
    movq %r13, %r10
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
.L7_7:
.L7_5:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_TemporaryDirectory_12release_name
    addq $32, %rsp
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
    .globl lb_files_TemporaryDirectory_destroy
lb_files_TemporaryDirectory_destroy:
    .seh_proc lb_files_TemporaryDirectory_destroy
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
    movq %rax, 64(%rbp)
    leaq 64(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_files_TemporaryDirectory_close
    addq $32, %rsp
    leaq 8(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_4
    jmp .L8_3
.L8_4:
    leaq 40(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L8_1
.L8_3:
    jmp .L8_2
.L8_1:
.L8_2:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_files_TemporaryDirectory_12release_name
    addq $32, %rsp
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
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_files_workspace_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_1:
    .asciz "memory.unset"
.Ltext_2:
    .asciz "src/std/files/workspace.lucb:14:9"
.Ltext_3:
    .asciz "memory.exhausted"
.Ltext_4:
    .asciz "the filesystem path could not be resolved"
.Ltext_5:
    .asciz "src/std/files/workspace.lucb:18:13"
.Ltext_6:
    .asciz "src/std/files/workspace.lucb:20:9"
.Ltext_7:
    .asciz "src/std/files/workspace.lucb:22:13"
.Ltext_8:
    .asciz "src/std/files/workspace.lucb:23:17"
.Ltext_9:
    .asciz "src/std/files/workspace.lucb:25:9"
.Ltext_10:
    .asciz "index out of bounds"
.Ltext_11:
    .asciz "src/std/files/workspace.lucb:30:9"
.Ltext_12:
    .asciz "unreachable"
.Ltext_13:
    .asciz ".luce-00000000000000000000000000000000"
.Ltext_14:
    .asciz "0123456789abcdef"
.Ltext_15:
    .asciz "src/std/files/workspace.lucb:42:5"
.Ltext_16:
    .asciz "src/std/files/workspace.lucb:48:13"
.Ltext_17:
    .asciz "shift count out of range"
.Ltext_18:
    .asciz "src/std/files/workspace.lucb:49:13"
.Ltext_19:
    .asciz "src/std/files/workspace.lucb:52:17"
.Ltext_20:
    .asciz "no unused temporary directory name was found"
.Ltext_21:
    .asciz "src/std/files/workspace.lucb:56:5"
.Ltext_22:
    .asciz "src/std/files/workspace.lucb:90:9"
.Ltext_23:
    .asciz "a temporary directory lost its allocator"
.Ltext_24:
    .asciz "src/std/files/workspace.lucb:94:13"
.Ltext_25:
    .asciz ""
.Ltext_26:
    .asciz "integer overflow"

    .section .rdata,"dr"
    .p2align 3
