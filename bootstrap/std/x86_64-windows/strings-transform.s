    .weak lb_memory_copy_0g1_u8
    .text

    .p2align 4
    .globl lb_strings_transform_0init
lb_strings_transform_0init:
    .seh_proc lb_strings_transform_0init
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
    .globl lb_strings_8is_space
lb_strings_8is_space:
    .seh_proc lb_strings_8is_space
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
    movzbl (%r10), %ebx
    movl $32, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_8
    jmp .L1_1
.L1_8:
    movl %r12d, %r13d
    jmp .L1_2
.L1_1:
    movl $10, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L1_2:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_9
    jmp .L1_3
.L1_9:
    movl %r12d, %r13d
    jmp .L1_4
.L1_3:
    movl $9, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L1_4:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_10
    jmp .L1_5
.L1_10:
    movl %r12d, %ebx
    jmp .L1_6
.L1_5:
    movl $13, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L1_6:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
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
.L1_7:
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
    .globl lb_strings_trim
lb_strings_trim:
    .seh_proc lb_strings_trim
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
    movq 344(%rbp), %r10
    leaq 64(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 64(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 48(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rax, 8(%rbp)
.L2_1:
    movq 8(%rbp), %rax
    cmpq %r12, %rax
    setb %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L2_4
    jmp .L2_14
.L2_14:
    movl %r14d, %r15d
    jmp .L2_5
.L2_4:
    movq %r13, %r10
    movq (%r10), %r14
    movq 8(%rbp), %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    subq $32, %rsp
    movl %r14d, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_8is_space
    addq $32, %rsp
    movl %eax, %r15d
.L2_5:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L2_2
    jmp .L2_3
.L2_2:
    movq 8(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %r14, %rax
    movq %rax, 8(%rbp)
    jmp .L2_1
.L2_3:
    movq %r12, %r14
.L2_6:
    movq 8(%rbp), %rcx
    cmpq %rcx, %r14
    seta %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L2_9
    jmp .L2_15
.L2_15:
    movl %r15d, %ebx
    jmp .L2_10
.L2_9:
    movq %r14, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq %r13, %r10
    movq (%r10), %r15
    cmpq %r12, %rbx
    jb 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    addq %r15, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_8is_space
    addq $32, %rsp
    movl %eax, %ebx
.L2_10:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L2_7
    jmp .L2_8
.L2_7:
    movq %r14, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq %rbx, %r14
    jmp .L2_6
.L2_8:
    movq %r13, %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq 8(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %rbx, %r14
    jb 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rax
    cmpq %r14, %rax
    jbe .L2_11
.L2_12:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_11:
    movq 8(%rbp), %rax
    movq %rax, %rbx
    addq %r15, %rbx
    movq 8(%rbp), %rcx
    movq %r14, %r12
    subq %rcx, %r12
    leaq 32(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq 16(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq 80(%rbp), %rbx
    movq %r13, %r10
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
.L2_13:
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
    .globl lb_strings_join
lb_strings_join:
    .seh_proc lb_strings_join
    pushq %rbp
    .seh_pushreg %rbp
    subq $688, %rsp
    .seh_stackalloc 688
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 504(%rbp)
    movq %rdi, 680(%rbp)
    .seh_savereg %rdi, 680
    movq %rsi, 672(%rbp)
    .seh_savereg %rsi, 672
    movdqu %xmm6, 656(%rbp)
    .seh_savexmm %xmm6, 656
    movdqu %xmm7, 640(%rbp)
    .seh_savexmm %xmm7, 640
    movdqu %xmm8, 624(%rbp)
    .seh_savexmm %xmm8, 624
    movdqu %xmm9, 608(%rbp)
    .seh_savexmm %xmm9, 608
    movdqu %xmm10, 592(%rbp)
    .seh_savexmm %xmm10, 592
    movdqu %xmm11, 576(%rbp)
    .seh_savexmm %xmm11, 576
    movdqu %xmm12, 560(%rbp)
    .seh_savexmm %xmm12, 560
    movdqu %xmm13, 544(%rbp)
    .seh_savexmm %xmm13, 544
    movdqu %xmm14, 528(%rbp)
    .seh_savexmm %xmm14, 528
    movdqu %xmm15, 512(%rbp)
    .seh_savexmm %xmm15, 512
    movq %rbx, 496(%rbp)
    .seh_savereg %rbx, 496
    movq %r12, 488(%rbp)
    .seh_savereg %r12, 488
    movq %r13, 480(%rbp)
    .seh_savereg %r13, 480
    movq %r14, 472(%rbp)
    .seh_savereg %r14, 472
    movq %r15, 464(%rbp)
    .seh_savereg %r15, 464
    .seh_endprologue
    movq %rcx, 704(%rbp)
    movq %rdx, 712(%rbp)
    movq %r8, 720(%rbp)
    movq %r9, 728(%rbp)
    movq 712(%rbp), %r10
    leaq 400(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 720(%rbp), %r10
    leaq 384(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 400(%rbp), %rax
    movq %rax, 168(%rbp)
    movq 168(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 160(%rbp)
    leaq 376(%rbp), %rax
    movq %rax, 144(%rbp)
    leaq 360(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 136(%rbp)
    leaq 384(%rbp), %rax
    movq %rax, 128(%rbp)
    movq 128(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 120(%rbp)
    leaq 336(%rbp), %rax
    movq %rax, 112(%rbp)
    leaq 320(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 104(%rbp)
    movq $0, %rax
    movq %rax, %r15
    movq $0, %rax
    movq %rax, %r14
.L3_1:
    movq 160(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 152(%rbp)
    movq 152(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L3_3
.L3_2:
    movq 168(%rbp), %r10
    movq (%r10), %r13
    movq $16, %rcx
    movq %r14, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq 144(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %r12d
    movq 144(%rbp), %r10
    movq (%r10), %r13
    movq 8(%rbp), %r10
    movq %r13, (%r10)
    movq 136(%rbp), %r10
    movb %r12b, (%r10)
    movq 136(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_4
    jmp .L3_5
.L3_4:
    jmp .L3_6
.L3_5:
    leaq 416(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_9(%rip), %r13
    leaq 344(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 504(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 504(%rbp), %rax
    movq 680(%rbp), %rdi
    movq 672(%rbp), %rsi
    movdqu 656(%rbp), %xmm6
    movdqu 640(%rbp), %xmm7
    movdqu 624(%rbp), %xmm8
    movdqu 608(%rbp), %xmm9
    movdqu 592(%rbp), %xmm10
    movdqu 576(%rbp), %xmm11
    movdqu 560(%rbp), %xmm12
    movdqu 544(%rbp), %xmm13
    movdqu 528(%rbp), %xmm14
    movdqu 512(%rbp), %xmm15
    movq 496(%rbp), %rbx
    movq 488(%rbp), %r12
    movq 480(%rbp), %r13
    movq 472(%rbp), %r14
    movq 464(%rbp), %r15
    leaq 688(%rbp), %rsp
    popq %rbp
    ret
.L3_7:
.L3_6:
    movq $1, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq 152(%rbp), %rcx
    cmpq %rcx, %r12
    jae .L3_9
.L3_8:
    movq 120(%rbp), %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movl $64, %eax
    movq %rax, 16(%rsp)
    movq 112(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6qadd_u
    addq $32, %rsp
    movl %eax, %r14d
    movq 112(%rbp), %r10
    movq (%r10), %r15
    movq 0(%rbp), %r10
    movq %r15, (%r10)
    movq 104(%rbp), %r10
    movb %r14b, (%r10)
    movq 104(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L3_11
    jmp .L3_12
.L3_11:
    jmp .L3_13
.L3_12:
    leaq 416(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_9(%rip), %r13
    leaq 304(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 504(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 504(%rbp), %rax
    movq 680(%rbp), %rdi
    movq 672(%rbp), %rsi
    movdqu 656(%rbp), %xmm6
    movdqu 640(%rbp), %xmm7
    movdqu 624(%rbp), %xmm8
    movdqu 608(%rbp), %xmm9
    movdqu 592(%rbp), %xmm10
    movdqu 576(%rbp), %xmm11
    movdqu 560(%rbp), %xmm12
    movdqu 544(%rbp), %xmm13
    movdqu 528(%rbp), %xmm14
    movdqu 512(%rbp), %xmm15
    movq 496(%rbp), %rbx
    movq 488(%rbp), %r12
    movq 480(%rbp), %r13
    movq 472(%rbp), %r14
    movq 464(%rbp), %r15
    leaq 688(%rbp), %rsp
    popq %rbp
    ret
.L3_14:
.L3_13:
    movq %r15, %r13
    jmp .L3_10
.L3_9:
.L3_10:
    movq %r13, %r15
    movq %r12, %r14
    jmp .L3_1
.L3_3:
    leaq 288(%rbp), %rax
    movq %rax, 32(%rbp)
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 8(%rsp)
    leaq 240(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_17terminated_buffer
    addq $32, %rsp
    leaq 240(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_16
    jmp .L3_15
.L3_16:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 416(%rbp), %r12
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
    movq 504(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 504(%rbp), %rax
    movq 680(%rbp), %rdi
    movq 672(%rbp), %rsi
    movdqu 656(%rbp), %xmm6
    movdqu 640(%rbp), %xmm7
    movdqu 624(%rbp), %xmm8
    movdqu 608(%rbp), %xmm9
    movdqu 592(%rbp), %xmm10
    movdqu 576(%rbp), %xmm11
    movdqu 560(%rbp), %xmm12
    movdqu 544(%rbp), %xmm13
    movdqu 528(%rbp), %xmm14
    movdqu 512(%rbp), %xmm15
    movq 496(%rbp), %rbx
    movq 488(%rbp), %r12
    movq 480(%rbp), %r13
    movq 472(%rbp), %r14
    movq 464(%rbp), %r15
    leaq 688(%rbp), %rsp
    popq %rbp
    ret
.L3_17:
.L3_15:
    movq %r14, %r10
    movq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 32(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 96(%rbp)
    leaq 224(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    leaq 208(%rbp), %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    leaq 384(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 40(%rbp)
    movq $0, %rax
    movq %rax, 24(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L3_18:
    movq 24(%rbp), %rax
    movq 152(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L3_20
.L3_19:
    movq 32(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    movq 96(%rbp), %r10
    movq (%r10), %rbx
    movq $1, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 88(%rbp)
    movq 88(%rbp), %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 88(%rbp), %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %rbx, %r15
    jbe .L3_21
.L3_22:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L3_21:
    movq 16(%rbp), %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %rbx, %r12
    subq %r15, %r12
    movq 80(%rbp), %r10
    movq %r14, (%r10)
    movq 72(%rbp), %r10
    movq %r12, (%r10)
    movq 168(%rbp), %r10
    movq (%r10), %r12
    movq 24(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    addq %r14, %r12
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r13
    subq $64, %rsp
    movq 80(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r12, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_copy_0g1_u8
    addq $64, %rsp
    movq %r14, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 24(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq 152(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L3_24
.L3_23:
    movq 88(%rbp), %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %rbx, %r12
    jbe .L3_26
.L3_27:
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L3_26:
    movq 16(%rbp), %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r15
    subq %r12, %r15
    movq 64(%rbp), %r10
    movq %r14, (%r10)
    movq 56(%rbp), %r10
    movq %r15, (%r10)
    movq 40(%rbp), %r10
    movq (%r10), %r14
    subq $64, %rsp
    movq 64(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 48(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_copy_0g1_u8
    addq $64, %rsp
    movq 40(%rbp), %r10
    movq (%r10), %r14
    movq %r12, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    jmp .L3_25
.L3_24:
    movq %r12, %r14
.L3_25:
    movq %r13, %rax
    movq %rax, 24(%rbp)
    movq %r14, %r15
    jmp .L3_18
.L3_20:
    movq 32(%rbp), %r10
    movq (%r10), %rbx
    movq 32(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rbx, %r13
    addq %r15, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $1, %rcx
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r15, %rax
    jbe .L3_28
.L3_29:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L3_28:
    leaq 192(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    leaq 176(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    leaq 416(%rbp), %r13
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
    movq 504(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 504(%rbp), %rax
    movq 680(%rbp), %rdi
    movq 672(%rbp), %rsi
    movdqu 656(%rbp), %xmm6
    movdqu 640(%rbp), %xmm7
    movdqu 624(%rbp), %xmm8
    movdqu 608(%rbp), %xmm9
    movdqu 592(%rbp), %xmm10
    movdqu 576(%rbp), %xmm11
    movdqu 560(%rbp), %xmm12
    movdqu 544(%rbp), %xmm13
    movdqu 528(%rbp), %xmm14
    movdqu 512(%rbp), %xmm15
    movq 496(%rbp), %rbx
    movq 488(%rbp), %r12
    movq 480(%rbp), %r13
    movq 472(%rbp), %r14
    movq 464(%rbp), %r15
    leaq 688(%rbp), %rsp
    popq %rbp
    ret
.L3_30:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_copy
lb_strings_copy:
    .seh_proc lb_strings_copy
    pushq %rbp
    .seh_pushreg %rbp
    subq $432, %rsp
    .seh_stackalloc 432
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 248(%rbp)
    movq %rdi, 424(%rbp)
    .seh_savereg %rdi, 424
    movq %rsi, 416(%rbp)
    .seh_savereg %rsi, 416
    movdqu %xmm6, 400(%rbp)
    .seh_savexmm %xmm6, 400
    movdqu %xmm7, 384(%rbp)
    .seh_savexmm %xmm7, 384
    movdqu %xmm8, 368(%rbp)
    .seh_savexmm %xmm8, 368
    movdqu %xmm9, 352(%rbp)
    .seh_savexmm %xmm9, 352
    movdqu %xmm10, 336(%rbp)
    .seh_savexmm %xmm10, 336
    movdqu %xmm11, 320(%rbp)
    .seh_savexmm %xmm11, 320
    movdqu %xmm12, 304(%rbp)
    .seh_savexmm %xmm12, 304
    movdqu %xmm13, 288(%rbp)
    .seh_savexmm %xmm13, 288
    movdqu %xmm14, 272(%rbp)
    .seh_savexmm %xmm14, 272
    movdqu %xmm15, 256(%rbp)
    .seh_savexmm %xmm15, 256
    movq %rbx, 240(%rbp)
    .seh_savereg %rbx, 240
    movq %r12, 232(%rbp)
    .seh_savereg %r12, 232
    movq %r13, 224(%rbp)
    .seh_savereg %r13, 224
    movq %r14, 216(%rbp)
    .seh_savereg %r14, 216
    movq %r15, 208(%rbp)
    .seh_savereg %r15, 208
    .seh_endprologue
    movq %rcx, 448(%rbp)
    movq %rdx, 456(%rbp)
    movq %r8, 464(%rbp)
    movq %r9, 472(%rbp)
    movq 456(%rbp), %r10
    leaq 144(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 128(%rbp), %r14
    leaq 144(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    leaq 80(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_17terminated_buffer
    addq $32, %rsp
    leaq 80(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L4_2
    jmp .L4_1
.L4_2:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 160(%rbp), %r12
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
    movq 248(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 248(%rbp), %rax
    movq 424(%rbp), %rdi
    movq 416(%rbp), %rsi
    movdqu 400(%rbp), %xmm6
    movdqu 384(%rbp), %xmm7
    movdqu 368(%rbp), %xmm8
    movdqu 352(%rbp), %xmm9
    movdqu 336(%rbp), %xmm10
    movdqu 320(%rbp), %xmm11
    movdqu 304(%rbp), %xmm12
    movdqu 288(%rbp), %xmm13
    movdqu 272(%rbp), %xmm14
    movdqu 256(%rbp), %xmm15
    movq 240(%rbp), %rbx
    movq 232(%rbp), %r12
    movq 224(%rbp), %r13
    movq 216(%rbp), %r14
    movq 208(%rbp), %r15
    leaq 432(%rbp), %rsp
    popq %rbp
    ret
.L4_3:
.L4_1:
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 40(%rbp)
    subq $64, %rsp
    movq %r14, %r10
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
    movq 40(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_copy_0g1_u8
    addq $64, %rsp
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 32(%rbp)
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %r10
    movq (%r10), %r13
    movq 32(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 32(%rbp), %rax
    movq 24(%rbp), %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    movq 16(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 0(%rbp)
    movq $1, %rcx
    addq %rcx, %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 0(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    movq 0(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L4_4
.L4_5:
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L4_4:
    leaq 64(%rbp), %rbx
    movq 8(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq 0(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 48(%rbp), %rbx
    movq 8(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 0(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 160(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 248(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 248(%rbp), %rax
    movq 424(%rbp), %rdi
    movq 416(%rbp), %rsi
    movdqu 400(%rbp), %xmm6
    movdqu 384(%rbp), %xmm7
    movdqu 368(%rbp), %xmm8
    movdqu 352(%rbp), %xmm9
    movdqu 336(%rbp), %xmm10
    movdqu 320(%rbp), %xmm11
    movdqu 304(%rbp), %xmm12
    movdqu 288(%rbp), %xmm13
    movdqu 272(%rbp), %xmm14
    movdqu 256(%rbp), %xmm15
    movq 240(%rbp), %rbx
    movq 232(%rbp), %r12
    movq 224(%rbp), %r13
    movq 216(%rbp), %r14
    movq 208(%rbp), %r15
    leaq 432(%rbp), %rsp
    popq %rbp
    ret
.L4_6:
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_8to_upper
lb_strings_8to_upper:
    .seh_proc lb_strings_8to_upper
    pushq %rbp
    .seh_pushreg %rbp
    subq $448, %rsp
    .seh_stackalloc 448
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 264(%rbp)
    movq %rdi, 440(%rbp)
    .seh_savereg %rdi, 440
    movq %rsi, 432(%rbp)
    .seh_savereg %rsi, 432
    movdqu %xmm6, 416(%rbp)
    .seh_savexmm %xmm6, 416
    movdqu %xmm7, 400(%rbp)
    .seh_savexmm %xmm7, 400
    movdqu %xmm8, 384(%rbp)
    .seh_savexmm %xmm8, 384
    movdqu %xmm9, 368(%rbp)
    .seh_savexmm %xmm9, 368
    movdqu %xmm10, 352(%rbp)
    .seh_savexmm %xmm10, 352
    movdqu %xmm11, 336(%rbp)
    .seh_savexmm %xmm11, 336
    movdqu %xmm12, 320(%rbp)
    .seh_savexmm %xmm12, 320
    movdqu %xmm13, 304(%rbp)
    .seh_savexmm %xmm13, 304
    movdqu %xmm14, 288(%rbp)
    .seh_savexmm %xmm14, 288
    movdqu %xmm15, 272(%rbp)
    .seh_savexmm %xmm15, 272
    movq %rbx, 256(%rbp)
    .seh_savereg %rbx, 256
    movq %r12, 248(%rbp)
    .seh_savereg %r12, 248
    movq %r13, 240(%rbp)
    .seh_savereg %r13, 240
    movq %r14, 232(%rbp)
    .seh_savereg %r14, 232
    movq %r15, 224(%rbp)
    .seh_savereg %r15, 224
    .seh_endprologue
    movq %rcx, 464(%rbp)
    movq %rdx, 472(%rbp)
    movq %r8, 480(%rbp)
    movq %r9, 488(%rbp)
    movq 472(%rbp), %r10
    leaq 160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 144(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 160(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 56(%rbp)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 96(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_17terminated_buffer
    addq $32, %rsp
    leaq 96(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L5_2
    jmp .L5_1
.L5_2:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 176(%rbp), %r12
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
    movq 264(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 264(%rbp), %rax
    movq 440(%rbp), %rdi
    movq 432(%rbp), %rsi
    movdqu 416(%rbp), %xmm6
    movdqu 400(%rbp), %xmm7
    movdqu 384(%rbp), %xmm8
    movdqu 368(%rbp), %xmm9
    movdqu 352(%rbp), %xmm10
    movdqu 336(%rbp), %xmm11
    movdqu 320(%rbp), %xmm12
    movdqu 304(%rbp), %xmm13
    movdqu 288(%rbp), %xmm14
    movdqu 272(%rbp), %xmm15
    movq 256(%rbp), %rbx
    movq 248(%rbp), %r12
    movq 240(%rbp), %r13
    movq 232(%rbp), %r14
    movq 224(%rbp), %r15
    leaq 448(%rbp), %rsp
    popq %rbp
    ret
.L5_3:
.L5_1:
    movq %r15, %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 48(%rbp)
    movq 16(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 40(%rbp)
    movq 16(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq $0, %rax
    movq %rax, 8(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L5_4:
    movq 56(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L5_7
.L5_5:
    movq 48(%rbp), %rax
    movq %rax, %rbx
    addq %r13, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq 8(%rbp), %rax
    movq 24(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 40(%rbp), %rax
    movq 8(%rbp), %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movzbl %bl, %ebx
    movl $97, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L5_11
    jmp .L5_18
.L5_18:
    movl %r15d, %r14d
    jmp .L5_12
.L5_11:
    movl $122, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r14d
.L5_12:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L5_8
    jmp .L5_9
.L5_8:
    movl $32, %ecx
    movl %ebx, %r15d
    subl %ecx, %r15d
    movzbl %r15b, %r14d
    cmpl %r15d, %r14d
    je .L5_13
.L5_14:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L5_13:
    movl %r15d, %ebx
    jmp .L5_10
.L5_9:
.L5_10:
    movzbl %bl, %r14d
    movq %r12, %r10
    movb %r14b, (%r10)
    movq 8(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
.L5_6:
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %r14, %rax
    movq %rax, 8(%rbp)
    movq %rbx, %r13
    jmp .L5_4
.L5_7:
    movq 16(%rbp), %r10
    movq (%r10), %rbx
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq 8(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $1, %rcx
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    movq 8(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L5_15
.L5_16:
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L5_15:
    leaq 80(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq 8(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 64(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq 8(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq 176(%rbp), %r13
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
    movq 264(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 264(%rbp), %rax
    movq 440(%rbp), %rdi
    movq 432(%rbp), %rsi
    movdqu 416(%rbp), %xmm6
    movdqu 400(%rbp), %xmm7
    movdqu 384(%rbp), %xmm8
    movdqu 368(%rbp), %xmm9
    movdqu 352(%rbp), %xmm10
    movdqu 336(%rbp), %xmm11
    movdqu 320(%rbp), %xmm12
    movdqu 304(%rbp), %xmm13
    movdqu 288(%rbp), %xmm14
    movdqu 272(%rbp), %xmm15
    movq 256(%rbp), %rbx
    movq 248(%rbp), %r12
    movq 240(%rbp), %r13
    movq 232(%rbp), %r14
    movq 224(%rbp), %r15
    leaq 448(%rbp), %rsp
    popq %rbp
    ret
.L5_17:
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_8to_lower
lb_strings_8to_lower:
    .seh_proc lb_strings_8to_lower
    pushq %rbp
    .seh_pushreg %rbp
    subq $448, %rsp
    .seh_stackalloc 448
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 264(%rbp)
    movq %rdi, 440(%rbp)
    .seh_savereg %rdi, 440
    movq %rsi, 432(%rbp)
    .seh_savereg %rsi, 432
    movdqu %xmm6, 416(%rbp)
    .seh_savexmm %xmm6, 416
    movdqu %xmm7, 400(%rbp)
    .seh_savexmm %xmm7, 400
    movdqu %xmm8, 384(%rbp)
    .seh_savexmm %xmm8, 384
    movdqu %xmm9, 368(%rbp)
    .seh_savexmm %xmm9, 368
    movdqu %xmm10, 352(%rbp)
    .seh_savexmm %xmm10, 352
    movdqu %xmm11, 336(%rbp)
    .seh_savexmm %xmm11, 336
    movdqu %xmm12, 320(%rbp)
    .seh_savexmm %xmm12, 320
    movdqu %xmm13, 304(%rbp)
    .seh_savexmm %xmm13, 304
    movdqu %xmm14, 288(%rbp)
    .seh_savexmm %xmm14, 288
    movdqu %xmm15, 272(%rbp)
    .seh_savexmm %xmm15, 272
    movq %rbx, 256(%rbp)
    .seh_savereg %rbx, 256
    movq %r12, 248(%rbp)
    .seh_savereg %r12, 248
    movq %r13, 240(%rbp)
    .seh_savereg %r13, 240
    movq %r14, 232(%rbp)
    .seh_savereg %r14, 232
    movq %r15, 224(%rbp)
    .seh_savereg %r15, 224
    .seh_endprologue
    movq %rcx, 464(%rbp)
    movq %rdx, 472(%rbp)
    movq %r8, 480(%rbp)
    movq %r9, 488(%rbp)
    movq 472(%rbp), %r10
    leaq 160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 144(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 160(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 56(%rbp)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 96(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_17terminated_buffer
    addq $32, %rsp
    leaq 96(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L6_2
    jmp .L6_1
.L6_2:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 176(%rbp), %r12
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
    movq 264(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 264(%rbp), %rax
    movq 440(%rbp), %rdi
    movq 432(%rbp), %rsi
    movdqu 416(%rbp), %xmm6
    movdqu 400(%rbp), %xmm7
    movdqu 384(%rbp), %xmm8
    movdqu 368(%rbp), %xmm9
    movdqu 352(%rbp), %xmm10
    movdqu 336(%rbp), %xmm11
    movdqu 320(%rbp), %xmm12
    movdqu 304(%rbp), %xmm13
    movdqu 288(%rbp), %xmm14
    movdqu 272(%rbp), %xmm15
    movq 256(%rbp), %rbx
    movq 248(%rbp), %r12
    movq 240(%rbp), %r13
    movq 232(%rbp), %r14
    movq 224(%rbp), %r15
    leaq 448(%rbp), %rsp
    popq %rbp
    ret
.L6_3:
.L6_1:
    movq %r15, %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 48(%rbp)
    movq 16(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 40(%rbp)
    movq 16(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq $0, %rax
    movq %rax, 8(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L6_4:
    movq 56(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L6_7
.L6_5:
    movq 48(%rbp), %rax
    movq %rax, %rbx
    addq %r13, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq 8(%rbp), %rax
    movq 24(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 40(%rbp), %rax
    movq 8(%rbp), %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movzbl %bl, %ebx
    movl $65, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L6_11
    jmp .L6_18
.L6_18:
    movl %r15d, %r14d
    jmp .L6_12
.L6_11:
    movl $90, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r14d
.L6_12:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L6_8
    jmp .L6_9
.L6_8:
    movl $32, %ecx
    movl %ebx, %r15d
    addl %ecx, %r15d
    movzbl %r15b, %r14d
    cmpl %r15d, %r14d
    je .L6_13
.L6_14:
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L6_13:
    movl %r15d, %ebx
    jmp .L6_10
.L6_9:
.L6_10:
    movzbl %bl, %r14d
    movq %r12, %r10
    movb %r14b, (%r10)
    movq 8(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
.L6_6:
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %r14, %rax
    movq %rax, 8(%rbp)
    movq %rbx, %r13
    jmp .L6_4
.L6_7:
    movq 16(%rbp), %r10
    movq (%r10), %rbx
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq 8(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $1, %rcx
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 8(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    movq 8(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L6_15
.L6_16:
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_7(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L6_15:
    leaq 80(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq 8(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 64(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq 8(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq 176(%rbp), %r13
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
    movq 264(%rbp), %rdi
    movq $48, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 264(%rbp), %rax
    movq 440(%rbp), %rdi
    movq 432(%rbp), %rsi
    movdqu 416(%rbp), %xmm6
    movdqu 400(%rbp), %xmm7
    movdqu 384(%rbp), %xmm8
    movdqu 368(%rbp), %xmm9
    movdqu 352(%rbp), %xmm10
    movdqu 336(%rbp), %xmm11
    movdqu 320(%rbp), %xmm12
    movdqu 304(%rbp), %xmm13
    movdqu 288(%rbp), %xmm14
    movdqu 272(%rbp), %xmm15
    movq 256(%rbp), %rbx
    movq 248(%rbp), %r12
    movq 240(%rbp), %r13
    movq 232(%rbp), %r14
    movq 224(%rbp), %r15
    leaq 448(%rbp), %rsp
    popq %rbp
    ret
.L6_17:
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
    .globl lb_strings_release
lb_strings_release:
    .seh_proc lb_strings_release
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
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    leaq 16(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L7_2
    jmp .L7_1
.L7_2:
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $48, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r14, %r10
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
.L7_1:
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
    .globl lb_strings_17terminated_buffer
lb_strings_17terminated_buffer:
    .seh_proc lb_strings_17terminated_buffer
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
    movq %rax, 128(%rbp)
    leaq 128(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 120(%rbp), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq $1, %rax
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
    movl %eax, %ebx
    leaq 104(%rbp), %r13
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movb %bl, (%r10)
    movq %r13, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_1
    jmp .L8_2
.L8_1:
    jmp .L8_3
.L8_2:
    leaq 144(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_32(%rip), %r13
    leaq 88(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $21, %rax
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
    movq 232(%rbp), %rdi
    movq $48, %rdx
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
.L8_4:
.L8_3:
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r13
    leaq 40(%rbp), %rax
    movq %rax, 0(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r12
    jbe .L8_6
.L8_5:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_33(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L8_7
.L8_6:
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L8_8
    jmp .L8_9
.L8_9:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L8_8:
    movq %r15, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq $1, %rax
    movq %rax, 24(%rsp)
    leaq 16(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r13, %r11
    call *%r11
    addq $32, %rsp
    leaq 16(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, 8(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl 8(%rbp), %eax
    movl %r13d, %ecx
    movl %eax, %r13d
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L8_10
    jmp .L8_11
.L8_10:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_36(%rip), %r12
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
    jmp .L8_7
.L8_11:
    movq %r14, %r10
    movq (%r10), %rbx
    movq 0(%rbp), %r10
    movq %rbx, (%r10)
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L8_7:
    movq 0(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_13
    jmp .L8_12
.L8_13:
    movq 0(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 144(%rbp), %r12
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
    movq 232(%rbp), %rdi
    movq $48, %rdx
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
.L8_14:
.L8_12:
    leaq 144(%rbp), %rbx
    movq 0(%rbp), %r10
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
    movq 232(%rbp), %rdi
    movq $48, %rdx
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
.L8_15:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
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
    jne .L9_11
    jmp .L9_4
.L9_11:
    movl %r13d, %r14d
    jmp .L9_5
.L9_4:
    leaq 32(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L9_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L9_1
    jmp .L9_2
.L9_1:
    leaq .Ltext_7(%rip), %r13
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
    jmp .L9_3
.L9_2:
.L9_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L9_7
.L9_6:
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
    jne .L9_9
    jmp .L9_10
.L9_10:
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_39(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L9_9:
    jmp .L9_8
.L9_7:
.L9_8:
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
    .quad lb_strings_transform_0init
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
    .asciz "src/std/strings/transform.lucb:2:5"
.Ltext_2:
    .asciz "src/std/strings/transform.lucb:9:5"
.Ltext_3:
    .asciz "src/std/strings/transform.lucb:10:9"
.Ltext_4:
    .asciz "src/std/strings/transform.lucb:11:5"
.Ltext_5:
    .asciz "src/std/strings/transform.lucb:12:9"
.Ltext_6:
    .asciz "src/std/strings/transform.lucb:13:5"
.Ltext_7:
    .asciz "index out of bounds"
.Ltext_8:
    .asciz "src/std/strings/transform.lucb:21:9"
.Ltext_9:
    .asciz "the joined text is too large"
.Ltext_10:
    .asciz "src/std/strings/transform.lucb:22:9"
.Ltext_11:
    .asciz "src/std/strings/transform.lucb:24:9"
.Ltext_12:
    .asciz "src/std/strings/transform.lucb:29:9"
.Ltext_13:
    .asciz "src/std/strings/transform.lucb:30:9"
.Ltext_14:
    .asciz "src/std/strings/transform.lucb:31:9"
.Ltext_15:
    .asciz "src/std/strings/transform.lucb:32:13"
.Ltext_16:
    .asciz "src/std/strings/transform.lucb:33:13"
.Ltext_17:
    .asciz "src/std/strings/transform.lucb:34:9"
.Ltext_18:
    .asciz "src/std/strings/transform.lucb:35:5"
.Ltext_19:
    .asciz "src/std/strings/transform.lucb:36:5"
.Ltext_20:
    .asciz "src/std/strings/transform.lucb:43:5"
.Ltext_21:
    .asciz "src/std/strings/transform.lucb:44:5"
.Ltext_22:
    .asciz "src/std/strings/transform.lucb:52:9"
.Ltext_23:
    .asciz "integer overflow"
.Ltext_24:
    .asciz "src/std/strings/transform.lucb:53:9"
.Ltext_25:
    .asciz "src/std/strings/transform.lucb:54:5"
.Ltext_26:
    .asciz "src/std/strings/transform.lucb:55:5"
.Ltext_27:
    .asciz "src/std/strings/transform.lucb:63:9"
.Ltext_28:
    .asciz "src/std/strings/transform.lucb:64:9"
.Ltext_29:
    .asciz "src/std/strings/transform.lucb:65:5"
.Ltext_30:
    .asciz "src/std/strings/transform.lucb:66:5"
.Ltext_31:
    .asciz "src/std/strings/transform.lucb:71:5"
.Ltext_32:
    .asciz "the text is too large"
.Ltext_33:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_34:
    .asciz "memory.unset"
.Ltext_35:
    .asciz "src/std/strings/transform.lucb:77:5"
.Ltext_36:
    .asciz "memory.exhausted"
.Ltext_37:
    .asciz "src/std/memory.lucb:326:9"
.Ltext_38:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_39:
    .asciz "null_foreign"

    .section .rdata,"dr"
    .p2align 3
