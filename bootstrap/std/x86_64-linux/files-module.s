    .text

    .p2align 4
    .globl lb_files_module_0init
    .type lb_files_module_0init, @function
lb_files_module_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    leaq lb_files_10write_only(%rip), %rbx
    movl $1, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_platform_windows(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L0_1
    jmp .L0_2
.L0_1:
    movl $256, %eax
    movl %eax, %r12d
    jmp .L0_3
.L0_2:
    leaq lb_platform_macos(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L0_4
    jmp .L0_5
.L0_4:
    movl $512, %eax
    movl %eax, %r12d
    jmp .L0_6
.L0_5:
    movl $64, %eax
    movl %eax, %r12d
.L0_6:
.L0_3:
    leaq lb_files_create(%rip), %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq %rbx, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L0_7
    jmp .L0_8
.L0_7:
    movl $512, %eax
    movl %eax, %r12d
    jmp .L0_9
.L0_8:
    leaq lb_platform_macos(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L0_10
    jmp .L0_11
.L0_10:
    movl $1024, %eax
    movl %eax, %r12d
    jmp .L0_12
.L0_11:
    movl $512, %eax
    movl %eax, %r12d
.L0_12:
.L0_9:
    leaq lb_files_truncate(%rip), %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq %rbx, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L0_13
    jmp .L0_14
.L0_13:
    movl $128, %eax
    movl %eax, %r12d
    jmp .L0_15
.L0_14:
    leaq lb_platform_macos(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L0_16
    jmp .L0_17
.L0_16:
    movl $16777216, %eax
    movl %eax, %r12d
    jmp .L0_18
.L0_17:
    movl $524288, %eax
    movl %eax, %r12d
.L0_18:
.L0_15:
    leaq lb_files_13close_on_exec(%rip), %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq %rbx, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L0_51
    jmp .L0_22
.L0_51:
    movl %r13d, %r12d
    jmp .L0_23
.L0_22:
    leaq lb_platform_macos(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
.L0_23:
    movzbl %r12b, %r13d
    testl %r13d, %r13d
    jne .L0_19
    jmp .L0_20
.L0_19:
    movl $8, %eax
    movl %eax, %r12d
    jmp .L0_21
.L0_20:
    movl $1024, %eax
    movl %eax, %r12d
.L0_21:
    leaq lb_files_11append_flag(%rip), %r13
    movq %r13, %r10
    movl %r12d, (%r10)
    movq %rbx, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L0_24
    jmp .L0_25
.L0_24:
    movl $1024, %eax
    movl %eax, %ebx
    jmp .L0_26
.L0_25:
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L0_27
    jmp .L0_28
.L0_27:
    movl $2048, %eax
    movl %eax, %ebx
    jmp .L0_29
.L0_28:
    movl $128, %eax
    movl %eax, %ebx
.L0_29:
.L0_26:
    leaq lb_files_14exclusive_flag(%rip), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    leaq lb_platform_macos(%rip), %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L0_30
    jmp .L0_31
.L0_30:
    movl $35, %eax
    movl %eax, %ebx
    jmp .L0_32
.L0_31:
    movl $11, %eax
    movl %eax, %ebx
.L0_32:
    leaq lb_files_17would_block_errno(%rip), %r13
    movq %r13, %r10
    movl %ebx, (%r10)
    leaq lb_files_14transfer_limit(%rip), %r13
    movq $1073741824, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L0_33
    jmp .L0_34
.L0_33:
    movl $4294967294, %eax
    movl %eax, %ebx
    jmp .L0_35
.L0_34:
    movl $4294967196, %eax
    movl %eax, %ebx
.L0_35:
    leaq lb_files_20current_directory_fd(%rip), %r13
    movq %r13, %r10
    movl %ebx, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L0_36
    jmp .L0_37
.L0_36:
    movl $1048576, %eax
    movl %eax, %ebx
    jmp .L0_38
.L0_37:
    leaq lb_platform_arm64(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L0_39
    jmp .L0_40
.L0_39:
    movl $16384, %eax
    movl %eax, %ebx
    jmp .L0_41
.L0_40:
    movl $65536, %eax
    movl %eax, %ebx
.L0_41:
.L0_38:
    leaq lb_files_14directory_flag(%rip), %r13
    movq %r13, %r10
    movl %ebx, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L0_42
    jmp .L0_43
.L0_42:
    movl $256, %eax
    movl %eax, %ebx
    jmp .L0_44
.L0_43:
    leaq lb_platform_arm64(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L0_45
    jmp .L0_46
.L0_45:
    movl $32768, %eax
    movl %eax, %ebx
    jmp .L0_47
.L0_46:
    movl $131072, %eax
    movl %eax, %ebx
.L0_47:
.L0_44:
    leaq lb_files_14no_follow_flag(%rip), %r13
    movq %r13, %r10
    movl %ebx, (%r10)
    movq %r12, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L0_48
    jmp .L0_49
.L0_48:
    movl $32, %eax
    movl %eax, %ebx
    jmp .L0_50
.L0_49:
    movl $256, %eax
    movl %eax, %ebx
.L0_50:
    leaq lb_files_17at_no_follow_flag(%rip), %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    leaq lb_files_missing(%rip), %r12
    movl $208273414, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_files_17permission_denied(%rip), %r12
    movl $208273426, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_files_14already_exists(%rip), %r12
    movl $208273427, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_files_8no_space(%rip), %r12
    movl $208273428, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_files_11would_block(%rip), %r12
    movl $208273429, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_files_15invalid_options(%rip), %r12
    movl $208273430, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_files_9too_large(%rip), %r12
    movl $208273431, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_files_13not_directory(%rip), %r12
    movl $208273433, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_files_12is_directory(%rip), %r12
    movl $208273434, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_files_20read_only_filesystem(%rip), %r12
    movl $208273435, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_files_9not_empty(%rip), %r12
    movl $208273437, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_files_12cross_device(%rip), %r12
    movl $208273438, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_files_12symlink_loop(%rip), %r12
    movl $208273439, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_files_13name_too_long(%rip), %r12
    movl $208273440, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq lb_files_failed(%rip), %r12
    movl $208273415, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_files_6c_read
    .type lb_files_6c_read, @function
lb_files_6c_read:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movl %edi, -40(%rbp)
    movq %rsi, -56(%rbp)
    movq %rdx, -72(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -72(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movl %ebx, %edi
    movq %r12, %rsi
    movq %r13, %rdx
    call read@PLT
    movq %rax, %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_1:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_7c_write
    .type lb_files_7c_write, @function
lb_files_7c_write:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movl %edi, -40(%rbp)
    movq %rsi, -56(%rbp)
    movq %rdx, -72(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -72(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movl %ebx, %edi
    movq %r12, %rsi
    movq %r13, %rdx
    call write@PLT
    movq %rax, %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_1:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_lseek
    .type lb_files_lseek, @function
lb_files_lseek:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movl %edi, -40(%rbp)
    movq %rsi, -56(%rbp)
    movl %edx, -72(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -72(%rbp), %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movl %ebx, %edi
    movq %r12, %rsi
    movl %r13d, %edx
    call lseek@PLT
    movq %rax, %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_1:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_fsync
    .type lb_files_fsync, @function
lb_files_fsync:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movl %edi, -24(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl %ebx, %edi
    call fsync@PLT
    movl %eax, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_1:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_ftruncate
    .type lb_files_ftruncate, @function
lb_files_ftruncate:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movl %edi, -32(%rbp)
    movq %rsi, -48(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    leaq -48(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movl %ebx, %edi
    movq %r12, %rsi
    call ftruncate@PLT
    movl %eax, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L5_1:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_files_10next_entry
    .type lb_files_10next_entry, @function
lb_files_10next_entry:
    pushq %rbp
    movq %rsp, %rbp
    subq $224, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -120(%rbp)
    leaq -120(%rbp), %rbx
    leaq lb_c_interrupted(%rip), %r12
.L6_1:
.L6_2:
    movl $0, %edi
    call lb_c_9set_errno@PLT
    movq %rbx, %r10
    movq (%r10), %r13
    movq %r13, %rdi
    call readdir@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L6_7
    jmp .L6_5
.L6_7:
.L6_4:
    movq $19, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $0, %rax
    movq %rax, %r12
.L6_8:
    movq $256, %rcx
    cmpq %rcx, %r12
    setb %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L6_11
    jmp .L6_25
.L6_25:
    movl %r14d, %r15d
    jmp .L6_12
.L6_11:
    movq %rbx, %r14
    addq %r12, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L6_12:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L6_9
    jmp .L6_10
.L6_9:
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_12(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r14, %r12
    jmp .L6_8
.L6_10:
    movq $19, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $257, %rcx
    cmpq %rcx, %r12
    jb 1f
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    cmpq %r12, %rax
    jbe .L6_13
.L6_14:
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_9(%rip), %rsi
    call lb_core_7trap_at@PLT
.L6_13:
    leaq -136(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq -152(%rbp), %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq -176(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -104(%rbp), %rbx
    movq %r13, %r10
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_5:
.L6_6:
    call lb_c_errno@PLT
    movl %eax, %r13d
    movq %r12, %r10
    movslq (%r10), %r14
    cmpl %r14d, %r13d
    jne .L6_17
.L6_16:
    jmp .L6_1
.L6_17:
.L6_18:
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L6_21
.L6_20:
    leaq -104(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl %r13d, %edi
    call lb_files_14classify_error@PLT
    movl %eax, %r14d
    movq %r12, %r10
    movl %r14d, (%r10)
    leaq .Ltext_10(%rip), %r14
    leaq -192(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $31, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r12
    movq %r15, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_21:
.L6_22:
    leaq -216(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    leaq -104(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $48, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
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
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_files_module_0init
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
    .asciz "src/std/files/module.lucb:20:5"
.Ltext_2:
    .asciz "src/std/files/module.lucb:25:5"
.Ltext_3:
    .asciz "src/std/files/module.lucb:36:5"
.Ltext_4:
    .asciz "src/std/files/module.lucb:40:5"
.Ltext_5:
    .asciz "src/std/files/module.lucb:49:5"
.Ltext_6:
    .asciz "src/std/files/module.lucb:100:17"
.Ltext_7:
    .asciz "src/std/files/module.lucb:101:21"
.Ltext_8:
    .asciz "src/std/files/module.lucb:102:17"
.Ltext_9:
    .asciz "index out of bounds"
.Ltext_10:
    .asciz "the directory could not be read"
.Ltext_11:
    .asciz "src/std/files/module.lucb:108:9"
.Ltext_12:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_files_10write_only
    .type lb_files_10write_only, @object
    .p2align 2
lb_files_10write_only:
    .zero 4

    .bss
    .globl lb_files_create
    .type lb_files_create, @object
    .p2align 2
lb_files_create:
    .zero 4

    .bss
    .globl lb_files_truncate
    .type lb_files_truncate, @object
    .p2align 2
lb_files_truncate:
    .zero 4

    .bss
    .globl lb_files_13close_on_exec
    .type lb_files_13close_on_exec, @object
    .p2align 2
lb_files_13close_on_exec:
    .zero 4

    .bss
    .globl lb_files_11append_flag
    .type lb_files_11append_flag, @object
    .p2align 2
lb_files_11append_flag:
    .zero 4

    .bss
    .globl lb_files_14exclusive_flag
    .type lb_files_14exclusive_flag, @object
    .p2align 2
lb_files_14exclusive_flag:
    .zero 4

    .bss
    .globl lb_files_17would_block_errno
    .type lb_files_17would_block_errno, @object
    .p2align 2
lb_files_17would_block_errno:
    .zero 4

    .bss
    .globl lb_files_14transfer_limit
    .type lb_files_14transfer_limit, @object
    .p2align 3
lb_files_14transfer_limit:
    .zero 8

    .bss
    .globl lb_files_20current_directory_fd
    .type lb_files_20current_directory_fd, @object
    .p2align 2
lb_files_20current_directory_fd:
    .zero 4

    .bss
    .globl lb_files_14directory_flag
    .type lb_files_14directory_flag, @object
    .p2align 2
lb_files_14directory_flag:
    .zero 4

    .bss
    .globl lb_files_14no_follow_flag
    .type lb_files_14no_follow_flag, @object
    .p2align 2
lb_files_14no_follow_flag:
    .zero 4

    .bss
    .globl lb_files_17at_no_follow_flag
    .type lb_files_17at_no_follow_flag, @object
    .p2align 2
lb_files_17at_no_follow_flag:
    .zero 4

    .bss
    .globl lb_files_missing
    .type lb_files_missing, @object
    .p2align 2
lb_files_missing:
    .zero 4

    .bss
    .globl lb_files_17permission_denied
    .type lb_files_17permission_denied, @object
    .p2align 2
lb_files_17permission_denied:
    .zero 4

    .bss
    .globl lb_files_14already_exists
    .type lb_files_14already_exists, @object
    .p2align 2
lb_files_14already_exists:
    .zero 4

    .bss
    .globl lb_files_8no_space
    .type lb_files_8no_space, @object
    .p2align 2
lb_files_8no_space:
    .zero 4

    .bss
    .globl lb_files_11would_block
    .type lb_files_11would_block, @object
    .p2align 2
lb_files_11would_block:
    .zero 4

    .bss
    .globl lb_files_15invalid_options
    .type lb_files_15invalid_options, @object
    .p2align 2
lb_files_15invalid_options:
    .zero 4

    .bss
    .globl lb_files_9too_large
    .type lb_files_9too_large, @object
    .p2align 2
lb_files_9too_large:
    .zero 4

    .bss
    .globl lb_files_13not_directory
    .type lb_files_13not_directory, @object
    .p2align 2
lb_files_13not_directory:
    .zero 4

    .bss
    .globl lb_files_12is_directory
    .type lb_files_12is_directory, @object
    .p2align 2
lb_files_12is_directory:
    .zero 4

    .bss
    .globl lb_files_20read_only_filesystem
    .type lb_files_20read_only_filesystem, @object
    .p2align 2
lb_files_20read_only_filesystem:
    .zero 4

    .bss
    .globl lb_files_9not_empty
    .type lb_files_9not_empty, @object
    .p2align 2
lb_files_9not_empty:
    .zero 4

    .bss
    .globl lb_files_12cross_device
    .type lb_files_12cross_device, @object
    .p2align 2
lb_files_12cross_device:
    .zero 4

    .bss
    .globl lb_files_12symlink_loop
    .type lb_files_12symlink_loop, @object
    .p2align 2
lb_files_12symlink_loop:
    .zero 4

    .bss
    .globl lb_files_13name_too_long
    .type lb_files_13name_too_long, @object
    .p2align 2
lb_files_13name_too_long:
    .zero 4

    .bss
    .globl lb_files_failed
    .type lb_files_failed, @object
    .p2align 2
lb_files_failed:
    .zero 4

    .section .note.GNU-stack,"",@progbits
