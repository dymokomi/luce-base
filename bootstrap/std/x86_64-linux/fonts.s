    .text

    .p2align 4
    .globl lb_fonts_0init
    .type lb_fonts_0init, @function
lb_fonts_0init:
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
    jne .L1_28
.L1_27:
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
    jmp .L1_31
.L1_30:
    jmp .L1_29
.L1_28:
.L1_29:
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
.L1_31:
    leaq -152(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_2
    jmp .L1_1
.L1_2:
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
.L1_3:
.L1_1:
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
    jne .L1_7
    jmp .L1_37
.L1_37:
    movl %ebx, %r13d
    jmp .L1_8
.L1_7:
    movabsq $4634204016564240384, %rax
    movq %rax, %xmm12
    movsd -544(%rbp), %xmm8
    ucomisd %xmm8, %xmm12
    setae %al
    movzbl %al, %r13d
.L1_8:
    movzbl %r13b, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L1_5
.L1_4:
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
.L1_9:
    jmp .L1_6
.L1_5:
.L1_6:
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
    jne .L1_38
    jmp .L1_13
.L1_38:
    movl %r14d, %r15d
    jmp .L1_14
.L1_13:
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_utf8_valid@PLT
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
    jne .L1_33
    jmp .L1_32
.L1_33:
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
    jmp .L1_36
.L1_34:
.L1_32:
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
    jmp .L1_36
.L1_35:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_36:
    leaq -312(%rbp), %r12
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
    .globl lb_fonts_Face_rasterize
    .type lb_fonts_Face_rasterize, @function
lb_fonts_Face_rasterize:
    pushq %rbp
    movq %rsp, %rbp
    subq $992, %rsp
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
    movq %rax, -944(%rbp)
    call lb_thread_7is_main@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L2_36
.L2_35:
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
    jmp .L2_39
.L2_38:
    jmp .L2_37
.L2_36:
.L2_37:
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
.L2_39:
    leaq -184(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_2
    jmp .L2_1
.L2_2:
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
.L2_3:
.L2_1:
    leaq -136(%rbp), %rax
    movq %rax, -848(%rbp)
    movq -848(%rbp), %r10
    leaq -560(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -944(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L2_41
.L2_40:
    leaq -544(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    leaq lb_fonts_failed(%rip), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    leaq .Ltext_4(%rip), %r15
    leaq -576(%rbp), %rbx
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
    leaq -224(%rbp), %r11
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
    leaq -560(%rbp), %rbx
    movq %rbx, %r10
    leaq -672(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -672(%rbp), %rax
    movq %rax, -904(%rbp)
    movq -904(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -912(%rbp)
    movq -912(%rbp), %r10
    movq (%r10), %r14
    movq $4096, %rcx
    cmpq %rcx, %r14
    jbe .L2_49
.L2_48:
    leaq -656(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    leaq lb_fonts_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_18(%rip), %r14
    leaq -688(%rbp), %r15
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
    leaq -616(%rbp), %r11
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
    leaq -704(%rbp), %rax
    movq %rax, -960(%rbp)
    leaq -728(%rbp), %r14
    movq $16, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -920(%rbp)
    leaq -744(%rbp), %rax
    movq %rax, -928(%rbp)
    movq -960(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -936(%rbp)
    movq $0, %rax
    movq %rax, %r12
    movq $0, %rax
    movq %rax, -952(%rbp)
.L2_52:
    movq -912(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r12
    jae .L2_54
.L2_53:
    movq -904(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %rcx
    leaq -728(%rbp), %rdi
    call lb_utf8_decode@PLT
    movq -920(%rbp), %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L2_55
    jmp .L2_56
.L2_55:
    movq %r14, %r10
    movq -928(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_57
.L2_56:
    leaq -656(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_19(%rip), %r13
    leaq -760(%rbp), %r14
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
    leaq -616(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L2_74
.L2_58:
.L2_57:
    movq -928(%rbp), %r10
    movq -960(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -960(%rbp), %r10
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
    leaq -656(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_20(%rip), %r13
    leaq -776(%rbp), %r14
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
    leaq -616(%rbp), %r11
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
    movq -936(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -952(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %rbx, %r12
    movq %r13, %rax
    movq %rax, -952(%rbp)
    jmp .L2_52
.L2_54:
    movq -952(%rbp), %rax
    movq $1024, %rcx
    cmpq %rcx, %rax
    jbe .L2_70
.L2_69:
    leaq -656(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_23(%rip), %r13
    leaq -792(%rbp), %r14
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
    leaq -616(%rbp), %r11
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
    leaq -656(%rbp), %rbx
    movq -952(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -616(%rbp), %r11
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
    call lb_core_7trap_at@PLT
.L2_74:
    leaq -616(%rbp), %r12
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
    leaq -544(%rbp), %r13
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
    leaq -224(%rbp), %r11
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
    movq -944(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm13
    movaps %xmm12, %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    leaq -544(%rbp), %rbx
    movq %rbx, %r10
    movsd %xmm12, (%r10)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -224(%rbp), %r11
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
    call lb_core_7trap_at@PLT
.L2_75:
    leaq -224(%rbp), %r12
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
    leaq -112(%rbp), %r13
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
.L2_6:
.L2_4:
    movq %r12, %r10
    movsd (%r10), %xmm12
    leaq -152(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, -856(%rbp)
    movabsq $4602678819172646912, %rax
    movq %rax, %xmm13
    movsd -856(%rbp), %xmm8
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
    movsd -856(%rbp), %xmm8
    ucomisd %xmm8, %xmm13
    setae %al
    movzbl %al, %r12d
.L2_11:
    movzbl %r12b, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L2_8
.L2_7:
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
.L2_12:
    jmp .L2_9
.L2_8:
.L2_9:
    movsd -856(%rbp), %xmm9
    movaps %xmm12, %xmm8
    mulsd %xmm9, %xmm8
    movapd %xmm8, %xmm13
    movapd %xmm13, %xmm0
    call lb_math_ceil@PLT
    movapd %xmm0, %xmm13
    leaq .Ltext_8(%rip), %rbx
    movapd %xmm13, %xmm0
    movl $64, %edi
    movl $1, %esi
    movq %rbx, %rdx
    call lb_core_6f_to_u@PLT
    movq %rax, %rbx
    movq %rbx, %rax
    movq $4, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -864(%rbp)
    movq -944(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd (%r10), %xmm13
    movq -944(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd (%r10), %xmm14
    movaps %xmm13, %xmm8
    addsd %xmm14, %xmm8
    movapd %xmm8, %xmm13
    movsd -856(%rbp), %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm13
    movapd %xmm13, %xmm0
    call lb_math_ceil@PLT
    movapd %xmm0, %xmm13
    leaq .Ltext_9(%rip), %r12
    movapd %xmm13, %xmm0
    movl $64, %edi
    movl $1, %esi
    movq %r12, %rdx
    call lb_core_6f_to_u@PLT
    movq %rax, %r12
    movq %r12, %rax
    movq $4, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -872(%rbp)
    movq -864(%rbp), %rax
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
    movq -872(%rbp), %rax
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
    movq -864(%rbp), %rax
    movq -872(%rbp), %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
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
.L2_20:
    jmp .L2_15
.L2_14:
.L2_15:
    leaq -272(%rbp), %rax
    movq %rax, -968(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -880(%rbp)
    leaq -288(%rbp), %rax
    movq %rax, -976(%rbp)
    movq -880(%rbp), %r10
    movq -976(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -864(%rbp), %rax
    movq -872(%rbp), %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    leaq -336(%rbp), %rax
    movq %rax, -984(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r13
    jbe .L2_22
.L2_21:
    movq -984(%rbp), %rax
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
    movq -984(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L2_23
.L2_22:
    movq -976(%rbp), %r10
    movq (%r10), %r12
    movq -976(%rbp), %rax
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
    call lb_core_7trap_at@PLT
.L2_24:
    movq %r14, %r10
    movq (%r10), %rbx
    movq %r12, %rsi
    movq %r13, %rdx
    movq $1, %rcx
    leaq -360(%rbp), %rdi
    movq %rbx, %r11
    call *%r11
    leaq -360(%rbp), %r15
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq $0, %rcx
    cmpq %rcx, %r13
    setne %al
    movzbl %al, %eax
    movl %eax, -888(%rbp)
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl -888(%rbp), %eax
    movl %ebx, %ecx
    movl %eax, %ebx
    andl %ecx, %ebx
    testl %ebx, %ebx
    jne .L2_26
    jmp .L2_27
.L2_26:
    movq -984(%rbp), %rax
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
    movq -984(%rbp), %rax
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
    movq %rbx, %rdi
    movl $0, %esi
    movq %r13, %rdx
    call memset@PLT
    movq %rax, %r12
    movq -984(%rbp), %r10
    movq %rbx, (%r10)
    movq -984(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq -984(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L2_23:
    movq -984(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_29
    jmp .L2_28
.L2_29:
    movq -984(%rbp), %rax
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
.L2_30:
.L2_28:
    movq -984(%rbp), %r10
    movq -968(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -392(%rbp), %rbx
    leaq -424(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq -968(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl -864(%rbp), %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movq $20, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl -872(%rbp), %eax
    movq %r13, %r10
    movl %eax, (%r10)
    movabsq $4611686018427387904, %rax
    movq %rax, %xmm12
    movsd -856(%rbp), %xmm9
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
    movq -944(%rbp), %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movsd -856(%rbp), %xmm0
    movq -848(%rbp), %r10
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
    jne .L2_32
    jmp .L2_31
.L2_32:
    leaq -112(%rbp), %rax
    movq %rax, -896(%rbp)
    movq -896(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -896(%rbp), %rax
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
    leaq -808(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq -880(%rbp), %r10
    movq (%r10), %r15
    movq -880(%rbp), %rax
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
    movq %r15, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r11
    call *%r11
.L2_79:
    jmp .L2_78
.L2_77:
.L2_78:
    leaq -840(%rbp), %r12
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
    movq -896(%rbp), %rsi
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
.L2_33:
.L2_31:
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
.L2_34:
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
    jne .L3_4
    jmp .L3_2
.L3_4:
.L3_1:
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
    jmp .L3_3
.L3_2:
.L3_3:
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
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    leaq -176(%rbp), %rax
    movq %rax, -248(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %rbx
    jbe .L4_2
.L4_1:
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
    call lb_core_7trap_at@PLT
.L4_4:
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
    jne .L4_6
    jmp .L4_7
.L4_6:
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
    jmp .L4_3
.L4_7:
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
.L4_3:
    movq -248(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_9
    jmp .L4_8
.L4_9:
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
.L4_10:
.L4_8:
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
    leaq .Ltext_46(%rip), %rsi
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
.L4_11:
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_fonts_10mac_string
    .type lb_fonts_10mac_string, @function
lb_fonts_10mac_string:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    leaq -96(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rdi
    movq %r12, %rsi
    movq %rbx, %rdx
    movl $134217984, %ecx
    movl $0, %r8d
    call CFStringCreateWithBytes@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L5_1
    jmp .L5_2
.L5_1:
    jmp .L5_3
.L5_2:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_29(%rip), %r13
    leaq -112(%rbp), %r14
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_4:
.L5_3:
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_5:
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_fonts_8mac_face
    .type lb_fonts_8mac_face, @function
lb_fonts_8mac_face:
    pushq %rbp
    movq %rsp, %rbp
    subq $320, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movsd %xmm0, -136(%rbp)
    leaq -152(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -152(%rbp), %rbx
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
    leaq -184(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $5, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -168(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L6_3
.L6_2:
    leaq -168(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L6_3:
    leaq -168(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -224(%rbp), %rdi
    call lb_fonts_10mac_string@PLT
    leaq -224(%rbp), %r12
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
    leaq -120(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L6_6:
.L6_4:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -312(%rbp)
    leaq -136(%rbp), %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    movq -312(%rbp), %rdi
    movq $0, %rsi
    call CTFontCreateWithName@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L6_7
    jmp .L6_8
.L6_7:
    jmp .L6_9
.L6_8:
    leaq -120(%rbp), %r12
    movq $40, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    leaq lb_fonts_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_32(%rip), %r14
    leaq -240(%rbp), %r15
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
    movq -312(%rbp), %rdi
    call CFRelease@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L6_9:
    movq %r13, %rdi
    call CTFontGetSymbolicTraits@PLT
    movl %eax, %r12d
    movl $1024, %ecx
    andl %ecx, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L6_12
.L6_11:
    leaq -120(%rbp), %r12
    movq $40, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    leaq lb_fonts_failed(%rip), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    leaq .Ltext_33(%rip), %r15
    leaq -256(%rbp), %rbx
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
    movq %r13, %rdi
    call CFRelease@PLT
    movq -312(%rbp), %rdi
    call CFRelease@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L6_14:
    jmp .L6_13
.L6_12:
.L6_13:
    leaq -258(%rbp), %rbx
    movl $77, %eax
    movq %rbx, %r10
    movw %ax, (%r10)
    leaq -260(%rbp), %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r12, %rdx
    movq $1, %rcx
    call CTFontGetGlyphsForCharacters@PLT
    movl %eax, %ebx
    movq %r13, %rdi
    movl $0, %esi
    movq %r12, %rdx
    movq $0, %rcx
    movq $1, %r8
    call CTFontGetAdvancesForGlyphs@PLT
    movsd %xmm0, -320(%rbp)
    leaq -304(%rbp), %rbx
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
    movsd -320(%rbp), %xmm8
    movq %r12, %r10
    movsd %xmm8, (%r10)
    movq %r13, %rdi
    call CTFontGetAscent@PLT
    movapd %xmm0, %xmm12
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd %xmm12, (%r10)
    movq %r13, %rdi
    call CTFontGetDescent@PLT
    movapd %xmm0, %xmm12
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd %xmm12, (%r10)
    leaq -120(%rbp), %r12
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
    movq -312(%rbp), %rdi
    call CFRelease@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L6_15:
    movq %rbx, %rdi
    call CFRelease@PLT
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_fonts_10mac_raster
    .type lb_fonts_10mac_raster, @function
lb_fonts_10mac_raster:
    pushq %rbp
    movq %rsp, %rbp
    subq $704, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -144(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movsd %xmm0, -160(%rbp)
    movq %rcx, -176(%rbp)
    leaq 16(%rbp), %r10
    leaq -128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    leaq -128(%rbp), %rax
    movq %rax, -432(%rbp)
    movq -432(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L7_1
    jmp .L7_2
.L7_1:
    jmp .L7_3
.L7_2:
    leaq -80(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_4(%rip), %r12
    leaq -192(%rbp), %r13
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
.L7_3:
    movq -432(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd (%r10), %xmm12
    leaq -160(%rbp), %r13
    movq %r13, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, -440(%rbp)
    movsd -440(%rbp), %xmm9
    movaps %xmm12, %xmm8
    mulsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movapd %xmm12, %xmm0
    movq %r12, %rdi
    movq $0, %rsi
    movq $0, %rdx
    call CTFontCreateCopyWithAttributes@PLT
    movq %rax, -648(%rbp)
    movq -648(%rbp), %rax
    testq %rax, %rax
    jne .L7_5
    jmp .L7_6
.L7_5:
    jmp .L7_7
.L7_6:
    leaq -80(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_35(%rip), %r12
    leaq -208(%rbp), %r13
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
.L7_7:
    leaq -176(%rbp), %rax
    movq %rax, -448(%rbp)
    movq -448(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -456(%rbp)
    movq -456(%rbp), %r10
    movq (%r10), %r14
    movq -456(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    movq -456(%rbp), %rax
    movq $20, %rcx
    addq %rcx, %rax
    movq %rax, -464(%rbp)
    movq -464(%rbp), %r10
    movl (%r10), %r12d
    movl %r12d, %r12d
    movq %r15, %r10
    movl (%r10), %r15d
    movl %r15d, %r15d
    subq $16, %rsp
    movq $7, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rdi
    movq %rbx, %rsi
    movq %r12, %rdx
    movq $8, %rcx
    movq %r15, %r8
    movq $0, %r9
    call CGBitmapContextCreate@PLT
    addq $16, %rsp
    movq %rax, -656(%rbp)
    movq -656(%rbp), %rax
    testq %rax, %rax
    jne .L7_9
    jmp .L7_10
.L7_9:
    jmp .L7_11
.L7_10:
    leaq -80(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_36(%rip), %r12
    leaq -224(%rbp), %r14
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
    movq -648(%rbp), %rdi
    call CFRelease@PLT
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
.L7_11:
    movq -656(%rbp), %rdi
    movl $1, %esi
    call CGContextSetShouldAntialias@PLT
    movq -656(%rbp), %rdi
    movl $0, %esi
    call CGContextSetShouldSmoothFonts@PLT
    movabsq $4607182418800017408, %rax
    movq %rax, %xmm12
    movapd %xmm12, %xmm0
    movapd %xmm12, %xmm1
    movq -656(%rbp), %rdi
    call CGContextSetGrayFillColor@PLT
    leaq -144(%rbp), %rax
    movq %rax, -472(%rbp)
    movq -472(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -480(%rbp)
    leaq -240(%rbp), %rax
    movq %rax, -672(%rbp)
    leaq -264(%rbp), %rax
    movq %rax, -680(%rbp)
    movq -680(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -488(%rbp)
    leaq -280(%rbp), %rax
    movq %rax, -496(%rbp)
    movq -672(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -504(%rbp)
    leaq -300(%rbp), %rax
    movq %rax, -520(%rbp)
    movq -520(%rbp), %rax
    movq $2, %rcx
    addq %rcx, %rax
    movq %rax, -528(%rbp)
    leaq -304(%rbp), %rax
    movq %rax, -536(%rbp)
    leaq -320(%rbp), %rax
    movq %rax, -544(%rbp)
    movq -544(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -552(%rbp)
    leaq -336(%rbp), %rax
    movq %rax, -560(%rbp)
    movq -560(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -568(%rbp)
    leaq -376(%rbp), %rax
    movq %rax, -696(%rbp)
    movq -696(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -576(%rbp)
    leaq -392(%rbp), %rax
    movq %rax, -584(%rbp)
    movq -584(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -592(%rbp)
    leaq -408(%rbp), %rax
    movq %rax, -600(%rbp)
    leaq -424(%rbp), %rax
    movq %rax, -608(%rbp)
    movabsq $4611686018427387904, %rax
    movq %rax, %xmm8
    movsd %xmm8, -616(%rbp)
    movq -432(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -624(%rbp)
    movq -432(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -632(%rbp)
    movq -608(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -640(%rbp)
    movq $0, %rax
    movq %rax, %r13
    movq $0, %rax
    movq %rax, -664(%rbp)
.L7_13:
    movq -480(%rbp), %r10
    movq (%r10), %rbx
    cmpq %rbx, %r13
    jae .L7_15
.L7_14:
    movq -472(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %rcx
    leaq -264(%rbp), %rdi
    call lb_utf8_decode@PLT
    movq -488(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_16
    jmp .L7_17
.L7_16:
    movq -680(%rbp), %r10
    movq -496(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L7_18
.L7_17:
    leaq .Ltext_37(%rip), %rbx
    leaq -296(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $22, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_38(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_18:
    movq -496(%rbp), %r10
    movq -672(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -504(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -512(%rbp)
    movq -520(%rbp), %r11
    movl $0, 0(%r11)
    movq -672(%rbp), %r10
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
    call lb_core_7trap_at@PLT
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
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
    movl %r12d, %r12d
    movzwl %r12w, %r12d
    movq -520(%rbp), %r10
    movw %r12w, (%r10)
    movl $1023, %ecx
    movl %r15d, %r12d
    andl %ecx, %r12d
    movl $56320, %ecx
    addl %ecx, %r12d
    movl %r12d, %r12d
    movzwl %r12w, %r12d
    movq -528(%rbp), %r10
    movw %r12w, (%r10)
    movq $2, %rax
    movq %rax, -688(%rbp)
    jmp .L7_21
.L7_20:
    movl %r12d, %r15d
    movzwl %r15w, %r15d
    movq -520(%rbp), %r10
    movw %r15w, (%r10)
    movq $1, %rax
    movq %rax, -688(%rbp)
.L7_21:
    movq -536(%rbp), %r11
    movl $0, 0(%r11)
    movq -648(%rbp), %rdi
    movq -520(%rbp), %rsi
    movq -536(%rbp), %rdx
    movq -688(%rbp), %rcx
    call CTFontGetGlyphsForCharacters@PLT
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L7_25
.L7_24:
    movq -472(%rbp), %r10
    movq (%r10), %r12
    movq -480(%rbp), %r10
    movq (%r10), %r15
    movq $1, %rcx
    addq %rcx, %r15
    cmpq %r15, %r13
    jb 1f
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -512(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -512(%rbp), %rcx
    cmpq %rcx, %r13
    jbe .L7_27
.L7_28:
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_27:
    movq %r13, %r15
    addq %r12, %r15
    movq -512(%rbp), %rax
    movq %rax, %r14
    subq %r13, %r14
    movq -544(%rbp), %r10
    movq %r15, (%r10)
    movq -552(%rbp), %r10
    movq %r14, (%r10)
    movq -560(%rbp), %r10
    movq %r15, (%r10)
    movq -568(%rbp), %r10
    movq %r14, (%r10)
    movq -560(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -376(%rbp), %rdi
    call lb_fonts_10mac_string@PLT
    movq -576(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L7_30
    jmp .L7_29
.L7_30:
    movq -696(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r12
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
    movq -656(%rbp), %rdi
    call CGContextRelease@PLT
    movq -648(%rbp), %rdi
    call CFRelease@PLT
    movq %r12, %rsi
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
.L7_29:
    movq -696(%rbp), %r10
    movq (%r10), %r12
    movq -584(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq -584(%rbp), %r10
    movq %rax, (%r10)
    movq -688(%rbp), %rax
    movq -592(%rbp), %r10
    movq %rax, (%r10)
    movq -648(%rbp), %rdi
    movq %r12, %rsi
    movq -584(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call CTFontCreateForString@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L7_35
    jmp .L7_33
.L7_35:
.L7_32:
    movq %r13, %rdi
    movq -520(%rbp), %rsi
    movq -536(%rbp), %rdx
    movq -688(%rbp), %rcx
    call CTFontGetGlyphsForCharacters@PLT
    movl %eax, %r14d
    movq %r13, %r14
    jmp .L7_34
.L7_33:
    movq -648(%rbp), %rax
    movq %rax, %r14
.L7_34:
    movq %r12, %rdi
    call CFRelease@PLT
    movq %r14, %r15
    movq %r13, %rbx
    jmp .L7_26
.L7_25:
    movq -648(%rbp), %rax
    movq %rax, %r15
    movq $0, %rax
    movq %rax, %rbx
.L7_26:
    movq -608(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq -664(%rbp), %rax
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
    movq -624(%rbp), %r10
    movsd (%r10), %xmm13
    movaps %xmm12, %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    movsd -440(%rbp), %xmm8
    mulsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    movsd -616(%rbp), %xmm8
    addsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    movq -608(%rbp), %r10
    movsd %xmm12, (%r10)
    movq -464(%rbp), %r10
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
    movsd -616(%rbp), %xmm9
    movaps %xmm12, %xmm8
    subsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movq -632(%rbp), %r10
    movsd (%r10), %xmm13
    movsd -440(%rbp), %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm13
    movaps %xmm12, %xmm8
    subsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    movq -640(%rbp), %r10
    movsd %xmm12, (%r10)
    movq -608(%rbp), %r10
    movq -600(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r15, %rdi
    movq -536(%rbp), %rsi
    movq -600(%rbp), %rdx
    movq $1, %rcx
    movq -656(%rbp), %r8
    call CTFontDrawGlyphs@PLT
    testq %rbx, %rbx
    jne .L7_39
    jmp .L7_37
.L7_39:
.L7_36:
    movq %rbx, %rdi
    call CFRelease@PLT
    jmp .L7_38
.L7_37:
.L7_38:
    movq -664(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -512(%rbp), %rax
    movq %rax, %r13
    movq %rbx, %rax
    movq %rax, -664(%rbp)
    jmp .L7_13
.L7_15:
    movq -656(%rbp), %rdi
    call CGContextRelease@PLT
    movq -648(%rbp), %rdi
    call CFRelease@PLT
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
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

    .p2align 4
    .globl lb_fonts_8win_face
    .type lb_fonts_8win_face, @function
lb_fonts_8win_face:
    pushq %rbp
    movq %rsp, %rbp
    subq $1264, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movsd %xmm0, -136(%rbp)
    leaq -152(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -168(%rbp), %rax
    movq %rax, -1240(%rbp)
    leaq -152(%rbp), %rbx
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
    leaq -200(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $8, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -184(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L8_3
.L8_2:
    leaq -184(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L8_3:
    leaq -184(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -248(%rbp), %rdi
    call lb_fonts_12family_bytes@PLT
    leaq -248(%rbp), %r12
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
    leaq -120(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L8_6:
.L8_4:
    movq %r12, %r10
    movq -1240(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -264(%rbp), %rax
    movq %rax, -1248(%rbp)
    movq -1240(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -928(%rbp)
    leaq lb_fonts_failed(%rip), %rax
    movq %rax, -936(%rbp)
    movq -936(%rbp), %r10
    movl (%r10), %r15d
    movq -928(%rbp), %rsi
    movl %r15d, %edx
    leaq -312(%rbp), %rdi
    call lb_12windows_text_wide@PLT
    leaq -312(%rbp), %r14
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
    movq %rax, -944(%rbp)
    leaq -120(%rbp), %rax
    movq %rax, -952(%rbp)
    movq -952(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -944(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -952(%rbp), %rax
    movq $64, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    leaq -328(%rbp), %rax
    movq %rax, -960(%rbp)
    movq -1240(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq -928(%rbp), %rax
    movq -960(%rbp), %r10
    movq %rax, (%r10)
    movq -960(%rbp), %rax
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
    movq %r12, %rdi
    movq -960(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L8_9:
    movq -952(%rbp), %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L8_11:
.L8_7:
    movq %r14, %r10
    movq -1248(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1248(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -968(%rbp)
    movq -968(%rbp), %rax
    movq $32, %rcx
    cmpq %rcx, %rax
    jbe .L8_13
.L8_12:
    leaq -120(%rbp), %rax
    movq %rax, -976(%rbp)
    movq -976(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq -936(%rbp), %r10
    movl (%r10), %eax
    movl %eax, -984(%rbp)
    movl -984(%rbp), %eax
    movq %r14, %r10
    movl %eax, (%r10)
    leaq .Ltext_52(%rip), %rax
    movq %rax, -992(%rbp)
    leaq -344(%rbp), %r13
    movq -992(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -1000(%rbp)
    movq $53, %rax
    movq -1000(%rbp), %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -976(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    leaq -360(%rbp), %r14
    movq -1248(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1008(%rbp)
    movq -968(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -1008(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -1016(%rbp)
    movq -1016(%rbp), %r10
    movq %r12, (%r10)
    movq %r13, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -1024(%rbp)
    movq -1024(%rbp), %r10
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
    movq %r12, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L8_15:
    leaq -376(%rbp), %rbx
    movq -1240(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq -928(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq %r13, %r10
    movq (%r10), %r12
    movq -1024(%rbp), %r10
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
    movq %r12, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L8_17:
    movq -976(%rbp), %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L8_19:
    jmp .L8_14
.L8_13:
.L8_14:
    leaq -468(%rbp), %rax
    movq %rax, -1032(%rbp)
    leaq -560(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movq $0, 80(%r11)
    movl $0, 88(%r11)
    leaq -136(%rbp), %r14
    movq %r14, %r10
    movsd (%r10), %xmm12
    movabsq $4634204016564240384, %rax
    movq %rax, %xmm8
    movsd %xmm8, -1040(%rbp)
    movsd -1040(%rbp), %xmm9
    movaps %xmm12, %xmm8
    mulsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movapd %xmm12, %xmm0
    call lb_math_round@PLT
    movapd %xmm0, %xmm12
    leaq .Ltext_54(%rip), %r14
    movapd %xmm12, %xmm0
    movl $32, %edi
    movl $1, %esi
    movq %r14, %rdx
    call lb_core_6f_to_s@PLT
    movq %rax, %r14
    movl $0, %eax
    movl %r14d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
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
    movq -1032(%rbp), %r11
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
    movq -1032(%rbp), %rax
    movq $28, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq -1248(%rbp), %r10
    movq (%r10), %r14
    movq $0, %rax
    movq %rax, %r15
.L8_20:
    movq -968(%rbp), %rcx
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
    movq -1032(%rbp), %rdi
    call CreateFontIndirectW@PLT
    movq %rax, -1256(%rbp)
    movq -1256(%rbp), %rax
    testq %rax, %rax
    jne .L8_24
    jmp .L8_25
.L8_24:
    jmp .L8_26
.L8_25:
    leaq -120(%rbp), %rax
    movq %rax, -1048(%rbp)
    movq -1048(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq -936(%rbp), %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_32(%rip), %r13
    leaq -576(%rbp), %r14
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
    movq -1048(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    leaq -592(%rbp), %r13
    movq -1248(%rbp), %r10
    movq (%r10), %r14
    movq -968(%rbp), %rax
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
    movq %rax, -1056(%rbp)
    movq -1056(%rbp), %r10
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
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r11
    call *%r11
.L8_27:
    leaq -608(%rbp), %rbx
    movq -1240(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq -928(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq %r12, %r10
    movq (%r10), %r13
    movq -1056(%rbp), %r10
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
    movq %r13, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L8_29:
    movq -1048(%rbp), %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L8_31:
.L8_26:
    movq $0, %rdi
    call CreateCompatibleDC@PLT
    movq %rax, -1264(%rbp)
    movq -1264(%rbp), %rax
    testq %rax, %rax
    jne .L8_32
    jmp .L8_33
.L8_32:
    jmp .L8_34
.L8_33:
    leaq -120(%rbp), %rax
    movq %rax, -1064(%rbp)
    movq -1064(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq -936(%rbp), %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_57(%rip), %r13
    leaq -624(%rbp), %r14
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
    movq -1064(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -1256(%rbp), %rdi
    call DeleteObject@PLT
    movl %eax, %ebx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    leaq -640(%rbp), %r13
    movq -1248(%rbp), %r10
    movq (%r10), %r14
    movq -968(%rbp), %rax
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
    movq %rax, -1072(%rbp)
    movq -1072(%rbp), %r10
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
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r11
    call *%r11
.L8_35:
    leaq -656(%rbp), %rbx
    movq -1240(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq -928(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq %r12, %r10
    movq (%r10), %r13
    movq -1072(%rbp), %r10
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
    movq %r13, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L8_37:
    movq -1064(%rbp), %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L8_39:
.L8_34:
    movq -1264(%rbp), %rdi
    movq -1256(%rbp), %rsi
    call SelectObject@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L8_40
    jmp .L8_41
.L8_40:
    jmp .L8_42
.L8_41:
    leaq -120(%rbp), %rax
    movq %rax, -1080(%rbp)
    movq -1080(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq -936(%rbp), %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_59(%rip), %r13
    leaq -672(%rbp), %r14
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
    movq -1080(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -1264(%rbp), %rdi
    call DeleteDC@PLT
    movl %eax, %ebx
    movq -1256(%rbp), %rdi
    call DeleteObject@PLT
    movl %eax, %ebx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    leaq -688(%rbp), %r13
    movq -1248(%rbp), %r10
    movq (%r10), %r14
    movq -968(%rbp), %rax
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
    movq %rax, -1088(%rbp)
    movq -1088(%rbp), %r10
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
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r11
    call *%r11
.L8_43:
    leaq -704(%rbp), %rbx
    movq -1240(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq -928(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq %r12, %r10
    movq (%r10), %r13
    movq -1088(%rbp), %r10
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
    movq %r13, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L8_45:
    movq -1080(%rbp), %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L8_47:
.L8_42:
    leaq -764(%rbp), %rax
    movq %rax, -1096(%rbp)
    movq -1096(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $0, 56(%r11)
    movq -1264(%rbp), %rdi
    movq -1096(%rbp), %rsi
    call GetTextMetricsW@PLT
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
    movq -1096(%rbp), %rax
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
    leaq -120(%rbp), %rax
    movq %rax, -1104(%rbp)
    movq -1104(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq -936(%rbp), %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_33(%rip), %r13
    leaq -784(%rbp), %r14
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
    movq -1104(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -1264(%rbp), %rdi
    call DeleteDC@PLT
    movl %eax, %ebx
    movq -1256(%rbp), %rdi
    call DeleteObject@PLT
    movl %eax, %ebx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    leaq -800(%rbp), %r13
    movq -1248(%rbp), %r10
    movq (%r10), %r14
    movq -968(%rbp), %rax
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
    movq %rax, -1112(%rbp)
    movq -1112(%rbp), %r10
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
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r11
    call *%r11
.L8_53:
    leaq -816(%rbp), %rbx
    movq -1240(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq -928(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq %r12, %r10
    movq (%r10), %r13
    movq -1112(%rbp), %r10
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
    movq %r13, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L8_55:
    movq -1104(%rbp), %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L8_57:
    jmp .L8_50
.L8_49:
.L8_50:
    leaq -856(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movq -1264(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -1120(%rbp)
    movq -1256(%rbp), %rax
    movq -1120(%rbp), %r10
    movq %rax, (%r10)
    movq -1096(%rbp), %rax
    movq $20, %rcx
    addq %rcx, %rax
    movq %rax, -1128(%rbp)
    movq -1128(%rbp), %r10
    movslq (%r10), %rax
    movq %rax, -1136(%rbp)
    movl -1136(%rbp), %eax
    movslq %eax, %rax
    movq %rax, -1144(%rbp)
    movq -1144(%rbp), %rax
    cvtsi2sdq %rax, %xmm8
    movapd %xmm8, %xmm12
    movsd -1040(%rbp), %xmm9
    movaps %xmm12, %xmm8
    divsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movq $16, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -1152(%rbp)
    movq -1152(%rbp), %r10
    movsd %xmm12, (%r10)
    movq -1096(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, -1160(%rbp)
    movq -1160(%rbp), %r10
    movslq (%r10), %rax
    movq %rax, -1168(%rbp)
    movl -1168(%rbp), %eax
    movslq %eax, %rax
    movq %rax, -1176(%rbp)
    movq -1176(%rbp), %rax
    cvtsi2sdq %rax, %xmm8
    movapd %xmm8, %xmm12
    movsd -1040(%rbp), %xmm9
    movaps %xmm12, %xmm8
    divsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movq $24, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -1184(%rbp)
    movq -1184(%rbp), %r10
    movsd %xmm12, (%r10)
    movq -1096(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1192(%rbp)
    movq -1192(%rbp), %r10
    movslq (%r10), %rax
    movq %rax, -1200(%rbp)
    movl -1200(%rbp), %eax
    movslq %eax, %rax
    movq %rax, -1208(%rbp)
    movq -1208(%rbp), %rax
    cvtsi2sdq %rax, %xmm8
    movapd %xmm8, %xmm12
    movsd -1040(%rbp), %xmm9
    movaps %xmm12, %xmm8
    divsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movq $32, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -1216(%rbp)
    movq -1216(%rbp), %r10
    movsd %xmm12, (%r10)
    leaq -120(%rbp), %rax
    movq %rax, -1224(%rbp)
    movq %rbx, %r10
    movq -1224(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq -1224(%rbp), %rax
    movq $64, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %rbx
    leaq -872(%rbp), %r13
    movq -1248(%rbp), %r10
    movq (%r10), %r14
    movq -968(%rbp), %rax
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
    movq %rax, -1232(%rbp)
    movq -1232(%rbp), %r10
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
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r11
    call *%r11
.L8_58:
    leaq -888(%rbp), %r12
    movq -1240(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq -928(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq -1232(%rbp), %r10
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
    movq %r13, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L8_60:
    movq -1224(%rbp), %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L8_62:
    leaq -264(%rbp), %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    leaq -904(%rbp), %r13
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
    call lb_core_7trap_at@PLT
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
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L8_63:
    leaq -168(%rbp), %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    leaq -920(%rbp), %r13
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
    call lb_core_7trap_at@PLT
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
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L8_65:
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_fonts_9win_close
    .type lb_fonts_9win_close, @function
lb_fonts_9win_close:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -24(%rbp)
    movq %rsi, -40(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call DeleteDC@PLT
    movl %eax, %ebx
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L9_4
    jmp .L9_2
.L9_4:
.L9_1:
    movq %rbx, %rdi
    call DeleteObject@PLT
    movl %eax, %ebx
    jmp .L9_3
.L9_2:
.L9_3:
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_fonts_10win_raster
    .type lb_fonts_10win_raster, @function
lb_fonts_10win_raster:
    pushq %rbp
    movq %rsp, %rbp
    subq $1280, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -144(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movsd %xmm0, -160(%rbp)
    movq %rcx, -176(%rbp)
    leaq 16(%rbp), %r10
    leaq -128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    leaq -128(%rbp), %rax
    movq %rax, -672(%rbp)
    movq -672(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1168(%rbp)
    movq -1168(%rbp), %rax
    testq %rax, %rax
    jne .L10_1
    jmp .L10_2
.L10_1:
    jmp .L10_3
.L10_2:
    leaq -80(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_4(%rip), %r12
    leaq -192(%rbp), %r13
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
.L10_3:
    movq -672(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -1176(%rbp)
    movq -1176(%rbp), %rax
    testq %rax, %rax
    jne .L10_5
    jmp .L10_6
.L10_5:
    jmp .L10_7
.L10_6:
    leaq -80(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_4(%rip), %r12
    leaq -208(%rbp), %r13
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
.L10_7:
    leaq -300(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movq $0, 80(%r11)
    movl $0, 88(%r11)
    movq -1176(%rbp), %rdi
    movl $92, %esi
    movq %r14, %rdx
    call GetObjectW@PLT
    movl %eax, %r15d
    movl $92, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L10_10
.L10_9:
    leaq -80(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_63(%rip), %r12
    leaq -320(%rbp), %r13
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
.L10_10:
.L10_11:
    movq -672(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd (%r10), %xmm12
    leaq -160(%rbp), %r15
    movq %r15, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, -680(%rbp)
    movsd -680(%rbp), %xmm9
    movaps %xmm12, %xmm8
    mulsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movapd %xmm12, %xmm0
    call lb_math_round@PLT
    movapd %xmm0, %xmm12
    leaq .Ltext_64(%rip), %r15
    movapd %xmm12, %xmm0
    movl $32, %edi
    movl $1, %esi
    movq %r15, %rdx
    call lb_core_6f_to_s@PLT
    movq %rax, %r15
    movl $0, %eax
    movl %r15d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_64(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    movq %r14, %rdi
    call CreateFontIndirectW@PLT
    movq %rax, -1184(%rbp)
    movq -1184(%rbp), %rax
    testq %rax, %rax
    jne .L10_13
    jmp .L10_14
.L10_13:
    jmp .L10_15
.L10_14:
    leaq -80(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_35(%rip), %r12
    leaq -336(%rbp), %r13
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
.L10_15:
    movq -1168(%rbp), %rdi
    movq -1184(%rbp), %rsi
    call SelectObject@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L10_17
    jmp .L10_18
.L10_17:
    jmp .L10_19
.L10_18:
    leaq -80(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_65(%rip), %r12
    leaq -352(%rbp), %r13
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
    movq -1184(%rbp), %rdi
    call DeleteObject@PLT
    movl %eax, %r12d
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
.L10_19:
    leaq -368(%rbp), %rax
    movq %rax, -688(%rbp)
    leaq -384(%rbp), %rax
    movq %rax, -696(%rbp)
    movq -696(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movl $65536, %eax
    movq -696(%rbp), %r10
    movl %eax, (%r10)
    movq -696(%rbp), %rax
    movq $12, %rcx
    addq %rcx, %rax
    movq %rax, -704(%rbp)
    movl $65536, %eax
    movq -704(%rbp), %r10
    movl %eax, (%r10)
    movq -696(%rbp), %r10
    movq -688(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -144(%rbp), %rax
    movq %rax, -712(%rbp)
    movq -712(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -720(%rbp)
    leaq -400(%rbp), %rax
    movq %rax, -1208(%rbp)
    leaq -424(%rbp), %rax
    movq %rax, -1216(%rbp)
    movq -1216(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -728(%rbp)
    leaq -440(%rbp), %rax
    movq %rax, -736(%rbp)
    movq -1208(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -744(%rbp)
    leaq -476(%rbp), %rax
    movq %rax, -768(%rbp)
    leaq -512(%rbp), %rax
    movq %rax, -1232(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -1240(%rbp)
    leaq -560(%rbp), %rax
    movq %rax, -1248(%rbp)
    movq -1240(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -824(%rbp)
    leaq -584(%rbp), %rax
    movq %rax, -1256(%rbp)
    movq -1256(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -832(%rbp)
    movq -1248(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -880(%rbp)
    movq -1248(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -888(%rbp)
    movq -1248(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -840(%rbp)
    leaq .Ltext_15(%rip), %rax
    movq %rax, -848(%rbp)
    movq -840(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -856(%rbp)
    movq -840(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -864(%rbp)
    movq -1248(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -872(%rbp)
    movq -1248(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -784(%rbp)
    leaq .Ltext_13(%rip), %rax
    movq %rax, -792(%rbp)
    movq -784(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -800(%rbp)
    movq -784(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -808(%rbp)
    movq -1248(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -816(%rbp)
    movq -1248(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -896(%rbp)
    movq -768(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, -920(%rbp)
    movq -1232(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -928(%rbp)
    movq -672(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -952(%rbp)
    leaq .Ltext_77(%rip), %rax
    movq %rax, -960(%rbp)
    movq -768(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -968(%rbp)
    movq -672(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -984(%rbp)
    leaq .Ltext_78(%rip), %rax
    movq %rax, -992(%rbp)
    movq -768(%rbp), %rax
    movq $12, %rcx
    addq %rcx, %rax
    movq %rax, -1000(%rbp)
    leaq -176(%rbp), %rax
    movq %rax, -1040(%rbp)
    leaq -176(%rbp), %rax
    movq %rax, -1056(%rbp)
    leaq -176(%rbp), %rax
    movq %rax, -1104(%rbp)
    leaq -664(%rbp), %rax
    movq %rax, -1144(%rbp)
    movq -1144(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1152(%rbp)
    movq -1240(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1160(%rbp)
    movq $0, %rax
    movq %rax, -1192(%rbp)
    movq $0, %rax
    movq %rax, -1200(%rbp)
.L10_21:
    movq -720(%rbp), %r10
    movq (%r10), %r13
    movq -1192(%rbp), %rax
    cmpq %r13, %rax
    jae .L10_23
.L10_22:
    movq -712(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -1192(%rbp), %rcx
    leaq -424(%rbp), %rdi
    call lb_utf8_decode@PLT
    movq -728(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L10_24
    jmp .L10_25
.L10_24:
    movq -1216(%rbp), %r10
    movq -736(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L10_26
.L10_25:
    leaq .Ltext_37(%rip), %rbx
    leaq -456(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $22, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_66(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_66(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT
.L10_26:
    movq -736(%rbp), %r10
    movq -1208(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -744(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -752(%rbp)
    movq -752(%rbp), %rax
    movq -1192(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_67(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -760(%rbp)
    movq -768(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movl $0, 16(%r11)
    movq -1208(%rbp), %r10
    movl (%r10), %r13d
    movl %r13d, %r13d
    movl $65535, %ecx
    cmpl %ecx, %r13d
    ja .L10_28
.L10_27:
    movl %r13d, %eax
    movl %eax, -1224(%rbp)
    jmp .L10_29
.L10_28:
    movl $65533, %eax
    movl %eax, -1224(%rbp)
.L10_29:
    subq $16, %rsp
    movq -688(%rbp), %rax
    movq %rax, 0(%rsp)
    movq -1168(%rbp), %rdi
    movl -1224(%rbp), %esi
    movl $6, %edx
    movq -768(%rbp), %rcx
    movl $0, %r8d
    movq $0, %r9
    call GetGlyphOutlineW@PLT
    addq $16, %rsp
    movl %eax, -776(%rbp)
    movl -776(%rbp), %eax
    movl $4294967295, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L10_87
    jmp .L10_33
.L10_87:
    movl %r15d, %ebx
    jmp .L10_34
.L10_33:
    movl -776(%rbp), %eax
    movl $1048576, %ecx
    cmpl %ecx, %eax
    seta %al
    movzbl %al, %ebx
.L10_34:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L10_30
    jmp .L10_31
.L10_30:
    leaq -80(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_68(%rip), %r12
    leaq -496(%rbp), %r13
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
    movq -1168(%rbp), %rdi
    movq -1176(%rbp), %rsi
    call SelectObject@PLT
    movq %rax, %r12
    movq -1184(%rbp), %rdi
    call DeleteObject@PLT
    movl %eax, %r12d
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
.L10_31:
.L10_32:
    movl -776(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jbe .L10_37
.L10_36:
    movl -776(%rbp), %eax
    movl %eax, %r15d
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r15
    jbe .L10_40
.L10_39:
    movl $208273409, %eax
    movq -784(%rbp), %r10
    movl %eax, (%r10)
    movq -792(%rbp), %rax
    movq -800(%rbp), %r10
    movq %rax, (%r10)
    movq $47, %rax
    movq -808(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq -816(%rbp), %r10
    movb %al, (%r10)
    jmp .L10_41
.L10_40:
    movq -1240(%rbp), %r10
    movq (%r10), %rbx
    movq -824(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L10_42
    jmp .L10_43
.L10_43:
    leaq .Ltext_69(%rip), %rdi
    leaq .Ltext_14(%rip), %rsi
    call lb_core_7trap_at@PLT
.L10_42:
    movq %r12, %r10
    movq (%r10), %r13
    movq %rbx, %rsi
    movq %r15, %rdx
    movq $1, %rcx
    leaq -584(%rbp), %rdi
    movq %r13, %r11
    call *%r11
    movq -832(%rbp), %r10
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
    jne .L10_44
    jmp .L10_45
.L10_44:
    movl $208273409, %eax
    movq -840(%rbp), %r10
    movl %eax, (%r10)
    movq -848(%rbp), %rax
    movq -856(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq -864(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq -872(%rbp), %r10
    movb %al, (%r10)
    jmp .L10_41
.L10_45:
    movq -1256(%rbp), %r10
    movq (%r10), %rbx
    movq -1248(%rbp), %r10
    movq %rbx, (%r10)
    movq -880(%rbp), %r10
    movq %r15, (%r10)
    movl $0, %eax
    movq -888(%rbp), %r10
    movb %al, (%r10)
.L10_41:
    movq -896(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L10_47
    jmp .L10_46
.L10_47:
    movq -1248(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r12
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
    movq -1168(%rbp), %rdi
    movq -1176(%rbp), %rsi
    call SelectObject@PLT
    movq %rax, %rbx
    movq -1184(%rbp), %rdi
    call DeleteObject@PLT
    movl %eax, %ebx
    movq %r12, %rsi
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
.L10_46:
    movq -1248(%rbp), %r10
    movq -1232(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1232(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -904(%rbp)
    subq $16, %rsp
    movq -688(%rbp), %rax
    movq %rax, 0(%rsp)
    movq -1168(%rbp), %rdi
    movl -1224(%rbp), %esi
    movl $6, %edx
    movq -768(%rbp), %rcx
    movl -776(%rbp), %r8d
    movq -904(%rbp), %r9
    call GetGlyphOutlineW@PLT
    addq $16, %rsp
    movl %eax, %r12d
    movl $4294967295, %ecx
    cmpl %ecx, %r12d
    jne .L10_50
.L10_49:
    leaq -80(%rbp), %r12
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_70(%rip), %r13
    leaq -600(%rbp), %r14
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
    leaq -616(%rbp), %r13
    movq -1232(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq -904(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq -1240(%rbp), %r10
    movq (%r10), %r14
    movq -1240(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L10_53
    jmp .L10_52
.L10_53:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L10_52:
    movq -1168(%rbp), %rdi
    movq -1176(%rbp), %rsi
    call SelectObject@PLT
    movq %rax, %rbx
    movq -1184(%rbp), %rdi
    call DeleteObject@PLT
    movl %eax, %ebx
    movq %r12, %rsi
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
.L10_50:
.L10_51:
    movq -768(%rbp), %r10
    movl (%r10), %r12d
    movl %r12d, %r12d
    movq $3, %rcx
    addq %rcx, %r12
.L10_56:
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
    call lb_core_7trap_at@PLT
1:
    movq %rax, -912(%rbp)
    movq -920(%rbp), %r10
    movl (%r10), %r14d
    movl %r14d, %r14d
    movq -912(%rbp), %rax
    movq %r14, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_74(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq -928(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -936(%rbp)
    movq -936(%rbp), %rcx
    cmpq %rcx, %r14
    jbe .L10_58
.L10_57:
    leaq -80(%rbp), %rax
    movq %rax, -944(%rbp)
    leaq lb_fonts_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq -944(%rbp), %r10
    movl %r13d, (%r10)
    leaq .Ltext_75(%rip), %r13
    leaq -632(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $41, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq -944(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -944(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -648(%rbp), %r13
    movq -904(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq -936(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq -1240(%rbp), %r10
    movq (%r10), %r14
    movq -1240(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L10_61
    jmp .L10_60
.L10_61:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L10_60:
    movq -1168(%rbp), %rdi
    movq -1176(%rbp), %rsi
    call SelectObject@PLT
    movq %rax, %rbx
    movq -1184(%rbp), %rdi
    call DeleteObject@PLT
    movl %eax, %ebx
    movq -944(%rbp), %rsi
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
.L10_58:
.L10_59:
    movq -1200(%rbp), %rax
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
    movq -952(%rbp), %r10
    movsd (%r10), %xmm13
    movaps %xmm12, %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    movsd -680(%rbp), %xmm8
    mulsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    movapd %xmm12, %xmm0
    call lb_math_round@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movl $64, %edi
    movl $1, %esi
    movq -960(%rbp), %rdx
    call lb_core_6f_to_s@PLT
    movq %rax, %r12
    movq %r12, %rax
    movq $2, %rcx
    addq %rcx, %rax
    jno 1f
    leaq .Ltext_77(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -968(%rbp), %r10
    movslq (%r10), %r14
    movslq %r14d, %r14
    movq %r12, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jno 1f
    leaq .Ltext_77(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -976(%rbp)
    movq -984(%rbp), %r10
    movsd (%r10), %xmm12
    movsd -680(%rbp), %xmm8
    mulsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    movapd %xmm12, %xmm0
    call lb_math_ceil@PLT
    movapd %xmm0, %xmm12
    movapd %xmm12, %xmm0
    movl $64, %edi
    movl $1, %esi
    movq -992(%rbp), %rdx
    call lb_core_6f_to_s@PLT
    movq %rax, %r14
    movq %r14, %rax
    movq $2, %rcx
    addq %rcx, %rax
    jno 1f
    leaq .Ltext_78(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq -1000(%rbp), %r10
    movslq (%r10), %rbx
    movslq %ebx, %rbx
    movq %r14, %rax
    movq %rbx, %rcx
    subq %rcx, %rax
    jno 1f
    leaq .Ltext_78(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -1008(%rbp)
    movq -920(%rbp), %r10
    movl (%r10), %r14d
    movl %r14d, %eax
    movq %rax, -1016(%rbp)
    movq -1040(%rbp), %r10
    movq (%r10), %r15
    movq $16, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -1048(%rbp)
    movq -1056(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1064(%rbp)
    movq -1064(%rbp), %rax
    movq $20, %rcx
    addq %rcx, %rax
    movq %rax, -1072(%rbp)
    movq -1104(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1112(%rbp)
    movq -1112(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -1120(%rbp)
    movq -1112(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1136(%rbp)
    movq $0, %rax
    movq %rax, -1264(%rbp)
.L10_63:
    movq -1264(%rbp), %rax
    movq -1016(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L10_66
.L10_64:
    movq -768(%rbp), %r10
    movl (%r10), %r15d
    movl %r15d, %eax
    movq %rax, -1024(%rbp)
    movq $0, %rax
    movq %rax, -1272(%rbp)
.L10_67:
    movq -1272(%rbp), %rax
    movq -1024(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L10_70
.L10_68:
    movq -976(%rbp), %rax
    movq -1272(%rbp), %rcx
    addq %rcx, %rax
    jno 1f
    leaq .Ltext_79(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -1032(%rbp)
    movq -1008(%rbp), %rax
    movq -1264(%rbp), %rcx
    addq %rcx, %rax
    jno 1f
    leaq .Ltext_80(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq -1032(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setge %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L10_74
    jmp .L10_88
.L10_88:
    movl %ebx, %r12d
    jmp .L10_75
.L10_74:
    movq $0, %rcx
    cmpq %rcx, %r15
    setge %al
    movzbl %al, %r12d
.L10_75:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L10_76
    jmp .L10_89
.L10_89:
    movl %ebx, %r12d
    jmp .L10_77
.L10_76:
    movq -1048(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    movq -1032(%rbp), %rax
    cmpq %rbx, %rax
    setl %al
    movzbl %al, %r12d
.L10_77:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L10_78
    jmp .L10_90
.L10_90:
    movl %ebx, %r12d
    jmp .L10_79
.L10_78:
    movq -1072(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    cmpq %rbx, %r15
    setl %al
    movzbl %al, %r12d
.L10_79:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L10_71
    jmp .L10_72
.L10_71:
    movq -912(%rbp), %rax
    movq -1264(%rbp), %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_81(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %rbx, %rax
    movq -1272(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_81(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -936(%rbp), %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_81(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -904(%rbp), %rax
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
    call lb_core_7trap_at@PLT
1:
    movl %eax, %ebx
    movl %ebx, %eax
    movl $32, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_81(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %ebx
.L10_81:
    movl $64, %ecx
    movl %ebx, %eax
    xorl %edx, %edx
    divl %ecx
    movl %eax, -1080(%rbp)
    movl -1080(%rbp), %eax
    movl %eax, %eax
    movq %rax, -1088(%rbp)
    movl -1088(%rbp), %eax
    movzbl %al, %eax
    movl %eax, -1096(%rbp)
    movq -1120(%rbp), %r10
    movl (%r10), %r13d
    movl %r13d, %r13d
    movq %r15, %rax
    movq %r13, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_82(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -1032(%rbp), %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_82(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movl -1096(%rbp), %eax
    movzbl %al, %eax
    movl %eax, -1128(%rbp)
    movq -1112(%rbp), %r10
    movq (%r10), %r14
    movq -1136(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_83(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r13, %r12
    addq %r14, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl -1128(%rbp), %eax
    cmpl %r12d, %eax
    jbe .L10_83
.L10_82:
    movq -1112(%rbp), %r10
    movq (%r10), %rbx
    movq -1136(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_84(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rbx, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl -1128(%rbp), %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L10_84
.L10_83:
.L10_84:
    jmp .L10_73
.L10_72:
.L10_73:
.L10_69:
    movq -1272(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, -1272(%rbp)
    jmp .L10_67
.L10_70:
.L10_65:
    movq -1264(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, -1264(%rbp)
    jmp .L10_63
.L10_66:
    movq -904(%rbp), %rax
    movq -1144(%rbp), %r10
    movq %rax, (%r10)
    movq -936(%rbp), %rax
    movq -1152(%rbp), %r10
    movq %rax, (%r10)
    movq -1240(%rbp), %r10
    movq (%r10), %rbx
    movq -1160(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L10_86
    jmp .L10_85
.L10_86:
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %rdi
    movq -1144(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L10_85:
    jmp .L10_38
.L10_37:
.L10_38:
    movq -1200(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_85(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -760(%rbp), %rax
    movq %rax, -1192(%rbp)
    movq %rbx, %rax
    movq %rax, -1200(%rbp)
    jmp .L10_21
.L10_23:
    movq -1168(%rbp), %rdi
    movq -1176(%rbp), %rsi
    call SelectObject@PLT
    movq %rax, %rbx
    movq -1184(%rbp), %rdi
    call DeleteObject@PLT
    movl %eax, %ebx
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
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

    .p2align 4
    .globl lb_fonts_10linux_face
    .type lb_fonts_10linux_face, @function
lb_fonts_10linux_face:
    pushq %rbp
    movq %rsp, %rbp
    subq $640, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movsd %xmm0, -136(%rbp)
    leaq -152(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -168(%rbp), %rax
    movq %rax, -632(%rbp)
    leaq -152(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L11_2
.L11_1:
    leaq .Ltext_88(%rip), %rbx
    leaq -200(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $9, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -184(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L11_3
.L11_2:
    leaq -184(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L11_3:
    leaq -184(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -248(%rbp), %rdi
    call lb_fonts_12family_bytes@PLT
    leaq -248(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_5
    jmp .L11_4
.L11_5:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -120(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L11_6:
.L11_4:
    movq %r12, %r10
    movq -632(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $2, %edi
    movl $1, %esi
    movl $1, %edx
    call cairo_image_surface_create@PLT
    movq %rax, -640(%rbp)
    movq -640(%rbp), %rax
    testq %rax, %rax
    jne .L11_7
    jmp .L11_8
.L11_8:
    leaq .Ltext_89(%rip), %rdi
    leaq .Ltext_86(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_7:
    movq -640(%rbp), %rdi
    call cairo_create@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L11_9
    jmp .L11_10
.L11_10:
    leaq .Ltext_90(%rip), %rdi
    leaq .Ltext_86(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_9:
    leaq -504(%rbp), %r10
    movq %r12, (%r10)
    call cairo_font_options_create@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L11_30
    jmp .L11_31
.L11_31:
    leaq .Ltext_87(%rip), %rdi
    leaq .Ltext_86(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_30:
    movq %r14, %rdi
    movl $2, %esi
    call cairo_font_options_set_antialias@PLT
    movq %r14, %rdi
    movl $1, %esi
    call cairo_font_options_set_hint_metrics@PLT
    movq %r12, %rdi
    movq %r14, %rsi
    call cairo_set_font_options@PLT
    movq %r14, %rdi
    call cairo_font_options_destroy@PLT
.L11_32:
    movq -632(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -512(%rbp)
    movq %r12, %rdi
    movq -512(%rbp), %rsi
    movl $0, %edx
    movl $0, %ecx
    call cairo_select_font_face@PLT
    leaq -136(%rbp), %rax
    movq %rax, -520(%rbp)
    movq -520(%rbp), %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    movq %r12, %rdi
    call cairo_set_font_size@PLT
    leaq -288(%rbp), %rax
    movq %rax, -528(%rbp)
    movq -528(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movq %r12, %rdi
    movq -528(%rbp), %rsi
    call cairo_font_extents@PLT
    leaq -336(%rbp), %r15
    movq %r15, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    leaq -384(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    leaq .Ltext_91(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r15, %rdx
    call cairo_text_extents@PLT
    leaq .Ltext_92(%rip), %rbx
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r14, %rdx
    call cairo_text_extents@PLT
    movq %r12, %rdi
    call cairo_status@PLT
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
    jne .L11_33
    jmp .L11_14
.L11_33:
    movl %ebx, %r13d
    jmp .L11_15
.L11_14:
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
.L11_15:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L11_34
    jmp .L11_16
.L11_34:
    movl %ebx, %r13d
    jmp .L11_17
.L11_16:
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
    movapd %xmm12, %xmm0
    call lb_math_abs@PLT
    movapd %xmm0, %xmm12
    movabsq $4576918229304087675, %rax
    movq %rax, %xmm13
    ucomisd %xmm13, %xmm12
    seta %al
    movzbl %al, %r13d
.L11_17:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L11_11
    jmp .L11_12
.L11_11:
    leaq -120(%rbp), %rax
    movq %rax, -536(%rbp)
    movq -536(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    leaq lb_fonts_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_93(%rip), %r14
    leaq -400(%rbp), %r15
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
    movq -536(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rdi
    call cairo_destroy@PLT
    movq -640(%rbp), %rdi
    call cairo_surface_destroy@PLT
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    leaq -416(%rbp), %r14
    movq -632(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq -512(%rbp), %rax
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
    jne .L11_19
    jmp .L11_18
.L11_19:
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L11_18:
    movq -536(%rbp), %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L11_20:
    jmp .L11_13
.L11_12:
.L11_13:
    movq %r12, %rdi
    call cairo_get_scaled_font@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L11_21
    jmp .L11_22
.L11_22:
    leaq .Ltext_95(%rip), %rdi
    leaq .Ltext_86(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_21:
    movq %rbx, %rdi
    call cairo_scaled_font_reference@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L11_23
    jmp .L11_24
.L11_24:
    leaq .Ltext_95(%rip), %rdi
    leaq .Ltext_86(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_23:
    leaq -456(%rbp), %rax
    movq %rax, -544(%rbp)
    movq -544(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movq -544(%rbp), %r10
    movq %r13, (%r10)
    movq -544(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -552(%rbp)
    movq $0, %rax
    movq -552(%rbp), %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -560(%rbp)
    movq -560(%rbp), %r10
    movsd (%r10), %xmm12
    movq -544(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -568(%rbp)
    movq -568(%rbp), %r10
    movsd %xmm12, (%r10)
    movq -528(%rbp), %r10
    movsd (%r10), %xmm12
    movq -544(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -576(%rbp)
    movq -576(%rbp), %r10
    movsd %xmm12, (%r10)
    movq -528(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -584(%rbp)
    movq -584(%rbp), %r10
    movsd (%r10), %xmm12
    movq -544(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -592(%rbp)
    movq -592(%rbp), %r10
    movsd %xmm12, (%r10)
    leaq -120(%rbp), %rax
    movq %rax, -600(%rbp)
    movq -544(%rbp), %r10
    movq -600(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq -600(%rbp), %rax
    movq $64, %rcx
    addq %rcx, %rax
    movq %rax, -608(%rbp)
    movl $0, %eax
    movq -608(%rbp), %r10
    movb %al, (%r10)
    movq %r12, %rdi
    call cairo_destroy@PLT
    movq -640(%rbp), %rdi
    call cairo_surface_destroy@PLT
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -616(%rbp)
    leaq -472(%rbp), %rax
    movq %rax, -624(%rbp)
    movq -632(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq -512(%rbp), %rax
    movq -624(%rbp), %r10
    movq %rax, (%r10)
    movq -624(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq -616(%rbp), %r10
    movq (%r10), %rbx
    movq -616(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L11_26
    jmp .L11_25
.L11_26:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq -624(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L11_25:
    movq -600(%rbp), %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
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
.L11_27:
    movq %rbx, %rdi
    call cairo_destroy@PLT
    movq %r12, %rbx
    movq %rbx, %rdi
    call cairo_surface_destroy@PLT
    leaq -168(%rbp), %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    leaq -488(%rbp), %r13
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
    call lb_core_7trap_at@PLT
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
    jne .L11_29
    jmp .L11_28
.L11_29:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L11_28:
    leaq .Ltext_96(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_fonts_12linux_raster
    .type lb_fonts_12linux_raster, @function
lb_fonts_12linux_raster:
    pushq %rbp
    movq %rsp, %rbp
    subq $624, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -144(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movsd %xmm0, -160(%rbp)
    movq %rcx, -176(%rbp)
    leaq 16(%rbp), %r10
    leaq -128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    leaq -128(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L12_1
    jmp .L12_2
.L12_1:
    jmp .L12_3
.L12_2:
    leaq -80(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_4(%rip), %r12
    leaq -192(%rbp), %r13
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
.L12_4:
.L12_3:
    leaq -176(%rbp), %rax
    movq %rax, -360(%rbp)
    movq -360(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -368(%rbp)
    movq -368(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -376(%rbp)
    movq -376(%rbp), %r10
    movl (%r10), %r15d
    movl %r15d, %r15d
    movq -368(%rbp), %rax
    movq $20, %rcx
    addq %rcx, %rax
    movq %rax, -384(%rbp)
    movq -384(%rbp), %r10
    movl (%r10), %r13d
    movl %r13d, %r13d
    movl $2, %edi
    movl %r15d, %esi
    movl %r13d, %edx
    call cairo_image_surface_create@PLT
    movq %rax, -560(%rbp)
    movq -560(%rbp), %rax
    testq %rax, %rax
    jne .L12_5
    jmp .L12_6
.L12_6:
    leaq .Ltext_97(%rip), %rdi
    leaq .Ltext_86(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_5:
    movq -560(%rbp), %rdi
    call cairo_surface_status@PLT
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L12_8
.L12_7:
    leaq -80(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_98(%rip), %r12
    leaq -208(%rbp), %r14
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
    movq -560(%rbp), %rdi
    call cairo_surface_destroy@PLT
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
.L12_10:
    jmp .L12_9
.L12_8:
.L12_9:
    movq -560(%rbp), %rdi
    call cairo_create@PLT
    movq %rax, -568(%rbp)
    movq -568(%rbp), %rax
    testq %rax, %rax
    jne .L12_11
    jmp .L12_12
.L12_12:
    leaq .Ltext_99(%rip), %rdi
    leaq .Ltext_86(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_11:
    movq -568(%rbp), %rax
    leaq -352(%rbp), %r10
    movq %rax, (%r10)
    call cairo_font_options_create@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L12_37
    jmp .L12_38
.L12_38:
    leaq .Ltext_87(%rip), %rdi
    leaq .Ltext_86(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_37:
    movq %r14, %rdi
    movl $2, %esi
    call cairo_font_options_set_antialias@PLT
    movq %r14, %rdi
    movl $1, %esi
    call cairo_font_options_set_hint_metrics@PLT
    movq -568(%rbp), %rdi
    movq %r14, %rsi
    call cairo_set_font_options@PLT
    movq %r14, %rdi
    call cairo_font_options_destroy@PLT
.L12_39:
    movq %r12, %rdi
    call cairo_scaled_font_get_font_face@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L12_13
    jmp .L12_14
.L12_14:
    leaq .Ltext_100(%rip), %rdi
    leaq .Ltext_86(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_13:
    movq -568(%rbp), %rdi
    movq %r14, %rsi
    call cairo_set_font_face@PLT
    movq $16, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -392(%rbp)
    movq -392(%rbp), %r10
    movsd (%r10), %xmm12
    leaq -160(%rbp), %rax
    movq %rax, -400(%rbp)
    movq -400(%rbp), %r10
    movsd (%r10), %xmm8
    movsd %xmm8, -408(%rbp)
    movsd -408(%rbp), %xmm9
    movaps %xmm12, %xmm8
    mulsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movapd %xmm12, %xmm0
    movq -568(%rbp), %rdi
    call cairo_set_font_size@PLT
    movabsq $4607182418800017408, %rax
    movq %rax, %xmm12
    movapd %xmm12, %xmm0
    movapd %xmm12, %xmm1
    movapd %xmm12, %xmm2
    movapd %xmm12, %xmm3
    movq -568(%rbp), %rdi
    call cairo_set_source_rgba@PLT
    leaq -144(%rbp), %rax
    movq %rax, -416(%rbp)
    movq -416(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -424(%rbp)
    leaq -224(%rbp), %rax
    movq %rax, -608(%rbp)
    leaq -248(%rbp), %rax
    movq %rax, -616(%rbp)
    movq -616(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -432(%rbp)
    leaq -264(%rbp), %rax
    movq %rax, -440(%rbp)
    leaq -285(%rbp), %rax
    movq %rax, -448(%rbp)
    movq -608(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -456(%rbp)
    movabsq $4611686018427387904, %rax
    movq %rax, %xmm8
    movsd %xmm8, -472(%rbp)
    movq $24, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -480(%rbp)
    movq $32, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -488(%rbp)
    movq $0, %rax
    movq %rax, -576(%rbp)
    movq $0, %rax
    movq %rax, -584(%rbp)
.L12_15:
    movq -424(%rbp), %r10
    movq (%r10), %rbx
    movq -576(%rbp), %rax
    cmpq %rbx, %rax
    jae .L12_17
.L12_16:
    movq -416(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -576(%rbp), %rcx
    leaq -248(%rbp), %rdi
    call lb_utf8_decode@PLT
    movq -432(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L12_18
    jmp .L12_19
.L12_18:
    movq -616(%rbp), %r10
    movq -440(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L12_20
.L12_19:
    leaq .Ltext_37(%rip), %rbx
    leaq -280(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $22, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_101(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_101(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_20:
    movq -440(%rbp), %r10
    movq -608(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -448(%rbp), %r11
    movl $0, 0(%r11)
    movb $0, 4(%r11)
    movq -456(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -464(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L12_21:
    movq -464(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L12_24
.L12_22:
    movq $5, %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_102(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -448(%rbp), %rax
    movq %rax, %r12
    addq %r14, %r12
    movq -576(%rbp), %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_102(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -416(%rbp), %r10
    movq (%r10), %r15
    movq -424(%rbp), %r10
    movq (%r10), %rbx
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_102(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r13, %rbx
    addq %r15, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq %r12, %r10
    movb %bl, (%r10)
.L12_23:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r14
    jmp .L12_21
.L12_24:
    movq -464(%rbp), %rax
    movq $5, %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_103(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -448(%rbp), %rax
    movq -464(%rbp), %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -584(%rbp), %rax
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
    movq -480(%rbp), %r10
    movsd (%r10), %xmm13
    movaps %xmm12, %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    movsd -408(%rbp), %xmm8
    mulsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    movsd -472(%rbp), %xmm8
    addsd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    movq -488(%rbp), %r10
    movsd (%r10), %xmm13
    movsd -408(%rbp), %xmm8
    mulsd %xmm13, %xmm8
    movapd %xmm8, %xmm13
    movsd -472(%rbp), %xmm8
    addsd %xmm13, %xmm8
    movapd %xmm8, %xmm13
    movapd %xmm12, %xmm0
    movapd %xmm13, %xmm1
    movq -568(%rbp), %rdi
    call cairo_move_to@PLT
    movq -568(%rbp), %rdi
    movq -448(%rbp), %rsi
    call cairo_show_text@PLT
    movq -464(%rbp), %rax
    movq -576(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_105(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -584(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_106(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %rbx, %rax
    movq %rax, -576(%rbp)
    movq %r12, %rax
    movq %rax, -584(%rbp)
    jmp .L12_15
.L12_17:
    movq -568(%rbp), %rdi
    call cairo_status@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L12_26
.L12_25:
    leaq -80(%rbp), %rbx
    leaq lb_fonts_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_107(%rip), %r12
    leaq -304(%rbp), %r13
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
    movq -568(%rbp), %rdi
    call cairo_destroy@PLT
    movq -560(%rbp), %rdi
    call cairo_surface_destroy@PLT
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
.L12_28:
    jmp .L12_27
.L12_26:
.L12_27:
    movq -560(%rbp), %rdi
    call cairo_surface_flush@PLT
    movq -560(%rbp), %rdi
    call cairo_image_surface_get_data@PLT
    movq %rax, -592(%rbp)
    movq -592(%rbp), %rax
    testq %rax, %rax
    jne .L12_29
    jmp .L12_30
.L12_30:
    leaq .Ltext_108(%rip), %rdi
    leaq .Ltext_86(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_29:
    movq -560(%rbp), %rdi
    call cairo_image_surface_get_stride@PLT
    movl %eax, -496(%rbp)
    movl -496(%rbp), %eax
    movslq %eax, %rax
    movq %rax, -504(%rbp)
    movq -384(%rbp), %r10
    movl (%r10), %r13d
    movl %r13d, %eax
    movq %rax, -512(%rbp)
    movq -368(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -520(%rbp)
    leaq -320(%rbp), %rax
    movq %rax, -528(%rbp)
    movq -528(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -536(%rbp)
    leaq -336(%rbp), %rax
    movq %rax, -544(%rbp)
    movq -544(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -552(%rbp)
    movq $0, %rax
    movq %rax, %r12
.L12_31:
    movq -512(%rbp), %rcx
    cmpq %rcx, %r12
    jae .L12_34
.L12_32:
    movq -368(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -600(%rbp)
    movq -520(%rbp), %r10
    movq (%r10), %r15
    movq -376(%rbp), %r10
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
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r15
    jb 1f
    leaq .Ltext_109(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r15, %r13
    jbe .L12_35
.L12_36:
    leaq .Ltext_109(%rip), %rdi
    leaq .Ltext_46(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_35:
    movq -600(%rbp), %rax
    movq %rax, %rbx
    addq %r13, %rbx
    movq %r15, %r14
    subq %r13, %r14
    movq -528(%rbp), %r10
    movq %rbx, (%r10)
    movq -536(%rbp), %r10
    movq %r14, (%r10)
    movq -504(%rbp), %rax
    movq %r12, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_109(%rip), %rdi
    leaq .Ltext_112(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -592(%rbp), %rcx
    addq %rcx, %rbx
    movq -376(%rbp), %r10
    movl (%r10), %r14d
    movl %r14d, %r14d
    movq -544(%rbp), %r10
    movq %rbx, (%r10)
    movq -552(%rbp), %r10
    movq %r14, (%r10)
    movq -376(%rbp), %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    movq -528(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -544(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %rbx, %r8
    call lb_memory_copy_0g1_u8@PLT
.L12_33:
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r12
    jmp .L12_31
.L12_34:
    movq -568(%rbp), %rdi
    call cairo_destroy@PLT
    movq -560(%rbp), %rdi
    call cairo_surface_destroy@PLT
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
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
    jne .L13_11
    jmp .L13_4
.L13_11:
    movl %r13d, %r14d
    jmp .L13_5
.L13_4:
    leaq -64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L13_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L13_1
    jmp .L13_2
.L13_1:
    leaq .Ltext_46(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_110(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L13_3
.L13_2:
.L13_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L13_7
.L13_6:
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
    jne .L13_9
    jmp .L13_10
.L13_10:
    leaq .Ltext_111(%rip), %rdi
    leaq .Ltext_86(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_9:
    jmp .L13_8
.L13_7:
.L13_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_fonts_0init
    .text

    .section .rodata
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
    .asciz "src/std/fonts/module.lucb:127:9"
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

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_fonts_failed
    .type lb_fonts_failed, @object
    .p2align 2
lb_fonts_failed:
    .zero 4

    .section .note.GNU-stack,"",@progbits
