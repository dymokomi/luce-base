    .text

    .p2align 4
    .globl lb_utf8_decoder_0init
    .type lb_utf8_decoder_0init, @function
lb_utf8_decoder_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_utf8_Decoder_push
    .type lb_utf8_Decoder_push, @function
lb_utf8_Decoder_push:
    pushq %rbp
    movq %rsp, %rbp
    subq $272, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    movl %edx, -112(%rbp)
    leaq -96(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rsi
    leaq -144(%rbp), %rdi
    call lb_utf8_Decoder_13check_failure@PLT
    leaq -144(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_2
    jmp .L1_1
.L1_2:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
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
.L1_1:
    movq $4, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -216(%rbp)
    movq -216(%rbp), %r10
    movzbl (%r10), %eax
    movl %eax, -224(%rbp)
    movl -224(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    jne .L1_5
.L1_4:
    leaq -112(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $128, %ecx
    cmpl %ecx, %r13d
    jae .L1_8
.L1_7:
    movl %r13d, %ebx
    movl %ebx, %ebx
    leaq .Ltext_0(%rip), %r12
    movq %rbx, %rdi
    movl $0, %esi
    movq %r12, %rdx
    call lb_core_7to_char@PLT
    movq %rax, %rbx
    leaq -152(%rbp), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -88(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
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
.L1_8:
.L1_9:
    movq $5, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -232(%rbp)
    movl $128, %eax
    movq -232(%rbp), %r10
    movb %al, (%r10)
    movq $6, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -240(%rbp)
    movl $191, %eax
    movq -240(%rbp), %r10
    movb %al, (%r10)
    movl $194, %ecx
    cmpl %ecx, %r13d
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L1_14
    jmp .L1_55
.L1_55:
    movl %r15d, %r14d
    jmp .L1_15
.L1_14:
    movl $223, %ecx
    cmpl %ecx, %r13d
    setbe %al
    movzbl %al, %r14d
.L1_15:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L1_11
    jmp .L1_12
.L1_11:
    movl $31, %ecx
    movl %r13d, %r14d
    andl %ecx, %r14d
    movl %r14d, %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    movl $1, %eax
    movq -216(%rbp), %r10
    movb %al, (%r10)
    jmp .L1_13
.L1_12:
    movl $224, %ecx
    cmpl %ecx, %r13d
    setae %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_19
    jmp .L1_56
.L1_56:
    movl %r14d, %r15d
    jmp .L1_20
.L1_19:
    movl $239, %ecx
    cmpl %ecx, %r13d
    setbe %al
    movzbl %al, %r15d
.L1_20:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L1_16
    jmp .L1_17
.L1_16:
    movl $15, %ecx
    movl %r13d, %r14d
    andl %ecx, %r14d
    movl %r14d, %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    movl $2, %eax
    movq -216(%rbp), %r10
    movb %al, (%r10)
    movl $224, %ecx
    cmpl %ecx, %r13d
    jne .L1_22
.L1_21:
    movl $160, %eax
    movq -232(%rbp), %r10
    movb %al, (%r10)
    jmp .L1_23
.L1_22:
    movl $237, %ecx
    cmpl %ecx, %r13d
    jne .L1_25
.L1_24:
    movl $159, %eax
    movq -240(%rbp), %r10
    movb %al, (%r10)
    jmp .L1_26
.L1_25:
.L1_26:
.L1_23:
    jmp .L1_18
.L1_17:
    movl $240, %ecx
    cmpl %ecx, %r13d
    setae %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_30
    jmp .L1_57
.L1_57:
    movl %r14d, %r15d
    jmp .L1_31
.L1_30:
    movl $244, %ecx
    cmpl %ecx, %r13d
    setbe %al
    movzbl %al, %r15d
.L1_31:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L1_27
    jmp .L1_28
.L1_27:
    movl $7, %ecx
    movl %r13d, %r14d
    andl %ecx, %r14d
    movl %r14d, %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    movl $3, %eax
    movq -216(%rbp), %r10
    movb %al, (%r10)
    movl $240, %ecx
    cmpl %ecx, %r13d
    jne .L1_33
.L1_32:
    movl $144, %eax
    movq -232(%rbp), %r10
    movb %al, (%r10)
    jmp .L1_34
.L1_33:
    movl $244, %ecx
    cmpl %ecx, %r13d
    jne .L1_36
.L1_35:
    movl $143, %eax
    movq -240(%rbp), %r10
    movb %al, (%r10)
    jmp .L1_37
.L1_36:
.L1_37:
.L1_34:
    jmp .L1_29
.L1_28:
    movq $7, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    leaq lb_utf8_16invalid_sequence(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_1(%rip), %r14
    leaq -168(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $26, %rax
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
.L1_29:
.L1_18:
.L1_13:
    leaq -176(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    leaq -88(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_5:
.L1_6:
    leaq -112(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq $5, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -248(%rbp)
    movq -248(%rbp), %r10
    movzbl (%r10), %r15d
    cmpl %r15d, %r14d
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L1_58
    jmp .L1_43
.L1_58:
    movl %r15d, %ebx
    jmp .L1_44
.L1_43:
    movq $6, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    cmpl %ebx, %r14d
    seta %al
    movzbl %al, %ebx
.L1_44:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L1_40
    jmp .L1_41
.L1_40:
    movq $7, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    leaq lb_utf8_16invalid_sequence(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_2(%rip), %r14
    leaq -192(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $31, %rax
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
.L1_41:
.L1_42:
    movq %r12, %r10
    movl (%r10), %ebx
.L1_47:
    movl $6, %ecx
    movl %ebx, %r15d
    shll %cl, %r15d
    movl $63, %ecx
    movl %r14d, %eax
    andl %ecx, %eax
    movl %eax, -256(%rbp)
    movl -256(%rbp), %eax
    movl %eax, %eax
    movq %rax, -264(%rbp)
    movl -264(%rbp), %ecx
    movl %r15d, %eax
    orl %ecx, %eax
    movl %eax, -272(%rbp)
    movl -272(%rbp), %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movl -224(%rbp), %eax
    movl $1, %ecx
    movl %eax, %r13d
    subl %ecx, %r13d
    movzbl %r13b, %r15d
    cmpl %r13d, %r15d
    je .L1_48
.L1_49:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_48:
    movq -216(%rbp), %r10
    movb %r13b, (%r10)
    movl $128, %eax
    movq -248(%rbp), %r10
    movb %al, (%r10)
    movq $6, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $191, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -216(%rbp), %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L1_51
.L1_50:
    movl -272(%rbp), %eax
    movl %eax, %ebx
    movl %ebx, %ebx
    leaq .Ltext_7(%rip), %r12
    movq %rbx, %rdi
    movl $0, %esi
    movq %r12, %rdx
    call lb_core_7to_char@PLT
    movq %rax, %rbx
    leaq -200(%rbp), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -88(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
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
.L1_51:
.L1_52:
    leaq -208(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    leaq -88(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_utf8_Decoder_finish
    .type lb_utf8_Decoder_finish, @function
lb_utf8_Decoder_finish:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -80(%rbp)
    leaq -80(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rsi
    leaq -112(%rbp), %rdi
    call lb_utf8_Decoder_13check_failure@PLT
    leaq -112(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_2
    jmp .L2_1
.L2_2:
    leaq -72(%rbp), %rbx
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_3:
.L2_1:
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L2_5
.L2_4:
    movq $7, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $2, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -72(%rbp), %rbx
    leaq lb_utf8_19incomplete_sequence(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_10(%rip), %r13
    leaq -128(%rbp), %r14
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
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_7:
    jmp .L2_6
.L2_5:
.L2_6:
    leaq -72(%rbp), %rbx
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
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_utf8_Decoder_10is_pending
    .type lb_utf8_Decoder_10is_pending, @function
lb_utf8_Decoder_10is_pending:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -24(%rbp)
    leaq -24(%rbp), %r10
    movq (%r10), %r12
    movq $7, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L3_1
    jmp .L3_4
.L3_4:
    movl %ebx, %r12d
    jmp .L3_2
.L3_1:
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl %ebx, %r12d
.L3_2:
    movzbl %r12b, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_3:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_utf8_Decoder_9is_failed
    .type lb_utf8_Decoder_9is_failed, @function
lb_utf8_Decoder_9is_failed:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -16(%rbp)
    leaq -16(%rbp), %r10
    movq (%r10), %rbx
    movq $7, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_1:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_utf8_Decoder_reset
    .type lb_utf8_Decoder_reset, @function
lb_utf8_Decoder_reset:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -24(%rbp)
    leaq -24(%rbp), %r10
    movq (%r10), %r12
    movl $0, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $5, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $6, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $7, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_utf8_Decoder_13check_failure
    .type lb_utf8_Decoder_13check_failure, @function
lb_utf8_Decoder_13check_failure:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %rsi, -72(%rbp)
    leaq -72(%rbp), %r10
    movq (%r10), %rbx
    movq $7, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $1, %ecx
    cmpl %ecx, %ebx
    jne .L6_2
.L6_1:
    leaq -64(%rbp), %rbx
    leaq lb_utf8_16invalid_sequence(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_13(%rip), %r12
    leaq -88(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $46, %rax
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_4:
    jmp .L6_3
.L6_2:
.L6_3:
    movl $2, %ecx
    cmpl %ecx, %ebx
    jne .L6_6
.L6_5:
    leaq -64(%rbp), %rbx
    leaq lb_utf8_19incomplete_sequence(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_14(%rip), %r12
    leaq -104(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $47, %rax
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_8:
    jmp .L6_7
.L6_6:
.L6_7:
    leaq -64(%rbp), %rbx
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
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_utf8_decoder_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/utf8/decoder.lucb:22:17"
.Ltext_1:
    .asciz "invalid UTF-8 leading byte"
.Ltext_2:
    .asciz "invalid UTF-8 continuation byte"
.Ltext_3:
    .asciz "shift count out of range"
.Ltext_4:
    .asciz "src/std/utf8/decoder.lucb:49:9"
.Ltext_5:
    .asciz "integer overflow"
.Ltext_6:
    .asciz "src/std/utf8/decoder.lucb:50:9"
.Ltext_7:
    .asciz "src/std/utf8/decoder.lucb:54:13"
.Ltext_8:
    .asciz "unreachable"
.Ltext_9:
    .asciz "src/std/utf8/decoder.lucb:55:9"
.Ltext_10:
    .asciz "the UTF-8 stream ends within a scalar"
.Ltext_11:
    .asciz "src/std/utf8/decoder.lucb:69:9"
.Ltext_12:
    .asciz "src/std/utf8/decoder.lucb:73:9"
.Ltext_13:
    .asciz "the UTF-8 decoder has rejected malformed input"
.Ltext_14:
    .asciz "the UTF-8 decoder has rejected incomplete input"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
