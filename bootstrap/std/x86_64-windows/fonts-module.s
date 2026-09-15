    .weak lb_memory_copy_0g1_u8
    .text

    .p2align 4
    .globl lb_fonts_module_0init
lb_fonts_module_0init:
    .seh_proc lb_fonts_module_0init
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
    .globl lb_fonts_Bitmap_close
lb_fonts_Bitmap_close:
    .seh_proc lb_fonts_Bitmap_close
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
    movq %rax, 48(%rbp)
    leaq 48(%rbp), %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L1_2
.L1_1:
    leaq lb_memory_heap(%rip), %r12
    leaq 32(%rbp), %r14
    movq %r13, %r10
    movq (%r10), %r15
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L1_5
    jmp .L1_4
.L1_5:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r15, %rax
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
.L1_4:
    jmp .L1_3
.L1_2:
.L1_3:
    leaq 0(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
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
    jne .L2_28
.L2_27:
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
    jmp .L2_31
.L2_30:
    jmp .L2_29
.L2_28:
.L2_29:
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
.L2_31:
    leaq 408(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_2
    jmp .L2_1
.L2_2:
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
.L2_3:
.L2_1:
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
    jne .L2_7
    jmp .L2_37
.L2_37:
    movl %ebx, %r13d
    jmp .L2_8
.L2_7:
    movabsq $4634204016564240384, %rax
    movq %rax, %xmm12
    movsd 16(%rbp), %xmm8
    ucomisd %xmm8, %xmm12
    setae %al
    movzbl %al, %r13d
.L2_8:
    movzbl %r13b, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L2_5
.L2_4:
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
.L2_9:
    jmp .L2_6
.L2_5:
.L2_6:
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
    jne .L2_38
    jmp .L2_13
.L2_38:
    movl %r14d, %r15d
    jmp .L2_14
.L2_13:
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
.L2_14:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L2_10
    jmp .L2_11
.L2_10:
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
.L2_15:
    jmp .L2_12
.L2_11:
.L2_12:
    movq %rbx, %r10
    movq (%r10), %r14
    movq %r13, %r10
    movq (%r10), %r15
    movq $0, %rax
    movq %rax, %r12
.L2_16:
    cmpq %r15, %r12
    jae .L2_19
.L2_17:
    movq %r14, %r13
    addq %r12, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movzbl %r13b, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L2_21
.L2_20:
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
.L2_23:
    jmp .L2_22
.L2_21:
.L2_22:
.L2_18:
    movq $1, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r12
    jmp .L2_16
.L2_19:
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
    jne .L2_33
    jmp .L2_32
.L2_33:
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
    jmp .L2_36
.L2_34:
.L2_32:
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
    jmp .L2_36
.L2_35:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_36:
    leaq 248(%rbp), %r12
    movq $64, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_25
    jmp .L2_24
.L2_25:
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
.L2_26:
.L2_24:
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
    .globl lb_fonts_Face_measure
lb_fonts_Face_measure:
    .seh_proc lb_fonts_Face_measure
    pushq %rbp
    .seh_pushreg %rbp
    subq $592, %rsp
    .seh_stackalloc 592
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 408(%rbp)
    movq %rdi, 584(%rbp)
    .seh_savereg %rdi, 584
    movq %rsi, 576(%rbp)
    .seh_savereg %rsi, 576
    movdqu %xmm6, 560(%rbp)
    .seh_savexmm %xmm6, 560
    movdqu %xmm7, 544(%rbp)
    .seh_savexmm %xmm7, 544
    movdqu %xmm8, 528(%rbp)
    .seh_savexmm %xmm8, 528
    movdqu %xmm9, 512(%rbp)
    .seh_savexmm %xmm9, 512
    movdqu %xmm10, 496(%rbp)
    .seh_savexmm %xmm10, 496
    movdqu %xmm11, 480(%rbp)
    .seh_savexmm %xmm11, 480
    movdqu %xmm12, 464(%rbp)
    .seh_savexmm %xmm12, 464
    movdqu %xmm13, 448(%rbp)
    .seh_savexmm %xmm13, 448
    movdqu %xmm14, 432(%rbp)
    .seh_savexmm %xmm14, 432
    movdqu %xmm15, 416(%rbp)
    .seh_savexmm %xmm15, 416
    movq %rbx, 400(%rbp)
    .seh_savereg %rbx, 400
    movq %r12, 392(%rbp)
    .seh_savereg %r12, 392
    movq %r13, 384(%rbp)
    .seh_savereg %r13, 384
    movq %r14, 376(%rbp)
    .seh_savereg %r14, 376
    movq %r15, 368(%rbp)
    .seh_savereg %r15, 368
    .seh_endprologue
    movq %rcx, 608(%rbp)
    movq %rdx, 616(%rbp)
    movq %r8, 624(%rbp)
    movq %r9, 632(%rbp)
    movq 616(%rbp), %rax
    movq %rax, 320(%rbp)
    movq 624(%rbp), %r10
    leaq 304(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 320(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L3_2
.L3_1:
    leaq 328(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_4(%rip), %r13
    leaq 288(%rbp), %r14
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 408(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 408(%rbp), %rax
    movq 584(%rbp), %rdi
    movq 576(%rbp), %rsi
    movdqu 560(%rbp), %xmm6
    movdqu 544(%rbp), %xmm7
    movdqu 528(%rbp), %xmm8
    movdqu 512(%rbp), %xmm9
    movdqu 496(%rbp), %xmm10
    movdqu 480(%rbp), %xmm11
    movdqu 464(%rbp), %xmm12
    movdqu 448(%rbp), %xmm13
    movdqu 432(%rbp), %xmm14
    movdqu 416(%rbp), %xmm15
    movq 400(%rbp), %rbx
    movq 392(%rbp), %r12
    movq 384(%rbp), %r13
    movq 376(%rbp), %r14
    movq 368(%rbp), %r15
    leaq 592(%rbp), %rsp
    popq %rbp
    ret
.L3_4:
    jmp .L3_3
.L3_2:
.L3_3:
    leaq 304(%rbp), %rbx
    movq %rbx, %r10
    leaq 192(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 192(%rbp), %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %r10
    movq (%r10), %r14
    movq $4096, %rcx
    cmpq %rcx, %r14
    jbe .L3_10
.L3_9:
    leaq 208(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    leaq lb_fonts_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_18(%rip), %r14
    leaq 176(%rbp), %r15
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
    leaq 248(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L3_35
.L3_12:
    jmp .L3_11
.L3_10:
.L3_11:
    leaq 160(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 136(%rbp), %r14
    movq $16, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    leaq 120(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 8(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq $0, %rax
    movq %rax, %r12
    movq $0, %rax
    movq %rax, 16(%rbp)
.L3_13:
    movq 56(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r12
    jae .L3_15
.L3_14:
    subq $48, %rsp
    movq 64(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    leaq 136(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_utf8_decode
    addq $48, %rsp
    movq 48(%rbp), %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L3_16
    jmp .L3_17
.L3_16:
    movq %r14, %r10
    movq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L3_18
.L3_17:
    leaq 208(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_19(%rip), %r13
    leaq 104(%rbp), %r14
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
    leaq 248(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L3_35
.L3_19:
.L3_18:
    movq 40(%rbp), %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 8(%rbp), %r10
    movl (%r10), %r15d
    movl %r15d, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L3_36
    jmp .L3_23
.L3_36:
    movl %ebx, %r13d
    jmp .L3_24
.L3_23:
    movl $10, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r13d
.L3_24:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L3_37
    jmp .L3_25
.L3_37:
    movl %ebx, %r13d
    jmp .L3_26
.L3_25:
    movl $13, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r13d
.L3_26:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L3_38
    jmp .L3_27
.L3_38:
    movl %ebx, %r13d
    jmp .L3_28
.L3_27:
    movl $9, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r13d
.L3_28:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L3_20
    jmp .L3_21
.L3_20:
    leaq 208(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_20(%rip), %r13
    leaq 88(%rbp), %r14
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
    leaq 248(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L3_35
.L3_29:
    jmp .L3_22
.L3_21:
.L3_22:
    movq 32(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_33(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 16(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_33(%rip), %rsi
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
    movq %rax, 16(%rbp)
    jmp .L3_13
.L3_15:
    movq 16(%rbp), %rax
    movq $1024, %rcx
    cmpq %rcx, %rax
    jbe .L3_31
.L3_30:
    leaq 208(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_23(%rip), %r13
    leaq 72(%rbp), %r14
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
    leaq 248(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L3_35
.L3_33:
    jmp .L3_32
.L3_31:
.L3_32:
    leaq 208(%rbp), %rbx
    movq 16(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
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
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L3_35
.L3_34:
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L3_35:
    leaq 248(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_6
    jmp .L3_5
.L3_6:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 328(%rbp), %r13
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
    movq %r13, %rsi
    movq 408(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 408(%rbp), %rax
    movq 584(%rbp), %rdi
    movq 576(%rbp), %rsi
    movdqu 560(%rbp), %xmm6
    movdqu 544(%rbp), %xmm7
    movdqu 528(%rbp), %xmm8
    movdqu 512(%rbp), %xmm9
    movdqu 496(%rbp), %xmm10
    movdqu 480(%rbp), %xmm11
    movdqu 464(%rbp), %xmm12
    movdqu 448(%rbp), %xmm13
    movdqu 432(%rbp), %xmm14
    movdqu 416(%rbp), %xmm15
    movq 400(%rbp), %rbx
    movq 392(%rbp), %r12
    movq 384(%rbp), %r13
    movq 376(%rbp), %r14
    movq 368(%rbp), %r15
    leaq 592(%rbp), %rsp
    popq %rbp
    ret
.L3_7:
.L3_5:
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
    movq 24(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm13
    movaps %xmm12, %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    leaq 328(%rbp), %rbx
    movq %rbx, %r10
    movsd %xmm12, (%r10)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 408(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 408(%rbp), %rax
    movq 584(%rbp), %rdi
    movq 576(%rbp), %rsi
    movdqu 560(%rbp), %xmm6
    movdqu 544(%rbp), %xmm7
    movdqu 528(%rbp), %xmm8
    movdqu 512(%rbp), %xmm9
    movdqu 496(%rbp), %xmm10
    movdqu 480(%rbp), %xmm11
    movdqu 464(%rbp), %xmm12
    movdqu 448(%rbp), %xmm13
    movdqu 432(%rbp), %xmm14
    movdqu 416(%rbp), %xmm15
    movq 400(%rbp), %rbx
    movq 392(%rbp), %r12
    movq 384(%rbp), %r13
    movq 376(%rbp), %r14
    movq 368(%rbp), %r15
    leaq 592(%rbp), %rsp
    popq %rbp
    ret
.L3_8:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_fonts_Face_rasterize
lb_fonts_Face_rasterize:
    .seh_proc lb_fonts_Face_rasterize
    pushq %rbp
    .seh_pushreg %rbp
    subq $768, %rsp
    .seh_stackalloc 768
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 584(%rbp)
    movq %rdi, 760(%rbp)
    .seh_savereg %rdi, 760
    movq %rsi, 752(%rbp)
    .seh_savereg %rsi, 752
    movdqu %xmm6, 736(%rbp)
    .seh_savexmm %xmm6, 736
    movdqu %xmm7, 720(%rbp)
    .seh_savexmm %xmm7, 720
    movdqu %xmm8, 704(%rbp)
    .seh_savexmm %xmm8, 704
    movdqu %xmm9, 688(%rbp)
    .seh_savexmm %xmm9, 688
    movdqu %xmm10, 672(%rbp)
    .seh_savexmm %xmm10, 672
    movdqu %xmm11, 656(%rbp)
    .seh_savexmm %xmm11, 656
    movdqu %xmm12, 640(%rbp)
    .seh_savexmm %xmm12, 640
    movdqu %xmm13, 624(%rbp)
    .seh_savexmm %xmm13, 624
    movdqu %xmm14, 608(%rbp)
    .seh_savexmm %xmm14, 608
    movdqu %xmm15, 592(%rbp)
    .seh_savexmm %xmm15, 592
    movq %rbx, 576(%rbp)
    .seh_savereg %rbx, 576
    movq %r12, 568(%rbp)
    .seh_savereg %r12, 568
    movq %r13, 560(%rbp)
    .seh_savereg %r13, 560
    movq %r14, 552(%rbp)
    .seh_savereg %r14, 552
    movq %r15, 544(%rbp)
    .seh_savereg %r15, 544
    .seh_endprologue
    movq %rcx, 784(%rbp)
    movq %rdx, 792(%rbp)
    movq %r8, 800(%rbp)
    movq %r9, 808(%rbp)
    movsd %xmm3, 808(%rbp)
    movq 792(%rbp), %rax
    movq %rax, 472(%rbp)
    movq 800(%rbp), %r10
    leaq 456(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 808(%rbp), %rax
    movq %rax, 440(%rbp)
    leaq 472(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 32(%rbp)
    subq $32, %rsp
    call lb_thread_7is_main
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L4_36
.L4_35:
    leaq 104(%rbp), %rbx
    leaq lb_interop_12wrong_thread(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_17(%rip), %r13
    leaq 88(%rbp), %r14
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
    jmp .L4_39
.L4_38:
    jmp .L4_37
.L4_36:
.L4_37:
    leaq 104(%rbp), %rbx
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
.L4_39:
    leaq 408(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_2
    jmp .L4_1
.L4_2:
    leaq 480(%rbp), %rbx
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
    movq 584(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 584(%rbp), %rax
    movq 760(%rbp), %rdi
    movq 752(%rbp), %rsi
    movdqu 736(%rbp), %xmm6
    movdqu 720(%rbp), %xmm7
    movdqu 704(%rbp), %xmm8
    movdqu 688(%rbp), %xmm9
    movdqu 672(%rbp), %xmm10
    movdqu 656(%rbp), %xmm11
    movdqu 640(%rbp), %xmm12
    movdqu 624(%rbp), %xmm13
    movdqu 608(%rbp), %xmm14
    movdqu 592(%rbp), %xmm15
    movq 576(%rbp), %rbx
    movq 568(%rbp), %r12
    movq 560(%rbp), %r13
    movq 552(%rbp), %r14
    movq 544(%rbp), %r15
    leaq 768(%rbp), %rsp
    popq %rbp
    ret
.L4_3:
.L4_1:
    leaq 456(%rbp), %rax
    movq %rax, 80(%rbp)
    subq $48, %rsp
    movq 32(%rbp), %rax
    movq %rax, 8(%rsp)
    movq 80(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    leaq 368(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_fonts_Face_measure
    addq $48, %rsp
    leaq 368(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L4_5
    jmp .L4_4
.L4_5:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 480(%rbp), %r12
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
    movq 584(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 584(%rbp), %rax
    movq 760(%rbp), %rdi
    movq 752(%rbp), %rsi
    movdqu 736(%rbp), %xmm6
    movdqu 720(%rbp), %xmm7
    movdqu 704(%rbp), %xmm8
    movdqu 688(%rbp), %xmm9
    movdqu 672(%rbp), %xmm10
    movdqu 656(%rbp), %xmm11
    movdqu 640(%rbp), %xmm12
    movdqu 624(%rbp), %xmm13
    movdqu 608(%rbp), %xmm14
    movdqu 592(%rbp), %xmm15
    movq 576(%rbp), %rbx
    movq 568(%rbp), %r12
    movq 560(%rbp), %r13
    movq 552(%rbp), %r14
    movq 544(%rbp), %r15
    leaq 768(%rbp), %rsp
    popq %rbp
    ret
.L4_6:
.L4_4:
    movq %r14, %r10
    movsd (%r10), %xmm12
    leaq 440(%rbp), %r13
    movq %r13, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, 72(%rbp)
    movabsq $4602678819172646912, %rax
    movq %rax, %xmm13
    movsd 72(%rbp), %xmm8
    ucomisd %xmm13, %xmm8
    setae %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L4_10
    jmp .L4_40
.L4_40:
    movl %r13d, %r14d
    jmp .L4_11
.L4_10:
    movabsq $4616189618054758400, %rax
    movq %rax, %xmm13
    movsd 72(%rbp), %xmm8
    ucomisd %xmm8, %xmm13
    setae %al
    movzbl %al, %r14d
.L4_11:
    movzbl %r14b, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L4_8
.L4_7:
    leaq 480(%rbp), %rbx
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_7(%rip), %r13
    leaq 352(%rbp), %r14
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
    movq 584(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 584(%rbp), %rax
    movq 760(%rbp), %rdi
    movq 752(%rbp), %rsi
    movdqu 736(%rbp), %xmm6
    movdqu 720(%rbp), %xmm7
    movdqu 704(%rbp), %xmm8
    movdqu 688(%rbp), %xmm9
    movdqu 672(%rbp), %xmm10
    movdqu 656(%rbp), %xmm11
    movdqu 640(%rbp), %xmm12
    movdqu 624(%rbp), %xmm13
    movdqu 608(%rbp), %xmm14
    movdqu 592(%rbp), %xmm15
    movq 576(%rbp), %rbx
    movq 568(%rbp), %r12
    movq 560(%rbp), %r13
    movq 552(%rbp), %r14
    movq 544(%rbp), %r15
    leaq 768(%rbp), %rsp
    popq %rbp
    ret
.L4_12:
    jmp .L4_9
.L4_8:
.L4_9:
    movsd 72(%rbp), %xmm9
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
    leaq .Ltext_8(%rip), %r13
    subq $32, %rsp
    movapd %xmm13, %xmm0
    movq %xmm0, %rax
    movq %rax, 0(%rsp)
    movl $64, %eax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq %rcx, %xmm0
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_core_6f_to_u
    addq $32, %rsp
    movq %rax, %r13
    movq %r13, %rax
    movq $4, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_33(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 64(%rbp)
    movq 32(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movsd (%r10), %xmm13
    movq 32(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movsd (%r10), %xmm14
    movaps %xmm13, %xmm8
    addsd %xmm14, %xmm8
    movapd %xmm8, %xmm13
    movsd 72(%rbp), %xmm8
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
    leaq .Ltext_9(%rip), %r14
    subq $32, %rsp
    movapd %xmm13, %xmm0
    movq %xmm0, %rax
    movq %rax, 0(%rsp)
    movl $64, %eax
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
    call lb_core_6f_to_u
    addq $32, %rsp
    movq %rax, %r14
    movq %r14, %rax
    movq $4, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_33(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 56(%rbp)
    movq 64(%rbp), %rax
    movq $16384, %rcx
    cmpq %rcx, %rax
    seta %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L4_41
    jmp .L4_16
.L4_41:
    movl %r15d, %ebx
    jmp .L4_17
.L4_16:
    movq 56(%rbp), %rax
    movq $1024, %rcx
    cmpq %rcx, %rax
    seta %al
    movzbl %al, %ebx
.L4_17:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L4_42
    jmp .L4_18
.L4_42:
    movl %r15d, %ebx
    jmp .L4_19
.L4_18:
    movq 64(%rbp), %rax
    movq 56(%rbp), %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_33(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq $4194304, %rcx
    cmpq %rcx, %rbx
    seta %al
    movzbl %al, %ebx
.L4_19:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L4_13
    jmp .L4_14
.L4_13:
    leaq 480(%rbp), %rbx
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_11(%rip), %r13
    leaq 336(%rbp), %r14
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
    movq 584(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 584(%rbp), %rax
    movq 760(%rbp), %rdi
    movq 752(%rbp), %rsi
    movdqu 736(%rbp), %xmm6
    movdqu 720(%rbp), %xmm7
    movdqu 704(%rbp), %xmm8
    movdqu 688(%rbp), %xmm9
    movdqu 672(%rbp), %xmm10
    movdqu 656(%rbp), %xmm11
    movdqu 640(%rbp), %xmm12
    movdqu 624(%rbp), %xmm13
    movdqu 608(%rbp), %xmm14
    movdqu 592(%rbp), %xmm15
    movq 576(%rbp), %rbx
    movq 568(%rbp), %r12
    movq 560(%rbp), %r13
    movq 552(%rbp), %r14
    movq 544(%rbp), %r15
    leaq 768(%rbp), %rsp
    popq %rbp
    ret
.L4_20:
    jmp .L4_15
.L4_14:
.L4_15:
    leaq 320(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq lb_memory_heap(%rip), %rbx
    leaq 304(%rbp), %rax
    movq %rax, 16(%rbp)
    movq %rbx, %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 64(%rbp), %rax
    movq 56(%rbp), %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_33(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    leaq 256(%rbp), %rax
    movq %rax, 8(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r15
    jbe .L4_22
.L4_21:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_13(%rip), %r15
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
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
    jmp .L4_23
.L4_22:
    movq 16(%rbp), %r10
    movq (%r10), %rbx
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L4_24
    jmp .L4_25
.L4_25:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L4_24:
    movq %r14, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r15, %rax
    movq %rax, 16(%rsp)
    movq $1, %rax
    movq %rax, 24(%rsp)
    leaq 232(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r13, %r11
    call *%r11
    addq $32, %rsp
    leaq 232(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r15
    setne %al
    movzbl %al, %eax
    movl %eax, 48(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl 48(%rbp), %eax
    andl %r13d, %eax
    movl %eax, 40(%rbp)
    movl 40(%rbp), %eax
    testl %eax, %eax
    jne .L4_26
    jmp .L4_27
.L4_26:
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
    jmp .L4_23
.L4_27:
    movq %r12, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $0, %eax
    movq %rax, 8(%rsp)
    movq %r15, %rax
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
    movq %r15, (%r10)
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L4_23:
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_29
    jmp .L4_28
.L4_29:
    movq 8(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 480(%rbp), %r12
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
    movq 584(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 584(%rbp), %rax
    movq 760(%rbp), %rdi
    movq 752(%rbp), %rsi
    movdqu 736(%rbp), %xmm6
    movdqu 720(%rbp), %xmm7
    movdqu 704(%rbp), %xmm8
    movdqu 688(%rbp), %xmm9
    movdqu 672(%rbp), %xmm10
    movdqu 656(%rbp), %xmm11
    movdqu 640(%rbp), %xmm12
    movdqu 624(%rbp), %xmm13
    movdqu 608(%rbp), %xmm14
    movdqu 592(%rbp), %xmm15
    movq 576(%rbp), %rbx
    movq 568(%rbp), %r12
    movq 560(%rbp), %r13
    movq 552(%rbp), %r14
    movq 544(%rbp), %r15
    leaq 768(%rbp), %rsp
    popq %rbp
    ret
.L4_30:
.L4_28:
    movq 8(%rbp), %r10
    movq 24(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 200(%rbp), %rbx
    leaq 168(%rbp), %r12
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
    movl 64(%rbp), %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq $20, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl 56(%rbp), %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movabsq $4611686018427387904, %rax
    movq %rax, %xmm12
    movsd 72(%rbp), %xmm9
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
    movq 32(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 80(%rbp), %r10
    leaq 96(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 96(%rsp), %rax
    movq %rax, 16(%rsp)
    movsd 72(%rbp), %xmm0
    movq %xmm0, %rax
    movq %rax, 24(%rsp)
    movq %rbx, %rax
    movq %rax, 32(%rsp)
    leaq 136(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r9, %xmm3
    call lb_fonts_10win_raster
    addq $112, %rsp
    leaq 136(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L4_32
    jmp .L4_31
.L4_32:
    leaq 480(%rbp), %r12
    movq $32, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $56, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_fonts_Bitmap_close
    addq $32, %rsp
    movq %r12, %rsi
    movq 584(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 584(%rbp), %rax
    movq 760(%rbp), %rdi
    movq 752(%rbp), %rsi
    movdqu 736(%rbp), %xmm6
    movdqu 720(%rbp), %xmm7
    movdqu 704(%rbp), %xmm8
    movdqu 688(%rbp), %xmm9
    movdqu 672(%rbp), %xmm10
    movdqu 656(%rbp), %xmm11
    movdqu 640(%rbp), %xmm12
    movdqu 624(%rbp), %xmm13
    movdqu 608(%rbp), %xmm14
    movdqu 592(%rbp), %xmm15
    movq 576(%rbp), %rbx
    movq 568(%rbp), %r12
    movq 560(%rbp), %r13
    movq 552(%rbp), %r14
    movq 544(%rbp), %r15
    leaq 768(%rbp), %rsp
    popq %rbp
    ret
.L4_33:
.L4_31:
    leaq 480(%rbp), %r12
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
    movq 584(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 584(%rbp), %rax
    movq 760(%rbp), %rdi
    movq 752(%rbp), %rsi
    movdqu 736(%rbp), %xmm6
    movdqu 720(%rbp), %xmm7
    movdqu 704(%rbp), %xmm8
    movdqu 688(%rbp), %xmm9
    movdqu 672(%rbp), %xmm10
    movdqu 656(%rbp), %xmm11
    movdqu 640(%rbp), %xmm12
    movdqu 624(%rbp), %xmm13
    movdqu 608(%rbp), %xmm14
    movdqu 592(%rbp), %xmm15
    movq 576(%rbp), %rbx
    movq 568(%rbp), %r12
    movq 560(%rbp), %r13
    movq 552(%rbp), %r14
    movq 544(%rbp), %r15
    leaq 768(%rbp), %rsp
    popq %rbp
    ret
.L4_34:
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
    movq %rax, 8(%rbp)
    leaq 8(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L5_4
    jmp .L5_2
.L5_4:
.L5_1:
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_fonts_9win_close
    addq $32, %rsp
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    jmp .L5_3
.L5_2:
.L5_3:
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
    leaq .Ltext_33(%rip), %rsi
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
    jbe .L6_2
.L6_1:
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
    jmp .L6_3
.L6_2:
    movq %r15, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L6_4
    jmp .L6_5
.L6_5:
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L6_4:
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
    jne .L6_6
    jmp .L6_7
.L6_6:
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
    jmp .L6_3
.L6_7:
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
.L6_3:
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_9
    jmp .L6_8
.L6_9:
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
.L6_10:
.L6_8:
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
    leaq .Ltext_29(%rip), %rsi
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
.L6_11:
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
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
    jne .L7_11
    jmp .L7_4
.L7_11:
    movl %r13d, %r14d
    jmp .L7_5
.L7_4:
    leaq 32(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L7_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L7_1
    jmp .L7_2
.L7_1:
    leaq .Ltext_29(%rip), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_30(%rip), %r13
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
    jmp .L7_3
.L7_2:
.L7_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L7_7
.L7_6:
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
    jne .L7_9
    jmp .L7_10
.L7_10:
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_32(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L7_9:
    jmp .L7_8
.L7_7:
.L7_8:
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
    .quad lb_fonts_module_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/fonts/module.lucb:23:13"
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
    .asciz "src/std/fonts/module.lucb:57:9"
.Ltext_7:
    .asciz "font raster scale must be finite and in 0.5..4"
.Ltext_8:
    .asciz "src/std/fonts/module.lucb:66:9"
.Ltext_9:
    .asciz "src/std/fonts/module.lucb:67:9"
.Ltext_10:
    .asciz "src/std/fonts/module.lucb:68:9"
.Ltext_11:
    .asciz "rasterized text exceeds the 4 MiB image limit"
.Ltext_12:
    .asciz "src/std/fonts/module.lucb:70:9"
.Ltext_13:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_14:
    .asciz "memory.unset"
.Ltext_15:
    .asciz "memory.exhausted"
.Ltext_16:
    .asciz "src/std/fonts/module.lucb:81:9"
.Ltext_17:
    .asciz "font operations require the UI thread"
.Ltext_18:
    .asciz "a text run supports at most 4096 UTF-8 bytes"
.Ltext_19:
    .asciz "text must be valid UTF-8"
.Ltext_20:
    .asciz "text runs cannot contain NUL, tabs or line breaks"
.Ltext_21:
    .asciz "src/std/fonts/module.lucb:107:9"
.Ltext_22:
    .asciz "src/std/fonts/module.lucb:108:9"
.Ltext_23:
    .asciz "a text run supports at most 1024 scalars"
.Ltext_24:
    .asciz "src/std/fonts/module.lucb:111:5"
.Ltext_25:
    .asciz "src/std/fonts/module.lucb:124:9"
.Ltext_26:
    .asciz "src/std/fonts/module.lucb:130:5"
.Ltext_27:
    .asciz "src/std/fonts/module.lucb:132:5"
.Ltext_28:
    .asciz "src/std/fonts/module.lucb:133:5"
.Ltext_29:
    .asciz "index out of bounds"
.Ltext_30:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_31:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_32:
    .asciz "null_foreign"
.Ltext_33:
    .asciz "integer overflow"

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_fonts_failed
    .p2align 2
lb_fonts_failed:
    .zero 4
