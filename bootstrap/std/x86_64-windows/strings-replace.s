    .weak lb_memory_copy_0g1_u8
    .text

    .p2align 4
    .globl lb_strings_replace_0init
lb_strings_replace_0init:
    .seh_proc lb_strings_replace_0init
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
    .globl lb_strings_replace
lb_strings_replace:
    .seh_proc lb_strings_replace
    pushq %rbp
    .seh_pushreg %rbp
    subq $976, %rsp
    .seh_stackalloc 976
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 792(%rbp)
    movq %rdi, 968(%rbp)
    .seh_savereg %rdi, 968
    movq %rsi, 960(%rbp)
    .seh_savereg %rsi, 960
    movdqu %xmm6, 944(%rbp)
    .seh_savexmm %xmm6, 944
    movdqu %xmm7, 928(%rbp)
    .seh_savexmm %xmm7, 928
    movdqu %xmm8, 912(%rbp)
    .seh_savexmm %xmm8, 912
    movdqu %xmm9, 896(%rbp)
    .seh_savexmm %xmm9, 896
    movdqu %xmm10, 880(%rbp)
    .seh_savexmm %xmm10, 880
    movdqu %xmm11, 864(%rbp)
    .seh_savexmm %xmm11, 864
    movdqu %xmm12, 848(%rbp)
    .seh_savexmm %xmm12, 848
    movdqu %xmm13, 832(%rbp)
    .seh_savexmm %xmm13, 832
    movdqu %xmm14, 816(%rbp)
    .seh_savexmm %xmm14, 816
    movdqu %xmm15, 800(%rbp)
    .seh_savexmm %xmm15, 800
    movq %rbx, 784(%rbp)
    .seh_savereg %rbx, 784
    movq %r12, 776(%rbp)
    .seh_savereg %r12, 776
    movq %r13, 768(%rbp)
    .seh_savereg %r13, 768
    movq %r14, 760(%rbp)
    .seh_savereg %r14, 760
    movq %r15, 752(%rbp)
    .seh_savereg %r15, 752
    .seh_endprologue
    movq %rcx, 992(%rbp)
    movq %rdx, 1000(%rbp)
    movq %r8, 1008(%rbp)
    movq %r9, 1016(%rbp)
    movq 1000(%rbp), %r10
    leaq 688(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1008(%rbp), %r10
    leaq 672(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1016(%rbp), %r10
    leaq 656(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1024(%rbp), %rax
    movq %rax, 640(%rbp)
    movq 1032(%rbp), %r10
    leaq 624(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 672(%rbp), %rax
    movq %rax, 320(%rbp)
    movq 320(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 312(%rbp)
    movq 312(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L1_2
.L1_1:
    leaq 704(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_17invalid_separator(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_0(%rip), %r13
    leaq 608(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 792(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 792(%rbp), %rax
    movq 968(%rbp), %rdi
    movq 960(%rbp), %rsi
    movdqu 944(%rbp), %xmm6
    movdqu 928(%rbp), %xmm7
    movdqu 912(%rbp), %xmm8
    movdqu 896(%rbp), %xmm9
    movdqu 880(%rbp), %xmm10
    movdqu 864(%rbp), %xmm11
    movdqu 848(%rbp), %xmm12
    movdqu 832(%rbp), %xmm13
    movdqu 816(%rbp), %xmm14
    movdqu 800(%rbp), %xmm15
    movq 784(%rbp), %rbx
    movq 776(%rbp), %r12
    movq 768(%rbp), %r13
    movq 760(%rbp), %r14
    movq 752(%rbp), %r15
    leaq 976(%rbp), %rsp
    popq %rbp
    ret
.L1_4:
    jmp .L1_3
.L1_2:
.L1_3:
    leaq 688(%rbp), %rax
    movq %rax, 304(%rbp)
    movq 304(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 296(%rbp)
    movq 296(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 288(%rbp)
    leaq 640(%rbp), %rax
    movq %rax, 280(%rbp)
    leaq 592(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 88(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 272(%rbp)
    leaq 656(%rbp), %rax
    movq %rax, 264(%rbp)
    movq 264(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 256(%rbp)
    leaq 584(%rbp), %rax
    movq %rax, 248(%rbp)
    leaq 568(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 240(%rbp)
    movq 288(%rbp), %rax
    movq %rax, 112(%rbp)
    movq $0, %rax
    movq %rax, 104(%rbp)
    movq $0, %rax
    movq %rax, 96(%rbp)
.L1_5:
    movq 280(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_51
    jmp .L1_8
.L1_51:
    movl %r12d, %ebx
    jmp .L1_9
.L1_8:
    movq 104(%rbp), %rax
    cmpq %rbx, %rax
    setb %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L1_9:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L1_6
    jmp .L1_7
.L1_6:
    subq $64, %rsp
    movq 304(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 320(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq 96(%rbp), %rax
    movq %rax, 24(%rsp)
    leaq 592(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_strings_9find_from
    addq $64, %rsp
    movq 272(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_10
    jmp .L1_11
.L1_10:
    movq 88(%rbp), %r10
    movq (%r10), %rbx
    jmp .L1_12
.L1_11:
    jmp .L1_7
.L1_13:
.L1_12:
    movq 256(%rbp), %r10
    movq (%r10), %r12
    movq 312(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r12
    jb .L1_15
.L1_14:
    movq %r12, %r13
    subq %r14, %r13
    subq $32, %rsp
    movq 112(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq 248(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %r13d
    movq 248(%rbp), %r10
    movq (%r10), %r15
    movq 80(%rbp), %r10
    movq %r15, (%r10)
    movq 240(%rbp), %r10
    movb %r13b, (%r10)
    movq 240(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_17
    jmp .L1_18
.L1_17:
    jmp .L1_19
.L1_18:
    leaq 704(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
    leaq 552(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 792(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 792(%rbp), %rax
    movq 968(%rbp), %rdi
    movq 960(%rbp), %rsi
    movdqu 944(%rbp), %xmm6
    movdqu 928(%rbp), %xmm7
    movdqu 912(%rbp), %xmm8
    movdqu 896(%rbp), %xmm9
    movdqu 880(%rbp), %xmm10
    movdqu 864(%rbp), %xmm11
    movdqu 848(%rbp), %xmm12
    movdqu 832(%rbp), %xmm13
    movdqu 816(%rbp), %xmm14
    movdqu 800(%rbp), %xmm15
    movq 784(%rbp), %rbx
    movq 776(%rbp), %r12
    movq 768(%rbp), %r13
    movq 760(%rbp), %r14
    movq 752(%rbp), %r15
    leaq 976(%rbp), %rsp
    popq %rbp
    ret
.L1_20:
.L1_19:
    movq %r15, %r12
    jmp .L1_16
.L1_15:
    movq %r14, %r13
    subq %r12, %r13
    movq 112(%rbp), %rax
    movq %r13, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %r13, %r12
.L1_16:
    movq 312(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 104(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
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
    movq %r12, %rax
    movq %rax, 112(%rbp)
    movq %r14, %rax
    movq %rax, 104(%rbp)
    movq %r13, %rax
    movq %rax, 96(%rbp)
    jmp .L1_5
.L1_7:
    leaq 624(%rbp), %r12
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_24
    jmp .L1_22
.L1_24:
    movq %r12, %r10
    movq (%r10), %rbx
.L1_21:
    movq 112(%rbp), %rax
    cmpq %rbx, %rax
    jbe .L1_26
.L1_25:
    leaq 704(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_16output_too_large(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_6(%rip), %r13
    leaq 536(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 792(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 792(%rbp), %rax
    movq 968(%rbp), %rdi
    movq 960(%rbp), %rsi
    movdqu 944(%rbp), %xmm6
    movdqu 928(%rbp), %xmm7
    movdqu 912(%rbp), %xmm8
    movdqu 896(%rbp), %xmm9
    movdqu 880(%rbp), %xmm10
    movdqu 864(%rbp), %xmm11
    movdqu 848(%rbp), %xmm12
    movdqu 832(%rbp), %xmm13
    movdqu 816(%rbp), %xmm14
    movdqu 800(%rbp), %xmm15
    movq 784(%rbp), %rbx
    movq 776(%rbp), %r12
    movq 768(%rbp), %r13
    movq 760(%rbp), %r14
    movq 752(%rbp), %r15
    leaq 976(%rbp), %rsp
    popq %rbp
    ret
.L1_28:
    jmp .L1_27
.L1_26:
.L1_27:
    jmp .L1_23
.L1_22:
.L1_23:
    leaq 520(%rbp), %rax
    movq %rax, 72(%rbp)
    subq $32, %rsp
    movq 112(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 472(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_17terminated_buffer
    addq $32, %rsp
    leaq 472(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_30
    jmp .L1_29
.L1_30:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 704(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
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
    movq 792(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 792(%rbp), %rax
    movq 968(%rbp), %rdi
    movq 960(%rbp), %rsi
    movdqu 944(%rbp), %xmm6
    movdqu 928(%rbp), %xmm7
    movdqu 912(%rbp), %xmm8
    movdqu 896(%rbp), %xmm9
    movdqu 880(%rbp), %xmm10
    movdqu 864(%rbp), %xmm11
    movdqu 848(%rbp), %xmm12
    movdqu 832(%rbp), %xmm13
    movdqu 816(%rbp), %xmm14
    movdqu 800(%rbp), %xmm15
    movq 784(%rbp), %rbx
    movq 776(%rbp), %r12
    movq 768(%rbp), %r13
    movq 760(%rbp), %r14
    movq 752(%rbp), %r15
    leaq 976(%rbp), %rsp
    popq %rbp
    ret
.L1_31:
.L1_29:
    movq %r13, %r10
    movq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 456(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 232(%rbp)
    movq 72(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 216(%rbp)
    leaq 424(%rbp), %rax
    movq %rax, 200(%rbp)
    movq 200(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 192(%rbp)
    leaq 408(%rbp), %rax
    movq %rax, 184(%rbp)
    movq 184(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 176(%rbp)
    leaq 392(%rbp), %rax
    movq %rax, 168(%rbp)
    movq 168(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 160(%rbp)
    leaq 656(%rbp), %rax
    movq %rax, 152(%rbp)
    movq 152(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 144(%rbp)
    movq $0, %rax
    movq %rax, 64(%rbp)
    movq $0, %rax
    movq %rax, 56(%rbp)
    movq $0, %rax
    movq %rax, 48(%rbp)
.L1_32:
    movq 48(%rbp), %rax
    movq 104(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L1_34
.L1_33:
    subq $64, %rsp
    movq 304(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 320(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq 64(%rbp), %rax
    movq %rax, 24(%rsp)
    leaq 456(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_strings_9find_from
    addq $64, %rsp
    movq 232(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_35
    jmp .L1_36
.L1_35:
    movq 24(%rbp), %r10
    movq (%r10), %r13
    jmp .L1_37
.L1_36:
    leaq .Ltext_7(%rip), %rbx
    leaq 440(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $39, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_8(%rip), %rbx
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
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_37:
    movq %r13, %rax
    movq 64(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 224(%rbp)
    movq 72(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    movq 216(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    movq %rax, 208(%rbp)
    movq 56(%rbp), %rax
    movq 208(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rax
    movq 208(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 56(%rbp), %rax
    movq 8(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L1_38
.L1_39:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_38:
    movq 56(%rbp), %rax
    movq 16(%rbp), %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq 8(%rbp), %rax
    movq 56(%rbp), %rcx
    movq %rax, %r12
    subq %rcx, %r12
    movq 200(%rbp), %r10
    movq %r14, (%r10)
    movq 192(%rbp), %r10
    movq %r12, (%r10)
    movq 304(%rbp), %r10
    movq (%r10), %r14
    movq 296(%rbp), %r10
    movq (%r10), %r12
    movq $1, %rcx
    addq %rcx, %r12
    movq 64(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 64(%rbp), %rax
    cmpq %r13, %rax
    jbe .L1_40
.L1_41:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_40:
    movq 64(%rbp), %rax
    movq %rax, %r12
    addq %r14, %r12
    movq 64(%rbp), %rcx
    movq %r13, %rbx
    subq %rcx, %rbx
    movq 184(%rbp), %r10
    movq %r12, (%r10)
    movq 176(%rbp), %r10
    movq %rbx, (%r10)
    subq $64, %rsp
    movq 200(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 184(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 224(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_copy_0g1_u8
    addq $64, %rsp
    movq 224(%rbp), %rax
    movq 56(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 208(%rbp), %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rcx
    cmpq %rcx, %rbx
    jbe .L1_42
.L1_43:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_42:
    movq 16(%rbp), %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 8(%rbp), %rax
    movq %rax, %r14
    subq %rbx, %r14
    movq 168(%rbp), %r10
    movq %r12, (%r10)
    movq 160(%rbp), %r10
    movq %r14, (%r10)
    movq 144(%rbp), %r10
    movq (%r10), %r12
    subq $64, %rsp
    movq 168(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 152(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_copy_0g1_u8
    addq $64, %rsp
    movq 144(%rbp), %r10
    movq (%r10), %r12
    movq %rbx, %rax
    movq %r12, %rcx
    addq %rcx, %rax
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
    movq %rax, %r12
    movq 312(%rbp), %r10
    movq (%r10), %r14
    movq %r13, %rax
    movq %r14, %rcx
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
    movq %rax, %r15
    movq 48(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r15, %rax
    movq %rax, 64(%rbp)
    movq %r12, %rax
    movq %rax, 56(%rbp)
    movq %r14, %rax
    movq %rax, 48(%rbp)
    jmp .L1_32
.L1_34:
    movq 296(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 136(%rbp)
    movq 136(%rbp), %rax
    movq 64(%rbp), %rcx
    subq %rcx, %rax
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
    movq %rax, 128(%rbp)
    movq 72(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 40(%rbp)
    movq 72(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    movq %rax, 120(%rbp)
    movq 56(%rbp), %rax
    movq 120(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 32(%rbp), %rax
    movq 120(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 56(%rbp), %rax
    movq 32(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L1_44
.L1_45:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_44:
    movq 56(%rbp), %rax
    movq 40(%rbp), %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq 32(%rbp), %rax
    movq 56(%rbp), %rcx
    movq %rax, %r13
    subq %rcx, %r13
    leaq 376(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq 304(%rbp), %r10
    movq (%r10), %r14
    movq 136(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq 64(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 136(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 64(%rbp), %rax
    movq 136(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L1_46
.L1_47:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_46:
    movq 64(%rbp), %rax
    movq %rax, %r13
    addq %r14, %r13
    movq 136(%rbp), %rax
    movq 64(%rbp), %rcx
    movq %rax, %r12
    subq %rcx, %r12
    leaq 360(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    subq $64, %rsp
    movq %r15, %r10
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
    movq 128(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_copy_0g1_u8
    addq $64, %rsp
    movq 128(%rbp), %rax
    movq 56(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 32(%rbp), %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 40(%rbp), %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $0, %rax
    movq 120(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %rbx, %rax
    jbe .L1_48
.L1_49:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_48:
    leaq 344(%rbp), %r12
    movq 40(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq 328(%rbp), %r12
    movq 40(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    leaq 704(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 792(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 792(%rbp), %rax
    movq 968(%rbp), %rdi
    movq 960(%rbp), %rsi
    movdqu 944(%rbp), %xmm6
    movdqu 928(%rbp), %xmm7
    movdqu 912(%rbp), %xmm8
    movdqu 896(%rbp), %xmm9
    movdqu 880(%rbp), %xmm10
    movdqu 864(%rbp), %xmm11
    movdqu 848(%rbp), %xmm12
    movdqu 832(%rbp), %xmm13
    movdqu 816(%rbp), %xmm14
    movdqu 800(%rbp), %xmm15
    movq 784(%rbp), %rbx
    movq 776(%rbp), %r12
    movq 768(%rbp), %r13
    movq 760(%rbp), %r14
    movq 752(%rbp), %r15
    leaq 976(%rbp), %rsp
    popq %rbp
    ret
.L1_50:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
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
    jne .L2_11
    jmp .L2_4
.L2_11:
    movl %r13d, %r14d
    jmp .L2_5
.L2_4:
    leaq 32(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L2_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L2_1
    jmp .L2_2
.L2_1:
    leaq .Ltext_12(%rip), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_23(%rip), %r13
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
    jmp .L2_3
.L2_2:
.L2_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L2_7
.L2_6:
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
    jne .L2_9
    jmp .L2_10
.L2_10:
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_25(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_9:
    jmp .L2_8
.L2_7:
.L2_8:
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
    .quad lb_strings_replace_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "replacement requires a nonempty needle"
.Ltext_1:
    .asciz "src/std/strings/replace.lucb:16:13"
.Ltext_2:
    .asciz "the replacement result is too large"
.Ltext_3:
    .asciz "src/std/strings/replace.lucb:18:13"
.Ltext_4:
    .asciz "src/std/strings/replace.lucb:19:9"
.Ltext_5:
    .asciz "src/std/strings/replace.lucb:20:9"
.Ltext_6:
    .asciz "the replacement result exceeds its byte limit"
.Ltext_7:
    .asciz "replacement input changed between scans"
.Ltext_8:
    .asciz "src/std/strings/replace.lucb:29:9"
.Ltext_9:
    .asciz "unreachable"
.Ltext_10:
    .asciz "src/std/strings/replace.lucb:30:9"
.Ltext_11:
    .asciz "src/std/strings/replace.lucb:31:9"
.Ltext_12:
    .asciz "index out of bounds"
.Ltext_13:
    .asciz "src/std/strings/replace.lucb:32:9"
.Ltext_14:
    .asciz "src/std/strings/replace.lucb:33:9"
.Ltext_15:
    .asciz "src/std/strings/replace.lucb:34:9"
.Ltext_16:
    .asciz "src/std/strings/replace.lucb:35:9"
.Ltext_17:
    .asciz "src/std/strings/replace.lucb:36:9"
.Ltext_18:
    .asciz "src/std/strings/replace.lucb:37:5"
.Ltext_19:
    .asciz "src/std/strings/replace.lucb:38:5"
.Ltext_20:
    .asciz "src/std/strings/replace.lucb:39:5"
.Ltext_21:
    .asciz "src/std/strings/replace.lucb:40:5"
.Ltext_22:
    .asciz "src/std/strings/replace.lucb:41:5"
.Ltext_23:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_24:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_25:
    .asciz "null_foreign"
.Ltext_26:
    .asciz "integer overflow"

    .section .rdata,"dr"
    .p2align 3
