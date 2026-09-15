    .text

    .p2align 4
    .globl lb_fonts_module_0init
    .type lb_fonts_module_0init, @function
lb_fonts_module_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    leaq lb_fonts_failed(%rip), %rbx
    movl $208273526, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_fonts_Bitmap_close
    .type lb_fonts_Bitmap_close, @function
lb_fonts_Bitmap_close:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -48(%rbp)
    leaq -48(%rbp), %r10
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
    leaq -64(%rbp), %r14
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
    movq %r15, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L1_4:
    jmp .L1_3
.L1_2:
.L1_3:
    leaq -96(%rbp), %rbx
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
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_fonts_Face_init
    .type lb_fonts_Face_init, @function
lb_fonts_Face_init:
    pushq %rbp
    movq %rsp, %rbp
    subq $560, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    movsd %xmm0, -104(%rbp)
    leaq -120(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -552(%rbp)
    call lb_thread_7is_main@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L2_28
.L2_27:
    leaq -344(%rbp), %rbx
    leaq lb_interop_12wrong_thread(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_17(%rip), %r13
    leaq -360(%rbp), %r14
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
    leaq -152(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L2_31
.L2_30:
    jmp .L2_29
.L2_28:
.L2_29:
    leaq -344(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -152(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L2_31:
    leaq -152(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_2
    jmp .L2_1
.L2_2:
    leaq -80(%rbp), %rbx
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
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_3:
.L2_1:
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, -544(%rbp)
    movabsq $4620693217682128896, %rax
    movq %rax, %xmm12
    movsd -544(%rbp), %xmm8
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
    movsd -544(%rbp), %xmm8
    ucomisd %xmm8, %xmm12
    setae %al
    movzbl %al, %r13d
.L2_8:
    movzbl %r13b, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L2_5
.L2_4:
    leaq -80(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_1(%rip), %r12
    leaq -168(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_9:
    jmp .L2_6
.L2_5:
.L2_6:
    leaq -120(%rbp), %rbx
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
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_utf8_valid@PLT
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
    leaq -80(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_2(%rip), %r12
    leaq -184(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
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
    leaq -80(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_3(%rip), %r12
    leaq -200(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
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
    leaq -240(%rbp), %r13
    movsd -544(%rbp), %xmm8
    leaq -448(%rbp), %r10
    movsd %xmm8, (%r10)
    movq %rbx, %r10
    leaq -464(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -464(%rbp), %r12
    movsd -544(%rbp), %xmm0
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -536(%rbp), %rdi
    call lb_fonts_10linux_face@PLT
    leaq -536(%rbp), %r14
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
    leaq -432(%rbp), %r12
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
    leaq -312(%rbp), %r11
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
    leaq -432(%rbp), %rbx
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
    leaq -312(%rbp), %r11
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
    call lb_core_7trap_at@PLT
.L2_36:
    leaq -312(%rbp), %r12
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
    leaq -80(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
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
    movq -552(%rbp), %r10
    movq %rbx, (%r10)
    movq -552(%rbp), %rax
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
    movq -552(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movsd -544(%rbp), %xmm8
    movq %rbx, %r10
    movsd %xmm8, (%r10)
    movq -552(%rbp), %rax
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
    movq -552(%rbp), %rax
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
    movq -552(%rbp), %rax
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
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_fonts_Face_measure
    .type lb_fonts_Face_measure, @function
lb_fonts_Face_measure:
    pushq %rbp
    movq %rsp, %rbp
    subq $416, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    leaq -112(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -96(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -392(%rbp)
    movq -392(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L3_2
.L3_1:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_4(%rip), %r13
    leaq -128(%rbp), %r14
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_4:
    jmp .L3_3
.L3_2:
.L3_3:
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    leaq -224(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -224(%rbp), %rax
    movq %rax, -352(%rbp)
    movq -352(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -360(%rbp)
    movq -360(%rbp), %r10
    movq (%r10), %r14
    movq $4096, %rcx
    cmpq %rcx, %r14
    jbe .L3_10
.L3_9:
    leaq -208(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    leaq lb_fonts_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_18(%rip), %r14
    leaq -240(%rbp), %r15
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
    leaq -168(%rbp), %r11
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
    leaq -256(%rbp), %rax
    movq %rax, -408(%rbp)
    leaq -280(%rbp), %r14
    movq $16, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -368(%rbp)
    leaq -296(%rbp), %rax
    movq %rax, -376(%rbp)
    movq -408(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -384(%rbp)
    movq $0, %rax
    movq %rax, %r12
    movq $0, %rax
    movq %rax, -400(%rbp)
.L3_13:
    movq -360(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r12
    jae .L3_15
.L3_14:
    movq -352(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %rcx
    leaq -280(%rbp), %rdi
    call lb_utf8_decode@PLT
    movq -368(%rbp), %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L3_16
    jmp .L3_17
.L3_16:
    movq %r14, %r10
    movq -376(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L3_18
.L3_17:
    leaq -208(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_19(%rip), %r13
    leaq -312(%rbp), %r14
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
    leaq -168(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L3_35
.L3_19:
.L3_18:
    movq -376(%rbp), %r10
    movq -408(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -408(%rbp), %r10
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
    leaq -208(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_20(%rip), %r13
    leaq -328(%rbp), %r14
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
    leaq -168(%rbp), %r11
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
    movq -384(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_33(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -400(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_33(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %rbx, %r12
    movq %r13, %rax
    movq %rax, -400(%rbp)
    jmp .L3_13
.L3_15:
    movq -400(%rbp), %rax
    movq $1024, %rcx
    cmpq %rcx, %rax
    jbe .L3_31
.L3_30:
    leaq -208(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_23(%rip), %r13
    leaq -344(%rbp), %r14
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
    leaq -168(%rbp), %r11
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
    leaq -208(%rbp), %rbx
    movq -400(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -168(%rbp), %r11
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
    call lb_core_7trap_at@PLT
.L3_35:
    leaq -168(%rbp), %r12
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
    leaq -88(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
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
    movq -392(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm13
    movaps %xmm12, %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movsd %xmm12, (%r10)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_8:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_fonts_Face_rasterize
    .type lb_fonts_Face_rasterize, @function
lb_fonts_Face_rasterize:
    pushq %rbp
    movq %rsp, %rbp
    subq $592, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -120(%rbp)
    leaq -136(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movsd %xmm0, -152(%rbp)
    leaq -120(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -560(%rbp)
    call lb_thread_7is_main@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L4_36
.L4_35:
    leaq -488(%rbp), %rbx
    leaq lb_interop_12wrong_thread(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_17(%rip), %r13
    leaq -504(%rbp), %r14
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
    leaq -184(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L4_39
.L4_38:
    jmp .L4_37
.L4_36:
.L4_37:
    leaq -488(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -184(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L4_39:
    leaq -184(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_2
    jmp .L4_1
.L4_2:
    leaq -112(%rbp), %rbx
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
    movq -8(%rbp), %rdi
    movq $64, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_3:
.L4_1:
    leaq -136(%rbp), %rax
    movq %rax, -512(%rbp)
    movq -560(%rbp), %rsi
    movq -512(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -224(%rbp), %rdi
    call lb_fonts_Face_measure@PLT
    leaq -224(%rbp), %r14
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
    leaq -112(%rbp), %r12
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
    movq -8(%rbp), %rdi
    movq $64, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_6:
.L4_4:
    movq %r14, %r10
    movsd (%r10), %xmm12
    leaq -152(%rbp), %r13
    movq %r13, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, -520(%rbp)
    movabsq $4602678819172646912, %rax
    movq %rax, %xmm13
    movsd -520(%rbp), %xmm8
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
    movsd -520(%rbp), %xmm8
    ucomisd %xmm8, %xmm13
    setae %al
    movzbl %al, %r14d
.L4_11:
    movzbl %r14b, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L4_8
.L4_7:
    leaq -112(%rbp), %rbx
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_7(%rip), %r13
    leaq -240(%rbp), %r14
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
    movq -8(%rbp), %rdi
    movq $64, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_12:
    jmp .L4_9
.L4_8:
.L4_9:
    movsd -520(%rbp), %xmm9
    movaps %xmm12, %xmm8
    mulsd %xmm9, %xmm8
    movapd %xmm8, %xmm13
    movapd %xmm13, %xmm0
    call lb_math_ceil@PLT
    movapd %xmm0, %xmm13
    leaq .Ltext_8(%rip), %r13
    movapd %xmm13, %xmm0
    movl $64, %edi
    movl $1, %esi
    movq %r13, %rdx
    call lb_core_6f_to_u@PLT
    movq %rax, %r13
    movq %r13, %rax
    movq $4, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_33(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -528(%rbp)
    movq -560(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movsd (%r10), %xmm13
    movq -560(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movsd (%r10), %xmm14
    movaps %xmm13, %xmm8
    addsd %xmm14, %xmm8
    movapd %xmm8, %xmm13
    movsd -520(%rbp), %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm13
    movapd %xmm13, %xmm0
    call lb_math_ceil@PLT
    movapd %xmm0, %xmm13
    leaq .Ltext_9(%rip), %r14
    movapd %xmm13, %xmm0
    movl $64, %edi
    movl $1, %esi
    movq %r14, %rdx
    call lb_core_6f_to_u@PLT
    movq %rax, %r14
    movq %r14, %rax
    movq $4, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_33(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -536(%rbp)
    movq -528(%rbp), %rax
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
    movq -536(%rbp), %rax
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
    movq -528(%rbp), %rax
    movq -536(%rbp), %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_33(%rip), %rsi
    call lb_core_7trap_at@PLT
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
    leaq -112(%rbp), %rbx
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_11(%rip), %r13
    leaq -256(%rbp), %r14
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
    movq -8(%rbp), %rdi
    movq $64, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_20:
    jmp .L4_15
.L4_14:
.L4_15:
    leaq -272(%rbp), %rax
    movq %rax, -568(%rbp)
    leaq lb_memory_heap(%rip), %rbx
    leaq -288(%rbp), %rax
    movq %rax, -576(%rbp)
    movq %rbx, %r10
    movq -576(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -528(%rbp), %rax
    movq -536(%rbp), %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_33(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    leaq -336(%rbp), %rax
    movq %rax, -584(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r15
    jbe .L4_22
.L4_21:
    movq -584(%rbp), %rax
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
    movq -584(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L4_23
.L4_22:
    movq -576(%rbp), %r10
    movq (%r10), %rbx
    movq -576(%rbp), %rax
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
    call lb_core_7trap_at@PLT
.L4_24:
    movq %r14, %r10
    movq (%r10), %r13
    movq %rbx, %rsi
    movq %r15, %rdx
    movq $1, %rcx
    leaq -360(%rbp), %rdi
    movq %r13, %r11
    call *%r11
    leaq -360(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r15
    setne %al
    movzbl %al, %eax
    movl %eax, -544(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl -544(%rbp), %eax
    andl %r13d, %eax
    movl %eax, -552(%rbp)
    movl -552(%rbp), %eax
    testl %eax, %eax
    jne .L4_26
    jmp .L4_27
.L4_26:
    movq -584(%rbp), %rax
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
    movq -584(%rbp), %rax
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
    movq %rbx, %rdi
    movl $0, %esi
    movq %r15, %rdx
    call memset@PLT
    movq %rax, %r12
    movq -584(%rbp), %r10
    movq %rbx, (%r10)
    movq -584(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq -584(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L4_23:
    movq -584(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_29
    jmp .L4_28
.L4_29:
    movq -584(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -112(%rbp), %r12
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
    movq -8(%rbp), %rdi
    movq $64, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_30:
.L4_28:
    movq -584(%rbp), %r10
    movq -568(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -392(%rbp), %rbx
    leaq -424(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq -568(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl -528(%rbp), %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq $20, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl -536(%rbp), %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movabsq $4611686018427387904, %rax
    movq %rax, %xmm12
    movsd -520(%rbp), %xmm9
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
    subq $48, %rsp
    movq -560(%rbp), %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movsd -520(%rbp), %xmm0
    movq -512(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %rcx
    leaq -456(%rbp), %rdi
    call lb_fonts_12linux_raster@PLT
    addq $48, %rsp
    leaq -456(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L4_32
    jmp .L4_31
.L4_32:
    leaq -112(%rbp), %r12
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
    movq %rbx, %rdi
    call lb_fonts_Bitmap_close@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $64, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_33:
.L4_31:
    leaq -112(%rbp), %r12
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
    movq -8(%rbp), %rdi
    movq $64, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_34:
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_fonts_Face_close
    .type lb_fonts_Face_close, @function
lb_fonts_Face_close:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -32(%rbp)
    leaq -32(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L5_4
    jmp .L5_2
.L5_4:
.L5_1:
    movq %r12, %rdi
    call cairo_scaled_font_destroy@PLT
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    jmp .L5_3
.L5_2:
.L5_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_fonts_12family_bytes
    .type lb_fonts_12family_bytes, @function
lb_fonts_12family_bytes:
    pushq %rbp
    movq %rsp, %rbp
    subq $256, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -112(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -128(%rbp), %rax
    movq %rax, -240(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r15
    leaq -112(%rbp), %rax
    movq %rax, -208(%rbp)
    movq -208(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -216(%rbp)
    movq -216(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_33(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    leaq -176(%rbp), %rax
    movq %rax, -248(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %rbx
    jbe .L6_2
.L6_1:
    movq -248(%rbp), %rax
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
    movq -248(%rbp), %rax
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
    call lb_core_7trap_at@PLT
.L6_4:
    movq %r14, %r10
    movq (%r10), %r15
    movq %r13, %rsi
    movq %rbx, %rdx
    movq $1, %rcx
    leaq -200(%rbp), %rdi
    movq %r15, %r11
    call *%r11
    leaq -200(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movq $0, %rcx
    cmpq %rcx, %rbx
    setne %al
    movzbl %al, %eax
    movl %eax, -224(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl -224(%rbp), %eax
    andl %r15d, %eax
    movl %eax, -232(%rbp)
    movl -232(%rbp), %eax
    testl %eax, %eax
    jne .L6_6
    jmp .L6_7
.L6_6:
    movq -248(%rbp), %rax
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
    movq -248(%rbp), %rax
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
    movq -248(%rbp), %r10
    movq %r13, (%r10)
    movq -248(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq -248(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
.L6_3:
    movq -248(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_9
    jmp .L6_8
.L6_9:
    movq -248(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -96(%rbp), %r12
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
    movq -8(%rbp), %rdi
    movq $48, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_10:
.L6_8:
    movq -248(%rbp), %r10
    movq -240(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -216(%rbp), %r10
    movq (%r10), %rbx
    movq -240(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -208(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %rbx, %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -216(%rbp), %r10
    movq (%r10), %rbx
    movq -240(%rbp), %r10
    movq (%r10), %r12
    movq -240(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_29(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    addq %r12, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -96(%rbp), %rbx
    movq -240(%rbp), %r10
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
    movq -8(%rbp), %rdi
    movq $48, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_11:
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_copy_0g1_u8
    .type lb_memory_copy_0g1_u8, @function
    .weak lb_memory_copy_0g1_u8
lb_memory_copy_0g1_u8:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    leaq -48(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -64(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movq %r8, -80(%rbp)
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -48(%rbp), %r12
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
    leaq -64(%rbp), %r13
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
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_30(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L7_3
.L7_2:
.L7_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L7_7
.L7_6:
    movq %r12, %r10
    movq (%r10), %r13
    leaq -64(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %rdi
    movq %r14, %rsi
    movq %rbx, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L7_9
    jmp .L7_10
.L7_10:
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_32(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_9:
    jmp .L7_8
.L7_7:
.L7_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_fonts_module_0init
    .text

    .section .rodata
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
    .asciz "src/std/fonts/module.lucb:126:9"
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

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_fonts_failed
    .type lb_fonts_failed, @object
    .p2align 2
lb_fonts_failed:
    .zero 4

    .section .note.GNU-stack,"",@progbits
