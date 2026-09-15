    .text

    .p2align 4
    .globl lb_net_11http_encode_0init
    .type lb_net_11http_encode_0init, @function
lb_net_11http_encode_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_16http_encode_head
    .type lb_net_16http_encode_head, @function
lb_net_16http_encode_head:
    pushq %rbp
    movq %rsp, %rbp
    subq $5808, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -112(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq 16(%rbp), %r10
    leaq -208(%rbp), %r11
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
    movups 80(%r10), %xmm8
    movups %xmm8, 80(%r11)
    leaq -232(%rbp), %rax
    movq %rax, -5400(%rbp)
    leaq -112(%rbp), %rax
    movq %rax, -5408(%rbp)
    movq -5408(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -256(%rbp), %rdi
    call lb_io_SliceWriter_over@PLT
    leaq -256(%rbp), %rax
    movq %rax, -5416(%rbp)
    movq -5416(%rbp), %r10
    movq -5400(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq -320(%rbp), %rax
    movq %rax, -5424(%rbp)
    movq -5424(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    leaq -208(%rbp), %rax
    movq %rax, -5432(%rbp)
    movq -5432(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -5768(%rbp)
    leaq .Ltext_0(%rip), %r14
    leaq -336(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq $8, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq -5768(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -5440(%rbp)
    movq -5440(%rbp), %r10
    movq (%r10), %r12
    movq $8, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L1_4
    jmp .L1_170
.L1_170:
    movl %ebx, %r12d
    jmp .L1_5
.L1_4:
    movq -5768(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    movq %r14, %rsi
    movq %r12, %rdx
    call memcmp@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl %ebx, %r12d
.L1_5:
    movzbl %r12b, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L1_6
    jmp .L1_171
.L1_171:
    movl %ebx, %r12d
    jmp .L1_7
.L1_6:
    leaq .Ltext_1(%rip), %rbx
    leaq -352(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $8, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -5440(%rbp), %r10
    movq (%r10), %r12
    movq $8, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_8
    jmp .L1_172
.L1_172:
    movl %r14d, %ebx
    jmp .L1_9
.L1_8:
    movq -5768(%rbp), %r10
    movq (%r10), %r14
    movq %r14, %rdi
    movq %rbx, %rsi
    movq %r12, %rdx
    call memcmp@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %ebx
.L1_9:
    movzbl %bl, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L1_7:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L1_1
    jmp .L1_2
.L1_1:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_16http_unsupported(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
    leaq -368(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
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
.L1_10:
    jmp .L1_3
.L1_2:
.L1_3:
    movq -5432(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, -5448(%rbp)
    movq -5448(%rbp), %r10
    movzwl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_12
.L1_11:
    movq -5432(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_net_10http_token@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_173
    jmp .L1_17
.L1_173:
    movl %r12d, %r14d
    jmp .L1_18
.L1_17:
    movq -5432(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq -5432(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_net_25http_request_target_valid@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L1_18:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L1_14
    jmp .L1_15
.L1_14:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_3(%rip), %r13
    leaq -384(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
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
.L1_19:
    jmp .L1_16
.L1_15:
.L1_16:
    leaq -400(%rbp), %r12
    movq -5400(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq lb_vt_io_SliceWriter_Writer(%rip), %r14
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -5432(%rbp), %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -432(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -432(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_21
    jmp .L1_20
.L1_21:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
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
.L1_22:
.L1_20:
    leaq -448(%rbp), %rbx
    movq -5400(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    leaq .Ltext_4(%rip), %r12
    leaq -464(%rbp), %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $1, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -496(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -496(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_24
    jmp .L1_23
.L1_24:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
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
.L1_25:
.L1_23:
    leaq -512(%rbp), %rbx
    movq -5400(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq -5432(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -544(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -544(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_27
    jmp .L1_26
.L1_27:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
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
.L1_28:
.L1_26:
    leaq -560(%rbp), %rbx
    movq -5400(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    leaq -576(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $1, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -608(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -608(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_30
    jmp .L1_29
.L1_30:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
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
.L1_31:
.L1_29:
    leaq -624(%rbp), %rbx
    movq -5400(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -5768(%rbp), %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -656(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -656(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_33
    jmp .L1_32
.L1_33:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
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
.L1_34:
.L1_32:
    leaq -672(%rbp), %rbx
    movq -5400(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    leaq .Ltext_5(%rip), %r12
    leaq -688(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $2, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -720(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -720(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_36
    jmp .L1_35
.L1_36:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
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
.L1_37:
.L1_35:
    jmp .L1_13
.L1_12:
    movl $100, %ecx
    cmpl %ecx, %r12d
    setb %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L1_174
    jmp .L1_41
.L1_174:
    movl %ebx, %r12d
    jmp .L1_42
.L1_41:
    movl $599, %ecx
    cmpl %ecx, %r12d
    seta %al
    movzbl %al, %ebx
    movl %ebx, %r12d
.L1_42:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L1_38
    jmp .L1_39
.L1_38:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_6(%rip), %r13
    leaq -736(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
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
.L1_43:
    jmp .L1_40
.L1_39:
.L1_40:
    leaq -752(%rbp), %rbx
    movq -5400(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_vt_io_SliceWriter_Writer(%rip), %rax
    movq %rax, -5456(%rbp)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq -5456(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq -768(%rbp), %rax
    movq %rax, -5464(%rbp)
    movq %rbx, %r10
    movq -5464(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -784(%rbp), %rbx
    movq -5424(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq $64, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -808(%rbp), %rbx
    movq -5424(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $64, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq $0, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq -5768(%rbp), %r10
    movq (%r10), %r15
    movq -5440(%rbp), %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r15, %rsi
    movq %r12, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r12d
    leaq .Ltext_4(%rip), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $1, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r12d
    movq -5448(%rbp), %r10
    movzwl (%r10), %r12d
    movl %r12d, %r12d
    movq %rbx, %rdi
    movq %r12, %rsi
    call lb_core_10format_u64@PLT
    movl %eax, %r12d
    leaq .Ltext_7(%rip), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $3, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r12d
    leaq -856(%rbp), %r15
    movq %r14, %r10
    movq (%r10), %r12
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jbe .L1_45
.L1_44:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_8(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $60, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_46
.L1_45:
    movq %rbx, %rdi
    call lb_core_13format_finish@PLT
    leaq -872(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -872(%rbp), %r12
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L1_46:
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_48
    jmp .L1_47
.L1_48:
    movq $16, %rcx
    movq %r15, %rbx
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
.L1_49:
.L1_47:
    movq -5464(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -904(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -904(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_51
    jmp .L1_50
.L1_51:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
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
.L1_52:
.L1_50:
.L1_13:
    movq -5432(%rbp), %rax
    movq $56, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -5472(%rbp)
    leaq -936(%rbp), %r13
    leaq .Ltext_9(%rip), %rax
    movq %rax, -5480(%rbp)
    leaq -952(%rbp), %rax
    movq %rax, -5488(%rbp)
    movq -5488(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -5496(%rbp)
    leaq .Ltext_10(%rip), %rax
    movq %rax, -5504(%rbp)
    leaq -968(%rbp), %rax
    movq %rax, -5512(%rbp)
    movq -5512(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -5520(%rbp)
    leaq .Ltext_11(%rip), %rax
    movq %rax, -5528(%rbp)
    leaq -984(%rbp), %rax
    movq %rax, -5536(%rbp)
    movq -5536(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -5544(%rbp)
    leaq -1016(%rbp), %rax
    movq %rax, -5552(%rbp)
    leaq lb_vt_io_SliceWriter_Writer(%rip), %rax
    movq %rax, -5560(%rbp)
    movq -5552(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -5568(%rbp)
    leaq -1048(%rbp), %rax
    movq %rax, -5776(%rbp)
    movq -5776(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -5576(%rbp)
    leaq -1064(%rbp), %rax
    movq %rax, -5584(%rbp)
    movq -5584(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -5592(%rbp)
    leaq .Ltext_13(%rip), %rax
    movq %rax, -5600(%rbp)
    leaq -1080(%rbp), %rax
    movq %rax, -5608(%rbp)
    movq -5608(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -5616(%rbp)
    leaq -1112(%rbp), %rax
    movq %rax, -5784(%rbp)
    movq -5784(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -5624(%rbp)
    leaq -1128(%rbp), %rax
    movq %rax, -5632(%rbp)
    movq -5632(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -5640(%rbp)
    movq $16, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -5648(%rbp)
    leaq -1160(%rbp), %rax
    movq %rax, -5792(%rbp)
    movq -5792(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -5656(%rbp)
    leaq -1176(%rbp), %rax
    movq %rax, -5664(%rbp)
    movq -5664(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -5672(%rbp)
    leaq .Ltext_5(%rip), %rax
    movq %rax, -5680(%rbp)
    leaq -1192(%rbp), %rax
    movq %rax, -5688(%rbp)
    movq -5688(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -5696(%rbp)
    leaq -1224(%rbp), %rax
    movq %rax, -5800(%rbp)
    movq -5800(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -5704(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L1_53:
    movq -5472(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L1_56
.L1_54:
    movq $32, %rcx
    movq %r14, %r15
    imulq %rcx, %r15
    movq %r15, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    subq $32, %rsp
    movq %r13, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    call lb_net_16http_field_valid@PLT
    addq $32, %rsp
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L1_175
    jmp .L1_60
.L1_175:
    movl %r15d, %ebx
    jmp .L1_61
.L1_60:
    movq -5480(%rbp), %rax
    movq -5488(%rbp), %r10
    movq %rax, (%r10)
    movq $14, %rax
    movq -5496(%rbp), %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -5488(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_net_10http_equal@PLT
    movl %eax, %ebx
.L1_61:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L1_176
    jmp .L1_62
.L1_176:
    movl %r15d, %ebx
    jmp .L1_63
.L1_62:
    movq -5504(%rbp), %rax
    movq -5512(%rbp), %r10
    movq %rax, (%r10)
    movq $17, %rax
    movq -5520(%rbp), %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -5512(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_net_10http_equal@PLT
    movl %eax, %ebx
.L1_63:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L1_177
    jmp .L1_64
.L1_177:
    movl %r15d, %ebx
    jmp .L1_65
.L1_64:
    movq -5528(%rbp), %rax
    movq -5536(%rbp), %r10
    movq %rax, (%r10)
    movq $10, %rax
    movq -5544(%rbp), %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -5536(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_net_10http_equal@PLT
    movl %eax, %ebx
.L1_65:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L1_57
    jmp .L1_58
.L1_57:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_12(%rip), %r13
    leaq -1000(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
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
.L1_66:
    jmp .L1_59
.L1_58:
.L1_59:
    movq -5400(%rbp), %rax
    movq -5552(%rbp), %r10
    movq %rax, (%r10)
    movq -5560(%rbp), %rax
    movq -5568(%rbp), %r10
    movq %rax, (%r10)
    movq -5552(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -1048(%rbp), %rdi
    call lb_io_9write_all@PLT
    movq -5576(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_68
    jmp .L1_67
.L1_68:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -5776(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
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
.L1_69:
.L1_67:
    movq -5400(%rbp), %rax
    movq -5584(%rbp), %r10
    movq %rax, (%r10)
    movq -5560(%rbp), %rax
    movq -5592(%rbp), %r10
    movq %rax, (%r10)
    movq -5600(%rbp), %rax
    movq -5608(%rbp), %r10
    movq %rax, (%r10)
    movq $2, %rax
    movq -5616(%rbp), %r10
    movq %rax, (%r10)
    movq -5584(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -5608(%rbp), %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -1112(%rbp), %rdi
    call lb_io_9write_all@PLT
    movq -5624(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_71
    jmp .L1_70
.L1_71:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -5784(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
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
.L1_72:
.L1_70:
    movq -5400(%rbp), %rax
    movq -5632(%rbp), %r10
    movq %rax, (%r10)
    movq -5560(%rbp), %rax
    movq -5640(%rbp), %r10
    movq %rax, (%r10)
    movq -5632(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -5648(%rbp), %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -1160(%rbp), %rdi
    call lb_io_9write_all@PLT
    movq -5656(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_74
    jmp .L1_73
.L1_74:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -5792(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
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
.L1_75:
.L1_73:
    movq -5400(%rbp), %rax
    movq -5664(%rbp), %r10
    movq %rax, (%r10)
    movq -5560(%rbp), %rax
    movq -5672(%rbp), %r10
    movq %rax, (%r10)
    movq -5680(%rbp), %rax
    movq -5688(%rbp), %r10
    movq %rax, (%r10)
    movq $2, %rax
    movq -5696(%rbp), %r10
    movq %rax, (%r10)
    movq -5664(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -5688(%rbp), %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -1224(%rbp), %rdi
    call lb_io_9write_all@PLT
    movq -5704(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_77
    jmp .L1_76
.L1_77:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -5800(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
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
.L1_78:
.L1_76:
.L1_55:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r14
    jmp .L1_53
.L1_56:
    movq -5448(%rbp), %r10
    movzwl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    seta %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_79
    jmp .L1_178
.L1_178:
    movl %r12d, %ebx
    jmp .L1_80
.L1_79:
    movl $200, %ecx
    cmpl %ecx, %ebx
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_179
    jmp .L1_81
.L1_179:
    movl %r12d, %ebx
    jmp .L1_82
.L1_81:
    movl $204, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L1_82:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L1_180
    jmp .L1_83
.L1_180:
    movl %r12d, %ebx
    jmp .L1_84
.L1_83:
    leaq .Ltext_14(%rip), %rbx
    leaq -1240(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $7, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -5432(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $7, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L1_85
    jmp .L1_181
.L1_181:
    movl %r13d, %ebx
    jmp .L1_86
.L1_85:
    movq -5432(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r12, %rdx
    call memcmp@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L1_86:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L1_87
    jmp .L1_182
.L1_182:
    movl %r12d, %ebx
    jmp .L1_88
.L1_87:
    movq -5448(%rbp), %r10
    movzwl (%r10), %ebx
    movl $300, %ecx
    cmpl %ecx, %ebx
    setb %al
    movzbl %al, %ebx
.L1_88:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L1_84:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L1_80:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    testl %r12d, %r12d
    jne .L1_92
    jmp .L1_183
.L1_183:
    movl %r12d, %ebx
    jmp .L1_93
.L1_92:
    movq -5432(%rbp), %rax
    movq $72, %rcx
    movq %rax, %rbx
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
.L1_93:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L1_94
    jmp .L1_184
.L1_184:
    movl %r13d, %ebx
    jmp .L1_95
.L1_94:
    movq -5432(%rbp), %rax
    movq $72, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $4, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L1_95:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L1_89
    jmp .L1_90
.L1_89:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_15(%rip), %r13
    leaq -1256(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $38, %rax
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
.L1_96:
    jmp .L1_91
.L1_90:
.L1_91:
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_98
.L1_97:
    movq -5448(%rbp), %r10
    movzwl (%r10), %ebx
    movl $304, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_103
    jmp .L1_185
.L1_185:
    movl %r12d, %r13d
    jmp .L1_104
.L1_103:
    movq -5432(%rbp), %rax
    movq $72, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L1_104:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_100
    jmp .L1_101
.L1_100:
    jmp .L1_102
.L1_101:
    movq -5432(%rbp), %rax
    movq $72, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %eax
    movl %eax, -5712(%rbp)
    movl -5712(%rbp), %eax
    movl $1, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L1_186
    jmp .L1_108
.L1_186:
    movl %r13d, %r14d
    jmp .L1_109
.L1_108:
    movl -5712(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r14d
.L1_109:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L1_105
    jmp .L1_106
.L1_105:
    testl %r13d, %r13d
    jne .L1_110
    jmp .L1_111
.L1_110:
    movq -5432(%rbp), %rax
    movq $80, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    jmp .L1_112
.L1_111:
    movq $0, %rax
    movq %rax, %rbx
.L1_112:
    leaq -1272(%rbp), %rax
    movq %rax, -5720(%rbp)
    movq -5400(%rbp), %rax
    movq -5720(%rbp), %r10
    movq %rax, (%r10)
    leaq lb_vt_io_SliceWriter_Writer(%rip), %rax
    movq %rax, -5728(%rbp)
    movq -5720(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq -5728(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq -1288(%rbp), %rax
    movq %rax, -5736(%rbp)
    movq -5720(%rbp), %r10
    movq -5736(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -1304(%rbp), %rax
    movq %rax, -5744(%rbp)
    movq -5424(%rbp), %rax
    movq -5744(%rbp), %r10
    movq %rax, (%r10)
    movq -5744(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -5752(%rbp)
    movq $64, %rax
    movq -5752(%rbp), %r10
    movq %rax, (%r10)
    leaq -1328(%rbp), %rax
    movq %rax, -5760(%rbp)
    movq -5424(%rbp), %rax
    movq -5760(%rbp), %r10
    movq %rax, (%r10)
    movq -5760(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq $64, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq -5760(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq $0, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq .Ltext_16(%rip), %r13
    movq -5760(%rbp), %rdi
    movq %r13, %rsi
    movq $16, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r12d
    movq -5760(%rbp), %rdi
    movq %rbx, %rsi
    call lb_core_10format_u64@PLT
    movl %eax, %ebx
    leaq .Ltext_5(%rip), %r13
    movq -5760(%rbp), %rdi
    movq %r13, %rsi
    movq $2, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq -1376(%rbp), %r12
    movq %r15, %r10
    movq (%r10), %r13
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jbe .L1_114
.L1_113:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_8(%rip), %r13
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $60, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_115
.L1_114:
    movq -5760(%rbp), %rdi
    call lb_core_13format_finish@PLT
    leaq -1392(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -1392(%rbp), %rbx
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
.L1_115:
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_117
    jmp .L1_116
.L1_117:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -96(%rbp), %r13
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
.L1_118:
.L1_116:
    movq -5736(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -1424(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -1424(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_120
    jmp .L1_119
.L1_120:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
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
.L1_121:
.L1_119:
    jmp .L1_107
.L1_106:
    movl -5712(%rbp), %eax
    movl $2, %ecx
    cmpl %ecx, %eax
    jne .L1_123
.L1_122:
    leaq .Ltext_1(%rip), %rbx
    leaq -1440(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq $8, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -5440(%rbp), %r10
    movq (%r10), %r12
    movq $8, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L1_128
    jmp .L1_187
.L1_187:
    movl %r13d, %ebx
    jmp .L1_129
.L1_128:
    movq -5768(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r12, %rdx
    call memcmp@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L1_129:
    movzbl %bl, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_126
.L1_125:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_17(%rip), %r13
    leaq -1456(%rbp), %r14
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
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
.L1_130:
    jmp .L1_127
.L1_126:
.L1_127:
    leaq -1472(%rbp), %rbx
    movq -5400(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_vt_io_SliceWriter_Writer(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq .Ltext_18(%rip), %r12
    leaq -1488(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $28, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -1520(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -1520(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_132
    jmp .L1_131
.L1_132:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
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
.L1_133:
.L1_131:
    jmp .L1_124
.L1_123:
    movl -5712(%rbp), %eax
    movl $3, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_188
    jmp .L1_137
.L1_188:
    movl %r12d, %ebx
    jmp .L1_138
.L1_137:
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L1_138:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L1_134
    jmp .L1_135
.L1_134:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_19(%rip), %r13
    leaq -1536(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $29, %rax
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
.L1_139:
    jmp .L1_136
.L1_135:
.L1_136:
.L1_124:
.L1_107:
.L1_102:
    jmp .L1_99
.L1_98:
.L1_99:
    movq -5432(%rbp), %rax
    movq $88, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_143
    jmp .L1_189
.L1_189:
    movl %ebx, %r12d
    jmp .L1_144
.L1_143:
    movq -5432(%rbp), %rax
    movq $72, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $3, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L1_144:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L1_140
    jmp .L1_141
.L1_140:
    movq -5432(%rbp), %rax
    movq $90, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_145
    jmp .L1_146
.L1_145:
    leaq -1552(%rbp), %rbx
    movq -5400(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_vt_io_SliceWriter_Writer(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq .Ltext_20(%rip), %r12
    leaq -1568(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $21, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -1600(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -1600(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_149
    jmp .L1_148
.L1_149:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
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
.L1_150:
.L1_148:
    jmp .L1_147
.L1_146:
    leaq -1616(%rbp), %rbx
    movq -5400(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_vt_io_SliceWriter_Writer(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq .Ltext_21(%rip), %r12
    leaq -1632(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $24, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -1664(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -1664(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_152
    jmp .L1_151
.L1_152:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
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
.L1_153:
.L1_151:
.L1_147:
    jmp .L1_142
.L1_141:
    leaq -1680(%rbp), %rbx
    movq -5400(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_vt_io_SliceWriter_Writer(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq .Ltext_22(%rip), %r12
    leaq -1696(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $19, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -1728(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -1728(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_155
    jmp .L1_154
.L1_155:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
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
.L1_156:
.L1_154:
.L1_142:
    leaq -1744(%rbp), %rbx
    movq -5400(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_vt_io_SliceWriter_Writer(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq .Ltext_5(%rip), %r12
    leaq -1760(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $2, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -1792(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -1792(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_158
    jmp .L1_157
.L1_158:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
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
.L1_159:
.L1_157:
    leaq -4992(%rbp), %rbx
    movq %rbx, %rdi
    xorl %esi, %esi
    movq $3200, %rdx
    call memset@PLT
    leaq -5024(%rbp), %r12
    leaq -5056(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $-1, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $32768, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $8192, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $100, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq -5448(%rbp), %r10
    movzwl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L1_161
.L1_160:
    movq -5400(%rbp), %rdi
    call lb_io_SliceWriter_written@PLT
    leaq -5072(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -5072(%rbp), %r13
    leaq -5088(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $100, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %r12, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    leaq -5216(%rbp), %rdi
    call lb_net_18http_parse_request@PLT
    addq $32, %rsp
    leaq -5216(%rbp), %r14
    movq $120, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_164
    jmp .L1_163
.L1_164:
    movq $96, %rcx
    movq %r14, %rbx
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
.L1_165:
.L1_163:
    jmp .L1_162
.L1_161:
    movq -5400(%rbp), %rdi
    call lb_io_SliceWriter_written@PLT
    leaq -5232(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -5232(%rbp), %r13
    leaq -5248(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $100, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    subq $48, %rsp
    movq -5432(%rbp), %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    leaq 16(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    leaq -5376(%rbp), %rdi
    call lb_net_19http_parse_response@PLT
    addq $48, %rsp
    leaq -5376(%rbp), %r14
    movq $120, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_167
    jmp .L1_166
.L1_167:
    movq $96, %rcx
    movq %r14, %rbx
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
.L1_168:
.L1_166:
.L1_162:
    movq -5400(%rbp), %rdi
    call lb_io_SliceWriter_written@PLT
    leaq -5392(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -5392(%rbp), %rbx
    leaq -96(%rbp), %r12
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
.L1_169:
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_16http_write_chunk
    .type lb_net_16http_write_chunk, @function
lb_net_16http_write_chunk:
    pushq %rbp
    movq %rsp, %rbp
    subq $320, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -96(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -112(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq -112(%rbp), %rax
    movq %rax, -304(%rbp)
    movq -304(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L2_2
.L2_1:
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
.L2_2:
.L2_3:
    leaq -130(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movw $0, 16(%r11)
    leaq -152(%rbp), %r14
    leaq .Ltext_25(%rip), %rax
    movq %rax, -312(%rbp)
    leaq -168(%rbp), %rbx
    movq -312(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq $16, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rax
    movq %rax, %rbx
    movq %r12, %r14
.L2_5:
    movq $0, %rcx
    cmpq %rcx, %r14
    jbe .L2_7
.L2_6:
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq $18, %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_33(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r13, %r15
    addq %r12, %r15
.L2_9:
    movq $16, %rcx
    movq %r14, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rdx, %rbx
    movq $16, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_33(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -312(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq %r15, %r10
    movb %bl, (%r10)
.L2_11:
    movq $16, %rcx
    movq %r14, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %r15
    movq %r12, %rbx
    movq %r15, %r14
    jmp .L2_5
.L2_7:
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $13, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $17, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $10, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -96(%rbp), %rax
    movq %rax, -320(%rbp)
    movq $19, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_33(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $18, %rcx
    cmpq %rcx, %rbx
    jbe .L2_12
.L2_13:
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_33(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_12:
    movq %r13, %r14
    addq %rbx, %r14
    movq $18, %rax
    movq %rax, %r15
    subq %rbx, %r15
    leaq -184(%rbp), %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq -320(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -216(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -216(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_15
    jmp .L2_14
.L2_15:
    leaq -80(%rbp), %rbx
    movq %r14, %r10
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
.L2_14:
    movq -320(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -304(%rbp), %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -248(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -248(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_18
    jmp .L2_17
.L2_18:
    leaq -80(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_17:
    leaq .Ltext_5(%rip), %rbx
    leaq -264(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $2, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -320(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -296(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -296(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_21
    jmp .L2_20
.L2_21:
    leaq -80(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_20:
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
    .globl lb_net_15http_end_chunks
    .type lb_net_15http_end_chunks, @function
lb_net_15http_end_chunks:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    leaq -80(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -80(%rbp), %rbx
    leaq .Ltext_34(%rip), %r12
    leaq -96(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $5, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -128(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -128(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_2
    jmp .L3_1
.L3_2:
    leaq -64(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_3:
.L3_1:
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

    .p2align 4
    .globl lb_net_HttpBodyWriter_over
    .type lb_net_HttpBodyWriter_over, @function
lb_net_HttpBodyWriter_over:
    pushq %rbp
    movq %rsp, %rbp
    subq $224, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    leaq -128(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movl %ecx, -144(%rbp)
    movq %r8, -160(%rbp)
    leaq -144(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $4, %ecx
    cmpl %ecx, %ebx
    jne .L4_2
.L4_1:
    leaq -112(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_16http_unsupported(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_35(%rip), %r13
    leaq -176(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $32, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_4:
    jmp .L4_3
.L4_2:
.L4_3:
    leaq -216(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq -128(%rbp), %r12
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movb %bl, (%r10)
    movl $1, %ecx
    cmpl %ecx, %ebx
    jne .L4_6
.L4_5:
    leaq -160(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    jmp .L4_7
.L4_6:
    movq $0, %rax
    movq %rax, %rbx
.L4_7:
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -112(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $64, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $72, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_8:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_HttpBodyWriter_write
    .type lb_net_HttpBodyWriter_write, @function
lb_net_HttpBodyWriter_write:
    pushq %rbp
    movq %rsp, %rbp
    subq $368, %rsp
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
    movq (%r10), %r12
    movq %r12, %rsi
    leaq -144(%rbp), %rdi
    call lb_net_HttpBodyWriter_check@PLT
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
.L5_3:
.L5_1:
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    leaq -264(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -264(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -352(%rbp)
    movq -352(%rbp), %r10
    movq (%r10), %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    jne .L5_11
.L5_10:
    leaq -248(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -208(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L5_35
.L5_13:
    jmp .L5_12
.L5_11:
.L5_12:
    movq $16, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -360(%rbp)
    movq -360(%rbp), %r10
    movzbl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L5_36
    jmp .L5_17
.L5_36:
    movl %r15d, %r14d
    jmp .L5_18
.L5_17:
    movl $1, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L5_19
    jmp .L5_37
.L5_37:
    movl %r15d, %r14d
    jmp .L5_20
.L5_19:
    movq $24, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    seta %al
    movzbl %al, %r15d
    movl %r15d, %r14d
.L5_20:
    movzbl %r14b, %r15d
    movl %r15d, %r14d
.L5_18:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L5_14
    jmp .L5_15
.L5_14:
    leaq -248(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    leaq lb_net_12http_invalid(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_38(%rip), %r14
    leaq -280(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $37, %rax
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
    leaq -208(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L5_35
.L5_21:
    jmp .L5_16
.L5_15:
.L5_16:
    movl $2, %ecx
    cmpl %ecx, %r13d
    jne .L5_23
.L5_22:
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    leaq -312(%rbp), %rdi
    call lb_net_16http_write_chunk@PLT
    leaq -312(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L5_26
    jmp .L5_25
.L5_26:
    leaq -248(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -208(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L5_35
.L5_27:
.L5_25:
    jmp .L5_24
.L5_23:
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -344(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -344(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L5_29
    jmp .L5_28
.L5_29:
    leaq -248(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -208(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L5_35
.L5_30:
.L5_28:
.L5_24:
    movq -360(%rbp), %r10
    movzbl (%r10), %ebx
    movl $1, %ecx
    cmpl %ecx, %ebx
    jne .L5_32
.L5_31:
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r13
    movq -352(%rbp), %r10
    movq (%r10), %r14
    movq %r13, %rax
    movq %r14, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_44(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %rbx, %r10
    movq %r13, (%r10)
    jmp .L5_33
.L5_32:
.L5_33:
    movq -352(%rbp), %r10
    movq (%r10), %rbx
    leaq -248(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %r10
    leaq -208(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L5_35
.L5_34:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_35:
    leaq -208(%rbp), %r13
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_7
    jmp .L5_6
.L5_7:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -168(%rbp), %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L5_4
.L5_6:
    movq %r13, %r10
    movq (%r10), %rbx
    jmp .L5_5
.L5_4:
    movq $33, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $36, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %r14, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl %r13d, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $8, %rcx
    addq %rcx, %r15
    movq %r13, %r10
    movq %r15, %r11
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
.L5_8:
.L5_5:
    leaq -88(%rbp), %r12
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_9:
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_HttpBodyWriter_finish
    .type lb_net_HttpBodyWriter_finish, @function
lb_net_HttpBodyWriter_finish:
    pushq %rbp
    movq %rsp, %rbp
    subq $352, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rsi
    leaq -120(%rbp), %rdi
    call lb_net_HttpBodyWriter_check@PLT
    leaq -120(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_2
    jmp .L6_1
.L6_2:
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
.L6_3:
.L6_1:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L6_12
    jmp .L6_26
.L6_26:
    movl %r13d, %r14d
    jmp .L6_13
.L6_12:
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L6_13:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L6_9
    jmp .L6_10
.L6_9:
    leaq -208(%rbp), %rbx
    leaq lb_io_14unexpected_eof(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_41(%rip), %r13
    leaq -224(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $45, %rax
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
    leaq -176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L6_25
.L6_14:
    jmp .L6_11
.L6_10:
.L6_11:
    movl $2, %ecx
    cmpl %ecx, %ebx
    jne .L6_16
.L6_15:
    movq %r12, %r10
    leaq -304(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -304(%rbp), %rbx
    leaq .Ltext_34(%rip), %r13
    leaq -320(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $5, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq $0, %r9
    leaq -352(%rbp), %rdi
    call lb_io_9write_all@PLT
    leaq -352(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_22
    jmp .L6_21
.L6_22:
    leaq -288(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -256(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L6_24
.L6_23:
.L6_21:
    leaq -288(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -256(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L6_24:
    leaq -256(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_19
    jmp .L6_18
.L6_19:
    leaq -208(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L6_25
.L6_20:
.L6_18:
    jmp .L6_17
.L6_16:
.L6_17:
    leaq -208(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L6_25:
    leaq -176(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_7
    jmp .L6_6
.L6_7:
    leaq -144(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L6_4
.L6_6:
    jmp .L6_5
.L6_4:
    movq $33, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $36, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq -80(%rbp), %r13
    movq %r13, %r10
    movl %r14d, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
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
.L6_8:
.L6_5:
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_HttpBodyWriter_check
    .type lb_net_HttpBodyWriter_check, @function
lb_net_HttpBodyWriter_check:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -80(%rbp)
    leaq -80(%rbp), %r10
    movq (%r10), %r12
    movq $33, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_1
    jmp .L7_2
.L7_1:
    leaq -72(%rbp), %rbx
    movq $36, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_42(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $27, %rax
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
.L7_4:
    jmp .L7_3
.L7_2:
.L7_3:
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L7_6
.L7_5:
    leaq -72(%rbp), %rbx
    leaq lb_io_closed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_43(%rip), %r12
    leaq -112(%rbp), %r13
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_8:
    jmp .L7_7
.L7_6:
.L7_7:
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

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_11http_encode_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "HTTP/1.0"
.Ltext_1:
    .asciz "HTTP/1.1"
.Ltext_2:
    .asciz "unsupported HTTP version"
.Ltext_3:
    .asciz "invalid HTTP request line"
.Ltext_4:
    .asciz " "
.Ltext_5:
    .asciz "\015\n"
.Ltext_6:
    .asciz "invalid HTTP status"
.Ltext_7:
    .asciz " \015\n"
.Ltext_8:
    .asciz "memory.exhausted: the formatted text does not fit its buffer"
.Ltext_9:
    .asciz "content-length"
.Ltext_10:
    .asciz "transfer-encoding"
.Ltext_11:
    .asciz "connection"
.Ltext_12:
    .asciz "invalid or generated HTTP field"
.Ltext_13:
    .asciz ": "
.Ltext_14:
    .asciz "CONNECT"
.Ltext_15:
    .asciz "framing is forbidden for this response"
.Ltext_16:
    .asciz "Content-Length: "
.Ltext_17:
    .asciz "chunked framing requires HTTP/1.1"
.Ltext_18:
    .asciz "Transfer-Encoding: chunked\015\n"
.Ltext_19:
    .asciz "invalid outgoing HTTP framing"
.Ltext_20:
    .asciz "Connection: Upgrade\015\n"
.Ltext_21:
    .asciz "Connection: keep-alive\015\n"
.Ltext_22:
    .asciz "Connection: close\015\n"
.Ltext_23:
    .asciz "unreachable"
.Ltext_24:
    .asciz "src/std/net/http/encode.lucb:60:5"
.Ltext_25:
    .asciz "0123456789abcdef"
.Ltext_26:
    .asciz "src/std/net/http/encode.lucb:72:9"
.Ltext_27:
    .asciz "src/std/net/http/encode.lucb:73:9"
.Ltext_28:
    .asciz "division by zero"
.Ltext_29:
    .asciz "src/std/net/http/encode.lucb:74:9"
.Ltext_30:
    .asciz "src/std/net/http/encode.lucb:75:5"
.Ltext_31:
    .asciz "src/std/net/http/encode.lucb:76:5"
.Ltext_32:
    .asciz "src/std/net/http/encode.lucb:77:5"
.Ltext_33:
    .asciz "index out of bounds"
.Ltext_34:
    .asciz "0\015\n\015\n"
.Ltext_35:
    .asciz "a tunnel has no HTTP body writer"
.Ltext_36:
    .asciz "src/std/net/http/encode.lucb:101:9"
.Ltext_37:
    .asciz "src/std/net/http/encode.lucb:108:13"
.Ltext_38:
    .asciz "HTTP body exceeds its declared length"
.Ltext_39:
    .asciz "src/std/net/http/encode.lucb:120:13"
.Ltext_40:
    .asciz "src/std/net/http/encode.lucb:121:9"
.Ltext_41:
    .asciz "HTTP body is shorter than its declared length"
.Ltext_42:
    .asciz "HTTP body writer has failed"
.Ltext_43:
    .asciz "HTTP body writer is not active"
.Ltext_44:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3
    .globl lb_vt_io_SliceWriter_Writer
    .weak lb_vt_io_SliceWriter_Writer
lb_vt_io_SliceWriter_Writer:
    .quad lb_io_SliceWriter_write

    .section .note.GNU-stack,"",@progbits
