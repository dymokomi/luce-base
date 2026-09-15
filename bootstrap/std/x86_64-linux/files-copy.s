    .text

    .p2align 4
    .globl lb_files_copy_0init
    .type lb_files_copy_0init, @function
lb_files_copy_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_files_9copy_file
    .type lb_files_9copy_file, @function
lb_files_9copy_file:
    pushq %rbp
    movq %rsp, %rbp
    subq $6336, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -104(%rbp)
    movq %rdx, -120(%rbp)
    movq %rcx, -136(%rbp)
    movl %r8d, -152(%rbp)
    movl %r9d, -168(%rbp)
    movq 16(%rbp), %rax
    movl %eax, -184(%rbp)
    movq 24(%rbp), %rax
    movq %rax, -200(%rbp)
    leaq -200(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -6312(%rbp)
    movq -6312(%rbp), %rax
    testq %rax, %rax
    jne .L1_4
    jmp .L1_2
.L1_4:
.L1_1:
    movl $0, %eax
    movq -6312(%rbp), %r10
    movb %al, (%r10)
    jmp .L1_3
.L1_2:
.L1_3:
    leaq -208(%rbp), %rax
    movq %rax, -6320(%rbp)
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rsi
    movl $0, %edx
    movl $420, %ecx
    leaq -248(%rbp), %rdi
    call lb_files_File_open@PLT
    leaq -248(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_6
    jmp .L1_5
.L1_6:
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
.L1_5:
    movq %r14, %r10
    movq -6320(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -376(%rbp), %rax
    movq %rax, -6328(%rbp)
    movq -6320(%rbp), %rsi
    leaq -536(%rbp), %rdi
    call lb_files_File_metadata@PLT
    leaq -536(%rbp), %rbx
    movq $152, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_9
    jmp .L1_8
.L1_9:
    movq $128, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq -88(%rbp), %r14
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -6320(%rbp), %rdi
    call lb_files_File_destroy@PLT
    movq %r14, %rsi
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
.L1_8:
    movq %rbx, %r10
    movq -6328(%rbp), %r11
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
    movups 96(%r10), %xmm8
    movups %xmm8, 96(%r11)
    movups 112(%r10), %xmm8
    movups %xmm8, 112(%r11)
    movq -6328(%rbp), %r10
    movzbl (%r10), %r12d
    movl $2, %ecx
    cmpl %ecx, %r12d
    jne .L1_12
.L1_11:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_12is_directory(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_0(%rip), %r14
    leaq -552(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $42, %rax
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
    movq -6320(%rbp), %rdi
    call lb_files_File_destroy@PLT
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
.L1_12:
.L1_13:
    leaq -120(%rbp), %rax
    movq %rax, -6264(%rbp)
    movq -6264(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -6272(%rbp)
    movq -6272(%rbp), %rax
    leaq -5544(%rbp), %r10
    movq %rax, (%r10)
    leaq -5672(%rbp), %r14
    movq -6272(%rbp), %rsi
    movl $0, %edx
    leaq -5984(%rbp), %rdi
    call lb_files_metadata@PLT
    leaq -5984(%rbp), %rbx
    movq $152, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_64
    jmp .L1_63
.L1_64:
    movq $128, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq -5824(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L1_61
.L1_63:
    leaq -5800(%rbp), %r12
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
    movups 64(%r10), %xmm8
    movups %xmm8, 64(%r11)
    movups 80(%r10), %xmm8
    movups %xmm8, 80(%r11)
    movups 96(%r10), %xmm8
    movups %xmm8, 96(%r11)
    movups 112(%r10), %xmm8
    movups %xmm8, 112(%r11)
    jmp .L1_62
.L1_61:
    movq %r14, %r10
    movl (%r10), %ebx
    leaq lb_files_missing(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    cmpl %r12d, %ebx
    jne .L1_66
.L1_65:
    leaq -6120(%rbp), %rbx
    movq %rbx, %rdi
    xorl %esi, %esi
    movq $136, %rdx
    call memset@PLT
    leaq -5528(%rbp), %r12
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $136, %rdx
    call memcpy@PLT
    movq $160, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -720(%rbp), %rdi
    movq %r12, %rsi
    movq $168, %rdx
    call memcpy@PLT
    jmp .L1_71
.L1_66:
.L1_67:
    leaq -5528(%rbp), %r12
    movq $136, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl %ebx, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $8, %rcx
    addq %rcx, %r15
    movq %r13, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $160, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -720(%rbp), %rdi
    movq %r12, %rsi
    movq $168, %rdx
    call memcpy@PLT
    jmp .L1_71
.L1_62:
    movq %r12, %r10
    movq %r14, %r11
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
    movups 96(%r10), %xmm8
    movups %xmm8, 96(%r11)
    movups 112(%r10), %xmm8
    movups %xmm8, 112(%r11)
    leaq -6256(%rbp), %rbx
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
    movups 64(%r10), %xmm8
    movups %xmm8, 64(%r11)
    movups 80(%r10), %xmm8
    movups %xmm8, 80(%r11)
    movups 96(%r10), %xmm8
    movups %xmm8, 96(%r11)
    movups 112(%r10), %xmm8
    movups %xmm8, 112(%r11)
    movq $128, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -5528(%rbp), %r13
    movq %r13, %rdi
    movq %rbx, %rsi
    movq $136, %rdx
    call memcpy@PLT
    movq $160, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -720(%rbp), %rdi
    movq %r13, %rsi
    movq $168, %rdx
    call memcpy@PLT
.L1_71:
    leaq -720(%rbp), %r12
    movq $160, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_19
    jmp .L1_18
.L1_19:
    movq $136, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -6320(%rbp), %rdi
    call lb_files_File_destroy@PLT
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
.L1_18:
    movq $128, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_21
    jmp .L1_16
.L1_21:
    leaq -848(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
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
    movups 96(%r10), %xmm8
    movups %xmm8, 96(%r11)
    movups 112(%r10), %xmm8
    movups %xmm8, 112(%r11)
.L1_15:
    leaq -152(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_23
.L1_22:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_14already_exists(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_1(%rip), %r13
    leaq -864(%rbp), %r14
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -6320(%rbp), %rdi
    call lb_files_File_destroy@PLT
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
.L1_23:
.L1_24:
    movq -6328(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_29
    jmp .L1_72
.L1_72:
    movl %r12d, %r13d
    jmp .L1_30
.L1_29:
    movq -6328(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %r12
    sete %al
    movzbl %al, %r13d
.L1_30:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L1_26
    jmp .L1_27
.L1_26:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
    leaq -880(%rbp), %r14
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -6320(%rbp), %rdi
    call lb_files_File_destroy@PLT
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
.L1_27:
.L1_28:
    movq %rbx, %r10
    movzbl (%r10), %r12d
    movl $2, %ecx
    cmpl %ecx, %r12d
    jne .L1_33
.L1_32:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_12is_directory(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_3(%rip), %r13
    leaq -896(%rbp), %r14
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -6320(%rbp), %rdi
    call lb_files_File_destroy@PLT
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
.L1_33:
.L1_34:
    jmp .L1_17
.L1_16:
.L1_17:
    leaq -952(%rbp), %r13
    leaq -168(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    leaq -184(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movq -6272(%rbp), %rsi
    movl %ebx, %edx
    movl %r12d, %ecx
    leaq -1040(%rbp), %rdi
    call lb_files_Replacement_prepare@PLT
    leaq -1040(%rbp), %r12
    movq $80, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_37
    jmp .L1_36
.L1_37:
    movq $56, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -6320(%rbp), %rdi
    call lb_files_File_destroy@PLT
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
.L1_36:
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq -5136(%rbp), %rax
    movq %rax, -6280(%rbp)
    movq -6280(%rbp), %rdi
    xorl %esi, %esi
    movq $4096, %rdx
    call memset@PLT
    leaq -5152(%rbp), %rax
    movq %rax, -6288(%rbp)
    movq -6320(%rbp), %rax
    movq -6288(%rbp), %r10
    movq %rax, (%r10)
    leaq lb_vt_files_File_Reader(%rip), %rax
    movq %rax, -6296(%rbp)
    movq -6288(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq -6296(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    leaq -5168(%rbp), %rax
    movq %rax, -6304(%rbp)
    movq -6304(%rbp), %r10
    movq %r14, (%r10)
    leaq lb_vt_files_TemporaryFile_Writer(%rip), %r14
    movq -6304(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    leaq -5184(%rbp), %r14
    movq -6280(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $4096, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq -136(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %r14, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq -6288(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq -6304(%rbp), %r10
    movq 0(%r10), %rcx
    movq 8(%r10), %r8
    movq %r15, %r9
    leaq -5224(%rbp), %rdi
    call lb_io_10copy_limit@PLT
    addq $32, %rsp
    leaq -5224(%rbp), %rbx
    movq $32, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L1_40
    jmp .L1_39
.L1_40:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq -88(%rbp), %r14
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %rdi
    call lb_files_Replacement_destroy@PLT
    movq -6320(%rbp), %rdi
    call lb_files_File_destroy@PLT
    movq %r14, %rsi
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
.L1_39:
    movq %rbx, %r10
    movq (%r10), %r12
    cmpq %r12, %r15
    jne .L1_43
.L1_42:
.L1_48:
    leaq -5240(%rbp), %rbx
    movq -6280(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq $1, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq -6320(%rbp), %rsi
    movq %rbx, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -5280(%rbp), %rdi
    call lb_files_File_read@PLT
    leaq -5280(%rbp), %r14
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_51
    jmp .L1_50
.L1_51:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %rbx, %r10
    movq %r15, %r11
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
    movq %r13, %rdi
    call lb_files_Replacement_destroy@PLT
    movq -6320(%rbp), %rdi
    call lb_files_File_destroy@PLT
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
.L1_50:
    movq %r14, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L1_46
.L1_45:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_9too_large(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_6(%rip), %r14
    leaq -5296(%rbp), %r15
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %rdi
    call lb_files_Replacement_destroy@PLT
    movq -6320(%rbp), %rdi
    call lb_files_File_destroy@PLT
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
.L1_46:
.L1_47:
    jmp .L1_44
.L1_43:
.L1_44:
    movq -6320(%rbp), %rsi
    leaq -5328(%rbp), %rdi
    call lb_files_File_close@PLT
    leaq -5328(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_55
    jmp .L1_54
.L1_55:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r10
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
    movq %r13, %rdi
    call lb_files_Replacement_destroy@PLT
    movq -6320(%rbp), %rdi
    call lb_files_File_destroy@PLT
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
.L1_54:
    leaq -152(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movq %r13, %rsi
    movq -6272(%rbp), %rdx
    movl %ebx, %ecx
    movq -6312(%rbp), %r8
    leaq -5360(%rbp), %rdi
    call lb_files_Replacement_finish@PLT
    leaq -5360(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_58
    jmp .L1_57
.L1_58:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r14, %r10
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
    movq %r13, %rdi
    call lb_files_Replacement_destroy@PLT
    movq -6320(%rbp), %rdi
    call lb_files_File_destroy@PLT
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
.L1_57:
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r13, %rdi
    call lb_files_Replacement_destroy@PLT
    movq -6320(%rbp), %rdi
    call lb_files_File_destroy@PLT
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

    .section .init_array,"aw"
    .p2align 3
    .quad lb_files_copy_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "a directory cannot be copied as file bytes"
.Ltext_1:
    .asciz "the copy destination already exists"
.Ltext_2:
    .asciz "source and destination identify the same file"
.Ltext_3:
    .asciz "the copy destination is a directory"
.Ltext_4:
    .asciz "src/std/files/copy.lucb:30:9"
.Ltext_5:
    .asciz "index out of bounds"
.Ltext_6:
    .asciz "the copy source exceeds the requested limit"
.Ltext_7:
    .asciz "unreachable"
.Ltext_8:
    .asciz "src/std/files/copy.lucb:34:5"
.Ltext_9:
    .asciz "src/std/files/copy.lucb:41:5"

    .section .data.rel.ro,"aw"
    .p2align 3
    .globl lb_vt_files_File_Reader
    .weak lb_vt_files_File_Reader
lb_vt_files_File_Reader:
    .quad lb_files_File_read
    .globl lb_vt_files_TemporaryFile_Writer
    .weak lb_vt_files_TemporaryFile_Writer
lb_vt_files_TemporaryFile_Writer:
    .quad lb_files_TemporaryFile_write

    .section .note.GNU-stack,"",@progbits
