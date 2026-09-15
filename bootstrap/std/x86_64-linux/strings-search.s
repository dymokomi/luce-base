    .text

    .p2align 4
    .globl lb_strings_search_0init
    .type lb_strings_search_0init, @function
lb_strings_search_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_strings_11starts_with
    .type lb_strings_11starts_with, @function
lb_strings_11starts_with:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -56(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -72(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -72(%rbp), %rax
    movq %rax, -112(%rbp)
    movq -112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -56(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    cmpq %r14, %r12
    jbe .L1_2
.L1_1:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_2:
.L1_3:
    movq %r13, %r10
    movq (%r10), %rbx
    movq $1, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $0, %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r15, %r12
    jb 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r12, %rax
    jbe .L1_5
.L1_6:
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_5:
    leaq -88(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq -104(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
.L1_7:
    movq -112(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %rdi
    movq %r13, %rsi
    movq %r12, %rdx
    call memcmp@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
.L1_8:
    movzbl %r13b, %ebx
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

    .p2align 4
    .globl lb_strings_9ends_with
    .type lb_strings_9ends_with, @function
lb_strings_9ends_with:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -56(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -72(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -72(%rbp), %rax
    movq %rax, -112(%rbp)
    movq -112(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -120(%rbp)
    leaq -56(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq -120(%rbp), %rax
    cmpq %r14, %rax
    jbe .L2_2
.L2_1:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_4:
    jmp .L2_3
.L2_2:
.L2_3:
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -128(%rbp)
    movq -120(%rbp), %rcx
    movq %r14, %rbx
    subq %rcx, %rbx
    movq $1, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    cmpq %r15, %rbx
    jb 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r15, %r14
    jb 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r14, %rbx
    jbe .L2_5
.L2_6:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_5:
    movq -128(%rbp), %rax
    movq %rax, %r13
    addq %rbx, %r13
    movq %r14, %r15
    subq %rbx, %r15
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq -120(%rbp), %rax
    cmpq %r15, %rax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L2_7
    jmp .L2_10
.L2_10:
    movl %r12d, %ebx
    jmp .L2_8
.L2_7:
    movq -112(%rbp), %r10
    movq (%r10), %rbx
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r15, %rdx
    call memcmp@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L2_8:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_9:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_find
    .type lb_strings_find, @function
lb_strings_find:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    leaq -48(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -64(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -48(%rbp), %rbx
    leaq -64(%rbp), %r12
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movl $0, %r8d
    call lb_strings_12search_bytes@PLT
    leaq -80(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -80(%rbp), %rbx
    leaq -32(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_1:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_9find_from
    .type lb_strings_9find_from, @function
lb_strings_9find_from:
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
    leaq -88(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movq %r8, -104(%rbp)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -72(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    jbe .L4_2
.L4_1:
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
.L4_4:
    jmp .L4_3
.L4_2:
.L4_3:
    movq %r12, %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r14, %r13
    jb 1f
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r13, %rbx
    jbe .L4_5
.L4_6:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_5:
    movq %rbx, %r12
    addq %r15, %r12
    movq %r13, %rax
    subq %rbx, %rax
    movq %rax, -192(%rbp)
    leaq -136(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq -192(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -88(%rbp), %r12
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movl $0, %r8d
    call lb_strings_12search_bytes@PLT
    leaq -152(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -152(%rbp), %r14
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L4_7
    jmp .L4_8
.L4_7:
    movq %r14, %r10
    movq (%r10), %r12
    jmp .L4_9
.L4_8:
    leaq -168(%rbp), %rbx
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
.L4_10:
.L4_9:
    movq %rbx, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    leaq -184(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -56(%rbp), %r13
    movq %r14, %r10
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
.L4_11:
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_9find_last
    .type lb_strings_9find_last, @function
lb_strings_9find_last:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -72(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -88(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -72(%rbp), %rbx
    leaq -88(%rbp), %r12
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movl $1, %r8d
    call lb_strings_12search_bytes@PLT
    leaq -104(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -104(%rbp), %r14
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L5_1
    jmp .L5_2
.L5_1:
    movq %r14, %r10
    movq (%r10), %r13
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
.L5_4:
.L5_3:
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r14, %rax
    movq %r15, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r14, %rax
    movq %r13, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    leaq -136(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    leaq -56(%rbp), %r14
    movq %r15, %r10
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
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_5:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_last
    .type lb_strings_last, @function
lb_strings_last:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -72(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    movl %edx, -88(%rbp)
    leaq -72(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -88(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq %r12, %r14
.L6_1:
    movq $0, %rcx
    cmpq %rcx, %r14
    jbe .L6_3
.L6_2:
    movq %r14, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -128(%rbp)
    movq -128(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -128(%rbp), %rax
    movq %rax, %r15
    addq %rbx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    cmpl %r13d, %r15d
    jne .L6_5
.L6_4:
    leaq -104(%rbp), %rbx
    movq -128(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
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
.L6_7:
    jmp .L6_6
.L6_5:
.L6_6:
    movq -128(%rbp), %rax
    movq %rax, %r14
    jmp .L6_1
.L6_3:
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
.L6_8:
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_contains
    .type lb_strings_contains, @function
lb_strings_contains:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    leaq -32(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -48(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -32(%rbp), %rbx
    leaq -48(%rbp), %r12
    movq %rbx, %r10
    leaq -96(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    leaq -112(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -96(%rbp), %rbx
    leaq -112(%rbp), %r12
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movl $0, %r8d
    call lb_strings_12search_bytes@PLT
    leaq -128(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -128(%rbp), %rbx
    leaq -80(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    leaq -64(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L7_3
.L7_2:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L7_3:
    leaq -64(%rbp), %rbx
    movq $8, %rcx
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
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_1:
    leaq .Ltext_11(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_12search_bytes
    .type lb_strings_12search_bytes, @function
lb_strings_12search_bytes:
    pushq %rbp
    movq %rsp, %rbp
    subq $320, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -72(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -88(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movl %r8d, -104(%rbp)
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -208(%rbp)
    movq -208(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L8_2
.L8_1:
    leaq -120(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
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
.L8_4:
    jmp .L8_3
.L8_2:
.L8_3:
    leaq -72(%rbp), %rax
    movq %rax, -216(%rbp)
    movq -216(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -224(%rbp)
    movq -224(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jbe .L8_6
.L8_5:
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
.L8_8:
    jmp .L8_7
.L8_6:
.L8_7:
    leaq -104(%rbp), %rax
    movq %rax, -232(%rbp)
    movq -232(%rbp), %r10
    movzbl (%r10), %eax
    movl %eax, -240(%rbp)
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movl -240(%rbp), %edx
    movl $0, %ecx
    call lb_strings_14maximal_suffix@PLT
    leaq -152(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -152(%rbp), %rax
    movq %rax, -248(%rbp)
    movq -248(%rbp), %r10
    movq (%r10), %r15
    movq -248(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -256(%rbp)
    movq -256(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -264(%rbp)
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movl -240(%rbp), %edx
    movl $1, %ecx
    call lb_strings_14maximal_suffix@PLT
    leaq -168(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -168(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r15, %r12
    jbe .L8_10
.L8_9:
    movq %r12, %rax
    movq %rax, -272(%rbp)
    movq %r13, %rax
    movq %rax, -280(%rbp)
    jmp .L8_11
.L8_10:
    movq %r15, %rax
    movq %rax, -272(%rbp)
    movq -264(%rbp), %rax
    movq %rax, -280(%rbp)
.L8_11:
    movq -208(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq -280(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -272(%rbp), %rax
    cmpq %r12, %rax
    setbe %al
    movzbl %al, %r12d
    movl %r12d, %eax
    movl %eax, -288(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L8_12:
    movl -288(%rbp), %eax
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L8_15
    jmp .L8_51
.L8_51:
    movl %r15d, %r12d
    jmp .L8_16
.L8_15:
    movq -272(%rbp), %rcx
    cmpq %rcx, %r13
    setb %al
    movzbl %al, %r12d
.L8_16:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L8_13
    jmp .L8_14
.L8_13:
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r13, %rdx
    movl -240(%rbp), %ecx
    call lb_strings_11search_byte@PLT
    movl %eax, %r12d
    movq -280(%rbp), %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r14, %rdx
    movl -240(%rbp), %ecx
    call lb_strings_11search_byte@PLT
    movl %eax, %r14d
    cmpl %r14d, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L8_18
.L8_17:
    movl $0, %eax
    movl %eax, %r12d
    jmp .L8_19
.L8_18:
    movl -288(%rbp), %eax
    movl %eax, %r12d
.L8_19:
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movl %r12d, %eax
    movl %eax, -288(%rbp)
    movq %r14, %r13
    jmp .L8_12
.L8_14:
    testl %r15d, %r15d
    jne .L8_20
    jmp .L8_21
.L8_20:
    movq -208(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq -280(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -280(%rbp), %rax
    movq %rax, -296(%rbp)
    movq %r12, %rax
    movq %rax, -304(%rbp)
    jmp .L8_22
.L8_21:
    movq -208(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq -272(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -272(%rbp), %rax
    cmpq %r12, %rax
    jbe .L8_24
.L8_23:
    movq -272(%rbp), %rax
    movq %rax, %r12
    jmp .L8_25
.L8_24:
.L8_25:
    movq %r12, %rax
    movq %rax, -296(%rbp)
    movq $0, %rax
    movq %rax, -304(%rbp)
.L8_22:
    movq $0, %rax
    movq %rax, %r14
    movq $0, %rax
    movq %rax, -312(%rbp)
.L8_26:
    movq -208(%rbp), %r10
    movq (%r10), %r12
    movq -224(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq %r14, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    cmpq %r13, %r12
    ja .L8_28
.L8_27:
    movq -272(%rbp), %rax
    movq -312(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L8_30
.L8_29:
    movq -272(%rbp), %rax
    movq %rax, %r12
    jmp .L8_31
.L8_30:
    movq -312(%rbp), %rax
    movq %rax, %r12
.L8_31:
    movq %r12, %r13
.L8_32:
    movq -208(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L8_35
    jmp .L8_52
.L8_52:
    movl %r12d, %r15d
    jmp .L8_36
.L8_35:
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r13, %rdx
    movl -240(%rbp), %ecx
    call lb_strings_11search_byte@PLT
    movl %eax, %r12d
    movq %r14, %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq -216(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r15, %rdx
    movl -240(%rbp), %ecx
    call lb_strings_11search_byte@PLT
    movl %eax, %r15d
    cmpl %r15d, %r12d
    sete %al
    movzbl %al, %r15d
.L8_36:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L8_33
    jmp .L8_34
.L8_33:
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %r13
    jmp .L8_32
.L8_34:
    movq -208(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    jae .L8_38
.L8_37:
    movq %r13, %rax
    movq -272(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %r14
    movq $0, %rax
    movq %rax, -312(%rbp)
    jmp .L8_26
.L8_40:
    jmp .L8_39
.L8_38:
.L8_39:
    movq -272(%rbp), %rax
    movq %rax, %r12
.L8_41:
    movq -312(%rbp), %rcx
    cmpq %rcx, %r12
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L8_44
    jmp .L8_53
.L8_53:
    movl %r13d, %r15d
    jmp .L8_45
.L8_44:
    movq %r12, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r13, %rdx
    movl -240(%rbp), %ecx
    call lb_strings_11search_byte@PLT
    movl %eax, %r13d
    movq %r14, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %r15, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq -216(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r15, %rdx
    movl -240(%rbp), %ecx
    call lb_strings_11search_byte@PLT
    movl %eax, %r15d
    cmpl %r15d, %r13d
    sete %al
    movzbl %al, %r15d
.L8_45:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L8_42
    jmp .L8_43
.L8_42:
    movq %r12, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r13, %r12
    jmp .L8_41
.L8_43:
    movq -312(%rbp), %rcx
    cmpq %rcx, %r12
    ja .L8_47
.L8_46:
    leaq -184(%rbp), %rbx
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
.L8_49:
    jmp .L8_48
.L8_47:
.L8_48:
    movq -296(%rbp), %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %r14
    movq -304(%rbp), %rax
    movq %rax, -312(%rbp)
    jmp .L8_26
.L8_28:
    leaq -200(%rbp), %rbx
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
.L8_50:
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_14maximal_suffix
    .type lb_strings_14maximal_suffix, @function
lb_strings_14maximal_suffix:
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
    movl %edx, -88(%rbp)
    movl %ecx, -104(%rbp)
    leaq -72(%rbp), %rax
    movq %rax, -128(%rbp)
    movq -128(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -136(%rbp)
    leaq -88(%rbp), %rax
    movq %rax, -144(%rbp)
    leaq -104(%rbp), %rax
    movq %rax, -152(%rbp)
    movq $0, %rax
    movq %rax, -160(%rbp)
    movq $1, %rax
    movq %rax, -168(%rbp)
    movq $0, %rax
    movq %rax, %r15
    movq $1, %rax
    movq %rax, -176(%rbp)
.L9_1:
    movq -136(%rbp), %r10
    movq (%r10), %rbx
    movq -168(%rbp), %rax
    cmpq %rbx, %rax
    setb %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L9_4
    jmp .L9_16
.L9_16:
    movl %r13d, %ebx
    jmp .L9_5
.L9_4:
    movq -168(%rbp), %rcx
    movq %rbx, %r13
    subq %rcx, %r13
    cmpq %r13, %r15
    setb %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L9_5:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L9_2
    jmp .L9_3
.L9_2:
    movq -168(%rbp), %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -144(%rbp), %r10
    movzbl (%r10), %r13d
    movq -128(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %rbx, %rdx
    movl %r13d, %ecx
    call lb_strings_11search_byte@PLT
    movl %eax, %ebx
    movq -160(%rbp), %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -128(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %rdx
    movl %r13d, %ecx
    call lb_strings_11search_byte@PLT
    movl %eax, %r12d
    movzbl %bl, %ebx
    movzbl %r12b, %r12d
    cmpl %r12d, %ebx
    jne .L9_7
.L9_6:
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -176(%rbp), %rcx
    cmpq %rcx, %rbx
    jne .L9_10
.L9_9:
    movq -168(%rbp), %rax
    movq -176(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %rbx, %r12
    movq $0, %rax
    movq %rax, %rbx
    jmp .L9_11
.L9_10:
    movq -168(%rbp), %rax
    movq %rax, %r12
.L9_11:
    movq -160(%rbp), %rax
    movq %rax, %r13
    movq %r12, %rax
    movq %rax, -184(%rbp)
    movq %rbx, %r15
    movq -176(%rbp), %rax
    movq %rax, -192(%rbp)
    jmp .L9_8
.L9_7:
    cmpl %r12d, %ebx
    setb %al
    movzbl %al, %r13d
    movq -152(%rbp), %r10
    movzbl (%r10), %r14d
    cmpl %r14d, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L9_13
.L9_12:
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %rbx, %rax
    movq -168(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %rbx, %rax
    movq -160(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -160(%rbp), %rax
    movq %rax, %r13
    jmp .L9_14
.L9_13:
    movq -168(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -168(%rbp), %rax
    movq %rax, %r13
    movq $1, %rax
    movq %rax, %r12
.L9_14:
    movq %rbx, %rax
    movq %rax, -184(%rbp)
    movq $0, %rax
    movq %rax, %r15
    movq %r12, %rax
    movq %rax, -192(%rbp)
.L9_8:
    movq %r13, %rax
    movq %rax, -160(%rbp)
    movq -184(%rbp), %rax
    movq %rax, -168(%rbp)
    movq -192(%rbp), %rax
    movq %rax, -176(%rbp)
    jmp .L9_1
.L9_3:
    leaq -120(%rbp), %rbx
    movq -160(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -176(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
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
.L9_15:
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_11search_byte
    .type lb_strings_11search_byte, @function
lb_strings_11search_byte:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    leaq -40(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    movq %rdx, -56(%rbp)
    movl %ecx, -72(%rbp)
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L10_1
    jmp .L10_2
.L10_1:
    leaq -40(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -56(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %rax
    movq %r13, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %rbx, %r10
    movq (%r10), %rbx
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rbx, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    jmp .L10_3
.L10_2:
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -40(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    jb 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    addq %r13, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
.L10_3:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_4:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .section .init_array,"aw"
    .p2align 3
    .quad lb_strings_search_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/strings/search.lucb:4:5"
.Ltext_1:
    .asciz "index out of bounds"
.Ltext_2:
    .asciz "unreachable"
.Ltext_3:
    .asciz "src/std/strings/search.lucb:9:5"
.Ltext_4:
    .asciz "src/std/strings/search.lucb:15:5"
.Ltext_5:
    .asciz "src/std/strings/search.lucb:22:5"
.Ltext_6:
    .asciz "src/std/strings/search.lucb:23:5"
.Ltext_7:
    .asciz "src/std/strings/search.lucb:29:5"
.Ltext_8:
    .asciz "src/std/strings/search.lucb:35:9"
.Ltext_9:
    .asciz "src/std/strings/search.lucb:36:9"
.Ltext_10:
    .asciz "src/std/strings/search.lucb:38:5"
.Ltext_11:
    .asciz "src/std/strings/search.lucb:41:5"
.Ltext_12:
    .asciz "src/std/strings/search.lucb:59:5"
.Ltext_13:
    .asciz "src/std/strings/search.lucb:62:9"
.Ltext_14:
    .asciz "src/std/strings/search.lucb:64:9"
.Ltext_15:
    .asciz "src/std/strings/search.lucb:67:9"
.Ltext_16:
    .asciz "src/std/strings/search.lucb:69:9"
.Ltext_17:
    .asciz "src/std/strings/search.lucb:73:5"
.Ltext_18:
    .asciz "src/std/strings/search.lucb:75:9"
.Ltext_19:
    .asciz "src/std/strings/search.lucb:76:13"
.Ltext_20:
    .asciz "src/std/strings/search.lucb:78:13"
.Ltext_21:
    .asciz "src/std/strings/search.lucb:82:9"
.Ltext_22:
    .asciz "src/std/strings/search.lucb:83:13"
.Ltext_23:
    .asciz "src/std/strings/search.lucb:86:9"
.Ltext_24:
    .asciz "src/std/strings/search.lucb:88:5"
.Ltext_25:
    .asciz "src/std/strings/search.lucb:97:5"
.Ltext_26:
    .asciz "src/std/strings/search.lucb:98:9"
.Ltext_27:
    .asciz "src/std/strings/search.lucb:99:9"
.Ltext_28:
    .asciz "src/std/strings/search.lucb:101:13"
.Ltext_29:
    .asciz "src/std/strings/search.lucb:102:17"
.Ltext_30:
    .asciz "src/std/strings/search.lucb:105:17"
.Ltext_31:
    .asciz "src/std/strings/search.lucb:107:13"
.Ltext_32:
    .asciz "src/std/strings/search.lucb:109:13"
.Ltext_33:
    .asciz "src/std/strings/search.lucb:112:13"
.Ltext_34:
    .asciz "src/std/strings/search.lucb:115:5"
.Ltext_35:
    .asciz "src/std/strings/search.lucb:118:5"
.Ltext_36:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
