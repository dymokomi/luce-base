    .text

    .p2align 4
    .globl lb_unicode_graphemes_0init
lb_unicode_graphemes_0init:
    .seh_proc lb_unicode_graphemes_0init
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
    .globl lb_unicode_GraphemeIterator_over
lb_unicode_GraphemeIterator_over:
    .seh_proc lb_unicode_GraphemeIterator_over
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
    movq 360(%rbp), %r10
    leaq 48(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rbp), %rbx
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
    jne .L1_2
.L1_1:
    leaq 64(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_utf8_16invalid_sequence(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_0(%rip), %r13
    leaq 32(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $18, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 152(%rbp), %rdi
    movq $56, %rdx
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
.L1_4:
    jmp .L1_3
.L1_2:
.L1_3:
    leaq 8(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 64(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 152(%rbp), %rdi
    movq $56, %rdx
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
.L1_5:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_unicode_GraphemeIterator_next
lb_unicode_GraphemeIterator_next:
    .seh_proc lb_unicode_GraphemeIterator_next
    pushq %rbp
    .seh_pushreg %rbp
    subq $640, %rsp
    .seh_stackalloc 640
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 456(%rbp)
    movq %rdi, 632(%rbp)
    .seh_savereg %rdi, 632
    movq %rsi, 624(%rbp)
    .seh_savereg %rsi, 624
    movdqu %xmm6, 608(%rbp)
    .seh_savexmm %xmm6, 608
    movdqu %xmm7, 592(%rbp)
    .seh_savexmm %xmm7, 592
    movdqu %xmm8, 576(%rbp)
    .seh_savexmm %xmm8, 576
    movdqu %xmm9, 560(%rbp)
    .seh_savexmm %xmm9, 560
    movdqu %xmm10, 544(%rbp)
    .seh_savexmm %xmm10, 544
    movdqu %xmm11, 528(%rbp)
    .seh_savexmm %xmm11, 528
    movdqu %xmm12, 512(%rbp)
    .seh_savexmm %xmm12, 512
    movdqu %xmm13, 496(%rbp)
    .seh_savexmm %xmm13, 496
    movdqu %xmm14, 480(%rbp)
    .seh_savexmm %xmm14, 480
    movdqu %xmm15, 464(%rbp)
    .seh_savexmm %xmm15, 464
    movq %rbx, 448(%rbp)
    .seh_savereg %rbx, 448
    movq %r12, 440(%rbp)
    .seh_savereg %r12, 440
    movq %r13, 432(%rbp)
    .seh_savereg %r13, 432
    movq %r14, 424(%rbp)
    .seh_savereg %r14, 424
    movq %r15, 416(%rbp)
    .seh_savereg %r15, 416
    .seh_endprologue
    movq %rcx, 656(%rbp)
    movq %rdx, 664(%rbp)
    movq %r8, 672(%rbp)
    movq %r9, 680(%rbp)
    movq 664(%rbp), %rax
    movq %rax, 384(%rbp)
    leaq 384(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 112(%rbp)
    movq 112(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 104(%rbp)
    movq 24(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 96(%rbp)
    movq 96(%rbp), %r10
    movq (%r10), %r14
    movq 104(%rbp), %rax
    cmpq %r14, %rax
    jne .L2_2
.L2_1:
    leaq 360(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq 392(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %rsi
    movq 456(%rbp), %rdi
    movq $24, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 456(%rbp), %rax
    movq 632(%rbp), %rdi
    movq 624(%rbp), %rsi
    movdqu 608(%rbp), %xmm6
    movdqu 592(%rbp), %xmm7
    movdqu 576(%rbp), %xmm8
    movdqu 560(%rbp), %xmm9
    movdqu 544(%rbp), %xmm10
    movdqu 528(%rbp), %xmm11
    movdqu 512(%rbp), %xmm12
    movdqu 496(%rbp), %xmm13
    movdqu 480(%rbp), %xmm14
    movdqu 464(%rbp), %xmm15
    movq 448(%rbp), %rbx
    movq 440(%rbp), %r12
    movq 432(%rbp), %r13
    movq 424(%rbp), %r14
    movq 416(%rbp), %r15
    leaq 640(%rbp), %rsp
    popq %rbp
    ret
.L2_4:
    jmp .L2_3
.L2_2:
.L2_3:
    leaq 344(%rbp), %r13
    subq $48, %rsp
    movq 24(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 104(%rbp), %rax
    movq %rax, 16(%rsp)
    leaq 320(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_utf8_decode
    addq $48, %rsp
    leaq 320(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L2_5
    jmp .L2_6
.L2_5:
    leaq 304(%rbp), %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_7
.L2_6:
    leaq .Ltext_3(%rip), %rbx
    leaq 288(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $37, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_4(%rip), %rbx
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
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_7:
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 283(%rbp), %rbx
    movq %rbx, %r11
    movl $0, 0(%r11)
    movb $0, 4(%r11)
    movq %r13, %r10
    movl (%r10), %r12d
    movl %r12d, %r12d
    leaq 136(%rbp), %r10
    movl %r12d, (%r10)
    leaq lb_unicode_15grapheme_ranges(%rip), %rax
    movq %rax, 32(%rbp)
    subq $48, %rsp
    movq 32(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_unicode_11range_value
    addq $48, %rsp
    movl %eax, %r15d
    movl %r15d, %r15d
    movzbl %r15b, %r15d
    movl %r15d, %r15d
    movzbl %r15b, %r15d
    movzbl %r15b, %r15d
    leaq 128(%rbp), %r10
    movl %r15d, (%r10)
    jmp .L2_22
.L2_21:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_22:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movl %r15d, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_unicode_GraphemeState_accept
    addq $32, %rsp
    movq 112(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 88(%rbp)
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 72(%rbp)
    movq 88(%rbp), %rax
    movq 72(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_16(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 64(%rbp)
    movq 64(%rbp), %rax
    movq 112(%rbp), %r10
    movq %rax, (%r10)
    leaq 264(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 240(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    leaq 224(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 16(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 40(%rbp)
    movq 64(%rbp), %rax
    movq %rax, %r14
.L2_8:
    movq 96(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %r14
    jae .L2_10
.L2_9:
    subq $48, %rsp
    movq 24(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    leaq 240(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_utf8_decode
    addq $48, %rsp
    movq 56(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_11
    jmp .L2_12
.L2_11:
    movq 8(%rbp), %r10
    movq 48(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_13
.L2_12:
    leaq .Ltext_3(%rip), %rbx
    leaq 208(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $37, %rax
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
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_13:
    movq 48(%rbp), %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%rbp), %r10
    movl (%r10), %r12d
    movl %r12d, %r12d
    leaq 136(%rbp), %r10
    movl %r12d, (%r10)
    subq $48, %rsp
    movq 32(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_unicode_11range_value
    addq $48, %rsp
    movl %eax, %r13d
    movl %r13d, %r13d
    movzbl %r13b, %r13d
    movl %r13d, %r13d
    movzbl %r13b, %r13d
    movzbl %r13b, %r13d
    leaq 120(%rbp), %r10
    movl %r13d, (%r10)
    jmp .L2_24
.L2_23:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_24:
    movzbl %r13b, %r14d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movl %r14d, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_unicode_GraphemeState_12break_before
    addq $32, %rsp
    movl %eax, %r15d
    testl %r15d, %r15d
    jne .L2_14
    jmp .L2_15
.L2_14:
    jmp .L2_10
.L2_17:
    jmp .L2_16
.L2_15:
.L2_16:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movl %r14d, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_unicode_GraphemeState_accept
    addq $32, %rsp
    movq 112(%rbp), %r10
    movq (%r10), %r13
    movq 40(%rbp), %r10
    movq (%r10), %r15
    movq %r13, %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_16(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 112(%rbp), %r10
    movq %r13, (%r10)
    movq %r13, %r14
    jmp .L2_8
.L2_10:
    movq 24(%rbp), %r10
    movq (%r10), %r12
    movq 96(%rbp), %r10
    movq (%r10), %rbx
    movq 112(%rbp), %r10
    movq (%r10), %r13
    movq $1, %rcx
    addq %rcx, %rbx
    movq 104(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 104(%rbp), %rax
    cmpq %r13, %rax
    jbe .L2_18
.L2_19:
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_18:
    movq 104(%rbp), %rax
    movq %rax, %rbx
    addq %r12, %rbx
    movq 104(%rbp), %rcx
    movq %r13, %r14
    subq %rcx, %r14
    leaq 192(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    leaq 176(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    leaq 152(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    leaq 392(%rbp), %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r14, %rsi
    movq 456(%rbp), %rdi
    movq $24, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 456(%rbp), %rax
    movq 632(%rbp), %rdi
    movq 624(%rbp), %rsi
    movdqu 608(%rbp), %xmm6
    movdqu 592(%rbp), %xmm7
    movdqu 576(%rbp), %xmm8
    movdqu 560(%rbp), %xmm9
    movdqu 544(%rbp), %xmm10
    movdqu 528(%rbp), %xmm11
    movdqu 512(%rbp), %xmm12
    movdqu 496(%rbp), %xmm13
    movdqu 480(%rbp), %xmm14
    movdqu 464(%rbp), %xmm15
    movq 448(%rbp), %rbx
    movq 440(%rbp), %r12
    movq 432(%rbp), %r13
    movq 424(%rbp), %r14
    movq 416(%rbp), %r15
    leaq 640(%rbp), %rsp
    popq %rbp
    ret
.L2_20:
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_unicode_GraphemeIterator_11byte_offset
lb_unicode_GraphemeIterator_11byte_offset:
    .seh_proc lb_unicode_GraphemeIterator_11byte_offset
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
    movq $16, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
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
.L3_1:
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_unicode_GraphemeState_12break_before
lb_unicode_GraphemeState_12break_before:
    .seh_proc lb_unicode_GraphemeState_12break_before
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
    movq 360(%rbp), %rax
    movl %eax, 96(%rbp)
    movq 368(%rbp), %rax
    movl %eax, 80(%rbp)
    leaq 112(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %r10
    movzbl (%r10), %ebx
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L4_4
    jmp .L4_82
.L4_82:
    movl %r12d, %r14d
    jmp .L4_5
.L4_4:
    leaq 80(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $2, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L4_5:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L4_1
    jmp .L4_2
.L4_1:
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
    movq 120(%rbp), %r15
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L4_6:
    jmp .L4_3
.L4_2:
.L4_3:
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_unicode_16grapheme_control
    addq $32, %rsp
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L4_83
    jmp .L4_10
.L4_83:
    movl %r12d, %ebx
    jmp .L4_11
.L4_10:
    leaq 80(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    subq $32, %rsp
    movl %ebx, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_unicode_16grapheme_control
    addq $32, %rsp
    movl %eax, %ebx
.L4_11:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L4_7
    jmp .L4_8
.L4_7:
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
    movq 120(%rbp), %r15
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L4_12:
    jmp .L4_9
.L4_8:
.L4_9:
    movq 0(%rbp), %r10
    movzbl (%r10), %ebx
    leaq 80(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 64(%rbp), %r10
    movl %ebx, (%r10)
    leaq 48(%rbp), %r10
    movl %r12d, (%r10)
    leaq 64(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    leaq 47(%rbp), %r15
    movq %r15, %r10
    movb %r14b, (%r10)
    leaq 46(%rbp), %r14
    movq %r15, %r10
    movq %r14, %r11
    movzbl 0(%r10), %eax
    movb %al, 0(%r11)
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $9, %ecx
    cmpl %ecx, %r14d
    je .L4_53
.L4_55:
    jmp .L4_54
.L4_53:
    leaq 48(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $9, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L4_84
    jmp .L4_56
.L4_84:
    movl %r15d, %r13d
    jmp .L4_57
.L4_56:
    movl $10, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r13d
.L4_57:
    movzbl %r13b, %r15d
    testl %r15d, %r15d
    jne .L4_85
    jmp .L4_58
.L4_85:
    movl %r15d, %r13d
    jmp .L4_59
.L4_58:
    movl $12, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r13d
.L4_59:
    movzbl %r13b, %r15d
    testl %r15d, %r15d
    jne .L4_86
    jmp .L4_60
.L4_86:
    movl %r15d, %r13d
    jmp .L4_61
.L4_60:
    movl $13, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r13d
.L4_61:
    movzbl %r13b, %r14d
    movzbl %r14b, %r14d
    leaq 32(%rbp), %r10
    movl %r14d, (%r10)
    jmp .L4_79
.L4_62:
    jmp .L4_52
.L4_54:
    movl $12, %ecx
    cmpl %ecx, %r14d
    je .L4_63
.L4_65:
    movl $10, %ecx
    cmpl %ecx, %r14d
    je .L4_63
.L4_66:
    jmp .L4_64
.L4_63:
    leaq 48(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $10, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L4_87
    jmp .L4_67
.L4_87:
    movl %r14d, %r13d
    jmp .L4_68
.L4_67:
    movl $11, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r13d
.L4_68:
    movzbl %r13b, %r14d
    movzbl %r14b, %r14d
    leaq 32(%rbp), %r10
    movl %r14d, (%r10)
    jmp .L4_79
.L4_69:
    jmp .L4_52
.L4_64:
    movl $13, %ecx
    cmpl %ecx, %r14d
    je .L4_70
.L4_72:
    movl $11, %ecx
    cmpl %ecx, %r14d
    je .L4_70
.L4_73:
    jmp .L4_71
.L4_70:
    leaq 48(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $11, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movzbl %r13b, %r14d
    leaq 32(%rbp), %r10
    movl %r14d, (%r10)
    jmp .L4_79
.L4_74:
    jmp .L4_52
.L4_71:
    jmp .L4_75
.L4_77:
    jmp .L4_76
.L4_75:
    movl $0, %eax
    leaq 32(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, %r14d
    jmp .L4_79
.L4_78:
    jmp .L4_52
.L4_76:
.L4_52:
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L4_79:
    testl %r14d, %r14d
    jne .L4_13
    jmp .L4_14
.L4_13:
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
    movq 120(%rbp), %r15
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L4_16:
    jmp .L4_15
.L4_14:
.L4_15:
    movl $4, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L4_88
    jmp .L4_20
.L4_88:
    movl %r13d, %r14d
    jmp .L4_21
.L4_20:
    movl $5, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L4_21:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L4_89
    jmp .L4_22
.L4_89:
    movl %r13d, %r14d
    jmp .L4_23
.L4_22:
    movl $8, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L4_23:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L4_17
    jmp .L4_18
.L4_17:
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
    movq 120(%rbp), %r15
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L4_24:
    jmp .L4_19
.L4_18:
.L4_19:
    movl $7, %ecx
    cmpl %ecx, %ebx
    jne .L4_26
.L4_25:
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
    movq 120(%rbp), %r15
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L4_28:
    jmp .L4_27
.L4_26:
.L4_27:
    movq 0(%rbp), %rax
    movq $4, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L4_32
    jmp .L4_90
.L4_90:
    movl %ebx, %r13d
    jmp .L4_33
.L4_32:
    leaq 96(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    leaq 16(%rbp), %r10
    movl %ebx, (%r10)
    leaq lb_unicode_12indic_ranges(%rip), %r13
    subq $48, %rsp
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_unicode_11range_value
    addq $48, %rsp
    movl %eax, %ebx
    movl %ebx, %ebx
    movzbl %bl, %ebx
    movl %ebx, %ebx
    movzbl %bl, %ebx
    movzbl %bl, %ebx
    leaq 8(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L4_81
.L4_80:
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L4_81:
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L4_33:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L4_29
    jmp .L4_30
.L4_29:
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
    movq 120(%rbp), %r15
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L4_34:
    jmp .L4_31
.L4_30:
.L4_31:
    movq 0(%rbp), %r10
    movzbl (%r10), %ebx
    movl $5, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L4_38
    jmp .L4_91
.L4_91:
    movl %ebx, %r13d
    jmp .L4_39
.L4_38:
    movq 0(%rbp), %rax
    movq $3, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %r13d
.L4_39:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L4_40
    jmp .L4_92
.L4_92:
    movl %ebx, %r13d
    jmp .L4_41
.L4_40:
    leaq lb_unicode_19pictographic_ranges(%rip), %rbx
    leaq 96(%rbp), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movl %r13d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_unicode_11range_value
    addq $48, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L4_41:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L4_35
    jmp .L4_36
.L4_35:
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
    movq 120(%rbp), %r15
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L4_42:
    jmp .L4_37
.L4_36:
.L4_37:
    movq 0(%rbp), %r10
    movzbl (%r10), %ebx
    movl $6, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L4_46
    jmp .L4_93
.L4_93:
    movl %ebx, %r12d
    jmp .L4_47
.L4_46:
    movl $6, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %ebx
    movl %ebx, %r12d
.L4_47:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L4_48
    jmp .L4_94
.L4_94:
    movl %ebx, %r12d
    jmp .L4_49
.L4_48:
    movq 0(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
.L4_49:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L4_43
    jmp .L4_44
.L4_43:
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
    movq 120(%rbp), %r15
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L4_50:
    jmp .L4_45
.L4_44:
.L4_45:
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
    movq 120(%rbp), %r15
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
.L4_51:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_unicode_GraphemeState_accept
lb_unicode_GraphemeState_accept:
    .seh_proc lb_unicode_GraphemeState_accept
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
    movq %rax, 64(%rbp)
    movq 312(%rbp), %rax
    movl %eax, 48(%rbp)
    movq 320(%rbp), %rax
    movl %eax, 32(%rbp)
    leaq 64(%rbp), %r10
    movq (%r10), %r13
    movq $3, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    leaq 32(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %eax
    movl %eax, 0(%rbp)
    movl 0(%rbp), %eax
    movl $5, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L5_1
    jmp .L5_26
.L5_26:
    movl %r12d, %r15d
    jmp .L5_2
.L5_1:
    movq $2, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r15d
.L5_2:
    movzbl %r15b, %r12d
    movq %r14, %r10
    movb %r12b, (%r10)
    leaq lb_unicode_19pictographic_ranges(%rip), %r12
    leaq 48(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    subq $48, %rsp
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_unicode_11range_value
    addq $48, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L5_4
.L5_3:
    movq $2, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L5_5
.L5_4:
    movl 0(%rbp), %eax
    movl $4, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L5_7
.L5_6:
    movq $2, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L5_8
.L5_7:
.L5_8:
.L5_5:
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl 0(%rbp), %eax
    movl $6, %ecx
    cmpl %ecx, %eax
    jne .L5_10
.L5_9:
    movq %r14, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    jmp .L5_11
.L5_10:
    movl $0, %eax
    movl %eax, %r12d
.L5_11:
    movzbl %r12b, %r15d
    movq %r14, %r10
    movb %r15b, (%r10)
    leaq 16(%rbp), %r10
    movl %ebx, (%r10)
    leaq lb_unicode_12indic_ranges(%rip), %r15
    subq $48, %rsp
    movq %r15, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_unicode_11range_value
    addq $48, %rsp
    movl %eax, %r15d
    movl %r15d, %r15d
    movzbl %r15b, %r15d
    movl %r15d, %r15d
    movzbl %r15b, %r15d
    movzbl %r15b, %r15d
    leaq 8(%rbp), %r10
    movl %r15d, (%r10)
    jmp .L5_25
.L5_24:
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L5_25:
    movzbl %r15b, %ebx
    movl $1, %ecx
    cmpl %ecx, %ebx
    jne .L5_13
.L5_12:
    movq $4, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L5_14
.L5_13:
    movl $2, %ecx
    cmpl %ecx, %ebx
    jne .L5_16
.L5_15:
    movq $4, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L5_19
.L5_18:
    movl $2, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L5_20
.L5_19:
.L5_20:
    jmp .L5_17
.L5_16:
    movl $3, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L5_22
.L5_21:
    movq $4, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L5_23
.L5_22:
.L5_23:
.L5_17:
.L5_14:
    movl 0(%rbp), %eax
    movq %r13, %r10
    movb %al, (%r10)
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
    .globl lb_unicode_16grapheme_control
lb_unicode_16grapheme_control:
    .seh_proc lb_unicode_16grapheme_control
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
    movl $3, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L6_6
    jmp .L6_1
.L6_6:
    movl %r12d, %r13d
    jmp .L6_2
.L6_1:
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L6_2:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L6_7
    jmp .L6_3
.L6_7:
    movl %r12d, %ebx
    jmp .L6_4
.L6_3:
    movl $2, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L6_4:
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
.L6_5:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_unicode_graphemes_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "invalid UTF-8 text"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/unicode/graphemes.lucb:14:9"
.Ltext_3:
    .asciz "the grapheme iterator's input changed"
.Ltext_4:
    .asciz "src/std/unicode/graphemes.lucb:21:9"
.Ltext_5:
    .asciz "src/std/unicode/graphemes.lucb:24:9"
.Ltext_6:
    .asciz "src/std/unicode/graphemes.lucb:26:13"
.Ltext_7:
    .asciz "src/std/unicode/graphemes.lucb:32:13"
.Ltext_8:
    .asciz "src/std/unicode/graphemes.lucb:33:9"
.Ltext_9:
    .asciz "index out of bounds"
.Ltext_10:
    .asciz "src/std/unicode/graphemes.lucb:37:9"
.Ltext_11:
    .asciz "src/std/unicode/graphemes.lucb:96:9"
.Ltext_12:
    .asciz "src/std/unicode/graphemes.lucb:116:5"
.Ltext_13:
    .asciz "src/std/unicode/graphemes.lucb:119:5"
.Ltext_14:
    .asciz "src/std/unicode/graphemes.lucb:122:5"
.Ltext_15:
    .asciz "src/std/unicode/graphemes.lucb:134:13"
.Ltext_16:
    .asciz "integer overflow"

    .section .rdata,"dr"
    .p2align 3
