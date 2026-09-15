    .weak lb_memory_copy_0g1_u8
    .text

    .p2align 4
    .globl lb_fonts_0init
lb_fonts_0init:
    .seh_proc lb_fonts_0init
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
    leaq lb_fonts_failed(%rip), %rbx
    movl $208273526, %eax
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
    .globl lb_fonts_Face_init
lb_fonts_Face_init:
    .seh_proc lb_fonts_Face_init
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
    movsd %xmm2, 768(%rbp)
    movq 760(%rbp), %rax
    movq %rax, 472(%rbp)
    movq 768(%rbp), %rax
    movq %rax, 456(%rbp)
    movq 776(%rbp), %r10
    leaq 440(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 472(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    subq $32, %rsp
    call lb_thread_7is_main
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L1_28
.L1_27:
    leaq 216(%rbp), %rbx
    leaq lb_interop_12wrong_thread(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_17(%rip), %r13
    leaq 200(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $37, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 408(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L1_31
.L1_30:
    jmp .L1_29
.L1_28:
.L1_29:
    leaq 216(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 408(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L1_31:
    leaq 408(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_2
    jmp .L1_1
.L1_2:
    leaq 480(%rbp), %rbx
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
    movq 552(%rbp), %rdi
    movq $32, %rdx
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
.L1_3:
.L1_1:
    leaq 456(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, 16(%rbp)
    movabsq $4620693217682128896, %rax
    movq %rax, %xmm12
    movsd 16(%rbp), %xmm8
    ucomisd %xmm12, %xmm8
    setae %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L1_7
    jmp .L1_37
.L1_37:
    movl %ebx, %r13d
    jmp .L1_8
.L1_7:
    movabsq $4634204016564240384, %rax
    movq %rax, %xmm12
    movsd 16(%rbp), %xmm8
    ucomisd %xmm8, %xmm12
    setae %al
    movzbl %al, %r13d
.L1_8:
    movzbl %r13b, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L1_5
.L1_4:
    leaq 480(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_1(%rip), %r12
    leaq 392(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $44, %rax
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
    movq 552(%rbp), %rdi
    movq $32, %rdx
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
.L1_9:
    jmp .L1_6
.L1_5:
.L1_6:
    leaq 440(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    movq $255, %rcx
    cmpq %rcx, %r14
    seta %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_38
    jmp .L1_13
.L1_38:
    movl %r14d, %r15d
    jmp .L1_14
.L1_13:
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
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L1_14:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L1_10
    jmp .L1_11
.L1_10:
    leaq 480(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_2(%rip), %r12
    leaq 376(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $42, %rax
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
    movq 552(%rbp), %rdi
    movq $32, %rdx
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
.L1_15:
    jmp .L1_12
.L1_11:
.L1_12:
    movq %rbx, %r10
    movq (%r10), %r14
    movq %r13, %r10
    movq (%r10), %r15
    movq $0, %rax
    movq %rax, %r12
.L1_16:
    cmpq %r15, %r12
    jae .L1_19
.L1_17:
    movq %r14, %r13
    addq %r12, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movzbl %r13b, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L1_21
.L1_20:
    leaq 480(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_3(%rip), %r12
    leaq 360(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $30, %rax
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
    movq 552(%rbp), %rdi
    movq $32, %rdx
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
.L1_23:
    jmp .L1_22
.L1_21:
.L1_22:
.L1_18:
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r12
    jmp .L1_16
.L1_19:
    leaq 320(%rbp), %r13
    movsd 16(%rbp), %xmm8
    leaq 112(%rbp), %r10
    movsd %xmm8, (%r10)
    movq %rbx, %r10
    leaq 96(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 96(%rbp), %r12
    subq $48, %rsp
    movsd 16(%rbp), %xmm0
    movq %xmm0, %rax
    movq %rax, 8(%rsp)
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 24(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %rdx, %xmm1
    movq 16(%rsp), %r8
    call lb_fonts_8win_face
    addq $48, %rsp
    leaq 24(%rbp), %r14
    movq $64, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_33
    jmp .L1_32
.L1_33:
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 128(%rbp), %r12
    movq $40, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %rbx, %r10
    movq %r15, %r11
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
    movq %r12, %r10
    leaq 248(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq 64(%r10), %rax
    movq %rax, 64(%r11)
    jmp .L1_36
.L1_34:
.L1_32:
    leaq 128(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 248(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq 64(%r10), %rax
    movq %rax, 64(%r11)
    jmp .L1_36
.L1_35:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_36:
    leaq 248(%rbp), %r12
    movq $64, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_25
    jmp .L1_24
.L1_25:
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 480(%rbp), %r13
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
    movq 552(%rbp), %rdi
    movq $32, %rdx
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
.L1_26:
.L1_24:
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq %r13, %r10
    movq (%r10), %rbx
    movq 8(%rbp), %r10
    movq %rbx, (%r10)
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %r10
    movq %r14, (%r10)
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movsd 16(%rbp), %xmm8
    movq %rbx, %r10
    movsd %xmm8, (%r10)
    movq 8(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movsd (%r10), %xmm12
    movq %rbx, %r10
    movsd %xmm12, (%r10)
    movq 8(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movsd (%r10), %xmm12
    movq %rbx, %r10
    movsd %xmm12, (%r10)
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $32, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movsd (%r10), %xmm12
    movq %rbx, %r10
    movsd %xmm12, (%r10)
    leaq 480(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 552(%rbp), %rdi
    movq $32, %rdx
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
    .globl lb_fonts_Face_rasterize
lb_fonts_Face_rasterize:
    .seh_proc lb_fonts_Face_rasterize
    pushq %rbp
    .seh_pushreg %rbp
    subq $1168, %rsp
    .seh_stackalloc 1168
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 984(%rbp)
    movq %rdi, 1160(%rbp)
    .seh_savereg %rdi, 1160
    movq %rsi, 1152(%rbp)
    .seh_savereg %rsi, 1152
    movdqu %xmm6, 1136(%rbp)
    .seh_savexmm %xmm6, 1136
    movdqu %xmm7, 1120(%rbp)
    .seh_savexmm %xmm7, 1120
    movdqu %xmm8, 1104(%rbp)
    .seh_savexmm %xmm8, 1104
    movdqu %xmm9, 1088(%rbp)
    .seh_savexmm %xmm9, 1088
    movdqu %xmm10, 1072(%rbp)
    .seh_savexmm %xmm10, 1072
    movdqu %xmm11, 1056(%rbp)
    .seh_savexmm %xmm11, 1056
    movdqu %xmm12, 1040(%rbp)
    .seh_savexmm %xmm12, 1040
    movdqu %xmm13, 1024(%rbp)
    .seh_savexmm %xmm13, 1024
    movdqu %xmm14, 1008(%rbp)
    .seh_savexmm %xmm14, 1008
    movdqu %xmm15, 992(%rbp)
    .seh_savexmm %xmm15, 992
    movq %rbx, 976(%rbp)
    .seh_savereg %rbx, 976
    movq %r12, 968(%rbp)
    .seh_savereg %r12, 968
    movq %r13, 960(%rbp)
    .seh_savereg %r13, 960
    movq %r14, 952(%rbp)
    .seh_savereg %r14, 952
    movq %r15, 944(%rbp)
    .seh_savereg %r15, 944
    .seh_endprologue
    movq %rcx, 1184(%rbp)
    movq %rdx, 1192(%rbp)
    movq %r8, 1200(%rbp)
    movq %r9, 1208(%rbp)
    movsd %xmm3, 1208(%rbp)
    movq 1192(%rbp), %rax
    movq %rax, 872(%rbp)
    movq 1200(%rbp), %r10
    leaq 856(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1208(%rbp), %rax
    movq %rax, 840(%rbp)
    leaq 872(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 48(%rbp)
    subq $32, %rsp
    call lb_thread_7is_main
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L2_36
.L2_35:
    leaq 504(%rbp), %rbx
    leaq lb_interop_12wrong_thread(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_17(%rip), %r13
    leaq 488(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $37, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 808(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L2_39
.L2_38:
    jmp .L2_37
.L2_36:
.L2_37:
    leaq 504(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 808(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L2_39:
    leaq 808(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_2
    jmp .L2_1
.L2_2:
    leaq 880(%rbp), %rbx
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $56, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 984(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 984(%rbp), %rax
    movq 1160(%rbp), %rdi
    movq 1152(%rbp), %rsi
    movdqu 1136(%rbp), %xmm6
    movdqu 1120(%rbp), %xmm7
    movdqu 1104(%rbp), %xmm8
    movdqu 1088(%rbp), %xmm9
    movdqu 1072(%rbp), %xmm10
    movdqu 1056(%rbp), %xmm11
    movdqu 1040(%rbp), %xmm12
    movdqu 1024(%rbp), %xmm13
    movdqu 1008(%rbp), %xmm14
    movdqu 992(%rbp), %xmm15
    movq 976(%rbp), %rbx
    movq 968(%rbp), %r12
    movq 960(%rbp), %r13
    movq 952(%rbp), %r14
    movq 944(%rbp), %r15
    leaq 1168(%rbp), %rsp
    popq %rbp
    ret
.L2_3:
.L2_1:
    leaq 856(%rbp), %rax
    movq %rax, 144(%rbp)
    movq 144(%rbp), %r10
    leaq 432(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 48(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L2_41
.L2_40:
    leaq 448(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    leaq lb_fonts_failed(%rip), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    leaq .Ltext_4(%rip), %r15
    leaq 416(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq $18, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %r10
    leaq 768(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L2_75
.L2_43:
    jmp .L2_42
.L2_41:
.L2_42:
    leaq 432(%rbp), %rbx
    movq %rbx, %r10
    leaq 320(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 320(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 88(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %r10
    movq (%r10), %r14
    movq $4096, %rcx
    cmpq %rcx, %r14
    jbe .L2_49
.L2_48:
    leaq 336(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    leaq lb_fonts_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_18(%rip), %r14
    leaq 304(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $44, %rax
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
    movq %rbx, %r10
    leaq 376(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L2_74
.L2_51:
    jmp .L2_50
.L2_49:
.L2_50:
    leaq 288(%rbp), %rax
    movq %rax, 32(%rbp)
    leaq 264(%rbp), %r14
    movq $16, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    leaq 248(%rbp), %rax
    movq %rax, 64(%rbp)
    movq 32(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    movq $0, %rax
    movq %rax, %r12
    movq $0, %rax
    movq %rax, 40(%rbp)
.L2_52:
    movq 80(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r12
    jae .L2_54
.L2_53:
    subq $48, %rsp
    movq 88(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    leaq 264(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_utf8_decode
    addq $48, %rsp
    movq 72(%rbp), %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L2_55
    jmp .L2_56
.L2_55:
    movq %r14, %r10
    movq 64(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_57
.L2_56:
    leaq 336(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_19(%rip), %r13
    leaq 232(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $24, %rax
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
    movq %rbx, %r10
    leaq 376(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L2_74
.L2_58:
.L2_57:
    movq 64(%rbp), %r10
    movq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 32(%rbp), %r10
    movl (%r10), %r15d
    movl %r15d, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L2_82
    jmp .L2_62
.L2_82:
    movl %ebx, %r13d
    jmp .L2_63
.L2_62:
    movl $10, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r13d
.L2_63:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L2_83
    jmp .L2_64
.L2_83:
    movl %ebx, %r13d
    jmp .L2_65
.L2_64:
    movl $13, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r13d
.L2_65:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L2_84
    jmp .L2_66
.L2_84:
    movl %ebx, %r13d
    jmp .L2_67
.L2_66:
    movl $9, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r13d
.L2_67:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L2_59
    jmp .L2_60
.L2_59:
    leaq 336(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_20(%rip), %r13
    leaq 216(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $49, %rax
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
    movq %rbx, %r10
    leaq 376(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L2_74
.L2_68:
    jmp .L2_61
.L2_60:
.L2_61:
    movq 56(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 40(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq %rbx, %r12
    movq %r13, %rax
    movq %rax, 40(%rbp)
    jmp .L2_52
.L2_54:
    movq 40(%rbp), %rax
    movq $1024, %rcx
    cmpq %rcx, %rax
    jbe .L2_70
.L2_69:
    leaq 336(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_23(%rip), %r13
    leaq 200(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $40, %rax
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
    movq %rbx, %r10
    leaq 376(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L2_74
.L2_72:
    jmp .L2_71
.L2_70:
.L2_71:
    leaq 336(%rbp), %rbx
    movq 40(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 376(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L2_74
.L2_73:
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_74:
    leaq 376(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_45
    jmp .L2_44
.L2_45:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 448(%rbp), %r13
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
    movq %r13, %r10
    leaq 768(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L2_75
.L2_46:
.L2_44:
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rcx
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
    movq 48(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm13
    movaps %xmm12, %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    leaq 448(%rbp), %rbx
    movq %rbx, %r10
    movsd %xmm12, (%r10)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 768(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L2_75
.L2_47:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_75:
    leaq 768(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_5
    jmp .L2_4
.L2_5:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 880(%rbp), %r13
    movq $32, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $56, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 984(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 984(%rbp), %rax
    movq 1160(%rbp), %rdi
    movq 1152(%rbp), %rsi
    movdqu 1136(%rbp), %xmm6
    movdqu 1120(%rbp), %xmm7
    movdqu 1104(%rbp), %xmm8
    movdqu 1088(%rbp), %xmm9
    movdqu 1072(%rbp), %xmm10
    movdqu 1056(%rbp), %xmm11
    movdqu 1040(%rbp), %xmm12
    movdqu 1024(%rbp), %xmm13
    movdqu 1008(%rbp), %xmm14
    movdqu 992(%rbp), %xmm15
    movq 976(%rbp), %rbx
    movq 968(%rbp), %r12
    movq 960(%rbp), %r13
    movq 952(%rbp), %r14
    movq 944(%rbp), %r15
    leaq 1168(%rbp), %rsp
    popq %rbp
    ret
.L2_6:
.L2_4:
    movq %r12, %r10
    movsd (%r10), %xmm12
    leaq 840(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, 136(%rbp)
    movabsq $4602678819172646912, %rax
    movq %rax, %xmm13
    movsd 136(%rbp), %xmm8
    ucomisd %xmm13, %xmm8
    setae %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L2_10
    jmp .L2_85
.L2_85:
    movl %ebx, %r12d
    jmp .L2_11
.L2_10:
    movabsq $4616189618054758400, %rax
    movq %rax, %xmm13
    movsd 136(%rbp), %xmm8
    ucomisd %xmm8, %xmm13
    setae %al
    movzbl %al, %r12d
.L2_11:
    movzbl %r12b, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L2_8
.L2_7:
    leaq 880(%rbp), %rbx
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_7(%rip), %r13
    leaq 752(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $46, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $56, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 984(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 984(%rbp), %rax
    movq 1160(%rbp), %rdi
    movq 1152(%rbp), %rsi
    movdqu 1136(%rbp), %xmm6
    movdqu 1120(%rbp), %xmm7
    movdqu 1104(%rbp), %xmm8
    movdqu 1088(%rbp), %xmm9
    movdqu 1072(%rbp), %xmm10
    movdqu 1056(%rbp), %xmm11
    movdqu 1040(%rbp), %xmm12
    movdqu 1024(%rbp), %xmm13
    movdqu 1008(%rbp), %xmm14
    movdqu 992(%rbp), %xmm15
    movq 976(%rbp), %rbx
    movq 968(%rbp), %r12
    movq 960(%rbp), %r13
    movq 952(%rbp), %r14
    movq 944(%rbp), %r15
    leaq 1168(%rbp), %rsp
    popq %rbp
    ret
.L2_12:
    jmp .L2_9
.L2_8:
.L2_9:
    movsd 136(%rbp), %xmm9
    movaps %xmm12, %xmm8
    mulsd %xmm9, %xmm8
    movapd %xmm8, %xmm13
    subq $32, %rsp
    movapd %xmm13, %xmm0
    movq %xmm0, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    movq %rcx, %xmm0
    call lb_math_ceil
    addq $32, %rsp
    movapd %xmm0, %xmm13
    leaq .Ltext_8(%rip), %rbx
    subq $32, %rsp
    movapd %xmm13, %xmm0
    movq %xmm0, %rax
    movq %rax, 0(%rsp)
    movl $64, %eax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    movq %rbx, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq %rcx, %xmm0
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6f_to_u
    addq $32, %rsp
    movq %rax, %rbx
    movq %rbx, %rax
    movq $4, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 128(%rbp)
    movq 48(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd (%r10), %xmm13
    movq 48(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd (%r10), %xmm14
    movaps %xmm13, %xmm8
    addsd %xmm14, %xmm8
    movapd %xmm8, %xmm13
    movsd 136(%rbp), %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm13
    subq $32, %rsp
    movapd %xmm13, %xmm0
    movq %xmm0, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    movq %rcx, %xmm0
    call lb_math_ceil
    addq $32, %rsp
    movapd %xmm0, %xmm13
    leaq .Ltext_9(%rip), %r12
    subq $32, %rsp
    movapd %xmm13, %xmm0
    movq %xmm0, %rax
    movq %rax, 0(%rsp)
    movl $64, %eax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    movq %r12, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq %rcx, %xmm0
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6f_to_u
    addq $32, %rsp
    movq %rax, %r12
    movq %r12, %rax
    movq $4, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 120(%rbp)
    movq 128(%rbp), %rax
    movq $16384, %rcx
    cmpq %rcx, %rax
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L2_86
    jmp .L2_16
.L2_86:
    movl %r13d, %r14d
    jmp .L2_17
.L2_16:
    movq 120(%rbp), %rax
    movq $1024, %rcx
    cmpq %rcx, %rax
    seta %al
    movzbl %al, %r14d
.L2_17:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L2_87
    jmp .L2_18
.L2_87:
    movl %r13d, %r14d
    jmp .L2_19
.L2_18:
    movq 128(%rbp), %rax
    movq 120(%rbp), %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq $4194304, %rcx
    cmpq %rcx, %r13
    seta %al
    movzbl %al, %r14d
.L2_19:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L2_13
    jmp .L2_14
.L2_13:
    leaq 880(%rbp), %rbx
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_11(%rip), %r13
    leaq 736(%rbp), %r14
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
    movq $56, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 984(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 984(%rbp), %rax
    movq 1160(%rbp), %rdi
    movq 1152(%rbp), %rsi
    movdqu 1136(%rbp), %xmm6
    movdqu 1120(%rbp), %xmm7
    movdqu 1104(%rbp), %xmm8
    movdqu 1088(%rbp), %xmm9
    movdqu 1072(%rbp), %xmm10
    movdqu 1056(%rbp), %xmm11
    movdqu 1040(%rbp), %xmm12
    movdqu 1024(%rbp), %xmm13
    movdqu 1008(%rbp), %xmm14
    movdqu 992(%rbp), %xmm15
    movq 976(%rbp), %rbx
    movq 968(%rbp), %r12
    movq 960(%rbp), %r13
    movq 952(%rbp), %r14
    movq 944(%rbp), %r15
    leaq 1168(%rbp), %rsp
    popq %rbp
    ret
.L2_20:
    jmp .L2_15
.L2_14:
.L2_15:
    leaq 720(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, 112(%rbp)
    leaq 704(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 112(%rbp), %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 128(%rbp), %rax
    movq 120(%rbp), %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    leaq 656(%rbp), %rax
    movq %rax, 8(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r13
    jbe .L2_22
.L2_21:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $208273409, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    leaq .Ltext_13(%rip), %r14
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
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L2_23
.L2_22:
    movq 16(%rbp), %r10
    movq (%r10), %r12
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_24
    jmp .L2_25
.L2_25:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_24:
    movq %r14, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq $1, %rax
    movq %rax, 24(%rsp)
    leaq 632(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %rbx, %r11
    call *%r11
    addq $32, %rsp
    leaq 632(%rbp), %r15
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq $0, %rcx
    cmpq %rcx, %r13
    setne %al
    movzbl %al, %eax
    movl %eax, 104(%rbp)
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl 104(%rbp), %eax
    movl %ebx, %ecx
    movl %eax, %ebx
    andl %ecx, %ebx
    testl %ebx, %ebx
    jne .L2_26
    jmp .L2_27
.L2_26:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_15(%rip), %r12
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
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_23
.L2_27:
    movq %r15, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $0, %eax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memset
    addq $32, %rsp
    movq %rax, %r12
    movq 8(%rbp), %r10
    movq %rbx, (%r10)
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L2_23:
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_29
    jmp .L2_28
.L2_29:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 880(%rbp), %r12
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $56, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 984(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 984(%rbp), %rax
    movq 1160(%rbp), %rdi
    movq 1152(%rbp), %rsi
    movdqu 1136(%rbp), %xmm6
    movdqu 1120(%rbp), %xmm7
    movdqu 1104(%rbp), %xmm8
    movdqu 1088(%rbp), %xmm9
    movdqu 1072(%rbp), %xmm10
    movdqu 1056(%rbp), %xmm11
    movdqu 1040(%rbp), %xmm12
    movdqu 1024(%rbp), %xmm13
    movdqu 1008(%rbp), %xmm14
    movdqu 992(%rbp), %xmm15
    movq 976(%rbp), %rbx
    movq 968(%rbp), %r12
    movq 960(%rbp), %r13
    movq 952(%rbp), %r14
    movq 944(%rbp), %r15
    leaq 1168(%rbp), %rsp
    popq %rbp
    ret
.L2_30:
.L2_28:
    movq 8(%rbp), %r10
    movq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 600(%rbp), %rbx
    leaq 568(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq 24(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl 128(%rbp), %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq $20, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl 120(%rbp), %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movabsq $4611686018427387904, %rax
    movq %rax, %xmm12
    movsd 136(%rbp), %xmm9
    movaps %xmm12, %xmm8
    divsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd %xmm12, (%r10)
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    subq $112, %rsp
    movq 48(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 144(%rbp), %r10
    leaq 96(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 96(%rsp), %rax
    movq %rax, 16(%rsp)
    movsd 136(%rbp), %xmm0
    movq %xmm0, %rax
    movq %rax, 24(%rsp)
    movq %rbx, %rax
    movq %rax, 32(%rsp)
    leaq 536(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r9, %xmm3
    call lb_fonts_10win_raster
    addq $112, %rsp
    leaq 536(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_32
    jmp .L2_31
.L2_32:
    leaq 880(%rbp), %rax
    movq %rax, 96(%rbp)
    movq 96(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 96(%rbp), %rax
    movq $56, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    jbe .L2_77
.L2_76:
    leaq 184(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq 112(%rbp), %r10
    movq (%r10), %r15
    movq 112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L2_80
    jmp .L2_79
.L2_80:
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $48, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %r13, %r10
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
.L2_79:
    jmp .L2_78
.L2_77:
.L2_78:
    leaq 152(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L2_81:
    movq 96(%rbp), %rsi
    movq 984(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 984(%rbp), %rax
    movq 1160(%rbp), %rdi
    movq 1152(%rbp), %rsi
    movdqu 1136(%rbp), %xmm6
    movdqu 1120(%rbp), %xmm7
    movdqu 1104(%rbp), %xmm8
    movdqu 1088(%rbp), %xmm9
    movdqu 1072(%rbp), %xmm10
    movdqu 1056(%rbp), %xmm11
    movdqu 1040(%rbp), %xmm12
    movdqu 1024(%rbp), %xmm13
    movdqu 1008(%rbp), %xmm14
    movdqu 992(%rbp), %xmm15
    movq 976(%rbp), %rbx
    movq 968(%rbp), %r12
    movq 960(%rbp), %r13
    movq 952(%rbp), %r14
    movq 944(%rbp), %r15
    leaq 1168(%rbp), %rsp
    popq %rbp
    ret
.L2_33:
.L2_31:
    leaq 880(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $56, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 984(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 984(%rbp), %rax
    movq 1160(%rbp), %rdi
    movq 1152(%rbp), %rsi
    movdqu 1136(%rbp), %xmm6
    movdqu 1120(%rbp), %xmm7
    movdqu 1104(%rbp), %xmm8
    movdqu 1088(%rbp), %xmm9
    movdqu 1072(%rbp), %xmm10
    movdqu 1056(%rbp), %xmm11
    movdqu 1040(%rbp), %xmm12
    movdqu 1024(%rbp), %xmm13
    movdqu 1008(%rbp), %xmm14
    movdqu 992(%rbp), %xmm15
    movq 976(%rbp), %rbx
    movq 968(%rbp), %r12
    movq 960(%rbp), %r13
    movq 952(%rbp), %r14
    movq 944(%rbp), %r15
    leaq 1168(%rbp), %rsp
    popq %rbp
    ret
.L2_34:
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_fonts_Face_close
lb_fonts_Face_close:
    .seh_proc lb_fonts_Face_close
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
    movq %rax, 40(%rbp)
    leaq 40(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L3_4
    jmp .L3_2
.L3_4:
.L3_1:
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    leaq 24(%rbp), %r10
    movq %r12, (%r10)
    leaq 8(%rbp), %r10
    movq %r14, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DeleteDC
    addq $32, %rsp
    movl %eax, %r12d
    testq %r14, %r14
    jne .L3_8
    jmp .L3_6
.L3_8:
.L3_5:
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DeleteObject
    addq $32, %rsp
    movl %eax, %r12d
    jmp .L3_7
.L3_6:
.L3_7:
.L3_9:
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    jmp .L3_3
.L3_2:
.L3_3:
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
    .globl lb_fonts_12family_bytes
lb_fonts_12family_bytes:
    .seh_proc lb_fonts_12family_bytes
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
    leaq 128(%rbp), %rax
    movq %rax, 16(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r15
    leaq 144(%rbp), %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    leaq 80(%rbp), %rax
    movq %rax, 8(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %rbx
    jbe .L4_2
.L4_1:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_13(%rip), %r13
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L4_3
.L4_2:
    movq %r15, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L4_4
    jmp .L4_5
.L4_5:
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L4_4:
    movq %r14, %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq $1, %rax
    movq %rax, 24(%rsp)
    leaq 56(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r15, %r11
    call *%r11
    addq $32, %rsp
    leaq 56(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movq $0, %rcx
    cmpq %rcx, %rbx
    setne %al
    movzbl %al, %eax
    movl %eax, 32(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl 32(%rbp), %eax
    andl %r15d, %eax
    movl %eax, 24(%rbp)
    movl 24(%rbp), %eax
    testl %eax, %eax
    jne .L4_6
    jmp .L4_7
.L4_6:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_15(%rip), %r12
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
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L4_3
.L4_7:
    movq %r12, %r10
    movq (%r10), %r13
    movq 8(%rbp), %r10
    movq %r13, (%r10)
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
.L4_3:
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_9
    jmp .L4_8
.L4_9:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
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
.L4_10:
.L4_8:
    movq 8(%rbp), %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 40(%rbp), %r10
    movq (%r10), %rbx
    subq $64, %rsp
    movq 16(%rbp), %r10
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
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_copy_0g1_u8
    addq $64, %rsp
    movq 40(%rbp), %r10
    movq (%r10), %rbx
    movq 16(%rbp), %r10
    movq (%r10), %r12
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
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
    leaq 160(%rbp), %rbx
    movq 16(%rbp), %r10
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
.L4_11:
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_fonts_10mac_string
lb_fonts_10mac_string:
    .seh_proc lb_fonts_10mac_string
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
    movq %r14, 72(%rbp)
    .seh_savereg %r14, 72
    .seh_endprologue
    movq %rcx, 304(%rbp)
    movq %rdx, 312(%rbp)
    movq %r8, 320(%rbp)
    movq %r9, 328(%rbp)
    movq 312(%rbp), %r10
    leaq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movl $134217984, %eax
    movq %rax, 24(%rsp)
    movl $0, %eax
    movq %rax, 32(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call CFStringCreateWithBytes
    addq $48, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L5_1
    jmp .L5_2
.L5_1:
    jmp .L5_3
.L5_2:
    leaq 32(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_29(%rip), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $33, %rax
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
    movq 104(%rbp), %rdi
    movq $40, %rdx
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
    movq 72(%rbp), %r14
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L5_4:
.L5_3:
    leaq 32(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 104(%rbp), %rdi
    movq $40, %rdx
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
    movq 72(%rbp), %r14
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L5_5:
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_fonts_8mac_face
lb_fonts_8mac_face:
    .seh_proc lb_fonts_8mac_face
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
    movsd %xmm1, 520(%rbp)
    movq 520(%rbp), %rax
    movq %rax, 184(%rbp)
    movq 528(%rbp), %r10
    leaq 168(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 168(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L6_2
.L6_1:
    leaq .Ltext_31(%rip), %rbx
    leaq 136(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $5, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 152(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L6_3
.L6_2:
    leaq 152(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L6_3:
    leaq 152(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 96(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_fonts_10mac_string
    addq $48, %rsp
    leaq 96(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_5
    jmp .L6_4
.L6_5:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 200(%rbp), %r13
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
    movq 312(%rbp), %rdi
    movq $72, %rdx
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
.L6_6:
.L6_4:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    leaq 184(%rbp), %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %rdx, %xmm1
    movq 16(%rsp), %r8
    call CTFontCreateWithName
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L6_7
    jmp .L6_8
.L6_7:
    jmp .L6_9
.L6_8:
    leaq 200(%rbp), %r12
    movq $40, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    leaq lb_fonts_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_32(%rip), %r14
    leaq 80(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $30, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CFRelease
    addq $32, %rsp
    movq %r12, %rsi
    movq 312(%rbp), %rdi
    movq $72, %rdx
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
.L6_10:
.L6_9:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CTFontGetSymbolicTraits
    addq $32, %rsp
    movl %eax, %r12d
    movl $1024, %ecx
    andl %ecx, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L6_12
.L6_11:
    leaq 200(%rbp), %r12
    movq $40, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    leaq lb_fonts_failed(%rip), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    leaq .Ltext_33(%rip), %r15
    leaq 64(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq $36, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CFRelease
    addq $32, %rsp
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CFRelease
    addq $32, %rsp
    movq %r12, %rsi
    movq 312(%rbp), %rdi
    movq $72, %rdx
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
.L6_14:
    jmp .L6_13
.L6_12:
.L6_13:
    leaq 62(%rbp), %rbx
    movl $77, %eax
    movq %rbx, %r10
    movw %ax, (%r10)
    leaq 60(%rbp), %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq $1, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call CTFontGetGlyphsForCharacters
    addq $32, %rsp
    movl %eax, %ebx
    subq $48, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movl $0, %eax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    movq $1, %rax
    movq %rax, 32(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call CTFontGetAdvancesForGlyphs
    addq $48, %rsp
    movsd %xmm0, 0(%rbp)
    leaq 16(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movsd 0(%rbp), %xmm8
    movq %r12, %r10
    movsd %xmm8, (%r10)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CTFontGetAscent
    addq $32, %rsp
    movapd %xmm0, %xmm12
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd %xmm12, (%r10)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CTFontGetDescent
    addq $32, %rsp
    movapd %xmm0, %xmm12
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd %xmm12, (%r10)
    leaq 200(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $64, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CFRelease
    addq $32, %rsp
    movq %r12, %rsi
    movq 312(%rbp), %rdi
    movq $72, %rdx
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
.L6_15:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CFRelease
    addq $32, %rsp
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_fonts_10mac_raster
lb_fonts_10mac_raster:
    .seh_proc lb_fonts_10mac_raster
    pushq %rbp
    .seh_pushreg %rbp
    subq $880, %rsp
    .seh_stackalloc 880
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 696(%rbp)
    movq %rdi, 872(%rbp)
    .seh_savereg %rdi, 872
    movq %rsi, 864(%rbp)
    .seh_savereg %rsi, 864
    movdqu %xmm6, 848(%rbp)
    .seh_savexmm %xmm6, 848
    movdqu %xmm7, 832(%rbp)
    .seh_savexmm %xmm7, 832
    movdqu %xmm8, 816(%rbp)
    .seh_savexmm %xmm8, 816
    movdqu %xmm9, 800(%rbp)
    .seh_savexmm %xmm9, 800
    movdqu %xmm10, 784(%rbp)
    .seh_savexmm %xmm10, 784
    movdqu %xmm11, 768(%rbp)
    .seh_savexmm %xmm11, 768
    movdqu %xmm12, 752(%rbp)
    .seh_savexmm %xmm12, 752
    movdqu %xmm13, 736(%rbp)
    .seh_savexmm %xmm13, 736
    movdqu %xmm14, 720(%rbp)
    .seh_savexmm %xmm14, 720
    movdqu %xmm15, 704(%rbp)
    .seh_savexmm %xmm15, 704
    movq %rbx, 688(%rbp)
    .seh_savereg %rbx, 688
    movq %r12, 680(%rbp)
    .seh_savereg %r12, 680
    movq %r13, 672(%rbp)
    .seh_savereg %r13, 672
    movq %r14, 664(%rbp)
    .seh_savereg %r14, 664
    movq %r15, 656(%rbp)
    .seh_savereg %r15, 656
    .seh_endprologue
    movq %rcx, 896(%rbp)
    movq %rdx, 904(%rbp)
    movq %r8, 912(%rbp)
    movq %r9, 920(%rbp)
    movsd %xmm3, 920(%rbp)
    movq 904(%rbp), %r10
    leaq 576(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 912(%rbp), %r10
    leaq 560(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 920(%rbp), %rax
    movq %rax, 544(%rbp)
    movq 928(%rbp), %rax
    movq %rax, 528(%rbp)
    leaq 576(%rbp), %rax
    movq %rax, 272(%rbp)
    movq 272(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L7_1
    jmp .L7_2
.L7_1:
    jmp .L7_3
.L7_2:
    leaq 624(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_4(%rip), %r12
    leaq 512(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $18, %rax
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
    movq 696(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 696(%rbp), %rax
    movq 872(%rbp), %rdi
    movq 864(%rbp), %rsi
    movdqu 848(%rbp), %xmm6
    movdqu 832(%rbp), %xmm7
    movdqu 816(%rbp), %xmm8
    movdqu 800(%rbp), %xmm9
    movdqu 784(%rbp), %xmm10
    movdqu 768(%rbp), %xmm11
    movdqu 752(%rbp), %xmm12
    movdqu 736(%rbp), %xmm13
    movdqu 720(%rbp), %xmm14
    movdqu 704(%rbp), %xmm15
    movq 688(%rbp), %rbx
    movq 680(%rbp), %r12
    movq 672(%rbp), %r13
    movq 664(%rbp), %r14
    movq 656(%rbp), %r15
    leaq 880(%rbp), %rsp
    popq %rbp
    ret
.L7_3:
    movq 272(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    leaq 544(%rbp), %r13
    movq %r13, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, 264(%rbp)
    movsd 264(%rbp), %xmm9
    movaps %xmm12, %xmm8
    mulsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %rdx, %xmm1
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call CTFontCreateCopyWithAttributes
    addq $32, %rsp
    movq %rax, 56(%rbp)
    movq 56(%rbp), %rax
    testq %rax, %rax
    jne .L7_5
    jmp .L7_6
.L7_5:
    jmp .L7_7
.L7_6:
    leaq 624(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_35(%rip), %r12
    leaq 496(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $24, %rax
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
    movq 696(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 696(%rbp), %rax
    movq 872(%rbp), %rdi
    movq 864(%rbp), %rsi
    movdqu 848(%rbp), %xmm6
    movdqu 832(%rbp), %xmm7
    movdqu 816(%rbp), %xmm8
    movdqu 800(%rbp), %xmm9
    movdqu 784(%rbp), %xmm10
    movdqu 768(%rbp), %xmm11
    movdqu 752(%rbp), %xmm12
    movdqu 736(%rbp), %xmm13
    movdqu 720(%rbp), %xmm14
    movdqu 704(%rbp), %xmm15
    movq 688(%rbp), %rbx
    movq 680(%rbp), %r12
    movq 672(%rbp), %r13
    movq 664(%rbp), %r14
    movq 656(%rbp), %r15
    leaq 880(%rbp), %rsp
    popq %rbp
    ret
.L7_7:
    leaq 528(%rbp), %rax
    movq %rax, 256(%rbp)
    movq 256(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 248(%rbp)
    movq 248(%rbp), %r10
    movq (%r10), %r14
    movq 248(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    movq 248(%rbp), %rax
    movq $20, %rcx
    addq %rcx, %rax
    movq %rax, 240(%rbp)
    movq 240(%rbp), %r10
    movl (%r10), %r12d
    movl %r12d, %r12d
    movq %r15, %r10
    movl (%r10), %r15d
    movl %r15d, %r15d
    subq $64, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    movq %r15, %rax
    movq %rax, 32(%rsp)
    movq $0, %rax
    movq %rax, 40(%rsp)
    movl $7, %eax
    movq %rax, 48(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call CGBitmapContextCreate
    addq $64, %rsp
    movq %rax, 48(%rbp)
    movq 48(%rbp), %rax
    testq %rax, %rax
    jne .L7_9
    jmp .L7_10
.L7_9:
    jmp .L7_11
.L7_10:
    leaq 624(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_36(%rip), %r12
    leaq 480(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $38, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CFRelease
    addq $32, %rsp
    movq %rbx, %rsi
    movq 696(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 696(%rbp), %rax
    movq 872(%rbp), %rdi
    movq 864(%rbp), %rsi
    movdqu 848(%rbp), %xmm6
    movdqu 832(%rbp), %xmm7
    movdqu 816(%rbp), %xmm8
    movdqu 800(%rbp), %xmm9
    movdqu 784(%rbp), %xmm10
    movdqu 768(%rbp), %xmm11
    movdqu 752(%rbp), %xmm12
    movdqu 736(%rbp), %xmm13
    movdqu 720(%rbp), %xmm14
    movdqu 704(%rbp), %xmm15
    movq 688(%rbp), %rbx
    movq 680(%rbp), %r12
    movq 672(%rbp), %r13
    movq 664(%rbp), %r14
    movq 656(%rbp), %r15
    leaq 880(%rbp), %rsp
    popq %rbp
    ret
.L7_11:
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call CGContextSetShouldAntialias
    addq $32, %rsp
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $0, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call CGContextSetShouldSmoothFonts
    addq $32, %rsp
    movabsq $4607182418800017408, %rax
    movq %rax, %xmm12
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 8(%rsp)
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %rdx, %xmm1
    movq 16(%rsp), %r8
    movq %r8, %xmm2
    call CGContextSetGrayFillColor
    addq $32, %rsp
    leaq 560(%rbp), %rax
    movq %rax, 232(%rbp)
    movq 232(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 224(%rbp)
    leaq 464(%rbp), %rax
    movq %rax, 32(%rbp)
    leaq 440(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 216(%rbp)
    leaq 424(%rbp), %rax
    movq %rax, 208(%rbp)
    movq 32(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 200(%rbp)
    leaq 404(%rbp), %rax
    movq %rax, 184(%rbp)
    movq 184(%rbp), %rax
    movq $2, %rcx
    addq %rcx, %rax
    movq %rax, 176(%rbp)
    leaq 400(%rbp), %rax
    movq %rax, 168(%rbp)
    leaq 384(%rbp), %rax
    movq %rax, 160(%rbp)
    movq 160(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 152(%rbp)
    leaq 368(%rbp), %rax
    movq %rax, 144(%rbp)
    movq 144(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 136(%rbp)
    leaq 328(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 128(%rbp)
    leaq 312(%rbp), %rax
    movq %rax, 120(%rbp)
    movq 120(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 112(%rbp)
    leaq 296(%rbp), %rax
    movq %rax, 104(%rbp)
    leaq 280(%rbp), %rax
    movq %rax, 96(%rbp)
    movabsq $4611686018427387904, %rax
    movq %rax, %xmm8
    movsd %xmm8, 88(%rbp)
    movq 272(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 80(%rbp)
    movq 272(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    movq 96(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 64(%rbp)
    movq $0, %rax
    movq %rax, %r13
    movq $0, %rax
    movq %rax, 40(%rbp)
.L7_13:
    movq 224(%rbp), %r10
    movq (%r10), %rbx
    cmpq %rbx, %r13
    jae .L7_15
.L7_14:
    subq $48, %rsp
    movq 232(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    leaq 440(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_utf8_decode
    addq $48, %rsp
    movq 216(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_16
    jmp .L7_17
.L7_16:
    movq 24(%rbp), %r10
    movq 208(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L7_18
.L7_17:
    leaq .Ltext_37(%rip), %rbx
    leaq 408(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $22, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_38(%rip), %rbx
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
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L7_18:
    movq 208(%rbp), %r10
    movq 32(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 200(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 192(%rbp)
    movq 184(%rbp), %r11
    movl $0, 0(%r11)
    movq 32(%rbp), %r10
    movl (%r10), %r12d
    movl %r12d, %r12d
    movl $65535, %ecx
    cmpl %ecx, %r12d
    jbe .L7_20
.L7_19:
    movl %r12d, %eax
    movl $65536, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r15d
.L7_23:
    movl $10, %ecx
    movl %r15d, %r12d
    shrl %cl, %r12d
    movl %r12d, %eax
    movl $55296, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r12d
    movl %r12d, %r12d
    movzwl %r12w, %r12d
    movq 184(%rbp), %r10
    movw %r12w, (%r10)
    movl $1023, %ecx
    movl %r15d, %r12d
    andl %ecx, %r12d
    movl $56320, %ecx
    addl %ecx, %r12d
    movl %r12d, %r12d
    movzwl %r12w, %r12d
    movq 176(%rbp), %r10
    movw %r12w, (%r10)
    movq $2, %rax
    movq %rax, 16(%rbp)
    jmp .L7_21
.L7_20:
    movl %r12d, %r15d
    movzwl %r15w, %r15d
    movq 184(%rbp), %r10
    movw %r15w, (%r10)
    movq $1, %rax
    movq %rax, 16(%rbp)
.L7_21:
    movq 168(%rbp), %r11
    movl $0, 0(%r11)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 184(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 168(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 16(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call CTFontGetGlyphsForCharacters
    addq $32, %rsp
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L7_25
.L7_24:
    movq 232(%rbp), %r10
    movq (%r10), %r12
    movq 224(%rbp), %r10
    movq (%r10), %r15
    movq $1, %rcx
    addq %rcx, %r15
    cmpq %r15, %r13
    jb 1f
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 192(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 192(%rbp), %rcx
    cmpq %rcx, %r13
    jbe .L7_27
.L7_28:
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L7_27:
    movq %r13, %r15
    addq %r12, %r15
    movq 192(%rbp), %rax
    movq %rax, %r14
    subq %r13, %r14
    movq 160(%rbp), %r10
    movq %r15, (%r10)
    movq 152(%rbp), %r10
    movq %r14, (%r10)
    movq 144(%rbp), %r10
    movq %r15, (%r10)
    movq 136(%rbp), %r10
    movq %r14, (%r10)
    subq $48, %rsp
    movq 144(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 328(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_fonts_10mac_string
    addq $48, %rsp
    movq 128(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L7_30
    jmp .L7_29
.L7_30:
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 624(%rbp), %r12
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
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CGContextRelease
    addq $32, %rsp
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CFRelease
    addq $32, %rsp
    movq %r12, %rsi
    movq 696(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 696(%rbp), %rax
    movq 872(%rbp), %rdi
    movq 864(%rbp), %rsi
    movdqu 848(%rbp), %xmm6
    movdqu 832(%rbp), %xmm7
    movdqu 816(%rbp), %xmm8
    movdqu 800(%rbp), %xmm9
    movdqu 784(%rbp), %xmm10
    movdqu 768(%rbp), %xmm11
    movdqu 752(%rbp), %xmm12
    movdqu 736(%rbp), %xmm13
    movdqu 720(%rbp), %xmm14
    movdqu 704(%rbp), %xmm15
    movq 688(%rbp), %rbx
    movq 680(%rbp), %r12
    movq 672(%rbp), %r13
    movq 664(%rbp), %r14
    movq 656(%rbp), %r15
    leaq 880(%rbp), %rsp
    popq %rbp
    ret
.L7_29:
    movq 8(%rbp), %r10
    movq (%r10), %r12
    movq 120(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq 120(%rbp), %r10
    movq %rax, (%r10)
    movq 16(%rbp), %rax
    movq 112(%rbp), %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 120(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call CTFontCreateForString
    addq $48, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L7_35
    jmp .L7_33
.L7_35:
.L7_32:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 184(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 168(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 16(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call CTFontGetGlyphsForCharacters
    addq $32, %rsp
    movl %eax, %r14d
    movq %r13, %r14
    jmp .L7_34
.L7_33:
    movq 56(%rbp), %rax
    movq %rax, %r14
.L7_34:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CFRelease
    addq $32, %rsp
    movq %r14, %r15
    movq %r13, %rbx
    jmp .L7_26
.L7_25:
    movq 56(%rbp), %rax
    movq %rax, %r15
    movq $0, %rax
    movq %rax, %rbx
.L7_26:
    movq 96(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq 40(%rbp), %rax
    movq %rax, %rcx
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
    movq 80(%rbp), %r10
    movsd (%r10), %xmm13
    movaps %xmm12, %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    movsd 264(%rbp), %xmm8
    mulsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    movsd 88(%rbp), %xmm8
    addsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    movq 96(%rbp), %r10
    movsd %xmm12, (%r10)
    movq 240(%rbp), %r10
    movl (%r10), %r12d
    movl %r12d, %r12d
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
    movsd 88(%rbp), %xmm9
    movaps %xmm12, %xmm8
    subsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movq 72(%rbp), %r10
    movsd (%r10), %xmm13
    movsd 264(%rbp), %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm13
    movaps %xmm12, %xmm8
    subsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    movq 64(%rbp), %r10
    movsd %xmm12, (%r10)
    movq 96(%rbp), %r10
    movq 104(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $48, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq 168(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 104(%rbp), %rax
    movq %rax, 16(%rsp)
    movq $1, %rax
    movq %rax, 24(%rsp)
    movq 48(%rbp), %rax
    movq %rax, 32(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call CTFontDrawGlyphs
    addq $48, %rsp
    testq %rbx, %rbx
    jne .L7_39
    jmp .L7_37
.L7_39:
.L7_36:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CFRelease
    addq $32, %rsp
    jmp .L7_38
.L7_37:
.L7_38:
    movq 40(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 192(%rbp), %rax
    movq %rax, %r13
    movq %rbx, %rax
    movq %rax, 40(%rbp)
    jmp .L7_13
.L7_15:
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CGContextRelease
    addq $32, %rsp
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CFRelease
    addq $32, %rsp
    leaq 624(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 696(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 696(%rbp), %rax
    movq 872(%rbp), %rdi
    movq 864(%rbp), %rsi
    movdqu 848(%rbp), %xmm6
    movdqu 832(%rbp), %xmm7
    movdqu 816(%rbp), %xmm8
    movdqu 800(%rbp), %xmm9
    movdqu 784(%rbp), %xmm10
    movdqu 768(%rbp), %xmm11
    movdqu 752(%rbp), %xmm12
    movdqu 736(%rbp), %xmm13
    movdqu 720(%rbp), %xmm14
    movdqu 704(%rbp), %xmm15
    movq 688(%rbp), %rbx
    movq 680(%rbp), %r12
    movq 672(%rbp), %r13
    movq 664(%rbp), %r14
    movq 656(%rbp), %r15
    leaq 880(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_fonts_8win_face
lb_fonts_8win_face:
    .seh_proc lb_fonts_8win_face
    pushq %rbp
    .seh_pushreg %rbp
    subq $1440, %rsp
    .seh_stackalloc 1440
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 1256(%rbp)
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
    movq %rbx, 1248(%rbp)
    .seh_savereg %rbx, 1248
    movq %r12, 1240(%rbp)
    .seh_savereg %r12, 1240
    movq %r13, 1232(%rbp)
    .seh_savereg %r13, 1232
    movq %r14, 1224(%rbp)
    .seh_savereg %r14, 1224
    movq %r15, 1216(%rbp)
    .seh_savereg %r15, 1216
    .seh_endprologue
    movq %rcx, 1456(%rbp)
    movq %rdx, 1464(%rbp)
    movq %r8, 1472(%rbp)
    movq %r9, 1480(%rbp)
    movsd %xmm1, 1464(%rbp)
    movq 1464(%rbp), %rax
    movq %rax, 1128(%rbp)
    movq 1472(%rbp), %r10
    leaq 1112(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 1096(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq 1112(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L8_2
.L8_1:
    leaq .Ltext_50(%rip), %rbx
    leaq 1064(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $8, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 1080(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L8_3
.L8_2:
    leaq 1080(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L8_3:
    leaq 1080(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 1016(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_fonts_12family_bytes
    addq $48, %rsp
    leaq 1016(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_5
    jmp .L8_4
.L8_5:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 1144(%rbp), %r13
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
    movq 1256(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1256(%rbp), %rax
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
    movq 1248(%rbp), %rbx
    movq 1240(%rbp), %r12
    movq 1232(%rbp), %r13
    movq 1224(%rbp), %r14
    movq 1216(%rbp), %r15
    leaq 1440(%rbp), %rsp
    popq %rbp
    ret
.L8_6:
.L8_4:
    movq %r12, %r10
    movq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 1000(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 24(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 336(%rbp)
    leaq lb_fonts_failed(%rip), %rax
    movq %rax, 328(%rbp)
    movq 328(%rbp), %r10
    movl (%r10), %r15d
    subq $32, %rsp
    movq 336(%rbp), %rax
    movq %rax, 8(%rsp)
    movl %r15d, %eax
    movq %rax, 16(%rsp)
    leaq 952(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_12windows_text_wide
    addq $32, %rsp
    leaq 952(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L8_8
    jmp .L8_7
.L8_8:
    movq $16, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, 320(%rbp)
    leaq 1144(%rbp), %rax
    movq %rax, 312(%rbp)
    movq 312(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq 320(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 312(%rbp), %rax
    movq $64, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %rbx
    leaq 936(%rbp), %rax
    movq %rax, 304(%rbp)
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq 336(%rbp), %rax
    movq 304(%rbp), %r10
    movq %rax, (%r10)
    movq 304(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L8_10
    jmp .L8_9
.L8_10:
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 304(%rbp), %r10
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
.L8_9:
    movq 312(%rbp), %rsi
    movq 1256(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1256(%rbp), %rax
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
    movq 1248(%rbp), %rbx
    movq 1240(%rbp), %r12
    movq 1232(%rbp), %r13
    movq 1224(%rbp), %r14
    movq 1216(%rbp), %r15
    leaq 1440(%rbp), %rsp
    popq %rbp
    ret
.L8_11:
.L8_7:
    movq %r14, %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 296(%rbp)
    movq 296(%rbp), %rax
    movq $32, %rcx
    cmpq %rcx, %rax
    jbe .L8_13
.L8_12:
    leaq 1144(%rbp), %rax
    movq %rax, 288(%rbp)
    movq 288(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq 328(%rbp), %r10
    movl (%r10), %eax
    movl %eax, 280(%rbp)
    movl 280(%rbp), %eax
    movq %r14, %r10
    movl %eax, (%r10)
    leaq .Ltext_52(%rip), %rax
    movq %rax, 272(%rbp)
    leaq 920(%rbp), %r13
    movq 272(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, 264(%rbp)
    movq $53, %rax
    movq 264(%rbp), %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 288(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r13
    leaq 904(%rbp), %r14
    movq 16(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 256(%rbp)
    movq 296(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 256(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, 248(%rbp)
    movq 248(%rbp), %r10
    movq %r12, (%r10)
    movq %r13, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, 240(%rbp)
    movq 240(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L8_16
    jmp .L8_15
.L8_16:
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
.L8_15:
    leaq 888(%rbp), %rbx
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq 336(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq %r13, %r10
    movq (%r10), %r12
    movq 240(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L8_18
    jmp .L8_17
.L8_18:
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
.L8_17:
    movq 288(%rbp), %rsi
    movq 1256(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1256(%rbp), %rax
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
    movq 1248(%rbp), %rbx
    movq 1240(%rbp), %r12
    movq 1232(%rbp), %r13
    movq 1224(%rbp), %r14
    movq 1216(%rbp), %r15
    leaq 1440(%rbp), %rsp
    popq %rbp
    ret
.L8_19:
    jmp .L8_14
.L8_13:
.L8_14:
    leaq 796(%rbp), %rax
    movq %rax, 232(%rbp)
    leaq 704(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movq $0, 80(%r11)
    movl $0, 88(%r11)
    leaq 1128(%rbp), %r14
    movq %r14, %r10
    movsd (%r10), %xmm12
    movabsq $4634204016564240384, %rax
    movq %rax, %xmm8
    movsd %xmm8, 224(%rbp)
    movsd 224(%rbp), %xmm9
    movaps %xmm12, %xmm8
    mulsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    subq $32, %rsp
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    movq %rcx, %xmm0
    call lb_math_round
    addq $32, %rsp
    movapd %xmm0, %xmm12
    leaq .Ltext_54(%rip), %r14
    subq $32, %rsp
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 0(%rsp)
    movl $32, %eax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    movq %r14, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq %rcx, %xmm0
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6f_to_s
    addq $32, %rsp
    movq %rax, %r14
    movl $0, %eax
    movl %r14d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $400, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq $23, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $4, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq $26, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $4, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq $27, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $49, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r13, %r10
    movq 232(%rbp), %r11
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
    movq 80(%r10), %rax
    movq %rax, 80(%r11)
    movl 88(%r10), %eax
    movl %eax, 88(%r11)
    movq 232(%rbp), %rax
    movq $28, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq 16(%rbp), %r10
    movq (%r10), %r14
    movq $0, %rax
    movq %rax, %r15
.L8_20:
    movq 296(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L8_23
.L8_21:
    movq $2, %rcx
    movq %r15, %r12
    imulq %rcx, %r12
    movq %r13, %rbx
    addq %r12, %rbx
    addq %r14, %r12
    movq %r12, %r10
    movzwl (%r10), %r12d
    movq %rbx, %r10
    movw %r12w, (%r10)
.L8_22:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r15
    jmp .L8_20
.L8_23:
    subq $32, %rsp
    movq 232(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CreateFontIndirectW
    addq $32, %rsp
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    testq %rax, %rax
    jne .L8_24
    jmp .L8_25
.L8_24:
    jmp .L8_26
.L8_25:
    leaq 1144(%rbp), %rax
    movq %rax, 216(%rbp)
    movq 216(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 328(%rbp), %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_32(%rip), %r13
    leaq 688(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $30, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 216(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 672(%rbp), %r13
    movq 16(%rbp), %r10
    movq (%r10), %r14
    movq 296(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 208(%rbp)
    movq 208(%rbp), %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L8_28
    jmp .L8_27
.L8_28:
    movq $16, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
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
    movq %r15, %r11
    call *%r11
    addq $48, %rsp
.L8_27:
    leaq 656(%rbp), %rbx
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq 336(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq %r12, %r10
    movq (%r10), %r13
    movq 208(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L8_30
    jmp .L8_29
.L8_30:
    movq $16, %rcx
    movq %r14, %r12
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
.L8_29:
    movq 216(%rbp), %rsi
    movq 1256(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1256(%rbp), %rax
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
    movq 1248(%rbp), %rbx
    movq 1240(%rbp), %r12
    movq 1232(%rbp), %r13
    movq 1224(%rbp), %r14
    movq 1216(%rbp), %r15
    leaq 1440(%rbp), %rsp
    popq %rbp
    ret
.L8_31:
.L8_26:
    subq $32, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CreateCompatibleDC
    addq $32, %rsp
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    testq %rax, %rax
    jne .L8_32
    jmp .L8_33
.L8_32:
    jmp .L8_34
.L8_33:
    leaq 1144(%rbp), %rax
    movq %rax, 200(%rbp)
    movq 200(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 328(%rbp), %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_57(%rip), %r13
    leaq 640(%rbp), %r14
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
    movq 200(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DeleteObject
    addq $32, %rsp
    movl %eax, %ebx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 624(%rbp), %r13
    movq 16(%rbp), %r10
    movq (%r10), %r14
    movq 296(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 192(%rbp)
    movq 192(%rbp), %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L8_36
    jmp .L8_35
.L8_36:
    movq $16, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
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
    movq %r15, %r11
    call *%r11
    addq $48, %rsp
.L8_35:
    leaq 608(%rbp), %rbx
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq 336(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq %r12, %r10
    movq (%r10), %r13
    movq 192(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L8_38
    jmp .L8_37
.L8_38:
    movq $16, %rcx
    movq %r14, %r12
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
.L8_37:
    movq 200(%rbp), %rsi
    movq 1256(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1256(%rbp), %rax
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
    movq 1248(%rbp), %rbx
    movq 1240(%rbp), %r12
    movq 1232(%rbp), %r13
    movq 1224(%rbp), %r14
    movq 1216(%rbp), %r15
    leaq 1440(%rbp), %rsp
    popq %rbp
    ret
.L8_39:
.L8_34:
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 8(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call SelectObject
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L8_40
    jmp .L8_41
.L8_40:
    jmp .L8_42
.L8_41:
    leaq 1144(%rbp), %rax
    movq %rax, 184(%rbp)
    movq 184(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 328(%rbp), %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_59(%rip), %r13
    leaq 592(%rbp), %r14
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
    movq 184(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DeleteDC
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DeleteObject
    addq $32, %rsp
    movl %eax, %ebx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 576(%rbp), %r13
    movq 16(%rbp), %r10
    movq (%r10), %r14
    movq 296(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 176(%rbp)
    movq 176(%rbp), %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L8_44
    jmp .L8_43
.L8_44:
    movq $16, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
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
    movq %r15, %r11
    call *%r11
    addq $48, %rsp
.L8_43:
    leaq 560(%rbp), %rbx
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq 336(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq %r12, %r10
    movq (%r10), %r13
    movq 176(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L8_46
    jmp .L8_45
.L8_46:
    movq $16, %rcx
    movq %r14, %r12
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
.L8_45:
    movq 184(%rbp), %rsi
    movq 1256(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1256(%rbp), %rax
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
    movq 1248(%rbp), %rbx
    movq 1240(%rbp), %r12
    movq 1232(%rbp), %r13
    movq 1224(%rbp), %r14
    movq 1216(%rbp), %r15
    leaq 1440(%rbp), %rsp
    popq %rbp
    ret
.L8_47:
.L8_42:
    leaq 500(%rbp), %rax
    movq %rax, 168(%rbp)
    movq 168(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $0, 56(%r11)
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 168(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call GetTextMetricsW
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L8_67
    jmp .L8_51
.L8_67:
    movl %r12d, %r13d
    jmp .L8_52
.L8_51:
    movq 168(%rbp), %rax
    movq $55, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $1, %ecx
    andl %ecx, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L8_52:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L8_48
    jmp .L8_49
.L8_48:
    leaq 1144(%rbp), %rax
    movq %rax, 160(%rbp)
    movq 160(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 328(%rbp), %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_33(%rip), %r13
    leaq 480(%rbp), %r14
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
    movq 160(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DeleteDC
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DeleteObject
    addq $32, %rsp
    movl %eax, %ebx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 464(%rbp), %r13
    movq 16(%rbp), %r10
    movq (%r10), %r14
    movq 296(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 152(%rbp)
    movq 152(%rbp), %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L8_54
    jmp .L8_53
.L8_54:
    movq $16, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
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
    movq %r15, %r11
    call *%r11
    addq $48, %rsp
.L8_53:
    leaq 448(%rbp), %rbx
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq 336(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq %r12, %r10
    movq (%r10), %r13
    movq 152(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L8_56
    jmp .L8_55
.L8_56:
    movq $16, %rcx
    movq %r14, %r12
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
.L8_55:
    movq 160(%rbp), %rsi
    movq 1256(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1256(%rbp), %rax
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
    movq 1248(%rbp), %rbx
    movq 1240(%rbp), %r12
    movq 1232(%rbp), %r13
    movq 1224(%rbp), %r14
    movq 1216(%rbp), %r15
    leaq 1440(%rbp), %rsp
    popq %rbp
    ret
.L8_57:
    jmp .L8_50
.L8_49:
.L8_50:
    leaq 408(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movq 0(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 144(%rbp)
    movq 8(%rbp), %rax
    movq 144(%rbp), %r10
    movq %rax, (%r10)
    movq 168(%rbp), %rax
    movq $20, %rcx
    addq %rcx, %rax
    movq %rax, 136(%rbp)
    movq 136(%rbp), %r10
    movslq (%r10), %rax
    movq %rax, 128(%rbp)
    movl 128(%rbp), %eax
    movslq %eax, %rax
    movq %rax, 120(%rbp)
    movq 120(%rbp), %rax
    cvtsi2sdq %rax, %xmm8
    movapd %xmm8, %xmm12
    movsd 224(%rbp), %xmm9
    movaps %xmm12, %xmm8
    divsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movq $16, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 112(%rbp)
    movq 112(%rbp), %r10
    movsd %xmm12, (%r10)
    movq 168(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, 104(%rbp)
    movq 104(%rbp), %r10
    movslq (%r10), %rax
    movq %rax, 96(%rbp)
    movl 96(%rbp), %eax
    movslq %eax, %rax
    movq %rax, 88(%rbp)
    movq 88(%rbp), %rax
    cvtsi2sdq %rax, %xmm8
    movapd %xmm8, %xmm12
    movsd 224(%rbp), %xmm9
    movaps %xmm12, %xmm8
    divsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movq $24, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %r10
    movsd %xmm12, (%r10)
    movq 168(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %r10
    movslq (%r10), %rax
    movq %rax, 64(%rbp)
    movl 64(%rbp), %eax
    movslq %eax, %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %rax
    cvtsi2sdq %rax, %xmm8
    movapd %xmm8, %xmm12
    movsd 224(%rbp), %xmm9
    movaps %xmm12, %xmm8
    divsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movq $32, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %r10
    movsd %xmm12, (%r10)
    leaq 1144(%rbp), %rax
    movq %rax, 40(%rbp)
    movq %rbx, %r10
    movq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq 40(%rbp), %rax
    movq $64, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %rbx
    leaq 392(%rbp), %r13
    movq 16(%rbp), %r10
    movq (%r10), %r14
    movq 296(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L8_59
    jmp .L8_58
.L8_59:
    movq $16, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
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
    movq %r15, %r11
    call *%r11
    addq $48, %rsp
.L8_58:
    leaq 376(%rbp), %r12
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq 336(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq 32(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L8_61
    jmp .L8_60
.L8_61:
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
.L8_60:
    movq 40(%rbp), %rsi
    movq 1256(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1256(%rbp), %rax
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
    movq 1248(%rbp), %rbx
    movq 1240(%rbp), %r12
    movq 1232(%rbp), %r13
    movq 1224(%rbp), %r14
    movq 1216(%rbp), %r15
    leaq 1440(%rbp), %rsp
    popq %rbp
    ret
.L8_62:
    leaq 1000(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 360(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
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
    jne .L8_64
    jmp .L8_63
.L8_64:
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
.L8_63:
    leaq 1096(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 344(%rbp), %r13
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
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
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
    jne .L8_66
    jmp .L8_65
.L8_66:
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
.L8_65:
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_fonts_10win_raster
lb_fonts_10win_raster:
    .seh_proc lb_fonts_10win_raster
    pushq %rbp
    .seh_pushreg %rbp
    subq $1456, %rsp
    .seh_stackalloc 1456
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 1272(%rbp)
    movq %rdi, 1448(%rbp)
    .seh_savereg %rdi, 1448
    movq %rsi, 1440(%rbp)
    .seh_savereg %rsi, 1440
    movdqu %xmm6, 1424(%rbp)
    .seh_savexmm %xmm6, 1424
    movdqu %xmm7, 1408(%rbp)
    .seh_savexmm %xmm7, 1408
    movdqu %xmm8, 1392(%rbp)
    .seh_savexmm %xmm8, 1392
    movdqu %xmm9, 1376(%rbp)
    .seh_savexmm %xmm9, 1376
    movdqu %xmm10, 1360(%rbp)
    .seh_savexmm %xmm10, 1360
    movdqu %xmm11, 1344(%rbp)
    .seh_savexmm %xmm11, 1344
    movdqu %xmm12, 1328(%rbp)
    .seh_savexmm %xmm12, 1328
    movdqu %xmm13, 1312(%rbp)
    .seh_savexmm %xmm13, 1312
    movdqu %xmm14, 1296(%rbp)
    .seh_savexmm %xmm14, 1296
    movdqu %xmm15, 1280(%rbp)
    .seh_savexmm %xmm15, 1280
    movq %rbx, 1264(%rbp)
    .seh_savereg %rbx, 1264
    movq %r12, 1256(%rbp)
    .seh_savereg %r12, 1256
    movq %r13, 1248(%rbp)
    .seh_savereg %r13, 1248
    movq %r14, 1240(%rbp)
    .seh_savereg %r14, 1240
    movq %r15, 1232(%rbp)
    .seh_savereg %r15, 1232
    .seh_endprologue
    movq %rcx, 1472(%rbp)
    movq %rdx, 1480(%rbp)
    movq %r8, 1488(%rbp)
    movq %r9, 1496(%rbp)
    movsd %xmm3, 1496(%rbp)
    movq 1480(%rbp), %r10
    leaq 1152(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 1488(%rbp), %r10
    leaq 1136(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 1496(%rbp), %rax
    movq %rax, 1120(%rbp)
    movq 1504(%rbp), %rax
    movq %rax, 1104(%rbp)
    leaq 1152(%rbp), %rax
    movq %rax, 608(%rbp)
    movq 608(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 112(%rbp)
    movq 112(%rbp), %rax
    testq %rax, %rax
    jne .L9_1
    jmp .L9_2
.L9_1:
    jmp .L9_3
.L9_2:
    leaq 1200(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_4(%rip), %r12
    leaq 1088(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $18, %rax
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
    movq 1272(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1272(%rbp), %rax
    movq 1448(%rbp), %rdi
    movq 1440(%rbp), %rsi
    movdqu 1424(%rbp), %xmm6
    movdqu 1408(%rbp), %xmm7
    movdqu 1392(%rbp), %xmm8
    movdqu 1376(%rbp), %xmm9
    movdqu 1360(%rbp), %xmm10
    movdqu 1344(%rbp), %xmm11
    movdqu 1328(%rbp), %xmm12
    movdqu 1312(%rbp), %xmm13
    movdqu 1296(%rbp), %xmm14
    movdqu 1280(%rbp), %xmm15
    movq 1264(%rbp), %rbx
    movq 1256(%rbp), %r12
    movq 1248(%rbp), %r13
    movq 1240(%rbp), %r14
    movq 1232(%rbp), %r15
    leaq 1456(%rbp), %rsp
    popq %rbp
    ret
.L9_3:
    movq 608(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 104(%rbp)
    movq 104(%rbp), %rax
    testq %rax, %rax
    jne .L9_5
    jmp .L9_6
.L9_5:
    jmp .L9_7
.L9_6:
    leaq 1200(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_4(%rip), %r12
    leaq 1072(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $18, %rax
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
    movq 1272(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1272(%rbp), %rax
    movq 1448(%rbp), %rdi
    movq 1440(%rbp), %rsi
    movdqu 1424(%rbp), %xmm6
    movdqu 1408(%rbp), %xmm7
    movdqu 1392(%rbp), %xmm8
    movdqu 1376(%rbp), %xmm9
    movdqu 1360(%rbp), %xmm10
    movdqu 1344(%rbp), %xmm11
    movdqu 1328(%rbp), %xmm12
    movdqu 1312(%rbp), %xmm13
    movdqu 1296(%rbp), %xmm14
    movdqu 1280(%rbp), %xmm15
    movq 1264(%rbp), %rbx
    movq 1256(%rbp), %r12
    movq 1248(%rbp), %r13
    movq 1240(%rbp), %r14
    movq 1232(%rbp), %r15
    leaq 1456(%rbp), %rsp
    popq %rbp
    ret
.L9_7:
    leaq 980(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movq $0, 80(%r11)
    movl $0, 88(%r11)
    subq $32, %rsp
    movq 104(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $92, %eax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call GetObjectW
    addq $32, %rsp
    movl %eax, %r15d
    movl $92, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L9_10
.L9_9:
    leaq 1200(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_63(%rip), %r12
    leaq 960(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $30, %rax
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
    movq 1272(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1272(%rbp), %rax
    movq 1448(%rbp), %rdi
    movq 1440(%rbp), %rsi
    movdqu 1424(%rbp), %xmm6
    movdqu 1408(%rbp), %xmm7
    movdqu 1392(%rbp), %xmm8
    movdqu 1376(%rbp), %xmm9
    movdqu 1360(%rbp), %xmm10
    movdqu 1344(%rbp), %xmm11
    movdqu 1328(%rbp), %xmm12
    movdqu 1312(%rbp), %xmm13
    movdqu 1296(%rbp), %xmm14
    movdqu 1280(%rbp), %xmm15
    movq 1264(%rbp), %rbx
    movq 1256(%rbp), %r12
    movq 1248(%rbp), %r13
    movq 1240(%rbp), %r14
    movq 1232(%rbp), %r15
    leaq 1456(%rbp), %rsp
    popq %rbp
    ret
.L9_10:
.L9_11:
    movq 608(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd (%r10), %xmm12
    leaq 1120(%rbp), %r15
    movq %r15, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, 600(%rbp)
    movsd 600(%rbp), %xmm9
    movaps %xmm12, %xmm8
    mulsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    subq $32, %rsp
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    movq %rcx, %xmm0
    call lb_math_round
    addq $32, %rsp
    movapd %xmm0, %xmm12
    leaq .Ltext_64(%rip), %r15
    subq $32, %rsp
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 0(%rsp)
    movl $32, %eax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    movq %r15, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq %rcx, %xmm0
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6f_to_s
    addq $32, %rsp
    movq %rax, %r15
    movl $0, %eax
    movl %r15d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_64(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call CreateFontIndirectW
    addq $32, %rsp
    movq %rax, 96(%rbp)
    movq 96(%rbp), %rax
    testq %rax, %rax
    jne .L9_13
    jmp .L9_14
.L9_13:
    jmp .L9_15
.L9_14:
    leaq 1200(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_35(%rip), %r12
    leaq 944(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $24, %rax
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
    movq 1272(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1272(%rbp), %rax
    movq 1448(%rbp), %rdi
    movq 1440(%rbp), %rsi
    movdqu 1424(%rbp), %xmm6
    movdqu 1408(%rbp), %xmm7
    movdqu 1392(%rbp), %xmm8
    movdqu 1376(%rbp), %xmm9
    movdqu 1360(%rbp), %xmm10
    movdqu 1344(%rbp), %xmm11
    movdqu 1328(%rbp), %xmm12
    movdqu 1312(%rbp), %xmm13
    movdqu 1296(%rbp), %xmm14
    movdqu 1280(%rbp), %xmm15
    movq 1264(%rbp), %rbx
    movq 1256(%rbp), %r12
    movq 1248(%rbp), %r13
    movq 1240(%rbp), %r14
    movq 1232(%rbp), %r15
    leaq 1456(%rbp), %rsp
    popq %rbp
    ret
.L9_15:
    subq $32, %rsp
    movq 112(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 96(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call SelectObject
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L9_17
    jmp .L9_18
.L9_17:
    jmp .L9_19
.L9_18:
    leaq 1200(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_65(%rip), %r12
    leaq 928(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $32, %rax
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
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DeleteObject
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 1272(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1272(%rbp), %rax
    movq 1448(%rbp), %rdi
    movq 1440(%rbp), %rsi
    movdqu 1424(%rbp), %xmm6
    movdqu 1408(%rbp), %xmm7
    movdqu 1392(%rbp), %xmm8
    movdqu 1376(%rbp), %xmm9
    movdqu 1360(%rbp), %xmm10
    movdqu 1344(%rbp), %xmm11
    movdqu 1328(%rbp), %xmm12
    movdqu 1312(%rbp), %xmm13
    movdqu 1296(%rbp), %xmm14
    movdqu 1280(%rbp), %xmm15
    movq 1264(%rbp), %rbx
    movq 1256(%rbp), %r12
    movq 1248(%rbp), %r13
    movq 1240(%rbp), %r14
    movq 1232(%rbp), %r15
    leaq 1456(%rbp), %rsp
    popq %rbp
    ret
.L9_19:
    leaq 912(%rbp), %rax
    movq %rax, 592(%rbp)
    leaq 896(%rbp), %rax
    movq %rax, 584(%rbp)
    movq 584(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movl $65536, %eax
    movq 584(%rbp), %r10
    movl %eax, (%r10)
    movq 584(%rbp), %rax
    movq $12, %rcx
    addq %rcx, %rax
    movq %rax, 576(%rbp)
    movl $65536, %eax
    movq 576(%rbp), %r10
    movl %eax, (%r10)
    movq 584(%rbp), %r10
    movq 592(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 1136(%rbp), %rax
    movq %rax, 568(%rbp)
    movq 568(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 560(%rbp)
    leaq 880(%rbp), %rax
    movq %rax, 72(%rbp)
    leaq 856(%rbp), %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 552(%rbp)
    leaq 840(%rbp), %rax
    movq %rax, 544(%rbp)
    movq 72(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 536(%rbp)
    leaq 804(%rbp), %rax
    movq %rax, 512(%rbp)
    leaq 768(%rbp), %rax
    movq %rax, 48(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, 40(%rbp)
    leaq 720(%rbp), %rax
    movq %rax, 32(%rbp)
    movq 40(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 456(%rbp)
    leaq 696(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 448(%rbp)
    movq 32(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 400(%rbp)
    movq 32(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 392(%rbp)
    movq 32(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 440(%rbp)
    leaq .Ltext_15(%rip), %rax
    movq %rax, 432(%rbp)
    movq 440(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 424(%rbp)
    movq 440(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 416(%rbp)
    movq 32(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 408(%rbp)
    movq 32(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 496(%rbp)
    leaq .Ltext_13(%rip), %rax
    movq %rax, 488(%rbp)
    movq 496(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 480(%rbp)
    movq 496(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 472(%rbp)
    movq 32(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 464(%rbp)
    movq 32(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, 384(%rbp)
    movq 512(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, 360(%rbp)
    movq 48(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 352(%rbp)
    movq 608(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 328(%rbp)
    leaq .Ltext_77(%rip), %rax
    movq %rax, 320(%rbp)
    movq 512(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 312(%rbp)
    movq 608(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 296(%rbp)
    leaq .Ltext_78(%rip), %rax
    movq %rax, 288(%rbp)
    movq 512(%rbp), %rax
    movq $12, %rcx
    addq %rcx, %rax
    movq %rax, 280(%rbp)
    leaq 1104(%rbp), %rax
    movq %rax, 240(%rbp)
    leaq 1104(%rbp), %rax
    movq %rax, 224(%rbp)
    leaq 1104(%rbp), %rax
    movq %rax, 176(%rbp)
    leaq 616(%rbp), %rax
    movq %rax, 136(%rbp)
    movq 136(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 128(%rbp)
    movq 40(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 120(%rbp)
    movq $0, %rax
    movq %rax, 88(%rbp)
    movq $0, %rax
    movq %rax, 80(%rbp)
.L9_21:
    movq 560(%rbp), %r10
    movq (%r10), %r13
    movq 88(%rbp), %rax
    cmpq %r13, %rax
    jae .L9_23
.L9_22:
    subq $48, %rsp
    movq 568(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 88(%rbp), %rax
    movq %rax, 16(%rsp)
    leaq 856(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_utf8_decode
    addq $48, %rsp
    movq 552(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L9_24
    jmp .L9_25
.L9_24:
    movq 64(%rbp), %r10
    movq 544(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L9_26
.L9_25:
    leaq .Ltext_37(%rip), %rbx
    leaq 824(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $22, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_66(%rip), %rbx
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
    leaq .Ltext_66(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L9_26:
    movq 544(%rbp), %r10
    movq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 536(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 528(%rbp)
    movq 528(%rbp), %rax
    movq 88(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_67(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 520(%rbp)
    movq 512(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movl $0, 16(%r11)
    movq 72(%rbp), %r10
    movl (%r10), %r13d
    movl %r13d, %r13d
    movl $65535, %ecx
    cmpl %ecx, %r13d
    ja .L9_28
.L9_27:
    movl %r13d, %eax
    movl %eax, 56(%rbp)
    jmp .L9_29
.L9_28:
    movl $65533, %eax
    movl %eax, 56(%rbp)
.L9_29:
    subq $64, %rsp
    movq 112(%rbp), %rax
    movq %rax, 0(%rsp)
    movl 56(%rbp), %eax
    movq %rax, 8(%rsp)
    movl $6, %eax
    movq %rax, 16(%rsp)
    movq 512(%rbp), %rax
    movq %rax, 24(%rsp)
    movl $0, %eax
    movq %rax, 32(%rsp)
    movq $0, %rax
    movq %rax, 40(%rsp)
    movq 592(%rbp), %rax
    movq %rax, 48(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call GetGlyphOutlineW
    addq $64, %rsp
    movl %eax, 504(%rbp)
    movl 504(%rbp), %eax
    movl $4294967295, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L9_87
    jmp .L9_33
.L9_87:
    movl %r15d, %ebx
    jmp .L9_34
.L9_33:
    movl 504(%rbp), %eax
    movl $1048576, %ecx
    cmpl %ecx, %eax
    seta %al
    movzbl %al, %ebx
.L9_34:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L9_30
    jmp .L9_31
.L9_30:
    leaq 1200(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_68(%rip), %r12
    leaq 784(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $34, %rax
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
    subq $32, %rsp
    movq 112(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 104(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call SelectObject
    addq $32, %rsp
    movq %rax, %r12
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DeleteObject
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %rsi
    movq 1272(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1272(%rbp), %rax
    movq 1448(%rbp), %rdi
    movq 1440(%rbp), %rsi
    movdqu 1424(%rbp), %xmm6
    movdqu 1408(%rbp), %xmm7
    movdqu 1392(%rbp), %xmm8
    movdqu 1376(%rbp), %xmm9
    movdqu 1360(%rbp), %xmm10
    movdqu 1344(%rbp), %xmm11
    movdqu 1328(%rbp), %xmm12
    movdqu 1312(%rbp), %xmm13
    movdqu 1296(%rbp), %xmm14
    movdqu 1280(%rbp), %xmm15
    movq 1264(%rbp), %rbx
    movq 1256(%rbp), %r12
    movq 1248(%rbp), %r13
    movq 1240(%rbp), %r14
    movq 1232(%rbp), %r15
    leaq 1456(%rbp), %rsp
    popq %rbp
    ret
.L9_31:
.L9_32:
    movl 504(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jbe .L9_37
.L9_36:
    movl 504(%rbp), %eax
    movl %eax, %r15d
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r15
    jbe .L9_40
.L9_39:
    movl $208273409, %eax
    movq 496(%rbp), %r10
    movl %eax, (%r10)
    movq 488(%rbp), %rax
    movq 480(%rbp), %r10
    movq %rax, (%r10)
    movq $47, %rax
    movq 472(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq 464(%rbp), %r10
    movb %al, (%r10)
    jmp .L9_41
.L9_40:
    movq 40(%rbp), %r10
    movq (%r10), %rbx
    movq 456(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L9_42
    jmp .L9_43
.L9_43:
    leaq .Ltext_69(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L9_42:
    movq %r12, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r15, %rax
    movq %rax, 16(%rsp)
    movq $1, %rax
    movq %rax, 24(%rsp)
    leaq 696(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r13, %r11
    call *%r11
    addq $32, %rsp
    movq 448(%rbp), %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r15
    setne %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ecx
    movl %r14d, %r13d
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L9_44
    jmp .L9_45
.L9_44:
    movl $208273409, %eax
    movq 440(%rbp), %r10
    movl %eax, (%r10)
    movq 432(%rbp), %rax
    movq 424(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq 416(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq 408(%rbp), %r10
    movb %al, (%r10)
    jmp .L9_41
.L9_45:
    movq 24(%rbp), %r10
    movq (%r10), %rbx
    movq 32(%rbp), %r10
    movq %rbx, (%r10)
    movq 400(%rbp), %r10
    movq %r15, (%r10)
    movl $0, %eax
    movq 392(%rbp), %r10
    movb %al, (%r10)
.L9_41:
    movq 384(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L9_47
    jmp .L9_46
.L9_47:
    movq 32(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 1200(%rbp), %r12
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
    subq $32, %rsp
    movq 112(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 104(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call SelectObject
    addq $32, %rsp
    movq %rax, %rbx
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DeleteObject
    addq $32, %rsp
    movl %eax, %ebx
    movq %r12, %rsi
    movq 1272(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1272(%rbp), %rax
    movq 1448(%rbp), %rdi
    movq 1440(%rbp), %rsi
    movdqu 1424(%rbp), %xmm6
    movdqu 1408(%rbp), %xmm7
    movdqu 1392(%rbp), %xmm8
    movdqu 1376(%rbp), %xmm9
    movdqu 1360(%rbp), %xmm10
    movdqu 1344(%rbp), %xmm11
    movdqu 1328(%rbp), %xmm12
    movdqu 1312(%rbp), %xmm13
    movdqu 1296(%rbp), %xmm14
    movdqu 1280(%rbp), %xmm15
    movq 1264(%rbp), %rbx
    movq 1256(%rbp), %r12
    movq 1248(%rbp), %r13
    movq 1240(%rbp), %r14
    movq 1232(%rbp), %r15
    leaq 1456(%rbp), %rsp
    popq %rbp
    ret
.L9_46:
    movq 32(%rbp), %r10
    movq 48(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 48(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 376(%rbp)
    subq $64, %rsp
    movq 112(%rbp), %rax
    movq %rax, 0(%rsp)
    movl 56(%rbp), %eax
    movq %rax, 8(%rsp)
    movl $6, %eax
    movq %rax, 16(%rsp)
    movq 512(%rbp), %rax
    movq %rax, 24(%rsp)
    movl 504(%rbp), %eax
    movq %rax, 32(%rsp)
    movq 376(%rbp), %rax
    movq %rax, 40(%rsp)
    movq 592(%rbp), %rax
    movq %rax, 48(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call GetGlyphOutlineW
    addq $64, %rsp
    movl %eax, %r12d
    movl $4294967295, %ecx
    cmpl %ecx, %r12d
    jne .L9_50
.L9_49:
    leaq 1200(%rbp), %r12
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_70(%rip), %r13
    leaq 680(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $28, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq 664(%rbp), %r13
    movq 48(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq 376(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq 40(%rbp), %r10
    movq (%r10), %r14
    movq 40(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L9_53
    jmp .L9_52
.L9_53:
    movq $16, %rcx
    movq %r15, %rbx
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
.L9_52:
    subq $32, %rsp
    movq 112(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 104(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call SelectObject
    addq $32, %rsp
    movq %rax, %rbx
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DeleteObject
    addq $32, %rsp
    movl %eax, %ebx
    movq %r12, %rsi
    movq 1272(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1272(%rbp), %rax
    movq 1448(%rbp), %rdi
    movq 1440(%rbp), %rsi
    movdqu 1424(%rbp), %xmm6
    movdqu 1408(%rbp), %xmm7
    movdqu 1392(%rbp), %xmm8
    movdqu 1376(%rbp), %xmm9
    movdqu 1360(%rbp), %xmm10
    movdqu 1344(%rbp), %xmm11
    movdqu 1328(%rbp), %xmm12
    movdqu 1312(%rbp), %xmm13
    movdqu 1296(%rbp), %xmm14
    movdqu 1280(%rbp), %xmm15
    movq 1264(%rbp), %rbx
    movq 1256(%rbp), %r12
    movq 1248(%rbp), %r13
    movq 1240(%rbp), %r14
    movq 1232(%rbp), %r15
    leaq 1456(%rbp), %rsp
    popq %rbp
    ret
.L9_50:
.L9_51:
    movq 512(%rbp), %r10
    movl (%r10), %r12d
    movl %r12d, %r12d
    movq $3, %rcx
    addq %rcx, %r12
.L9_56:
    movq $4, %rcx
    movq %r12, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %r13
    movq %r13, %rax
    movq $4, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_72(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 368(%rbp)
    movq 360(%rbp), %r10
    movl (%r10), %r14d
    movl %r14d, %r14d
    movq 368(%rbp), %rax
    movq %r14, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_74(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq 352(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 344(%rbp)
    movq 344(%rbp), %rcx
    cmpq %rcx, %r14
    jbe .L9_58
.L9_57:
    leaq 1200(%rbp), %rax
    movq %rax, 336(%rbp)
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq 336(%rbp), %r10
    movl %r13d, (%r10)
    leaq .Ltext_75(%rip), %r13
    leaq 648(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $41, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq 336(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 336(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq 632(%rbp), %r13
    movq 376(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq 344(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq 40(%rbp), %r10
    movq (%r10), %r14
    movq 40(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L9_61
    jmp .L9_60
.L9_61:
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
.L9_60:
    subq $32, %rsp
    movq 112(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 104(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call SelectObject
    addq $32, %rsp
    movq %rax, %rbx
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DeleteObject
    addq $32, %rsp
    movl %eax, %ebx
    movq 336(%rbp), %rsi
    movq 1272(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1272(%rbp), %rax
    movq 1448(%rbp), %rdi
    movq 1440(%rbp), %rsi
    movdqu 1424(%rbp), %xmm6
    movdqu 1408(%rbp), %xmm7
    movdqu 1392(%rbp), %xmm8
    movdqu 1376(%rbp), %xmm9
    movdqu 1360(%rbp), %xmm10
    movdqu 1344(%rbp), %xmm11
    movdqu 1328(%rbp), %xmm12
    movdqu 1312(%rbp), %xmm13
    movdqu 1296(%rbp), %xmm14
    movdqu 1280(%rbp), %xmm15
    movq 1264(%rbp), %rbx
    movq 1256(%rbp), %r12
    movq 1248(%rbp), %r13
    movq 1240(%rbp), %r14
    movq 1232(%rbp), %r15
    leaq 1456(%rbp), %rsp
    popq %rbp
    ret
.L9_58:
.L9_59:
    movq 80(%rbp), %rax
    movq %rax, %rcx
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
    movq 328(%rbp), %r10
    movsd (%r10), %xmm13
    movaps %xmm12, %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    movsd 600(%rbp), %xmm8
    mulsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    subq $32, %rsp
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    movq %rcx, %xmm0
    call lb_math_round
    addq $32, %rsp
    movapd %xmm0, %xmm12
    subq $32, %rsp
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 0(%rsp)
    movl $64, %eax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    movq 320(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq %rcx, %xmm0
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6f_to_s
    addq $32, %rsp
    movq %rax, %r12
    movq %r12, %rax
    movq $2, %rcx
    addq %rcx, %rax
    jno 1f
    leaq .Ltext_77(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq 312(%rbp), %r10
    movslq (%r10), %r14
    movslq %r14d, %r14
    movq %r12, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jno 1f
    leaq .Ltext_77(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 304(%rbp)
    movq 296(%rbp), %r10
    movsd (%r10), %xmm12
    movsd 600(%rbp), %xmm8
    mulsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    subq $32, %rsp
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    movq %rcx, %xmm0
    call lb_math_ceil
    addq $32, %rsp
    movapd %xmm0, %xmm12
    subq $32, %rsp
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 0(%rsp)
    movl $64, %eax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    movq 288(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq %rcx, %xmm0
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6f_to_s
    addq $32, %rsp
    movq %rax, %r14
    movq %r14, %rax
    movq $2, %rcx
    addq %rcx, %rax
    jno 1f
    leaq .Ltext_78(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq 280(%rbp), %r10
    movslq (%r10), %rbx
    movslq %ebx, %rbx
    movq %r14, %rax
    movq %rbx, %rcx
    subq %rcx, %rax
    jno 1f
    leaq .Ltext_78(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 272(%rbp)
    movq 360(%rbp), %r10
    movl (%r10), %r14d
    movl %r14d, %eax
    movq %rax, 264(%rbp)
    movq 240(%rbp), %r10
    movq (%r10), %r15
    movq $16, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, 232(%rbp)
    movq 224(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 216(%rbp)
    movq 216(%rbp), %rax
    movq $20, %rcx
    addq %rcx, %rax
    movq %rax, 208(%rbp)
    movq 176(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 168(%rbp)
    movq 168(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 160(%rbp)
    movq 168(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 144(%rbp)
    movq $0, %rax
    movq %rax, 16(%rbp)
.L9_63:
    movq 16(%rbp), %rax
    movq 264(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L9_66
.L9_64:
    movq 512(%rbp), %r10
    movl (%r10), %r15d
    movl %r15d, %eax
    movq %rax, 256(%rbp)
    movq $0, %rax
    movq %rax, 8(%rbp)
.L9_67:
    movq 8(%rbp), %rax
    movq 256(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L9_70
.L9_68:
    movq 304(%rbp), %rax
    movq 8(%rbp), %rcx
    addq %rcx, %rax
    jno 1f
    leaq .Ltext_79(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 248(%rbp)
    movq 272(%rbp), %rax
    movq 16(%rbp), %rcx
    addq %rcx, %rax
    jno 1f
    leaq .Ltext_80(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq 248(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setge %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L9_74
    jmp .L9_88
.L9_88:
    movl %ebx, %r12d
    jmp .L9_75
.L9_74:
    movq $0, %rcx
    cmpq %rcx, %r15
    setge %al
    movzbl %al, %r12d
.L9_75:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L9_76
    jmp .L9_89
.L9_89:
    movl %ebx, %r12d
    jmp .L9_77
.L9_76:
    movq 232(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    movq 248(%rbp), %rax
    cmpq %rbx, %rax
    setl %al
    movzbl %al, %r12d
.L9_77:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L9_78
    jmp .L9_90
.L9_90:
    movl %ebx, %r12d
    jmp .L9_79
.L9_78:
    movq 208(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    cmpq %rbx, %r15
    setl %al
    movzbl %al, %r12d
.L9_79:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L9_71
    jmp .L9_72
.L9_71:
    movq 368(%rbp), %rax
    movq 16(%rbp), %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_81(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq %rbx, %rax
    movq 8(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_81(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 344(%rbp), %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_81(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 376(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl %ebx, %ebx
    movl %ebx, %eax
    movl $255, %ecx
    mull %ecx
    jnc 1f
    leaq .Ltext_81(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %ebx
    movl %ebx, %eax
    movl $32, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_81(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %ebx
.L9_81:
    movl $64, %ecx
    movl %ebx, %eax
    xorl %edx, %edx
    divl %ecx
    movl %eax, 200(%rbp)
    movl 200(%rbp), %eax
    movl %eax, %eax
    movq %rax, 192(%rbp)
    movl 192(%rbp), %eax
    movzbl %al, %eax
    movl %eax, 184(%rbp)
    movq 160(%rbp), %r10
    movl (%r10), %r13d
    movl %r13d, %r13d
    movq %r15, %rax
    movq %r13, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_82(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 248(%rbp), %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_82(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movl 184(%rbp), %eax
    movzbl %al, %eax
    movl %eax, 152(%rbp)
    movq 168(%rbp), %r10
    movq (%r10), %r14
    movq 144(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_83(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r13, %r12
    addq %r14, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl 152(%rbp), %eax
    cmpl %r12d, %eax
    jbe .L9_83
.L9_82:
    movq 168(%rbp), %r10
    movq (%r10), %rbx
    movq 144(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_84(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rbx, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl 152(%rbp), %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L9_84
.L9_83:
.L9_84:
    jmp .L9_73
.L9_72:
.L9_73:
.L9_69:
    movq 8(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, 8(%rbp)
    jmp .L9_67
.L9_70:
.L9_65:
    movq 16(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, 16(%rbp)
    jmp .L9_63
.L9_66:
    movq 376(%rbp), %rax
    movq 136(%rbp), %r10
    movq %rax, (%r10)
    movq 344(%rbp), %rax
    movq 128(%rbp), %r10
    movq %rax, (%r10)
    movq 40(%rbp), %r10
    movq (%r10), %rbx
    movq 120(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L9_86
    jmp .L9_85
.L9_86:
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $48, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 136(%rbp), %r10
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
.L9_85:
    jmp .L9_38
.L9_37:
.L9_38:
    movq 80(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_85(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 520(%rbp), %rax
    movq %rax, 88(%rbp)
    movq %rbx, %rax
    movq %rax, 80(%rbp)
    jmp .L9_21
.L9_23:
    subq $32, %rsp
    movq 112(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 104(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call SelectObject
    addq $32, %rsp
    movq %rax, %rbx
    subq $32, %rsp
    movq 96(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DeleteObject
    addq $32, %rsp
    movl %eax, %ebx
    leaq 1200(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 1272(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1272(%rbp), %rax
    movq 1448(%rbp), %rdi
    movq 1440(%rbp), %rsi
    movdqu 1424(%rbp), %xmm6
    movdqu 1408(%rbp), %xmm7
    movdqu 1392(%rbp), %xmm8
    movdqu 1376(%rbp), %xmm9
    movdqu 1360(%rbp), %xmm10
    movdqu 1344(%rbp), %xmm11
    movdqu 1328(%rbp), %xmm12
    movdqu 1312(%rbp), %xmm13
    movdqu 1296(%rbp), %xmm14
    movdqu 1280(%rbp), %xmm15
    movq 1264(%rbp), %rbx
    movq 1256(%rbp), %r12
    movq 1248(%rbp), %r13
    movq 1240(%rbp), %r14
    movq 1232(%rbp), %r15
    leaq 1456(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_fonts_10linux_face
lb_fonts_10linux_face:
    .seh_proc lb_fonts_10linux_face
    pushq %rbp
    .seh_pushreg %rbp
    subq $816, %rsp
    .seh_stackalloc 816
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 632(%rbp)
    movq %rdi, 808(%rbp)
    .seh_savereg %rdi, 808
    movq %rsi, 800(%rbp)
    .seh_savereg %rsi, 800
    movdqu %xmm6, 784(%rbp)
    .seh_savexmm %xmm6, 784
    movdqu %xmm7, 768(%rbp)
    .seh_savexmm %xmm7, 768
    movdqu %xmm8, 752(%rbp)
    .seh_savexmm %xmm8, 752
    movdqu %xmm9, 736(%rbp)
    .seh_savexmm %xmm9, 736
    movdqu %xmm10, 720(%rbp)
    .seh_savexmm %xmm10, 720
    movdqu %xmm11, 704(%rbp)
    .seh_savexmm %xmm11, 704
    movdqu %xmm12, 688(%rbp)
    .seh_savexmm %xmm12, 688
    movdqu %xmm13, 672(%rbp)
    .seh_savexmm %xmm13, 672
    movdqu %xmm14, 656(%rbp)
    .seh_savexmm %xmm14, 656
    movdqu %xmm15, 640(%rbp)
    .seh_savexmm %xmm15, 640
    movq %rbx, 624(%rbp)
    .seh_savereg %rbx, 624
    movq %r12, 616(%rbp)
    .seh_savereg %r12, 616
    movq %r13, 608(%rbp)
    .seh_savereg %r13, 608
    movq %r14, 600(%rbp)
    .seh_savereg %r14, 600
    movq %r15, 592(%rbp)
    .seh_savereg %r15, 592
    .seh_endprologue
    movq %rcx, 832(%rbp)
    movq %rdx, 840(%rbp)
    movq %r8, 848(%rbp)
    movq %r9, 856(%rbp)
    movsd %xmm1, 840(%rbp)
    movq 840(%rbp), %rax
    movq %rax, 504(%rbp)
    movq 848(%rbp), %r10
    leaq 488(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 472(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 488(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L10_2
.L10_1:
    leaq .Ltext_88(%rip), %rbx
    leaq 440(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $9, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 456(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L10_3
.L10_2:
    leaq 456(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L10_3:
    leaq 456(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 392(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_fonts_12family_bytes
    addq $48, %rsp
    leaq 392(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L10_5
    jmp .L10_4
.L10_5:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 520(%rbp), %r13
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
    movq 632(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 632(%rbp), %rax
    movq 808(%rbp), %rdi
    movq 800(%rbp), %rsi
    movdqu 784(%rbp), %xmm6
    movdqu 768(%rbp), %xmm7
    movdqu 752(%rbp), %xmm8
    movdqu 736(%rbp), %xmm9
    movdqu 720(%rbp), %xmm10
    movdqu 704(%rbp), %xmm11
    movdqu 688(%rbp), %xmm12
    movdqu 672(%rbp), %xmm13
    movdqu 656(%rbp), %xmm14
    movdqu 640(%rbp), %xmm15
    movq 624(%rbp), %rbx
    movq 616(%rbp), %r12
    movq 608(%rbp), %r13
    movq 600(%rbp), %r14
    movq 592(%rbp), %r15
    leaq 816(%rbp), %rsp
    popq %rbp
    ret
.L10_6:
.L10_4:
    movq %r12, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call cairo_image_surface_create
    addq $32, %rsp
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    testq %rax, %rax
    jne .L10_7
    jmp .L10_8
.L10_8:
    leaq .Ltext_89(%rip), %rdi
    leaq .Ltext_86(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L10_7:
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call cairo_create
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L10_9
    jmp .L10_10
.L10_10:
    leaq .Ltext_90(%rip), %rdi
    leaq .Ltext_86(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L10_9:
    leaq 136(%rbp), %r10
    movq %r12, (%r10)
    subq $32, %rsp
    call cairo_font_options_create
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L10_30
    jmp .L10_31
.L10_31:
    leaq .Ltext_87(%rip), %rdi
    leaq .Ltext_86(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L10_30:
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movl $2, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call cairo_font_options_set_antialias
    addq $32, %rsp
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call cairo_font_options_set_hint_metrics
    addq $32, %rsp
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call cairo_set_font_options
    addq $32, %rsp
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call cairo_font_options_destroy
    addq $32, %rsp
.L10_32:
    movq 8(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 128(%rbp)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 128(%rbp), %rax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movl $0, %eax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call cairo_select_font_face
    addq $32, %rsp
    leaq 504(%rbp), %rax
    movq %rax, 120(%rbp)
    movq 120(%rbp), %r10
    movsd (%r10), %xmm12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %rdx, %xmm1
    call cairo_set_font_size
    addq $32, %rsp
    leaq 352(%rbp), %rax
    movq %rax, 112(%rbp)
    movq 112(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 112(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call cairo_font_extents
    addq $32, %rsp
    leaq 304(%rbp), %r15
    movq %r15, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    leaq 256(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    leaq .Ltext_91(%rip), %rbx
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r15, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call cairo_text_extents
    addq $32, %rsp
    leaq .Ltext_92(%rip), %rbx
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call cairo_text_extents
    addq $32, %rsp
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call cairo_status
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L10_33
    jmp .L10_14
.L10_33:
    movl %ebx, %r13d
    jmp .L10_15
.L10_14:
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movq $0, %rax
    movq %rax, %xmm13
    ucomisd %xmm12, %xmm13
    setae %al
    movzbl %al, %r13d
.L10_15:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L10_34
    jmp .L10_16
.L10_34:
    movl %ebx, %r13d
    jmp .L10_17
.L10_16:
    movq $32, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm13
    movaps %xmm12, %xmm8
    subsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    subq $32, %rsp
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    movq %rcx, %xmm0
    call lb_math_abs
    addq $32, %rsp
    movapd %xmm0, %xmm12
    movabsq $4576918229304087675, %rax
    movq %rax, %xmm13
    ucomisd %xmm13, %xmm12
    seta %al
    movzbl %al, %r13d
.L10_17:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L10_11
    jmp .L10_12
.L10_11:
    leaq 520(%rbp), %rax
    movq %rax, 104(%rbp)
    movq 104(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    leaq lb_fonts_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_93(%rip), %r14
    leaq 240(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $54, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 104(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call cairo_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call cairo_surface_destroy
    addq $32, %rsp
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r13
    leaq 224(%rbp), %r14
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq 128(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L10_19
    jmp .L10_18
.L10_19:
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
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
    movq %r12, %r11
    call *%r11
    addq $48, %rsp
.L10_18:
    movq 104(%rbp), %rsi
    movq 632(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 632(%rbp), %rax
    movq 808(%rbp), %rdi
    movq 800(%rbp), %rsi
    movdqu 784(%rbp), %xmm6
    movdqu 768(%rbp), %xmm7
    movdqu 752(%rbp), %xmm8
    movdqu 736(%rbp), %xmm9
    movdqu 720(%rbp), %xmm10
    movdqu 704(%rbp), %xmm11
    movdqu 688(%rbp), %xmm12
    movdqu 672(%rbp), %xmm13
    movdqu 656(%rbp), %xmm14
    movdqu 640(%rbp), %xmm15
    movq 624(%rbp), %rbx
    movq 616(%rbp), %r12
    movq 608(%rbp), %r13
    movq 600(%rbp), %r14
    movq 592(%rbp), %r15
    leaq 816(%rbp), %rsp
    popq %rbp
    ret
.L10_20:
    jmp .L10_13
.L10_12:
.L10_13:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call cairo_get_scaled_font
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L10_21
    jmp .L10_22
.L10_22:
    leaq .Ltext_95(%rip), %rdi
    leaq .Ltext_86(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L10_21:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call cairo_scaled_font_reference
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L10_23
    jmp .L10_24
.L10_24:
    leaq .Ltext_95(%rip), %rdi
    leaq .Ltext_86(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L10_23:
    leaq 184(%rbp), %rax
    movq %rax, 96(%rbp)
    movq 96(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movq 96(%rbp), %r10
    movq %r13, (%r10)
    movq 96(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 88(%rbp)
    movq $0, %rax
    movq 88(%rbp), %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %r10
    movsd (%r10), %xmm12
    movq 96(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %r10
    movsd %xmm12, (%r10)
    movq 112(%rbp), %r10
    movsd (%r10), %xmm12
    movq 96(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %r10
    movsd %xmm12, (%r10)
    movq 112(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %r10
    movsd (%r10), %xmm12
    movq 96(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %r10
    movsd %xmm12, (%r10)
    leaq 520(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 96(%rbp), %r10
    movq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq 40(%rbp), %rax
    movq $64, %rcx
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movl $0, %eax
    movq 32(%rbp), %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call cairo_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call cairo_surface_destroy
    addq $32, %rsp
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 24(%rbp)
    leaq 168(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq 128(%rbp), %rax
    movq 16(%rbp), %r10
    movq %rax, (%r10)
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq 24(%rbp), %r10
    movq (%r10), %rbx
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L10_26
    jmp .L10_25
.L10_26:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 16(%rbp), %r10
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
.L10_25:
    movq 40(%rbp), %rsi
    movq 632(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 632(%rbp), %rax
    movq 808(%rbp), %rdi
    movq 800(%rbp), %rsi
    movdqu 784(%rbp), %xmm6
    movdqu 768(%rbp), %xmm7
    movdqu 752(%rbp), %xmm8
    movdqu 736(%rbp), %xmm9
    movdqu 720(%rbp), %xmm10
    movdqu 704(%rbp), %xmm11
    movdqu 688(%rbp), %xmm12
    movdqu 672(%rbp), %xmm13
    movdqu 656(%rbp), %xmm14
    movdqu 640(%rbp), %xmm15
    movq 624(%rbp), %rbx
    movq 616(%rbp), %r12
    movq 608(%rbp), %r13
    movq 600(%rbp), %r14
    movq 592(%rbp), %r15
    leaq 816(%rbp), %rsp
    popq %rbp
    ret
.L10_27:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call cairo_destroy
    addq $32, %rsp
    movq %r12, %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call cairo_surface_destroy
    addq $32, %rsp
    leaq 472(%rbp), %rbx
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, %r12
    leaq 152(%rbp), %r13
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
    leaq .Ltext_96(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
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
    jne .L10_29
    jmp .L10_28
.L10_29:
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
.L10_28:
    leaq .Ltext_96(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_fonts_12linux_raster
lb_fonts_12linux_raster:
    .seh_proc lb_fonts_12linux_raster
    pushq %rbp
    .seh_pushreg %rbp
    subq $800, %rsp
    .seh_stackalloc 800
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 616(%rbp)
    movq %rdi, 792(%rbp)
    .seh_savereg %rdi, 792
    movq %rsi, 784(%rbp)
    .seh_savereg %rsi, 784
    movdqu %xmm6, 768(%rbp)
    .seh_savexmm %xmm6, 768
    movdqu %xmm7, 752(%rbp)
    .seh_savexmm %xmm7, 752
    movdqu %xmm8, 736(%rbp)
    .seh_savexmm %xmm8, 736
    movdqu %xmm9, 720(%rbp)
    .seh_savexmm %xmm9, 720
    movdqu %xmm10, 704(%rbp)
    .seh_savexmm %xmm10, 704
    movdqu %xmm11, 688(%rbp)
    .seh_savexmm %xmm11, 688
    movdqu %xmm12, 672(%rbp)
    .seh_savexmm %xmm12, 672
    movdqu %xmm13, 656(%rbp)
    .seh_savexmm %xmm13, 656
    movdqu %xmm14, 640(%rbp)
    .seh_savexmm %xmm14, 640
    movdqu %xmm15, 624(%rbp)
    .seh_savexmm %xmm15, 624
    movq %rbx, 608(%rbp)
    .seh_savereg %rbx, 608
    movq %r12, 600(%rbp)
    .seh_savereg %r12, 600
    movq %r13, 592(%rbp)
    .seh_savereg %r13, 592
    movq %r14, 584(%rbp)
    .seh_savereg %r14, 584
    movq %r15, 576(%rbp)
    .seh_savereg %r15, 576
    .seh_endprologue
    movq %rcx, 816(%rbp)
    movq %rdx, 824(%rbp)
    movq %r8, 832(%rbp)
    movq %r9, 840(%rbp)
    movsd %xmm3, 840(%rbp)
    movq 824(%rbp), %r10
    leaq 496(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 832(%rbp), %r10
    leaq 480(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 840(%rbp), %rax
    movq %rax, 464(%rbp)
    movq 848(%rbp), %rax
    movq %rax, 448(%rbp)
    leaq 496(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L11_1
    jmp .L11_2
.L11_1:
    jmp .L11_3
.L11_2:
    leaq 544(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_4(%rip), %r12
    leaq 432(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $18, %rax
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
    movq 616(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 616(%rbp), %rax
    movq 792(%rbp), %rdi
    movq 784(%rbp), %rsi
    movdqu 768(%rbp), %xmm6
    movdqu 752(%rbp), %xmm7
    movdqu 736(%rbp), %xmm8
    movdqu 720(%rbp), %xmm9
    movdqu 704(%rbp), %xmm10
    movdqu 688(%rbp), %xmm11
    movdqu 672(%rbp), %xmm12
    movdqu 656(%rbp), %xmm13
    movdqu 640(%rbp), %xmm14
    movdqu 624(%rbp), %xmm15
    movq 608(%rbp), %rbx
    movq 600(%rbp), %r12
    movq 592(%rbp), %r13
    movq 584(%rbp), %r14
    movq 576(%rbp), %r15
    leaq 800(%rbp), %rsp
    popq %rbp
    ret
.L11_4:
.L11_3:
    leaq 448(%rbp), %rax
    movq %rax, 264(%rbp)
    movq 264(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 256(%rbp)
    movq 256(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 248(%rbp)
    movq 248(%rbp), %r10
    movl (%r10), %r15d
    movl %r15d, %r15d
    movq 256(%rbp), %rax
    movq $20, %rcx
    addq %rcx, %rax
    movq %rax, 240(%rbp)
    movq 240(%rbp), %r10
    movl (%r10), %r13d
    movl %r13d, %r13d
    subq $32, %rsp
    movl $2, %eax
    movq %rax, 0(%rsp)
    movl %r15d, %eax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call cairo_image_surface_create
    addq $32, %rsp
    movq %rax, 64(%rbp)
    movq 64(%rbp), %rax
    testq %rax, %rax
    jne .L11_5
    jmp .L11_6
.L11_6:
    leaq .Ltext_97(%rip), %rdi
    leaq .Ltext_86(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L11_5:
    subq $32, %rsp
    movq 64(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call cairo_surface_status
    addq $32, %rsp
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L11_8
.L11_7:
    leaq 544(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_98(%rip), %r12
    leaq 416(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $38, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 64(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call cairo_surface_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 616(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 616(%rbp), %rax
    movq 792(%rbp), %rdi
    movq 784(%rbp), %rsi
    movdqu 768(%rbp), %xmm6
    movdqu 752(%rbp), %xmm7
    movdqu 736(%rbp), %xmm8
    movdqu 720(%rbp), %xmm9
    movdqu 704(%rbp), %xmm10
    movdqu 688(%rbp), %xmm11
    movdqu 672(%rbp), %xmm12
    movdqu 656(%rbp), %xmm13
    movdqu 640(%rbp), %xmm14
    movdqu 624(%rbp), %xmm15
    movq 608(%rbp), %rbx
    movq 600(%rbp), %r12
    movq 592(%rbp), %r13
    movq 584(%rbp), %r14
    movq 576(%rbp), %r15
    leaq 800(%rbp), %rsp
    popq %rbp
    ret
.L11_10:
    jmp .L11_9
.L11_8:
.L11_9:
    subq $32, %rsp
    movq 64(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call cairo_create
    addq $32, %rsp
    movq %rax, 56(%rbp)
    movq 56(%rbp), %rax
    testq %rax, %rax
    jne .L11_11
    jmp .L11_12
.L11_12:
    leaq .Ltext_99(%rip), %rdi
    leaq .Ltext_86(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L11_11:
    movq 56(%rbp), %rax
    leaq 272(%rbp), %r10
    movq %rax, (%r10)
    subq $32, %rsp
    call cairo_font_options_create
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L11_37
    jmp .L11_38
.L11_38:
    leaq .Ltext_87(%rip), %rdi
    leaq .Ltext_86(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L11_37:
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movl $2, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call cairo_font_options_set_antialias
    addq $32, %rsp
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movl $1, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call cairo_font_options_set_hint_metrics
    addq $32, %rsp
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call cairo_set_font_options
    addq $32, %rsp
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call cairo_font_options_destroy
    addq $32, %rsp
.L11_39:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call cairo_scaled_font_get_font_face
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L11_13
    jmp .L11_14
.L11_14:
    leaq .Ltext_100(%rip), %rdi
    leaq .Ltext_86(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L11_13:
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call cairo_set_font_face
    addq $32, %rsp
    movq $16, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 232(%rbp)
    movq 232(%rbp), %r10
    movsd (%r10), %xmm12
    leaq 464(%rbp), %rax
    movq %rax, 224(%rbp)
    movq 224(%rbp), %r10
    movsd (%r10), %xmm8
    movsd %xmm8, 216(%rbp)
    movsd 216(%rbp), %xmm9
    movaps %xmm12, %xmm8
    mulsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %rdx, %xmm1
    call cairo_set_font_size
    addq $32, %rsp
    movabsq $4607182418800017408, %rax
    movq %rax, %xmm12
    subq $48, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 8(%rsp)
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 16(%rsp)
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 24(%rsp)
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 32(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %rdx, %xmm1
    movq 16(%rsp), %r8
    movq %r8, %xmm2
    movq 24(%rsp), %r9
    movq %r9, %xmm3
    call cairo_set_source_rgba
    addq $48, %rsp
    leaq 480(%rbp), %rax
    movq %rax, 208(%rbp)
    movq 208(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 200(%rbp)
    leaq 400(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 376(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, 192(%rbp)
    leaq 360(%rbp), %rax
    movq %rax, 184(%rbp)
    leaq 339(%rbp), %rax
    movq %rax, 176(%rbp)
    movq 16(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 168(%rbp)
    movabsq $4611686018427387904, %rax
    movq %rax, %xmm8
    movsd %xmm8, 152(%rbp)
    movq $24, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 144(%rbp)
    movq $32, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 136(%rbp)
    movq $0, %rax
    movq %rax, 48(%rbp)
    movq $0, %rax
    movq %rax, 40(%rbp)
.L11_15:
    movq 200(%rbp), %r10
    movq (%r10), %rbx
    movq 48(%rbp), %rax
    cmpq %rbx, %rax
    jae .L11_17
.L11_16:
    subq $48, %rsp
    movq 208(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 48(%rbp), %rax
    movq %rax, 16(%rsp)
    leaq 376(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_utf8_decode
    addq $48, %rsp
    movq 192(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_18
    jmp .L11_19
.L11_18:
    movq 8(%rbp), %r10
    movq 184(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L11_20
.L11_19:
    leaq .Ltext_37(%rip), %rbx
    leaq 344(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $22, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_101(%rip), %rbx
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
    leaq .Ltext_101(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L11_20:
    movq 184(%rbp), %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 176(%rbp), %r11
    movl $0, 0(%r11)
    movb $0, 4(%r11)
    movq 168(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 160(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L11_21:
    movq 160(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L11_24
.L11_22:
    movq $5, %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_102(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 176(%rbp), %rax
    movq %rax, %r12
    addq %r14, %r12
    movq 48(%rbp), %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_102(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 208(%rbp), %r10
    movq (%r10), %r15
    movq 200(%rbp), %r10
    movq (%r10), %rbx
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_102(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r13, %rbx
    addq %r15, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq %r12, %r10
    movb %bl, (%r10)
.L11_23:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r14
    jmp .L11_21
.L11_24:
    movq 160(%rbp), %rax
    movq $5, %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_103(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 176(%rbp), %rax
    movq 160(%rbp), %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq 40(%rbp), %rax
    movq %rax, %rcx
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
    movq 144(%rbp), %r10
    movsd (%r10), %xmm13
    movaps %xmm12, %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    movsd 216(%rbp), %xmm8
    mulsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    movsd 152(%rbp), %xmm8
    addsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    movq 136(%rbp), %r10
    movsd (%r10), %xmm13
    movsd 216(%rbp), %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm13
    movsd 152(%rbp), %xmm8
    addsd %xmm13, %xmm8
    movapd %xmm8, %xmm13
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 8(%rsp)
    movapd %xmm13, %xmm0
    movq %xmm0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %rdx, %xmm1
    movq 16(%rsp), %r8
    movq %r8, %xmm2
    call cairo_move_to
    addq $32, %rsp
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 176(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call cairo_show_text
    addq $32, %rsp
    movq 160(%rbp), %rax
    movq 48(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_105(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 40(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_106(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %rbx, %rax
    movq %rax, 48(%rbp)
    movq %r12, %rax
    movq %rax, 40(%rbp)
    jmp .L11_15
.L11_17:
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call cairo_status
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L11_26
.L11_25:
    leaq 544(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_107(%rip), %r12
    leaq 320(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $33, %rax
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
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call cairo_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 64(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call cairo_surface_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 616(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 616(%rbp), %rax
    movq 792(%rbp), %rdi
    movq 784(%rbp), %rsi
    movdqu 768(%rbp), %xmm6
    movdqu 752(%rbp), %xmm7
    movdqu 736(%rbp), %xmm8
    movdqu 720(%rbp), %xmm9
    movdqu 704(%rbp), %xmm10
    movdqu 688(%rbp), %xmm11
    movdqu 672(%rbp), %xmm12
    movdqu 656(%rbp), %xmm13
    movdqu 640(%rbp), %xmm14
    movdqu 624(%rbp), %xmm15
    movq 608(%rbp), %rbx
    movq 600(%rbp), %r12
    movq 592(%rbp), %r13
    movq 584(%rbp), %r14
    movq 576(%rbp), %r15
    leaq 800(%rbp), %rsp
    popq %rbp
    ret
.L11_28:
    jmp .L11_27
.L11_26:
.L11_27:
    subq $32, %rsp
    movq 64(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call cairo_surface_flush
    addq $32, %rsp
    subq $32, %rsp
    movq 64(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call cairo_image_surface_get_data
    addq $32, %rsp
    movq %rax, 32(%rbp)
    movq 32(%rbp), %rax
    testq %rax, %rax
    jne .L11_29
    jmp .L11_30
.L11_30:
    leaq .Ltext_108(%rip), %rdi
    leaq .Ltext_86(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L11_29:
    subq $32, %rsp
    movq 64(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call cairo_image_surface_get_stride
    addq $32, %rsp
    movl %eax, 128(%rbp)
    movl 128(%rbp), %eax
    movslq %eax, %rax
    movq %rax, 120(%rbp)
    movq 240(%rbp), %r10
    movl (%r10), %r13d
    movl %r13d, %eax
    movq %rax, 112(%rbp)
    movq 256(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 104(%rbp)
    leaq 304(%rbp), %rax
    movq %rax, 96(%rbp)
    movq 96(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 88(%rbp)
    leaq 288(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    movq $0, %rax
    movq %rax, %r12
.L11_31:
    movq 112(%rbp), %rcx
    cmpq %rcx, %r12
    jae .L11_34
.L11_32:
    movq 256(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq 104(%rbp), %r10
    movq (%r10), %r15
    movq 248(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    movq %rbx, %r13
    imulq %r12, %r13
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_109(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %rbx, %r15
    jb 1f
    leaq .Ltext_109(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r15, %r13
    jbe .L11_35
.L11_36:
    leaq .Ltext_109(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L11_35:
    movq 24(%rbp), %rax
    movq %rax, %rbx
    addq %r13, %rbx
    movq %r15, %r14
    subq %r13, %r14
    movq 96(%rbp), %r10
    movq %rbx, (%r10)
    movq 88(%rbp), %r10
    movq %r14, (%r10)
    movq 120(%rbp), %rax
    movq %r12, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_109(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 32(%rbp), %rcx
    addq %rcx, %rbx
    movq 248(%rbp), %r10
    movl (%r10), %r14d
    movl %r14d, %r14d
    movq 80(%rbp), %r10
    movq %rbx, (%r10)
    movq 72(%rbp), %r10
    movq %r14, (%r10)
    movq 248(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    subq $64, %rsp
    movq 96(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 80(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_copy_0g1_u8
    addq $64, %rsp
.L11_33:
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r12
    jmp .L11_31
.L11_34:
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call cairo_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 64(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call cairo_surface_destroy
    addq $32, %rsp
    leaq 544(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 616(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 616(%rbp), %rax
    movq 792(%rbp), %rdi
    movq 784(%rbp), %rsi
    movdqu 768(%rbp), %xmm6
    movdqu 752(%rbp), %xmm7
    movdqu 736(%rbp), %xmm8
    movdqu 720(%rbp), %xmm9
    movdqu 704(%rbp), %xmm10
    movdqu 688(%rbp), %xmm11
    movdqu 672(%rbp), %xmm12
    movdqu 656(%rbp), %xmm13
    movdqu 640(%rbp), %xmm14
    movdqu 624(%rbp), %xmm15
    movq 608(%rbp), %rbx
    movq 600(%rbp), %r12
    movq 592(%rbp), %r13
    movq 584(%rbp), %r14
    movq 576(%rbp), %r15
    leaq 800(%rbp), %rsp
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
    jne .L12_11
    jmp .L12_4
.L12_11:
    movl %r13d, %r14d
    jmp .L12_5
.L12_4:
    leaq 32(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L12_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L12_1
    jmp .L12_2
.L12_1:
    leaq .Ltext_46(%rip), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_110(%rip), %r13
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
    jmp .L12_3
.L12_2:
.L12_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L12_7
.L12_6:
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
    jne .L12_9
    jmp .L12_10
.L12_10:
    leaq .Ltext_111(%rip), %rdi
    leaq .Ltext_86(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L12_9:
    jmp .L12_8
.L12_7:
.L12_8:
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
    .quad lb_fonts_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/fonts/module.lucb:24:13"
.Ltext_1:
    .asciz "font size must be finite and in 8..64 points"
.Ltext_2:
    .asciz "font family must be UTF-8 within 255 bytes"
.Ltext_3:
    .asciz "font family cannot contain NUL"
.Ltext_4:
    .asciz "the font is closed"
.Ltext_5:
    .asciz "unreachable"
.Ltext_6:
    .asciz "src/std/fonts/module.lucb:58:9"
.Ltext_7:
    .asciz "font raster scale must be finite and in 0.5..4"
.Ltext_8:
    .asciz "src/std/fonts/module.lucb:67:9"
.Ltext_9:
    .asciz "src/std/fonts/module.lucb:68:9"
.Ltext_10:
    .asciz "src/std/fonts/module.lucb:69:9"
.Ltext_11:
    .asciz "rasterized text exceeds the 4 MiB image limit"
.Ltext_12:
    .asciz "src/std/fonts/module.lucb:71:9"
.Ltext_13:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_14:
    .asciz "memory.unset"
.Ltext_15:
    .asciz "memory.exhausted"
.Ltext_16:
    .asciz "src/std/fonts/module.lucb:82:9"
.Ltext_17:
    .asciz "font operations require the UI thread"
.Ltext_18:
    .asciz "a text run supports at most 4096 UTF-8 bytes"
.Ltext_19:
    .asciz "text must be valid UTF-8"
.Ltext_20:
    .asciz "text runs cannot contain NUL, tabs or line breaks"
.Ltext_21:
    .asciz "src/std/fonts/module.lucb:108:9"
.Ltext_22:
    .asciz "src/std/fonts/module.lucb:109:9"
.Ltext_23:
    .asciz "a text run supports at most 1024 scalars"
.Ltext_24:
    .asciz "src/std/fonts/module.lucb:112:5"
.Ltext_25:
    .asciz "src/std/fonts/module.lucb:125:9"
.Ltext_26:
    .asciz "src/std/fonts/module.lucb:131:5"
.Ltext_27:
    .asciz "src/std/fonts/module.lucb:133:5"
.Ltext_28:
    .asciz "src/std/fonts/module.lucb:134:5"
.Ltext_29:
    .asciz "could not create native font text"
.Ltext_30:
    .asciz "src/std/fonts/macos/native.lucb:30:5"
.Ltext_31:
    .asciz "Menlo"
.Ltext_32:
    .asciz "could not load the font family"
.Ltext_33:
    .asciz "the requested font must be monospace"
.Ltext_34:
    .asciz "src/std/fonts/macos/native.lucb:43:5"
.Ltext_35:
    .asciz "could not scale the font"
.Ltext_36:
    .asciz "could not create a font raster context"
.Ltext_37:
    .asciz "validated text changed"
.Ltext_38:
    .asciz "src/std/fonts/macos/native.lucb:58:9"
.Ltext_39:
    .asciz "src/std/fonts/macos/native.lucb:59:9"
.Ltext_40:
    .asciz "src/std/fonts/macos/native.lucb:64:13"
.Ltext_41:
    .asciz "shift count out of range"
.Ltext_42:
    .asciz "src/std/fonts/macos/native.lucb:65:13"
.Ltext_43:
    .asciz "src/std/fonts/macos/native.lucb:68:13"
.Ltext_44:
    .asciz "src/std/fonts/macos/native.lucb:72:9"
.Ltext_45:
    .asciz "src/std/fonts/macos/native.lucb:73:13"
.Ltext_46:
    .asciz "index out of bounds"
.Ltext_47:
    .asciz "src/std/fonts/macos/native.lucb:78:17"
.Ltext_48:
    .asciz "src/std/fonts/macos/native.lucb:81:9"
.Ltext_49:
    .asciz "src/std/fonts/macos/native.lucb:84:9"
.Ltext_50:
    .asciz "Consolas"
.Ltext_51:
    .asciz "src/std/fonts/windows/native.lucb:63:5"
.Ltext_52:
    .asciz "Windows font families support at most 31 UTF-16 units"
.Ltext_53:
    .asciz "src/std/fonts/windows/native.lucb:66:9"
.Ltext_54:
    .asciz "src/std/fonts/windows/native.lucb:67:5"
.Ltext_55:
    .asciz "src/std/fonts/windows/native.lucb:69:9"
.Ltext_56:
    .asciz "src/std/fonts/windows/native.lucb:70:5"
.Ltext_57:
    .asciz "could not create a font context"
.Ltext_58:
    .asciz "src/std/fonts/windows/native.lucb:72:5"
.Ltext_59:
    .asciz "could not select the font"
.Ltext_60:
    .asciz "src/std/fonts/windows/native.lucb:74:5"
.Ltext_61:
    .asciz "src/std/fonts/windows/native.lucb:77:9"
.Ltext_62:
    .asciz "src/std/fonts/windows/native.lucb:78:5"
.Ltext_63:
    .asciz "could not read font attributes"
.Ltext_64:
    .asciz "src/std/fonts/windows/native.lucb:91:5"
.Ltext_65:
    .asciz "could not select the scaled font"
.Ltext_66:
    .asciz "src/std/fonts/windows/native.lucb:100:9"
.Ltext_67:
    .asciz "src/std/fonts/windows/native.lucb:101:9"
.Ltext_68:
    .asciz "could not rasterize the font glyph"
.Ltext_69:
    .asciz "src/std/fonts/windows/native.lucb:108:13"
.Ltext_70:
    .asciz "could not read font coverage"
.Ltext_71:
    .asciz "src/std/fonts/windows/native.lucb:111:17"
.Ltext_72:
    .asciz "src/std/fonts/windows/native.lucb:112:13"
.Ltext_73:
    .asciz "division by zero"
.Ltext_74:
    .asciz "src/std/fonts/windows/native.lucb:113:13"
.Ltext_75:
    .asciz "native glyph dimensions exceed its buffer"
.Ltext_76:
    .asciz "src/std/fonts/windows/native.lucb:114:17"
.Ltext_77:
    .asciz "src/std/fonts/windows/native.lucb:115:13"
.Ltext_78:
    .asciz "src/std/fonts/windows/native.lucb:116:13"
.Ltext_79:
    .asciz "src/std/fonts/windows/native.lucb:119:21"
.Ltext_80:
    .asciz "src/std/fonts/windows/native.lucb:120:21"
.Ltext_81:
    .asciz "src/std/fonts/windows/native.lucb:122:25"
.Ltext_82:
    .asciz "src/std/fonts/windows/native.lucb:123:25"
.Ltext_83:
    .asciz "src/std/fonts/windows/native.lucb:124:25"
.Ltext_84:
    .asciz "src/std/fonts/windows/native.lucb:125:29"
.Ltext_85:
    .asciz "src/std/fonts/windows/native.lucb:126:9"
.Ltext_86:
    .asciz "null_foreign"
.Ltext_87:
    .asciz "src/std/fonts/linux/native.lucb:44:5"
.Ltext_88:
    .asciz "monospace"
.Ltext_89:
    .asciz "src/std/fonts/linux/native.lucb:53:5"
.Ltext_90:
    .asciz "src/std/fonts/linux/native.lucb:55:5"
.Ltext_91:
    .asciz "i"
.Ltext_92:
    .asciz "W"
.Ltext_93:
    .asciz "the requested font must be an available monospace face"
.Ltext_94:
    .asciz "src/std/fonts/linux/native.lucb:67:9"
.Ltext_95:
    .asciz "src/std/fonts/linux/native.lucb:68:5"
.Ltext_96:
    .asciz "src/std/fonts/linux/native.lucb:69:5"
.Ltext_97:
    .asciz "src/std/fonts/linux/native.lucb:73:5"
.Ltext_98:
    .asciz "could not allocate font raster storage"
.Ltext_99:
    .asciz "src/std/fonts/linux/native.lucb:77:5"
.Ltext_100:
    .asciz "src/std/fonts/linux/native.lucb:80:5"
.Ltext_101:
    .asciz "src/std/fonts/linux/native.lucb:86:9"
.Ltext_102:
    .asciz "src/std/fonts/linux/native.lucb:89:13"
.Ltext_103:
    .asciz "src/std/fonts/linux/native.lucb:90:9"
.Ltext_104:
    .asciz "src/std/fonts/linux/native.lucb:92:9"
.Ltext_105:
    .asciz "src/std/fonts/linux/native.lucb:93:9"
.Ltext_106:
    .asciz "src/std/fonts/linux/native.lucb:94:9"
.Ltext_107:
    .asciz "could not rasterize the font text"
.Ltext_108:
    .asciz "src/std/fonts/linux/native.lucb:98:5"
.Ltext_109:
    .asciz "src/std/fonts/linux/native.lucb:101:9"
.Ltext_110:
    .asciz "src/std/memory.lucb:326:9"
.Ltext_111:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_112:
    .asciz "integer overflow"

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_fonts_failed
    .p2align 2
lb_fonts_failed:
    .zero 4
