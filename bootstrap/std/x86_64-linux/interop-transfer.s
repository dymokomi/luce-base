    .text

    .p2align 4
    .globl lb_interop_transfer_0init
    .type lb_interop_transfer_0init, @function
lb_interop_transfer_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    movq lb_interop_PacketBytes_text@GOTPCREL(%rip), %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq lb_interop_13text_transfer(%rip), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -32(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    movq lb_interop_PacketBytes_copy@GOTPCREL(%rip), %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq lb_interop_14bytes_transfer(%rip), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_PacketBytes_drop
    .type lb_interop_PacketBytes_drop, @function
lb_interop_PacketBytes_drop:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -96(%rbp)
    leaq -72(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -104(%rbp)
    movq -104(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -112(%rbp)
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq -112(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq -96(%rbp), %r10
    movq (%r10), %r14
    movq -96(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -120(%rbp)
    movq -120(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L1_2
    jmp .L1_1
.L1_2:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L1_1:
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $16, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq -96(%rbp), %r10
    movq (%r10), %r13
    movq -120(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L1_4
    jmp .L1_3
.L1_4:
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
.L1_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_PacketBytes_copy
    .type lb_interop_PacketBytes_copy, @function
lb_interop_PacketBytes_copy:
    pushq %rbp
    movq %rsp, %rbp
    subq $464, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -128(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -144(%rbp), %rax
    movq %rax, -448(%rbp)
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -456(%rbp)
    leaq -128(%rbp), %rax
    movq %rax, -416(%rbp)
    movq -416(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -424(%rbp)
    movq -424(%rbp), %r10
    movq (%r10), %rbx
    leaq -192(%rbp), %rax
    movq %rax, -464(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %rbx
    jbe .L2_2
.L2_1:
    movq -464(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_1(%rip), %r13
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -464(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_3
.L2_2:
    movq -456(%rbp), %r10
    movq (%r10), %r13
    movq -456(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_4
    jmp .L2_5
.L2_5:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_4:
    movq %r14, %r10
    movq (%r10), %r15
    movq %r13, %rsi
    movq %rbx, %rdx
    movq $1, %rcx
    leaq -216(%rbp), %rdi
    movq %r15, %r11
    call *%r11
    leaq -216(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movq $0, %rcx
    cmpq %rcx, %rbx
    setne %al
    movzbl %al, %eax
    movl %eax, -432(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl -432(%rbp), %eax
    andl %r15d, %eax
    movl %eax, -440(%rbp)
    movl -440(%rbp), %eax
    testl %eax, %eax
    jne .L2_6
    jmp .L2_7
.L2_6:
    movq -464(%rbp), %rax
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
    movq -464(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_3
.L2_7:
    movq %r12, %r10
    movq (%r10), %r13
    movq -464(%rbp), %r10
    movq %r13, (%r10)
    movq -464(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq -464(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
.L2_3:
    movq -464(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_9
    jmp .L2_8
.L2_9:
    movq -464(%rbp), %rax
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
.L2_10:
.L2_8:
    movq -464(%rbp), %r10
    movq -448(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -424(%rbp), %r10
    movq (%r10), %rbx
    movq -448(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -416(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %rbx, %r8
    call lb_memory_copy_0g1_u8@PLT
    leaq -232(%rbp), %rbx
    movq -456(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -272(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L2_11
    jmp .L2_12
.L2_12:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_11:
    movq %rbx, %r10
    movq (%r10), %r14
    movq %r12, %rsi
    movq $16, %rdx
    movq $8, %rcx
    leaq -296(%rbp), %rdi
    movq %r14, %r11
    call *%r11
    leaq -296(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L2_13
    jmp .L2_14
.L2_14:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_4(%rip), %r12
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $16, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_15
.L2_13:
    movq %r15, %r10
    movq (%r10), %rbx
    leaq -312(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq -448(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L2_15:
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_17
    jmp .L2_16
.L2_17:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -112(%rbp), %r12
    movq $32, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
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
    leaq -328(%rbp), %rbx
    movq -448(%rbp), %r10
    movq (%r10), %r14
    movq -448(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq -456(%rbp), %r10
    movq (%r10), %r14
    movq -456(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L2_19
    jmp .L2_18
.L2_19:
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r14, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L2_18:
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
.L2_20:
.L2_16:
    movq %r13, %r10
    movq (%r10), %rbx
    leaq -360(%rbp), %r15
    movq %r15, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq lb_interop_PacketBytes_drop@GOTPCREL(%rip), %r12
    movq -448(%rbp), %r10
    leaq -376(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -392(%rbp), %r10
    movq %rbx, (%r10)
    leaq -408(%rbp), %r10
    movq %r12, (%r10)
    leaq -376(%rbp), %r14
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $24, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
.L2_22:
    leaq -112(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $56, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
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
.L2_21:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_interop_PacketBytes_text
    .type lb_interop_PacketBytes_text, @function
lb_interop_PacketBytes_text:
    pushq %rbp
    movq %rsp, %rbp
    subq $368, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -128(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -160(%rbp), %r12
    leaq -128(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -224(%rbp), %rdi
    call lb_interop_PacketBytes_copy@PLT
    leaq -224(%rbp), %r13
    movq $56, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_2
    jmp .L3_1
.L3_2:
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -112(%rbp), %r12
    movq $32, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
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
.L3_3:
.L3_1:
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -256(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -328(%rbp)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    leaq -272(%rbp), %r15
    movq -328(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -336(%rbp)
    movq -336(%rbp), %r10
    movq %r14, (%r10)
    movq $16, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -344(%rbp)
    movq -344(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -352(%rbp)
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r15, %r10
    leaq -288(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -352(%rbp), %rax
    leaq -304(%rbp), %r10
    movq %rax, (%r10)
    leaq -320(%rbp), %r10
    movq %r14, (%r10)
    leaq -288(%rbp), %r15
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq -352(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $24, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -360(%rbp)
    movq -360(%rbp), %r10
    movq %r14, (%r10)
.L3_5:
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
.L3_4:
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
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
    jne .L4_11
    jmp .L4_4
.L4_11:
    movl %r13d, %r14d
    jmp .L4_5
.L4_4:
    leaq -64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L4_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L4_1
    jmp .L4_2
.L4_1:
    leaq .Ltext_9(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_10(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L4_3
.L4_2:
.L4_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L4_7
.L4_6:
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
    jne .L4_9
    jmp .L4_10
.L4_10:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_9:
    jmp .L4_8
.L4_7:
.L4_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_Packet_0g1_u8_0c_init
    .type lb_interop_Packet_0g1_u8_0c_init, @function
    .weak lb_interop_Packet_0g1_u8_0c_init
lb_interop_Packet_0g1_u8_0c_init:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -32(%rbp)
    leaq -48(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movq %rcx, -64(%rbp)
    movq %r8, -80(%rbp)
    leaq -32(%rbp), %r10
    movq (%r10), %r13
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -64(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_interop_Packet_0g1_str_init
    .type lb_interop_Packet_0g1_str_init, @function
    .weak lb_interop_Packet_0g1_str_init
lb_interop_Packet_0g1_str_init:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -32(%rbp)
    leaq -48(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movq %rcx, -64(%rbp)
    movq %r8, -80(%rbp)
    leaq -32(%rbp), %r10
    movq (%r10), %r13
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -64(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_interop_transfer_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/interop/transfer.lucb:36:9"
.Ltext_1:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_2:
    .asciz "memory.unset"
.Ltext_3:
    .asciz "src/std/interop/transfer.lucb:40:9"
.Ltext_4:
    .asciz "memory.exhausted"
.Ltext_5:
    .asciz "src/std/interop/transfer.lucb:43:9"
.Ltext_6:
    .asciz "unreachable"
.Ltext_7:
    .asciz "src/std/interop/transfer.lucb:44:9"
.Ltext_8:
    .asciz "src/std/interop/transfer.lucb:48:9"
.Ltext_9:
    .asciz "index out of bounds"
.Ltext_10:
    .asciz "src/std/memory.lucb:326:9"
.Ltext_11:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_12:
    .asciz "null_foreign"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_interop_13text_transfer
    .type lb_interop_13text_transfer, @object
    .weak lb_interop_13text_transfer
    .p2align 3
lb_interop_13text_transfer:
    .zero 8

    .bss
    .globl lb_interop_14bytes_transfer
    .type lb_interop_14bytes_transfer, @object
    .weak lb_interop_14bytes_transfer
    .p2align 3
lb_interop_14bytes_transfer:
    .zero 8

    .section .note.GNU-stack,"",@progbits
