    .text

    .p2align 4
    .globl lb_files_entries_0init
    .type lb_files_entries_0init, @function
lb_files_entries_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_files_exists
    .type lb_files_exists, @function
lb_files_exists:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -104(%rbp), %rdi
    call lb_files_14exists_checked@PLT
    leaq -104(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_4
    jmp .L1_3
.L1_4:
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
    jmp .L1_1
.L1_3:
    movq %r12, %r10
    movzbl (%r10), %ebx
    jmp .L1_2
.L1_1:
    movl $0, %eax
    movl %eax, %ebx
    jmp .L1_2
.L1_5:
.L1_2:
    movzbl %bl, %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_6:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_14exists_checked
    .type lb_files_14exists_checked, @function
lb_files_14exists_checked:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -104(%rbp)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    movl $0, %esi
    call access@PLT
    movl %eax, %r12d
.L2_1:
    movl $0, %ecx
    cmpl %ecx, %r12d
    setl %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L2_4
    jmp .L2_17
.L2_17:
    movl %r13d, %r14d
    jmp .L2_5
.L2_4:
    call lb_c_errno@PLT
    movl %eax, %r13d
    movl $4, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L2_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L2_2
    jmp .L2_3
.L2_2:
    movq %rbx, %rdi
    movl $0, %esi
    call access@PLT
    movl %eax, %r12d
    jmp .L2_1
.L2_3:
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L2_7
.L2_6:
    leaq -88(%rbp), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
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
.L2_9:
    jmp .L2_8
.L2_7:
.L2_8:
    call lb_c_errno@PLT
    movl %eax, %ebx
    movl $2, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L2_18
    jmp .L2_13
.L2_18:
    movl %r12d, %r13d
    jmp .L2_14
.L2_13:
    movl $20, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r13d
.L2_14:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L2_10
    jmp .L2_11
.L2_10:
    leaq -88(%rbp), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
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
.L2_15:
    jmp .L2_12
.L2_11:
.L2_12:
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl %ebx, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_2(%rip), %r14
    leaq -120(%rbp), %r15
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
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
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
.L2_16:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_16create_directory
    .type lb_files_16create_directory, @function
lb_files_16create_directory:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %rsi, -80(%rbp)
    movl %edx, -96(%rbp)
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl $4095, %ecx
    cmpl %ecx, %ebx
    jbe .L3_2
.L3_1:
    leaq -64(%rbp), %rbx
    leaq lb_files_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_4(%rip), %r12
    leaq -112(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $49, %rax
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
.L3_4:
    jmp .L3_3
.L3_2:
.L3_3:
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    movl %ebx, %esi
    call mkdir@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L3_6
.L3_5:
    leaq -64(%rbp), %rbx
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_5(%rip), %r12
    leaq -128(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $34, %rax
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
.L3_8:
    jmp .L3_7
.L3_6:
.L3_7:
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
    .globl lb_files_11remove_file
    .type lb_files_11remove_file, @function
lb_files_11remove_file:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %rsi, -80(%rbp)
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call unlink@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L4_2
.L4_1:
    leaq -64(%rbp), %rbx
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_6(%rip), %r12
    leaq -96(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $35, %rax
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
.L4_4:
    jmp .L4_3
.L4_2:
.L4_3:
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
    .globl lb_files_16remove_directory
    .type lb_files_16remove_directory, @function
lb_files_16remove_directory:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %rsi, -80(%rbp)
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call rmdir@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L5_2
.L5_1:
    leaq -64(%rbp), %rbx
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_7(%rip), %r12
    leaq -96(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $34, %rax
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
.L5_4:
    jmp .L5_3
.L5_2:
.L5_3:
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
    .globl lb_files_rename
    .type lb_files_rename, @function
lb_files_rename:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %rsi, -80(%rbp)
    movq %rdx, -96(%rbp)
    movl %ecx, -112(%rbp)
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_1
    jmp .L6_2
.L6_1:
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    call rename@PLT
    movl %eax, %ebx
    jmp .L6_3
.L6_2:
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movl $4294967196, %edi
    movq %rbx, %rsi
    movl $4294967196, %edx
    movq %r12, %rcx
    movl $1, %r8d
    call renameat2@PLT
    movl %eax, %ebx
.L6_3:
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L6_5
.L6_4:
    leaq -64(%rbp), %rbx
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_8(%rip), %r12
    leaq -128(%rbp), %r13
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_7:
    jmp .L6_6
.L6_5:
.L6_6:
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
    .globl lb_files_14create_symlink
    .type lb_files_14create_symlink, @function
lb_files_14create_symlink:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %rsi, -80(%rbp)
    movq %rdx, -96(%rbp)
    leaq -112(%rbp), %r10
    movw %cx, 0(%r10)
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %rdi
    movq %r12, %rsi
    call symlink@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L7_2
.L7_1:
    leaq -64(%rbp), %rbx
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_9(%rip), %r12
    leaq -128(%rbp), %r13
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
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_4:
    jmp .L7_3
.L7_2:
.L7_3:
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
    .globl lb_files_16create_hard_link
    .type lb_files_16create_hard_link, @function
lb_files_16create_hard_link:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %rsi, -80(%rbp)
    movq %rdx, -96(%rbp)
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movl $4294967196, %edi
    movq %rbx, %rsi
    movl $4294967196, %edx
    movq %r12, %rcx
    movl $0, %r8d
    call linkat@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L8_2
.L8_1:
    leaq -64(%rbp), %rbx
    call lb_c_errno@PLT
    movl %eax, %r12d
    movl %r12d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_10(%rip), %r12
    leaq -112(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $34, %rax
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
.L8_4:
    jmp .L8_3
.L8_2:
.L8_3:
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
    .globl lb_files_12read_symlink
    .type lb_files_12read_symlink, @function
lb_files_12read_symlink:
    pushq %rbp
    movq %rsp, %rbp
    subq $576, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -112(%rbp)
    movq %rdx, -128(%rbp)
    leaq -128(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -496(%rbp)
    leaq -136(%rbp), %r12
    movq -496(%rbp), %rdi
    movq $1, %rsi
    movl $64, %edx
    movq %r12, %rcx
    call lb_core_6qadd_u@PLT
    movl %eax, %r13d
    leaq -152(%rbp), %r14
    movq %r12, %r10
    movq (%r10), %r12
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movb %r13b, (%r10)
    movq %r14, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L9_1
    jmp .L9_2
.L9_1:
    jmp .L9_3
.L9_2:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_memory_exhausted(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_11(%rip), %r13
    leaq -168(%rbp), %r14
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
.L9_4:
.L9_3:
    leaq -184(%rbp), %rax
    movq %rax, -536(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -544(%rbp)
    leaq -232(%rbp), %rax
    movq %rax, -552(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r12
    jbe .L9_6
.L9_5:
    movq -552(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_12(%rip), %r13
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    addq %rcx, %r12
    movq $47, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -552(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L9_7
.L9_6:
    movq -544(%rbp), %r10
    movq (%r10), %r13
    movq -544(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L9_8
    jmp .L9_9
.L9_9:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_8:
    movq %r14, %r10
    movq (%r10), %r15
    movq %r13, %rsi
    movq %r12, %rdx
    movq $1, %rcx
    leaq -256(%rbp), %rdi
    movq %r15, %r11
    call *%r11
    leaq -256(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    movq $0, %rcx
    cmpq %rcx, %r12
    setne %al
    movzbl %al, %eax
    movl %eax, -504(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl -504(%rbp), %eax
    andl %r15d, %eax
    movl %eax, -512(%rbp)
    movl -512(%rbp), %eax
    testl %eax, %eax
    jne .L9_10
    jmp .L9_11
.L9_10:
    movq -552(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_15(%rip), %r12
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
    movq -552(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L9_7
.L9_11:
    movq %rbx, %r10
    movq (%r10), %r13
    movq -552(%rbp), %r10
    movq %r13, (%r10)
    movq -552(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq -552(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
.L9_7:
    movq -552(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L9_13
    jmp .L9_12
.L9_13:
    movq -552(%rbp), %rax
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
.L9_14:
.L9_12:
    movq -552(%rbp), %r10
    movq -536(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -112(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq -536(%rbp), %r10
    movq (%r10), %r12
    movq -536(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -520(%rbp)
    movq -520(%rbp), %r10
    movq (%r10), %r14
    movq %rbx, %rdi
    movq %r12, %rsi
    movq %r14, %rdx
    call readlink@PLT
    movq %rax, %r12
    movq %r12, %rax
    movq %rax, -560(%rbp)
.L9_15:
    movq -560(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    setl %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L9_18
    jmp .L9_51
.L9_51:
    movl %r14d, %r15d
    jmp .L9_19
.L9_18:
    call lb_c_errno@PLT
    movl %eax, %r15d
    movl $4, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
.L9_19:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L9_16
    jmp .L9_17
.L9_16:
    movq -536(%rbp), %r10
    movq (%r10), %r12
    movq -520(%rbp), %r10
    movq (%r10), %r14
    movq %rbx, %rdi
    movq %r12, %rsi
    movq %r14, %rdx
    call readlink@PLT
    movq %rax, %r12
    movq %r12, %rax
    movq %rax, -560(%rbp)
    jmp .L9_15
.L9_17:
    testl %r14d, %r14d
    jne .L9_20
    jmp .L9_21
.L9_20:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    call lb_c_errno@PLT
    movl %eax, %r14d
    movl %r14d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_16(%rip), %r14
    leaq -272(%rbp), %r15
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
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -288(%rbp), %r12
    movq -536(%rbp), %r10
    movq (%r10), %r14
    movq -520(%rbp), %r10
    movq (%r10), %r15
    movq %r12, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq -544(%rbp), %r10
    movq (%r10), %r14
    movq -544(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L9_24
    jmp .L9_23
.L9_24:
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r14, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L9_23:
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
.L9_25:
    jmp .L9_22
.L9_21:
.L9_22:
    movq -560(%rbp), %rax
    movq -496(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L9_27
.L9_26:
    leaq -96(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_9too_large(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_18(%rip), %r14
    leaq -304(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $43, %rax
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
    leaq -320(%rbp), %r12
    movq -536(%rbp), %r10
    movq (%r10), %r14
    movq -520(%rbp), %r10
    movq (%r10), %r15
    movq %r12, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq -544(%rbp), %r10
    movq (%r10), %r14
    movq -544(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L9_30
    jmp .L9_29
.L9_30:
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r14, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L9_29:
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
.L9_31:
    jmp .L9_28
.L9_27:
.L9_28:
    leaq -336(%rbp), %rax
    movq %rax, -568(%rbp)
    movq -560(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    leaq -384(%rbp), %rax
    movq %rax, -576(%rbp)
    movabsq $4611686018427387904, %rcx
    cmpq %rcx, %r14
    jbe .L9_33
.L9_32:
    movq -576(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_12(%rip), %r14
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
    movq -576(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L9_34
.L9_33:
    movq -544(%rbp), %r10
    movq (%r10), %rbx
    movq -544(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L9_35
    jmp .L9_36
.L9_36:
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_13(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_35:
    movq %r12, %r10
    movq (%r10), %r13
    movq %rbx, %rsi
    movq %r14, %rdx
    movq $1, %rcx
    leaq -408(%rbp), %rdi
    movq %r13, %r11
    call *%r11
    leaq -408(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r14
    setne %al
    movzbl %al, %eax
    movl %eax, -528(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl -528(%rbp), %eax
    movl %r13d, %ecx
    movl %eax, %r13d
    andl %ecx, %r13d
    testl %r13d, %r13d
    jne .L9_37
    jmp .L9_38
.L9_37:
    movq -576(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_15(%rip), %r12
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
    movq -576(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L9_34
.L9_38:
    movq %r15, %r10
    movq (%r10), %rbx
    movq -576(%rbp), %r10
    movq %rbx, (%r10)
    movq -576(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq -576(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L9_34:
    movq -576(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L9_40
    jmp .L9_39
.L9_40:
    movq -576(%rbp), %rax
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
    leaq -424(%rbp), %rbx
    movq -536(%rbp), %r10
    movq (%r10), %r13
    movq -520(%rbp), %r10
    movq (%r10), %r14
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r14, (%r10)
    movq -544(%rbp), %r10
    movq (%r10), %r13
    movq -544(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L9_42
    jmp .L9_41
.L9_42:
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
.L9_41:
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
.L9_43:
.L9_39:
    movq -576(%rbp), %r10
    movq -568(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -568(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -536(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -560(%rbp), %r8
    call lb_memory_copy_0g1_u8@PLT
    movq -568(%rbp), %r10
    movq (%r10), %rbx
    movq -568(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq -560(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -560(%rbp), %rcx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -568(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq (%r10), %rbx
    movq $1, %rcx
    addq %rcx, %rbx
    movq $0, %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -560(%rbp), %rax
    cmpq %rbx, %rax
    jb 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -560(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L9_44
.L9_45:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_23(%rip), %rsi
    call lb_core_7trap_at@PLT
.L9_44:
    leaq -440(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq -560(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -456(%rbp), %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
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
    leaq -472(%rbp), %rbx
    movq -536(%rbp), %r10
    movq (%r10), %r14
    movq -520(%rbp), %r10
    movq (%r10), %r15
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r15, (%r10)
    movq -544(%rbp), %r10
    movq (%r10), %r14
    movq -544(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L9_47
    jmp .L9_46
.L9_47:
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
.L9_46:
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
.L9_48:
    leaq -184(%rbp), %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    leaq -488(%rbp), %r13
    movq %rbx, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_27(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq %r13, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L9_50
    jmp .L9_49
.L9_50:
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
.L9_49:
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .weak lb_memory_copy_0g1_u8
    .type lb_memory_copy_0g1_u8, @function
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
    jne .L10_11
    jmp .L10_4
.L10_11:
    movl %r13d, %r14d
    jmp .L10_5
.L10_4:
    leaq -64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L10_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L10_1
    jmp .L10_2
.L10_1:
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
    leaq .Ltext_24(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L10_3
.L10_2:
.L10_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L10_7
.L10_6:
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
    jne .L10_9
    jmp .L10_10
.L10_10:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_26(%rip), %rsi
    call lb_core_7trap_at@PLT
.L10_9:
    jmp .L10_8
.L10_7:
.L10_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_files_entries_0init
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
    .asciz "src/std/files/entries.lucb:8:9"
.Ltext_2:
    .asciz "the path could not be inspected"
.Ltext_3:
    .asciz "src/std/files/entries.lucb:30:5"
.Ltext_4:
    .asciz "directory permissions must fit the Unix mode bits"
.Ltext_5:
    .asciz "the directory could not be created"
.Ltext_6:
    .asciz "the file entry could not be removed"
.Ltext_7:
    .asciz "the directory could not be removed"
.Ltext_8:
    .asciz "the entry could not be renamed"
.Ltext_9:
    .asciz "the symbolic link could not be created"
.Ltext_10:
    .asciz "the hard link could not be created"
.Ltext_11:
    .asciz "the link target limit overflows"
.Ltext_12:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_13:
    .asciz "memory.unset"
.Ltext_14:
    .asciz "src/std/files/entries.lucb:136:5"
.Ltext_15:
    .asciz "memory.exhausted"
.Ltext_16:
    .asciz "the symbolic link could not be read"
.Ltext_17:
    .asciz "src/std/files/entries.lucb:142:9"
.Ltext_18:
    .asciz "the link target exceeds the requested limit"
.Ltext_19:
    .asciz "src/std/files/entries.lucb:144:9"
.Ltext_20:
    .asciz "src/std/files/entries.lucb:146:5"
.Ltext_21:
    .asciz "src/std/files/entries.lucb:148:5"
.Ltext_22:
    .asciz "src/std/files/entries.lucb:149:5"
.Ltext_23:
    .asciz "index out of bounds"
.Ltext_24:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_25:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_26:
    .asciz "null_foreign"
.Ltext_27:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
