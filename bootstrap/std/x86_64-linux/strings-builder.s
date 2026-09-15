    .text

    .p2align 4
    .globl lb_strings_builder_0init
    .type lb_strings_builder_0init, @function
lb_strings_builder_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_strings_Builder_create
    .type lb_strings_Builder_create, @function
lb_strings_Builder_create:
    pushq %rbp
    movq %rsp, %rbp
    subq $320, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -136(%rbp)
    leaq -136(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L1_2
.L1_1:
    movq %rbx, %r12
    jmp .L1_3
.L1_2:
    movq $64, %rax
    movq %rax, %r12
.L1_3:
    leaq -144(%rbp), %rbx
    movq %r12, %rdi
    movq $1, %rsi
    movl $64, %edx
    movq %rbx, %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r13d
    leaq -160(%rbp), %r14
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movb %r13b, (%r10)
    movq %r14, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_4
    jmp .L1_5
.L1_4:
    jmp .L1_6
.L1_5:
    leaq -120(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_0(%rip), %r13
    leaq -176(%rbp), %r14
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_7:
.L1_6:
    leaq -216(%rbp), %rax
    movq %rax, -304(%rbp)
    movq -304(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -312(%rbp)
    leaq -264(%rbp), %rax
    movq %rax, -320(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %rbx
    jbe .L1_9
.L1_8:
    movq -320(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_1(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -320(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_10
.L1_9:
    movq -312(%rbp), %r10
    movq (%r10), %r12
    movq -312(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L1_11
    jmp .L1_12
.L1_12:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_11:
    movq %r13, %r10
    movq (%r10), %r14
    movq %r12, %rsi
    movq %rbx, %rdx
    movq $1, %rcx
    leaq -288(%rbp), %rdi
    movq %r14, %r11
    call *%r11
    leaq -288(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq $0, %rcx
    cmpq %rcx, %rbx
    setne %al
    movzbl %al, %eax
    movl %eax, -296(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl -296(%rbp), %eax
    movl %r14d, %ecx
    movl %eax, %r14d
    andl %ecx, %r14d
    testl %r14d, %r14d
    jne .L1_13
    jmp .L1_14
.L1_13:
    movq -320(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_4(%rip), %r12
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
    movq -320(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L1_10
.L1_14:
    movq %r15, %r10
    movq (%r10), %r12
    movq -320(%rbp), %r10
    movq %r12, (%r10)
    movq -320(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq -320(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L1_10:
    movq -320(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_16
    jmp .L1_15
.L1_16:
    movq -320(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -120(%rbp), %r12
    movq $40, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
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
.L1_17:
.L1_15:
    movq -320(%rbp), %r10
    movq -304(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -304(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -304(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -312(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -120(%rbp), %rbx
    movq -304(%rbp), %r10
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
    movq %rbx, %rsi
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
.L1_18:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_Builder_capacity
    .type lb_strings_Builder_capacity, @function
lb_strings_Builder_capacity:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -24(%rbp)
    leaq -24(%rbp), %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L2_2
.L2_1:
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    jmp .L2_3
.L2_2:
    movq $0, %rax
    movq %rax, %r12
.L2_3:
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_4:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_Builder_length
    .type lb_strings_Builder_length, @function
lb_strings_Builder_length:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -16(%rbp)
    leaq -16(%rbp), %r10
    movq (%r10), %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_1:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_Builder_reserve
    .type lb_strings_Builder_reserve, @function
lb_strings_Builder_reserve:
    pushq %rbp
    movq %rsp, %rbp
    subq $304, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    movq %rdx, -104(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -304(%rbp)
    movq -304(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -296(%rbp)
    movq -296(%rbp), %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L4_2
.L4_1:
    leaq -80(%rbp), %rbx
    leaq lb_io_closed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_8(%rip), %r12
    leaq -120(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $31, %rax
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
.L4_4:
    jmp .L4_3
.L4_2:
.L4_3:
    movq -304(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    leaq -128(%rbp), %r15
    movq %r12, %rdi
    movq %r14, %rsi
    movl $64, %edx
    movq %r15, %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r12d
    leaq -144(%rbp), %rbx
    movq %r15, %r10
    movq (%r10), %r14
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movb %r12b, (%r10)
    movq %r15, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L4_5
    jmp .L4_6
.L4_5:
    jmp .L4_7
.L4_6:
    leaq -80(%rbp), %rbx
    leaq lb_memory_exhausted(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_9(%rip), %r12
    leaq -160(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $26, %rax
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
.L4_8:
.L4_7:
    leaq -168(%rbp), %rbx
    movq %r14, %rdi
    movq $1, %rsi
    movl $64, %edx
    movq %rbx, %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r12d
    leaq -184(%rbp), %r15
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movb %r12b, (%r10)
    movq %r15, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L4_9
    jmp .L4_10
.L4_9:
    jmp .L4_11
.L4_10:
    leaq -80(%rbp), %rbx
    leaq lb_memory_exhausted(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_9(%rip), %r12
    leaq -200(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $26, %rax
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
.L4_12:
.L4_11:
    movq -296(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    ja .L4_14
.L4_13:
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
.L4_16:
    jmp .L4_15
.L4_14:
.L4_15:
    leaq -208(%rbp), %r14
    movq %r12, %rdi
    movq $2, %rsi
    movl $64, %edx
    movq %r14, %rcx
    call lb_core_6qmul_u@PLT
    movl %eax, %r15d
    leaq -224(%rbp), %r13
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movb %r15b, (%r10)
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L4_17
    jmp .L4_18
.L4_17:
    movq %r14, %r12
    jmp .L4_19
.L4_18:
    movq %rbx, %r12
.L4_19:
    cmpq %rbx, %r12
    jae .L4_21
.L4_20:
    movq %rbx, %r12
    jmp .L4_22
.L4_21:
.L4_22:
    leaq -240(%rbp), %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -304(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -304(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %rcx
    leaq -288(%rbp), %rdi
    call lb_memory_grow@PLT
    leaq -288(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L4_24
    jmp .L4_23
.L4_24:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq -80(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %rsi
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
.L4_25:
.L4_23:
    movq %r15, %r10
    movq -304(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -80(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $0, %eax
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

    .p2align 4
    .globl lb_strings_Builder_write
    .type lb_strings_Builder_write, @function
lb_strings_Builder_write:
    pushq %rbp
    movq %rsp, %rbp
    subq $384, %rsp
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
    movq %rax, -360(%rbp)
    movq -360(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -280(%rbp)
    movq -280(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -288(%rbp)
    movq -288(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L5_2
.L5_1:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_8(%rip), %r13
    leaq -128(%rbp), %r14
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
.L5_4:
    jmp .L5_3
.L5_2:
.L5_3:
    leaq -112(%rbp), %rax
    movq %rax, -296(%rbp)
    movq -296(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -304(%rbp)
    movq -304(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -312(%rbp)
    movq -312(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L5_6
.L5_5:
    leaq -88(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
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
    jmp .L5_7
.L5_6:
.L5_7:
    movq -360(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -320(%rbp)
    movq -296(%rbp), %r10
    movq (%r10), %r15
    leaq -144(%rbp), %rax
    movq %rax, -328(%rbp)
    leaq -160(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq -328(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -320(%rbp), %rcx
    cmpq %rcx, %r15
    setae %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L5_12
    jmp .L5_34
.L5_34:
    movl %ebx, %r13d
    jmp .L5_13
.L5_12:
    movq -320(%rbp), %rcx
    movq %r15, %rbx
    subq %rcx, %rbx
    movq -288(%rbp), %rcx
    cmpq %rcx, %rbx
    setb %al
    movzbl %al, %r13d
.L5_13:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L5_9
    jmp .L5_10
.L5_9:
    movq %r15, %rax
    movq -320(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -360(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L5_35
    jmp .L5_17
.L5_35:
    movl %r12d, %r13d
    jmp .L5_18
.L5_17:
    movq %r13, %r12
    subq %rbx, %r12
    movq -312(%rbp), %rax
    cmpq %r12, %rax
    seta %al
    movzbl %al, %r12d
    movl %r12d, %r13d
.L5_18:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L5_14
    jmp .L5_15
.L5_14:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_14invalid_buffer(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_13(%rip), %r13
    leaq -176(%rbp), %r14
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
.L5_19:
    jmp .L5_16
.L5_15:
.L5_16:
    leaq -192(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq -328(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rax
    movq %rax, -376(%rbp)
    jmp .L5_11
.L5_10:
    movq $0, %rax
    movq %rax, -376(%rbp)
.L5_11:
    movq -360(%rbp), %rsi
    movq -312(%rbp), %rdx
    leaq -224(%rbp), %rdi
    call lb_strings_Builder_reserve@PLT
    leaq -224(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_21
    jmp .L5_20
.L5_21:
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
.L5_22:
.L5_20:
    movq -328(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_26
    jmp .L5_24
.L5_26:
.L5_23:
    movq -360(%rbp), %r10
    movq (%r10), %r13
    movq -280(%rbp), %r10
    movq (%r10), %r15
    movq -360(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    cmpq %rbx, %r12
    jb 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_15(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r15
    jb 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_15(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r15, %r12
    jbe .L5_27
.L5_28:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_15(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_27:
    movq %r13, %rbx
    addq %r12, %rbx
    movq %r15, %rax
    subq %r12, %rax
    movq %rax, -336(%rbp)
    leaq -240(%rbp), %rax
    movq %rax, -344(%rbp)
    movq -344(%rbp), %r10
    movq %rbx, (%r10)
    movq -344(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -336(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -360(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -368(%rbp)
    movq -280(%rbp), %r10
    movq (%r10), %r14
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq -376(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_15(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r14
    jb 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_15(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -376(%rbp), %rax
    cmpq %r14, %rax
    jbe .L5_29
.L5_30:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_15(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_29:
    movq -368(%rbp), %rax
    movq -376(%rbp), %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -376(%rbp), %rcx
    movq %r14, %r12
    subq %rcx, %r12
    leaq -256(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq -304(%rbp), %r10
    movq (%r10), %rbx
    movq -344(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r13, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %rbx, %r8
    call lb_memory_move_0g1_u8@PLT
    jmp .L5_25
.L5_24:
    movq -360(%rbp), %r10
    movq (%r10), %r12
    movq -280(%rbp), %r10
    movq (%r10), %r13
    movq -360(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r14
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    cmpq %rbx, %r14
    jb 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_15(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_15(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r13, %r14
    jbe .L5_31
.L5_32:
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_15(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_31:
    movq %r12, %rbx
    addq %r14, %rbx
    movq %r13, %rax
    subq %r14, %rax
    movq %rax, -352(%rbp)
    leaq -272(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq -352(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -304(%rbp), %r10
    movq (%r10), %rbx
    movq %r15, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -296(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %rbx, %r8
    call lb_memory_move_0g1_u8@PLT
.L5_25:
    movq -360(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq -304(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq -304(%rbp), %r10
    movq (%r10), %rbx
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
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
.L5_33:
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_Builder_put
    .type lb_strings_Builder_put, @function
lb_strings_Builder_put:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %rsi, -72(%rbp)
    leaq -88(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -72(%rbp), %r10
    movq (%r10), %r12
    leaq -88(%rbp), %rbx
    movq %r12, %rsi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -128(%rbp), %rdi
    call lb_strings_Builder_write@PLT
    leaq -128(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_2
    jmp .L6_1
.L6_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -64(%rbp), %r13
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_3:
.L6_1:
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
    .globl lb_strings_Builder_view
    .type lb_strings_Builder_view, @function
lb_strings_Builder_view:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -64(%rbp)
    leaq -64(%rbp), %r10
    movq (%r10), %r15
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    cmpq %r14, %r12
    jae .L7_2
.L7_1:
    movq %r15, %r10
    movq (%r10), %r14
    movq %r14, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    jmp .L7_3
.L7_2:
.L7_3:
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, -104(%rbp)
    movq %r13, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq (%r10), %r14
    movq $1, %rcx
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_15(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r14
    jb 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_15(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r14, %rax
    jbe .L7_4
.L7_5:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_15(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_4:
    leaq -80(%rbp), %rbx
    movq -104(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    leaq -96(%rbp), %rbx
    movq -104(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
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
.L7_6:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_5(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_Builder_clear
    .type lb_strings_Builder_clear, @function
lb_strings_Builder_clear:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -16(%rbp)
    leaq -16(%rbp), %r10
    movq (%r10), %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_strings_Builder_truncate
    .type lb_strings_Builder_truncate, @function
lb_strings_Builder_truncate:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    movq %rdx, -104(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L9_2
.L9_1:
    leaq -80(%rbp), %rbx
    leaq lb_io_closed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_8(%rip), %r12
    leaq -120(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $31, %rax
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
.L9_4:
    jmp .L9_3
.L9_2:
.L9_3:
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    cmpq %r15, %r12
    jbe .L9_6
.L9_5:
    leaq -80(%rbp), %rbx
    leaq lb_io_14invalid_buffer(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_21(%rip), %r12
    leaq -136(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $36, %rax
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
.L9_8:
    jmp .L9_7
.L9_6:
.L9_7:
    movq %r14, %r10
    movq %r12, (%r10)
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -144(%rbp)
    cmpq %rbx, %r12
    jb 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_15(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -144(%rbp), %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -152(%rbp)
    movl $0, %eax
    movq -152(%rbp), %r10
    movb %al, (%r10)
    leaq -80(%rbp), %rax
    movq %rax, -160(%rbp)
    movq -160(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movl $0, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq -160(%rbp), %rsi
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
    .globl lb_strings_Builder_destroy
    .type lb_strings_Builder_destroy, @function
lb_strings_Builder_destroy:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
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
    jbe .L10_2
.L10_1:
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
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
    jne .L10_5
    jmp .L10_4
.L10_5:
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
.L10_4:
    jmp .L10_3
.L10_2:
.L10_3:
    leaq -80(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_memory_move_0g1_u8
    .type lb_memory_move_0g1_u8, @function
    .weak lb_memory_move_0g1_u8
lb_memory_move_0g1_u8:
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
    jne .L11_11
    jmp .L11_4
.L11_11:
    movl %r13d, %r14d
    jmp .L11_5
.L11_4:
    leaq -64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L11_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L11_1
    jmp .L11_2
.L11_1:
    leaq .Ltext_15(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_24(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L11_3
.L11_2:
.L11_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L11_7
.L11_6:
    movq %r12, %r10
    movq (%r10), %r13
    leaq -64(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %rdi
    movq %r14, %rsi
    movq %rbx, %rdx
    call memmove@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L11_9
    jmp .L11_10
.L11_10:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_9:
    jmp .L11_8
.L11_7:
.L11_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_strings_builder_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "the builder capacity is too large"
.Ltext_1:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_2:
    .asciz "memory.unset"
.Ltext_3:
    .asciz "src/std/strings/builder.lucb:15:9"
.Ltext_4:
    .asciz "memory.exhausted"
.Ltext_5:
    .asciz "unreachable"
.Ltext_6:
    .asciz "src/std/strings/builder.lucb:19:9"
.Ltext_7:
    .asciz "src/std/strings/builder.lucb:23:9"
.Ltext_8:
    .asciz "the string builder is destroyed"
.Ltext_9:
    .asciz "the builder size overflows"
.Ltext_10:
    .asciz "src/std/strings/builder.lucb:52:9"
.Ltext_11:
    .asciz "src/std/strings/builder.lucb:53:13"
.Ltext_12:
    .asciz "src/std/strings/builder.lucb:54:13"
.Ltext_13:
    .asciz "the builder input is outside its initialized text"
.Ltext_14:
    .asciz "src/std/strings/builder.lucb:59:13"
.Ltext_15:
    .asciz "index out of bounds"
.Ltext_16:
    .asciz "src/std/strings/builder.lucb:61:13"
.Ltext_17:
    .asciz "src/std/strings/builder.lucb:62:9"
.Ltext_18:
    .asciz "src/std/strings/builder.lucb:63:9"
.Ltext_19:
    .asciz "src/std/strings/builder.lucb:72:13"
.Ltext_20:
    .asciz "src/std/strings/builder.lucb:73:9"
.Ltext_21:
    .asciz "truncation cannot extend the builder"
.Ltext_22:
    .asciz "src/std/strings/builder.lucb:87:9"
.Ltext_23:
    .asciz "src/std/strings/builder.lucb:92:13"
.Ltext_24:
    .asciz "src/std/memory.lucb:334:9"
.Ltext_25:
    .asciz "src/std/memory.lucb:336:9"
.Ltext_26:
    .asciz "null_foreign"
.Ltext_27:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
