    .text

    .p2align 4
    .globl lb_paths_0init
    .type lb_paths_0init, @function
lb_paths_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_paths_separator
    .type lb_paths_separator, @function
lb_paths_separator:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movl %edi, -32(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $47, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L1_6
    jmp .L1_1
.L1_6:
    movl %ebx, %r12d
    jmp .L1_2
.L1_1:
.L1_4:
    movl $0, %eax
    movl %eax, %r12d
.L1_2:
    movzbl %r12b, %ebx
    movzbl %bl, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_paths_14last_separator
    .type lb_paths_14last_separator, @function
lb_paths_14last_separator:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
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
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %r13
.L2_1:
    movq $0, %rcx
    cmpq %rcx, %r13
    jbe .L2_3
.L2_2:
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %rbx, %r10
    movq (%r10), %r15
    cmpq %r12, %r14
    jb 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r15, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movl %r15d, %edi
    call lb_paths_separator@PLT
    movl %eax, %r15d
    testl %r15d, %r15d
    jne .L2_4
    jmp .L2_5
.L2_4:
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
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
.L2_7:
    jmp .L2_6
.L2_5:
.L2_6:
    movq %r14, %r13
    jmp .L2_1
.L2_3:
    leaq -104(%rbp), %rbx
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
.L2_8:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_paths_root
    .type lb_paths_root, @function
lb_paths_root:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    leaq -64(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -64(%rbp), %rbx
    movq %rbx, %r10
    leaq -128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $0, %eax
    leaq -136(%rbp), %r10
    movl %eax, (%r10)
.L3_22:
.L3_2:
.L3_3:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L3_23
    jmp .L3_15
.L3_23:
    movl %r14d, %r13d
    jmp .L3_16
.L3_15:
    movq %rbx, %r10
    movq (%r10), %r14
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl %r14d, %edi
    call lb_paths_separator@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r13d
.L3_16:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L3_12
    jmp .L3_13
.L3_12:
    leaq .Ltext_10(%rip), %rbx
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -48(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_13:
.L3_14:
    movq %rbx, %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq (%r10), %r13
    movq $1, %rcx
    addq %rcx, %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $1, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
.L3_18:
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq $1, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $1, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -48(%rbp), %r12
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
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_paths_9is_rooted
    .type lb_paths_9is_rooted, @function
lb_paths_9is_rooted:
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
    call lb_paths_root@PLT
    leaq -40(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -40(%rbp), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    seta %al
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
    .globl lb_paths_11is_absolute
    .type lb_paths_11is_absolute, @function
lb_paths_11is_absolute:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    leaq -40(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    leaq -56(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $0, %eax
    leaq -64(%rbp), %r10
    movl %eax, (%r10)
.L5_15:
.L5_2:
.L5_3:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L5_16
    jmp .L5_10
.L5_16:
    movl %r13d, %ebx
    jmp .L5_11
.L5_10:
    movq %rbx, %r10
    movq (%r10), %r13
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl %r13d, %edi
    call lb_paths_separator@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L5_11:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L5_7
    jmp .L5_8
.L5_7:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_8:
.L5_9:
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_paths_directory
    .type lb_paths_directory, @function
lb_paths_directory:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    leaq -64(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -80(%rbp), %rbx
    leaq -64(%rbp), %r12
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_paths_root@PLT
    leaq -96(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -96(%rbp), %r13
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_paths_14last_separator@PLT
    leaq -112(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -112(%rbp), %r14
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L6_1
    jmp .L6_2
.L6_1:
    movq %r14, %r10
    movq (%r10), %r13
    jmp .L6_3
.L6_2:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L6_5
.L6_4:
    leaq -128(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L6_6
.L6_5:
    leaq .Ltext_16(%rip), %rbx
    leaq -144(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $1, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -128(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L6_6:
    leaq -128(%rbp), %rbx
    leaq -48(%rbp), %r12
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_7:
.L6_3:
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jae .L6_9
.L6_8:
    leaq -48(%rbp), %r12
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_11:
    jmp .L6_10
.L6_9:
.L6_10:
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $1, %rcx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r13, %rax
    jbe .L6_12
.L6_13:
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_12:
    leaq -160(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    leaq -176(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    leaq -48(%rbp), %r12
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_14:
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_paths_base
    .type lb_paths_base, @function
lb_paths_base:
    pushq %rbp
    movq %rsp, %rbp
    subq $224, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -72(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -88(%rbp), %rbx
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_paths_root@PLT
    leaq -104(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -104(%rbp), %r13
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    cmpq %r14, %rbx
    jne .L7_2
.L7_1:
    leaq .Ltext_10(%rip), %rbx
    leaq -120(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -56(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
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
.L7_4:
    jmp .L7_3
.L7_2:
.L7_3:
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_paths_14last_separator@PLT
    leaq -136(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -136(%rbp), %r15
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L7_5
    jmp .L7_6
.L7_5:
    movq %r15, %r10
    movq (%r10), %rbx
    jmp .L7_7
.L7_6:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -208(%rbp)
    movq %r13, %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r14, %r15
    jb 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r15, %rbx
    jbe .L7_8
.L7_9:
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_8:
    movq -208(%rbp), %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r15, %r13
    subq %rbx, %r13
    leaq -152(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    leaq -168(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    leaq -56(%rbp), %r12
    movq %r14, %r10
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
.L7_10:
.L7_7:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -216(%rbp)
    movq %r13, %r10
    movq (%r10), %r15
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -224(%rbp)
    movq $1, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq -224(%rbp), %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r14, %r15
    jb 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -224(%rbp), %rax
    cmpq %r15, %rax
    jbe .L7_11
.L7_12:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_11:
    movq -216(%rbp), %rax
    movq -224(%rbp), %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -224(%rbp), %rcx
    movq %r15, %r12
    subq %rcx, %r12
    leaq -184(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq -200(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq -56(%rbp), %rbx
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
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_13:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_paths_extension
    .type lb_paths_extension, @function
lb_paths_extension:
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
    leaq -88(%rbp), %rbx
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_paths_base@PLT
    leaq -104(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movl $46, %edx
    call lb_strings_last@PLT
    leaq -120(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -120(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L8_1
    jmp .L8_2
.L8_1:
    movq %r13, %r10
    movq (%r10), %r12
    jmp .L8_3
.L8_2:
    leaq .Ltext_10(%rip), %rbx
    leaq -136(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -56(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
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
.L8_4:
.L8_3:
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L8_6
.L8_5:
    leaq .Ltext_10(%rip), %rbx
    leaq -152(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -56(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
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
.L8_8:
    jmp .L8_7
.L8_6:
.L8_7:
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    cmpq %r13, %r12
    jb 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r13, %r15
    jb 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r15, %r12
    jbe .L8_9
.L8_10:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
.L8_9:
    movq %r12, %rbx
    addq %r14, %rbx
    movq %r15, %rax
    subq %r12, %rax
    movq %rax, -192(%rbp)
    leaq -168(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq -192(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq -184(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq -192(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -56(%rbp), %rbx
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
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L8_11:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_paths_stem
    .type lb_paths_stem, @function
lb_paths_stem:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    leaq -64(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -80(%rbp), %rbx
    leaq -64(%rbp), %r12
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_paths_base@PLT
    leaq -96(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -112(%rbp), %r12
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_paths_extension@PLT
    leaq -128(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rax
    movq %r12, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq $1, %rcx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r12
    jb 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r12, %rax
    jbe .L9_1
.L9_2:
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_1:
    leaq -144(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq -160(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    leaq -48(%rbp), %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L9_3:
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_paths_join
    .type lb_paths_join, @function
lb_paths_join:
    pushq %rbp
    movq %rsp, %rbp
    subq $416, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -112(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -128(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq -128(%rbp), %rax
    movq %rax, -408(%rbp)
    movq -408(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_paths_11is_absolute@PLT
    movl %eax, %r12d
    testl %r12d, %r12d
    jne .L10_27
    jmp .L10_4
.L10_27:
    movl %r12d, %r13d
    jmp .L10_5
.L10_4:
    movq -408(%rbp), %r10
    leaq -384(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $0, %eax
    leaq -392(%rbp), %r10
    movl %eax, (%r10)
.L10_24:
    movl $0, %eax
    movl %eax, %r13d
.L10_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L10_28
    jmp .L10_6
.L10_28:
    movl %r12d, %r13d
    jmp .L10_7
.L10_6:
    leaq -112(%rbp), %r12
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
.L10_7:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L10_1
    jmp .L10_2
.L10_1:
    movq -408(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -176(%rbp), %rdi
    call lb_strings_copy@PLT
    leaq -176(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L10_9
    jmp .L10_8
.L10_9:
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq -96(%rbp), %r12
    movq $16, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
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
.L10_8:
    leaq -96(%rbp), %rbx
    movq %r13, %r10
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
.L10_2:
.L10_3:
    leaq -112(%rbp), %r12
    movq %r12, %r10
    leaq -384(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $0, %eax
    leaq -400(%rbp), %r10
    movl %eax, (%r10)
.L10_26:
.L10_13:
    leaq -192(%rbp), %rbx
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r12, %r10
    movq (%r10), %r15
    cmpq %r13, %r14
    jb 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r14, %r13
    addq %r15, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl %r13d, %edi
    call lb_paths_separator@PLT
    movl %eax, %r13d
    testl %r13d, %r13d
    jne .L10_29
    jmp .L10_17
.L10_29:
    movl %r13d, %r14d
    jmp .L10_18
.L10_17:
    movl $0, %eax
    movl %eax, %r14d
.L10_18:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L10_14
    jmp .L10_15
.L10_14:
    leaq .Ltext_10(%rip), %r13
    leaq -224(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq -208(%rbp), %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L10_16
.L10_15:
    leaq .Ltext_23(%rip), %r13
    leaq -240(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $1, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq -208(%rbp), %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L10_16:
    leaq -208(%rbp), %r13
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -272(%rbp), %r13
    leaq -304(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq -408(%rbp), %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -320(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $2, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    leaq -368(%rbp), %rdi
    call lb_strings_join@PLT
    leaq -368(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L10_20
    jmp .L10_19
.L10_20:
    movq $16, %rcx
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
.L10_19:
    leaq -96(%rbp), %rbx
    movq %r14, %r10
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

    .p2align 4
    .globl lb_paths_normalize
    .type lb_paths_normalize, @function
lb_paths_normalize:
    pushq %rbp
    movq %rsp, %rbp
    subq $1280, %rsp
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
    movq %rax, -776(%rbp)
    leaq -112(%rbp), %rax
    movq %rax, -784(%rbp)
    movq -784(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_paths_root@PLT
    leaq -144(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -144(%rbp), %rax
    movq %rax, -792(%rbp)
    movq -792(%rbp), %r10
    movq -776(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -160(%rbp), %rax
    movq %rax, -1160(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -1168(%rbp)
    movq -784(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -800(%rbp)
    movq -800(%rbp), %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $2, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    leaq -208(%rbp), %rax
    movq %rax, -1176(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r12
    jbe .L11_2
.L11_1:
    movq -1176(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_26(%rip), %r14
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $16, %rcx
    addq %rcx, %r12
    movq $47, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -1176(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L11_3
.L11_2:
    movq -1168(%rbp), %r10
    movq (%r10), %r14
    movq -1168(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L11_4
    jmp .L11_5
.L11_5:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_4:
    movq %r15, %r10
    movq (%r10), %rbx
    movq %r14, %rsi
    movq %r12, %rdx
    movq $1, %rcx
    leaq -232(%rbp), %rdi
    movq %rbx, %r11
    call *%r11
    leaq -232(%rbp), %r13
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, -808(%rbp)
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl -808(%rbp), %eax
    movl %ebx, %ecx
    movl %eax, %ebx
    andl %ecx, %ebx
    testl %ebx, %ebx
    jne .L11_6
    jmp .L11_7
.L11_6:
    movq -1176(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_28(%rip), %r12
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
    movq -1176(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L11_3
.L11_7:
    movq %r13, %r10
    movq (%r10), %rbx
    movq -1176(%rbp), %r10
    movq %rbx, (%r10)
    movq -1176(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq -1176(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L11_3:
    movq -1176(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_9
    jmp .L11_8
.L11_9:
    movq -1176(%rbp), %rax
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
.L11_8:
    movq -1176(%rbp), %r10
    movq -1160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -248(%rbp), %rax
    movq %rax, -1184(%rbp)
    movq -800(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -1192(%rbp)
    leaq -296(%rbp), %rax
    movq %rax, -1200(%rbp)
    movq -1192(%rbp), %rax
    movabsq $576460752303423488, %rcx
    cmpq %rcx, %rax
    jbe .L11_12
.L11_11:
    movq -1200(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_26(%rip), %r13
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
    movq -1200(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L11_13
.L11_12:
    movq -1192(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq -1168(%rbp), %r10
    movq (%r10), %rbx
    movq -1168(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L11_14
    jmp .L11_15
.L11_15:
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_14:
    movq %r15, %r10
    movq (%r10), %r13
    movq %rbx, %rsi
    movq %r12, %rdx
    movq $8, %rcx
    leaq -320(%rbp), %rdi
    movq %r13, %r11
    call *%r11
    leaq -320(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, -816(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl -816(%rbp), %eax
    movl %r13d, %ecx
    movl %eax, %r13d
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L11_16
    jmp .L11_17
.L11_16:
    movq -1200(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_28(%rip), %r12
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
    movq -1200(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L11_13
.L11_17:
    movq %r14, %r10
    movq (%r10), %rbx
    movq -1200(%rbp), %r10
    movq %rbx, (%r10)
    movq -1200(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -1192(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -1200(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L11_13:
    movq -1200(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_19
    jmp .L11_18
.L11_19:
    movq -1200(%rbp), %rax
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
    leaq -336(%rbp), %rbx
    movq -1160(%rbp), %r10
    movq (%r10), %r13
    movq -1160(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq -1168(%rbp), %r10
    movq (%r10), %r13
    movq -1168(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L11_21
    jmp .L11_20
.L11_21:
    movq $16, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r13, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r11
    call *%r11
.L11_20:
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
.L11_18:
    movq -1200(%rbp), %r10
    movq -1184(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -776(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -824(%rbp)
    movq -1160(%rbp), %r10
    movq (%r10), %r12
    movq -1160(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq -776(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -832(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L11_23:
    movq -824(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L11_26
.L11_24:
    cmpq %r13, %r15
    jb 1f
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r12, %r14
    addq %r15, %r14
    movq -832(%rbp), %rax
    movq %rax, %rbx
    addq %r15, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq %r14, %r10
    movb %bl, (%r10)
.L11_25:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r15
    jmp .L11_23
.L11_26:
    movq -824(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    seta %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L11_27
    jmp .L11_129
.L11_129:
    movl %ebx, %r12d
    jmp .L11_28
.L11_27:
    movq -784(%rbp), %r10
    leaq -752(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $0, %eax
    leaq -760(%rbp), %r10
    movl %eax, (%r10)
.L11_126:
.L11_30:
    movl $1, %eax
    movl %eax, %r12d
.L11_28:
    movzbl %r12b, %eax
    movl %eax, -840(%rbp)
    leaq -352(%rbp), %rax
    movq %rax, -1240(%rbp)
    leaq -368(%rbp), %rax
    movq %rax, -864(%rbp)
    movq -864(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -872(%rbp)
    leaq -384(%rbp), %rax
    movq %rax, -880(%rbp)
    movq -880(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -888(%rbp)
    leaq .Ltext_16(%rip), %rax
    movq %rax, -896(%rbp)
    leaq -400(%rbp), %rax
    movq %rax, -1248(%rbp)
    movq -1248(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -904(%rbp)
    leaq .Ltext_34(%rip), %rax
    movq %rax, -912(%rbp)
    leaq -416(%rbp), %rax
    movq %rax, -1256(%rbp)
    movq -1256(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -920(%rbp)
    movl -840(%rbp), %eax
    movzbl %al, %eax
    movl %eax, -1000(%rbp)
    movq -1184(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -936(%rbp)
    movq -1160(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -952(%rbp)
    movq -1160(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -960(%rbp)
    leaq -432(%rbp), %rax
    movq %rax, -968(%rbp)
    movq -968(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -976(%rbp)
    leaq -448(%rbp), %rax
    movq %rax, -1264(%rbp)
    movq -1264(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -984(%rbp)
    leaq -464(%rbp), %rax
    movq %rax, -1272(%rbp)
    movq -1272(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -992(%rbp)
    movq -1184(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1008(%rbp)
    movq -1160(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1024(%rbp)
    movq -1160(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1032(%rbp)
    movq -1160(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1048(%rbp)
    movq -824(%rbp), %rax
    movq %rax, -1208(%rbp)
    movq $0, %rax
    movq %rax, -1216(%rbp)
    movq -824(%rbp), %rax
    movq %rax, -1224(%rbp)
.L11_31:
    movq -800(%rbp), %r10
    movq (%r10), %r12
    movq -1224(%rbp), %rax
    cmpq %r12, %rax
    jae .L11_33
.L11_32:
    movq -1224(%rbp), %rax
    movq %rax, %r12
.L11_34:
    movq -800(%rbp), %r10
    movq (%r10), %rbx
    cmpq %rbx, %r12
    setb %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L11_37
    jmp .L11_130
.L11_130:
    movl %ebx, %r15d
    jmp .L11_38
.L11_37:
    movq -784(%rbp), %r10
    movq (%r10), %rbx
    addq %r12, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl %ebx, %edi
    call lb_paths_separator@PLT
    movl %eax, %r15d
.L11_38:
    movzbl %r15b, %ebx
    testl %ebx, %ebx
    jne .L11_35
    jmp .L11_36
.L11_35:
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %rbx, %r12
    jmp .L11_34
.L11_36:
    movq %r12, %rax
    movq %rax, -1232(%rbp)
.L11_39:
    movq -800(%rbp), %r10
    movq (%r10), %r15
    movq -1232(%rbp), %rax
    cmpq %r15, %rax
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L11_42
    jmp .L11_131
.L11_131:
    movl %r15d, %r14d
    jmp .L11_43
.L11_42:
    movq -784(%rbp), %r10
    movq (%r10), %r14
    movq -1232(%rbp), %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl %r14d, %edi
    call lb_paths_separator@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
.L11_43:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L11_40
    jmp .L11_41
.L11_40:
    movq -1232(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r14, %rax
    movq %rax, -1232(%rbp)
    jmp .L11_39
.L11_41:
    movq -784(%rbp), %r10
    movq (%r10), %r15
    movq -800(%rbp), %r10
    movq (%r10), %r14
    movq $1, %rcx
    addq %rcx, %r14
    cmpq %r14, %r12
    jb 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1232(%rbp), %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1232(%rbp), %rcx
    cmpq %rcx, %r12
    jbe .L11_44
.L11_45:
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_44:
    movq %r12, %rax
    addq %r15, %rax
    movq %rax, -848(%rbp)
    movq -1232(%rbp), %rax
    subq %r12, %rax
    movq %rax, -856(%rbp)
    movq -848(%rbp), %rax
    movq -864(%rbp), %r10
    movq %rax, (%r10)
    movq -856(%rbp), %rax
    movq -872(%rbp), %r10
    movq %rax, (%r10)
    movq -848(%rbp), %rax
    movq -880(%rbp), %r10
    movq %rax, (%r10)
    movq -856(%rbp), %rax
    movq -888(%rbp), %r10
    movq %rax, (%r10)
    movq -880(%rbp), %r10
    movq -1240(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -856(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L11_132
    jmp .L11_49
.L11_132:
    movl %r14d, %r12d
    jmp .L11_50
.L11_49:
    movq -896(%rbp), %rax
    movq -1248(%rbp), %r10
    movq %rax, (%r10)
    movq $1, %rax
    movq -904(%rbp), %r10
    movq %rax, (%r10)
    movq -856(%rbp), %rax
    movq $1, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L11_51
    jmp .L11_133
.L11_133:
    movl %r12d, %r14d
    jmp .L11_52
.L11_51:
    movq -848(%rbp), %rdi
    movq -896(%rbp), %rsi
    movq -856(%rbp), %rdx
    call memcmp@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L11_52:
    movzbl %r14b, %r12d
.L11_50:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L11_46
    jmp .L11_47
.L11_46:
    movq -1232(%rbp), %rax
    movq %rax, -1224(%rbp)
    jmp .L11_31
.L11_47:
.L11_48:
    movq -912(%rbp), %rax
    movq -1256(%rbp), %r10
    movq %rax, (%r10)
    movq $2, %rax
    movq -920(%rbp), %r10
    movq %rax, (%r10)
    movq -856(%rbp), %rax
    movq $2, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L11_57
    jmp .L11_134
.L11_134:
    movl %r12d, %r14d
    jmp .L11_58
.L11_57:
    movq -848(%rbp), %rdi
    movq -912(%rbp), %rsi
    movq -856(%rbp), %rdx
    call memcmp@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
.L11_58:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L11_54
    jmp .L11_55
.L11_54:
    movq -1216(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jbe .L11_60
.L11_59:
    movq -1216(%rbp), %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -928(%rbp)
    movq -1184(%rbp), %r10
    movq (%r10), %r14
    movq -936(%rbp), %r10
    movq (%r10), %r15
    movq -928(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -928(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq %r14, %rax
    addq %r15, %rax
    movq %rax, -944(%rbp)
    movq -944(%rbp), %r10
    movq (%r10), %r15
    movq -1208(%rbp), %rcx
    cmpq %rcx, %r15
    setb %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L11_65
    jmp .L11_135
.L11_135:
    movl %r13d, %ebx
    jmp .L11_66
.L11_65:
    movq -1160(%rbp), %r10
    movq (%r10), %rbx
    movq -952(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %r15
    jb 1f
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rbx, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl %ebx, %edi
    call lb_paths_separator@PLT
    movl %eax, %ebx
.L11_66:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L11_62
    jmp .L11_63
.L11_62:
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    jmp .L11_64
.L11_63:
    movq %r15, %rbx
.L11_64:
    movq -1160(%rbp), %r10
    movq (%r10), %r15
    movq -960(%rbp), %r10
    movq (%r10), %r13
    movq $1, %rcx
    addq %rcx, %r13
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1208(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1208(%rbp), %rcx
    cmpq %rcx, %rbx
    jbe .L11_70
.L11_71:
    leaq .Ltext_37(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_70:
    movq %rbx, %r13
    addq %r15, %r13
    movq -1208(%rbp), %rax
    movq %rax, %r12
    subq %rbx, %r12
    movq -968(%rbp), %r10
    movq %r13, (%r10)
    movq -976(%rbp), %r10
    movq %r12, (%r10)
    movq -1264(%rbp), %r10
    movq %r13, (%r10)
    movq -984(%rbp), %r10
    movq %r12, (%r10)
    movq -912(%rbp), %rax
    movq -1272(%rbp), %r10
    movq %rax, (%r10)
    movq $2, %rax
    movq -992(%rbp), %r10
    movq %rax, (%r10)
    movq $2, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L11_72
    jmp .L11_136
.L11_136:
    movl %r14d, %ebx
    jmp .L11_73
.L11_72:
    movq %r13, %rdi
    movq -912(%rbp), %rsi
    movq %r12, %rdx
    call memcmp@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L11_73:
    movzbl %bl, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L11_68
.L11_67:
    movq -944(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq %rax, -1208(%rbp)
    movq -928(%rbp), %rax
    movq %rax, -1216(%rbp)
    movq -1232(%rbp), %rax
    movq %rax, -1224(%rbp)
    jmp .L11_31
.L11_68:
.L11_69:
    jmp .L11_61
.L11_60:
    movl -1000(%rbp), %eax
    testl %eax, %eax
    jne .L11_75
    jmp .L11_76
.L11_75:
    movq -1232(%rbp), %rax
    movq %rax, -1224(%rbp)
    jmp .L11_31
.L11_76:
.L11_77:
.L11_61:
    jmp .L11_56
.L11_55:
.L11_56:
    movq -1184(%rbp), %r10
    movq (%r10), %rbx
    movq -1008(%rbp), %r10
    movq (%r10), %r12
    movq -1216(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1216(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    addq %r12, %rbx
    movq -1208(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -1216(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    movq %rax, -1016(%rbp)
    movq -1208(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    seta %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L11_82
    jmp .L11_137
.L11_137:
    movl %r12d, %r13d
    jmp .L11_83
.L11_82:
    movq -1208(%rbp), %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -1160(%rbp), %r10
    movq (%r10), %r13
    movq -1024(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r12
    jb 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    addq %r13, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl %r12d, %edi
    call lb_paths_separator@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L11_83:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L11_84
    jmp .L11_138
.L11_138:
    movl %r12d, %r13d
    jmp .L11_85
.L11_84:
    movq -1208(%rbp), %rax
    movq $2, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L11_86
    jmp .L11_139
.L11_139:
    movl %r12d, %r13d
    jmp .L11_87
.L11_86:
    movq -784(%rbp), %r10
    leaq -752(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $0, %eax
    leaq -768(%rbp), %r10
    movl %eax, (%r10)
.L11_128:
    movl $0, %eax
    movl %eax, %r13d
.L11_87:
    movzbl %r13b, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %r13d
.L11_85:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L11_79
    jmp .L11_80
.L11_79:
    movq -1160(%rbp), %r10
    movq (%r10), %r12
    movq -1032(%rbp), %r10
    movq (%r10), %r13
    movq -1208(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_43(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1208(%rbp), %rcx
    addq %rcx, %r12
    movl $47, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -1208(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    jmp .L11_81
.L11_80:
    movq -1208(%rbp), %rax
    movq %rax, %r12
.L11_81:
    movq -1160(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1040(%rbp)
    movq -1048(%rbp), %r10
    movq (%r10), %r14
    movq %r12, %r15
    movq $0, %rax
    movq %rax, %rbx
.L11_88:
    movq -856(%rbp), %rcx
    cmpq %rcx, %rbx
    jae .L11_91
.L11_89:
    movq -848(%rbp), %rax
    movq %rax, %r12
    addq %rbx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    cmpq %r14, %r15
    jb 1f
    leaq .Ltext_45(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1040(%rbp), %rax
    addq %r15, %rax
    movq %rax, -1056(%rbp)
    movzbl %r12b, %r12d
    movq -1056(%rbp), %r10
    movb %r12b, (%r10)
    movq $1, %rcx
    movq %r15, %r12
    addq %rcx, %r12
.L11_90:
    movq $1, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r15
    movq %r13, %rbx
    jmp .L11_88
.L11_91:
    movq %r15, %rax
    movq %rax, -1208(%rbp)
    movq -1016(%rbp), %rax
    movq %rax, -1216(%rbp)
    movq -1232(%rbp), %rax
    movq %rax, -1224(%rbp)
    jmp .L11_31
.L11_33:
    movq -1208(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L11_93
.L11_92:
    leaq .Ltext_16(%rip), %rbx
    leaq -480(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $1, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -528(%rbp), %rdi
    call lb_strings_copy@PLT
    leaq -528(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_96
    jmp .L11_95
.L11_96:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -96(%rbp), %rax
    movq %rax, -1064(%rbp)
    movq -1064(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -1064(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -544(%rbp), %rbx
    movq -1184(%rbp), %r10
    movq (%r10), %r14
    movq -1184(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_47(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq -1168(%rbp), %r10
    movq (%r10), %r14
    movq -1168(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L11_98
    jmp .L11_97
.L11_98:
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r14, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L11_97:
    leaq -560(%rbp), %rbx
    movq -1160(%rbp), %r10
    movq (%r10), %r12
    movq -1160(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -1168(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L11_100
    jmp .L11_99
.L11_100:
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
.L11_99:
    movq -1064(%rbp), %rsi
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
.L11_95:
    leaq -96(%rbp), %rax
    movq %rax, -1072(%rbp)
    movq %r12, %r10
    movq -1072(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1072(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -576(%rbp), %r13
    movq -1184(%rbp), %r10
    movq (%r10), %r14
    movq -1184(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r15, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_47(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq -1168(%rbp), %r10
    movq (%r10), %r14
    movq -1168(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L11_103
    jmp .L11_102
.L11_103:
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
.L11_102:
    leaq -592(%rbp), %rbx
    movq -1160(%rbp), %r10
    movq (%r10), %r12
    movq -1160(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq -1168(%rbp), %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L11_105
    jmp .L11_104
.L11_105:
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
.L11_104:
    movq -1072(%rbp), %rsi
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
.L11_93:
.L11_94:
    movq -1160(%rbp), %r10
    movq (%r10), %r13
    movq -1160(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -1080(%rbp)
    movq -1080(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -1208(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -1208(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L11_107
.L11_108:
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_8(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_107:
    leaq -608(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq -1208(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -624(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq -1208(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -672(%rbp), %rdi
    call lb_strings_copy@PLT
    leaq -672(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L11_110
    jmp .L11_109
.L11_110:
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq -96(%rbp), %rax
    movq %rax, -1088(%rbp)
    movq -1088(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -1088(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -688(%rbp), %rbx
    movq -1184(%rbp), %r10
    movq (%r10), %r12
    movq -1184(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1096(%rbp)
    movq -1096(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1104(%rbp)
    movq -1104(%rbp), %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -1112(%rbp)
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -1112(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -1168(%rbp), %r10
    movq (%r10), %r12
    movq -1168(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1120(%rbp)
    movq -1120(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L11_112
    jmp .L11_111
.L11_112:
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r11
    call *%r11
.L11_111:
    leaq -704(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -1080(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -1168(%rbp), %r10
    movq (%r10), %r12
    movq -1120(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L11_114
    jmp .L11_113
.L11_114:
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
.L11_113:
    movq -1088(%rbp), %rsi
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
.L11_109:
    leaq -96(%rbp), %rax
    movq %rax, -1128(%rbp)
    movq %r14, %r10
    movq -1128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1128(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -720(%rbp), %r12
    movq -1184(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1136(%rbp)
    movq -1184(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $8, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_48(%rip), %rdi
    leaq .Ltext_49(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -1136(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -1144(%rbp)
    movq -1144(%rbp), %r10
    movq %rbx, (%r10)
    movq -1168(%rbp), %r10
    movq (%r10), %rbx
    movq -1168(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -1152(%rbp)
    movq -1152(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L11_117
    jmp .L11_116
.L11_117:
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %r11
    call *%r11
.L11_116:
    leaq -736(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -1080(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -1168(%rbp), %r10
    movq (%r10), %r12
    movq -1152(%rbp), %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L11_119
    jmp .L11_118
.L11_119:
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
.L11_118:
    movq -1128(%rbp), %rsi
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

    .section .init_array,"aw"
    .p2align 3
    .quad lb_paths_0init
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
    .asciz "src/std/paths.lucb:8:5"
.Ltext_2:
    .asciz "src/std/paths.lucb:13:9"
.Ltext_3:
    .asciz "src/std/paths.lucb:14:9"
.Ltext_4:
    .asciz "src/std/paths.lucb:16:5"
.Ltext_5:
    .asciz "src/std/paths.lucb:20:9"
.Ltext_6:
    .asciz "src/std/paths.lucb:28:9"
.Ltext_7:
    .asciz "src/std/paths.lucb:29:9"
.Ltext_8:
    .asciz "index out of bounds"
.Ltext_9:
    .asciz "src/std/paths.lucb:30:5"
.Ltext_10:
    .asciz ""
.Ltext_11:
    .asciz "src/std/paths.lucb:33:9"
.Ltext_12:
    .asciz "src/std/paths.lucb:57:5"
.Ltext_13:
    .asciz "src/std/paths.lucb:61:9"
.Ltext_14:
    .asciz "src/std/paths.lucb:62:5"
.Ltext_15:
    .asciz "src/std/paths.lucb:65:9"
.Ltext_16:
    .asciz "."
.Ltext_17:
    .asciz "src/std/paths.lucb:80:5"
.Ltext_18:
    .asciz "src/std/paths.lucb:87:5"
.Ltext_19:
    .asciz "src/std/paths.lucb:88:5"
.Ltext_20:
    .asciz "src/std/paths.lucb:96:5"
.Ltext_21:
    .asciz "src/std/paths.lucb:102:5"
.Ltext_22:
    .asciz "src/std/paths.lucb:118:5"
.Ltext_23:
    .asciz "/"
.Ltext_24:
    .asciz "src/std/paths.lucb:120:5"
.Ltext_25:
    .asciz "src/std/paths.lucb:128:5"
.Ltext_26:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_27:
    .asciz "memory.unset"
.Ltext_28:
    .asciz "memory.exhausted"
.Ltext_29:
    .asciz "src/std/paths.lucb:130:5"
.Ltext_30:
    .asciz "src/std/paths.lucb:133:5"
.Ltext_31:
    .asciz "src/std/paths.lucb:138:9"
.Ltext_32:
    .asciz "src/std/paths.lucb:140:9"
.Ltext_33:
    .asciz "src/std/paths.lucb:141:9"
.Ltext_34:
    .asciz ".."
.Ltext_35:
    .asciz "src/std/paths.lucb:145:17"
.Ltext_36:
    .asciz "src/std/paths.lucb:146:17"
.Ltext_37:
    .asciz "src/std/paths.lucb:147:17"
.Ltext_38:
    .asciz "src/std/paths.lucb:148:21"
.Ltext_39:
    .asciz "src/std/paths.lucb:149:21"
.Ltext_40:
    .asciz "src/std/paths.lucb:153:9"
.Ltext_41:
    .asciz "src/std/paths.lucb:154:9"
.Ltext_42:
    .asciz "src/std/paths.lucb:155:9"
.Ltext_43:
    .asciz "src/std/paths.lucb:156:13"
.Ltext_44:
    .asciz "src/std/paths.lucb:157:13"
.Ltext_45:
    .asciz "src/std/paths.lucb:159:13"
.Ltext_46:
    .asciz "src/std/paths.lucb:160:13"
.Ltext_47:
    .asciz "src/std/paths.lucb:161:5"
.Ltext_48:
    .asciz "src/std/paths.lucb:162:5"
.Ltext_49:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
