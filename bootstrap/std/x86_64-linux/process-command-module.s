    .text

    .p2align 4
    .globl lb_process_14command_module_0init
    .type lb_process_14command_module_0init, @function
lb_process_14command_module_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    leaq -64(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq .Ltext_0(%rip), %r12
    leaq -80(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $7, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq lb_process_Command_close@GOTPCREL(%rip), %r12
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $33, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq lb_process_12command_type(%rip), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_process_12command_text
    .type lb_process_12command_text, @function
lb_process_12command_text:
    pushq %rbp
    movq %rsp, %rbp
    subq $224, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -112(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_utf8_valid@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_2
.L1_1:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_1(%rip), %r13
    leaq -128(%rbp), %r14
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
.L1_4:
    jmp .L1_3
.L1_2:
.L1_3:
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rax
    movq %rax, %r14
.L1_5:
    cmpq %r13, %r14
    jae .L1_8
.L1_6:
    movq %r12, %r15
    addq %r14, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movzbl %r15b, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L1_10
.L1_9:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_process_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
    leaq -144(%rbp), %r14
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
.L1_12:
    jmp .L1_11
.L1_10:
.L1_11:
.L1_7:
    movq $1, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r14
    jmp .L1_5
.L1_8:
    leaq -160(%rbp), %rax
    movq %rax, -216(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq -216(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_memory_heap(%rip), %r14
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -208(%rbp), %rdi
    call lb_strings_copy@PLT
    leaq -208(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L1_14
    jmp .L1_13
.L1_14:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq -96(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -216(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %rsi
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
.L1_15:
.L1_13:
    leaq -96(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -216(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
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
.L1_16:
    leaq -160(%rbp), %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_Command_init
    .type lb_process_Command_init, @function
lb_process_Command_init:
    pushq %rbp
    movq %rsp, %rbp
    subq $1040, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    leaq -104(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -120(%rbp), %r10
    movq %r8, 0(%r10)
    movq %r9, 8(%r10)
    movq 32(%rbp), %rax
    movq %rax, -152(%rbp)
    leaq 16(%rbp), %r10
    leaq -136(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 40(%rbp), %r10
    leaq -176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq -88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -944(%rbp)
    leaq -104(%rbp), %rax
    movq %rax, -872(%rbp)
    movq -872(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L2_64
    jmp .L2_4
.L2_64:
    movl %r12d, %r14d
    jmp .L2_5
.L2_4:
    leaq -152(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $1, %rcx
    cmpq %rcx, %r12
    setb %al
    movzbl %al, %r14d
.L2_5:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L2_65
    jmp .L2_6
.L2_65:
    movl %r12d, %r14d
    jmp .L2_7
.L2_6:
    leaq -152(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $16777216, %rcx
    cmpq %rcx, %r12
    seta %al
    movzbl %al, %r14d
.L2_7:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L2_1
    jmp .L2_2
.L2_1:
    leaq -80(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_5(%rip), %r12
    leaq -192(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $58, %rax
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
.L2_8:
    jmp .L2_3
.L2_2:
.L2_3:
    leaq lb_memory_heap(%rip), %rax
    movq %rax, -880(%rbp)
    leaq -208(%rbp), %r14
    movq -880(%rbp), %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -248(%rbp), %rax
    movq %rax, -952(%rbp)
    movq %r14, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_9
    jmp .L2_10
.L2_10:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_9:
    movq %r14, %r10
    movq (%r10), %r12
    movq %r15, %rsi
    movq $160, %rdx
    movq $8, %rcx
    leaq -272(%rbp), %rdi
    movq %r12, %r11
    call *%r11
    leaq -272(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_11
    jmp .L2_12
.L2_12:
    movq -952(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_8(%rip), %r12
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
    movq -952(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_13
.L2_11:
    movq %rbx, %r10
    movq (%r10), %r12
    leaq -432(%rbp), %r14
    movq %r14, %rdi
    xorl %esi, %esi
    movq $160, %rdx
    call memset@PLT
    leaq -152(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $48, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $136, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $-1, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    movq %r14, %rsi
    movq $160, %rdx
    call memcpy@PLT
    movq -952(%rbp), %r10
    movq %r12, (%r10)
    movq -952(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L2_13:
    movq -952(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_15
    jmp .L2_14
.L2_15:
    movq -952(%rbp), %rax
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
.L2_16:
.L2_14:
    movq -952(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -888(%rbp)
    movq -888(%rbp), %rax
    movq $56, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq -872(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -480(%rbp), %rdi
    call lb_process_12command_text@PLT
    leaq -480(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_18
    jmp .L2_17
.L2_18:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq -80(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -888(%rbp), %rdi
    call lb_process_15command_dispose@PLT
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
.L2_19:
.L2_17:
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -888(%rbp), %rax
    movq $72, %rcx
    addq %rcx, %rax
    movq %rax, -960(%rbp)
    leaq -136(%rbp), %r12
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -528(%rbp), %rdi
    call lb_process_12command_text@PLT
    leaq -528(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_21
    jmp .L2_20
.L2_21:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq -80(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -888(%rbp), %rdi
    call lb_process_15command_dispose@PLT
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
.L2_22:
.L2_20:
    movq %r15, %r10
    movq -960(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -888(%rbp), %rax
    movq $88, %rcx
    addq %rcx, %rax
    movq %rax, -968(%rbp)
    leaq -120(%rbp), %rax
    movq %rax, -896(%rbp)
    movq -896(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -976(%rbp)
    leaq -576(%rbp), %rax
    movq %rax, -984(%rbp)
    movq -976(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L2_24
.L2_23:
    movq -984(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $208273409, %eax
    movq %r13, %r10
    movl %eax, (%r10)
    leaq .Ltext_9(%rip), %r15
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -984(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_25
.L2_24:
    movq -976(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq -880(%rbp), %r10
    movq (%r10), %rbx
    movq -880(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L2_26
    jmp .L2_27
.L2_27:
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_26:
    movq %r13, %r10
    movq (%r10), %r12
    movq %rbx, %rsi
    movq %r15, %rdx
    movq $8, %rcx
    leaq -600(%rbp), %rdi
    movq %r12, %r11
    call *%r11
    leaq -600(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq $0, %rcx
    cmpq %rcx, %r15
    setne %al
    movzbl %al, %eax
    movl %eax, -904(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl -904(%rbp), %eax
    movl %r12d, %ecx
    movl %eax, %r12d
    andl %ecx, %r12d
    testl %r12d, %r12d
    jne .L2_28
    jmp .L2_29
.L2_28:
    movq -984(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
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
    jmp .L2_25
.L2_29:
    movq %r14, %r10
    movq (%r10), %rbx
    movq -984(%rbp), %r10
    movq %rbx, (%r10)
    movq -984(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -976(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -984(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L2_25:
    movq -984(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_31
    jmp .L2_30
.L2_31:
    movq -984(%rbp), %rax
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
    movq -888(%rbp), %rdi
    call lb_process_15command_dispose@PLT
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
.L2_32:
.L2_30:
    movq -984(%rbp), %r10
    movq -968(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -968(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -648(%rbp), %rax
    movq %rax, -1040(%rbp)
    movq -1040(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq -888(%rbp), %rax
    movq $104, %rcx
    addq %rcx, %rax
    movq %rax, -912(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L2_33:
    movq -976(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L2_36
.L2_34:
    movq -968(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    jb 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %r14, %r15
    imulq %rcx, %r15
    movq %r13, %rax
    addq %r15, %rax
    movq %rax, -1032(%rbp)
    movq -896(%rbp), %r10
    movq (%r10), %r13
    movq $16, %rcx
    movq %r14, %r15
    imulq %rcx, %r15
    addq %r15, %r13
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -648(%rbp), %rdi
    call lb_process_12command_text@PLT
    movq %r12, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L2_38
    jmp .L2_37
.L2_38:
    movq -1040(%rbp), %rax
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
    movq -888(%rbp), %rdi
    call lb_process_15command_dispose@PLT
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
.L2_39:
.L2_37:
    movq -1040(%rbp), %r10
    movq (%r10), %r13
    movq -1032(%rbp), %r10
    movq %r13, (%r10)
    movq -912(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -912(%rbp), %r10
    movq %r13, (%r10)
.L2_35:
    movq $1, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r14
    jmp .L2_33
.L2_36:
    leaq -176(%rbp), %r12
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_43
    jmp .L2_41
.L2_43:
    leaq -664(%rbp), %rax
    movq %rax, -920(%rbp)
    movq %r12, %r10
    movq -920(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L2_40:
    movq -888(%rbp), %rax
    movq $112, %rcx
    addq %rcx, %rax
    movq %rax, -992(%rbp)
    movq -920(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -1000(%rbp)
    leaq -712(%rbp), %rax
    movq %rax, -1008(%rbp)
    movq -1000(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L2_45
.L2_44:
    movq -1008(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_9(%rip), %rbx
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -1008(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_46
.L2_45:
    movq -1000(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq -880(%rbp), %r10
    movq (%r10), %rbx
    movq -880(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L2_47
    jmp .L2_48
.L2_48:
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_47:
    movq %r12, %r10
    movq (%r10), %r14
    movq %rbx, %rsi
    movq %r13, %rdx
    movq $8, %rcx
    leaq -736(%rbp), %rdi
    movq %r14, %r11
    call *%r11
    leaq -736(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq $0, %rcx
    cmpq %rcx, %r13
    setne %al
    movzbl %al, %eax
    movl %eax, -928(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl -928(%rbp), %eax
    movl %r14d, %ecx
    movl %eax, %r14d
    andl %ecx, %r14d
    testl %r14d, %r14d
    jne .L2_49
    jmp .L2_50
.L2_49:
    movq -1008(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
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
    movq $16, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -1008(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_46
.L2_50:
    movq %r15, %r10
    movq (%r10), %rbx
    movq -1008(%rbp), %r10
    movq %rbx, (%r10)
    movq -1008(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -1000(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -1008(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L2_46:
    movq -1008(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_52
    jmp .L2_51
.L2_52:
    movq -1008(%rbp), %rax
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
    movq -888(%rbp), %rdi
    call lb_process_15command_dispose@PLT
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
.L2_53:
.L2_51:
    movq -1008(%rbp), %r10
    movq -992(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -992(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -784(%rbp), %rax
    movq %rax, -1024(%rbp)
    movq -1024(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq -888(%rbp), %rax
    movq $128, %rcx
    addq %rcx, %rax
    movq %rax, -936(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L2_54:
    movq -1000(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L2_57
.L2_55:
    movq -992(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq (%r10), %r15
    cmpq %r15, %r14
    jb 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $8, %rcx
    movq %r14, %r15
    imulq %rcx, %r15
    movq %r13, %rax
    addq %r15, %rax
    movq %rax, -1016(%rbp)
    movq -920(%rbp), %r10
    movq (%r10), %r13
    movq $16, %rcx
    movq %r14, %r15
    imulq %rcx, %r15
    addq %r15, %r13
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -784(%rbp), %rdi
    call lb_process_12command_text@PLT
    movq %r12, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L2_59
    jmp .L2_58
.L2_59:
    movq -1024(%rbp), %rax
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
    movq -888(%rbp), %rdi
    call lb_process_15command_dispose@PLT
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
.L2_60:
.L2_58:
    movq -1024(%rbp), %r10
    movq (%r10), %r13
    movq -1016(%rbp), %r10
    movq %r13, (%r10)
    movq -936(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -936(%rbp), %r10
    movq %r13, (%r10)
.L2_56:
    movq $1, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r14
    jmp .L2_54
.L2_57:
    jmp .L2_42
.L2_41:
.L2_42:
    leaq -792(%rbp), %r14
    movq lb_process_13command_entry@GOTPCREL(%rip), %rbx
    leaq .Ltext_16(%rip), %r12
    leaq -808(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $7, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %rbx, %rsi
    movq -888(%rbp), %rdx
    movq $0, %rcx
    movq %r13, %r10
    movq 0(%r10), %r8
    movq 8(%r10), %r9
    leaq -848(%rbp), %rdi
    call lb_thread_spawn@PLT
    leaq -848(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_62
    jmp .L2_61
.L2_62:
    movq $8, %rcx
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
    movq -888(%rbp), %rdi
    call lb_process_15command_dispose@PLT
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
.L2_63:
.L2_61:
    movq %r12, %r10
    movq %r14, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq -888(%rbp), %rax
    movq -944(%rbp), %r10
    movq %rax, (%r10)
    movq -944(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -864(%rbp), %r13
    movq %r14, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
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
    .globl lb_process_Command_state
    .type lb_process_Command_state, @function
lb_process_Command_state:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -24(%rbp)
    leaq -24(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L3_1
    jmp .L3_2
.L3_1:
    jmp .L3_3
.L3_2:
    leaq .Ltext_17(%rip), %rbx
    leaq -40(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $21, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_18(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_3:
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_4:
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_Command_11is_finished
    .type lb_process_Command_11is_finished, @function
lb_process_Command_11is_finished:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -16(%rbp)
    leaq -16(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_process_Command_state@PLT
    movq %rax, %rbx
    movq $1, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %eax
    movl %eax, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_1:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_Command_revision
    .type lb_process_Command_revision, @function
lb_process_Command_revision:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -16(%rbp)
    leaq -16(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_process_Command_state@PLT
    movq %rax, %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_1:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_Command_9exit_code
    .type lb_process_Command_9exit_code, @function
lb_process_Command_9exit_code:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -48(%rbp)
    leaq -48(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call lb_process_Command_11is_finished@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L6_2
.L6_1:
    leaq -64(%rbp), %rbx
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
.L6_4:
    jmp .L6_3
.L6_2:
.L6_3:
    movq %r12, %rdi
    call lb_process_Command_state@PLT
    movq %rax, %rbx
    movq $136, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -80(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -40(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_5:
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_Command_output
    .type lb_process_Command_output, @function
lb_process_Command_output:
    pushq %rbp
    movq %rsp, %rbp
    subq $752, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -112(%rbp)
    leaq -112(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -696(%rbp)
    movq -696(%rbp), %rdi
    call lb_process_Command_state@PLT
    movq %rax, %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    movq %rbx, %rdi
    call lb_sync_Mutex_lock@PLT
    leaq -128(%rbp), %rax
    movq %rax, -544(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -552(%rbp)
    movq -552(%rbp), %r10
    movq -544(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_memory_heap(%rip), %r13
    movq %r13, %r10
    movq -552(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -168(%rbp), %rax
    movq %rax, -704(%rbp)
    movq -696(%rbp), %rdi
    call lb_process_Command_state@PLT
    movq %rax, %r13
    movq $40, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rsi
    leaq -240(%rbp), %rdi
    call lb_strings_Builder_create@PLT
    leaq -240(%rbp), %r15
    movq $64, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L7_2
    jmp .L7_1
.L7_2:
    movq $40, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    leaq -104(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -544(%rbp), %r10
    movq -552(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -696(%rbp), %rdi
    call lb_process_Command_state@PLT
    movq %rax, %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    movq %rbx, %rdi
    call lb_sync_Mutex_unlock@PLT
    movq %r14, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L7_1:
    movq %r15, %r10
    movq -704(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    leaq -256(%rbp), %rax
    movq %rax, -712(%rbp)
    movq -696(%rbp), %rdi
    call lb_process_Command_state@PLT
    movq %rax, %rbx
    movq $24, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq -696(%rbp), %rdi
    call lb_process_Command_state@PLT
    movq %rax, %r13
    movq $40, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $1, %rcx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r13, %rax
    jbe .L7_4
.L7_5:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_4:
    leaq -272(%rbp), %rax
    movq %rax, -560(%rbp)
    movq -560(%rbp), %r10
    movq %r12, (%r10)
    movq -560(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -568(%rbp)
    movq -568(%rbp), %r10
    movq %r13, (%r10)
    movq -560(%rbp), %r10
    movq -712(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -712(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -576(%rbp)
    leaq -296(%rbp), %rax
    movq %rax, -728(%rbp)
    movq -728(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -584(%rbp)
    leaq .Ltext_24(%rip), %rax
    movq %rax, -664(%rbp)
    leaq -432(%rbp), %rax
    movq %rax, -672(%rbp)
    movq -672(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -680(%rbp)
    leaq -464(%rbp), %rax
    movq %rax, -736(%rbp)
    movq -736(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -688(%rbp)
    leaq -312(%rbp), %rax
    movq %rax, -592(%rbp)
    movq -592(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -632(%rbp)
    leaq -376(%rbp), %r15
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -640(%rbp)
    leaq -416(%rbp), %rax
    movq %rax, -744(%rbp)
    movq -744(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -648(%rbp)
    leaq .Ltext_24(%rip), %rax
    movq %rax, -600(%rbp)
    leaq -328(%rbp), %rax
    movq %rax, -608(%rbp)
    movq -608(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -616(%rbp)
    leaq -360(%rbp), %rax
    movq %rax, -752(%rbp)
    movq -752(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -624(%rbp)
    movq -592(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -656(%rbp)
    movq $0, %rax
    movq %rax, -720(%rbp)
.L7_6:
    movq -576(%rbp), %r10
    movq (%r10), %r12
    movq -720(%rbp), %rax
    cmpq %r12, %rax
    jae .L7_8
.L7_7:
    movq -712(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -720(%rbp), %rcx
    leaq -296(%rbp), %rdi
    call lb_utf8_decode@PLT
    movq -584(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L7_12
    jmp .L7_10
.L7_12:
    movq -728(%rbp), %r10
    movq -592(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L7_9:
    movq -592(%rbp), %r10
    movl (%r10), %r12d
    movl %r12d, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L7_14
.L7_13:
    movq -600(%rbp), %rax
    movq -608(%rbp), %r10
    movq %rax, (%r10)
    movq $3, %rax
    movq -616(%rbp), %r10
    movq %rax, (%r10)
    movq -704(%rbp), %rsi
    movq -608(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -360(%rbp), %rdi
    call lb_strings_Builder_put@PLT
    movq -624(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L7_17
    jmp .L7_16
.L7_17:
    leaq -104(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq -752(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -704(%rbp), %rdi
    call lb_strings_Builder_destroy@PLT
    movq -544(%rbp), %r10
    movq -552(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -696(%rbp), %rdi
    call lb_process_Command_state@PLT
    movq %rax, %r13
    movq $16, %rcx
    addq %rcx, %r13
    movq %r13, %rdi
    call lb_sync_Mutex_unlock@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L7_18:
.L7_16:
    jmp .L7_15
.L7_14:
    movq -712(%rbp), %r10
    movq (%r10), %rbx
    movq -576(%rbp), %r10
    movq (%r10), %r12
    movq -632(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq -720(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq $1, %rcx
    addq %rcx, %r12
    movq -720(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -720(%rbp), %rax
    cmpq %r13, %rax
    jbe .L7_19
.L7_20:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_19:
    movq -720(%rbp), %rax
    movq %rax, %r12
    addq %rbx, %r12
    movq -720(%rbp), %rcx
    movq %r13, %r14
    subq %rcx, %r14
    movq %r15, %r10
    movq %r12, (%r10)
    movq -640(%rbp), %r10
    movq %r14, (%r10)
    movq -704(%rbp), %rsi
    movq %r15, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -416(%rbp), %rdi
    call lb_strings_Builder_write@PLT
    movq -648(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L7_22
    jmp .L7_21
.L7_22:
    movq -744(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -104(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -704(%rbp), %rdi
    call lb_strings_Builder_destroy@PLT
    movq -544(%rbp), %r10
    movq -552(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -696(%rbp), %rdi
    call lb_process_Command_state@PLT
    movq %rax, %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    movq %rbx, %rdi
    call lb_sync_Mutex_unlock@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L7_23:
.L7_21:
.L7_15:
    movq -656(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq -720(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    jmp .L7_11
.L7_10:
    movq -664(%rbp), %rax
    movq -672(%rbp), %r10
    movq %rax, (%r10)
    movq $3, %rax
    movq -680(%rbp), %r10
    movq %rax, (%r10)
    movq -704(%rbp), %rsi
    movq -672(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -464(%rbp), %rdi
    call lb_strings_Builder_put@PLT
    movq -688(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_25
    jmp .L7_24
.L7_25:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -736(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -704(%rbp), %rdi
    call lb_strings_Builder_destroy@PLT
    movq -544(%rbp), %r10
    movq -552(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -696(%rbp), %rdi
    call lb_process_Command_state@PLT
    movq %rax, %r12
    movq $16, %rcx
    addq %rcx, %r12
    movq %r12, %rdi
    call lb_sync_Mutex_unlock@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L7_26:
.L7_24:
    movq -720(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
.L7_11:
    movq %rbx, %rax
    movq %rax, -720(%rbp)
    jmp .L7_6
.L7_8:
    movq -704(%rbp), %rdi
    call lb_strings_Builder_view@PLT
    leaq -480(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -480(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -536(%rbp), %rdi
    call lb_interop_9copy_text@PLT
    leaq -536(%rbp), %r12
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_28
    jmp .L7_27
.L7_28:
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -104(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -704(%rbp), %rdi
    call lb_strings_Builder_destroy@PLT
    movq -544(%rbp), %r10
    movq -552(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -696(%rbp), %rdi
    call lb_process_Command_state@PLT
    movq %rax, %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    movq %rbx, %rdi
    call lb_sync_Mutex_unlock@PLT
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L7_27:
    leaq -104(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -704(%rbp), %rdi
    call lb_strings_Builder_destroy@PLT
    movq -544(%rbp), %r10
    movq -552(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -696(%rbp), %rdi
    call lb_process_Command_state@PLT
    movq %rax, %r13
    movq $16, %rcx
    addq %rcx, %r13
    movq %r13, %rdi
    call lb_sync_Mutex_unlock@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
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
.L7_30:
    leaq -168(%rbp), %rbx
    movq %rbx, %rdi
    call lb_strings_Builder_destroy@PLT
    leaq -128(%rbp), %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %rbx
    movq %rbx, %rdi
    call lb_process_Command_state@PLT
    movq %rax, %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    movq %rbx, %rdi
    call lb_sync_Mutex_unlock@PLT
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_Command_13error_message
    .type lb_process_Command_13error_message, @function
lb_process_Command_13error_message:
    pushq %rbp
    movq %rsp, %rbp
    subq $240, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -104(%rbp)
    leaq -104(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call lb_process_Command_11is_finished@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L8_2
.L8_1:
    leaq .Ltext_29(%rip), %rbx
    leaq -120(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -176(%rbp), %rdi
    call lb_interop_9copy_text@PLT
    leaq -176(%rbp), %r12
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_5
    jmp .L8_4
.L8_5:
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -96(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L8_6:
.L8_4:
    leaq -96(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L8_7:
    jmp .L8_3
.L8_2:
.L8_3:
    movq %r12, %rdi
    call lb_process_Command_state@PLT
    movq %rax, %rbx
    movq $144, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -232(%rbp), %rdi
    call lb_interop_9copy_text@PLT
    leaq -232(%rbp), %r13
    movq $48, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_9
    jmp .L8_8
.L8_9:
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -96(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L8_10:
.L8_8:
    leaq -96(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $56, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L8_11:
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_process_Command_cancel
    .type lb_process_Command_cancel, @function
lb_process_Command_cancel:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -16(%rbp)
    leaq -16(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L9_4
    jmp .L9_2
.L9_4:
.L9_1:
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L9_3
.L9_2:
.L9_3:
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_process_Command_close
    .type lb_process_Command_close, @function
lb_process_Command_close:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -48(%rbp)
    leaq -48(%rbp), %r10
    movq (%r10), %r12
    leaq -56(%rbp), %r13
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -160(%rbp)
    movq -160(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L10_1
    jmp .L10_2
.L10_1:
    leaq -64(%rbp), %rbx
    movq -160(%rbp), %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    jmp .L10_3
.L10_2:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_4:
.L10_3:
    movq %rbx, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r12, %rdi
    call lb_process_Command_cancel@PLT
    movq %r13, %rsi
    leaq -120(%rbp), %rdi
    call lb_thread_Handle_join@PLT
    leaq -120(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L10_8
    jmp .L10_7
.L10_8:
    leaq -88(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L10_5
.L10_7:
    jmp .L10_6
.L10_5:
    leaq .Ltext_31(%rip), %rbx
    leaq -136(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $36, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_32(%rip), %rbx
    movq %rbx, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
.L10_6:
    leaq -152(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq -160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L10_9
    jmp .L10_10
.L10_9:
    jmp .L10_11
.L10_10:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_12:
.L10_11:
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %rbx, %rdi
    call lb_process_15command_dispose@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_process_15command_dispose
    .type lb_process_15command_dispose, @function
lb_process_15command_dispose:
    pushq %rbp
    movq %rsp, %rbp
    subq $288, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq -72(%rbp), %rax
    movq %rax, -208(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -216(%rbp)
    movq -216(%rbp), %r10
    movq -208(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_memory_heap(%rip), %r13
    movq %r13, %r10
    movq -216(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -56(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -224(%rbp)
    movq -224(%rbp), %rax
    movq $56, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    jbe .L11_2
.L11_1:
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    jmp .L11_3
.L11_2:
.L11_3:
    movq -224(%rbp), %rax
    movq $72, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L11_5
.L11_4:
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    jmp .L11_6
.L11_5:
.L11_6:
    movq -224(%rbp), %rax
    movq $88, %rcx
    addq %rcx, %rax
    movq %rax, -232(%rbp)
    movq -232(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -272(%rbp)
    movq -232(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %r10
    movq (%r10), %rbx
    movq -224(%rbp), %rax
    movq $104, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -280(%rbp)
    movq $1, %rcx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -280(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -280(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L11_11
.L11_12:
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_11:
    leaq -88(%rbp), %rbx
    movq -272(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq -280(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -104(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %rax, %r15
.L11_7:
    movq -280(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L11_10
.L11_8:
    movq $8, %rcx
    movq %r15, %r14
    imulq %rcx, %r14
    movq -272(%rbp), %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %rdi
    call strlen@PLT
    movq %rax, %r12
    movq %rbx, %r10
    movq %r14, (%r10)
    movq %r13, %r10
    movq %r12, (%r10)
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
.L11_9:
    movq $1, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r15
    jmp .L11_7
.L11_10:
    movq -232(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L11_14
.L11_13:
    leaq -120(%rbp), %rbx
    movq -232(%rbp), %r10
    movq (%r10), %r12
    movq -240(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -216(%rbp), %r10
    movq (%r10), %r12
    movq -216(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L11_17
    jmp .L11_16
.L11_17:
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r11
    call *%r11
.L11_16:
    jmp .L11_15
.L11_14:
.L11_15:
    movq -224(%rbp), %rax
    movq $112, %rcx
    addq %rcx, %rax
    movq %rax, -248(%rbp)
    movq -248(%rbp), %r10
    movq (%r10), %r15
    movq -248(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -256(%rbp)
    movq -256(%rbp), %r10
    movq (%r10), %r13
    movq -224(%rbp), %rax
    movq $128, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -288(%rbp)
    movq $1, %rcx
    addq %rcx, %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -288(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -288(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L11_22
.L11_23:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_22:
    leaq -136(%rbp), %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq -288(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq -152(%rbp), %r13
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -264(%rbp)
    movq $0, %rax
    movq %rax, %rbx
.L11_18:
    movq -288(%rbp), %rcx
    cmpq %rcx, %rbx
    jae .L11_21
.L11_19:
    movq $8, %rcx
    movq %rbx, %r12
    imulq %rcx, %r12
    addq %r15, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call strlen@PLT
    movq %rax, %r14
    movq %r13, %r10
    movq %r12, (%r10)
    movq -264(%rbp), %r10
    movq %r14, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
.L11_20:
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %rbx
    jmp .L11_18
.L11_21:
    movq -248(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L11_25
.L11_24:
    leaq -168(%rbp), %rbx
    movq -248(%rbp), %r10
    movq (%r10), %r12
    movq -256(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -216(%rbp), %r10
    movq (%r10), %r12
    movq -216(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L11_28
    jmp .L11_27
.L11_28:
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r11
    call *%r11
.L11_27:
    jmp .L11_26
.L11_25:
.L11_26:
    movq -224(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jbe .L11_30
.L11_29:
    leaq -184(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq (%r10), %r15
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq -216(%rbp), %r10
    movq (%r10), %r14
    movq -216(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L11_33
    jmp .L11_32
.L11_33:
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
.L11_32:
    jmp .L11_31
.L11_30:
.L11_31:
    movq -224(%rbp), %rax
    movq $144, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L11_35
.L11_34:
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    jmp .L11_36
.L11_35:
.L11_36:
    leaq -200(%rbp), %rbx
    movq -224(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $160, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -216(%rbp), %r10
    movq (%r10), %r12
    movq -216(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L11_38
    jmp .L11_37
.L11_38:
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r11
    call *%r11
.L11_37:
    movq -208(%rbp), %r10
    movq -216(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_process_13command_entry
    .type lb_process_13command_entry, @function
lb_process_13command_entry:
    pushq %rbp
    movq %rsp, %rbp
    subq $432, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L12_1
    jmp .L12_2
.L12_1:
    jmp .L12_3
.L12_2:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_4:
.L12_3:
    leaq -96(%rbp), %rax
    movq %rax, -424(%rbp)
    movq $56, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -416(%rbp)
    movq $88, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $72, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $128, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $0, %rcx
    cmpq %rcx, %r15
    jbe .L12_8
.L12_7:
    movq $112, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    leaq -208(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    leaq -184(%rbp), %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L12_9
.L12_8:
    leaq -232(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -184(%rbp), %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
.L12_9:
    leaq -184(%rbp), %r12
    subq $32, %rsp
    movq %r12, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -416(%rbp), %rsi
    movq %r13, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r14, %r8
    movq %rbx, %r9
    leaq -304(%rbp), %rdi
    call lb_process_14run_controlled@PLT
    addq $32, %rsp
    leaq -304(%rbp), %r15
    movq $64, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L12_11
    jmp .L12_10
.L12_11:
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq -160(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L12_5
.L12_10:
    leaq -136(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    jmp .L12_6
.L12_5:
    movq $144, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -392(%rbp), %rdi
    call lb_strings_copy@PLT
    leaq -392(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L12_15
    jmp .L12_14
.L12_15:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq -344(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L12_12
.L12_14:
    leaq -320(%rbp), %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L12_13
.L12_12:
    leaq .Ltext_29(%rip), %r12
    leaq -408(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -320(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L12_13
.L12_16:
.L12_13:
    leaq -320(%rbp), %r12
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_17:
.L12_6:
    movq %r12, %r10
    movq -424(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $136, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq -424(%rbp), %r10
    movslq (%r10), %r14
    movslq %r14d, %r14
    movq %r13, %r10
    movq %r14, (%r10)
    movq -424(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_release@PLT
    movq -424(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_process_release@PLT
    movq $1, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_process_14command_append
    .type lb_process_14command_append, @function
lb_process_14command_append:
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
    leaq -96(%rbp), %rax
    movq %rax, -304(%rbp)
    movq -304(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -312(%rbp)
    movq -312(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -320(%rbp)
    movq -320(%rbp), %rdi
    call lb_sync_Mutex_lock@PLT
    leaq -112(%rbp), %rax
    movq %rax, -328(%rbp)
    movq -328(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -336(%rbp)
    movq -336(%rbp), %r10
    movq (%r10), %rbx
    movq -312(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, -344(%rbp)
    movq -344(%rbp), %r10
    movq (%r10), %r15
    movq -312(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -352(%rbp)
    movq -352(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %rax
    movq %r12, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    cmpq %r12, %rbx
    jbe .L13_2
.L13_1:
    leaq -80(%rbp), %rbx
    leaq lb_process_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_39(%rip), %r12
    leaq -128(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq $37, %rax
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
    movq -320(%rbp), %rdi
    call lb_sync_Mutex_unlock@PLT
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
.L13_4:
    jmp .L13_3
.L13_2:
.L13_3:
    movq -352(%rbp), %r10
    movq (%r10), %r12
    movq %rbx, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -360(%rbp)
    movq -312(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -368(%rbp)
    movq -368(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -376(%rbp)
    movq -376(%rbp), %r10
    movq (%r10), %r13
    movq -360(%rbp), %rax
    cmpq %r13, %rax
    jbe .L13_6
.L13_5:
    movq -344(%rbp), %r10
    movq (%r10), %rbx
    movq -376(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_41(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq $4096, %rdi
    movq %r13, %rsi
    call lb_process_13math_max_size@PLT
    movq %rax, %r13
    movq -360(%rbp), %rdi
    movq %r13, %rsi
    call lb_process_13math_max_size@PLT
    movq %rax, %r13
    leaq -280(%rbp), %r10
    movq %rbx, (%r10)
    leaq -296(%rbp), %r10
    movq %r13, (%r10)
    cmpq %r13, %rbx
    jae .L13_27
.L13_26:
    movq %rbx, %r13
    jmp .L13_28
.L13_27:
.L13_28:
    jmp .L13_30
.L13_29:
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_30:
    movq -376(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L13_9
.L13_8:
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r14
    leaq -176(%rbp), %rax
    movq %rax, -408(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r13
    jbe .L13_12
.L13_11:
    movq -408(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_9(%rip), %r13
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
    movq -408(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L13_13
.L13_12:
    movq %r14, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L13_14
    jmp .L13_15
.L13_15:
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_6(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_14:
    movq %r15, %r10
    movq (%r10), %r14
    movq %rbx, %rsi
    movq %r13, %rdx
    movq $1, %rcx
    leaq -200(%rbp), %rdi
    movq %r14, %r11
    call *%r11
    leaq -200(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq $0, %rcx
    cmpq %rcx, %r13
    setne %al
    movzbl %al, %eax
    movl %eax, -384(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl -384(%rbp), %eax
    andl %r14d, %eax
    movl %eax, -392(%rbp)
    movl -392(%rbp), %eax
    testl %eax, %eax
    jne .L13_16
    jmp .L13_17
.L13_16:
    movq -408(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
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
    movq $16, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -408(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L13_13
.L13_17:
    movq %r12, %r10
    movq (%r10), %rbx
    movq -408(%rbp), %r10
    movq %rbx, (%r10)
    movq -408(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq -408(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L13_13:
    movq -408(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_19
    jmp .L13_18
.L13_19:
    movq -408(%rbp), %rax
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
    movq -320(%rbp), %rdi
    call lb_sync_Mutex_unlock@PLT
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
.L13_20:
.L13_18:
    movq -408(%rbp), %r10
    movq -368(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L13_10
.L13_9:
    movq -368(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %rcx
    leaq -248(%rbp), %rdi
    call lb_memory_grow@PLT
    leaq -248(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_22
    jmp .L13_21
.L13_22:
    movq $16, %rcx
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
    movq -320(%rbp), %rdi
    call lb_sync_Mutex_unlock@PLT
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
.L13_23:
.L13_21:
    movq %r12, %r10
    movq -368(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L13_10:
    jmp .L13_7
.L13_6:
.L13_7:
    movq -368(%rbp), %r10
    movq (%r10), %r12
    movq -376(%rbp), %r10
    movq (%r10), %r13
    movq -352(%rbp), %r10
    movq (%r10), %r14
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    cmpq %rbx, %r14
    jb 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r13, %r14
    jbe .L13_24
.L13_25:
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_24:
    movq %r12, %rbx
    addq %r14, %rbx
    movq %r13, %rax
    subq %r14, %rax
    movq %rax, -400(%rbp)
    leaq -264(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq -400(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -336(%rbp), %r10
    movq (%r10), %rbx
    movq %r15, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -328(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %rbx, %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -360(%rbp), %rax
    movq -352(%rbp), %r10
    movq %rax, (%r10)
    movq -312(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $1, %rcx
    movq %rbx, %r10
    lock xaddq %rcx, (%r10)
    movq %rcx, %rbx
    movq -304(%rbp), %r10
    movq (%r10), %rbx
    movq $16, %rcx
    addq %rcx, %rbx
    movq %rbx, %rdi
    call lb_sync_Mutex_unlock@PLT
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $0, %eax
    movq %r15, %r10
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
    .globl lb_process_13math_max_size
    .type lb_process_13math_max_size, @function
lb_process_13math_max_size:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    movq %rsi, -56(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jbe .L14_2
.L14_1:
    movq %rbx, %r12
    jmp .L14_3
.L14_2:
.L14_3:
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L14_4:
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_3(%rip), %rsi
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
    jne .L15_11
    jmp .L15_4
.L15_11:
    movl %r13d, %r14d
    jmp .L15_5
.L15_4:
    leaq -64(%rbp), %r13
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
    leaq .Ltext_23(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_46(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L15_3
.L15_2:
.L15_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L15_7
.L15_6:
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
    jne .L15_9
    jmp .L15_10
.L15_10:
    leaq .Ltext_47(%rip), %rdi
    leaq .Ltext_48(%rip), %rsi
    call lb_core_7trap_at@PLT
.L15_9:
    jmp .L15_8
.L15_7:
.L15_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_process_14command_module_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "Command"
.Ltext_1:
    .asciz "a command argument must be UTF-8"
.Ltext_2:
    .asciz "a command argument cannot contain NUL"
.Ltext_3:
    .asciz "unreachable"
.Ltext_4:
    .asciz "src/std/process/command/module.lucb:32:9"
.Ltext_5:
    .asciz "a command needs a program and an output limit in 1..16 MiB"
.Ltext_6:
    .asciz "memory.unset"
.Ltext_7:
    .asciz "src/std/process/command/module.lucb:44:9"
.Ltext_8:
    .asciz "memory.exhausted"
.Ltext_9:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_10:
    .asciz "src/std/process/command/module.lucb:48:9"
.Ltext_11:
    .asciz "src/std/process/command/module.lucb:50:13"
.Ltext_12:
    .asciz "src/std/process/command/module.lucb:51:13"
.Ltext_13:
    .asciz "src/std/process/command/module.lucb:53:13"
.Ltext_14:
    .asciz "src/std/process/command/module.lucb:55:17"
.Ltext_15:
    .asciz "src/std/process/command/module.lucb:56:17"
.Ltext_16:
    .asciz "command"
.Ltext_17:
    .asciz "the command is closed"
.Ltext_18:
    .asciz "src/std/process/command/module.lucb:62:9"
.Ltext_19:
    .asciz "src/std/process/command/module.lucb:65:9"
.Ltext_20:
    .asciz "src/std/process/command/module.lucb:68:9"
.Ltext_21:
    .asciz "src/std/process/command/module.lucb:73:9"
.Ltext_22:
    .asciz "src/std/process/command/module.lucb:84:13"
.Ltext_23:
    .asciz "index out of bounds"
.Ltext_24:
    .asciz "\357\277\275"
.Ltext_25:
    .asciz "src/std/process/command/module.lucb:90:25"
.Ltext_26:
    .asciz "src/std/process/command/module.lucb:91:21"
.Ltext_27:
    .asciz "src/std/process/command/module.lucb:94:21"
.Ltext_28:
    .asciz "src/std/process/command/module.lucb:95:13"
.Ltext_29:
    .asciz ""
.Ltext_30:
    .asciz "src/std/process/command/module.lucb:100:9"
.Ltext_31:
    .asciz "a command worker could not be joined"
.Ltext_32:
    .asciz "src/std/process/command/module.lucb:110:13"
.Ltext_33:
    .asciz "src/std/process/command/module.lucb:125:9"
.Ltext_34:
    .asciz "src/std/process/command/module.lucb:128:13"
.Ltext_35:
    .asciz "src/std/process/command/module.lucb:129:9"
.Ltext_36:
    .asciz "src/std/process/command/module.lucb:132:13"
.Ltext_37:
    .asciz "src/std/process/command/module.lucb:134:13"
.Ltext_38:
    .asciz "src/std/process/command/module.lucb:153:5"
.Ltext_39:
    .asciz "the command exceeded its output limit"
.Ltext_40:
    .asciz "src/std/process/command/module.lucb:155:5"
.Ltext_41:
    .asciz "src/std/process/command/module.lucb:157:9"
.Ltext_42:
    .asciz "src/std/process/command/module.lucb:159:13"
.Ltext_43:
    .asciz "src/std/process/command/module.lucb:162:5"
.Ltext_44:
    .asciz "src/std/process/command/module.lucb:167:5"
.Ltext_45:
    .asciz "src/std/process/command/module.lucb:170:5"
.Ltext_46:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_47:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_48:
    .asciz "null_foreign"
.Ltext_49:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_process_12command_type
    .type lb_process_12command_type, @object
    .p2align 3
lb_process_12command_type:
    .zero 40

    .section .note.GNU-stack,"",@progbits
