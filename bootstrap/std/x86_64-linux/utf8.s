    .text

    .p2align 4
    .globl lb_utf8_0init
    .type lb_utf8_0init, @function
lb_utf8_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    leaq lb_utf8_16invalid_sequence(%rip), %rbx
    movl $208273462, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_utf8_19incomplete_sequence(%rip), %rbx
    movl $208273463, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_utf8_14encoded_length
    .type lb_utf8_14encoded_length, @function
lb_utf8_14encoded_length:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movl %edi, -56(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl $1114111, %ecx
    cmpl %ecx, %ebx
    seta %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_21
    jmp .L1_4
.L1_21:
    movl %r12d, %r13d
    jmp .L1_5
.L1_4:
    movl $55296, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_6
    jmp .L1_22
.L1_22:
    movl %r12d, %r13d
    jmp .L1_7
.L1_6:
    movl $57343, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L1_7:
    movzbl %r13b, %r12d
    movl %r12d, %r13d
.L1_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_1
    jmp .L1_2
.L1_1:
    leaq -72(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -40(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_8:
    jmp .L1_3
.L1_2:
.L1_3:
    movl $128, %ecx
    cmpl %ecx, %ebx
    jae .L1_10
.L1_9:
    leaq -88(%rbp), %rbx
    movq $1, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -40(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_12:
    jmp .L1_11
.L1_10:
.L1_11:
    movl $2048, %ecx
    cmpl %ecx, %ebx
    jae .L1_14
.L1_13:
    leaq -104(%rbp), %rbx
    movq $2, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -40(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_16:
    jmp .L1_15
.L1_14:
.L1_15:
    movl $65536, %ecx
    cmpl %ecx, %ebx
    jae .L1_18
.L1_17:
    movq $3, %rax
    movq %rax, %rbx
    jmp .L1_19
.L1_18:
    movq $4, %rax
    movq %rax, %rbx
.L1_19:
    leaq -120(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -40(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_20:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_utf8_decode
    .type lb_utf8_decode, @function
lb_utf8_decode:
    pushq %rbp
    movq %rsp, %rbp
    subq $384, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -88(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movq %rcx, -104(%rbp)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -352(%rbp)
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq -352(%rbp), %rax
    cmpq %r13, %rax
    jb .L2_2
.L2_1:
    leaq -128(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -72(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $24, %rdx
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
.L2_2:
.L2_3:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -360(%rbp)
    movq -352(%rbp), %rax
    movq -360(%rbp), %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movzbl %r15b, %r15d
    movl $128, %ecx
    cmpl %ecx, %r15d
    jae .L2_6
.L2_5:
    leaq -144(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movl %r15d, %r12d
    movl %r12d, %r12d
    leaq .Ltext_3(%rip), %r13
    movq %r12, %rdi
    movl $0, %esi
    movq %r13, %rdx
    call lb_core_7to_char@PLT
    movq %rax, %r12
    movq %rbx, %r10
    movl %r12d, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $1, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -168(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -72(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $24, %rdx
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
.L2_7:
    movl $194, %ecx
    cmpl %ecx, %r15d
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L2_12
    jmp .L2_47
.L2_47:
    movl %r12d, %r14d
    jmp .L2_13
.L2_12:
    movl $223, %ecx
    cmpl %ecx, %r15d
    setbe %al
    movzbl %al, %r14d
.L2_13:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L2_9
    jmp .L2_10
.L2_9:
    movl $31, %ecx
    movl %r15d, %r12d
    andl %ecx, %r12d
    movl %r12d, %r12d
    movq $2, %rax
    movq %rax, -368(%rbp)
    jmp .L2_11
.L2_10:
    movl $224, %ecx
    cmpl %ecx, %r15d
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L2_17
    jmp .L2_48
.L2_48:
    movl %r12d, %r14d
    jmp .L2_18
.L2_17:
    movl $239, %ecx
    cmpl %ecx, %r15d
    setbe %al
    movzbl %al, %r14d
.L2_18:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L2_14
    jmp .L2_15
.L2_14:
    movl $15, %ecx
    movl %r15d, %r12d
    andl %ecx, %r12d
    movl %r12d, %r12d
    movq $3, %rax
    movq %rax, %r14
    jmp .L2_16
.L2_15:
    movl $240, %ecx
    cmpl %ecx, %r15d
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L2_22
    jmp .L2_49
.L2_49:
    movl %r12d, %r14d
    jmp .L2_23
.L2_22:
    movl $244, %ecx
    cmpl %ecx, %r15d
    setbe %al
    movzbl %al, %r14d
.L2_23:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L2_19
    jmp .L2_20
.L2_19:
    movl $7, %ecx
    movl %r15d, %r12d
    andl %ecx, %r12d
    movl %r12d, %r12d
    jmp .L2_21
.L2_20:
    leaq -192(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -72(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $24, %rdx
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
.L2_21:
    movq $4, %rax
    movq %rax, %r14
.L2_16:
    movq %r14, %rax
    movq %rax, -368(%rbp)
.L2_11:
    movq -352(%rbp), %rcx
    movq %r13, %r15
    subq %rcx, %r15
    movq -368(%rbp), %rax
    cmpq %r15, %rax
    jbe .L2_26
.L2_25:
    leaq -216(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -72(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $24, %rdx
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
.L2_27:
    movl %r12d, %eax
    movl %eax, -376(%rbp)
    movq $1, %rax
    movq %rax, %r15
.L2_29:
    movq -368(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L2_31
.L2_30:
    movq -352(%rbp), %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_32(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -360(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movzbl %r12b, %r12d
    movl $192, %ecx
    movl %r12d, %r14d
    andl %ecx, %r14d
    movl $128, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L2_33
.L2_32:
    leaq -240(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -72(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $24, %rdx
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
.L2_34:
.L2_37:
    movl $6, %ecx
    movl -376(%rbp), %eax
    movl %eax, %r14d
    shll %cl, %r14d
    movl $63, %ecx
    movl %r12d, %ebx
    andl %ecx, %ebx
    movl %ebx, %ebx
    movl %ebx, %ecx
    movl %r14d, %ebx
    orl %ecx, %ebx
    movq $1, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movl %ebx, %eax
    movl %eax, -376(%rbp)
    movq %r14, %r15
    jmp .L2_29
.L2_31:
    movl -376(%rbp), %edi
    call lb_utf8_14encoded_length@PLT
    leaq -256(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -256(%rbp), %r12
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_38
    jmp .L2_39
.L2_38:
    movq %r12, %r10
    movq (%r10), %rbx
    jmp .L2_40
.L2_39:
    leaq -280(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -72(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $24, %rdx
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
.L2_40:
    movq -368(%rbp), %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L2_43
.L2_42:
    leaq -304(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -72(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $24, %rdx
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
.L2_43:
.L2_44:
    leaq -320(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movl -376(%rbp), %eax
    movl %eax, %r12d
    movl %r12d, %r12d
    leaq .Ltext_9(%rip), %r13
    movq %r12, %rdi
    movl $0, %esi
    movq %r13, %rdx
    call lb_core_7to_char@PLT
    movq %rax, %r12
    movq %rbx, %r10
    movl %r12d, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -368(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -344(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -72(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $24, %rdx
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
    .globl lb_utf8_valid
    .type lb_utf8_valid, @function
lb_utf8_valid:
    pushq %rbp
    movq %rsp, %rbp
    subq $224, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -56(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    leaq -104(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -104(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq -120(%rbp), %rax
    movq %rax, -224(%rbp)
    leaq -144(%rbp), %r13
    movq $16, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -200(%rbp)
    leaq -160(%rbp), %rax
    movq %rax, -208(%rbp)
    movq -224(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -216(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L3_2:
    movq %r12, %r10
    movq (%r10), %r14
    cmpq %r14, %r15
    jae .L3_4
.L3_3:
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %rcx
    leaq -144(%rbp), %rdi
    call lb_utf8_decode@PLT
    movq -200(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L3_5
    jmp .L3_6
.L3_5:
    movq %r13, %r10
    movq -208(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L3_7
.L3_6:
    leaq -176(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -88(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    leaq -72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L3_10
.L3_8:
.L3_7:
    movq -208(%rbp), %r10
    movq -224(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -216(%rbp), %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r14, %r15
    jmp .L3_2
.L3_4:
    leaq -192(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -88(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    leaq -72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L3_10
.L3_9:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_10:
    leaq -72(%rbp), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_1:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_utf8_encode
    .type lb_utf8_encode, @function
lb_utf8_encode:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movl %edi, -72(%rbp)
    leaq -88(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %edi
    call lb_utf8_14encoded_length@PLT
    leaq -104(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -104(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L4_1
    jmp .L4_2
.L4_1:
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -176(%rbp)
    jmp .L4_3
.L4_2:
    leaq -120(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -56(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_3:
    leaq -88(%rbp), %rax
    movq %rax, -184(%rbp)
    movq -184(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq -176(%rbp), %rax
    cmpq %r14, %rax
    jbe .L4_6
.L4_5:
    leaq -136(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -56(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_6:
.L4_7:
    movq -176(%rbp), %rax
    movq $1, %rcx
    cmpq %rcx, %rax
    jne .L4_10
.L4_9:
    movq -184(%rbp), %r10
    movq (%r10), %r12
    movq $0, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_32(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %ebx, %r15d
    movzbl %r15b, %r15d
    movq %r12, %r10
    movb %r15b, (%r10)
    leaq -152(%rbp), %r12
    movq $1, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    leaq -56(%rbp), %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r15, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_10:
.L4_11:
    movq -184(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -192(%rbp)
    movl %ebx, %eax
    movl %eax, -200(%rbp)
    movq -176(%rbp), %rax
    movq %rax, %r15
.L4_13:
    movq $1, %rcx
    cmpq %rcx, %r15
    jbe .L4_15
.L4_14:
    movq $1, %rcx
    movq %r15, %rbx
    subq %rcx, %rbx
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_32(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -192(%rbp), %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl -200(%rbp), %eax
    movl $63, %ecx
    movl %eax, %r12d
    andl %ecx, %r12d
    movl %r12d, %r12d
    movzbl %r12b, %r12d
    movl $128, %ecx
    orl %ecx, %r12d
    movq %r13, %r10
    movb %r12b, (%r10)
.L4_17:
    movl $6, %ecx
    movl -200(%rbp), %eax
    movl %eax, %r12d
    shrl %cl, %r12d
    movl %r12d, %eax
    movl %eax, -200(%rbp)
    movq %rbx, %r15
    jmp .L4_13
.L4_15:
    movq -176(%rbp), %rax
    movq $2, %rcx
    cmpq %rcx, %rax
    jne .L4_19
.L4_18:
    movl $192, %eax
    movl %eax, %ebx
    jmp .L4_20
.L4_19:
    movq -176(%rbp), %rax
    movq $3, %rcx
    cmpq %rcx, %rax
    jne .L4_22
.L4_21:
    movl $224, %eax
    movl %eax, %ebx
    jmp .L4_23
.L4_22:
    movl $240, %eax
    movl %eax, %ebx
.L4_23:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L4_20:
    movzbl %bl, %r12d
    movq -184(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_32(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movzbl %r12b, %r12d
    movl -200(%rbp), %eax
    movl %eax, %r15d
    movzbl %r15b, %r15d
    orl %r15d, %r12d
    movq %r13, %r10
    movb %r12b, (%r10)
    leaq -168(%rbp), %r12
    movq -176(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -56(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
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
    jne .L5_2
    jmp .L5_1
.L5_2:
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
.L5_1:
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
    jne .L5_5
.L5_4:
    leaq -112(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $128, %ecx
    cmpl %ecx, %r13d
    jae .L5_8
.L5_7:
    movl %r13d, %ebx
    movl %ebx, %ebx
    leaq .Ltext_19(%rip), %r12
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
.L5_8:
.L5_9:
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
    jne .L5_14
    jmp .L5_55
.L5_55:
    movl %r15d, %r14d
    jmp .L5_15
.L5_14:
    movl $223, %ecx
    cmpl %ecx, %r13d
    setbe %al
    movzbl %al, %r14d
.L5_15:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L5_11
    jmp .L5_12
.L5_11:
    movl $31, %ecx
    movl %r13d, %r14d
    andl %ecx, %r14d
    movl %r14d, %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    movl $1, %eax
    movq -216(%rbp), %r10
    movb %al, (%r10)
    jmp .L5_13
.L5_12:
    movl $224, %ecx
    cmpl %ecx, %r13d
    setae %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L5_19
    jmp .L5_56
.L5_56:
    movl %r14d, %r15d
    jmp .L5_20
.L5_19:
    movl $239, %ecx
    cmpl %ecx, %r13d
    setbe %al
    movzbl %al, %r15d
.L5_20:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L5_16
    jmp .L5_17
.L5_16:
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
    jne .L5_22
.L5_21:
    movl $160, %eax
    movq -232(%rbp), %r10
    movb %al, (%r10)
    jmp .L5_23
.L5_22:
    movl $237, %ecx
    cmpl %ecx, %r13d
    jne .L5_25
.L5_24:
    movl $159, %eax
    movq -240(%rbp), %r10
    movb %al, (%r10)
    jmp .L5_26
.L5_25:
.L5_26:
.L5_23:
    jmp .L5_18
.L5_17:
    movl $240, %ecx
    cmpl %ecx, %r13d
    setae %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L5_30
    jmp .L5_57
.L5_57:
    movl %r14d, %r15d
    jmp .L5_31
.L5_30:
    movl $244, %ecx
    cmpl %ecx, %r13d
    setbe %al
    movzbl %al, %r15d
.L5_31:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L5_27
    jmp .L5_28
.L5_27:
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
    jne .L5_33
.L5_32:
    movl $144, %eax
    movq -232(%rbp), %r10
    movb %al, (%r10)
    jmp .L5_34
.L5_33:
    movl $244, %ecx
    cmpl %ecx, %r13d
    jne .L5_36
.L5_35:
    movl $143, %eax
    movq -240(%rbp), %r10
    movb %al, (%r10)
    jmp .L5_37
.L5_36:
.L5_37:
.L5_34:
    jmp .L5_29
.L5_28:
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
    leaq .Ltext_20(%rip), %r14
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
.L5_29:
.L5_18:
.L5_13:
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
.L5_5:
.L5_6:
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
    jne .L5_58
    jmp .L5_43
.L5_58:
    movl %r15d, %ebx
    jmp .L5_44
.L5_43:
    movq $6, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    cmpl %ebx, %r14d
    seta %al
    movzbl %al, %ebx
.L5_44:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L5_40
    jmp .L5_41
.L5_40:
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
    leaq .Ltext_21(%rip), %r14
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
.L5_41:
.L5_42:
    movq %r12, %r10
    movl (%r10), %ebx
.L5_47:
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
    je .L5_48
.L5_49:
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_48:
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
    jne .L5_51
.L5_50:
    movl -272(%rbp), %eax
    movl %eax, %ebx
    movl %ebx, %ebx
    leaq .Ltext_25(%rip), %r12
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
.L5_51:
.L5_52:
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
    jne .L6_2
    jmp .L6_1
.L6_2:
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
.L6_3:
.L6_1:
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
    jne .L6_5
.L6_4:
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
    leaq .Ltext_27(%rip), %r13
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
.L6_7:
    jmp .L6_6
.L6_5:
.L6_6:
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
    jne .L7_1
    jmp .L7_4
.L7_4:
    movl %ebx, %r12d
    jmp .L7_2
.L7_1:
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
.L7_2:
    movzbl %r12b, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_3:
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
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
.L8_1:
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
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
    jne .L10_2
.L10_1:
    leaq -64(%rbp), %rbx
    leaq lb_utf8_16invalid_sequence(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_30(%rip), %r12
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
.L10_4:
    jmp .L10_3
.L10_2:
.L10_3:
    movl $2, %ecx
    cmpl %ecx, %ebx
    jne .L10_6
.L10_5:
    leaq -64(%rbp), %rbx
    leaq lb_utf8_19incomplete_sequence(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_31(%rip), %r12
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
.L10_8:
    jmp .L10_7
.L10_6:
.L10_7:
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
    .quad lb_utf8_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/utf8/scalars.lucb:14:5"
.Ltext_2:
    .asciz "src/std/utf8/scalars.lucb:22:5"
.Ltext_3:
    .asciz "src/std/utf8/scalars.lucb:24:9"
.Ltext_4:
    .asciz "src/std/utf8/scalars.lucb:38:5"
.Ltext_5:
    .asciz "src/std/utf8/scalars.lucb:42:9"
.Ltext_6:
    .asciz "shift count out of range"
.Ltext_7:
    .asciz "src/std/utf8/scalars.lucb:45:9"
.Ltext_8:
    .asciz "src/std/utf8/scalars.lucb:46:9"
.Ltext_9:
    .asciz "src/std/utf8/scalars.lucb:50:5"
.Ltext_10:
    .asciz "src/std/utf8/scalars.lucb:58:9"
.Ltext_11:
    .asciz "src/std/utf8/scalars.lucb:59:5"
.Ltext_12:
    .asciz "src/std/utf8/scalars.lucb:63:5"
.Ltext_13:
    .asciz "src/std/utf8/scalars.lucb:73:9"
.Ltext_14:
    .asciz "src/std/utf8/scalars.lucb:78:9"
.Ltext_15:
    .asciz "src/std/utf8/scalars.lucb:79:9"
.Ltext_16:
    .asciz "src/std/utf8/scalars.lucb:80:9"
.Ltext_17:
    .asciz "src/std/utf8/scalars.lucb:82:5"
.Ltext_18:
    .asciz "src/std/utf8/scalars.lucb:83:5"
.Ltext_19:
    .asciz "src/std/utf8/decoder.lucb:23:17"
.Ltext_20:
    .asciz "invalid UTF-8 leading byte"
.Ltext_21:
    .asciz "invalid UTF-8 continuation byte"
.Ltext_22:
    .asciz "src/std/utf8/decoder.lucb:50:9"
.Ltext_23:
    .asciz "integer overflow"
.Ltext_24:
    .asciz "src/std/utf8/decoder.lucb:51:9"
.Ltext_25:
    .asciz "src/std/utf8/decoder.lucb:55:13"
.Ltext_26:
    .asciz "src/std/utf8/decoder.lucb:56:9"
.Ltext_27:
    .asciz "the UTF-8 stream ends within a scalar"
.Ltext_28:
    .asciz "src/std/utf8/decoder.lucb:70:9"
.Ltext_29:
    .asciz "src/std/utf8/decoder.lucb:74:9"
.Ltext_30:
    .asciz "the UTF-8 decoder has rejected malformed input"
.Ltext_31:
    .asciz "the UTF-8 decoder has rejected incomplete input"
.Ltext_32:
    .asciz "index out of bounds"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_utf8_16invalid_sequence
    .type lb_utf8_16invalid_sequence, @object
    .p2align 2
lb_utf8_16invalid_sequence:
    .zero 4

    .bss
    .globl lb_utf8_19incomplete_sequence
    .type lb_utf8_19incomplete_sequence, @object
    .p2align 2
lb_utf8_19incomplete_sequence:
    .zero 4

    .section .note.GNU-stack,"",@progbits
