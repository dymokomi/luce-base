    .text

    .p2align 4
    .globl lb_net_9http_body_0init
    .type lb_net_9http_body_0init, @function
lb_net_9http_body_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_HttpBodyDecoder_create
    .type lb_net_HttpBodyDecoder_create, @function
lb_net_HttpBodyDecoder_create:
    pushq %rbp
    movq %rsp, %rbp
    subq $25024, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movl %esi, -8376(%rbp)
    movq %rdx, -8392(%rbp)
    movq %rcx, -8408(%rbp)
    leaq -8376(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $4, %ecx
    cmpl %ecx, %ebx
    jne .L1_2
.L1_1:
    leaq -8360(%rbp), %rbx
    movq $8280, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_16http_unsupported(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_0(%rip), %r13
    leaq -8424(%rbp), %r14
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
    movq $8304, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $8312, %rdx
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
.L1_4:
    jmp .L1_3
.L1_2:
.L1_3:
    movl $1, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %eax
    movl %eax, -25008(%rbp)
    movl -25008(%rbp), %eax
    testl %eax, %eax
    jne .L1_8
    jmp .L1_22
.L1_22:
    movl -25008(%rbp), %eax
    movl %eax, %r13d
    jmp .L1_9
.L1_8:
    leaq -8392(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq -8408(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    seta %al
    movzbl %al, %r13d
.L1_9:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L1_5
    jmp .L1_6
.L1_5:
    leaq -8360(%rbp), %rbx
    movq $8280, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_10http_limit(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_1(%rip), %r13
    leaq -8440(%rbp), %r14
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
    movq $8304, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $8312, %rdx
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
    jmp .L1_7
.L1_6:
.L1_7:
    leaq -16720(%rbp), %r13
    leaq -25000(%rbp), %r14
    movq %r14, %rdi
    xorl %esi, %esi
    movq $8280, %rdx
    call memset@PLT
    movq %r14, %r10
    movb %bl, (%r10)
    leaq -8392(%rbp), %rax
    movq %rax, -25016(%rbp)
    movq -25016(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -25024(%rbp)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq -25024(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -8408(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $6, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %rdi
    movq %r14, %rsi
    movq $8280, %rdx
    call memcpy@PLT
    movl $2, %ecx
    cmpl %ecx, %ebx
    jne .L1_12
.L1_11:
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_13
.L1_12:
    movl $3, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_23
    jmp .L1_17
.L1_23:
    movl %r12d, %ebx
    jmp .L1_18
.L1_17:
    movl -25008(%rbp), %eax
    testl %eax, %eax
    jne .L1_19
    jmp .L1_24
.L1_24:
    movl -25008(%rbp), %eax
    movl %eax, %ebx
    jmp .L1_20
.L1_19:
    movq -25024(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    seta %al
    movzbl %al, %ebx
.L1_20:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L1_18:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L1_14
    jmp .L1_15
.L1_14:
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_16
.L1_15:
.L1_16:
.L1_13:
    leaq -8360(%rbp), %rbx
    movq %rbx, %rdi
    movq %r13, %rsi
    movq $8280, %rdx
    call memcpy@PLT
    movq $8304, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $8312, %rdx
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
.L1_21:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_HttpBodyDecoder_finished
    .type lb_net_HttpBodyDecoder_finished, @function
lb_net_HttpBodyDecoder_finished:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -24(%rbp)
    leaq -24(%rbp), %r10
    movq (%r10), %r12
    movq $8272, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L2_1
    jmp .L2_4
.L2_4:
    movl %ebx, %r12d
    jmp .L2_2
.L2_1:
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $6, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl %ebx, %r12d
.L2_2:
    movzbl %r12b, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_3:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_HttpBodyDecoder_consume
    .type lb_net_HttpBodyDecoder_consume, @function
lb_net_HttpBodyDecoder_consume:
    pushq %rbp
    movq %rsp, %rbp
    subq $416, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -160(%rbp)
    leaq -176(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -160(%rbp), %r10
    movq (%r10), %r13
    movq $8272, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_1
    jmp .L3_2
.L3_1:
    leaq -152(%rbp), %rbx
    movq $72, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $8276, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_5(%rip), %r14
    leaq -192(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $28, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $104, %rdx
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
    leaq -176(%rbp), %r12
    movq %r13, %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -392(%rbp), %rdi
    call lb_net_HttpBodyDecoder_advance@PLT
    leaq -392(%rbp), %r14
    movq $96, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L3_8
    jmp .L3_7
.L3_8:
    movq $72, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq -288(%rbp), %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L3_5
.L3_7:
    leaq -264(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
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
    jmp .L3_6
.L3_5:
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $8276, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -400(%rbp)
    movq %r15, %r10
    movl (%r10), %r14d
    movq -400(%rbp), %r10
    movl %r14d, (%r10)
    leaq -152(%rbp), %rax
    movq %rax, -408(%rbp)
    movq -408(%rbp), %rax
    movq $72, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl %r14d, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -408(%rbp), %rax
    movq $96, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -408(%rbp), %rsi
    movq -8(%rbp), %rdi
    movq $104, %rdx
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
.L3_9:
.L3_6:
    leaq -152(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
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
    movq $96, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $104, %rdx
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
.L3_10:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_HttpBodyDecoder_finish
    .type lb_net_HttpBodyDecoder_finish, @function
lb_net_HttpBodyDecoder_finish:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %r13
    movq $8272, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L4_1
    jmp .L4_2
.L4_1:
    leaq -80(%rbp), %rbx
    movq $8276, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_5(%rip), %r12
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $28, %rax
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
.L4_4:
    jmp .L4_3
.L4_2:
.L4_3:
    movq %r13, %r10
    movzbl (%r10), %r12d
    movl $3, %ecx
    cmpl %ecx, %r12d
    jne .L4_6
.L4_5:
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $6, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L4_7
.L4_6:
.L4_7:
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $6, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L4_9
.L4_8:
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $8276, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    leaq lb_io_14unexpected_eof(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r15d
    movq %r12, %r10
    movl %r15d, (%r10)
    leaq -80(%rbp), %r12
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_7(%rip), %r14
    leaq -120(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $44, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
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
.L4_11:
    jmp .L4_10
.L4_9:
.L4_10:
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
    .globl lb_net_HttpBodyDecoder_advance
    .type lb_net_HttpBodyDecoder_advance, @function
lb_net_HttpBodyDecoder_advance:
    pushq %rbp
    movq %rsp, %rbp
    subq $2064, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -160(%rbp)
    leaq -176(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -160(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1984(%rbp)
    leaq -176(%rbp), %rax
    movq %rax, -1584(%rbp)
    movq -1584(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1592(%rbp)
    movq -1984(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -1608(%rbp)
    movq -1984(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -1616(%rbp)
    movq -1984(%rbp), %rax
    movq $8256, %rcx
    addq %rcx, %rax
    movq %rax, -1656(%rbp)
    movq -1984(%rbp), %rax
    movq $8240, %rcx
    addq %rcx, %rax
    movq %rax, -1664(%rbp)
    movq -1984(%rbp), %rax
    movq $8232, %rcx
    addq %rcx, %rax
    movq %rax, -1760(%rbp)
    movq -1984(%rbp), %rax
    movq $33, %rcx
    addq %rcx, %rax
    movq %rax, -1768(%rbp)
    leaq -344(%rbp), %rax
    movq %rax, -2000(%rbp)
    movq -1984(%rbp), %rax
    movq $33, %rcx
    addq %rcx, %rax
    movq %rax, -2008(%rbp)
    movq -1984(%rbp), %rax
    movq $8232, %rcx
    addq %rcx, %rax
    movq %rax, -1672(%rbp)
    leaq -360(%rbp), %rax
    movq %rax, -1680(%rbp)
    movq -1680(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1688(%rbp)
    leaq -376(%rbp), %rax
    movq %rax, -1696(%rbp)
    movq -1696(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1704(%rbp)
    movq -2000(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1744(%rbp)
    movq -1984(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2032(%rbp)
    leaq -936(%rbp), %rax
    movq %rax, -1776(%rbp)
    leaq -928(%rbp), %rax
    movq %rax, -1784(%rbp)
    movq -1784(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1792(%rbp)
    leaq -938(%rbp), %rax
    movq %rax, -2040(%rbp)
    movq -2040(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    movq %rax, -1800(%rbp)
    leaq -1008(%rbp), %rax
    movq %rax, -2048(%rbp)
    movq -2048(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -1936(%rbp)
    leaq -912(%rbp), %rax
    movq %rax, -1968(%rbp)
    movq -1968(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -1976(%rbp)
    leaq -912(%rbp), %rax
    movq %rax, -1944(%rbp)
    movq -1944(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1952(%rbp)
    movq -1944(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -1960(%rbp)
    leaq -912(%rbp), %rax
    movq %rax, -1872(%rbp)
    movq -1872(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1880(%rbp)
    leaq lb_net_12http_invalid(%rip), %rax
    movq %rax, -1888(%rbp)
    leaq .Ltext_45(%rip), %rax
    movq %rax, -1896(%rbp)
    leaq -976(%rbp), %rax
    movq %rax, -1904(%rbp)
    movq -1904(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1912(%rbp)
    movq -1880(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1920(%rbp)
    movq -1872(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -1928(%rbp)
    leaq -912(%rbp), %rax
    movq %rax, -1808(%rbp)
    movq -1808(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1816(%rbp)
    leaq lb_net_10http_limit(%rip), %rax
    movq %rax, -1824(%rbp)
    leaq .Ltext_42(%rip), %rax
    movq %rax, -1832(%rbp)
    leaq -960(%rbp), %rax
    movq %rax, -1840(%rbp)
    movq -1840(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1848(%rbp)
    movq -1816(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1856(%rbp)
    movq -1808(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -1864(%rbp)
    leaq -416(%rbp), %rax
    movq %rax, -2056(%rbp)
    movq -2056(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -1712(%rbp)
    movq -1984(%rbp), %rax
    movq $8248, %rcx
    addq %rcx, %rax
    movq %rax, -1720(%rbp)
    movq -1984(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -1728(%rbp)
    movq -1984(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -1736(%rbp)
    movq $0, %rax
    movq %rax, -1992(%rbp)
.L5_1:
    movq -1592(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1600(%rbp)
    movq -1992(%rbp), %rax
    movq -1600(%rbp), %rcx
    cmpq %rcx, %rax
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L5_4
    jmp .L5_148
.L5_148:
    movl %r12d, %r13d
    jmp .L5_5
.L5_4:
    movq -1608(%rbp), %r10
    movzbl (%r10), %r12d
    movl $6, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L5_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L5_2
    jmp .L5_3
.L5_2:
    movq -1616(%rbp), %r10
    movzbl (%r10), %eax
    movl %eax, -1624(%rbp)
    movl -1624(%rbp), %eax
    movl $0, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L5_149
    jmp .L5_9
.L5_149:
    movl %r13d, %r14d
    jmp .L5_10
.L5_9:
    movl -1624(%rbp), %eax
    movl $2, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r14d
.L5_10:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L5_6
    jmp .L5_7
.L5_6:
    movq -1600(%rbp), %rax
    movq -1992(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -1984(%rbp), %r10
    movzbl (%r10), %eax
    movl %eax, -1632(%rbp)
    movl -1632(%rbp), %eax
    movl $3, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %eax
    movl %eax, -1640(%rbp)
    movl -1640(%rbp), %eax
    testl %eax, %eax
    jne .L5_14
    jmp .L5_150
.L5_150:
    movl -1640(%rbp), %eax
    movl %eax, %r15d
    jmp .L5_15
.L5_14:
    movq -1984(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    cmpq %r15, %r12
    seta %al
    movzbl %al, %r15d
.L5_15:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L5_11
    jmp .L5_12
.L5_11:
    movq -1984(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    jmp .L5_13
.L5_12:
.L5_13:
    movq -1984(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq -1984(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r14
    movq %r13, %rax
    movq %r14, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    cmpq %r13, %r12
    jbe .L5_17
.L5_16:
    leaq -152(%rbp), %rbx
    movq $72, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_10http_limit(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_1(%rip), %r13
    leaq -192(%rbp), %r14
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
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $104, %rdx
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
.L5_17:
.L5_18:
    movq %r14, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r15, %r10
    movq %r13, (%r10)
    movl -1640(%rbp), %eax
    testl %eax, %eax
    jne .L5_20
    jmp .L5_21
.L5_20:
    movq -1984(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq %r12, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r13, %r10
    movq %r14, (%r10)
    movq $0, %rcx
    cmpq %rcx, %r14
    jne .L5_24
.L5_23:
    movl -1632(%rbp), %eax
    movl $2, %ecx
    cmpl %ecx, %eax
    jne .L5_27
.L5_26:
    movl $3, %eax
    movl %eax, %ebx
    jmp .L5_28
.L5_27:
    movl $6, %eax
    movl %eax, %ebx
.L5_28:
    movzbl %bl, %r13d
    movq -1616(%rbp), %r10
    movb %r13b, (%r10)
    jmp .L5_25
.L5_24:
.L5_25:
    jmp .L5_22
.L5_21:
.L5_22:
    leaq -264(%rbp), %rax
    movq %rax, -2064(%rbp)
    movq -2064(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movq $0, 64(%r11)
    movq -1992(%rbp), %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -2064(%rbp), %r10
    movq %rbx, (%r10)
    movq -1584(%rbp), %r10
    movq (%r10), %r15
    movq -1600(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq -1992(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1992(%rbp), %rax
    cmpq %rbx, %rax
    jbe .L5_29
.L5_30:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_29:
    movq -1992(%rbp), %rax
    movq %rax, %r12
    addq %r15, %r12
    movq -1992(%rbp), %rcx
    movq %rbx, %r13
    subq %rcx, %r13
    leaq -280(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -2064(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1616(%rbp), %r10
    movzbl (%r10), %r12d
    movl $6, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movq -2064(%rbp), %rax
    movq $64, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movb %r12b, (%r10)
    leaq -152(%rbp), %r12
    movq -2064(%rbp), %r10
    movq %r12, %r11
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
    movq $96, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $104, %rdx
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
.L5_7:
.L5_8:
    movq -1584(%rbp), %r10
    movq (%r10), %r13
    movq -1992(%rbp), %rax
    movq -1600(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1992(%rbp), %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq -1992(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    movq %rax, -1648(%rbp)
    movl -1624(%rbp), %eax
    movl $3, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L5_151
    jmp .L5_35
.L5_151:
    movl %r15d, %ebx
    jmp .L5_36
.L5_35:
    movl -1624(%rbp), %eax
    movl $4, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %ebx
.L5_36:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L5_32
    jmp .L5_33
.L5_32:
    testl %r15d, %r15d
    jne .L5_37
    jmp .L5_38
.L5_37:
    movl $13, %eax
    movl %eax, %ebx
    jmp .L5_39
.L5_38:
    movl $10, %eax
    movl %eax, %ebx
.L5_39:
    movzbl %bl, %r12d
    movzbl %r13b, %r14d
    movzbl %r12b, %r12d
    cmpl %r12d, %r14d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L5_41
.L5_40:
    leaq -152(%rbp), %rbx
    movq $72, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_16(%rip), %r13
    leaq -296(%rbp), %r14
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
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $104, %rdx
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
    testl %r15d, %r15d
    jne .L5_44
    jmp .L5_45
.L5_44:
    movl $4, %eax
    movl %eax, %ebx
    jmp .L5_46
.L5_45:
    movl $1, %eax
    movl %eax, %ebx
.L5_46:
    movzbl %bl, %r12d
    movq -1616(%rbp), %r10
    movb %r12b, (%r10)
    movq -1648(%rbp), %rax
    movq %rax, -1992(%rbp)
    jmp .L5_1
.L5_33:
.L5_34:
    movl -1624(%rbp), %eax
    movl $5, %ecx
    cmpl %ecx, %eax
    jne .L5_49
.L5_48:
    movq -1656(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -1656(%rbp), %r10
    movq %rbx, (%r10)
    movq $32768, %rcx
    cmpq %rcx, %rbx
    jbe .L5_52
.L5_51:
    leaq -152(%rbp), %rbx
    movq $72, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_10http_limit(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_18(%rip), %r13
    leaq -312(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $37, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $104, %rdx
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
.L5_52:
.L5_53:
    jmp .L5_50
.L5_49:
.L5_50:
    movq -1664(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_55
    jmp .L5_56
.L5_55:
    movzbl %r13b, %ebx
    movl $10, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L5_59
.L5_58:
    leaq -152(%rbp), %rbx
    movq $72, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_19(%rip), %r13
    leaq -328(%rbp), %r14
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
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $104, %rdx
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
.L5_59:
.L5_60:
    movl $0, %eax
    movq -1664(%rbp), %r10
    movb %al, (%r10)
    movq -1672(%rbp), %r10
    movq (%r10), %r12
    movq $8193, %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r12, %rax
    jbe .L5_62
.L5_63:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_62:
    movq -2008(%rbp), %rax
    movq -1680(%rbp), %r10
    movq %rax, (%r10)
    movq -1688(%rbp), %r10
    movq %r12, (%r10)
    movq -2008(%rbp), %rax
    movq -1696(%rbp), %r10
    movq %rax, (%r10)
    movq -1704(%rbp), %r10
    movq %r12, (%r10)
    movq -1696(%rbp), %r10
    movq -2000(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq -1672(%rbp), %r10
    movq %rax, (%r10)
    movq -1616(%rbp), %r10
    movzbl (%r10), %ebx
    movl $1, %ecx
    cmpl %ecx, %ebx
    jne .L5_65
.L5_64:
    movq -2000(%rbp), %r10
    leaq -928(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq -1776(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %rax, %rbx
    movq $0, %rax
    movq %rax, %r12
.L5_113:
    movq -1792(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jae .L5_115
.L5_114:
    movq -1784(%rbp), %r10
    movq (%r10), %r13
    addq %r12, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl %r13d, %edi
    call lb_net_8http_hex@PLT
    leaq -938(%rbp), %r10
    movw %ax, 0(%r10)
    movq -1800(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L5_116
    jmp .L5_117
.L5_116:
    movq -2040(%rbp), %r10
    movzbl (%r10), %r12d
    jmp .L5_118
.L5_117:
    jmp .L5_115
.L5_118:
    movzbl %r12b, %r13d
    movzbl %r13b, %r13d
    movl %r13d, %r13d
    movq $-1, %rax
    movq %rax, %r14
    subq %r13, %r14
.L5_124:
    movq $16, %rcx
    movq %r14, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %r12
    cmpq %r12, %rbx
    jbe .L5_121
.L5_120:
    movq -1824(%rbp), %r10
    movl (%r10), %ebx
    movq -1816(%rbp), %r10
    movl %ebx, (%r10)
    movq -1832(%rbp), %rax
    movq -1840(%rbp), %r10
    movq %rax, (%r10)
    movq $31, %rax
    movq -1848(%rbp), %r10
    movq %rax, (%r10)
    movq -1840(%rbp), %r10
    movq -1856(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $1, %eax
    movq -1864(%rbp), %r10
    movb %al, (%r10)
    movq -1808(%rbp), %r10
    leaq -416(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L5_137
.L5_121:
.L5_122:
    movq %rbx, %rax
    movq $16, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r13, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -1776(%rbp), %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq -1776(%rbp), %r10
    movq %r14, (%r10)
    movq %r12, %rbx
    movq %r14, %r12
    jmp .L5_113
.L5_115:
    movq -1776(%rbp), %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L5_127
.L5_126:
    movq -1888(%rbp), %r10
    movl (%r10), %ebx
    movq -1880(%rbp), %r10
    movl %ebx, (%r10)
    movq -1896(%rbp), %rax
    movq -1904(%rbp), %r10
    movq %rax, (%r10)
    movq $35, %rax
    movq -1912(%rbp), %r10
    movq %rax, (%r10)
    movq -1904(%rbp), %r10
    movq -1920(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $1, %eax
    movq -1928(%rbp), %r10
    movb %al, (%r10)
    movq -1872(%rbp), %r10
    leaq -416(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L5_137
.L5_127:
.L5_128:
.L5_130:
    movq -1776(%rbp), %r10
    movq (%r10), %r12
    movq -1792(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    jae .L5_132
.L5_131:
    movq -1784(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -1776(%rbp), %rcx
    leaq -1008(%rbp), %rdi
    call lb_net_20http_chunk_extension@PLT
    movq -1936(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L5_134
    jmp .L5_133
.L5_134:
    movq -2048(%rbp), %r10
    movq -1952(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl $1, %eax
    movq -1960(%rbp), %r10
    movb %al, (%r10)
    movq -1944(%rbp), %r10
    leaq -416(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L5_137
.L5_133:
    jmp .L5_130
.L5_132:
    movq -1968(%rbp), %r10
    movq %rbx, (%r10)
    movl $0, %eax
    movq -1976(%rbp), %r10
    movb %al, (%r10)
    movq -1968(%rbp), %r10
    leaq -416(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
.L5_137:
    movq -1712(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_68
    jmp .L5_67
.L5_68:
    movq -2056(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -152(%rbp), %r12
    movq $72, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $96, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $104, %rdx
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
.L5_67:
    movq -2056(%rbp), %r10
    movq (%r10), %rbx
    movq -2032(%rbp), %r10
    movq %rbx, (%r10)
    movq -1720(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -1720(%rbp), %r10
    movq %r12, (%r10)
    movq $1000000, %rcx
    cmpq %rcx, %r12
    seta %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L5_152
    jmp .L5_73
.L5_152:
    movl %r12d, %r13d
    jmp .L5_74
.L5_73:
    movq -1728(%rbp), %r10
    movq (%r10), %r12
    movq -1736(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %rax
    movq %r13, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    cmpq %r12, %rbx
    seta %al
    movzbl %al, %r13d
.L5_74:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L5_70
    jmp .L5_71
.L5_70:
    leaq -152(%rbp), %rbx
    movq $72, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_10http_limit(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_23(%rip), %r13
    leaq -432(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $44, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $104, %rdx
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
.L5_71:
.L5_72:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L5_77
.L5_76:
    movl $5, %eax
    movl %eax, %ebx
    jmp .L5_78
.L5_77:
    movl $2, %eax
    movl %eax, %ebx
.L5_78:
    movzbl %bl, %r12d
    movq -1616(%rbp), %r10
    movb %r12b, (%r10)
    jmp .L5_66
.L5_65:
    movq -1744(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L5_80
.L5_79:
    movl $6, %eax
    movq -1616(%rbp), %r10
    movb %al, (%r10)
    jmp .L5_81
.L5_80:
    movq -1984(%rbp), %rax
    movq $8264, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $100, %rcx
    cmpq %rcx, %r12
    jbe .L5_83
.L5_82:
    leaq -152(%rbp), %rbx
    movq $72, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_10http_limit(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_25(%rip), %r13
    leaq -448(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $28, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $104, %rdx
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
.L5_83:
.L5_84:
    leaq .Ltext_26(%rip), %rbx
    leaq -464(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $1, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -2000(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_strings_find@PLT
    leaq -480(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -480(%rbp), %r12
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_86
    jmp .L5_87
.L5_86:
    movq %r12, %r10
    movq (%r10), %rbx
    jmp .L5_88
.L5_87:
    leaq -152(%rbp), %rbx
    movq $72, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_27(%rip), %r13
    leaq -496(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $21, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $104, %rdx
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
.L5_88:
    leaq -528(%rbp), %rax
    movq %rax, -2016(%rbp)
    leaq -560(%rbp), %rax
    movq %rax, -2024(%rbp)
    movq -2024(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq -2000(%rbp), %r10
    movq (%r10), %r15
    movq -1744(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1752(%rbp)
    movq -1752(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %rbx, %rax
    jbe .L5_90
.L5_91:
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_90:
    leaq -576(%rbp), %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    leaq -592(%rbp), %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq %r14, %r10
    movq -2024(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $1, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    cmpq %r13, %r14
    jb 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1752(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1752(%rbp), %rcx
    cmpq %rcx, %r14
    jbe .L5_92
.L5_93:
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_92:
    movq %r15, %rbx
    addq %r14, %rbx
    movq -1752(%rbp), %rax
    movq %rax, %r12
    subq %r14, %r12
    leaq -608(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq -624(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_net_8http_ows@PLT
    leaq -640(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -640(%rbp), %rbx
    movq -2024(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -2024(%rbp), %r10
    movq -2016(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    subq $32, %rsp
    movq -2016(%rbp), %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    call lb_net_16http_field_valid@PLT
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L5_153
    jmp .L5_97
.L5_153:
    movl %ebx, %r12d
    jmp .L5_98
.L5_97:
    movq -2016(%rbp), %r10
    leaq -1024(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -1200(%rbp), %rbx
    leaq -1376(%rbp), %r12
    leaq .Ltext_73(%rip), %r13
    leaq -1392(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $14, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_74(%rip), %r13
    leaq -1408(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $17, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_75(%rip), %r13
    leaq -1424(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $4, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_76(%rip), %r13
    leaq -1440(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $10, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $48, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_77(%rip), %r13
    leaq -1456(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $7, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $64, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_78(%rip), %r13
    leaq -1472(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $7, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $80, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_79(%rip), %r13
    leaq -1488(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $6, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $96, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_80(%rip), %r13
    leaq -1504(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $13, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $112, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_81(%rip), %r13
    leaq -1520(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $12, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $128, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_82(%rip), %r13
    leaq -1536(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $16, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $144, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_83(%rip), %r13
    leaq -1552(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $13, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $160, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $176, %rdx
    call memcpy@PLT
    leaq -1568(%rbp), %r12
    leaq -1024(%rbp), %r13
    movq $0, %rax
    movq %rax, %r14
.L5_138:
    movq $11, %rcx
    cmpq %rcx, %r14
    jae .L5_141
.L5_139:
    movq $16, %rcx
    movq %r14, %r15
    imulq %rcx, %r15
    movq %r15, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_net_10http_equal@PLT
    movl %eax, %r15d
    testl %r15d, %r15d
    jne .L5_142
    jmp .L5_143
.L5_142:
    movl $1, %eax
    leaq -1576(%rbp), %r10
    movl %eax, (%r10)
    movl $1, %eax
    movl %eax, %r12d
    jmp .L5_147
.L5_143:
.L5_144:
.L5_140:
    movq $1, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r14
    jmp .L5_138
.L5_141:
    movl $0, %eax
    leaq -1576(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, %r12d
.L5_147:
.L5_98:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L5_94
    jmp .L5_95
.L5_94:
    leaq -152(%rbp), %rbx
    movq $72, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_29(%rip), %r13
    leaq -656(%rbp), %r14
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
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $104, %rdx
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
.L5_95:
.L5_96:
    leaq -728(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movq $0, 64(%r11)
    movq -1648(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -768(%rbp), %r12
    movq -2016(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    leaq -152(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
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
    movq $96, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $104, %rdx
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
.L5_81:
.L5_66:
    jmp .L5_57
.L5_56:
    movzbl %r13b, %ebx
    movl $13, %ecx
    cmpl %ecx, %ebx
    jne .L5_102
.L5_101:
    movl $1, %eax
    movq -1664(%rbp), %r10
    movb %al, (%r10)
    jmp .L5_103
.L5_102:
    movl $10, %ecx
    cmpl %ecx, %ebx
    jne .L5_105
.L5_104:
    leaq -152(%rbp), %rbx
    movq $72, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_12http_invalid(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_19(%rip), %r13
    leaq -784(%rbp), %r14
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
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $104, %rdx
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
.L5_105:
.L5_106:
    movq -1760(%rbp), %r10
    movq (%r10), %r12
    movq $8192, %rcx
    cmpq %rcx, %r12
    jne .L5_109
.L5_108:
    leaq -152(%rbp), %rbx
    movq $72, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_net_10http_limit(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_30(%rip), %r13
    leaq -800(%rbp), %r14
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
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $104, %rdx
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
.L5_109:
.L5_110:
    movq $8192, %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1768(%rbp), %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movb %bl, (%r10)
    movq -1760(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -1760(%rbp), %r10
    movq %r13, (%r10)
.L5_103:
.L5_57:
    movq -1648(%rbp), %rax
    movq %rax, -1992(%rbp)
    jmp .L5_1
.L5_3:
    leaq -872(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movq $0, 64(%r11)
    movq -1992(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -1984(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $6, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movq $64, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movb %r12b, (%r10)
    leaq -152(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
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
    movq $96, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $104, %rdx
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
    .globl lb_net_8http_hex
    .type lb_net_8http_hex, @function
lb_net_8http_hex:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movl %edi, -48(%rbp)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $48, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L6_4
    jmp .L6_30
.L6_30:
    movl %r12d, %r13d
    jmp .L6_5
.L6_4:
    movl $57, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L6_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L6_1
    jmp .L6_2
.L6_1:
    movl $48, %ecx
    movl %ebx, %r13d
    subl %ecx, %r13d
    movzbl %r13b, %r12d
    cmpl %r13d, %r12d
    je .L6_6
.L6_7:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_6:
    leaq -50(%rbp), %rbx
    movq %rbx, %r10
    movb %r13b, (%r10)
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -26(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_8:
    jmp .L6_3
.L6_2:
.L6_3:
    movl $97, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L6_12
    jmp .L6_31
.L6_31:
    movl %r12d, %r13d
    jmp .L6_13
.L6_12:
    movl $102, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L6_13:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L6_9
    jmp .L6_10
.L6_9:
    movl $97, %ecx
    movl %ebx, %r13d
    subl %ecx, %r13d
    movzbl %r13b, %r12d
    cmpl %r13d, %r12d
    je .L6_14
.L6_15:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_14:
    movl $10, %ecx
    movl %r13d, %r12d
    addl %ecx, %r12d
    movzbl %r12b, %ebx
    cmpl %r12d, %ebx
    je .L6_16
.L6_17:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_16:
    leaq -52(%rbp), %rbx
    movq %rbx, %r10
    movb %r12b, (%r10)
    movq $1, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -26(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r13, %r10
    movzwl 0(%r10), %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_18:
    jmp .L6_11
.L6_10:
.L6_11:
    movl $65, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L6_22
    jmp .L6_32
.L6_32:
    movl %r12d, %r13d
    jmp .L6_23
.L6_22:
    movl $70, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L6_23:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L6_19
    jmp .L6_20
.L6_19:
    movl $65, %ecx
    movl %ebx, %r13d
    subl %ecx, %r13d
    movzbl %r13b, %r12d
    cmpl %r13d, %r12d
    je .L6_24
.L6_25:
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_24:
    movl $10, %ecx
    movl %r13d, %r12d
    addl %ecx, %r12d
    movzbl %r12b, %ebx
    cmpl %r12d, %ebx
    je .L6_26
.L6_27:
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_26:
    leaq -54(%rbp), %rbx
    movq %rbx, %r10
    movb %r12b, (%r10)
    movq $1, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -26(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r13, %r10
    movzwl 0(%r10), %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_28:
    jmp .L6_21
.L6_20:
.L6_21:
    leaq -56(%rbp), %rbx
    movq %rbx, %r11
    movw $0, 0(%r11)
    leaq -26(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_29:
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_net_13http_skip_ows
    .type lb_net_13http_skip_ows, @function
lb_net_13http_skip_ows:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -56(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    movq %rdx, -72(%rbp)
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -56(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq (%r10), %r12
.L7_1:
    movq %rbx, %r10
    movq (%r10), %r14
    cmpq %r13, %r14
    setb %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L7_4
    jmp .L7_8
.L7_8:
    movl %r14d, %r15d
    jmp .L7_5
.L7_4:
    movq %rbx, %r10
    movq (%r10), %r14
    cmpq %r13, %r14
    jb 1f
    leaq .Ltext_47(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    addq %r12, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $32, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L7_9
    jmp .L7_6
.L7_9:
    movl %r14d, %r15d
    jmp .L7_7
.L7_6:
    movq %rbx, %r10
    movq (%r10), %r14
    cmpq %r13, %r14
    jb 1f
    leaq .Ltext_47(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r14, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $9, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L7_7:
    movzbl %r15b, %r14d
    movl %r14d, %r15d
.L7_5:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L7_2
    jmp .L7_3
.L7_2:
    movq %rbx, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %rbx, %r10
    movq %r14, (%r10)
    jmp .L7_1
.L7_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_net_20http_chunk_extension
    .type lb_net_20http_chunk_extension, @function
lb_net_20http_chunk_extension:
    pushq %rbp
    movq %rsp, %rbp
    subq $480, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -96(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movq %rcx, -112(%rbp)
    leaq -96(%rbp), %rbx
    leaq -112(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %rdx
    call lb_net_13http_skip_ows@PLT
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -328(%rbp)
    movq -328(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r13
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L8_76
    jmp .L8_4
.L8_76:
    movl %r13d, %r15d
    jmp .L8_5
.L8_4:
    movq %r12, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    cmpq %r15, %r13
    jb 1f
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    addq %r14, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $59, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %r15d
.L8_5:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L8_1
    jmp .L8_2
.L8_1:
    leaq -80(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_50(%rip), %r12
    leaq -128(%rbp), %r13
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
.L8_6:
    jmp .L8_3
.L8_2:
.L8_3:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -336(%rbp)
    movq -336(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -344(%rbp)
    movq -344(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %rdx
    call lb_net_13http_skip_ows@PLT
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -352(%rbp)
    leaq -144(%rbp), %rax
    movq %rax, -360(%rbp)
    movq -360(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -368(%rbp)
    leaq -160(%rbp), %rax
    movq %rax, -376(%rbp)
    movq -376(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -384(%rbp)
.L8_7:
    movq %r12, %r10
    movq (%r10), %r13
    movq -328(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r13
    setb %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L8_10
    jmp .L8_77
.L8_77:
    movl %r13d, %r15d
    jmp .L8_11
.L8_10:
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -456(%rbp)
    movq %r12, %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -464(%rbp)
    movq $1, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    cmpq %r13, %r14
    jb 1f
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -464(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -464(%rbp), %rcx
    cmpq %rcx, %r14
    jbe .L8_12
.L8_13:
    leaq .Ltext_52(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
.L8_12:
    movq -456(%rbp), %rax
    movq %rax, %r13
    addq %r14, %r13
    movq -464(%rbp), %rax
    movq %rax, %r15
    subq %r14, %r15
    movq -360(%rbp), %r10
    movq %r13, (%r10)
    movq -368(%rbp), %r10
    movq %r15, (%r10)
    movq -376(%rbp), %r10
    movq %r13, (%r10)
    movq -384(%rbp), %r10
    movq %r15, (%r10)
    movq -376(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_net_10http_token@PLT
    movl %eax, %r15d
.L8_11:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L8_8
    jmp .L8_9
.L8_8:
    movq %r12, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r12, %r10
    movq %r13, (%r10)
    jmp .L8_7
.L8_9:
    movq %r12, %r10
    movq (%r10), %r13
    movq -352(%rbp), %rax
    cmpq %r13, %rax
    jne .L8_15
.L8_14:
    leaq -80(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_54(%rip), %r12
    leaq -176(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $28, %rax
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
.L8_17:
    jmp .L8_16
.L8_15:
.L8_16:
    movq %r12, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %rdx
    call lb_net_13http_skip_ows@PLT
    movq %r12, %r10
    movq (%r10), %r14
    movq -328(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    jne .L8_19
.L8_18:
    movq %r12, %r10
    movq (%r10), %rbx
    cmpq %rbx, %r13
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L8_22
.L8_21:
    leaq -80(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_55(%rip), %r12
    leaq -192(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $38, %rax
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
.L8_24:
    jmp .L8_23
.L8_22:
.L8_23:
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
.L8_25:
    jmp .L8_20
.L8_19:
.L8_20:
    movq %r12, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    cmpq %r15, %r13
    jb 1f
    leaq .Ltext_56(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    addq %r14, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $59, %ecx
    cmpl %ecx, %r13d
    jne .L8_27
.L8_26:
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
.L8_29:
    jmp .L8_28
.L8_27:
.L8_28:
    movq %r12, %r10
    movq (%r10), %r13
    cmpq %r15, %r13
    jb 1f
    leaq .Ltext_57(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r13, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $61, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L8_31
.L8_30:
    leaq -80(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_58(%rip), %r12
    leaq -208(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $23, %rax
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
.L8_33:
    jmp .L8_32
.L8_31:
.L8_32:
    movq %r12, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %rdx
    call lb_net_13http_skip_ows@PLT
    movq %r12, %r10
    movq (%r10), %r13
    movq -328(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jne .L8_35
.L8_34:
    leaq -80(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_60(%rip), %r12
    leaq -224(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $29, %rax
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
.L8_37:
    jmp .L8_36
.L8_35:
.L8_36:
    movq %r12, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %r15
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    addq %r15, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $34, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L8_39
.L8_38:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -392(%rbp)
    leaq -240(%rbp), %rax
    movq %rax, -400(%rbp)
    movq -400(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -408(%rbp)
    leaq -256(%rbp), %rax
    movq %rax, -416(%rbp)
    movq -416(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -424(%rbp)
.L8_41:
    movq %r12, %r10
    movq (%r10), %r13
    movq -328(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r13
    setb %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L8_44
    jmp .L8_78
.L8_78:
    movl %r13d, %r15d
    jmp .L8_45
.L8_44:
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -472(%rbp)
    movq %r12, %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -480(%rbp)
    movq $1, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    cmpq %r13, %r14
    jb 1f
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -480(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -480(%rbp), %rcx
    cmpq %rcx, %r14
    jbe .L8_46
.L8_47:
    leaq .Ltext_62(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
.L8_46:
    movq -472(%rbp), %rax
    movq %rax, %r13
    addq %r14, %r13
    movq -480(%rbp), %rax
    movq %rax, %r15
    subq %r14, %r15
    movq -400(%rbp), %r10
    movq %r13, (%r10)
    movq -408(%rbp), %r10
    movq %r15, (%r10)
    movq -416(%rbp), %r10
    movq %r13, (%r10)
    movq -424(%rbp), %r10
    movq %r15, (%r10)
    movq -416(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_net_10http_token@PLT
    movl %eax, %r15d
.L8_45:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L8_42
    jmp .L8_43
.L8_42:
    movq %r12, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r12, %r10
    movq %r13, (%r10)
    jmp .L8_41
.L8_43:
    movq %r12, %r10
    movq (%r10), %rbx
    movq -392(%rbp), %rax
    cmpq %rbx, %rax
    jne .L8_49
.L8_48:
    leaq -80(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_64(%rip), %r12
    leaq -272(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $29, %rax
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
.L8_51:
    jmp .L8_50
.L8_49:
.L8_50:
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
.L8_52:
    jmp .L8_40
.L8_39:
.L8_40:
    movq %r12, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_65(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r12, %r10
    movq %r13, (%r10)
.L8_53:
    movq %r12, %r10
    movq (%r10), %r13
    movq -328(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L8_55
.L8_54:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -432(%rbp)
    movq %rbx, %r10
    movq (%r10), %r15
    movq -432(%rbp), %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_66(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -432(%rbp), %rax
    addq %r15, %rax
    movq %rax, -440(%rbp)
    movq -440(%rbp), %r10
    movzbl (%r10), %eax
    movl %eax, -448(%rbp)
    movq %r12, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_67(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %r12, %r10
    movq %r15, (%r10)
    movl -448(%rbp), %eax
    movzbl %al, %r15d
    movl $34, %ecx
    cmpl %ecx, %r15d
    jne .L8_57
.L8_56:
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
.L8_59:
    jmp .L8_58
.L8_57:
.L8_58:
    movl $92, %ecx
    cmpl %ecx, %r15d
    jne .L8_61
.L8_60:
    movq %r12, %r10
    movq (%r10), %r13
    movq -328(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jne .L8_64
.L8_63:
    leaq -80(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_68(%rip), %r12
    leaq -288(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $28, %rax
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
.L8_66:
    jmp .L8_65
.L8_64:
.L8_65:
    movq %r12, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %r15
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_69(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    addq %r15, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq %r12, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_70(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %r12, %r10
    movq %r15, (%r10)
    jmp .L8_62
.L8_61:
    movl -448(%rbp), %eax
    movl %eax, %r13d
.L8_62:
    movzbl %r13b, %r14d
    movl $32, %ecx
    cmpl %ecx, %r14d
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L8_70
    jmp .L8_79
.L8_79:
    movl %r15d, %r13d
    jmp .L8_71
.L8_70:
    movl $9, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
.L8_71:
    movzbl %r13b, %r15d
    testl %r15d, %r15d
    jne .L8_80
    jmp .L8_72
.L8_80:
    movl %r15d, %r13d
    jmp .L8_73
.L8_72:
    movl $127, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r13d
.L8_73:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L8_67
    jmp .L8_68
.L8_67:
    leaq -80(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_71(%rip), %r12
    leaq -304(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $25, %rax
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
.L8_74:
    jmp .L8_69
.L8_68:
.L8_69:
    jmp .L8_53
.L8_55:
    leaq -80(%rbp), %rbx
    leaq lb_net_12http_invalid(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_72(%rip), %r12
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
.L8_75:
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

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_9http_body_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "a tunnel has no HTTP body decoder"
.Ltext_1:
    .asciz "HTTP body exceeds its byte limit"
.Ltext_2:
    .asciz "unreachable"
.Ltext_3:
    .asciz "src/std/net/http/body.lucb:38:9"
.Ltext_4:
    .asciz "src/std/net/http/body.lucb:41:9"
.Ltext_5:
    .asciz "HTTP body decoder has failed"
.Ltext_6:
    .asciz "src/std/net/http/body.lucb:49:13"
.Ltext_7:
    .asciz "HTTP body ended before its framing completed"
.Ltext_8:
    .asciz "src/std/net/http/body.lucb:65:17"
.Ltext_9:
    .asciz "src/std/net/http/body.lucb:68:17"
.Ltext_10:
    .asciz "src/std/net/http/body.lucb:70:17"
.Ltext_11:
    .asciz "src/std/net/http/body.lucb:72:21"
.Ltext_12:
    .asciz "src/std/net/http/body.lucb:75:17"
.Ltext_13:
    .asciz "index out of bounds"
.Ltext_14:
    .asciz "src/std/net/http/body.lucb:76:13"
.Ltext_15:
    .asciz "src/std/net/http/body.lucb:77:13"
.Ltext_16:
    .asciz "chunk data must end with CRLF"
.Ltext_17:
    .asciz "src/std/net/http/body.lucb:85:17"
.Ltext_18:
    .asciz "HTTP trailers exceed their byte limit"
.Ltext_19:
    .asciz "chunk lines require CRLF"
.Ltext_20:
    .asciz "src/std/net/http/body.lucb:92:17"
.Ltext_21:
    .asciz "src/std/net/http/body.lucb:96:21"
.Ltext_22:
    .asciz "src/std/net/http/body.lucb:97:21"
.Ltext_23:
    .asciz "HTTP chunks exceed their count or byte limit"
.Ltext_24:
    .asciz "src/std/net/http/body.lucb:103:21"
.Ltext_25:
    .asciz "too many HTTP trailer fields"
.Ltext_26:
    .asciz ":"
.Ltext_27:
    .asciz "trailer needs a colon"
.Ltext_28:
    .asciz "src/std/net/http/body.lucb:107:21"
.Ltext_29:
    .asciz "invalid or forbidden HTTP trailer"
.Ltext_30:
    .asciz "chunk line exceeds its byte limit"
.Ltext_31:
    .asciz "src/std/net/http/body.lucb:118:17"
.Ltext_32:
    .asciz "src/std/net/http/body.lucb:119:17"
.Ltext_33:
    .asciz "src/std/net/http/body.lucb:120:9"
.Ltext_34:
    .asciz "integer overflow"
.Ltext_35:
    .asciz "src/std/net/http/body.lucb:124:9"
.Ltext_36:
    .asciz "src/std/net/http/body.lucb:126:9"
.Ltext_37:
    .asciz "src/std/net/http/body.lucb:128:9"
.Ltext_38:
    .asciz "src/std/net/http/body.lucb:129:5"
.Ltext_39:
    .asciz "src/std/net/http/body.lucb:135:9"
.Ltext_40:
    .asciz "src/std/net/http/body.lucb:136:9"
.Ltext_41:
    .asciz "division by zero"
.Ltext_42:
    .asciz "HTTP chunk length overflows u64"
.Ltext_43:
    .asciz "src/std/net/http/body.lucb:138:9"
.Ltext_44:
    .asciz "src/std/net/http/body.lucb:139:9"
.Ltext_45:
    .asciz "chunk size needs hexadecimal digits"
.Ltext_46:
    .asciz "src/std/net/http/body.lucb:144:5"
.Ltext_47:
    .asciz "src/std/net/http/body.lucb:147:5"
.Ltext_48:
    .asciz "src/std/net/http/body.lucb:148:9"
.Ltext_49:
    .asciz "src/std/net/http/body.lucb:152:5"
.Ltext_50:
    .asciz "invalid chunk extension separator"
.Ltext_51:
    .asciz "src/std/net/http/body.lucb:154:5"
.Ltext_52:
    .asciz "src/std/net/http/body.lucb:157:5"
.Ltext_53:
    .asciz "src/std/net/http/body.lucb:158:9"
.Ltext_54:
    .asciz "chunk extension needs a name"
.Ltext_55:
    .asciz "trailing whitespace in chunk extension"
.Ltext_56:
    .asciz "src/std/net/http/body.lucb:167:5"
.Ltext_57:
    .asciz "src/std/net/http/body.lucb:169:5"
.Ltext_58:
    .asciz "invalid chunk extension"
.Ltext_59:
    .asciz "src/std/net/http/body.lucb:171:5"
.Ltext_60:
    .asciz "chunk extension needs a value"
.Ltext_61:
    .asciz "src/std/net/http/body.lucb:175:5"
.Ltext_62:
    .asciz "src/std/net/http/body.lucb:177:9"
.Ltext_63:
    .asciz "src/std/net/http/body.lucb:178:13"
.Ltext_64:
    .asciz "invalid chunk extension value"
.Ltext_65:
    .asciz "src/std/net/http/body.lucb:182:5"
.Ltext_66:
    .asciz "src/std/net/http/body.lucb:184:9"
.Ltext_67:
    .asciz "src/std/net/http/body.lucb:185:9"
.Ltext_68:
    .asciz "incomplete chunk quoted pair"
.Ltext_69:
    .asciz "src/std/net/http/body.lucb:191:13"
.Ltext_70:
    .asciz "src/std/net/http/body.lucb:192:13"
.Ltext_71:
    .asciz "invalid chunk quoted text"
.Ltext_72:
    .asciz "unclosed chunk extension value"
.Ltext_73:
    .asciz "content-length"
.Ltext_74:
    .asciz "transfer-encoding"
.Ltext_75:
    .asciz "host"
.Ltext_76:
    .asciz "connection"
.Ltext_77:
    .asciz "trailer"
.Ltext_78:
    .asciz "upgrade"
.Ltext_79:
    .asciz "expect"
.Ltext_80:
    .asciz "authorization"
.Ltext_81:
    .asciz "content-type"
.Ltext_82:
    .asciz "content-encoding"
.Ltext_83:
    .asciz "content-range"
.Ltext_84:
    .asciz "src/std/net/http/body.lucb:202:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
