    .text

    .p2align 4
    .globl lb_strings_0init
    .type lb_strings_0init, @function
lb_strings_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    leaq lb_strings_17invalid_separator(%rip), %rbx
    movl $208273456, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_strings_16output_too_large(%rip), %rbx
    movl $208273457, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_strings_13invalid_radix(%rip), %rbx
    movl $208273458, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_strings_14invalid_number(%rip), %rbx
    movl $208273459, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_strings_19number_out_of_range(%rip), %rbx
    movl $208273460, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_strings_17conversion_failed(%rip), %rbx
    movl $208273461, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
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
    jbe .L3_2
.L3_1:
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
.L3_4:
    jmp .L3_3
.L3_2:
.L3_3:
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
    jbe .L3_5
.L3_6:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L3_5:
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
    jne .L3_7
    jmp .L3_8
.L3_7:
    movq %r14, %r10
    movq (%r10), %r12
    jmp .L3_9
.L3_8:
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
.L3_10:
.L3_9:
    movq %rbx, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_6(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
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
.L3_11:
    leaq .Ltext_6(%rip), %rdi
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
.L4_1:
    movq $0, %rcx
    cmpq %rcx, %r14
    jbe .L4_3
.L4_2:
    movq %r14, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
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
    jne .L4_5
.L4_4:
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
.L4_7:
    jmp .L4_6
.L4_5:
.L4_6:
    movq -128(%rbp), %rax
    movq %rax, %r14
    jmp .L4_1
.L4_3:
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
.L4_8:
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
    jmp .L5_3
.L5_2:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L5_3:
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
.L5_1:
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
    jne .L6_2
.L6_1:
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
.L6_4:
    jmp .L6_3
.L6_2:
.L6_3:
    leaq -72(%rbp), %rax
    movq %rax, -216(%rbp)
    movq -216(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -224(%rbp)
    movq -224(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jbe .L6_6
.L6_5:
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
.L6_8:
    jmp .L6_7
.L6_6:
.L6_7:
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
    jbe .L6_10
.L6_9:
    movq %r12, %rax
    movq %rax, -272(%rbp)
    movq %r13, %rax
    movq %rax, -280(%rbp)
    jmp .L6_11
.L6_10:
    movq %r15, %rax
    movq %rax, -272(%rbp)
    movq -264(%rbp), %rax
    movq %rax, -280(%rbp)
.L6_11:
    movq -208(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq -280(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
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
.L6_12:
    movl -288(%rbp), %eax
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L6_15
    jmp .L6_51
.L6_51:
    movl %r15d, %r12d
    jmp .L6_16
.L6_15:
    movq -272(%rbp), %rcx
    cmpq %rcx, %r13
    setb %al
    movzbl %al, %r12d
.L6_16:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L6_13
    jmp .L6_14
.L6_13:
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
    leaq .Ltext_82(%rip), %rsi
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
    jne .L6_18
.L6_17:
    movl $0, %eax
    movl %eax, %r12d
    jmp .L6_19
.L6_18:
    movl -288(%rbp), %eax
    movl %eax, %r12d
.L6_19:
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movl %r12d, %eax
    movl %eax, -288(%rbp)
    movq %r14, %r13
    jmp .L6_12
.L6_14:
    testl %r15d, %r15d
    jne .L6_20
    jmp .L6_21
.L6_20:
    movq -208(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq -280(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_15(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -280(%rbp), %rax
    movq %rax, -296(%rbp)
    movq %r12, %rax
    movq %rax, -304(%rbp)
    jmp .L6_22
.L6_21:
    movq -208(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq -272(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -272(%rbp), %rax
    cmpq %r12, %rax
    jbe .L6_24
.L6_23:
    movq -272(%rbp), %rax
    movq %rax, %r12
    jmp .L6_25
.L6_24:
.L6_25:
    movq %r12, %rax
    movq %rax, -296(%rbp)
    movq $0, %rax
    movq %rax, -304(%rbp)
.L6_22:
    movq $0, %rax
    movq %rax, %r14
    movq $0, %rax
    movq %rax, -312(%rbp)
.L6_26:
    movq -208(%rbp), %r10
    movq (%r10), %r12
    movq -224(%rbp), %r10
    movq (%r10), %r13
    movq %r13, %rax
    movq %r14, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    cmpq %r13, %r12
    ja .L6_28
.L6_27:
    movq -272(%rbp), %rax
    movq -312(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L6_30
.L6_29:
    movq -272(%rbp), %rax
    movq %rax, %r12
    jmp .L6_31
.L6_30:
    movq -312(%rbp), %rax
    movq %rax, %r12
.L6_31:
    movq %r12, %r13
.L6_32:
    movq -208(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L6_35
    jmp .L6_52
.L6_52:
    movl %r12d, %r15d
    jmp .L6_36
.L6_35:
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
    leaq .Ltext_82(%rip), %rsi
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
.L6_36:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L6_33
    jmp .L6_34
.L6_33:
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %r13
    jmp .L6_32
.L6_34:
    movq -208(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %r13
    jae .L6_38
.L6_37:
    movq %r13, %rax
    movq -272(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %r14
    movq $0, %rax
    movq %rax, -312(%rbp)
    jmp .L6_26
.L6_40:
    jmp .L6_39
.L6_38:
.L6_39:
    movq -272(%rbp), %rax
    movq %rax, %r12
.L6_41:
    movq -312(%rbp), %rcx
    cmpq %rcx, %r12
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L6_44
    jmp .L6_53
.L6_53:
    movl %r13d, %r15d
    jmp .L6_45
.L6_44:
    movq %r12, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
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
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %r15, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
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
.L6_45:
    movzbl %r15b, %r13d
    testl %r13d, %r13d
    jne .L6_42
    jmp .L6_43
.L6_42:
    movq %r12, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r13, %r12
    jmp .L6_41
.L6_43:
    movq -312(%rbp), %rcx
    cmpq %rcx, %r12
    ja .L6_47
.L6_46:
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
.L6_49:
    jmp .L6_48
.L6_47:
.L6_48:
    movq -296(%rbp), %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %r14
    movq -304(%rbp), %rax
    movq %rax, -312(%rbp)
    jmp .L6_26
.L6_28:
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
.L6_50:
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
.L7_1:
    movq -136(%rbp), %r10
    movq (%r10), %rbx
    movq -168(%rbp), %rax
    cmpq %rbx, %rax
    setb %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L7_4
    jmp .L7_16
.L7_16:
    movl %r13d, %ebx
    jmp .L7_5
.L7_4:
    movq -168(%rbp), %rcx
    movq %rbx, %r13
    subq %rcx, %r13
    cmpq %r13, %r15
    setb %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L7_5:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L7_2
    jmp .L7_3
.L7_2:
    movq -168(%rbp), %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
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
    leaq .Ltext_82(%rip), %rsi
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
    jne .L7_7
.L7_6:
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -176(%rbp), %rcx
    cmpq %rcx, %rbx
    jne .L7_10
.L7_9:
    movq -168(%rbp), %rax
    movq -176(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %rbx, %r12
    movq $0, %rax
    movq %rax, %rbx
    jmp .L7_11
.L7_10:
    movq -168(%rbp), %rax
    movq %rax, %r12
.L7_11:
    movq -160(%rbp), %rax
    movq %rax, %r13
    movq %r12, %rax
    movq %rax, -184(%rbp)
    movq %rbx, %r15
    movq -176(%rbp), %rax
    movq %rax, -192(%rbp)
    jmp .L7_8
.L7_7:
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
    jne .L7_13
.L7_12:
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %rbx, %rax
    movq -168(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %rbx, %rax
    movq -160(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_32(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -160(%rbp), %rax
    movq %rax, %r13
    jmp .L7_14
.L7_13:
    movq -168(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -168(%rbp), %rax
    movq %rax, %r13
    movq $1, %rax
    movq %rax, %r12
.L7_14:
    movq %rbx, %rax
    movq %rax, -184(%rbp)
    movq $0, %rax
    movq %rax, %r15
    movq %r12, %rax
    movq %rax, -192(%rbp)
.L7_8:
    movq %r13, %rax
    movq %rax, -160(%rbp)
    movq -184(%rbp), %rax
    movq %rax, -168(%rbp)
    movq -192(%rbp), %rax
    movq %rax, -176(%rbp)
    jmp .L7_1
.L7_3:
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
.L7_15:
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
    jne .L8_1
    jmp .L8_2
.L8_1:
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
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
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
    jmp .L8_3
.L8_2:
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
.L8_3:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L8_4:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_split
    .type lb_strings_split, @function
lb_strings_split:
    pushq %rbp
    movq %rsp, %rbp
    subq $480, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -112(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movl %ecx, -128(%rbp)
    leaq -112(%rbp), %rax
    movq %rax, -344(%rbp)
    movq -344(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -352(%rbp)
    movq -344(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -360(%rbp)
    leaq -128(%rbp), %r14
    leaq -136(%rbp), %rax
    movq %rax, -368(%rbp)
    leaq -152(%rbp), %rax
    movq %rax, -480(%rbp)
    movq -480(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -376(%rbp)
    movq $1, %rax
    movq %rax, -440(%rbp)
    movq $0, %rax
    movq %rax, %rbx
.L9_1:
    movq -360(%rbp), %rcx
    cmpq %rcx, %rbx
    jae .L9_4
.L9_2:
    movq -352(%rbp), %rax
    movq %rax, %r15
    addq %rbx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movzbl %r15b, %r15d
    movq %r14, %r10
    movzbl (%r10), %r13d
    cmpl %r13d, %r15d
    jne .L9_6
.L9_5:
    movq -440(%rbp), %rdi
    movq $1, %rsi
    movl $64, %edx
    movq -368(%rbp), %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r13d
    movq -368(%rbp), %r10
    movq (%r10), %r15
    movq -480(%rbp), %r10
    movq %r15, (%r10)
    movq -376(%rbp), %r10
    movb %r13b, (%r10)
    movq -376(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L9_8
    jmp .L9_9
.L9_8:
    jmp .L9_10
.L9_9:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_36(%rip), %r13
    leaq -168(%rbp), %r14
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
.L9_11:
.L9_10:
    movq %r15, %r13
    jmp .L9_7
.L9_6:
    movq -440(%rbp), %rax
    movq %rax, %r13
.L9_7:
.L9_3:
    movq $1, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r13, %rax
    movq %rax, -440(%rbp)
    movq %r15, %rbx
    jmp .L9_1
.L9_4:
    leaq -184(%rbp), %rax
    movq %rax, -448(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r14
    leaq -232(%rbp), %rax
    movq %rax, -456(%rbp)
    movq -440(%rbp), %rax
    movabsq $288230376151711744, %rcx
    cmpq %rcx, %rax
    jbe .L9_13
.L9_12:
    movq -456(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_37(%rip), %r14
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $47, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -456(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L9_14
.L9_13:
    movq -440(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r13
    imulq %rcx, %r13
    movq %r14, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L9_15
    jmp .L9_16
.L9_16:
    leaq .Ltext_39(%rip), %rdi
    leaq .Ltext_38(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_15:
    movq %r12, %r10
    movq (%r10), %r14
    movq %rbx, %rsi
    movq %r13, %rdx
    movq $8, %rcx
    leaq -256(%rbp), %rdi
    movq %r14, %r11
    call *%r11
    leaq -256(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r14
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
    movl %r14d, %ecx
    movl %eax, %r14d
    andl %ecx, %r14d
    testl %r14d, %r14d
    jne .L9_17
    jmp .L9_18
.L9_17:
    movq -456(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_40(%rip), %r12
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
    movq -456(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L9_14
.L9_18:
    movq %r15, %r10
    movq (%r10), %rbx
    movq -456(%rbp), %r10
    movq %rbx, (%r10)
    movq -456(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -440(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -456(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L9_14:
    movq -456(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L9_20
    jmp .L9_19
.L9_20:
    movq -456(%rbp), %rax
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
.L9_21:
.L9_19:
    movq -456(%rbp), %r10
    movq -448(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -272(%rbp), %rbx
    movq -344(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -128(%rbp), %rax
    movq %rax, -392(%rbp)
    movq -448(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq -360(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    movq %rax, -400(%rbp)
    leaq -288(%rbp), %rax
    movq %rax, -408(%rbp)
    movq -408(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -416(%rbp)
    leaq -304(%rbp), %rax
    movq %rax, -424(%rbp)
    movq -424(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -432(%rbp)
    movq $0, %rax
    movq %rax, -464(%rbp)
    movq $0, %rax
    movq %rax, -472(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L9_22:
    movq -360(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L9_24
.L9_23:
    movq -352(%rbp), %rax
    movq %rax, %r14
    addq %r13, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movq -392(%rbp), %r10
    movzbl (%r10), %r15d
    cmpl %r15d, %r14d
    jne .L9_26
.L9_25:
    movq -448(%rbp), %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq (%r10), %r15
    movq -464(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -464(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq %r15, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq -472(%rbp), %rax
    movq -400(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -400(%rbp), %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -472(%rbp), %rax
    cmpq %r13, %rax
    jbe .L9_28
.L9_29:
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_28:
    movq -352(%rbp), %rax
    movq -472(%rbp), %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq -472(%rbp), %rcx
    movq %r13, %rbx
    subq %rcx, %rbx
    movq -408(%rbp), %r10
    movq %r14, (%r10)
    movq -416(%rbp), %r10
    movq %rbx, (%r10)
    movq -424(%rbp), %r10
    movq %r14, (%r10)
    movq -432(%rbp), %r10
    movq %rbx, (%r10)
    movq -424(%rbp), %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -464(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $1, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    jmp .L9_27
.L9_26:
    movq -464(%rbp), %rax
    movq %rax, %rbx
    movq -472(%rbp), %rax
    movq %rax, %r14
.L9_27:
    movq $1, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %rbx, %rax
    movq %rax, -464(%rbp)
    movq %r14, %rax
    movq %rax, -472(%rbp)
    movq %r15, %r13
    jmp .L9_22
.L9_24:
    movq -448(%rbp), %r10
    movq (%r10), %rbx
    movq -448(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq -464(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -464(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -360(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -472(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -360(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -472(%rbp), %rax
    movq -360(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L9_30
.L9_31:
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_30:
    movq -352(%rbp), %rax
    movq -472(%rbp), %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -360(%rbp), %rax
    movq -472(%rbp), %rcx
    movq %rax, %r13
    subq %rcx, %r13
    leaq -320(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    leaq -336(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -96(%rbp), %rbx
    movq -448(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
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
.L9_32:
    leaq .Ltext_47(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_SplitIterator_next
    .type lb_strings_SplitIterator_next, @function
lb_strings_SplitIterator_next:
    pushq %rbp
    movq %rsp, %rbp
    subq $352, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -80(%rbp)
    leaq -80(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -344(%rbp)
    movq -344(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, -312(%rbp)
    movq -312(%rbp), %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L10_2
.L10_1:
    leaq -104(%rbp), %rbx
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
.L10_4:
    jmp .L10_3
.L10_2:
.L10_3:
    movq -344(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -320(%rbp)
    movq -320(%rbp), %r10
    movq (%r10), %r14
    movq $1, %rcx
    cmpq %rcx, %r14
    jne .L10_6
.L10_5:
    movl $0, %eax
    movq -312(%rbp), %r10
    movb %al, (%r10)
    movq -344(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -352(%rbp)
    movq -344(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r15
    movq -344(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r14
    movq $1, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    cmpq %r12, %r14
    jb 1f
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r15, %r14
    jbe .L10_8
.L10_9:
    leaq .Ltext_50(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L10_8:
    movq -352(%rbp), %rax
    movq %rax, %rbx
    addq %r14, %rbx
    movq %r15, %r12
    subq %r14, %r12
    leaq -120(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq -136(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq -160(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
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
.L10_10:
    jmp .L10_7
.L10_6:
.L10_7:
    leaq -176(%rbp), %r14
    movq -344(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq -344(%rbp), %rax
    movq $32, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq -344(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r15, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r12, %r8
    call lb_strings_9find_from@PLT
    leaq -192(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -192(%rbp), %r12
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L10_14
    jmp .L10_12
.L10_14:
    movq %r14, %r10
    movq (%r10), %r12
.L10_11:
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -328(%rbp)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r12, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_51(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %rbx, %r10
    movq %r14, (%r10)
    movq -320(%rbp), %r10
    movq (%r10), %r14
    movq $1, %rcx
    cmpq %rcx, %r14
    jbe .L10_16
.L10_15:
    movq $1, %rcx
    movq %r14, %rbx
    subq %rcx, %rbx
    movq -320(%rbp), %r10
    movq %rbx, (%r10)
    jmp .L10_17
.L10_16:
.L10_17:
    movq -344(%rbp), %r10
    movq (%r10), %r13
    movq -344(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $1, %rcx
    addq %rcx, %rbx
    movq -328(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r12
    jb 1f
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -328(%rbp), %rax
    cmpq %r12, %rax
    jbe .L10_18
.L10_19:
    leaq .Ltext_53(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L10_18:
    movq -328(%rbp), %rax
    movq %rax, %rbx
    addq %r13, %rbx
    movq -328(%rbp), %rcx
    movq %r12, %r14
    subq %rcx, %r14
    leaq -208(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    leaq -224(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    leaq -248(%rbp), %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    leaq -72(%rbp), %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq %r14, %rsi
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
.L10_20:
    jmp .L10_13
.L10_12:
.L10_13:
    movl $0, %eax
    movq -312(%rbp), %r10
    movb %al, (%r10)
    movq -344(%rbp), %r10
    movq (%r10), %r13
    movq -344(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r14
    movq %rbx, %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r14
    jb 1f
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r14, %r15
    jbe .L10_21
.L10_22:
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L10_21:
    movq %r13, %rbx
    addq %r15, %rbx
    movq %r14, %rax
    subq %r15, %rax
    movq %rax, -336(%rbp)
    leaq -264(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq -336(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -280(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq -336(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -304(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
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
.L10_23:
    leaq .Ltext_54(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_8split_by
    .type lb_strings_8split_by, @function
lb_strings_8split_by:
    pushq %rbp
    movq %rsp, %rbp
    subq $896, %rsp
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
    movq %r9, -144(%rbp)
    leaq -200(%rbp), %rax
    movq %rax, -856(%rbp)
    leaq -112(%rbp), %rbx
    leaq -128(%rbp), %r12
    leaq -144(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %r10
    leaq -696(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    leaq -712(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -728(%rbp), %r10
    movq %r13, (%r10)
    leaq -712(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L11_27
.L11_26:
    leaq -680(%rbp), %rbx
    movq $56, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_17invalid_separator(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_48(%rip), %r13
    leaq -744(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $46, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $80, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -288(%rbp), %r11
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
    movq 80(%r10), %rax
    movq %rax, 80(%r11)
    jmp .L11_31
.L11_29:
    jmp .L11_28
.L11_27:
.L11_28:
    leaq -800(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    leaq -696(%rbp), %r15
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $48, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    leaq -680(%rbp), %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq $80, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r15, %r10
    leaq -288(%rbp), %r11
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
    movq 80(%r10), %rax
    movq %rax, 80(%r11)
    jmp .L11_31
.L11_30:
    leaq .Ltext_49(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_31:
    leaq -288(%rbp), %r12
    movq $80, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_2
    jmp .L11_1
.L11_2:
    movq $56, %rcx
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
.L11_3:
.L11_1:
    movq %r12, %r10
    movq -856(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq -344(%rbp), %rax
    movq %rax, -808(%rbp)
    movq -856(%rbp), %r10
    movq -808(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq -368(%rbp), %r13
    movq $16, %rcx
    addq %rcx, %r13
    leaq -376(%rbp), %rax
    movq %rax, -816(%rbp)
    leaq -392(%rbp), %r15
    movq $8, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -824(%rbp)
    movq $0, %rax
    movq %rax, -864(%rbp)
.L11_4:
    movq -808(%rbp), %rsi
    leaq -368(%rbp), %rdi
    call lb_strings_SplitIterator_next@PLT
    movq %r13, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L11_6
.L11_5:
    movq -864(%rbp), %rdi
    movq $1, %rsi
    movl $64, %edx
    movq -816(%rbp), %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r12d
    movq -816(%rbp), %r10
    movq (%r10), %rbx
    movq %r15, %r10
    movq %rbx, (%r10)
    movq -824(%rbp), %r10
    movb %r12b, (%r10)
    movq -824(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L11_7
    jmp .L11_8
.L11_7:
    jmp .L11_9
.L11_8:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_36(%rip), %r13
    leaq -408(%rbp), %r14
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
.L11_10:
.L11_9:
    movq %rbx, %rax
    movq %rax, -864(%rbp)
    jmp .L11_4
.L11_6:
    leaq -424(%rbp), %rax
    movq %rax, -872(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    leaq -472(%rbp), %rax
    movq %rax, -880(%rbp)
    movq -864(%rbp), %rax
    movabsq $288230376151711744, %rcx
    cmpq %rcx, %rax
    jbe .L11_12
.L11_11:
    movq -880(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_37(%rip), %r13
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
    movq -880(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L11_13
.L11_12:
    movq -864(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    imulq %rcx, %r12
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L11_14
    jmp .L11_15
.L11_15:
    leaq .Ltext_55(%rip), %rdi
    leaq .Ltext_38(%rip), %rsi
    call lb_core_7trap_at@PLT
.L11_14:
    movq %r14, %r10
    movq (%r10), %r13
    movq %rbx, %rsi
    movq %r12, %rdx
    movq $8, %rcx
    leaq -496(%rbp), %rdi
    movq %r13, %r11
    call *%r11
    leaq -496(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, -832(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl -832(%rbp), %eax
    movl %r13d, %ecx
    movl %eax, %r13d
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L11_16
    jmp .L11_17
.L11_16:
    movq -880(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_40(%rip), %r12
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
    movq -880(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L11_13
.L11_17:
    movq %r15, %r10
    movq (%r10), %rbx
    movq -880(%rbp), %r10
    movq %rbx, (%r10)
    movq -880(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -864(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -880(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L11_13:
    movq -880(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L11_19
    jmp .L11_18
.L11_19:
    movq -880(%rbp), %rax
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
.L11_20:
.L11_18:
    movq -880(%rbp), %r10
    movq -872(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -552(%rbp), %rax
    movq %rax, -840(%rbp)
    movq -856(%rbp), %r10
    movq -840(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq -576(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq -592(%rbp), %r13
    movq -872(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -848(%rbp)
    movq $0, %rax
    movq %rax, -888(%rbp)
.L11_21:
    movq -840(%rbp), %rsi
    leaq -576(%rbp), %rdi
    call lb_strings_SplitIterator_next@PLT
    movq %r12, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L11_24
    jmp .L11_23
.L11_24:
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L11_22:
    movq -872(%rbp), %r10
    movq (%r10), %r14
    movq -848(%rbp), %r10
    movq (%r10), %rbx
    movq -888(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_56(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -888(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -888(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, -888(%rbp)
    jmp .L11_21
.L11_23:
    leaq -96(%rbp), %rbx
    movq -872(%rbp), %r10
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
.L11_25:
    leaq .Ltext_58(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_10split_once
    .type lb_strings_10split_once, @function
lb_strings_10split_once:
    pushq %rbp
    movq %rsp, %rbp
    subq $416, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -104(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -120(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq -104(%rbp), %rbx
    leaq -120(%rbp), %rax
    movq %rax, -384(%rbp)
    movq %rbx, %r10
    leaq -344(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -384(%rbp), %r10
    leaq -360(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -344(%rbp), %r13
    leaq -360(%rbp), %r14
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r14, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movl $0, %r8d
    call lb_strings_12search_bytes@PLT
    leaq -376(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -376(%rbp), %r13
    leaq -328(%rbp), %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %r10
    leaq -136(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L12_11
.L12_10:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_11:
    leaq -136(%rbp), %r14
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L12_1
    jmp .L12_2
.L12_1:
    movq %r14, %r10
    movq (%r10), %r13
    jmp .L12_3
.L12_2:
    leaq -176(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq -88(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
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
.L12_4:
.L12_3:
    leaq -208(%rbp), %rax
    movq %rax, -408(%rbp)
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -392(%rbp)
    movq -392(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -400(%rbp)
    movq -400(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq $0, %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r15, %r13
    jb 1f
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r13, %rax
    jbe .L12_5
.L12_6:
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_5:
    leaq -224(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    leaq -240(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq %rbx, %r10
    movq -408(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -384(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r13, %rax
    movq %rbx, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    cmpq %r15, %r14
    jb 1f
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -400(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -400(%rbp), %rcx
    cmpq %rcx, %r14
    jbe .L12_7
.L12_8:
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L12_7:
    movq %r12, %rbx
    addq %r14, %rbx
    movq -400(%rbp), %rax
    movq %rax, %r13
    subq %r14, %r13
    leaq -256(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    leaq -272(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq -408(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %r15, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -312(%rbp), %rbx
    movq -408(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -88(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq %r13, %rsi
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
.L12_9:
    leaq .Ltext_59(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_10split_last
    .type lb_strings_10split_last, @function
lb_strings_10split_last:
    pushq %rbp
    movq %rsp, %rbp
    subq $480, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -104(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -120(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq -104(%rbp), %rax
    movq %rax, -416(%rbp)
    leaq -120(%rbp), %rax
    movq %rax, -424(%rbp)
    movq -416(%rbp), %r10
    leaq -344(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -424(%rbp), %r10
    leaq -360(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -344(%rbp), %r13
    leaq -360(%rbp), %r14
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r14, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movl $1, %r8d
    call lb_strings_12search_bytes@PLT
    leaq -376(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -376(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L13_10
    jmp .L13_11
.L13_10:
    movq %r12, %r10
    movq (%r10), %r15
    jmp .L13_12
.L13_11:
    leaq -392(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -328(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    leaq -136(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rax, -472(%rbp)
    jmp .L13_15
.L13_13:
.L13_12:
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -440(%rbp)
    movq -440(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -448(%rbp)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq -448(%rbp), %rax
    movq %rbx, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %rbx, %rax
    movq %r15, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -456(%rbp)
    leaq -408(%rbp), %rbx
    movq -456(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -328(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    leaq -136(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -456(%rbp), %rax
    movq %rax, -472(%rbp)
    jmp .L13_15
.L13_14:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_15:
    leaq -136(%rbp), %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_1
    jmp .L13_2
.L13_1:
    jmp .L13_3
.L13_2:
    leaq -176(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    leaq -88(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
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
.L13_4:
.L13_3:
    leaq -208(%rbp), %rax
    movq %rax, -464(%rbp)
    movq -416(%rbp), %r10
    movq (%r10), %r15
    movq -416(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -432(%rbp)
    movq -432(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -472(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -472(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L13_5
.L13_6:
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_5:
    leaq -224(%rbp), %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq -472(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq -240(%rbp), %r13
    movq %r13, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq -472(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq -464(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -424(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq -472(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -432(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -432(%rbp), %rcx
    cmpq %rcx, %r13
    jbe .L13_7
.L13_8:
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_7:
    movq %r15, %rbx
    addq %r13, %rbx
    movq -432(%rbp), %rax
    movq %rax, %r12
    subq %r13, %r12
    leaq -256(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    leaq -272(%rbp), %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq -464(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -312(%rbp), %rbx
    movq -464(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq $32, %rcx
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
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
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
.L13_9:
    leaq .Ltext_60(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_8is_space
    .type lb_strings_8is_space, @function
lb_strings_8is_space:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movl %edi, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $32, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L14_8
    jmp .L14_1
.L14_8:
    movl %r12d, %r13d
    jmp .L14_2
.L14_1:
    movl $10, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L14_2:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L14_9
    jmp .L14_3
.L14_9:
    movl %r12d, %r13d
    jmp .L14_4
.L14_3:
    movl $9, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L14_4:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L14_10
    jmp .L14_5
.L14_10:
    movl %r12d, %ebx
    jmp .L14_6
.L14_5:
    movl $13, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L14_6:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L14_7:
    leaq .Ltext_61(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_trim
    .type lb_strings_trim, @function
lb_strings_trim:
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
    leaq -72(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -88(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rax, -128(%rbp)
.L15_1:
    movq -128(%rbp), %rax
    cmpq %r12, %rax
    setb %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L15_4
    jmp .L15_14
.L15_14:
    movl %r14d, %r15d
    jmp .L15_5
.L15_4:
    movq %r13, %r10
    movq (%r10), %r14
    movq -128(%rbp), %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl %r14d, %edi
    call lb_strings_8is_space@PLT
    movl %eax, %r15d
.L15_5:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L15_2
    jmp .L15_3
.L15_2:
    movq -128(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r14, %rax
    movq %rax, -128(%rbp)
    jmp .L15_1
.L15_3:
    movq %r12, %r14
.L15_6:
    movq -128(%rbp), %rcx
    cmpq %rcx, %r14
    seta %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L15_9
    jmp .L15_15
.L15_15:
    movl %r15d, %ebx
    jmp .L15_10
.L15_9:
    movq %r14, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_64(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %r13, %r10
    movq (%r10), %r15
    cmpq %r12, %rbx
    jb 1f
    leaq .Ltext_64(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    addq %r15, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl %ebx, %edi
    call lb_strings_8is_space@PLT
    movl %eax, %ebx
.L15_10:
    movzbl %bl, %r15d
    testl %r15d, %r15d
    jne .L15_7
    jmp .L15_8
.L15_7:
    movq %r14, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_65(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %rbx, %r14
    jmp .L15_6
.L15_8:
    movq %r13, %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq -128(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_66(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r14
    jb 1f
    leaq .Ltext_66(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -128(%rbp), %rax
    cmpq %r14, %rax
    jbe .L15_11
.L15_12:
    leaq .Ltext_66(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L15_11:
    movq -128(%rbp), %rax
    movq %rax, %rbx
    addq %r15, %rbx
    movq -128(%rbp), %rcx
    movq %r14, %r12
    subq %rcx, %r12
    leaq -104(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq -120(%rbp), %r13
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
.L15_13:
    leaq .Ltext_66(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_join
    .type lb_strings_join, @function
lb_strings_join:
    pushq %rbp
    movq %rsp, %rbp
    subq $512, %rsp
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
    leaq -112(%rbp), %rax
    movq %rax, -344(%rbp)
    movq -344(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -352(%rbp)
    leaq -136(%rbp), %rax
    movq %rax, -368(%rbp)
    leaq -152(%rbp), %rax
    movq %rax, -504(%rbp)
    movq -504(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -376(%rbp)
    leaq -128(%rbp), %rax
    movq %rax, -384(%rbp)
    movq -384(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -392(%rbp)
    leaq -176(%rbp), %rax
    movq %rax, -400(%rbp)
    leaq -192(%rbp), %rax
    movq %rax, -512(%rbp)
    movq -512(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -408(%rbp)
    movq $0, %rax
    movq %rax, %r15
    movq $0, %rax
    movq %rax, %r14
.L16_1:
    movq -352(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -360(%rbp)
    movq -360(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L16_3
.L16_2:
    movq -344(%rbp), %r10
    movq (%r10), %r13
    movq $16, %rcx
    movq %r14, %r12
    imulq %rcx, %r12
    movq %r12, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r15, %rdi
    movq %r12, %rsi
    movl $64, %edx
    movq -368(%rbp), %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r12d
    movq -368(%rbp), %r10
    movq (%r10), %r13
    movq -504(%rbp), %r10
    movq %r13, (%r10)
    movq -376(%rbp), %r10
    movb %r12b, (%r10)
    movq -376(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L16_4
    jmp .L16_5
.L16_4:
    jmp .L16_6
.L16_5:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_68(%rip), %r13
    leaq -168(%rbp), %r14
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
.L16_7:
.L16_6:
    movq $1, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq -360(%rbp), %rcx
    cmpq %rcx, %r12
    jae .L16_9
.L16_8:
    movq -392(%rbp), %r10
    movq (%r10), %r14
    movq %r13, %rdi
    movq %r14, %rsi
    movl $64, %edx
    movq -400(%rbp), %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r14d
    movq -400(%rbp), %r10
    movq (%r10), %r15
    movq -512(%rbp), %r10
    movq %r15, (%r10)
    movq -408(%rbp), %r10
    movb %r14b, (%r10)
    movq -408(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L16_11
    jmp .L16_12
.L16_11:
    jmp .L16_13
.L16_12:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_68(%rip), %r13
    leaq -208(%rbp), %r14
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
.L16_14:
.L16_13:
    movq %r15, %r13
    jmp .L16_10
.L16_9:
.L16_10:
    movq %r13, %r15
    movq %r12, %r14
    jmp .L16_1
.L16_3:
    leaq -224(%rbp), %rax
    movq %rax, -480(%rbp)
    movq %r15, %rsi
    leaq -272(%rbp), %rdi
    call lb_strings_17terminated_buffer@PLT
    leaq -272(%rbp), %r14
    movq $40, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L16_16
    jmp .L16_15
.L16_16:
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
.L16_17:
.L16_15:
    movq %r14, %r10
    movq -480(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -480(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -416(%rbp)
    leaq -288(%rbp), %rax
    movq %rax, -432(%rbp)
    movq -432(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -440(%rbp)
    leaq -304(%rbp), %rax
    movq %rax, -448(%rbp)
    movq -448(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -456(%rbp)
    leaq -128(%rbp), %rax
    movq %rax, -464(%rbp)
    movq -464(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -472(%rbp)
    movq $0, %rax
    movq %rax, -488(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L16_18:
    movq -488(%rbp), %rax
    movq -360(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L16_20
.L16_19:
    movq -480(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -496(%rbp)
    movq -416(%rbp), %r10
    movq (%r10), %rbx
    movq $1, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -424(%rbp)
    movq -424(%rbp), %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_71(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -424(%rbp), %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_71(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r15
    jbe .L16_21
.L16_22:
    leaq .Ltext_71(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L16_21:
    movq -496(%rbp), %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %rbx, %r12
    subq %r15, %r12
    movq -432(%rbp), %r10
    movq %r14, (%r10)
    movq -440(%rbp), %r10
    movq %r12, (%r10)
    movq -344(%rbp), %r10
    movq (%r10), %r12
    movq -488(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    addq %r14, %r12
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r13
    movq -432(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r12, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r13, %r8
    call lb_memory_copy_0g1_u8@PLT
    movq %r14, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq %r15, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_72(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -488(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq -360(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L16_24
.L16_23:
    movq -424(%rbp), %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_74(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r12
    jbe .L16_26
.L16_27:
    leaq .Ltext_74(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L16_26:
    movq -496(%rbp), %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r15
    subq %r12, %r15
    movq -448(%rbp), %r10
    movq %r14, (%r10)
    movq -456(%rbp), %r10
    movq %r15, (%r10)
    movq -472(%rbp), %r10
    movq (%r10), %r14
    movq -448(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -464(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r14, %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -472(%rbp), %r10
    movq (%r10), %r14
    movq %r12, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_75(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    jmp .L16_25
.L16_24:
    movq %r12, %r14
.L16_25:
    movq %r13, %rax
    movq %rax, -488(%rbp)
    movq %r14, %r15
    jmp .L16_18
.L16_20:
    movq -480(%rbp), %r10
    movq (%r10), %rbx
    movq -480(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_77(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rbx, %r13
    addq %r15, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $1, %rcx
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_78(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r15
    jb 1f
    leaq .Ltext_78(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r15, %rax
    jbe .L16_28
.L16_29:
    leaq .Ltext_78(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L16_28:
    leaq -320(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    leaq -336(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r15, (%r10)
    leaq -96(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
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
.L16_30:
    leaq .Ltext_78(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_copy
    .type lb_strings_copy, @function
lb_strings_copy:
    pushq %rbp
    movq %rsp, %rbp
    subq $256, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -112(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -128(%rbp), %r14
    leaq -112(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq %r13, %rsi
    leaq -176(%rbp), %rdi
    call lb_strings_17terminated_buffer@PLT
    leaq -176(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L17_2
    jmp .L17_1
.L17_2:
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
.L17_3:
.L17_1:
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -216(%rbp)
    movq %r14, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -216(%rbp), %r8
    call lb_memory_copy_0g1_u8@PLT
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -224(%rbp)
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -232(%rbp)
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %r10
    movq (%r10), %r13
    movq -224(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_79(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -224(%rbp), %rax
    movq -232(%rbp), %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -248(%rbp)
    movq -240(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -256(%rbp)
    movq $1, %rcx
    addq %rcx, %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_80(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -256(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_80(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -256(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L17_4
.L17_5:
    leaq .Ltext_80(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L17_4:
    leaq -192(%rbp), %rbx
    movq -248(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq -256(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -208(%rbp), %rbx
    movq -248(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -256(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
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
.L17_6:
    leaq .Ltext_80(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_8to_upper
    .type lb_strings_8to_upper, @function
lb_strings_8to_upper:
    pushq %rbp
    movq %rsp, %rbp
    subq $272, %rsp
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
    movq %rax, -256(%rbp)
    leaq -112(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -216(%rbp)
    movq -216(%rbp), %rsi
    leaq -176(%rbp), %rdi
    call lb_strings_17terminated_buffer@PLT
    leaq -176(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L18_2
    jmp .L18_1
.L18_2:
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
.L18_3:
.L18_1:
    movq %r15, %r10
    movq -256(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -224(%rbp)
    movq -256(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -232(%rbp)
    movq -256(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -248(%rbp)
    movq $0, %rax
    movq %rax, -264(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L18_4:
    movq -216(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L18_7
.L18_5:
    movq -224(%rbp), %rax
    movq %rax, %rbx
    addq %r13, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq -264(%rbp), %rax
    movq -248(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_81(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -232(%rbp), %rax
    movq -264(%rbp), %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movzbl %bl, %ebx
    movl $97, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L18_11
    jmp .L18_18
.L18_18:
    movl %r15d, %r14d
    jmp .L18_12
.L18_11:
    movl $122, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r14d
.L18_12:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L18_8
    jmp .L18_9
.L18_8:
    movl $32, %ecx
    movl %ebx, %r15d
    subl %ecx, %r15d
    movzbl %r15b, %r14d
    cmpl %r15d, %r14d
    je .L18_13
.L18_14:
    leaq .Ltext_81(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
.L18_13:
    movl %r15d, %ebx
    jmp .L18_10
.L18_9:
.L18_10:
    movzbl %bl, %r14d
    movq %r12, %r10
    movb %r14b, (%r10)
    movq -264(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
.L18_6:
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %r14, %rax
    movq %rax, -264(%rbp)
    movq %rbx, %r13
    jmp .L18_4
.L18_7:
    movq -256(%rbp), %r10
    movq (%r10), %rbx
    movq -256(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq -264(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_84(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -264(%rbp), %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $1, %rcx
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_85(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -264(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_85(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -264(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L18_15
.L18_16:
    leaq .Ltext_85(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L18_15:
    leaq -192(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq -264(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -208(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq -264(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq -96(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
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
.L18_17:
    leaq .Ltext_85(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_8to_lower
    .type lb_strings_8to_lower, @function
lb_strings_8to_lower:
    pushq %rbp
    movq %rsp, %rbp
    subq $272, %rsp
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
    movq %rax, -256(%rbp)
    leaq -112(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -216(%rbp)
    movq -216(%rbp), %rsi
    leaq -176(%rbp), %rdi
    call lb_strings_17terminated_buffer@PLT
    leaq -176(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L19_2
    jmp .L19_1
.L19_2:
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
.L19_3:
.L19_1:
    movq %r15, %r10
    movq -256(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -224(%rbp)
    movq -256(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -232(%rbp)
    movq -256(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -248(%rbp)
    movq $0, %rax
    movq %rax, -264(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L19_4:
    movq -216(%rbp), %rcx
    cmpq %rcx, %r13
    jae .L19_7
.L19_5:
    movq -224(%rbp), %rax
    movq %rax, %rbx
    addq %r13, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq -264(%rbp), %rax
    movq -248(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_86(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -232(%rbp), %rax
    movq -264(%rbp), %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movzbl %bl, %ebx
    movl $65, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L19_11
    jmp .L19_18
.L19_18:
    movl %r15d, %r14d
    jmp .L19_12
.L19_11:
    movl $90, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r14d
.L19_12:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L19_8
    jmp .L19_9
.L19_8:
    movl $32, %ecx
    movl %ebx, %r15d
    addl %ecx, %r15d
    movzbl %r15b, %r14d
    cmpl %r15d, %r14d
    je .L19_13
.L19_14:
    leaq .Ltext_86(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
.L19_13:
    movl %r15d, %ebx
    jmp .L19_10
.L19_9:
.L19_10:
    movzbl %bl, %r14d
    movq %r12, %r10
    movb %r14b, (%r10)
    movq -264(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
.L19_6:
    movq $1, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %r14, %rax
    movq %rax, -264(%rbp)
    movq %rbx, %r13
    jmp .L19_4
.L19_7:
    movq -256(%rbp), %r10
    movq (%r10), %rbx
    movq -256(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq -264(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_88(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -264(%rbp), %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $1, %rcx
    addq %rcx, %r12
    movq $0, %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_89(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -264(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_89(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -264(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L19_15
.L19_16:
    leaq .Ltext_89(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L19_15:
    leaq -192(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq -264(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq -208(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq -264(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq -96(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
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
.L19_17:
    leaq .Ltext_89(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_release
    .type lb_strings_release, @function
lb_strings_release:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    leaq -48(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_90(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    leaq -64(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    leaq -80(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L20_2
    jmp .L20_1
.L20_2:
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L20_1:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_strings_17terminated_buffer
    .type lb_strings_17terminated_buffer, @function
lb_strings_17terminated_buffer:
    pushq %rbp
    movq %rsp, %rbp
    subq $240, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -112(%rbp)
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -120(%rbp), %r12
    movq %rbx, %rdi
    movq $1, %rsi
    movl $64, %edx
    movq %r12, %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %ebx
    leaq -136(%rbp), %r13
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movb %bl, (%r10)
    movq %r13, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L21_1
    jmp .L21_2
.L21_1:
    jmp .L21_3
.L21_2:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_91(%rip), %r13
    leaq -152(%rbp), %r14
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
.L21_4:
.L21_3:
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    leaq -200(%rbp), %rax
    movq %rax, -240(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r12
    jbe .L21_6
.L21_5:
    movq -240(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_37(%rip), %r12
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
    movq -240(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L21_7
.L21_6:
    movq %r13, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L21_8
    jmp .L21_9
.L21_9:
    leaq .Ltext_92(%rip), %rdi
    leaq .Ltext_38(%rip), %rsi
    call lb_core_7trap_at@PLT
.L21_8:
    movq %r15, %r10
    movq (%r10), %r13
    movq %rbx, %rsi
    movq %r12, %rdx
    movq $1, %rcx
    leaq -224(%rbp), %rdi
    movq %r13, %r11
    call *%r11
    leaq -224(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, -232(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl -232(%rbp), %eax
    movl %r13d, %ecx
    movl %eax, %r13d
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L21_10
    jmp .L21_11
.L21_10:
    movq -240(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_40(%rip), %r12
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
    movq -240(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L21_7
.L21_11:
    movq %r14, %r10
    movq (%r10), %rbx
    movq -240(%rbp), %r10
    movq %rbx, (%r10)
    movq -240(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq -240(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L21_7:
    movq -240(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L21_13
    jmp .L21_12
.L21_13:
    movq -240(%rbp), %rax
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
.L21_14:
.L21_12:
    leaq -96(%rbp), %rbx
    movq -240(%rbp), %r10
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
.L21_15:
    leaq .Ltext_92(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_replace
    .type lb_strings_replace, @function
lb_strings_replace:
    pushq %rbp
    movq %rsp, %rbp
    subq $800, %rsp
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
    movq %r9, -160(%rbp)
    leaq 16(%rbp), %r10
    leaq -144(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rbp), %r10
    leaq -176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -128(%rbp), %rax
    movq %rax, -480(%rbp)
    movq -480(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -488(%rbp)
    movq -488(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L22_2
.L22_1:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_17invalid_separator(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_93(%rip), %r13
    leaq -192(%rbp), %r14
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
.L22_4:
    jmp .L22_3
.L22_2:
.L22_3:
    leaq -112(%rbp), %rax
    movq %rax, -496(%rbp)
    movq -496(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -504(%rbp)
    movq -504(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -512(%rbp)
    leaq -160(%rbp), %rax
    movq %rax, -520(%rbp)
    leaq -208(%rbp), %rax
    movq %rax, -712(%rbp)
    movq -712(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -528(%rbp)
    leaq -144(%rbp), %rax
    movq %rax, -536(%rbp)
    movq -536(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -544(%rbp)
    leaq -216(%rbp), %rax
    movq %rax, -552(%rbp)
    leaq -232(%rbp), %rax
    movq %rax, -720(%rbp)
    movq -720(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -560(%rbp)
    movq -512(%rbp), %rax
    movq %rax, -688(%rbp)
    movq $0, %rax
    movq %rax, -696(%rbp)
    movq $0, %rax
    movq %rax, -704(%rbp)
.L22_5:
    movq -520(%rbp), %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L22_51
    jmp .L22_8
.L22_51:
    movl %r12d, %ebx
    jmp .L22_9
.L22_8:
    movq -696(%rbp), %rax
    cmpq %rbx, %rax
    setb %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L22_9:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L22_6
    jmp .L22_7
.L22_6:
    movq -496(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -480(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -704(%rbp), %r8
    call lb_strings_9find_from@PLT
    leaq -208(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    movq -528(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L22_10
    jmp .L22_11
.L22_10:
    movq -712(%rbp), %r10
    movq (%r10), %rbx
    jmp .L22_12
.L22_11:
    jmp .L22_7
.L22_13:
.L22_12:
    movq -544(%rbp), %r10
    movq (%r10), %r12
    movq -488(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r12
    jb .L22_15
.L22_14:
    movq %r12, %r13
    subq %r14, %r13
    movq -688(%rbp), %rdi
    movq %r13, %rsi
    movl $64, %edx
    movq -552(%rbp), %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r13d
    movq -552(%rbp), %r10
    movq (%r10), %r15
    movq -720(%rbp), %r10
    movq %r15, (%r10)
    movq -560(%rbp), %r10
    movb %r13b, (%r10)
    movq -560(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L22_17
    jmp .L22_18
.L22_17:
    jmp .L22_19
.L22_18:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_95(%rip), %r13
    leaq -248(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $35, %rax
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
.L22_20:
.L22_19:
    movq %r15, %r12
    jmp .L22_16
.L22_15:
    movq %r14, %r13
    subq %r12, %r13
    movq -688(%rbp), %rax
    movq %r13, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_96(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r13, %r12
.L22_16:
    movq -488(%rbp), %r10
    movq (%r10), %r13
    movq %rbx, %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_97(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -696(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_98(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r12, %rax
    movq %rax, -688(%rbp)
    movq %r14, %rax
    movq %rax, -696(%rbp)
    movq %r13, %rax
    movq %rax, -704(%rbp)
    jmp .L22_5
.L22_7:
    leaq -176(%rbp), %r12
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L22_24
    jmp .L22_22
.L22_24:
    movq %r12, %r10
    movq (%r10), %rbx
.L22_21:
    movq -688(%rbp), %rax
    cmpq %rbx, %rax
    jbe .L22_26
.L22_25:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_16output_too_large(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_99(%rip), %r13
    leaq -264(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $45, %rax
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
.L22_28:
    jmp .L22_27
.L22_26:
.L22_27:
    jmp .L22_23
.L22_22:
.L22_23:
    leaq -280(%rbp), %rax
    movq %rax, -728(%rbp)
    movq -688(%rbp), %rsi
    leaq -328(%rbp), %rdi
    call lb_strings_17terminated_buffer@PLT
    leaq -328(%rbp), %r13
    movq $40, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L22_30
    jmp .L22_29
.L22_30:
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
.L22_31:
.L22_29:
    movq %r13, %r10
    movq -728(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -344(%rbp), %rax
    movq %rax, -776(%rbp)
    movq -776(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -568(%rbp)
    movq -728(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -584(%rbp)
    leaq -376(%rbp), %rax
    movq %rax, -600(%rbp)
    movq -600(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -608(%rbp)
    leaq -392(%rbp), %rax
    movq %rax, -616(%rbp)
    movq -616(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -624(%rbp)
    leaq -408(%rbp), %rax
    movq %rax, -632(%rbp)
    movq -632(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -640(%rbp)
    leaq -144(%rbp), %rax
    movq %rax, -648(%rbp)
    movq -648(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -656(%rbp)
    movq $0, %rax
    movq %rax, -736(%rbp)
    movq $0, %rax
    movq %rax, -744(%rbp)
    movq $0, %rax
    movq %rax, -752(%rbp)
.L22_32:
    movq -752(%rbp), %rax
    movq -696(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L22_34
.L22_33:
    movq -496(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -480(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -736(%rbp), %r8
    call lb_strings_9find_from@PLT
    leaq -344(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    movq -568(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L22_35
    jmp .L22_36
.L22_35:
    movq -776(%rbp), %r10
    movq (%r10), %r13
    jmp .L22_37
.L22_36:
    leaq .Ltext_100(%rip), %rbx
    leaq -360(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $39, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_101(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_101(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L22_37:
    movq %r13, %rax
    movq -736(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_102(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -576(%rbp)
    movq -728(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -784(%rbp)
    movq -584(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -792(%rbp)
    movq -792(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    movq %rax, -592(%rbp)
    movq -744(%rbp), %rax
    movq -592(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_103(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -792(%rbp), %rax
    movq -592(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_103(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -744(%rbp), %rax
    movq -792(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L22_38
.L22_39:
    leaq .Ltext_103(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L22_38:
    movq -744(%rbp), %rax
    movq -784(%rbp), %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq -792(%rbp), %rax
    movq -744(%rbp), %rcx
    movq %rax, %r12
    subq %rcx, %r12
    movq -600(%rbp), %r10
    movq %r14, (%r10)
    movq -608(%rbp), %r10
    movq %r12, (%r10)
    movq -496(%rbp), %r10
    movq (%r10), %r14
    movq -504(%rbp), %r10
    movq (%r10), %r12
    movq $1, %rcx
    addq %rcx, %r12
    movq -736(%rbp), %rax
    cmpq %r12, %rax
    jb 1f
    leaq .Ltext_103(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r13
    jb 1f
    leaq .Ltext_103(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -736(%rbp), %rax
    cmpq %r13, %rax
    jbe .L22_40
.L22_41:
    leaq .Ltext_103(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L22_40:
    movq -736(%rbp), %rax
    movq %rax, %r12
    addq %r14, %r12
    movq -736(%rbp), %rcx
    movq %r13, %rbx
    subq %rcx, %rbx
    movq -616(%rbp), %r10
    movq %r12, (%r10)
    movq -624(%rbp), %r10
    movq %rbx, (%r10)
    movq -600(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -616(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -576(%rbp), %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -576(%rbp), %rax
    movq -744(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_104(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -592(%rbp), %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_105(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -792(%rbp), %rcx
    cmpq %rcx, %rbx
    jbe .L22_42
.L22_43:
    leaq .Ltext_105(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L22_42:
    movq -784(%rbp), %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -792(%rbp), %rax
    movq %rax, %r14
    subq %rbx, %r14
    movq -632(%rbp), %r10
    movq %r12, (%r10)
    movq -640(%rbp), %r10
    movq %r14, (%r10)
    movq -656(%rbp), %r10
    movq (%r10), %r12
    movq -632(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -648(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r12, %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -656(%rbp), %r10
    movq (%r10), %r12
    movq %rbx, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_106(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -488(%rbp), %r10
    movq (%r10), %r14
    movq %r13, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_107(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq -752(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r15, %rax
    movq %rax, -736(%rbp)
    movq %r12, %rax
    movq %rax, -744(%rbp)
    movq %r14, %rax
    movq %rax, -752(%rbp)
    jmp .L22_32
.L22_34:
    movq -504(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -664(%rbp)
    movq -664(%rbp), %rax
    movq -736(%rbp), %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_109(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -672(%rbp)
    movq -728(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -760(%rbp)
    movq -728(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -768(%rbp)
    movq -768(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    movq %rax, -680(%rbp)
    movq -744(%rbp), %rax
    movq -680(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_110(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -768(%rbp), %rax
    movq -680(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_110(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -744(%rbp), %rax
    movq -768(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L22_44
.L22_45:
    leaq .Ltext_110(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L22_44:
    movq -744(%rbp), %rax
    movq -760(%rbp), %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq -768(%rbp), %rax
    movq -744(%rbp), %rcx
    movq %rax, %r13
    subq %rcx, %r13
    leaq -424(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq -496(%rbp), %r10
    movq (%r10), %r14
    movq -664(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq -736(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_110(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -664(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_110(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -736(%rbp), %rax
    movq -664(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L22_46
.L22_47:
    leaq .Ltext_110(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L22_46:
    movq -736(%rbp), %rax
    movq %rax, %r13
    addq %r14, %r13
    movq -664(%rbp), %rax
    movq -736(%rbp), %rcx
    movq %rax, %r12
    subq %rcx, %r12
    leaq -440(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq %r15, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -672(%rbp), %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -672(%rbp), %rax
    movq -744(%rbp), %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_111(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -768(%rbp), %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_112(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -760(%rbp), %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $0, %rax
    movq -680(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_113(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %rbx, %rax
    jbe .L22_48
.L22_49:
    leaq .Ltext_113(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L22_48:
    leaq -456(%rbp), %r12
    movq -760(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq -472(%rbp), %r12
    movq -760(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    leaq -96(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
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
.L22_50:
    leaq .Ltext_113(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_9parse_i64
    .type lb_strings_9parse_i64, @function
lb_strings_9parse_i64:
    pushq %rbp
    movq %rsp, %rbp
    subq $464, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -72(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    movl %edx, -88(%rbp)
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %eax
    movl %eax, -304(%rbp)
    movl -304(%rbp), %eax
    movl $2, %ecx
    cmpl %ecx, %eax
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L23_41
    jmp .L23_4
.L23_41:
    movl %r12d, %r13d
    jmp .L23_5
.L23_4:
    movl -304(%rbp), %eax
    movl $36, %ecx
    cmpl %ecx, %eax
    seta %al
    movzbl %al, %r13d
.L23_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L23_42
    jmp .L23_6
.L23_42:
    movl %r12d, %r13d
    jmp .L23_7
.L23_6:
    leaq -72(%rbp), %r12
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
.L23_7:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L23_1
    jmp .L23_2
.L23_1:
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
.L23_8:
    jmp .L23_3
.L23_2:
.L23_3:
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -312(%rbp)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -320(%rbp)
    movq $0, %rax
    movq -320(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_114(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -312(%rbp), %r10
    movzbl (%r10), %r14d
    movl $45, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L23_43
    jmp .L23_12
.L23_43:
    movl %r14d, %r15d
    jmp .L23_13
.L23_12:
    movq -312(%rbp), %r10
    movzbl (%r10), %r14d
    movl $43, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L23_13:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L23_9
    jmp .L23_10
.L23_9:
    movq -312(%rbp), %r10
    movzbl (%r10), %r14d
    movl $45, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movq $1, %rax
    movq %rax, %r15
    jmp .L23_11
.L23_10:
    movq $0, %rax
    movq %rax, %r15
    movl $0, %eax
    movl %eax, %r14d
.L23_11:
    movq -320(%rbp), %rax
    cmpq %r15, %rax
    jne .L23_15
.L23_14:
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
.L23_17:
    jmp .L23_16
.L23_15:
.L23_16:
    leaq -128(%rbp), %rax
    movq %rax, -448(%rbp)
    movq -448(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, -328(%rbp)
    movl -304(%rbp), %eax
    movl %eax, %eax
    movq %rax, -336(%rbp)
    leaq -168(%rbp), %rax
    movq %rax, -344(%rbp)
    leaq -184(%rbp), %rax
    movq %rax, -456(%rbp)
    movq -456(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -352(%rbp)
    movzbl %r14b, %eax
    movl %eax, -360(%rbp)
    leaq -248(%rbp), %rax
    movq %rax, -400(%rbp)
    leaq -264(%rbp), %rax
    movq %rax, -408(%rbp)
    movq -408(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -416(%rbp)
    leaq -216(%rbp), %rax
    movq %rax, -424(%rbp)
    leaq -224(%rbp), %rax
    movq %rax, -368(%rbp)
    leaq -240(%rbp), %rax
    movq %rax, -376(%rbp)
    movq -376(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -384(%rbp)
    leaq -216(%rbp), %rax
    movq %rax, -392(%rbp)
    leaq -216(%rbp), %r12
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -432(%rbp)
    movq %r15, %r12
    movq $0, %rax
    movq %rax, -440(%rbp)
.L23_18:
    movq -320(%rbp), %rcx
    cmpq %rcx, %r12
    jae .L23_20
.L23_19:
    movq -312(%rbp), %rax
    movq %rax, %r14
    addq %r12, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl %r14d, %edi
    call lb_strings_13integer_digit@PLT
    leaq -128(%rbp), %r10
    movq %rax, 0(%r10)
    movq -328(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L23_21
    jmp .L23_22
.L23_21:
    movq -448(%rbp), %r10
    movl (%r10), %r14d
    jmp .L23_23
.L23_22:
    leaq -144(%rbp), %rbx
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
.L23_24:
.L23_23:
    movl -304(%rbp), %ecx
    cmpl %ecx, %r14d
    jb .L23_26
.L23_25:
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
.L23_28:
    jmp .L23_27
.L23_26:
.L23_27:
    movq -440(%rbp), %rdi
    movq -336(%rbp), %rsi
    movl $64, %edx
    movq -344(%rbp), %rcx
    call lb_core_6qmul_s@PLT
    movl %eax, %r15d
    movq -344(%rbp), %r10
    movq (%r10), %rbx
    movq -456(%rbp), %r10
    movq %rbx, (%r10)
    movq -352(%rbp), %r10
    movb %r15b, (%r10)
    movq -352(%rbp), %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L23_29
    jmp .L23_30
.L23_29:
    jmp .L23_31
.L23_30:
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
.L23_32:
.L23_31:
    movl -360(%rbp), %eax
    testl %eax, %eax
    jne .L23_33
    jmp .L23_34
.L23_33:
    movl %r14d, %r15d
    movq %rbx, %rdi
    movq %r15, %rsi
    movl $64, %edx
    movq -368(%rbp), %rcx
    call lb_core_6qsub_s@PLT
    movl %eax, %r15d
    movq -368(%rbp), %r10
    movq (%r10), %r13
    movq -376(%rbp), %r10
    movq %r13, (%r10)
    movq -384(%rbp), %r10
    movb %r15b, (%r10)
    movq -376(%rbp), %r10
    movq -392(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L23_35
.L23_34:
    movl %r14d, %r13d
    movq %rbx, %rdi
    movq %r13, %rsi
    movl $64, %edx
    movq -400(%rbp), %rcx
    call lb_core_6qadd_s@PLT
    movl %eax, %r13d
    movq -400(%rbp), %r10
    movq (%r10), %r15
    movq -408(%rbp), %r10
    movq %r15, (%r10)
    movq -416(%rbp), %r10
    movb %r13b, (%r10)
    movq -408(%rbp), %r10
    movq -424(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r15, %r13
.L23_35:
    movq -432(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L23_36
    jmp .L23_37
.L23_36:
    jmp .L23_38
.L23_37:
    leaq -280(%rbp), %rbx
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
.L23_39:
.L23_38:
    movq $1, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r12
    movq %r13, %rax
    movq %rax, -440(%rbp)
    jmp .L23_18
.L23_20:
    leaq -296(%rbp), %rbx
    movq -440(%rbp), %rax
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
.L23_40:
    leaq .Ltext_118(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_9parse_u64
    .type lb_strings_9parse_u64, @function
lb_strings_9parse_u64:
    pushq %rbp
    movq %rsp, %rbp
    subq $368, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -72(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    movl %edx, -88(%rbp)
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %eax
    movl %eax, -264(%rbp)
    movl -264(%rbp), %eax
    movl $2, %ecx
    cmpl %ecx, %eax
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L24_36
    jmp .L24_4
.L24_36:
    movl %r12d, %r13d
    jmp .L24_5
.L24_4:
    movl -264(%rbp), %eax
    movl $36, %ecx
    cmpl %ecx, %eax
    seta %al
    movzbl %al, %r13d
.L24_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L24_37
    jmp .L24_6
.L24_37:
    movl %r12d, %r13d
    jmp .L24_7
.L24_6:
    leaq -72(%rbp), %r12
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r13d
.L24_7:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L24_1
    jmp .L24_2
.L24_1:
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
.L24_8:
    jmp .L24_3
.L24_2:
.L24_3:
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -272(%rbp)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -280(%rbp)
    movq $0, %rax
    movq -280(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_119(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -272(%rbp), %r10
    movzbl (%r10), %r14d
    movl $43, %ecx
    cmpl %ecx, %r14d
    jne .L24_10
.L24_9:
    movq $1, %rax
    movq %rax, %r14
    jmp .L24_11
.L24_10:
    movq $0, %rax
    movq %rax, %r14
.L24_11:
    movq -280(%rbp), %rax
    cmpq %r14, %rax
    jne .L24_13
.L24_12:
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
.L24_15:
    jmp .L24_14
.L24_13:
.L24_14:
    leaq -128(%rbp), %rax
    movq %rax, -352(%rbp)
    movq -352(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, -288(%rbp)
    movl -264(%rbp), %eax
    movl %eax, %eax
    movq %rax, -296(%rbp)
    leaq -168(%rbp), %rax
    movq %rax, -304(%rbp)
    leaq -184(%rbp), %rax
    movq %rax, -360(%rbp)
    movq -360(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -312(%rbp)
    leaq -208(%rbp), %rax
    movq %rax, -320(%rbp)
    leaq -224(%rbp), %r13
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -328(%rbp)
    movq %r14, %rax
    movq %rax, -336(%rbp)
    movq $0, %rax
    movq %rax, -344(%rbp)
.L24_16:
    movq -336(%rbp), %rax
    movq -280(%rbp), %rcx
    cmpq %rcx, %rax
    jae .L24_18
.L24_17:
    movq -272(%rbp), %rax
    movq -336(%rbp), %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl %r14d, %edi
    call lb_strings_13integer_digit@PLT
    leaq -128(%rbp), %r10
    movq %rax, 0(%r10)
    movq -288(%rbp), %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L24_19
    jmp .L24_20
.L24_19:
    movq -352(%rbp), %r10
    movl (%r10), %r14d
    jmp .L24_21
.L24_20:
    leaq -144(%rbp), %rbx
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
.L24_22:
.L24_21:
    movl -264(%rbp), %ecx
    cmpl %ecx, %r14d
    jb .L24_24
.L24_23:
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
.L24_26:
    jmp .L24_25
.L24_24:
.L24_25:
    movq -344(%rbp), %rdi
    movq -296(%rbp), %rsi
    movl $64, %edx
    movq -304(%rbp), %rcx
    call lb_core_6qmul_u@PLT
    movl %eax, %r12d
    movq -304(%rbp), %r10
    movq (%r10), %rbx
    movq -360(%rbp), %r10
    movq %rbx, (%r10)
    movq -312(%rbp), %r10
    movb %r12b, (%r10)
    movq -312(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L24_27
    jmp .L24_28
.L24_27:
    jmp .L24_29
.L24_28:
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
.L24_30:
.L24_29:
    movl %r14d, %r12d
    movq %rbx, %rdi
    movq %r12, %rsi
    movl $64, %edx
    movq -320(%rbp), %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r12d
    movq -320(%rbp), %r10
    movq (%r10), %r15
    movq %r13, %r10
    movq %r15, (%r10)
    movq -328(%rbp), %r10
    movb %r12b, (%r10)
    movq -328(%rbp), %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L24_31
    jmp .L24_32
.L24_31:
    jmp .L24_33
.L24_32:
    leaq -240(%rbp), %rbx
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
.L24_34:
.L24_33:
    movq -336(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %rax
    movq %rax, -336(%rbp)
    movq %r15, %rax
    movq %rax, -344(%rbp)
    jmp .L24_16
.L24_18:
    leaq -256(%rbp), %rbx
    movq -344(%rbp), %rax
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
.L24_35:
    leaq .Ltext_122(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_10format_i64
    .type lb_strings_10format_i64, @function
lb_strings_10format_i64:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -104(%rbp)
    leaq -120(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movl %r8d, -136(%rbp)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    setl %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L25_1
    jmp .L25_2
.L25_1:
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jno 1f
    leaq .Ltext_123(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq $0, %rax
    movq %r13, %rcx
    subq %rcx, %rax
    jno 1f
    leaq .Ltext_123(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_123(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    jmp .L25_3
.L25_2:
    movq %rbx, %r13
.L25_3:
    leaq -120(%rbp), %rbx
    leaq -136(%rbp), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %rsi
    movl %r12d, %edx
    movq %rbx, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movl %r14d, %r9d
    leaq -184(%rbp), %rdi
    call lb_strings_14format_integer@PLT
    leaq -184(%rbp), %r14
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L25_5
    jmp .L25_4
.L25_5:
    movq $16, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r12
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L25_6:
.L25_4:
    leaq -88(%rbp), %rbx
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L25_7:
    leaq .Ltext_124(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_10format_u64
    .type lb_strings_10format_u64, @function
lb_strings_10format_u64:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -104(%rbp)
    leaq -120(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movl %r8d, -136(%rbp)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -120(%rbp), %r12
    leaq -136(%rbp), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %rsi
    movl $0, %edx
    movq %r12, %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movl %r13d, %r9d
    leaq -184(%rbp), %rdi
    call lb_strings_14format_integer@PLT
    leaq -184(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L26_2
    jmp .L26_1
.L26_2:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r13
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L26_3:
.L26_1:
    leaq -88(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L26_4:
    leaq .Ltext_125(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_13integer_digit
    .type lb_strings_13integer_digit, @function
lb_strings_13integer_digit:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
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
    jne .L27_4
    jmp .L27_26
.L27_26:
    movl %r12d, %r13d
    jmp .L27_5
.L27_4:
    movl $57, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L27_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L27_1
    jmp .L27_2
.L27_1:
    movl $48, %ecx
    movl %ebx, %r13d
    subl %ecx, %r13d
    movzbl %r13b, %r12d
    cmpl %r13d, %r12d
    je .L27_6
.L27_7:
    leaq .Ltext_126(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
.L27_6:
    movl %r13d, %ebx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -32(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L27_8:
    jmp .L27_3
.L27_2:
.L27_3:
    movl $97, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L27_12
    jmp .L27_27
.L27_27:
    movl %r12d, %r13d
    jmp .L27_13
.L27_12:
    movl $122, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L27_13:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L27_9
    jmp .L27_10
.L27_9:
    movl $97, %ecx
    movl %ebx, %r13d
    subl %ecx, %r13d
    movzbl %r13b, %r12d
    cmpl %r13d, %r12d
    je .L27_14
.L27_15:
    leaq .Ltext_127(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
.L27_14:
    movl %r13d, %ebx
    movl $10, %ecx
    addl %ecx, %ebx
    leaq -64(%rbp), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -32(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L27_16:
    jmp .L27_11
.L27_10:
.L27_11:
    movl $65, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L27_20
    jmp .L27_28
.L27_28:
    movl %r12d, %r13d
    jmp .L27_21
.L27_20:
    movl $90, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L27_21:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L27_17
    jmp .L27_18
.L27_17:
    movl $65, %ecx
    movl %ebx, %r13d
    subl %ecx, %r13d
    movzbl %r13b, %r12d
    cmpl %r13d, %r12d
    je .L27_22
.L27_23:
    leaq .Ltext_128(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
.L27_22:
    movl %r13d, %ebx
    movl $10, %ecx
    addl %ecx, %ebx
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    movq $4, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -32(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %rbx, %r10
    movq 0(%r10), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L27_24:
    jmp .L27_19
.L27_18:
.L27_19:
    leaq -80(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    leaq -32(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L27_25:
    leaq .Ltext_129(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_14format_integer
    .type lb_strings_14format_integer, @function
lb_strings_14format_integer:
    pushq %rbp
    movq %rsp, %rbp
    subq $384, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -112(%rbp)
    movl %edx, -128(%rbp)
    leaq -144(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    movl %r9d, -160(%rbp)
    leaq -160(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    setb %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L28_31
    jmp .L28_4
.L28_31:
    movl %r12d, %r13d
    jmp .L28_5
.L28_4:
    movl $36, %ecx
    cmpl %ecx, %ebx
    seta %al
    movzbl %al, %r13d
.L28_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L28_1
    jmp .L28_2
.L28_1:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_13invalid_radix(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_130(%rip), %r13
    leaq -176(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $41, %rax
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
.L28_2:
.L28_3:
    leaq -192(%rbp), %r12
    leaq .Ltext_131(%rip), %rax
    movq %rax, -336(%rbp)
    leaq -208(%rbp), %r14
    movq -336(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -344(%rbp)
    movq $36, %rax
    movq -344(%rbp), %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -273(%rbp), %rax
    movq %rax, -352(%rbp)
    movq -352(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movb $0, 64(%r11)
    leaq -112(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movl %ebx, %r15d
    movq $0, %rcx
    cmpq %rcx, %r15
    sete %al
    movzbl %al, %eax
    movl %eax, -360(%rbp)
    movq $0, %rax
    movq %rax, %r13
.L28_7:
.L28_8:
    movq $65, %rcx
    cmpq %rcx, %r13
    jb 1f
    leaq .Ltext_132(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -352(%rbp), %rax
    movq %rax, %rbx
    addq %r13, %rbx
    movl -360(%rbp), %eax
    testl %eax, %eax
    jne .L28_10
    jmp .L28_11
.L28_10:
    leaq .Ltext_132(%rip), %rdi
    leaq .Ltext_133(%rip), %rsi
    call lb_core_7trap_at@PLT
.L28_11:
    movq %r14, %rax
    xorl %edx, %edx
    divq %r15
    movq %rdx, %r12
    movq $36, %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_132(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -336(%rbp), %rax
    movq %r12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq %rbx, %r10
    movb %r12b, (%r10)
    movq $1, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl -360(%rbp), %eax
    testl %eax, %eax
    jne .L28_12
    jmp .L28_13
.L28_12:
    leaq .Ltext_135(%rip), %rdi
    leaq .Ltext_133(%rip), %rsi
    call lb_core_7trap_at@PLT
.L28_13:
    movq %r14, %rax
    xorl %edx, %edx
    divq %r15
    movq %rax, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L28_15
.L28_14:
    movq %r12, %rbx
    jmp .L28_9
.L28_15:
.L28_16:
    movq %r12, %r13
    movq %rbx, %r14
    jmp .L28_7
.L28_9:
    leaq -128(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L28_18
    jmp .L28_19
.L28_18:
    movq $65, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_136(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -352(%rbp), %rax
    movq %rax, %r12
    addq %rbx, %r12
    movl $45, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    jmp .L28_20
.L28_19:
    movq %rbx, %r12
.L28_20:
    leaq -144(%rbp), %rax
    movq %rax, -368(%rbp)
    movq -368(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -376(%rbp)
    movq -376(%rbp), %rax
    cmpq %r12, %rax
    jae .L28_22
.L28_21:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_full(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_138(%rip), %r13
    leaq -296(%rbp), %r14
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
.L28_22:
.L28_23:
    movq -368(%rbp), %r10
    movq (%r10), %r14
    movq $0, %rax
    movq %rax, %r15
.L28_25:
    cmpq %r12, %r15
    jae .L28_27
.L28_26:
    movq %r14, %r13
    addq %r15, %r13
    movq %r12, %rbx
    subq %r15, %rbx
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_139(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq $65, %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_139(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -352(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq %r13, %r10
    movb %bl, (%r10)
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r15
    jmp .L28_25
.L28_27:
    movq -368(%rbp), %r10
    movq (%r10), %r13
    movq -376(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_141(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r12
    jb 1f
    leaq .Ltext_141(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r12, %rax
    jbe .L28_28
.L28_29:
    leaq .Ltext_141(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L28_28:
    leaq -312(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq -328(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r12, (%r10)
    leaq -96(%rbp), %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
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

    .p2align 4
    .globl lb_strings_9parse_f64
    .type lb_strings_9parse_f64, @function
lb_strings_9parse_f64:
    pushq %rbp
    movq %rsp, %rbp
    subq $432, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -104(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_12float_syntax@PLT
    leaq -106(%rbp), %r10
    movw %ax, 0(%r10)
    leaq -106(%rbp), %r13
    movq $1, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L29_1
    jmp .L29_2
.L29_1:
    movq %r13, %r10
    movzbl (%r10), %r12d
    jmp .L29_3
.L29_2:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_14invalid_number(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_144(%rip), %r13
    leaq -128(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $27, %rax
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
.L29_4:
.L29_3:
    movzbl %r12b, %r13d
    movzbl %r13b, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L29_6
.L29_5:
    leaq -136(%rbp), %r14
    movl $1, %ecx
    cmpl %ecx, %r13d
    jne .L29_9
.L29_8:
    movabsq $9218868437227405312, %rax
    movq %rax, %r12
    jmp .L29_10
.L29_9:
    movabsq $9221120237041090560, %rax
    movq %rax, %r12
.L29_10:
    movq %r14, %r10
    movq %r12, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $0, %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_145(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $45, %ecx
    cmpl %ecx, %r13d
    jne .L29_12
.L29_11:
    movabsq $-9223372036854775808, %rcx
    movq %r12, %rbx
    orq %rcx, %rbx
    movq %r14, %r10
    movq %rbx, (%r10)
    jmp .L29_13
.L29_12:
.L29_13:
    leaq -328(%rbp), %r10
    movq %r14, (%r10)
    leaq -336(%rbp), %rbx
    movq %rbx, %rdi
    movq %r14, %rsi
    movq $8, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L29_33
    jmp .L29_34
.L29_34:
    leaq .Ltext_223(%rip), %rdi
    leaq .Ltext_222(%rip), %rsi
    call lb_core_7trap_at@PLT
.L29_33:
    movq %rbx, %r10
    movsd (%r10), %xmm12
    jmp .L29_36
.L29_35:
    leaq .Ltext_224(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L29_36:
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movsd %xmm12, (%r10)
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
.L29_14:
    jmp .L29_7
.L29_6:
.L29_7:
    leaq -144(%rbp), %r13
    leaq -184(%rbp), %rdi
    call lb_strings_NumericLocale_create@PLT
    leaq -184(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L29_16
    jmp .L29_15
.L29_16:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
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
.L29_17:
.L29_15:
    movq %r14, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -200(%rbp), %rax
    movq %rax, -416(%rbp)
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -248(%rbp), %rdi
    call lb_strings_copy@PLT
    leaq -248(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L29_19
    jmp .L29_18
.L29_19:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L29_40
    jmp .L29_38
.L29_40:
.L29_37:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %rbx, %rdi
    call freelocale@PLT
    jmp .L29_39
.L29_38:
.L29_39:
.L29_41:
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
.L29_20:
.L29_18:
    movq %r15, %r10
    movq -416(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -256(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movl $0, %edi
    call lb_c_9set_errno@PLT
    leaq -264(%rbp), %rax
    movq %rax, -424(%rbp)
    movq -416(%rbp), %r10
    movq (%r10), %r12
    movq %r13, %rdi
    call lb_strings_NumericLocale_handle@PLT
    movq %rax, %r14
    leaq -352(%rbp), %r10
    movq %r12, (%r10)
    leaq -368(%rbp), %r10
    movq %rbx, (%r10)
    leaq -384(%rbp), %r10
    movq %r14, (%r10)
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r14, %rdx
    call strtod_l@PLT
    movapd %xmm0, %xmm12
    jmp .L29_43
.L29_42:
    leaq .Ltext_142(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L29_43:
    movq -424(%rbp), %r10
    movsd %xmm12, (%r10)
    call lb_c_errno@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movq (%r10), %r14
    movq -416(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %rcx
    movl %r12d, %r8d
    leaq -296(%rbp), %rdi
    call lb_strings_22check_float_conversion@PLT
    leaq -296(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L29_22
    jmp .L29_21
.L29_22:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r15, %r10
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
    movq -416(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r13, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L29_47
    jmp .L29_45
.L29_47:
.L29_44:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    call freelocale@PLT
    jmp .L29_46
.L29_45:
.L29_46:
.L29_48:
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
.L29_23:
.L29_21:
    movq -424(%rbp), %rax
    leaq -400(%rbp), %r10
    movq %rax, (%r10)
    leaq -408(%rbp), %rbx
    movq %rbx, %rdi
    movq -424(%rbp), %rsi
    movq $8, %rdx
    call memcpy@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L29_49
    jmp .L29_50
.L29_50:
    leaq .Ltext_223(%rip), %rdi
    leaq .Ltext_222(%rip), %rsi
    call lb_core_7trap_at@PLT
.L29_49:
    movq %rbx, %r10
    movq (%r10), %r14
    jmp .L29_52
.L29_51:
    leaq .Ltext_224(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L29_52:
    movabsq $9223372036854775807, %rcx
    movq %r14, %rbx
    andq %rcx, %rbx
    movabsq $9218868437227405312, %rcx
    cmpq %rcx, %rbx
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L29_68
    jmp .L29_27
.L29_68:
    movl %r15d, %ebx
    jmp .L29_28
.L29_27:
    movl $34, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L29_29
    jmp .L29_69
.L29_69:
    movl %r14d, %ebx
    jmp .L29_30
.L29_29:
    movabsq $4607182418800017408, %rcx
    cmpq %rcx, %rbx
    setae %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L29_30:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L29_28:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L29_24
    jmp .L29_25
.L29_24:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_19number_out_of_range(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_146(%rip), %r14
    leaq -312(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $35, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -416(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r13, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L29_56
    jmp .L29_54
.L29_56:
.L29_53:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    call freelocale@PLT
    jmp .L29_55
.L29_54:
.L29_55:
.L29_57:
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
.L29_31:
    jmp .L29_26
.L29_25:
.L29_26:
    movq -424(%rbp), %r10
    movsd (%r10), %xmm12
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movsd %xmm12, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -416(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r13, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L29_61
    jmp .L29_59
.L29_61:
.L29_58:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    call freelocale@PLT
    jmp .L29_60
.L29_59:
.L29_60:
.L29_62:
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
.L29_32:
    leaq -200(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    leaq -144(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L29_66
    jmp .L29_64
.L29_66:
    movq %rbx, %r12
.L29_63:
    movq %rbx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %r13
    movq %r13, %rdi
    call freelocale@PLT
    jmp .L29_65
.L29_64:
.L29_65:
.L29_67:
    leaq .Ltext_147(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_9parse_f32
    .type lb_strings_9parse_f32, @function
lb_strings_9parse_f32:
    pushq %rbp
    movq %rsp, %rbp
    subq $448, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq -104(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_12float_syntax@PLT
    leaq -106(%rbp), %r10
    movw %ax, 0(%r10)
    leaq -106(%rbp), %r13
    movq $1, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L30_1
    jmp .L30_2
.L30_1:
    movq %r13, %r10
    movzbl (%r10), %r12d
    jmp .L30_3
.L30_2:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_14invalid_number(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_144(%rip), %r13
    leaq -128(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $27, %rax
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
.L30_4:
.L30_3:
    movzbl %r12b, %r13d
    movzbl %r13b, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L30_6
.L30_5:
    leaq -132(%rbp), %r14
    movl $1, %ecx
    cmpl %ecx, %r13d
    jne .L30_9
.L30_8:
    movl $2139095040, %eax
    movl %eax, %r12d
    jmp .L30_10
.L30_9:
    movl $2143289344, %eax
    movl %eax, %r12d
.L30_10:
    movq %r14, %r10
    movl %r12d, (%r10)
    movq %rbx, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $0, %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_148(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $45, %ecx
    cmpl %ecx, %r13d
    jne .L30_12
.L30_11:
    movl $2147483648, %ecx
    movl %r12d, %ebx
    orl %ecx, %ebx
    movq %r14, %r10
    movl %ebx, (%r10)
    jmp .L30_13
.L30_12:
.L30_13:
    leaq -328(%rbp), %r10
    movq %r14, (%r10)
    leaq -332(%rbp), %rbx
    movq %rbx, %rdi
    movq %r14, %rsi
    movq $4, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L30_33
    jmp .L30_34
.L30_34:
    leaq .Ltext_223(%rip), %rdi
    leaq .Ltext_222(%rip), %rsi
    call lb_core_7trap_at@PLT
.L30_33:
    movq %rbx, %r10
    movss (%r10), %xmm12
    leaq -344(%rbp), %r10
    movss %xmm12, (%r10)
    jmp .L30_36
.L30_35:
    leaq .Ltext_224(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L30_36:
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movss %xmm12, (%r10)
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
.L30_14:
    jmp .L30_7
.L30_6:
.L30_7:
    leaq -144(%rbp), %r13
    leaq -184(%rbp), %rdi
    call lb_strings_NumericLocale_create@PLT
    leaq -184(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L30_16
    jmp .L30_15
.L30_16:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
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
.L30_17:
.L30_15:
    movq %r14, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -200(%rbp), %rax
    movq %rax, -440(%rbp)
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -248(%rbp), %rdi
    call lb_strings_copy@PLT
    leaq -248(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L30_19
    jmp .L30_18
.L30_19:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L30_40
    jmp .L30_38
.L30_40:
.L30_37:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %rbx, %rdi
    call freelocale@PLT
    jmp .L30_39
.L30_38:
.L30_39:
.L30_41:
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
.L30_20:
.L30_18:
    movq %r15, %r10
    movq -440(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -256(%rbp), %rbx
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movl $0, %edi
    call lb_c_9set_errno@PLT
    leaq -260(%rbp), %rax
    movq %rax, -448(%rbp)
    movq -440(%rbp), %r10
    movq (%r10), %r12
    movq %r13, %rdi
    call lb_strings_NumericLocale_handle@PLT
    movq %rax, %r14
    leaq -360(%rbp), %r10
    movq %r12, (%r10)
    leaq -376(%rbp), %r10
    movq %rbx, (%r10)
    leaq -392(%rbp), %r10
    movq %r14, (%r10)
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r14, %rdx
    call strtof_l@PLT
    movaps %xmm0, %xmm12
    leaq -400(%rbp), %r10
    movss %xmm12, (%r10)
    jmp .L30_43
.L30_42:
    leaq .Ltext_143(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L30_43:
    movq -448(%rbp), %r10
    movss %xmm12, (%r10)
    call lb_c_errno@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movq (%r10), %r14
    movq -440(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r14, %rcx
    movl %r12d, %r8d
    leaq -296(%rbp), %rdi
    call lb_strings_22check_float_conversion@PLT
    leaq -296(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L30_22
    jmp .L30_21
.L30_22:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r15, %r10
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
    movq -440(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r13, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L30_47
    jmp .L30_45
.L30_47:
.L30_44:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    call freelocale@PLT
    jmp .L30_46
.L30_45:
.L30_46:
.L30_48:
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
.L30_23:
.L30_21:
    movq -448(%rbp), %rax
    leaq -416(%rbp), %r10
    movq %rax, (%r10)
    leaq -420(%rbp), %rbx
    movq %rbx, %rdi
    movq -448(%rbp), %rsi
    movq $4, %rdx
    call memcpy@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L30_49
    jmp .L30_50
.L30_50:
    leaq .Ltext_223(%rip), %rdi
    leaq .Ltext_222(%rip), %rsi
    call lb_core_7trap_at@PLT
.L30_49:
    movq %rbx, %r10
    movl (%r10), %r14d
    leaq -432(%rbp), %r10
    movl %r14d, (%r10)
    jmp .L30_52
.L30_51:
    leaq .Ltext_224(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L30_52:
    movl $2147483647, %ecx
    movl %r14d, %ebx
    andl %ecx, %ebx
    movl $2139095040, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L30_68
    jmp .L30_27
.L30_68:
    movl %r15d, %ebx
    jmp .L30_28
.L30_27:
    movl $34, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L30_29
    jmp .L30_69
.L30_69:
    movl %r14d, %ebx
    jmp .L30_30
.L30_29:
    movl $1065353216, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L30_30:
    movzbl %bl, %r12d
    movl %r12d, %ebx
.L30_28:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L30_24
    jmp .L30_25
.L30_24:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_19number_out_of_range(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_149(%rip), %r14
    leaq -312(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $35, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -440(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r13, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L30_56
    jmp .L30_54
.L30_56:
.L30_53:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    call freelocale@PLT
    jmp .L30_55
.L30_54:
.L30_55:
.L30_57:
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
.L30_31:
    jmp .L30_26
.L30_25:
.L30_26:
    movq -448(%rbp), %r10
    movss (%r10), %xmm12
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movss %xmm12, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -440(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    movq %r13, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L30_61
    jmp .L30_59
.L30_61:
.L30_58:
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    call freelocale@PLT
    jmp .L30_60
.L30_59:
.L30_60:
.L30_62:
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
.L30_32:
    leaq -200(%rbp), %rbx
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_strings_release@PLT
    leaq -144(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L30_66
    jmp .L30_64
.L30_66:
    movq %rbx, %r12
.L30_63:
    movq %rbx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %r13
    movq %r13, %rdi
    call freelocale@PLT
    jmp .L30_65
.L30_64:
.L30_65:
.L30_67:
    leaq .Ltext_150(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_10format_f64
    .type lb_strings_10format_f64, @function
lb_strings_10format_f64:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movsd %xmm0, -104(%rbp)
    leaq -120(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    leaq -120(%rbp), %rbx
    movapd %xmm12, %xmm0
    movl $17, %esi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -168(%rbp), %rdi
    call lb_strings_12format_float@PLT
    leaq -168(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L31_2
    jmp .L31_1
.L31_2:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r13
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L31_3:
.L31_1:
    leaq -88(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L31_4:
    leaq .Ltext_151(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_10format_f32
    .type lb_strings_10format_f32, @function
lb_strings_10format_f32:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movss %xmm0, -104(%rbp)
    leaq -120(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movss (%r10), %xmm12
    cvtss2sd %xmm12, %xmm8
    movapd %xmm8, %xmm12
    leaq -120(%rbp), %rbx
    movapd %xmm12, %xmm0
    movl $9, %esi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -168(%rbp), %rdi
    call lb_strings_12format_float@PLT
    leaq -168(%rbp), %r12
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L32_2
    jmp .L32_1
.L32_2:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r13
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L32_3:
.L32_1:
    leaq -88(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L32_4:
    leaq .Ltext_152(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_NumericLocale_create
    .type lb_strings_NumericLocale_create, @function
lb_strings_NumericLocale_create:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L33_1
    jmp .L33_2
.L33_1:
    movl $16, %eax
    movl %eax, %ebx
    jmp .L33_3
.L33_2:
    movl $2, %eax
    movl %eax, %ebx
.L33_3:
    leaq .Ltext_153(%rip), %r12
    movl %ebx, %edi
    movq %r12, %rsi
    movq $0, %rdx
    call newlocale@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L33_4
    jmp .L33_5
.L33_4:
    jmp .L33_6
.L33_5:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl $12, %ecx
    cmpl %ecx, %r12d
    jne .L33_8
.L33_7:
    leaq lb_memory_exhausted(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    jmp .L33_9
.L33_8:
    leaq lb_strings_17conversion_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
.L33_9:
    movq %r13, %r10
    movl %r12d, (%r10)
    leaq .Ltext_154(%rip), %r14
    leaq -104(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $41, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
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
.L33_10:
.L33_6:
    leaq -112(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq -88(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
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
.L33_11:
    leaq .Ltext_155(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_NumericLocale_handle
    .type lb_strings_NumericLocale_handle, @function
lb_strings_NumericLocale_handle:
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
    jne .L34_1
    jmp .L34_2
.L34_1:
    jmp .L34_3
.L34_2:
    leaq .Ltext_156(%rip), %rbx
    leaq -40(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $28, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_157(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_157(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L34_3:
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L34_4:
    leaq .Ltext_157(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_12format_float
    .type lb_strings_12format_float, @function
lb_strings_12format_float:
    pushq %rbp
    movq %rsp, %rbp
    subq $560, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movsd %xmm0, -112(%rbp)
    movl %esi, -128(%rbp)
    leaq -144(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -112(%rbp), %rbx
    leaq -480(%rbp), %r10
    movq %rbx, (%r10)
    leaq -488(%rbp), %r12
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $8, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L35_39
    jmp .L35_40
.L35_40:
    leaq .Ltext_223(%rip), %rdi
    leaq .Ltext_222(%rip), %rsi
    call lb_core_7trap_at@PLT
.L35_39:
    movq %r12, %r10
    movq (%r10), %r13
.L35_42:
    movabsq $9223372036854775807, %rcx
    movq %r13, %r12
    andq %rcx, %r12
    movabsq $9218868437227405312, %rcx
    cmpq %rcx, %r12
    jb .L35_2
.L35_1:
    leaq -160(%rbp), %r14
    movabsq $9218868437227405312, %rcx
    cmpq %rcx, %r12
    jbe .L35_5
.L35_4:
    leaq .Ltext_158(%rip), %rbx
    leaq -192(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $3, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -176(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $3, %rax
    movq %rax, %rbx
    jmp .L35_6
.L35_5:
.L35_11:
    movq $63, %rcx
    movq %r13, %rbx
    shrq %cl, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L35_8
.L35_7:
    leaq .Ltext_161(%rip), %rbx
    leaq -224(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $4, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -208(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $4, %rax
    movq %rax, %rbx
    jmp .L35_9
.L35_8:
    leaq .Ltext_162(%rip), %rbx
    leaq -240(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $3, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -208(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $3, %rax
    movq %rax, %rbx
.L35_9:
    leaq -208(%rbp), %r12
    leaq -176(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
.L35_6:
    leaq -176(%rbp), %r12
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -144(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r15
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -528(%rbp)
    cmpq %rbx, %r15
    jae .L35_13
.L35_12:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_full(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_163(%rip), %r13
    leaq -256(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $62, %rax
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
.L35_13:
.L35_14:
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r14, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %rbx, %r8
    call lb_memory_copy_0g1_u8@PLT
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -552(%rbp)
    movq %r13, %r10
    movq (%r10), %r15
    movq -528(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -560(%rbp)
    movq $1, %rcx
    addq %rcx, %r15
    movq $0, %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_164(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -560(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_164(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -560(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L35_16
.L35_17:
    leaq .Ltext_164(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L35_16:
    leaq -272(%rbp), %rbx
    movq -552(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq -560(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -288(%rbp), %rbx
    movq -552(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq -560(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
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
.L35_2:
.L35_3:
    leaq -296(%rbp), %rax
    movq %rax, -544(%rbp)
    leaq -336(%rbp), %rdi
    call lb_strings_NumericLocale_create@PLT
    leaq -336(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L35_20
    jmp .L35_19
.L35_20:
    movq $8, %rcx
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
.L35_19:
    movq %r14, %r10
    movq -544(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -368(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq -544(%rbp), %rdi
    call lb_strings_NumericLocale_handle@PLT
    movq %rax, %r15
    movq %r15, %rdi
    call uselocale@PLT
    movq %rax, %r15
    testq %r15, %r15
    jne .L35_22
    jmp .L35_23
.L35_22:
    jmp .L35_24
.L35_23:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_17conversion_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_165(%rip), %r14
    leaq -384(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $47, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -544(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L35_46
    jmp .L35_44
.L35_46:
.L35_43:
    movq $0, %rax
    movq -544(%rbp), %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    call freelocale@PLT
    jmp .L35_45
.L35_44:
.L35_45:
.L35_47:
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
.L35_24:
    leaq .Ltext_167(%rip), %r14
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    movq %r12, %rdi
    movq $32, %rsi
    movq %r14, %rdx
    movl %r13d, %ecx
    movl $1, %eax
    call snprintf@PLT
    movl %eax, %r13d
    leaq -504(%rbp), %r10
    movq %r15, (%r10)
    movq %r15, %rdi
    call uselocale@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L35_48
    jmp .L35_49
.L35_48:
    jmp .L35_50
.L35_49:
    leaq .Ltext_170(%rip), %rbx
    leaq -520(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $43, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_171(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_171(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L35_50:
.L35_51:
    movl $0, %ecx
    cmpl %ecx, %r13d
    setl %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L35_72
    jmp .L35_29
.L35_72:
    movl %ebx, %r14d
    jmp .L35_30
.L35_29:
    movslq %r13d, %rbx
    movq $32, %rcx
    cmpq %rcx, %rbx
    setae %al
    movzbl %al, %r14d
.L35_30:
    movzbl %r14b, %ebx
    testl %ebx, %ebx
    jne .L35_26
    jmp .L35_27
.L35_26:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_strings_17conversion_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_168(%rip), %r13
    leaq -400(%rbp), %r14
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
    movq -544(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L35_55
    jmp .L35_53
.L35_55:
.L35_52:
    movq $0, %rax
    movq -544(%rbp), %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    call freelocale@PLT
    jmp .L35_54
.L35_53:
.L35_54:
.L35_56:
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
.L35_27:
.L35_28:
    leaq -144(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -536(%rbp)
    movq -536(%rbp), %r10
    movq (%r10), %r15
    movslq %r13d, %r14
    cmpq %r14, %r15
    jae .L35_33
.L35_32:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_full(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_163(%rip), %r13
    leaq -416(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $62, %rax
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
    movq -544(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L35_60
    jmp .L35_58
.L35_60:
.L35_57:
    movq $0, %rax
    movq -544(%rbp), %r10
    movq %rax, (%r10)
    movq %r12, %rdi
    call freelocale@PLT
    jmp .L35_59
.L35_58:
.L35_59:
.L35_61:
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
.L35_33:
.L35_34:
    leaq -432(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq $32, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r13, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %r14, %r8
    call lb_memory_copy_0g1_u8@PLT
    movq %rbx, %r10
    movq (%r10), %r15
    movq -536(%rbp), %r10
    movq (%r10), %r13
    movq $1, %rcx
    addq %rcx, %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_169(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r13, %r14
    jb 1f
    leaq .Ltext_169(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r14, %rax
    jbe .L35_36
.L35_37:
    leaq .Ltext_169(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L35_36:
    leaq -448(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    leaq -464(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r14, (%r10)
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
    movq -544(%rbp), %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L35_65
    jmp .L35_63
.L35_65:
.L35_62:
    movq $0, %rax
    movq -544(%rbp), %r10
    movq %rax, (%r10)
    movq %rbx, %rdi
    call freelocale@PLT
    jmp .L35_64
.L35_63:
.L35_64:
.L35_66:
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

    .p2align 4
    .globl lb_strings_22check_float_conversion
    .type lb_strings_22check_float_conversion, @function
lb_strings_22check_float_conversion:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    leaq -80(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    movq %rcx, -96(%rbp)
    movl %r8d, -112(%rbp)
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl $12, %ecx
    cmpl %ecx, %ebx
    jne .L36_2
.L36_1:
    leaq -64(%rbp), %rbx
    leaq lb_memory_exhausted(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_172(%rip), %r12
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $43, %rax
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
.L36_4:
    jmp .L36_3
.L36_2:
.L36_3:
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L36_8
    jmp .L36_19
.L36_19:
    movl %r12d, %ebx
    jmp .L36_9
.L36_8:
    movl $34, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L36_9:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L36_5
    jmp .L36_6
.L36_5:
    leaq -64(%rbp), %rbx
    leaq lb_strings_17conversion_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_173(%rip), %r12
    leaq -144(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $32, %rax
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
.L36_10:
    jmp .L36_7
.L36_6:
.L36_7:
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L36_11
    jmp .L36_12
.L36_11:
    jmp .L36_13
.L36_12:
    leaq -64(%rbp), %rbx
    leaq lb_strings_14invalid_number(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_174(%rip), %r12
    leaq -160(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $55, %rax
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
.L36_14:
.L36_13:
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %rax
    movq %r12, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_175(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    cmpq %rbx, %r12
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L36_16
.L36_15:
    leaq -64(%rbp), %rbx
    leaq lb_strings_14invalid_number(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_176(%rip), %r12
    leaq -176(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $51, %rax
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
.L36_18:
    jmp .L36_17
.L36_16:
.L36_17:
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
    .globl lb_strings_12float_syntax
    .type lb_strings_12float_syntax, @function
lb_strings_12float_syntax:
    pushq %rbp
    movq %rsp, %rbp
    subq $304, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -64(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -64(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -240(%rbp)
    movq -240(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L37_2
.L37_1:
    leaq -66(%rbp), %rbx
    movq %rbx, %r11
    movw $0, 0(%r11)
    leaq -42(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L37_4:
    jmp .L37_3
.L37_2:
.L37_3:
    movq %rbx, %r10
    movq (%r10), %r13
    movq $0, %rax
    movq -240(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_177(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r13, %r10
    movzbl (%r10), %r14d
    movl $43, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L37_84
    jmp .L37_8
.L37_84:
    movl %r14d, %ebx
    jmp .L37_9
.L37_8:
    movq %r13, %r10
    movzbl (%r10), %ebx
    movl $45, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L37_9:
    movzbl %bl, %r14d
    testl %r14d, %r14d
    jne .L37_5
    jmp .L37_6
.L37_5:
    movq $1, %rax
    movq %rax, %rbx
    jmp .L37_7
.L37_6:
    movq $0, %rax
    movq %rax, %rbx
.L37_7:
    movq -240(%rbp), %rax
    cmpq %rbx, %rax
    jne .L37_11
.L37_10:
    leaq -68(%rbp), %rbx
    movq %rbx, %r11
    movw $0, 0(%r11)
    leaq -42(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L37_13:
    jmp .L37_12
.L37_11:
.L37_12:
    leaq -88(%rbp), %rax
    movq %rax, -264(%rbp)
    movq -240(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_178(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -240(%rbp), %rax
    cmpq %r14, %rax
    jb 1f
    leaq .Ltext_178(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -240(%rbp), %rcx
    cmpq %rcx, %rbx
    jbe .L37_14
.L37_15:
    leaq .Ltext_178(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L37_14:
    movq %r13, %r14
    addq %rbx, %r14
    movq -240(%rbp), %rax
    subq %rbx, %rax
    movq %rax, -248(%rbp)
    leaq -104(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq -248(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq -120(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq -248(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r15, %r10
    movq -264(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq .Ltext_162(%rip), %r14
    leaq -136(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $3, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq -264(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r15, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_strings_10ascii_word@PLT
    movl %eax, %r14d
    testl %r14d, %r14d
    jne .L37_85
    jmp .L37_19
.L37_85:
    movl %r14d, %r15d
    jmp .L37_20
.L37_19:
    leaq .Ltext_179(%rip), %r14
    leaq -152(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $8, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq -264(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r15, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_strings_10ascii_word@PLT
    movl %eax, %r15d
.L37_20:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L37_16
    jmp .L37_17
.L37_16:
    leaq -154(%rbp), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -42(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L37_21:
    jmp .L37_18
.L37_17:
.L37_18:
    leaq .Ltext_158(%rip), %r14
    leaq -176(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $3, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq -264(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r15, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    call lb_strings_10ascii_word@PLT
    movl %eax, %r14d
    testl %r14d, %r14d
    jne .L37_22
    jmp .L37_23
.L37_22:
    leaq -178(%rbp), %rbx
    movl $2, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -42(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L37_25:
    jmp .L37_24
.L37_23:
.L37_24:
    leaq -208(%rbp), %r14
    movq %rbx, %r15
    movq $0, %rax
    movq %rax, -272(%rbp)
.L37_26:
    movq -240(%rbp), %rcx
    cmpq %rcx, %r15
    setb %al
    movzbl %al, %eax
    movl %eax, -256(%rbp)
    movl -256(%rbp), %eax
    testl %eax, %eax
    jne .L37_29
    jmp .L37_86
.L37_86:
    movl -256(%rbp), %eax
    movl %eax, %r12d
    jmp .L37_30
.L37_29:
    movq %r13, %r12
    addq %r15, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -208(%rbp), %r10
    movl %r12d, (%r10)
    movq %r14, %r10
    movzbl (%r10), %r12d
    movl $48, %ecx
    cmpl %ecx, %r12d
    setae %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L37_72
    jmp .L37_87
.L37_87:
    movl %ebx, %r12d
    jmp .L37_73
.L37_72:
    movl $57, %ecx
    cmpl %ecx, %r12d
    setbe %al
    movzbl %al, %ebx
    movl %ebx, %r12d
.L37_73:
    movzbl %r12b, %ebx
    movzbl %bl, %ebx
    leaq -216(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L37_75
.L37_74:
    leaq .Ltext_195(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L37_75:
    movl %ebx, %r12d
.L37_30:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L37_27
    jmp .L37_28
.L37_27:
    movq -272(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_181(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_182(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %r15
    movq %rbx, %rax
    movq %rax, -272(%rbp)
    jmp .L37_26
.L37_28:
    movl -256(%rbp), %eax
    testl %eax, %eax
    jne .L37_34
    jmp .L37_88
.L37_88:
    movl -256(%rbp), %eax
    movl %eax, %ebx
    jmp .L37_35
.L37_34:
    movq %r13, %rbx
    addq %r15, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $46, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L37_35:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L37_31
    jmp .L37_32
.L37_31:
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_184(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    leaq -208(%rbp), %r12
    movq -272(%rbp), %rax
    movq %rax, -280(%rbp)
.L37_36:
    movq -240(%rbp), %rcx
    cmpq %rcx, %rbx
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L37_39
    jmp .L37_89
.L37_89:
    movl %r15d, %r14d
    jmp .L37_40
.L37_39:
    movq %r13, %r14
    addq %rbx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    leaq -208(%rbp), %r10
    movl %r14d, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r14d
    movl $48, %ecx
    cmpl %ecx, %r14d
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L37_76
    jmp .L37_90
.L37_90:
    movl %r15d, %r14d
    jmp .L37_77
.L37_76:
    movl $57, %ecx
    cmpl %ecx, %r14d
    setbe %al
    movzbl %al, %r15d
    movl %r15d, %r14d
.L37_77:
    movzbl %r14b, %r15d
    movzbl %r15b, %r15d
    leaq -224(%rbp), %r10
    movl %r15d, (%r10)
    jmp .L37_79
.L37_78:
    leaq .Ltext_195(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L37_79:
    movl %r15d, %r14d
.L37_40:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L37_37
    jmp .L37_38
.L37_37:
    movq -280(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_186(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_187(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %r15, %rbx
    movq %r14, %rax
    movq %rax, -280(%rbp)
    jmp .L37_36
.L37_38:
    movq %rbx, %rax
    movq %rax, -288(%rbp)
    movq -280(%rbp), %rax
    movq %rax, %r14
    jmp .L37_33
.L37_32:
    movq %r15, %rax
    movq %rax, -288(%rbp)
    movq -272(%rbp), %rax
    movq %rax, %r14
.L37_33:
    movq $0, %rcx
    cmpq %rcx, %r14
    jne .L37_42
.L37_41:
    leaq -180(%rbp), %rbx
    movq %rbx, %r11
    movw $0, 0(%r11)
    leaq -42(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L37_44:
    jmp .L37_43
.L37_42:
.L37_43:
    movq -288(%rbp), %rax
    movq -240(%rbp), %rcx
    cmpq %rcx, %rax
    setb %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L37_48
    jmp .L37_91
.L37_91:
    movl %ebx, %r14d
    jmp .L37_49
.L37_48:
    movq -288(%rbp), %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %r14d
    movl $101, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L37_92
    jmp .L37_50
.L37_92:
    movl %r14d, %ebx
    jmp .L37_51
.L37_50:
    movq %rbx, %r10
    movzbl (%r10), %r14d
    movl $69, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %ebx
.L37_51:
    movzbl %bl, %r14d
.L37_49:
    movzbl %r14b, %ebx
    testl %ebx, %ebx
    jne .L37_45
    jmp .L37_46
.L37_45:
    movq -288(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_189(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -240(%rbp), %rcx
    cmpq %rcx, %rbx
    setb %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L37_55
    jmp .L37_93
.L37_93:
    movl %r14d, %r12d
    jmp .L37_56
.L37_55:
    movq %r13, %r12
    addq %rbx, %r12
    movq %r12, %r10
    movzbl (%r10), %r14d
    movl $43, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L37_94
    jmp .L37_57
.L37_94:
    movl %r14d, %r12d
    jmp .L37_58
.L37_57:
    movq %r12, %r10
    movzbl (%r10), %r14d
    movl $45, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %r12d
.L37_58:
    movzbl %r12b, %r14d
    movl %r14d, %r12d
.L37_56:
    movzbl %r12b, %r14d
    testl %r14d, %r14d
    jne .L37_52
    jmp .L37_53
.L37_52:
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_191(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %rax
    movq %rax, -296(%rbp)
    jmp .L37_54
.L37_53:
    movq %rbx, %rax
    movq %rax, -296(%rbp)
.L37_54:
    leaq -208(%rbp), %rbx
    movq -296(%rbp), %rax
    movq %rax, %r14
.L37_59:
    movq -240(%rbp), %rcx
    cmpq %rcx, %r14
    setb %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L37_62
    jmp .L37_95
.L37_95:
    movl %r15d, %r12d
    jmp .L37_63
.L37_62:
    movq %r13, %r12
    addq %r14, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -208(%rbp), %r10
    movl %r12d, (%r10)
    movq %rbx, %r10
    movzbl (%r10), %r12d
    movl $48, %ecx
    cmpl %ecx, %r12d
    setae %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L37_80
    jmp .L37_96
.L37_96:
    movl %r15d, %r12d
    jmp .L37_81
.L37_80:
    movl $57, %ecx
    cmpl %ecx, %r12d
    setbe %al
    movzbl %al, %r15d
    movl %r15d, %r12d
.L37_81:
    movzbl %r12b, %r15d
    movzbl %r15b, %r15d
    leaq -232(%rbp), %r10
    movl %r15d, (%r10)
    jmp .L37_83
.L37_82:
    leaq .Ltext_195(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT
.L37_83:
    movl %r15d, %r12d
.L37_63:
    movzbl %r12b, %r15d
    testl %r15d, %r15d
    jne .L37_60
    jmp .L37_61
.L37_60:
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_193(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %r14
    jmp .L37_59
.L37_61:
    movq -296(%rbp), %rax
    cmpq %r14, %rax
    jne .L37_65
.L37_64:
    leaq -182(%rbp), %rbx
    movq %rbx, %r11
    movw $0, 0(%r11)
    leaq -42(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L37_67:
    jmp .L37_66
.L37_65:
.L37_66:
    movq %r14, %rbx
    jmp .L37_47
.L37_46:
    movq -288(%rbp), %rax
    movq %rax, %rbx
.L37_47:
    movq -240(%rbp), %rax
    cmpq %rbx, %rax
    jne .L37_69
.L37_68:
    leaq -186(%rbp), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $1, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -184(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    jmp .L37_70
.L37_69:
    leaq -188(%rbp), %rbx
    movq %rbx, %r11
    movw $0, 0(%r11)
    leaq -184(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
.L37_70:
    leaq -184(%rbp), %rbx
    leaq -42(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movzwl 0(%r10), %eax
    movw %ax, 0(%r11)
    movq %r12, %r10
    movzwl 0(%r10), %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L37_71:
    leaq .Ltext_194(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_10ascii_word
    .type lb_strings_10ascii_word, @function
lb_strings_10ascii_word:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
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
    leaq -56(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -80(%rbp)
    leaq -72(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -88(%rbp)
    movq -80(%rbp), %rax
    movq -88(%rbp), %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L38_2
.L38_1:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L38_4:
    jmp .L38_3
.L38_2:
.L38_3:
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -96(%rbp)
    movq $0, %rax
    movq %rax, %r14
.L38_5:
    movq -80(%rbp), %rcx
    cmpq %rcx, %r14
    jae .L38_7
.L38_6:
    movq %r15, %rbx
    addq %r14, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movzbl %bl, %ebx
    movl $65, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L38_11
    jmp .L38_20
.L38_20:
    movl %r13d, %r12d
    jmp .L38_12
.L38_11:
    movl $90, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r12d
.L38_12:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L38_8
    jmp .L38_9
.L38_8:
    movl $32, %ecx
    movl %ebx, %r13d
    addl %ecx, %r13d
    movzbl %r13b, %r12d
    cmpl %r13d, %r12d
    je .L38_13
.L38_14:
    leaq .Ltext_197(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
.L38_13:
    movl %r13d, %ebx
    jmp .L38_10
.L38_9:
.L38_10:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movq -88(%rbp), %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_198(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -96(%rbp), %rax
    movq %rax, %r13
    addq %r14, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    cmpl %r13d, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L38_16
.L38_15:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L38_18:
    jmp .L38_17
.L38_16:
.L38_17:
    movq $1, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r14
    jmp .L38_5
.L38_7:
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L38_19:
    leaq .Ltext_200(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

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
    jbe .L39_2
.L39_1:
    movq %rbx, %r12
    jmp .L39_3
.L39_2:
    movq $64, %rax
    movq %rax, %r12
.L39_3:
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
    jne .L39_4
    jmp .L39_5
.L39_4:
    jmp .L39_6
.L39_5:
    leaq -120(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_201(%rip), %r13
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
.L39_7:
.L39_6:
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
    jbe .L39_9
.L39_8:
    movq -320(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_37(%rip), %r12
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
    jmp .L39_10
.L39_9:
    movq -312(%rbp), %r10
    movq (%r10), %r12
    movq -312(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L39_11
    jmp .L39_12
.L39_12:
    leaq .Ltext_202(%rip), %rdi
    leaq .Ltext_38(%rip), %rsi
    call lb_core_7trap_at@PLT
.L39_11:
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
    jne .L39_13
    jmp .L39_14
.L39_13:
    movq -320(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_40(%rip), %r12
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
    jmp .L39_10
.L39_14:
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
.L39_10:
    movq -320(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L39_16
    jmp .L39_15
.L39_16:
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
.L39_17:
.L39_15:
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
.L39_18:
    leaq .Ltext_202(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
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
    jbe .L40_2
.L40_1:
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_203(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    jmp .L40_3
.L40_2:
    movq $0, %rax
    movq %rax, %r12
.L40_3:
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L40_4:
    leaq .Ltext_203(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
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
.L41_1:
    leaq .Ltext_204(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_strings_Builder_write
    .type lb_strings_Builder_write, @function
lb_strings_Builder_write:
    pushq %rbp
    movq %rsp, %rbp
    subq $624, %rsp
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
    movq %rax, -600(%rbp)
    movq -600(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -512(%rbp)
    movq -512(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -520(%rbp)
    movq -520(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %eax
    movl %eax, -528(%rbp)
    movl -528(%rbp), %eax
    testl %eax, %eax
    jne .L42_1
    jmp .L42_2
.L42_1:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_205(%rip), %r13
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
.L42_4:
    jmp .L42_3
.L42_2:
.L42_3:
    leaq -112(%rbp), %rax
    movq %rax, -536(%rbp)
    movq -536(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -544(%rbp)
    movq -544(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -552(%rbp)
    movq -552(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L42_6
.L42_5:
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
.L42_8:
    jmp .L42_7
.L42_6:
.L42_7:
    movq -600(%rbp), %r10
    movq (%r10), %r13
    movq -536(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -560(%rbp)
    leaq -144(%rbp), %rax
    movq %rax, -568(%rbp)
    leaq -160(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq -568(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -560(%rbp), %rax
    cmpq %r13, %rax
    setae %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L42_12
    jmp .L42_60
.L42_60:
    movl %ebx, %r15d
    jmp .L42_13
.L42_12:
    movq -560(%rbp), %rax
    movq %rax, %rbx
    subq %r13, %rbx
    movq -520(%rbp), %rcx
    cmpq %rcx, %rbx
    setb %al
    movzbl %al, %r15d
.L42_13:
    movzbl %r15b, %ebx
    testl %ebx, %ebx
    jne .L42_9
    jmp .L42_10
.L42_9:
    movq -560(%rbp), %rax
    movq %r13, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_208(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -600(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    cmpq %r15, %rbx
    seta %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L42_61
    jmp .L42_17
.L42_61:
    movl %r12d, %r13d
    jmp .L42_18
.L42_17:
    movq %r15, %r12
    subq %rbx, %r12
    movq -552(%rbp), %rax
    cmpq %r12, %rax
    seta %al
    movzbl %al, %r13d
.L42_18:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L42_14
    jmp .L42_15
.L42_14:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_io_14invalid_buffer(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_210(%rip), %r13
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
.L42_19:
    jmp .L42_16
.L42_15:
.L42_16:
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
    movq -568(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rax
    movq %rax, -616(%rbp)
    jmp .L42_11
.L42_10:
    movq $0, %rax
    movq %rax, -616(%rbp)
.L42_11:
    movq -552(%rbp), %rax
    leaq -320(%rbp), %r10
    movq %rax, (%r10)
    movl -528(%rbp), %eax
    testl %eax, %eax
    jne .L42_34
    jmp .L42_35
.L42_34:
    leaq -304(%rbp), %rbx
    leaq lb_io_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_205(%rip), %r13
    leaq -336(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $31, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r15, %r10
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
    leaq -224(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L42_59
.L42_37:
    jmp .L42_36
.L42_35:
.L42_36:
    movq -600(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -344(%rbp), %r13
    movq %rbx, %rdi
    movq -552(%rbp), %rsi
    movl $64, %edx
    movq %r13, %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %ebx
    leaq -360(%rbp), %r15
    movq %r13, %r10
    movq (%r10), %r13
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r15
    movq %r15, %r10
    movb %bl, (%r10)
    movq %r15, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L42_38
    jmp .L42_39
.L42_38:
    jmp .L42_40
.L42_39:
    leaq -304(%rbp), %rbx
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_206(%rip), %r13
    leaq -376(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $26, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r15, %r10
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
    leaq -224(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L42_59
.L42_41:
.L42_40:
    leaq -384(%rbp), %rbx
    movq %r13, %rdi
    movq $1, %rsi
    movl $64, %edx
    movq %rbx, %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r15d
    leaq -400(%rbp), %r12
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movb %r15b, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L42_42
    jmp .L42_43
.L42_42:
    jmp .L42_44
.L42_43:
    leaq -304(%rbp), %rbx
    leaq lb_memory_exhausted(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_206(%rip), %r12
    leaq -416(%rbp), %r13
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
    movq %rbx, %r10
    leaq -224(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L42_59
.L42_45:
.L42_44:
    movq -512(%rbp), %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    ja .L42_47
.L42_46:
    leaq -304(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -224(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L42_59
.L42_49:
    jmp .L42_48
.L42_47:
.L42_48:
    leaq -424(%rbp), %r13
    movq %r12, %rdi
    movq $2, %rsi
    movl $64, %edx
    movq %r13, %rcx
    call lb_core_6qmul_u@PLT
    movl %eax, %r15d
    leaq -440(%rbp), %r14
    movq %r13, %r10
    movq (%r10), %r13
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movb %r15b, (%r10)
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L42_50
    jmp .L42_51
.L42_50:
    movq %r13, %r12
    jmp .L42_52
.L42_51:
    movq %rbx, %r12
.L42_52:
    cmpq %rbx, %r12
    jae .L42_54
.L42_53:
    movq %rbx, %r12
    jmp .L42_55
.L42_54:
.L42_55:
    leaq -456(%rbp), %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -600(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -600(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %rcx
    leaq -504(%rbp), %rdi
    call lb_memory_grow@PLT
    leaq -504(%rbp), %r15
    movq $40, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L42_57
    jmp .L42_56
.L42_57:
    movq $16, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq -304(%rbp), %r14
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
    movq %r14, %r10
    leaq -224(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L42_59
.L42_58:
.L42_56:
    movq %r15, %r10
    movq -600(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -304(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r12, %r10
    leaq -224(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L42_59:
    leaq -224(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L42_21
    jmp .L42_20
.L42_21:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r12, %r10
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
.L42_22:
.L42_20:
    movq -568(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L42_26
    jmp .L42_24
.L42_26:
.L42_23:
    movq -600(%rbp), %r10
    movq (%r10), %r12
    movq -512(%rbp), %r10
    movq (%r10), %r13
    movq -600(%rbp), %rax
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
    leaq .Ltext_211(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_211(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r13, %r14
    jbe .L42_27
.L42_28:
    leaq .Ltext_211(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L42_27:
    movq %r12, %rbx
    addq %r14, %rbx
    movq %r13, %rax
    subq %r14, %rax
    movq %rax, -576(%rbp)
    leaq -240(%rbp), %rax
    movq %rax, -584(%rbp)
    movq -584(%rbp), %r10
    movq %rbx, (%r10)
    movq -584(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -576(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -600(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -608(%rbp)
    movq -512(%rbp), %r10
    movq (%r10), %r15
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq -616(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_211(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r15
    jb 1f
    leaq .Ltext_211(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -616(%rbp), %rax
    cmpq %r15, %rax
    jbe .L42_29
.L42_30:
    leaq .Ltext_211(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L42_29:
    movq -608(%rbp), %rax
    movq -616(%rbp), %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq -616(%rbp), %rcx
    movq %r15, %r12
    subq %rcx, %r12
    leaq -256(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq -544(%rbp), %r10
    movq (%r10), %rbx
    movq -584(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq %r13, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %rbx, %r8
    call lb_memory_move_0g1_u8@PLT
    jmp .L42_25
.L42_24:
    movq -600(%rbp), %r10
    movq (%r10), %r12
    movq -512(%rbp), %r10
    movq (%r10), %r13
    movq -600(%rbp), %rax
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
    leaq .Ltext_212(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %rbx, %r13
    jb 1f
    leaq .Ltext_212(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r13, %r14
    jbe .L42_31
.L42_32:
    leaq .Ltext_212(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L42_31:
    movq %r12, %rbx
    addq %r14, %rbx
    movq %r13, %rax
    subq %r14, %rax
    movq %rax, -592(%rbp)
    leaq -272(%rbp), %r15
    movq %r15, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq -592(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -544(%rbp), %r10
    movq (%r10), %rbx
    movq %r15, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -536(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %rbx, %r8
    call lb_memory_move_0g1_u8@PLT
.L42_25:
    movq -600(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    movq -544(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %rax
    movq %r13, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_213(%rip), %rdi
    leaq .Ltext_82(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq -544(%rbp), %r10
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
.L42_33:
    leaq .Ltext_214(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
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
    jne .L43_2
    jmp .L43_1
.L43_2:
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
.L43_3:
.L43_1:
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
    jae .L44_2
.L44_1:
    movq %r15, %r10
    movq (%r10), %r14
    movq %r14, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    jmp .L44_3
.L44_2:
.L44_3:
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
    leaq .Ltext_216(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    cmpq %r12, %r14
    jb 1f
    leaq .Ltext_216(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r14, %rax
    jbe .L44_4
.L44_5:
    leaq .Ltext_216(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT
.L44_4:
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
.L44_6:
    leaq .Ltext_216(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
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
    jne .L46_2
.L46_1:
    leaq -80(%rbp), %rbx
    leaq lb_io_closed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_205(%rip), %r12
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
.L46_4:
    jmp .L46_3
.L46_2:
.L46_3:
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $16, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    cmpq %r15, %r12
    jbe .L46_6
.L46_5:
    leaq -80(%rbp), %rbx
    leaq lb_io_14invalid_buffer(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_217(%rip), %r12
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
.L46_8:
    jmp .L46_7
.L46_6:
.L46_7:
    movq %r14, %r10
    movq %r12, (%r10)
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -144(%rbp)
    cmpq %rbx, %r12
    jb 1f
    leaq .Ltext_218(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
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
    jbe .L47_2
.L47_1:
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
    jne .L47_5
    jmp .L47_4
.L47_5:
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
.L47_4:
    jmp .L47_3
.L47_2:
.L47_3:
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
    jne .L48_11
    jmp .L48_4
.L48_11:
    movl %r13d, %r14d
    jmp .L48_5
.L48_4:
    leaq -64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L48_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L48_1
    jmp .L48_2
.L48_1:
    leaq .Ltext_1(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_220(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L48_3
.L48_2:
.L48_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L48_7
.L48_6:
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
    jne .L48_9
    jmp .L48_10
.L48_10:
    leaq .Ltext_221(%rip), %rdi
    leaq .Ltext_222(%rip), %rsi
    call lb_core_7trap_at@PLT
.L48_9:
    jmp .L48_8
.L48_7:
.L48_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_memory_read_0g1_f64
    .type lb_memory_read_0g1_f64, @function
    .weak lb_memory_read_0g1_f64
lb_memory_read_0g1_f64:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -40(%rbp), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $8, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L49_1
    jmp .L49_2
.L49_2:
    leaq .Ltext_223(%rip), %rdi
    leaq .Ltext_222(%rip), %rsi
    call lb_core_7trap_at@PLT
.L49_1:
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movapd %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L49_3:
    leaq .Ltext_224(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_read_0g1_u64
    .type lb_memory_read_0g1_u64, @function
    .weak lb_memory_read_0g1_u64
lb_memory_read_0g1_u64:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -40(%rbp), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $8, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L50_1
    jmp .L50_2
.L50_2:
    leaq .Ltext_223(%rip), %rdi
    leaq .Ltext_222(%rip), %rsi
    call lb_core_7trap_at@PLT
.L50_1:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L50_3:
    leaq .Ltext_224(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_read_0g1_f32
    .type lb_memory_read_0g1_f32, @function
    .weak lb_memory_read_0g1_f32
lb_memory_read_0g1_f32:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -36(%rbp), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $4, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L51_1
    jmp .L51_2
.L51_2:
    leaq .Ltext_223(%rip), %rdi
    leaq .Ltext_222(%rip), %rsi
    call lb_core_7trap_at@PLT
.L51_1:
    movq %rbx, %r10
    movss (%r10), %xmm12
    movaps %xmm12, %xmm0
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L51_3:
    leaq .Ltext_224(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_memory_read_0g1_u32
    .type lb_memory_read_0g1_u32, @function
    .weak lb_memory_read_0g1_u32
lb_memory_read_0g1_u32:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -36(%rbp), %rbx
    leaq -32(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $4, %rdx
    call memcpy@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L52_1
    jmp .L52_2
.L52_2:
    leaq .Ltext_223(%rip), %rdi
    leaq .Ltext_222(%rip), %rsi
    call lb_core_7trap_at@PLT
.L52_1:
    movq %rbx, %r10
    movl (%r10), %r12d
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L52_3:
    leaq .Ltext_224(%rip), %rdi
    leaq .Ltext_2(%rip), %rsi
    call lb_core_7trap_at@PLT

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
    jne .L53_11
    jmp .L53_4
.L53_11:
    movl %r13d, %r14d
    jmp .L53_5
.L53_4:
    leaq -64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L53_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L53_1
    jmp .L53_2
.L53_1:
    leaq .Ltext_1(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_225(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L53_3
.L53_2:
.L53_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L53_7
.L53_6:
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
    jne .L53_9
    jmp .L53_10
.L53_10:
    leaq .Ltext_226(%rip), %rdi
    leaq .Ltext_222(%rip), %rsi
    call lb_core_7trap_at@PLT
.L53_9:
    jmp .L53_8
.L53_7:
.L53_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_strings_0init
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
    .asciz "the split result is too large"
.Ltext_37:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_38:
    .asciz "memory.unset"
.Ltext_39:
    .asciz "src/std/strings/split.lucb:8:5"
.Ltext_40:
    .asciz "memory.exhausted"
.Ltext_41:
    .asciz "src/std/strings/split.lucb:14:9"
.Ltext_42:
    .asciz "src/std/strings/split.lucb:15:13"
.Ltext_43:
    .asciz "src/std/strings/split.lucb:16:13"
.Ltext_44:
    .asciz "src/std/strings/split.lucb:17:13"
.Ltext_45:
    .asciz "src/std/strings/split.lucb:18:9"
.Ltext_46:
    .asciz "src/std/strings/split.lucb:19:5"
.Ltext_47:
    .asciz "src/std/strings/split.lucb:20:5"
.Ltext_48:
    .asciz "a split iterator requires a nonempty separator"
.Ltext_49:
    .asciz "src/std/strings/split.lucb:37:9"
.Ltext_50:
    .asciz "src/std/strings/split.lucb:45:13"
.Ltext_51:
    .asciz "src/std/strings/split.lucb:49:13"
.Ltext_52:
    .asciz "src/std/strings/split.lucb:51:17"
.Ltext_53:
    .asciz "src/std/strings/split.lucb:52:13"
.Ltext_54:
    .asciz "src/std/strings/split.lucb:54:9"
.Ltext_55:
    .asciz "src/std/strings/split.lucb:65:5"
.Ltext_56:
    .asciz "src/std/strings/split.lucb:69:9"
.Ltext_57:
    .asciz "src/std/strings/split.lucb:70:9"
.Ltext_58:
    .asciz "src/std/strings/split.lucb:71:5"
.Ltext_59:
    .asciz "src/std/strings/split.lucb:77:5"
.Ltext_60:
    .asciz "src/std/strings/split.lucb:83:5"
.Ltext_61:
    .asciz "src/std/strings/transform.lucb:2:5"
.Ltext_62:
    .asciz "src/std/strings/transform.lucb:9:5"
.Ltext_63:
    .asciz "src/std/strings/transform.lucb:10:9"
.Ltext_64:
    .asciz "src/std/strings/transform.lucb:11:5"
.Ltext_65:
    .asciz "src/std/strings/transform.lucb:12:9"
.Ltext_66:
    .asciz "src/std/strings/transform.lucb:13:5"
.Ltext_67:
    .asciz "src/std/strings/transform.lucb:21:9"
.Ltext_68:
    .asciz "the joined text is too large"
.Ltext_69:
    .asciz "src/std/strings/transform.lucb:22:9"
.Ltext_70:
    .asciz "src/std/strings/transform.lucb:24:9"
.Ltext_71:
    .asciz "src/std/strings/transform.lucb:29:9"
.Ltext_72:
    .asciz "src/std/strings/transform.lucb:30:9"
.Ltext_73:
    .asciz "src/std/strings/transform.lucb:31:9"
.Ltext_74:
    .asciz "src/std/strings/transform.lucb:32:13"
.Ltext_75:
    .asciz "src/std/strings/transform.lucb:33:13"
.Ltext_76:
    .asciz "src/std/strings/transform.lucb:34:9"
.Ltext_77:
    .asciz "src/std/strings/transform.lucb:35:5"
.Ltext_78:
    .asciz "src/std/strings/transform.lucb:36:5"
.Ltext_79:
    .asciz "src/std/strings/transform.lucb:43:5"
.Ltext_80:
    .asciz "src/std/strings/transform.lucb:44:5"
.Ltext_81:
    .asciz "src/std/strings/transform.lucb:52:9"
.Ltext_82:
    .asciz "integer overflow"
.Ltext_83:
    .asciz "src/std/strings/transform.lucb:53:9"
.Ltext_84:
    .asciz "src/std/strings/transform.lucb:54:5"
.Ltext_85:
    .asciz "src/std/strings/transform.lucb:55:5"
.Ltext_86:
    .asciz "src/std/strings/transform.lucb:63:9"
.Ltext_87:
    .asciz "src/std/strings/transform.lucb:64:9"
.Ltext_88:
    .asciz "src/std/strings/transform.lucb:65:5"
.Ltext_89:
    .asciz "src/std/strings/transform.lucb:66:5"
.Ltext_90:
    .asciz "src/std/strings/transform.lucb:71:5"
.Ltext_91:
    .asciz "the text is too large"
.Ltext_92:
    .asciz "src/std/strings/transform.lucb:77:5"
.Ltext_93:
    .asciz "replacement requires a nonempty needle"
.Ltext_94:
    .asciz "src/std/strings/replace.lucb:16:13"
.Ltext_95:
    .asciz "the replacement result is too large"
.Ltext_96:
    .asciz "src/std/strings/replace.lucb:18:13"
.Ltext_97:
    .asciz "src/std/strings/replace.lucb:19:9"
.Ltext_98:
    .asciz "src/std/strings/replace.lucb:20:9"
.Ltext_99:
    .asciz "the replacement result exceeds its byte limit"
.Ltext_100:
    .asciz "replacement input changed between scans"
.Ltext_101:
    .asciz "src/std/strings/replace.lucb:29:9"
.Ltext_102:
    .asciz "src/std/strings/replace.lucb:30:9"
.Ltext_103:
    .asciz "src/std/strings/replace.lucb:31:9"
.Ltext_104:
    .asciz "src/std/strings/replace.lucb:32:9"
.Ltext_105:
    .asciz "src/std/strings/replace.lucb:33:9"
.Ltext_106:
    .asciz "src/std/strings/replace.lucb:34:9"
.Ltext_107:
    .asciz "src/std/strings/replace.lucb:35:9"
.Ltext_108:
    .asciz "src/std/strings/replace.lucb:36:9"
.Ltext_109:
    .asciz "src/std/strings/replace.lucb:37:5"
.Ltext_110:
    .asciz "src/std/strings/replace.lucb:38:5"
.Ltext_111:
    .asciz "src/std/strings/replace.lucb:39:5"
.Ltext_112:
    .asciz "src/std/strings/replace.lucb:40:5"
.Ltext_113:
    .asciz "src/std/strings/replace.lucb:41:5"
.Ltext_114:
    .asciz "src/std/strings/numbers.lucb:9:5"
.Ltext_115:
    .asciz "src/std/strings/numbers.lucb:10:9"
.Ltext_116:
    .asciz "src/std/strings/numbers.lucb:17:9"
.Ltext_117:
    .asciz "src/std/strings/numbers.lucb:22:9"
.Ltext_118:
    .asciz "src/std/strings/numbers.lucb:23:5"
.Ltext_119:
    .asciz "src/std/strings/numbers.lucb:30:5"
.Ltext_120:
    .asciz "src/std/strings/numbers.lucb:35:9"
.Ltext_121:
    .asciz "src/std/strings/numbers.lucb:40:9"
.Ltext_122:
    .asciz "src/std/strings/numbers.lucb:41:5"
.Ltext_123:
    .asciz "src/std/strings/numbers.lucb:47:5"
.Ltext_124:
    .asciz "src/std/strings/numbers.lucb:48:5"
.Ltext_125:
    .asciz "src/std/strings/numbers.lucb:53:5"
.Ltext_126:
    .asciz "src/std/strings/numbers.lucb:57:9"
.Ltext_127:
    .asciz "src/std/strings/numbers.lucb:59:9"
.Ltext_128:
    .asciz "src/std/strings/numbers.lucb:61:9"
.Ltext_129:
    .asciz "src/std/strings/numbers.lucb:62:5"
.Ltext_130:
    .asciz "an integer radix must be between 2 and 36"
.Ltext_131:
    .asciz "0123456789abcdefghijklmnopqrstuvwxyz"
.Ltext_132:
    .asciz "src/std/strings/numbers.lucb:72:9"
.Ltext_133:
    .asciz "division by zero"
.Ltext_134:
    .asciz "src/std/strings/numbers.lucb:73:9"
.Ltext_135:
    .asciz "src/std/strings/numbers.lucb:74:9"
.Ltext_136:
    .asciz "src/std/strings/numbers.lucb:78:9"
.Ltext_137:
    .asciz "src/std/strings/numbers.lucb:79:9"
.Ltext_138:
    .asciz "the destination cannot hold the formatted integer"
.Ltext_139:
    .asciz "src/std/strings/numbers.lucb:84:9"
.Ltext_140:
    .asciz "src/std/strings/numbers.lucb:85:9"
.Ltext_141:
    .asciz "src/std/strings/numbers.lucb:86:5"
.Ltext_142:
    .asciz "src/std/strings/floats.lucb:20:5"
.Ltext_143:
    .asciz "src/std/strings/floats.lucb:25:5"
.Ltext_144:
    .asciz "invalid floating-point text"
.Ltext_145:
    .asciz "src/std/strings/floats.lucb:38:9"
.Ltext_146:
    .asciz "the decimal value exceeds f64 range"
.Ltext_147:
    .asciz "src/std/strings/floats.lucb:53:5"
.Ltext_148:
    .asciz "src/std/strings/floats.lucb:61:9"
.Ltext_149:
    .asciz "the decimal value exceeds f32 range"
.Ltext_150:
    .asciz "src/std/strings/floats.lucb:76:5"
.Ltext_151:
    .asciz "src/std/strings/floats.lucb:85:5"
.Ltext_152:
    .asciz "src/std/strings/floats.lucb:90:5"
.Ltext_153:
    .asciz "C"
.Ltext_154:
    .asciz "the C numeric locale could not be created"
.Ltext_155:
    .asciz "src/std/strings/floats.lucb:100:9"
.Ltext_156:
    .asciz "the numeric locale is closed"
.Ltext_157:
    .asciz "src/std/strings/floats.lucb:103:9"
.Ltext_158:
    .asciz "nan"
.Ltext_159:
    .asciz "shift count out of range"
.Ltext_160:
    .asciz "src/std/strings/floats.lucb:119:9"
.Ltext_161:
    .asciz "-inf"
.Ltext_162:
    .asciz "inf"
.Ltext_163:
    .asciz "the destination cannot hold the formatted floating-point value"
.Ltext_164:
    .asciz "src/std/strings/floats.lucb:123:9"
.Ltext_165:
    .asciz "the thread numeric locale could not be selected"
.Ltext_166:
    .asciz "src/std/strings/floats.lucb:139:9"
.Ltext_167:
    .asciz "%.*g"
.Ltext_168:
    .asciz "floating-point formatting failed"
.Ltext_169:
    .asciz "src/std/strings/floats.lucb:145:5"
.Ltext_170:
    .asciz "a valid thread locale could not be restored"
.Ltext_171:
    .asciz "src/std/strings/floats.lucb:149:5"
.Ltext_172:
    .asciz "floating-point conversion ran out of memory"
.Ltext_173:
    .asciz "floating-point conversion failed"
.Ltext_174:
    .asciz "floating-point conversion did not return an end pointer"
.Ltext_175:
    .asciz "src/std/strings/floats.lucb:158:5"
.Ltext_176:
    .asciz "floating-point conversion did not consume the input"
.Ltext_177:
    .asciz "src/std/strings/floats.lucb:166:5"
.Ltext_178:
    .asciz "src/std/strings/floats.lucb:170:5"
.Ltext_179:
    .asciz "infinity"
.Ltext_180:
    .asciz "src/std/strings/floats.lucb:176:5"
.Ltext_181:
    .asciz "src/std/strings/floats.lucb:177:9"
.Ltext_182:
    .asciz "src/std/strings/floats.lucb:178:9"
.Ltext_183:
    .asciz "src/std/strings/floats.lucb:179:5"
.Ltext_184:
    .asciz "src/std/strings/floats.lucb:180:9"
.Ltext_185:
    .asciz "src/std/strings/floats.lucb:181:9"
.Ltext_186:
    .asciz "src/std/strings/floats.lucb:182:13"
.Ltext_187:
    .asciz "src/std/strings/floats.lucb:183:13"
.Ltext_188:
    .asciz "src/std/strings/floats.lucb:186:5"
.Ltext_189:
    .asciz "src/std/strings/floats.lucb:187:9"
.Ltext_190:
    .asciz "src/std/strings/floats.lucb:188:9"
.Ltext_191:
    .asciz "src/std/strings/floats.lucb:189:13"
.Ltext_192:
    .asciz "src/std/strings/floats.lucb:191:9"
.Ltext_193:
    .asciz "src/std/strings/floats.lucb:192:13"
.Ltext_194:
    .asciz "src/std/strings/floats.lucb:195:5"
.Ltext_195:
    .asciz "src/std/strings/floats.lucb:198:5"
.Ltext_196:
    .asciz "src/std/strings/floats.lucb:205:9"
.Ltext_197:
    .asciz "src/std/strings/floats.lucb:206:9"
.Ltext_198:
    .asciz "src/std/strings/floats.lucb:207:9"
.Ltext_199:
    .asciz "src/std/strings/floats.lucb:209:9"
.Ltext_200:
    .asciz "src/std/strings/floats.lucb:210:5"
.Ltext_201:
    .asciz "the builder capacity is too large"
.Ltext_202:
    .asciz "src/std/strings/builder.lucb:15:9"
.Ltext_203:
    .asciz "src/std/strings/builder.lucb:19:9"
.Ltext_204:
    .asciz "src/std/strings/builder.lucb:23:9"
.Ltext_205:
    .asciz "the string builder is destroyed"
.Ltext_206:
    .asciz "the builder size overflows"
.Ltext_207:
    .asciz "src/std/strings/builder.lucb:52:9"
.Ltext_208:
    .asciz "src/std/strings/builder.lucb:53:13"
.Ltext_209:
    .asciz "src/std/strings/builder.lucb:54:13"
.Ltext_210:
    .asciz "the builder input is outside its initialized text"
.Ltext_211:
    .asciz "src/std/strings/builder.lucb:59:13"
.Ltext_212:
    .asciz "src/std/strings/builder.lucb:61:13"
.Ltext_213:
    .asciz "src/std/strings/builder.lucb:62:9"
.Ltext_214:
    .asciz "src/std/strings/builder.lucb:63:9"
.Ltext_215:
    .asciz "src/std/strings/builder.lucb:72:13"
.Ltext_216:
    .asciz "src/std/strings/builder.lucb:73:9"
.Ltext_217:
    .asciz "truncation cannot extend the builder"
.Ltext_218:
    .asciz "src/std/strings/builder.lucb:87:9"
.Ltext_219:
    .asciz "src/std/strings/builder.lucb:92:13"
.Ltext_220:
    .asciz "src/std/memory.lucb:326:9"
.Ltext_221:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_222:
    .asciz "null_foreign"
.Ltext_223:
    .asciz "src/std/memory.lucb:342:5"
.Ltext_224:
    .asciz "src/std/memory.lucb:343:5"
.Ltext_225:
    .asciz "src/std/memory.lucb:332:9"
.Ltext_226:
    .asciz "src/std/memory.lucb:334:9"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_strings_17invalid_separator
    .type lb_strings_17invalid_separator, @object
    .p2align 2
lb_strings_17invalid_separator:
    .zero 4

    .bss
    .globl lb_strings_16output_too_large
    .type lb_strings_16output_too_large, @object
    .p2align 2
lb_strings_16output_too_large:
    .zero 4

    .bss
    .globl lb_strings_13invalid_radix
    .type lb_strings_13invalid_radix, @object
    .p2align 2
lb_strings_13invalid_radix:
    .zero 4

    .bss
    .globl lb_strings_14invalid_number
    .type lb_strings_14invalid_number, @object
    .p2align 2
lb_strings_14invalid_number:
    .zero 4

    .bss
    .globl lb_strings_19number_out_of_range
    .type lb_strings_19number_out_of_range, @object
    .p2align 2
lb_strings_19number_out_of_range:
    .zero 4

    .bss
    .globl lb_strings_17conversion_failed
    .type lb_strings_17conversion_failed, @object
    .p2align 2
lb_strings_17conversion_failed:
    .zero 4

    .section .note.GNU-stack,"",@progbits
