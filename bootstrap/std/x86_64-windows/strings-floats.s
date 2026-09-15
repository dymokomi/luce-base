    .weak lb_memory_read_0g1_f64
    .weak lb_memory_read_0g1_u64
    .weak lb_memory_read_0g1_f32
    .weak lb_memory_read_0g1_u32
    .weak lb_memory_copy_0g1_u8
    .text

    .p2align 4
    .globl lb_strings_floats_0init
lb_strings_floats_0init:
    .seh_proc lb_strings_floats_0init
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
    .globl lb_strings_9parse_f64
lb_strings_9parse_f64:
    .seh_proc lb_strings_9parse_f64
    pushq %rbp
    .seh_pushreg %rbp
    subq $608, %rsp
    .seh_stackalloc 608
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 424(%rbp)
    movq %rdi, 600(%rbp)
    .seh_savereg %rdi, 600
    movq %rsi, 592(%rbp)
    .seh_savereg %rsi, 592
    movdqu %xmm6, 576(%rbp)
    .seh_savexmm %xmm6, 576
    movdqu %xmm7, 560(%rbp)
    .seh_savexmm %xmm7, 560
    movdqu %xmm8, 544(%rbp)
    .seh_savexmm %xmm8, 544
    movdqu %xmm9, 528(%rbp)
    .seh_savexmm %xmm9, 528
    movdqu %xmm10, 512(%rbp)
    .seh_savexmm %xmm10, 512
    movdqu %xmm11, 496(%rbp)
    .seh_savexmm %xmm11, 496
    movdqu %xmm12, 480(%rbp)
    .seh_savexmm %xmm12, 480
    movdqu %xmm13, 464(%rbp)
    .seh_savexmm %xmm13, 464
    movdqu %xmm14, 448(%rbp)
    .seh_savexmm %xmm14, 448
    movdqu %xmm15, 432(%rbp)
    .seh_savexmm %xmm15, 432
    movq %rbx, 416(%rbp)
    .seh_savereg %rbx, 416
    movq %r12, 408(%rbp)
    .seh_savereg %r12, 408
    movq %r13, 400(%rbp)
    .seh_savereg %r13, 400
    movq %r14, 392(%rbp)
    .seh_savereg %r14, 392
    movq %r15, 384(%rbp)
    .seh_savereg %r15, 384
    .seh_endprologue
    movq %rcx, 624(%rbp)
    movq %rdx, 632(%rbp)
    movq %r8, 640(%rbp)
    movq %r9, 648(%rbp)
    movq 632(%rbp), %r10
    leaq 328(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 328(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_12float_syntax
    addq $48, %rsp
    leaq 326(%rbp), %r10
    movw %ax, 0(%r10)
    leaq 326(%rbp), %r13
    movq $1, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_1
    jmp .L1_2
.L1_1:
    movq %r13, %r10
    movzbl (%r10), %r12d
    jmp .L1_3
.L1_2:
    leaq 344(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_14invalid_number(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_3(%rip), %r13
    leaq 304(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $27, %rax
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
    movq 424(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 424(%rbp), %rax
    movq 600(%rbp), %rdi
    movq 592(%rbp), %rsi
    movdqu 576(%rbp), %xmm6
    movdqu 560(%rbp), %xmm7
    movdqu 544(%rbp), %xmm8
    movdqu 528(%rbp), %xmm9
    movdqu 512(%rbp), %xmm10
    movdqu 496(%rbp), %xmm11
    movdqu 480(%rbp), %xmm12
    movdqu 464(%rbp), %xmm13
    movdqu 448(%rbp), %xmm14
    movdqu 432(%rbp), %xmm15
    movq 416(%rbp), %rbx
    movq 408(%rbp), %r12
    movq 400(%rbp), %r13
    movq 392(%rbp), %r14
    movq 384(%rbp), %r15
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
.L1_4:
.L1_3:
    movzbl %r12b, %r13d
    movzbl %r13b, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L1_6
.L1_5:
    leaq 296(%rbp), %r14
    movl $1, %ecx
    cmpl %ecx, %r13d
    jne .L1_9
.L1_8:
    movabsq $9218868437227405312, %rax
    movq %rax, %r12
    jmp .L1_10
.L1_9:
    movabsq $9221120237041090560, %rax
    movq %rax, %r12
.L1_10:
    movq %r14, %r10
    movq %r12, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $0, %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $45, %ecx
    cmpl %ecx, %r13d
    jne .L1_12
.L1_11:
    movabsq $-9223372036854775808, %rcx
    movq %r12, %rbx
    orq %rcx, %rbx
    movq %r14, %r10
    movq %rbx, (%r10)
    jmp .L1_13
.L1_12:
.L1_13:
    leaq 104(%rbp), %r10
    movq %r14, (%r10)
    leaq 96(%rbp), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq $8, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L1_33
    jmp .L1_34
.L1_34:
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_33:
    movq %rbx, %r10
    movsd (%r10), %xmm12
    jmp .L1_36
.L1_35:
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_36:
    leaq 344(%rbp), %rbx
    movq %rbx, %r10
    movsd %xmm12, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 424(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 424(%rbp), %rax
    movq 600(%rbp), %rdi
    movq 592(%rbp), %rsi
    movdqu 576(%rbp), %xmm6
    movdqu 560(%rbp), %xmm7
    movdqu 544(%rbp), %xmm8
    movdqu 528(%rbp), %xmm9
    movdqu 512(%rbp), %xmm10
    movdqu 496(%rbp), %xmm11
    movdqu 480(%rbp), %xmm12
    movdqu 464(%rbp), %xmm13
    movdqu 448(%rbp), %xmm14
    movdqu 432(%rbp), %xmm15
    movq 416(%rbp), %rbx
    movq 408(%rbp), %r12
    movq 400(%rbp), %r13
    movq 392(%rbp), %r14
    movq 384(%rbp), %r15
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
.L1_14:
    jmp .L1_7
.L1_6:
.L1_7:
    leaq 288(%rbp), %r13
    subq $32, %rsp
    leaq 248(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_NumericLocale_create
    addq $32, %rsp
    leaq 248(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_16
    jmp .L1_15
.L1_16:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 344(%rbp), %r12
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
    movq 424(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 424(%rbp), %rax
    movq 600(%rbp), %rdi
    movq 592(%rbp), %rsi
    movdqu 576(%rbp), %xmm6
    movdqu 560(%rbp), %xmm7
    movdqu 544(%rbp), %xmm8
    movdqu 528(%rbp), %xmm9
    movdqu 512(%rbp), %xmm10
    movdqu 496(%rbp), %xmm11
    movdqu 480(%rbp), %xmm12
    movdqu 464(%rbp), %xmm13
    movdqu 448(%rbp), %xmm14
    movdqu 432(%rbp), %xmm15
    movq 416(%rbp), %rbx
    movq 408(%rbp), %r12
    movq 400(%rbp), %r13
    movq 392(%rbp), %r14
    movq 384(%rbp), %r15
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
.L1_17:
.L1_15:
    movq %r14, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq 232(%rbp), %rax
    movq %rax, 16(%rbp)
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 184(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_copy
    addq $48, %rsp
    leaq 184(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_19
    jmp .L1_18
.L1_19:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 344(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
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
    movq %r13, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L1_40
    jmp .L1_38
.L1_40:
.L1_37:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _free_locale
    addq $32, %rsp
    jmp .L1_39
.L1_38:
.L1_39:
.L1_41:
    movq %r12, %rsi
    movq 424(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 424(%rbp), %rax
    movq 600(%rbp), %rdi
    movq 592(%rbp), %rsi
    movdqu 576(%rbp), %xmm6
    movdqu 560(%rbp), %xmm7
    movdqu 544(%rbp), %xmm8
    movdqu 528(%rbp), %xmm9
    movdqu 512(%rbp), %xmm10
    movdqu 496(%rbp), %xmm11
    movdqu 480(%rbp), %xmm12
    movdqu 464(%rbp), %xmm13
    movdqu 448(%rbp), %xmm14
    movdqu 432(%rbp), %xmm15
    movq 416(%rbp), %rbx
    movq 408(%rbp), %r12
    movq 400(%rbp), %r13
    movq 392(%rbp), %r14
    movq 384(%rbp), %r15
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
.L1_20:
.L1_18:
    movq %r15, %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 176(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movl $0, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_c_9set_errno
    addq $32, %rsp
    leaq 168(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 16(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_NumericLocale_handle
    addq $32, %rsp
    movq %rax, %r14
    leaq 80(%rbp), %r10
    movq %r12, (%r10)
    leaq 64(%rbp), %r10
    movq %rbx, (%r10)
    leaq 48(%rbp), %r10
    movq %r14, (%r10)
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
    call _strtod_l
    addq $32, %rsp
    movapd %xmm0, %xmm12
    jmp .L1_43
.L1_42:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_43:
    movq 8(%rbp), %r10
    movsd %xmm12, (%r10)
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %r10
    movq (%r10), %r14
    subq $48, %rsp
    movq 16(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movl %r12d, %eax
    movq %rax, 24(%rsp)
    leaq 136(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_strings_22check_float_conversion
    addq $48, %rsp
    leaq 136(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L1_22
    jmp .L1_21
.L1_22:
    leaq 344(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r15, %r10
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
    subq $48, %rsp
    movq 16(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    movq %r13, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L1_47
    jmp .L1_45
.L1_47:
.L1_44:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _free_locale
    addq $32, %rsp
    jmp .L1_46
.L1_45:
.L1_46:
.L1_48:
    movq %rbx, %rsi
    movq 424(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 424(%rbp), %rax
    movq 600(%rbp), %rdi
    movq 592(%rbp), %rsi
    movdqu 576(%rbp), %xmm6
    movdqu 560(%rbp), %xmm7
    movdqu 544(%rbp), %xmm8
    movdqu 528(%rbp), %xmm9
    movdqu 512(%rbp), %xmm10
    movdqu 496(%rbp), %xmm11
    movdqu 480(%rbp), %xmm12
    movdqu 464(%rbp), %xmm13
    movdqu 448(%rbp), %xmm14
    movdqu 432(%rbp), %xmm15
    movq 416(%rbp), %rbx
    movq 408(%rbp), %r12
    movq 400(%rbp), %r13
    movq 392(%rbp), %r14
    movq 384(%rbp), %r15
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
.L1_23:
.L1_21:
    movq 8(%rbp), %rax
    leaq 32(%rbp), %r10
    movq %rax, (%r10)
    leaq 24(%rbp), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 8(%rbp), %rax
    movq %rax, 8(%rsp)
    movq $8, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L1_49
    jmp .L1_50
.L1_50:
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_49:
    movq %rbx, %r10
    movq (%r10), %r14
    jmp .L1_52
.L1_51:
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L1_52:
    movabsq $9223372036854775807, %rcx
    movq %r14, %rbx
    andq %rcx, %rbx
    movabsq $9218868437227405312, %rcx
    cmpq %rcx, %rbx
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L1_68
    jmp .L1_27
.L1_68:
    movl %r15d, %ebx
    jmp .L1_28
.L1_27:
    movl $34, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_29
    jmp .L1_69
.L1_69:
    movl %r14d, %ebx
    jmp .L1_30
.L1_29:
    movabsq $4607182418800017408, %rcx
    cmpq %rcx, %rbx
    setae %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L1_30:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L1_28:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L1_24
    jmp .L1_25
.L1_24:
    leaq 344(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_19number_out_of_range(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_5(%rip), %r14
    leaq 120(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $35, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $48, %rsp
    movq 16(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    movq %r13, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L1_56
    jmp .L1_54
.L1_56:
.L1_53:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _free_locale
    addq $32, %rsp
    jmp .L1_55
.L1_54:
.L1_55:
.L1_57:
    movq %rbx, %rsi
    movq 424(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 424(%rbp), %rax
    movq 600(%rbp), %rdi
    movq 592(%rbp), %rsi
    movdqu 576(%rbp), %xmm6
    movdqu 560(%rbp), %xmm7
    movdqu 544(%rbp), %xmm8
    movdqu 528(%rbp), %xmm9
    movdqu 512(%rbp), %xmm10
    movdqu 496(%rbp), %xmm11
    movdqu 480(%rbp), %xmm12
    movdqu 464(%rbp), %xmm13
    movdqu 448(%rbp), %xmm14
    movdqu 432(%rbp), %xmm15
    movq 416(%rbp), %rbx
    movq 408(%rbp), %r12
    movq 400(%rbp), %r13
    movq 392(%rbp), %r14
    movq 384(%rbp), %r15
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
.L1_31:
    jmp .L1_26
.L1_25:
.L1_26:
    movq 8(%rbp), %r10
    movsd (%r10), %xmm12
    leaq 344(%rbp), %rbx
    movq %rbx, %r10
    movsd %xmm12, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $48, %rsp
    movq 16(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    movq %r13, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L1_61
    jmp .L1_59
.L1_61:
.L1_58:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _free_locale
    addq $32, %rsp
    jmp .L1_60
.L1_59:
.L1_60:
.L1_62:
    movq %rbx, %rsi
    movq 424(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 424(%rbp), %rax
    movq 600(%rbp), %rdi
    movq 592(%rbp), %rsi
    movdqu 576(%rbp), %xmm6
    movdqu 560(%rbp), %xmm7
    movdqu 544(%rbp), %xmm8
    movdqu 528(%rbp), %xmm9
    movdqu 512(%rbp), %xmm10
    movdqu 496(%rbp), %xmm11
    movdqu 480(%rbp), %xmm12
    movdqu 464(%rbp), %xmm13
    movdqu 448(%rbp), %xmm14
    movdqu 432(%rbp), %xmm15
    movq 416(%rbp), %rbx
    movq 408(%rbp), %r12
    movq 400(%rbp), %r13
    movq 392(%rbp), %r14
    movq 384(%rbp), %r15
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
.L1_32:
    leaq 232(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    leaq 288(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L1_66
    jmp .L1_64
.L1_66:
    movq %rbx, %r12
.L1_63:
    movq %rbx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _free_locale
    addq $32, %rsp
    jmp .L1_65
.L1_64:
.L1_65:
.L1_67:
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
    .globl lb_strings_9parse_f32
lb_strings_9parse_f32:
    .seh_proc lb_strings_9parse_f32
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
    movq 648(%rbp), %r10
    leaq 344(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 344(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_12float_syntax
    addq $48, %rsp
    leaq 342(%rbp), %r10
    movw %ax, 0(%r10)
    leaq 342(%rbp), %r13
    movq $1, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_1
    jmp .L2_2
.L2_1:
    movq %r13, %r10
    movzbl (%r10), %r12d
    jmp .L2_3
.L2_2:
    leaq 360(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_14invalid_number(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_3(%rip), %r13
    leaq 320(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $27, %rax
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
    movq 440(%rbp), %rdi
    movq $40, %rdx
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
.L2_4:
.L2_3:
    movzbl %r12b, %r13d
    movzbl %r13b, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L2_6
.L2_5:
    leaq 316(%rbp), %r14
    movl $1, %ecx
    cmpl %ecx, %r13d
    jne .L2_9
.L2_8:
    movl $2139095040, %eax
    movl %eax, %r12d
    jmp .L2_10
.L2_9:
    movl $2143289344, %eax
    movl %eax, %r12d
.L2_10:
    movq %r14, %r10
    movl %r12d, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $0, %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $45, %ecx
    cmpl %ecx, %r13d
    jne .L2_12
.L2_11:
    movl $2147483648, %ecx
    movl %r12d, %ebx
    orl %ecx, %ebx
    movq %r14, %r10
    movl %ebx, (%r10)
    jmp .L2_13
.L2_12:
.L2_13:
    leaq 120(%rbp), %r10
    movq %r14, (%r10)
    leaq 116(%rbp), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq $4, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L2_33
    jmp .L2_34
.L2_34:
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_33:
    movq %rbx, %r10
    movss (%r10), %xmm12
    leaq 104(%rbp), %r10
    movss %xmm12, (%r10)
    jmp .L2_36
.L2_35:
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_36:
    leaq 360(%rbp), %rbx
    movq %rbx, %r10
    movss %xmm12, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 440(%rbp), %rdi
    movq $40, %rdx
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
.L2_14:
    jmp .L2_7
.L2_6:
.L2_7:
    leaq 304(%rbp), %r13
    subq $32, %rsp
    leaq 264(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_NumericLocale_create
    addq $32, %rsp
    leaq 264(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_16
    jmp .L2_15
.L2_16:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 360(%rbp), %r12
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
    movq 440(%rbp), %rdi
    movq $40, %rdx
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
.L2_17:
.L2_15:
    movq %r14, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq 248(%rbp), %rax
    movq %rax, 8(%rbp)
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 200(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_copy
    addq $48, %rsp
    leaq 200(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_19
    jmp .L2_18
.L2_19:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 360(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
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
    movq %r13, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L2_40
    jmp .L2_38
.L2_40:
.L2_37:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _free_locale
    addq $32, %rsp
    jmp .L2_39
.L2_38:
.L2_39:
.L2_41:
    movq %r12, %rsi
    movq 440(%rbp), %rdi
    movq $40, %rdx
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
.L2_20:
.L2_18:
    movq %r15, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 192(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movl $0, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_c_9set_errno
    addq $32, %rsp
    leaq 188(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 8(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_NumericLocale_handle
    addq $32, %rsp
    movq %rax, %r14
    leaq 88(%rbp), %r10
    movq %r12, (%r10)
    leaq 72(%rbp), %r10
    movq %rbx, (%r10)
    leaq 56(%rbp), %r10
    movq %r14, (%r10)
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
    call _strtof_l
    addq $32, %rsp
    movaps %xmm0, %xmm12
    leaq 48(%rbp), %r10
    movss %xmm12, (%r10)
    jmp .L2_43
.L2_42:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_43:
    movq 0(%rbp), %r10
    movss %xmm12, (%r10)
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %r12d
    movq %rbx, %r10
    movq (%r10), %r14
    subq $48, %rsp
    movq 8(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movl %r12d, %eax
    movq %rax, 24(%rsp)
    leaq 152(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_strings_22check_float_conversion
    addq $48, %rsp
    leaq 152(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L2_22
    jmp .L2_21
.L2_22:
    leaq 360(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r15, %r10
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
    movq %r13, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L2_47
    jmp .L2_45
.L2_47:
.L2_44:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _free_locale
    addq $32, %rsp
    jmp .L2_46
.L2_45:
.L2_46:
.L2_48:
    movq %rbx, %rsi
    movq 440(%rbp), %rdi
    movq $40, %rdx
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
.L2_23:
.L2_21:
    movq 0(%rbp), %rax
    leaq 32(%rbp), %r10
    movq %rax, (%r10)
    leaq 28(%rbp), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rbp), %rax
    movq %rax, 8(%rsp)
    movq $4, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L2_49
    jmp .L2_50
.L2_50:
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_49:
    movq %rbx, %r10
    movl (%r10), %r14d
    leaq 16(%rbp), %r10
    movl %r14d, (%r10)
    jmp .L2_52
.L2_51:
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_52:
    movl $2147483647, %ecx
    movl %r14d, %ebx
    andl %ecx, %ebx
    movl $2139095040, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L2_68
    jmp .L2_27
.L2_68:
    movl %r15d, %ebx
    jmp .L2_28
.L2_27:
    movl $34, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L2_29
    jmp .L2_69
.L2_69:
    movl %r14d, %ebx
    jmp .L2_30
.L2_29:
    movl $1065353216, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L2_30:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L2_28:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L2_24
    jmp .L2_25
.L2_24:
    leaq 360(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_19number_out_of_range(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_8(%rip), %r14
    leaq 136(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $35, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
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
    movq %r13, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L2_56
    jmp .L2_54
.L2_56:
.L2_53:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _free_locale
    addq $32, %rsp
    jmp .L2_55
.L2_54:
.L2_55:
.L2_57:
    movq %rbx, %rsi
    movq 440(%rbp), %rdi
    movq $40, %rdx
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
.L2_31:
    jmp .L2_26
.L2_25:
.L2_26:
    movq 0(%rbp), %r10
    movss (%r10), %xmm12
    leaq 360(%rbp), %rbx
    movq %rbx, %r10
    movss %xmm12, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
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
    movq %r13, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L2_61
    jmp .L2_59
.L2_61:
.L2_58:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _free_locale
    addq $32, %rsp
    jmp .L2_60
.L2_59:
.L2_60:
.L2_62:
    movq %rbx, %rsi
    movq 440(%rbp), %rdi
    movq $40, %rdx
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
.L2_32:
    leaq 248(%rbp), %rbx
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_release
    addq $48, %rsp
    leaq 304(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L2_66
    jmp .L2_64
.L2_66:
    movq %rbx, %r12
.L2_63:
    movq %rbx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _free_locale
    addq $32, %rsp
    jmp .L2_65
.L2_64:
.L2_65:
.L2_67:
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
    .globl lb_strings_10format_f64
lb_strings_10format_f64:
    .seh_proc lb_strings_10format_f64
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
    .seh_endprologue
    movq %rcx, 368(%rbp)
    movq %rdx, 376(%rbp)
    movq %r8, 384(%rbp)
    movq %r9, 392(%rbp)
    movsd %xmm1, 376(%rbp)
    movq 376(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 384(%rbp), %r10
    leaq 56(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 72(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    leaq 56(%rbp), %rbx
    subq $48, %rsp
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 8(%rsp)
    movl $17, %eax
    movq %rax, 16(%rsp)
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 24(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %rdx, %xmm1
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_strings_12format_float
    addq $48, %rsp
    leaq 8(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_2
    jmp .L3_1
.L3_2:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 88(%rbp), %r13
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
    movq 168(%rbp), %rdi
    movq $48, %rdx
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
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L3_3:
.L3_1:
    leaq 88(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 168(%rbp), %rdi
    movq $48, %rdx
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
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L3_4:
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_10format_f32
lb_strings_10format_f32:
    .seh_proc lb_strings_10format_f32
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
    .seh_endprologue
    movq %rcx, 368(%rbp)
    movq %rdx, 376(%rbp)
    movq %r8, 384(%rbp)
    movq %r9, 392(%rbp)
    movsd %xmm1, 376(%rbp)
    movq 376(%rbp), %rax
    movl %eax, 72(%rbp)
    movq 384(%rbp), %r10
    leaq 56(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 72(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    cvtss2sd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    leaq 56(%rbp), %rbx
    subq $48, %rsp
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 8(%rsp)
    movl $9, %eax
    movq %rax, 16(%rsp)
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 24(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq %rdx, %xmm1
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_strings_12format_float
    addq $48, %rsp
    leaq 8(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_2
    jmp .L4_1
.L4_2:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 88(%rbp), %r13
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
    movq 168(%rbp), %rdi
    movq $48, %rdx
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
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L4_3:
.L4_1:
    leaq 88(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 168(%rbp), %rdi
    movq $48, %rdx
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
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L4_4:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_NumericLocale_create
lb_strings_NumericLocale_create:
    .seh_proc lb_strings_NumericLocale_create
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
    movq %r15, 64(%rbp)
    .seh_savereg %r15, 64
    .seh_endprologue
    movq %rcx, 304(%rbp)
    movq %rdx, 312(%rbp)
    movq %r8, 320(%rbp)
    movq %r9, 328(%rbp)
    leaq .Ltext_12(%rip), %rbx
    subq $32, %rsp
    movl $4, %eax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call _create_locale
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L5_1
    jmp .L5_2
.L5_1:
    jmp .L5_3
.L5_2:
    leaq 24(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    subq $32, %rsp
    call lb_c_errno
    addq $32, %rsp
    movl %eax, %r12d
    movl $12, %ecx
    cmpl %ecx, %r12d
    jne .L5_5
.L5_4:
    leaq lb_memory_exhausted(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    jmp .L5_6
.L5_5:
    leaq lb_strings_17conversion_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
.L5_6:
    movq %r13, %r10
    movl %r12d, (%r10)
    leaq .Ltext_13(%rip), %r14
    leaq 8(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $41, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
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
    movq 64(%rbp), %r15
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L5_7:
.L5_3:
    leaq 0(%rbp), %r12
    movq %r12, %r11
    movq $0, 0(%r11)
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq 24(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %rsi
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
    movq 64(%rbp), %r15
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L5_8:
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
    .globl lb_strings_NumericLocale_handle
lb_strings_NumericLocale_handle:
    .seh_proc lb_strings_NumericLocale_handle
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
    movq %rax, 24(%rbp)
    leaq 24(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L6_1
    jmp .L6_2
.L6_1:
    jmp .L6_3
.L6_2:
    leaq .Ltext_15(%rip), %rbx
    leaq 8(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $28, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_16(%rip), %rbx
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
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L6_3:
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
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L6_4:
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_12format_float
lb_strings_12format_float:
    .seh_proc lb_strings_12format_float
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
    movsd %xmm1, 760(%rbp)
    movq 760(%rbp), %rax
    movq %rax, 448(%rbp)
    movq 768(%rbp), %rax
    movl %eax, 432(%rbp)
    movq 776(%rbp), %r10
    leaq 416(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 448(%rbp), %rbx
    leaq 64(%rbp), %r10
    movq %rbx, (%r10)
    leaq 56(%rbp), %rax
    movq %rax, 24(%rbp)
    subq $32, %rsp
    movq 24(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq $8, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L7_35
    jmp .L7_36
.L7_36:
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L7_35:
    movq 24(%rbp), %r10
    movq (%r10), %r13
.L7_38:
    movabsq $9223372036854775807, %rcx
    movq %r13, %r14
    andq %rcx, %r14
    movabsq $9218868437227405312, %rcx
    cmpq %rcx, %r14
    jb .L7_2
.L7_1:
    leaq 400(%rbp), %r12
    movabsq $9218868437227405312, %rcx
    cmpq %rcx, %r14
    jbe .L7_5
.L7_4:
    leaq .Ltext_17(%rip), %rbx
    leaq 368(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $3, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 384(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $3, %rax
    movq %rax, %rbx
    jmp .L7_6
.L7_5:
.L7_11:
    movq $63, %rcx
    movq %r13, %rbx
    shrq %cl, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L7_8
.L7_7:
    leaq .Ltext_20(%rip), %rbx
    leaq 336(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $4, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 352(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $4, %rax
    movq %rax, %rbx
    jmp .L7_9
.L7_8:
    leaq .Ltext_21(%rip), %rbx
    leaq 320(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $3, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 352(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $3, %rax
    movq %rax, %rbx
.L7_9:
    leaq 352(%rbp), %r13
    leaq 384(%rbp), %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L7_6:
    leaq 384(%rbp), %r13
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 416(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    cmpq %rbx, %r15
    jae .L7_13
.L7_12:
    leaq 464(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_full(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_22(%rip), %r13
    leaq 304(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $62, %rax
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
.L7_13:
.L7_14:
    subq $64, %rsp
    movq %r13, %r10
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
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_memory_copy_0g1_u8
    addq $64, %rsp
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    movq %r14, %r10
    movq (%r10), %r15
    movq 48(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 0(%rbp)
    movq $1, %rcx
    addq %rcx, %r15
    movq $0, %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 0(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
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
    jbe .L7_16
.L7_17:
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L7_16:
    leaq 288(%rbp), %rbx
    movq 8(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq 0(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 272(%rbp), %rbx
    movq 8(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 0(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 464(%rbp), %r12
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
.L7_2:
.L7_3:
    leaq 264(%rbp), %r14
    subq $32, %rsp
    leaq 224(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_NumericLocale_create
    addq $32, %rsp
    leaq 224(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L7_20
    jmp .L7_19
.L7_20:
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 464(%rbp), %r12
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
.L7_19:
    movq %r15, %r10
    movq %r14, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq 192(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    leaq 176(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 160(%rbp), %r12
    leaq 432(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movslq %r13d, %r13
    movq %r12, %r10
    movq %r13, (%r10)
    leaq 64(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq 24(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq $8, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L7_39
    jmp .L7_40
.L7_40:
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L7_39:
    movq 24(%rbp), %r10
    movq (%r10), %rbx
.L7_42:
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movq 16(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_26(%rip), %r13
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_strings_NumericLocale_handle
    addq $32, %rsp
    movq %rax, %r15
    subq $48, %rsp
    movq $2, %rax
    movq %rax, 0(%rsp)
    movq 40(%rbp), %rax
    movq %rax, 8(%rsp)
    movq $32, %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq %r15, %rax
    movq %rax, 32(%rsp)
    movq 16(%rbp), %rax
    movq %rax, 40(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call __stdio_common_vsprintf
    addq $48, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    setl %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L7_63
    jmp .L7_25
.L7_63:
    movl %r15d, %ebx
    jmp .L7_26
.L7_25:
    movslq %r13d, %rbx
    movq $32, %rcx
    cmpq %rcx, %rbx
    setae %al
    movzbl %al, %ebx
.L7_26:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L7_22
    jmp .L7_23
.L7_22:
    leaq 464(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_17conversion_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_27(%rip), %r13
    leaq 144(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $32, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r14, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L7_46
    jmp .L7_44
.L7_46:
.L7_43:
    movq $0, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _free_locale
    addq $32, %rsp
    jmp .L7_45
.L7_44:
.L7_45:
.L7_47:
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
.L7_23:
.L7_24:
    leaq 416(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r10
    movq (%r10), %r15
    movslq %r13d, %r12
    cmpq %r12, %r15
    jae .L7_29
.L7_28:
    leaq 464(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_full(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_22(%rip), %r13
    leaq 128(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $62, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r14, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L7_51
    jmp .L7_49
.L7_51:
.L7_48:
    movq $0, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _free_locale
    addq $32, %rsp
    jmp .L7_50
.L7_49:
.L7_50:
.L7_52:
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
.L7_29:
.L7_30:
    leaq 112(%rbp), %r13
    movq 40(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $32, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r13, %r10
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
    movq %rbx, %r10
    movq (%r10), %r15
    movq 32(%rbp), %r10
    movq (%r10), %r13
    movq $1, %rcx
    addq %rcx, %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $0, %rax
    cmpq %r12, %rax
    jbe .L7_32
.L7_33:
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L7_32:
    leaq 96(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq 80(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq 464(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r14, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L7_56
    jmp .L7_54
.L7_56:
.L7_53:
    movq $0, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call _free_locale
    addq $32, %rsp
    jmp .L7_55
.L7_54:
.L7_55:
.L7_57:
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
    .seh_endproc

    .p2align 4
    .globl lb_strings_22check_float_conversion
lb_strings_22check_float_conversion:
    .seh_proc lb_strings_22check_float_conversion
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
    .seh_endprologue
    movq %rcx, 368(%rbp)
    movq %rdx, 376(%rbp)
    movq %r8, 384(%rbp)
    movq %r9, 392(%rbp)
    movq 376(%rbp), %r10
    leaq 96(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 384(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 392(%rbp), %rax
    movl %eax, 64(%rbp)
    leaq 64(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $12, %ecx
    cmpl %ecx, %ebx
    jne .L8_2
.L8_1:
    leaq 112(%rbp), %rbx
    leaq lb_memory_exhausted(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_31(%rip), %r12
    leaq 48(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $43, %rax
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
    movq 168(%rbp), %rdi
    movq $32, %rdx
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
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L8_4:
    jmp .L8_3
.L8_2:
.L8_3:
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L8_8
    jmp .L8_19
.L8_19:
    movl %r12d, %ebx
    jmp .L8_9
.L8_8:
    movl $34, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L8_9:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L8_5
    jmp .L8_6
.L8_5:
    leaq 112(%rbp), %rbx
    leaq lb_strings_17conversion_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_32(%rip), %r12
    leaq 32(%rbp), %r13
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
    movq %rbx, %rsi
    movq 168(%rbp), %rdi
    movq $32, %rdx
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
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L8_10:
    jmp .L8_7
.L8_6:
.L8_7:
    leaq 80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L8_11
    jmp .L8_12
.L8_11:
    jmp .L8_13
.L8_12:
    leaq 112(%rbp), %rbx
    leaq lb_strings_14invalid_number(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_33(%rip), %r12
    leaq 16(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $55, %rax
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
    movq 168(%rbp), %rdi
    movq $32, %rdx
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
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L8_14:
.L8_13:
    leaq 96(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    cmpq %rbx, %r12
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L8_16
.L8_15:
    leaq 112(%rbp), %rbx
    leaq lb_strings_14invalid_number(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_35(%rip), %r12
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $51, %rax
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
    movq 168(%rbp), %rdi
    movq $32, %rdx
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
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L8_18:
    jmp .L8_17
.L8_16:
.L8_17:
    leaq 112(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 168(%rbp), %rdi
    movq $32, %rdx
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
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_strings_12float_syntax
lb_strings_12float_syntax:
    .seh_proc lb_strings_12float_syntax
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
    movq 496(%rbp), %r10
    leaq 240(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 240(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L9_2
.L9_1:
    leaq 238(%rbp), %rbx
    movq %rbx, %r11
    movw $0, 0(%r11)
    leaq 262(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
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
.L9_4:
    jmp .L9_3
.L9_2:
.L9_3:
    movq %rbx, %r10
    movq (%r10), %r13
    movq $0, %rax
    movq 64(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %r13, %r10
    movzbl (%r10), %r14d
    movl $43, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L9_84
    jmp .L9_8
.L9_84:
    movl %r14d, %ebx
    jmp .L9_9
.L9_8:
    movq %r13, %r10
    movzbl (%r10), %ebx
    movl $45, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L9_9:
    movzbl %bl, %r14d
    testl %r14d, %r14d
    jne .L9_5
    jmp .L9_6
.L9_5:
    movq $1, %rax
    movq %rax, %rbx
    jmp .L9_7
.L9_6:
    movq $0, %rax
    movq %rax, %rbx
.L9_7:
    movq 64(%rbp), %rax
    cmpq %rbx, %rax
    jne .L9_11
.L9_10:
    leaq 236(%rbp), %rbx
    movq %rbx, %r11
    movw $0, 0(%r11)
    leaq 262(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
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
.L9_13:
    jmp .L9_12
.L9_11:
.L9_12:
    leaq 216(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 64(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 64(%rbp), %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 64(%rbp), %rcx
    cmpq %rcx, %rbx
    jbe .L9_14
.L9_15:
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L9_14:
    movq %r13, %r14
    addq %rbx, %r14
    movq 64(%rbp), %rax
    subq %rbx, %rax
    movq %rax, 56(%rbp)
    leaq 200(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq 56(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq 184(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq 56(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r15, %r10
    movq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_21(%rip), %r14
    leaq 168(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $3, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq 40(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r15, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_10ascii_word
    addq $64, %rsp
    movl %eax, %r14d
    testl %r14d, %r14d
    jne .L9_85
    jmp .L9_19
.L9_85:
    movl %r14d, %r15d
    jmp .L9_20
.L9_19:
    leaq .Ltext_38(%rip), %r14
    leaq 152(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $8, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq 40(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r15, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_10ascii_word
    addq $64, %rsp
    movl %eax, %r15d
.L9_20:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L9_16
    jmp .L9_17
.L9_16:
    leaq 150(%rbp), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 262(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
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
.L9_21:
    jmp .L9_18
.L9_17:
.L9_18:
    leaq .Ltext_17(%rip), %r14
    leaq 128(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $3, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    subq $64, %rsp
    movq 40(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq %r15, %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_strings_10ascii_word
    addq $64, %rsp
    movl %eax, %r14d
    testl %r14d, %r14d
    jne .L9_22
    jmp .L9_23
.L9_22:
    leaq 126(%rbp), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 262(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
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
.L9_25:
    jmp .L9_24
.L9_23:
.L9_24:
    leaq 96(%rbp), %r14
    movq %rbx, %r15
    movq $0, %rax
    movq %rax, 32(%rbp)
.L9_26:
    movq 64(%rbp), %rcx
    cmpq %rcx, %r15
    setb %al
    movzbl %al, %eax
    movl %eax, 48(%rbp)
    movl 48(%rbp), %eax
    testl %eax, %eax
    jne .L9_29
    jmp .L9_86
.L9_86:
    movl 48(%rbp), %eax
    movl %eax, %r12d
    jmp .L9_30
.L9_29:
    movq %r13, %r12
    addq %r15, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 96(%rbp), %r10
    movl %r12d, (%r10)
    movq %r14, %r10
    movzbl (%r10), %r12d
    movl $48, %ecx
    cmpl %ecx, %r12d
    setae %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L9_72
    jmp .L9_87
.L9_87:
    movl %ebx, %r12d
    jmp .L9_73
.L9_72:
    movl $57, %ecx
    cmpl %ecx, %r12d
    setbe %al
    movzbl %al, %ebx
    movl %ebx, %r12d
.L9_73:
    movzbl %r12b, %ebx
    movzbl %bl, %ebx
    leaq 88(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L9_75
.L9_74:
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L9_75:
    movl %ebx, %r12d
.L9_30:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L9_27
    jmp .L9_28
.L9_27:
    movq 32(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %r12, %r15
    movq %rbx, %rax
    movq %rax, 32(%rbp)
    jmp .L9_26
.L9_28:
    movl 48(%rbp), %eax
    testl %eax, %eax
    jne .L9_34
    jmp .L9_88
.L9_88:
    movl 48(%rbp), %eax
    movl %eax, %ebx
    jmp .L9_35
.L9_34:
    movq %r13, %rbx
    addq %r15, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $46, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L9_35:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L9_31
    jmp .L9_32
.L9_31:
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    leaq 96(%rbp), %r12
    movq 32(%rbp), %rax
    movq %rax, 24(%rbp)
.L9_36:
    movq 64(%rbp), %rcx
    cmpq %rcx, %rbx
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L9_39
    jmp .L9_89
.L9_89:
    movl %r15d, %r14d
    jmp .L9_40
.L9_39:
    movq %r13, %r14
    addq %rbx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    leaq 96(%rbp), %r10
    movl %r14d, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r14d
    movl $48, %ecx
    cmpl %ecx, %r14d
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L9_76
    jmp .L9_90
.L9_90:
    movl %r15d, %r14d
    jmp .L9_77
.L9_76:
    movl $57, %ecx
    cmpl %ecx, %r14d
    setbe %al
    movzbl %al, %r15d
    movl %r15d, %r14d
.L9_77:
    movzbl %r14b, %r15d
    movzbl %r15b, %r15d
    leaq 80(%rbp), %r10
    movl %r15d, (%r10)
    jmp .L9_79
.L9_78:
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L9_79:
    movl %r15d, %r14d
.L9_40:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L9_37
    jmp .L9_38
.L9_37:
    movq 24(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    movq %r15, %rbx
    movq %r14, %rax
    movq %rax, 24(%rbp)
    jmp .L9_36
.L9_38:
    movq %rbx, %rax
    movq %rax, 16(%rbp)
    movq 24(%rbp), %rax
    movq %rax, %r14
    jmp .L9_33
.L9_32:
    movq %r15, %rax
    movq %rax, 16(%rbp)
    movq 32(%rbp), %rax
    movq %rax, %r14
.L9_33:
    movq $0, %rcx
    cmpq %rcx, %r14
    jne .L9_42
.L9_41:
    leaq 124(%rbp), %rbx
    movq %rbx, %r11
    movw $0, 0(%r11)
    leaq 262(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
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
.L9_44:
    jmp .L9_43
.L9_42:
.L9_43:
    movq 16(%rbp), %rax
    movq 64(%rbp), %rcx
    cmpq %rcx, %rax
    setb %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L9_48
    jmp .L9_91
.L9_91:
    movl %ebx, %r14d
    jmp .L9_49
.L9_48:
    movq 16(%rbp), %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %r14d
    movl $101, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L9_92
    jmp .L9_50
.L9_92:
    movl %r14d, %ebx
    jmp .L9_51
.L9_50:
    movq %rbx, %r10
    movzbl (%r10), %r14d
    movl $69, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %ebx
.L9_51:
    movzbl %bl, %r14d
.L9_49:
    movzbl %r14b, %ebx
    testl %ebx, %ebx
    jne .L9_45
    jmp .L9_46
.L9_45:
    movq 16(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 64(%rbp), %rcx
    cmpq %rcx, %rbx
    setb %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L9_55
    jmp .L9_93
.L9_93:
    movl %r14d, %r12d
    jmp .L9_56
.L9_55:
    movq %r13, %r12
    addq %rbx, %r12
    movq %r12, %r10
    movzbl (%r10), %r14d
    movl $43, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L9_94
    jmp .L9_57
.L9_94:
    movl %r14d, %r12d
    jmp .L9_58
.L9_57:
    movq %r12, %r10
    movzbl (%r10), %r14d
    movl $45, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r12d
.L9_58:
    movzbl %r12b, %r14d
    movl %r14d, %r12d
.L9_56:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L9_52
    jmp .L9_53
.L9_52:
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %r12, %rax
    movq %rax, 8(%rbp)
    jmp .L9_54
.L9_53:
    movq %rbx, %rax
    movq %rax, 8(%rbp)
.L9_54:
    leaq 96(%rbp), %rbx
    movq 8(%rbp), %rax
    movq %rax, %r14
.L9_59:
    movq 64(%rbp), %rcx
    cmpq %rcx, %r14
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L9_62
    jmp .L9_95
.L9_95:
    movl %r15d, %r12d
    jmp .L9_63
.L9_62:
    movq %r13, %r12
    addq %r14, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 96(%rbp), %r10
    movl %r12d, (%r10)
    movq %rbx, %r10
    movzbl (%r10), %r12d
    movl $48, %ecx
    cmpl %ecx, %r12d
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L9_80
    jmp .L9_96
.L9_96:
    movl %r15d, %r12d
    jmp .L9_81
.L9_80:
    movl $57, %ecx
    cmpl %ecx, %r12d
    setbe %al
    movzbl %al, %r15d
    movl %r15d, %r12d
.L9_81:
    movzbl %r12b, %r15d
    movzbl %r15b, %r15d
    leaq 72(%rbp), %r10
    movl %r15d, (%r10)
    jmp .L9_83
.L9_82:
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L9_83:
    movl %r15d, %r12d
.L9_63:
    movzbl %r12b, %r15d
    testl %r15d, %r15d
    jne .L9_60
    jmp .L9_61
.L9_60:
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
    movq %r12, %r14
    jmp .L9_59
.L9_61:
    movq 8(%rbp), %rax
    cmpq %r14, %rax
    jne .L9_65
.L9_64:
    leaq 122(%rbp), %rbx
    movq %rbx, %r11
    movw $0, 0(%r11)
    leaq 262(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
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
.L9_67:
    jmp .L9_66
.L9_65:
.L9_66:
    movq %r14, %rbx
    jmp .L9_47
.L9_46:
    movq 16(%rbp), %rax
    movq %rax, %rbx
.L9_47:
    movq 64(%rbp), %rax
    cmpq %rbx, %rax
    jne .L9_69
.L9_68:
    leaq 118(%rbp), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 120(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    jmp .L9_70
.L9_69:
    leaq 116(%rbp), %rbx
    movq %rbx, %r11
    movw $0, 0(%r11)
    leaq 120(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
.L9_70:
    leaq 120(%rbp), %rbx
    leaq 262(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
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
.L9_71:
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_strings_10ascii_word
lb_strings_10ascii_word:
    .seh_proc lb_strings_10ascii_word
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
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L10_2
.L10_1:
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
.L10_4:
    jmp .L10_3
.L10_2:
.L10_3:
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 0(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L10_5:
    movq 16(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L10_7
.L10_6:
    movq %r15, %rbx
    addq %r14, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movzbl %bl, %ebx
    movl $65, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L10_11
    jmp .L10_20
.L10_20:
    movl %r13d, %r12d
    jmp .L10_12
.L10_11:
    movl $90, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r12d
.L10_12:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L10_8
    jmp .L10_9
.L10_8:
    movl $32, %ecx
    movl %ebx, %r13d
    addl %ecx, %r13d
    movzbl %r13b, %r12d
    cmpl %r13d, %r12d
    je .L10_13
.L10_14:
    leaq .Ltext_57(%rip), %rdi
    leaq .Ltext_56(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L10_13:
    movl %r13d, %ebx
    jmp .L10_10
.L10_9:
.L10_10:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movq 8(%rbp), %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_58(%rip), %rdi
    leaq .Ltext_24(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq 0(%rbp), %rax
    movq %rax, %r13
    addq %r14, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L10_16
.L10_15:
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
.L10_18:
    jmp .L10_17
.L10_16:
.L10_17:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r14
    jmp .L10_5
.L10_7:
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
.L10_19:
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .section .text$lb_memory_read_0g1_f64,"xr"
    .p2align 4
    .globl lb_memory_read_0g1_f64
lb_memory_read_0g1_f64:
    .seh_proc lb_memory_read_0g1_f64
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
    leaq 8(%rbp), %rbx
    leaq 16(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $8, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L11_1
    jmp .L11_2
.L11_2:
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L11_1:
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
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
.L11_3:
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .text

    .section .text$lb_memory_read_0g1_u64,"xr"
    .p2align 4
    .globl lb_memory_read_0g1_u64
lb_memory_read_0g1_u64:
    .seh_proc lb_memory_read_0g1_u64
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
    leaq 8(%rbp), %rbx
    leaq 16(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $8, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L12_1
    jmp .L12_2
.L12_2:
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L12_1:
    movq %rbx, %r10
    movq (%r10), %r12
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
.L12_3:
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .text

    .section .text$lb_memory_read_0g1_f32,"xr"
    .p2align 4
    .globl lb_memory_read_0g1_f32
lb_memory_read_0g1_f32:
    .seh_proc lb_memory_read_0g1_f32
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
    leaq 12(%rbp), %rbx
    leaq 16(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $4, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L13_1
    jmp .L13_2
.L13_2:
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L13_1:
    movq %rbx, %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
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
.L13_3:
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .text

    .section .text$lb_memory_read_0g1_u32,"xr"
    .p2align 4
    .globl lb_memory_read_0g1_u32
lb_memory_read_0g1_u32:
    .seh_proc lb_memory_read_0g1_u32
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
    leaq 12(%rbp), %rbx
    leaq 16(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $4, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call memcpy
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L14_1
    jmp .L14_2
.L14_2:
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L14_1:
    movq %rbx, %r10
    movl (%r10), %r12d
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
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L14_3:
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .text

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
    jne .L15_11
    jmp .L15_4
.L15_11:
    movl %r13d, %r14d
    jmp .L15_5
.L15_4:
    leaq 32(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L15_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L15_1
    jmp .L15_2
.L15_1:
    leaq .Ltext_24(%rip), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_64(%rip), %r13
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
    jmp .L15_3
.L15_2:
.L15_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L15_7
.L15_6:
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
    jne .L15_9
    jmp .L15_10
.L15_10:
    leaq .Ltext_65(%rip), %rdi
    leaq .Ltext_61(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L15_9:
    jmp .L15_8
.L15_7:
.L15_8:
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
    .quad lb_strings_floats_0init
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
    .asciz "src/std/strings/floats.lucb:19:9"
.Ltext_2:
    .asciz "src/std/strings/floats.lucb:24:9"
.Ltext_3:
    .asciz "invalid floating-point text"
.Ltext_4:
    .asciz "src/std/strings/floats.lucb:38:9"
.Ltext_5:
    .asciz "the decimal value exceeds f64 range"
.Ltext_6:
    .asciz "src/std/strings/floats.lucb:53:5"
.Ltext_7:
    .asciz "src/std/strings/floats.lucb:61:9"
.Ltext_8:
    .asciz "the decimal value exceeds f32 range"
.Ltext_9:
    .asciz "src/std/strings/floats.lucb:76:5"
.Ltext_10:
    .asciz "src/std/strings/floats.lucb:85:5"
.Ltext_11:
    .asciz "src/std/strings/floats.lucb:90:5"
.Ltext_12:
    .asciz "C"
.Ltext_13:
    .asciz "the C numeric locale could not be created"
.Ltext_14:
    .asciz "src/std/strings/floats.lucb:98:13"
.Ltext_15:
    .asciz "the numeric locale is closed"
.Ltext_16:
    .asciz "src/std/strings/floats.lucb:103:9"
.Ltext_17:
    .asciz "nan"
.Ltext_18:
    .asciz "shift count out of range"
.Ltext_19:
    .asciz "src/std/strings/floats.lucb:119:9"
.Ltext_20:
    .asciz "-inf"
.Ltext_21:
    .asciz "inf"
.Ltext_22:
    .asciz "the destination cannot hold the formatted floating-point value"
.Ltext_23:
    .asciz "src/std/strings/floats.lucb:123:9"
.Ltext_24:
    .asciz "index out of bounds"
.Ltext_25:
    .asciz "src/std/strings/floats.lucb:131:9"
.Ltext_26:
    .asciz "%.*g"
.Ltext_27:
    .asciz "floating-point formatting failed"
.Ltext_28:
    .asciz "src/std/strings/floats.lucb:145:5"
.Ltext_29:
    .asciz "a valid thread locale could not be restored"
.Ltext_30:
    .asciz "src/std/strings/floats.lucb:149:5"
.Ltext_31:
    .asciz "floating-point conversion ran out of memory"
.Ltext_32:
    .asciz "floating-point conversion failed"
.Ltext_33:
    .asciz "floating-point conversion did not return an end pointer"
.Ltext_34:
    .asciz "src/std/strings/floats.lucb:158:5"
.Ltext_35:
    .asciz "floating-point conversion did not consume the input"
.Ltext_36:
    .asciz "src/std/strings/floats.lucb:166:5"
.Ltext_37:
    .asciz "src/std/strings/floats.lucb:170:5"
.Ltext_38:
    .asciz "infinity"
.Ltext_39:
    .asciz "src/std/strings/floats.lucb:176:5"
.Ltext_40:
    .asciz "src/std/strings/floats.lucb:177:9"
.Ltext_41:
    .asciz "src/std/strings/floats.lucb:178:9"
.Ltext_42:
    .asciz "src/std/strings/floats.lucb:179:5"
.Ltext_43:
    .asciz "src/std/strings/floats.lucb:180:9"
.Ltext_44:
    .asciz "src/std/strings/floats.lucb:181:9"
.Ltext_45:
    .asciz "src/std/strings/floats.lucb:182:13"
.Ltext_46:
    .asciz "src/std/strings/floats.lucb:183:13"
.Ltext_47:
    .asciz "src/std/strings/floats.lucb:186:5"
.Ltext_48:
    .asciz "src/std/strings/floats.lucb:187:9"
.Ltext_49:
    .asciz "src/std/strings/floats.lucb:188:9"
.Ltext_50:
    .asciz "src/std/strings/floats.lucb:189:13"
.Ltext_51:
    .asciz "src/std/strings/floats.lucb:191:9"
.Ltext_52:
    .asciz "src/std/strings/floats.lucb:192:13"
.Ltext_53:
    .asciz "src/std/strings/floats.lucb:195:5"
.Ltext_54:
    .asciz "src/std/strings/floats.lucb:198:5"
.Ltext_55:
    .asciz "src/std/strings/floats.lucb:205:9"
.Ltext_56:
    .asciz "integer overflow"
.Ltext_57:
    .asciz "src/std/strings/floats.lucb:206:9"
.Ltext_58:
    .asciz "src/std/strings/floats.lucb:207:9"
.Ltext_59:
    .asciz "src/std/strings/floats.lucb:209:9"
.Ltext_60:
    .asciz "src/std/strings/floats.lucb:210:5"
.Ltext_61:
    .asciz "null_foreign"
.Ltext_62:
    .asciz "src/std/memory.lucb:342:5"
.Ltext_63:
    .asciz "src/std/memory.lucb:343:5"
.Ltext_64:
    .asciz "src/std/memory.lucb:326:9"
.Ltext_65:
    .asciz "src/std/memory.lucb:328:9"

    .section .rdata,"dr"
    .p2align 3
