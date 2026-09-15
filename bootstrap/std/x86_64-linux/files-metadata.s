    .text

    .p2align 4
    .globl lb_files_metadata_0init
    .type lb_files_metadata_0init, @function
lb_files_metadata_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_files_9file_kind
    .type lb_files_9file_kind, @function
lb_files_9file_kind:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movl %edi, -32(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl $61440, %ecx
    andl %ecx, %ebx
    movl $32768, %ecx
    cmpl %ecx, %ebx
    jne .L1_2
.L1_1:
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_4:
    jmp .L1_3
.L1_2:
.L1_3:
    movl $16384, %ecx
    cmpl %ecx, %ebx
    jne .L1_6
.L1_5:
    movl $2, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_8:
    jmp .L1_7
.L1_6:
.L1_7:
    movl $40960, %ecx
    cmpl %ecx, %ebx
    jne .L1_10
.L1_9:
    movl $3, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_12:
    jmp .L1_11
.L1_10:
.L1_11:
    movl $4096, %ecx
    cmpl %ecx, %ebx
    jne .L1_14
.L1_13:
    movl $4, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_16:
    jmp .L1_15
.L1_14:
.L1_15:
    movl $49152, %ecx
    cmpl %ecx, %ebx
    jne .L1_18
.L1_17:
    movl $5, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_20:
    jmp .L1_19
.L1_18:
.L1_19:
    movl $24576, %ecx
    cmpl %ecx, %ebx
    jne .L1_22
.L1_21:
    movl $6, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_24:
    jmp .L1_23
.L1_22:
.L1_23:
    movl $8192, %ecx
    cmpl %ecx, %ebx
    jne .L1_26
.L1_25:
    movl $7, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_28:
    jmp .L1_27
.L1_26:
.L1_27:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_29:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_14linux_metadata
    .type lb_files_14linux_metadata, @function
lb_files_14linux_metadata:
    pushq %rbp
    movq %rsp, %rbp
    subq $608, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq 16(%rbp), %r10
    leaq -320(%rbp), %r11
    movq %r11, %rdi
    movq %r10, %rsi
    movq $144, %rdx
    call memcpy@PLT
    leaq -448(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movups %xmm8, 80(%r11)
    movups %xmm8, 96(%r11)
    movups %xmm8, 112(%r11)
    leaq -320(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r13d
    movl %r13d, %edi
    call lb_files_9file_kind@PLT
    movl %eax, %r13d
    movq %r14, %r10
    movb %r13b, (%r10)
    movq %r12, %r10
    movl (%r10), %r12d
    movl $4095, %ecx
    andl %ecx, %r12d
    movq $4, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq %rbx, %r10
    movq (%r10), %r12
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $32, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $28, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq $40, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq $44, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $48, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $72, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    leaq -552(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -568(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -552(%rbp), %rax
    movq %rax, -576(%rbp)
    movq -576(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -584(%rbp)
    movq -584(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -576(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -592(%rbp)
    movq -592(%rbp), %r10
    movq (%r10), %r15
    movq $8, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -600(%rbp)
    movq -600(%rbp), %r10
    movl %r15d, (%r10)
    leaq -536(%rbp), %rax
    movq %rax, -608(%rbp)
    movq %r12, %r10
    movq -608(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -608(%rbp), %r10
    leaq -464(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_3
.L2_2:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_3:
    leaq -464(%rbp), %r15
    movq $56, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $88, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    leaq -552(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq -576(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movq -592(%rbp), %r10
    movq (%r10), %r13
    movq -600(%rbp), %r10
    movl %r13d, (%r10)
    movq %r12, %r10
    movq -608(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -608(%rbp), %r10
    leaq -480(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_5
.L2_4:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_5:
    leaq -480(%rbp), %r13
    movq $72, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r13, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $104, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    leaq -552(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq -576(%rbp), %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movq -592(%rbp), %r10
    movq (%r10), %r13
    movq -600(%rbp), %r10
    movl %r13d, (%r10)
    movq %r12, %r10
    movq -608(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -608(%rbp), %r10
    leaq -496(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L2_7
.L2_6:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_7:
    leaq -496(%rbp), %rbx
    movq $88, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -520(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movq $104, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq -176(%rbp), %rbx
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
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $128, %rdx
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
.L2_1:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_metadata
    .type lb_files_metadata, @function
lb_files_metadata:
    pushq %rbp
    movq %rsp, %rbp
    subq $544, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -224(%rbp)
    movl %edx, -240(%rbp)
    leaq -384(%rbp), %rbx
    movq %rbx, %rdi
    xorl %esi, %esi
    movq $144, %rdx
    call memset@PLT
    leaq -240(%rbp), %rax
    movq %rax, -536(%rbp)
    leaq -224(%rbp), %r14
    leaq -224(%rbp), %r13
    leaq lb_c_interrupted(%rip), %rax
    movq %rax, -544(%rbp)
.L3_1:
.L3_2:
    movq -536(%rbp), %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L3_4
    jmp .L3_5
.L3_4:
    movq %r13, %r10
    movq (%r10), %r15
    movq %r15, %rdi
    movq %rbx, %rsi
    call stat@PLT
    movl %eax, %r15d
    jmp .L3_6
.L3_5:
    movq %r14, %r10
    movq (%r10), %r15
    movq %r15, %rdi
    movq %rbx, %rsi
    call lstat@PLT
    movl %eax, %r15d
.L3_6:
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L3_8
.L3_7:
    subq $144, %rsp
    movq %rbx, %r10
    leaq 0(%rsp), %r11
    movq %r11, %rdi
    movq %r10, %rsi
    movq $144, %rdx
    call memcpy@PLT
    leaq -512(%rbp), %rdi
    call lb_files_14linux_metadata@PLT
    addq $144, %rsp
    leaq -512(%rbp), %r12
    leaq -208(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
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
    movq $152, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $160, %rdx
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
.L3_8:
.L3_9:
    call lb_c_errno@PLT
    movl %eax, %r12d
    movq -544(%rbp), %r10
    movslq (%r10), %r15
    cmpl %r15d, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L3_12
.L3_11:
    leaq -208(%rbp), %rbx
    movq $128, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    call lb_c_errno@PLT
    movl %eax, %r13d
    movl %r13d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_6(%rip), %r13
    leaq -528(%rbp), %r14
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
    movq $152, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $160, %rdx
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
.L3_12:
.L3_13:
    jmp .L3_1

    .p2align 4
    .globl lb_files_19metadata_descriptor
    .type lb_files_19metadata_descriptor, @function
lb_files_19metadata_descriptor:
    pushq %rbp
    movq %rsp, %rbp
    subq $512, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movl %esi, -224(%rbp)
    leaq -368(%rbp), %rbx
    movq %rbx, %rdi
    xorl %esi, %esi
    movq $144, %rdx
    call memset@PLT
    leaq -224(%rbp), %r12
    leaq lb_c_interrupted(%rip), %r13
.L4_1:
.L4_2:
    movq %r12, %r10
    movslq (%r10), %r14
    movl %r14d, %edi
    movq %rbx, %rsi
    call fstat@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L4_5
.L4_4:
    subq $144, %rsp
    movq %rbx, %r10
    leaq 0(%rsp), %r11
    movq %r11, %rdi
    movq %r10, %rsi
    movq $144, %rdx
    call memcpy@PLT
    leaq -496(%rbp), %rdi
    call lb_files_14linux_metadata@PLT
    addq $144, %rsp
    leaq -496(%rbp), %r12
    leaq -208(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
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
    movq $152, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $160, %rdx
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
.L4_5:
.L4_6:
    call lb_c_errno@PLT
    movl %eax, %r14d
    movq %r13, %r10
    movslq (%r10), %r15
    cmpl %r15d, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L4_9
.L4_8:
    leaq -208(%rbp), %rbx
    movq $128, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    call lb_c_errno@PLT
    movl %eax, %r13d
    movl %r13d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_8(%rip), %r13
    leaq -512(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $36, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $152, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $160, %rdx
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
.L4_9:
.L4_10:
    jmp .L4_1

    .p2align 4
    .globl lb_files_11metadata_at
    .type lb_files_11metadata_at, @function
lb_files_11metadata_at:
    pushq %rbp
    movq %rsp, %rbp
    subq $576, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movl %esi, -224(%rbp)
    movq %rdx, -240(%rbp)
    movl %ecx, -256(%rbp)
    leaq -256(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_1
    jmp .L5_2
.L5_1:
    movl $0, %eax
    movl %eax, -568(%rbp)
    jmp .L5_3
.L5_2:
    leaq lb_files_17at_no_follow_flag(%rip), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl %ebx, %eax
    movl %eax, -568(%rbp)
.L5_3:
    leaq -400(%rbp), %r12
    movq %r12, %rdi
    xorl %esi, %esi
    movq $144, %rdx
    call memset@PLT
    leaq -224(%rbp), %r13
    leaq -240(%rbp), %r14
    leaq lb_c_interrupted(%rip), %rax
    movq %rax, -560(%rbp)
.L5_4:
.L5_5:
    movq %r13, %r10
    movslq (%r10), %r15
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -552(%rbp)
    movl %r15d, %edi
    movq -552(%rbp), %rsi
    movq %r12, %rdx
    movl -568(%rbp), %ecx
    call fstatat@PLT
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L5_8
.L5_7:
    subq $144, %rsp
    movq %r12, %r10
    leaq 0(%rsp), %r11
    movq %r11, %rdi
    movq %r10, %rsi
    movq $144, %rdx
    call memcpy@PLT
    leaq -528(%rbp), %rdi
    call lb_files_14linux_metadata@PLT
    addq $144, %rsp
    leaq -528(%rbp), %rbx
    leaq -208(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
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
    movq $152, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $160, %rdx
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
.L5_9:
    call lb_c_errno@PLT
    movl %eax, %r15d
    movq -560(%rbp), %r10
    movslq (%r10), %rbx
    cmpl %ebx, %r15d
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L5_12
.L5_11:
    leaq -208(%rbp), %rbx
    movq $128, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    call lb_c_errno@PLT
    movl %eax, %r13d
    movl %r13d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_10(%rip), %r13
    leaq -544(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $42, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $152, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $160, %rdx
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
.L5_12:
.L5_13:
    jmp .L5_4

    .section .init_array,"aw"
    .p2align 3
    .quad lb_files_metadata_0init
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
    .asciz "src/std/files/metadata.lucb:133:5"
.Ltext_2:
    .asciz "src/std/files/metadata.lucb:136:5"
.Ltext_3:
    .asciz "src/std/files/metadata.lucb:139:5"
.Ltext_4:
    .asciz "src/std/files/metadata.lucb:147:5"
.Ltext_5:
    .asciz "src/std/files/metadata.lucb:154:5"
.Ltext_6:
    .asciz "file metadata could not be read"
.Ltext_7:
    .asciz "src/std/files/metadata.lucb:191:17"
.Ltext_8:
    .asciz "open-file metadata could not be read"
.Ltext_9:
    .asciz "src/std/files/metadata.lucb:217:17"
.Ltext_10:
    .asciz "directory-entry metadata could not be read"
.Ltext_11:
    .asciz "src/std/files/metadata.lucb:245:17"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
