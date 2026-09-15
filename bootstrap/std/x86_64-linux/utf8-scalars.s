    .text

    .p2align 4
    .globl lb_utf8_scalars_0init
    .type lb_utf8_scalars_0init, @function
lb_utf8_scalars_0init:
    pushq %rbp
    movq %rsp, %rbp
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
    leaq .Ltext_19(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
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
    .globl lb_utf8_14invalid_offset
    .type lb_utf8_14invalid_offset, @function
lb_utf8_14invalid_offset:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -72(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -72(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq -88(%rbp), %rax
    movq %rax, -192(%rbp)
    leaq -112(%rbp), %r13
    movq $16, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -168(%rbp)
    leaq -128(%rbp), %rax
    movq %rax, -176(%rbp)
    movq -192(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -184(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L3_1:
    movq %r12, %r10
    movq (%r10), %r14
    cmpq %r14, %r15
    jae .L3_3
.L3_2:
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %rcx
    leaq -112(%rbp), %rdi
    call lb_utf8_decode@PLT
    movq -168(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L3_4
    jmp .L3_5
.L3_4:
    movq %r13, %r10
    movq -176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L3_6
.L3_5:
    leaq -144(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
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
.L3_7:
.L3_6:
    movq -176(%rbp), %r10
    movq -192(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -184(%rbp), %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_19(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r14, %r15
    jmp .L3_1
.L3_3:
    leaq -160(%rbp), %rbx
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
.L3_8:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_utf8_valid
    .type lb_utf8_valid, @function
lb_utf8_valid:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    leaq -24(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_utf8_14invalid_offset@PLT
    leaq -40(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -40(%rbp), %rbx
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_1:
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
    jne .L5_1
    jmp .L5_2
.L5_1:
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -176(%rbp)
    jmp .L5_3
.L5_2:
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
.L5_3:
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
    jbe .L5_6
.L5_5:
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
.L5_6:
.L5_7:
    movq -176(%rbp), %rax
    movq $1, %rcx
    cmpq %rcx, %rax
    jne .L5_10
.L5_9:
    movq -184(%rbp), %r10
    movq (%r10), %r12
    movq $0, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
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
.L5_10:
.L5_11:
    movq -184(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -192(%rbp)
    movl %ebx, %eax
    movl %eax, -200(%rbp)
    movq -176(%rbp), %rax
    movq %rax, %r15
.L5_13:
    movq $1, %rcx
    cmpq %rcx, %r15
    jbe .L5_15
.L5_14:
    movq $1, %rcx
    movq %r15, %rbx
    subq %rcx, %rbx
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
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
.L5_17:
    movl $6, %ecx
    movl -200(%rbp), %eax
    movl %eax, %r12d
    shrl %cl, %r12d
    movl %r12d, %eax
    movl %eax, -200(%rbp)
    movq %rbx, %r15
    jmp .L5_13
.L5_15:
    movq -176(%rbp), %rax
    movq $2, %rcx
    cmpq %rcx, %rax
    jne .L5_19
.L5_18:
    movl $192, %eax
    movl %eax, %ebx
    jmp .L5_20
.L5_19:
    movq -176(%rbp), %rax
    movq $3, %rcx
    cmpq %rcx, %rax
    jne .L5_22
.L5_21:
    movl $224, %eax
    movl %eax, %ebx
    jmp .L5_23
.L5_22:
    movl $240, %eax
    movl %eax, %ebx
.L5_23:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L5_20:
    movzbl %bl, %r12d
    movq -184(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_20(%rip), %rsi
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

    .section .init_array,"aw"
    .p2align 3
    .quad lb_utf8_scalars_0init
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
    .asciz "integer overflow"
.Ltext_20:
    .asciz "index out of bounds"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
